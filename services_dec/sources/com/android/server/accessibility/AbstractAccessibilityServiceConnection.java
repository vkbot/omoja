package com.android.server.accessibility;

import android.accessibilityservice.AccessibilityGestureEvent;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.accessibilityservice.IAccessibilityServiceConnection;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ParceledListSlice;
import android.graphics.GraphicBuffer;
import android.graphics.ParcelableColorSpace;
import android.graphics.Region;
import android.hardware.HardwareBuffer;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManagerInternal;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MagnificationSpec;
import android.view.SurfaceControl;
import android.view.View;
import android.view.WindowInfo;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import com.android.internal.compat.IPlatformCompat;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
abstract class AbstractAccessibilityServiceConnection extends IAccessibilityServiceConnection.Stub implements ServiceConnection, IBinder.DeathRecipient, KeyEventDispatcher.KeyEventFilter, FingerprintGestureDispatcher.FingerprintGestureClient {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "AbstractAccessibilityServiceConnection";
    protected static final String TAKE_SCREENSHOT = "takeScreenshot";
    private static final int WAIT_WINDOWS_TIMEOUT_MILLIS = 5000;
    private final AccessibilityWindowManager mA11yWindowManager;
    protected final AccessibilityServiceInfo mAccessibilityServiceInfo;
    boolean mCaptureFingerprintGestures;
    final ComponentName mComponentName;
    protected final Context mContext;
    private final DisplayManager mDisplayManager;
    public Handler mEventDispatchHandler;
    int mEventTypes;
    int mFeedbackType;
    int mFetchFlags;
    final int mId;
    public final InvocationHandler mInvocationHandler;
    boolean mIsDefault;
    boolean mLastAccessibilityButtonCallbackState;
    protected final Object mLock;
    private final Handler mMainHandler;
    long mNotificationTimeout;
    private final PowerManager mPowerManager;
    boolean mReceivedAccessibilityButtonCallbackSinceBind;
    boolean mRequestAccessibilityButton;
    boolean mRequestFilterKeyEvents;
    private boolean mRequestMultiFingerGestures;
    private long mRequestTakeScreenshotTimestampMs;
    boolean mRequestTouchExplorationMode;
    private boolean mRequestTwoFingerPassthrough;
    boolean mRetrieveInteractiveWindows;
    protected final AccessibilitySecurityPolicy mSecurityPolicy;
    IBinder mService;
    private boolean mServiceHandlesDoubleTap;
    IAccessibilityServiceClient mServiceInterface;
    private final SystemActionPerformer mSystemActionPerformer;
    protected final SystemSupport mSystemSupport;
    protected final WindowManagerInternal mWindowManagerService;
    Set<String> mPackageNames = new HashSet();
    final SparseArray<AccessibilityEvent> mPendingEvents = new SparseArray<>();
    boolean mUsesAccessibilityCache = false;
    final SparseArray<IBinder> mOverlayWindowTokens = new SparseArray<>();
    private final IPlatformCompat mIPlatformCompat = IPlatformCompat.Stub.asInterface(ServiceManager.getService("platform_compat"));

    public interface SystemSupport {
        MagnificationSpec getCompatibleMagnificationSpecLocked(int i);

        int getCurrentUserIdLocked();

        FingerprintGestureDispatcher getFingerprintGestureDispatcher();

        KeyEventDispatcher getKeyEventDispatcher();

        MagnificationController getMagnificationController();

        MotionEventInjector getMotionEventInjectorForDisplayLocked(int i);

        PendingIntent getPendingIntentActivity(Context context, int i, Intent intent, int i2);

        boolean isAccessibilityButtonShown();

        void onClientChangeLocked(boolean z);

        void persistComponentNamesToSettingLocked(String str, Set<ComponentName> set, int i);

        void setGestureDetectionPassthroughRegion(int i, Region region);

        void setTouchExplorationPassthroughRegion(int i, Region region);
    }

    protected abstract boolean hasRightsToCurrentUserLocked();

    public AbstractAccessibilityServiceConnection(Context context, ComponentName componentName, AccessibilityServiceInfo accessibilityServiceInfo, int id, Handler mainHandler, Object lock, AccessibilitySecurityPolicy securityPolicy, SystemSupport systemSupport, WindowManagerInternal windowManagerInternal, SystemActionPerformer systemActionPerfomer, AccessibilityWindowManager a11yWindowManager) {
        this.mContext = context;
        this.mWindowManagerService = windowManagerInternal;
        this.mId = id;
        this.mComponentName = componentName;
        this.mAccessibilityServiceInfo = accessibilityServiceInfo;
        this.mLock = lock;
        this.mSecurityPolicy = securityPolicy;
        this.mSystemActionPerformer = systemActionPerfomer;
        this.mSystemSupport = systemSupport;
        this.mMainHandler = mainHandler;
        this.mInvocationHandler = new InvocationHandler(mainHandler.getLooper());
        this.mA11yWindowManager = a11yWindowManager;
        this.mDisplayManager = (DisplayManager) context.getSystemService("display");
        this.mPowerManager = (PowerManager) this.mContext.getSystemService("power");
        this.mEventDispatchHandler = new Handler(mainHandler.getLooper()) { // from class: com.android.server.accessibility.AbstractAccessibilityServiceConnection.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int eventType = message.what;
                AccessibilityEvent event = (AccessibilityEvent) message.obj;
                boolean serviceWantsEvent = message.arg1 != 0;
                AbstractAccessibilityServiceConnection.this.notifyAccessibilityEventInternal(eventType, event, serviceWantsEvent);
            }
        };
        setDynamicallyConfigurableProperties(accessibilityServiceInfo);
    }

    @Override // com.android.server.accessibility.KeyEventDispatcher.KeyEventFilter
    public boolean onKeyEvent(KeyEvent keyEvent, int sequenceNumber) {
        if (!this.mRequestFilterKeyEvents || this.mServiceInterface == null || (this.mAccessibilityServiceInfo.getCapabilities() & 8) == 0 || !this.mSecurityPolicy.checkAccessibilityAccess(this)) {
            return false;
        }
        try {
            this.mServiceInterface.onKeyEvent(keyEvent, sequenceNumber);
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }

    public void setDynamicallyConfigurableProperties(AccessibilityServiceInfo info) {
        this.mEventTypes = info.eventTypes;
        this.mFeedbackType = info.feedbackType;
        String[] packageNames = info.packageNames;
        if (packageNames != null) {
            this.mPackageNames.addAll(Arrays.asList(packageNames));
        }
        this.mNotificationTimeout = info.notificationTimeout;
        this.mIsDefault = (info.flags & 1) != 0;
        if (supportsFlagForNotImportantViews(info)) {
            if ((info.flags & 2) != 0) {
                this.mFetchFlags |= 8;
            } else {
                this.mFetchFlags &= -9;
            }
        }
        if ((info.flags & 16) != 0) {
            this.mFetchFlags |= 16;
        } else {
            this.mFetchFlags &= -17;
        }
        this.mRequestTouchExplorationMode = (info.flags & 4) != 0;
        this.mServiceHandlesDoubleTap = (info.flags & 2048) != 0;
        this.mRequestMultiFingerGestures = (info.flags & 4096) != 0;
        this.mRequestTwoFingerPassthrough = (info.flags & 8192) != 0;
        this.mRequestFilterKeyEvents = (info.flags & 32) != 0;
        this.mRetrieveInteractiveWindows = (info.flags & 64) != 0;
        this.mCaptureFingerprintGestures = (info.flags & 512) != 0;
        this.mRequestAccessibilityButton = (info.flags & 256) != 0;
    }

    protected boolean supportsFlagForNotImportantViews(AccessibilityServiceInfo info) {
        return info.getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion >= 16;
    }

    public boolean canReceiveEventsLocked() {
        return (this.mEventTypes == 0 || this.mService == null) ? false : true;
    }

    public void setOnKeyEventResult(boolean handled, int sequence) {
        this.mSystemSupport.getKeyEventDispatcher().setOnKeyEventResult(this, handled, sequence);
    }

    public AccessibilityServiceInfo getServiceInfo() {
        AccessibilityServiceInfo accessibilityServiceInfo;
        synchronized (this.mLock) {
            accessibilityServiceInfo = this.mAccessibilityServiceInfo;
        }
        return accessibilityServiceInfo;
    }

    public int getCapabilities() {
        return this.mAccessibilityServiceInfo.getCapabilities();
    }

    int getRelevantEventTypes() {
        return (this.mUsesAccessibilityCache ? 4307005 : 32) | this.mEventTypes;
    }

    public void setServiceInfo(AccessibilityServiceInfo info) {
        long identity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mLock) {
                AccessibilityServiceInfo oldInfo = this.mAccessibilityServiceInfo;
                if (oldInfo != null) {
                    oldInfo.updateDynamicallyConfigurableProperties(this.mIPlatformCompat, info);
                    setDynamicallyConfigurableProperties(oldInfo);
                } else {
                    setDynamicallyConfigurableProperties(info);
                }
                this.mSystemSupport.onClientChangeLocked(true);
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public AccessibilityWindowInfo.WindowListSparseArray getWindows() {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return null;
            }
            boolean permissionGranted = this.mSecurityPolicy.canRetrieveWindowsLocked(this);
            if (!permissionGranted) {
                return null;
            }
            if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                return null;
            }
            AccessibilityWindowInfo.WindowListSparseArray allWindows = new AccessibilityWindowInfo.WindowListSparseArray();
            ArrayList<Integer> displayList = this.mA11yWindowManager.getDisplayListLocked();
            int displayListCounts = displayList.size();
            if (displayListCounts > 0) {
                for (int i = 0; i < displayListCounts; i++) {
                    int displayId = displayList.get(i).intValue();
                    ensureWindowsAvailableTimedLocked(displayId);
                    List<AccessibilityWindowInfo> windowList = getWindowsByDisplayLocked(displayId);
                    if (windowList != null) {
                        allWindows.put(displayId, windowList);
                    }
                }
            }
            return allWindows;
        }
    }

    public AccessibilityWindowInfo getWindow(int windowId) {
        synchronized (this.mLock) {
            int displayId = -1;
            if (windowId != -1) {
                displayId = this.mA11yWindowManager.getDisplayIdByUserIdAndWindowIdLocked(this.mSystemSupport.getCurrentUserIdLocked(), windowId);
            }
            ensureWindowsAvailableTimedLocked(displayId);
            if (!hasRightsToCurrentUserLocked()) {
                return null;
            }
            boolean permissionGranted = this.mSecurityPolicy.canRetrieveWindowsLocked(this);
            if (!permissionGranted) {
                return null;
            }
            if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                return null;
            }
            AccessibilityWindowInfo window = this.mA11yWindowManager.findA11yWindowInfoByIdLocked(windowId);
            if (window == null) {
                return null;
            }
            AccessibilityWindowInfo windowClone = AccessibilityWindowInfo.obtain(window);
            windowClone.setConnectionId(this.mId);
            return windowClone;
        }
    }

    public String[] findAccessibilityNodeInfosByViewId(int accessibilityWindowId, long accessibilityNodeId, String viewIdResName, int interactionId, IAccessibilityInteractionConnectionCallback callback, long interrogatingTid) throws Throwable {
        Region partialInteractiveRegion;
        Region partialInteractiveRegion2 = Region.obtain();
        synchronized (this.mLock) {
            try {
                this.mUsesAccessibilityCache = true;
                if (!hasRightsToCurrentUserLocked()) {
                    return null;
                }
                int resolvedWindowId = resolveAccessibilityWindowIdLocked(accessibilityWindowId);
                boolean permissionGranted = this.mSecurityPolicy.canGetAccessibilityNodeInfoLocked(this.mSystemSupport.getCurrentUserIdLocked(), this, resolvedWindowId);
                if (!permissionGranted) {
                    return null;
                }
                AccessibilityWindowManager.RemoteAccessibilityConnection connection = this.mA11yWindowManager.getConnectionLocked(this.mSystemSupport.getCurrentUserIdLocked(), resolvedWindowId);
                if (connection == null) {
                    return null;
                }
                if (this.mA11yWindowManager.computePartialInteractiveRegionForWindowLocked(resolvedWindowId, partialInteractiveRegion2)) {
                    partialInteractiveRegion = partialInteractiveRegion2;
                } else {
                    partialInteractiveRegion2.recycle();
                    partialInteractiveRegion = null;
                }
                try {
                    MagnificationSpec spec = this.mSystemSupport.getCompatibleMagnificationSpecLocked(resolvedWindowId);
                    if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                        return null;
                    }
                    int interrogatingPid = Binder.getCallingPid();
                    IAccessibilityInteractionConnectionCallback callback2 = replaceCallbackIfNeeded(callback, resolvedWindowId, interactionId, interrogatingPid, interrogatingTid);
                    long identityToken = Binder.clearCallingIdentity();
                    try {
                        connection.getRemote().findAccessibilityNodeInfosByViewId(accessibilityNodeId, viewIdResName, partialInteractiveRegion, interactionId, callback2, this.mFetchFlags, interrogatingPid, interrogatingTid, spec);
                        return this.mSecurityPolicy.computeValidReportedPackages(connection.getPackageName(), connection.getUid());
                    } catch (RemoteException e) {
                        return null;
                    } finally {
                        Binder.restoreCallingIdentity(identityToken);
                        if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                            partialInteractiveRegion.recycle();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public String[] findAccessibilityNodeInfosByText(int accessibilityWindowId, long accessibilityNodeId, String text, int interactionId, IAccessibilityInteractionConnectionCallback callback, long interrogatingTid) throws Throwable {
        Region partialInteractiveRegion;
        Region partialInteractiveRegion2 = Region.obtain();
        synchronized (this.mLock) {
            try {
                this.mUsesAccessibilityCache = true;
                if (!hasRightsToCurrentUserLocked()) {
                    return null;
                }
                int resolvedWindowId = resolveAccessibilityWindowIdLocked(accessibilityWindowId);
                boolean permissionGranted = this.mSecurityPolicy.canGetAccessibilityNodeInfoLocked(this.mSystemSupport.getCurrentUserIdLocked(), this, resolvedWindowId);
                if (!permissionGranted) {
                    return null;
                }
                AccessibilityWindowManager.RemoteAccessibilityConnection connection = this.mA11yWindowManager.getConnectionLocked(this.mSystemSupport.getCurrentUserIdLocked(), resolvedWindowId);
                if (connection == null) {
                    return null;
                }
                if (this.mA11yWindowManager.computePartialInteractiveRegionForWindowLocked(resolvedWindowId, partialInteractiveRegion2)) {
                    partialInteractiveRegion = partialInteractiveRegion2;
                } else {
                    partialInteractiveRegion2.recycle();
                    partialInteractiveRegion = null;
                }
                try {
                    MagnificationSpec spec = this.mSystemSupport.getCompatibleMagnificationSpecLocked(resolvedWindowId);
                    if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                        return null;
                    }
                    int interrogatingPid = Binder.getCallingPid();
                    IAccessibilityInteractionConnectionCallback callback2 = replaceCallbackIfNeeded(callback, resolvedWindowId, interactionId, interrogatingPid, interrogatingTid);
                    long identityToken = Binder.clearCallingIdentity();
                    try {
                        connection.getRemote().findAccessibilityNodeInfosByText(accessibilityNodeId, text, partialInteractiveRegion, interactionId, callback2, this.mFetchFlags, interrogatingPid, interrogatingTid, spec);
                        return this.mSecurityPolicy.computeValidReportedPackages(connection.getPackageName(), connection.getUid());
                    } catch (RemoteException e) {
                        return null;
                    } finally {
                        Binder.restoreCallingIdentity(identityToken);
                        if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                            partialInteractiveRegion.recycle();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public String[] findAccessibilityNodeInfoByAccessibilityId(int accessibilityWindowId, long accessibilityNodeId, int interactionId, IAccessibilityInteractionConnectionCallback callback, int flags, long interrogatingTid, Bundle arguments) throws Throwable {
        Region partialInteractiveRegion;
        Region partialInteractiveRegion2 = Region.obtain();
        synchronized (this.mLock) {
            try {
                this.mUsesAccessibilityCache = true;
                if (!hasRightsToCurrentUserLocked()) {
                    return null;
                }
                int resolvedWindowId = resolveAccessibilityWindowIdLocked(accessibilityWindowId);
                boolean permissionGranted = this.mSecurityPolicy.canGetAccessibilityNodeInfoLocked(this.mSystemSupport.getCurrentUserIdLocked(), this, resolvedWindowId);
                if (!permissionGranted) {
                    return null;
                }
                AccessibilityWindowManager.RemoteAccessibilityConnection connection = this.mA11yWindowManager.getConnectionLocked(this.mSystemSupport.getCurrentUserIdLocked(), resolvedWindowId);
                if (connection == null) {
                    return null;
                }
                if (this.mA11yWindowManager.computePartialInteractiveRegionForWindowLocked(resolvedWindowId, partialInteractiveRegion2)) {
                    partialInteractiveRegion = partialInteractiveRegion2;
                } else {
                    partialInteractiveRegion2.recycle();
                    partialInteractiveRegion = null;
                }
                try {
                    MagnificationSpec spec = this.mSystemSupport.getCompatibleMagnificationSpecLocked(resolvedWindowId);
                    if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                        return null;
                    }
                    int interrogatingPid = Binder.getCallingPid();
                    IAccessibilityInteractionConnectionCallback callback2 = replaceCallbackIfNeeded(callback, resolvedWindowId, interactionId, interrogatingPid, interrogatingTid);
                    long identityToken = Binder.clearCallingIdentity();
                    try {
                        connection.getRemote().findAccessibilityNodeInfoByAccessibilityId(accessibilityNodeId, partialInteractiveRegion, interactionId, callback2, this.mFetchFlags | flags, interrogatingPid, interrogatingTid, spec, arguments);
                        return this.mSecurityPolicy.computeValidReportedPackages(connection.getPackageName(), connection.getUid());
                    } catch (RemoteException e) {
                        return null;
                    } finally {
                        Binder.restoreCallingIdentity(identityToken);
                        if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                            partialInteractiveRegion.recycle();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public String[] findFocus(int accessibilityWindowId, long accessibilityNodeId, int focusType, int interactionId, IAccessibilityInteractionConnectionCallback callback, long interrogatingTid) throws Throwable {
        Region partialInteractiveRegion;
        Region partialInteractiveRegion2 = Region.obtain();
        synchronized (this.mLock) {
            try {
                try {
                    if (!hasRightsToCurrentUserLocked()) {
                        return null;
                    }
                    int resolvedWindowId = resolveAccessibilityWindowIdForFindFocusLocked(accessibilityWindowId, focusType);
                    boolean permissionGranted = this.mSecurityPolicy.canGetAccessibilityNodeInfoLocked(this.mSystemSupport.getCurrentUserIdLocked(), this, resolvedWindowId);
                    if (!permissionGranted) {
                        return null;
                    }
                    AccessibilityWindowManager.RemoteAccessibilityConnection connection = this.mA11yWindowManager.getConnectionLocked(this.mSystemSupport.getCurrentUserIdLocked(), resolvedWindowId);
                    if (connection == null) {
                        return null;
                    }
                    if (this.mA11yWindowManager.computePartialInteractiveRegionForWindowLocked(resolvedWindowId, partialInteractiveRegion2)) {
                        partialInteractiveRegion = partialInteractiveRegion2;
                    } else {
                        partialInteractiveRegion2.recycle();
                        partialInteractiveRegion = null;
                    }
                    try {
                        MagnificationSpec spec = this.mSystemSupport.getCompatibleMagnificationSpecLocked(resolvedWindowId);
                        if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                            return null;
                        }
                        int interrogatingPid = Binder.getCallingPid();
                        IAccessibilityInteractionConnectionCallback callback2 = replaceCallbackIfNeeded(callback, resolvedWindowId, interactionId, interrogatingPid, interrogatingTid);
                        long identityToken = Binder.clearCallingIdentity();
                        try {
                            try {
                                connection.getRemote().findFocus(accessibilityNodeId, focusType, partialInteractiveRegion, interactionId, callback2, this.mFetchFlags, interrogatingPid, interrogatingTid, spec);
                                String[] strArrComputeValidReportedPackages = this.mSecurityPolicy.computeValidReportedPackages(connection.getPackageName(), connection.getUid());
                                Binder.restoreCallingIdentity(identityToken);
                                if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                                    partialInteractiveRegion.recycle();
                                }
                                return strArrComputeValidReportedPackages;
                            } catch (RemoteException e) {
                                Binder.restoreCallingIdentity(identityToken);
                                if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                                    partialInteractiveRegion.recycle();
                                }
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                Binder.restoreCallingIdentity(identityToken);
                                if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                                    partialInteractiveRegion.recycle();
                                }
                                throw th;
                            }
                        } catch (RemoteException e2) {
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
            throw th;
        }
    }

    public String[] focusSearch(int accessibilityWindowId, long accessibilityNodeId, int direction, int interactionId, IAccessibilityInteractionConnectionCallback callback, long interrogatingTid) throws Throwable {
        Region partialInteractiveRegion;
        Region partialInteractiveRegion2 = Region.obtain();
        synchronized (this.mLock) {
            try {
                if (!hasRightsToCurrentUserLocked()) {
                    return null;
                }
                int resolvedWindowId = resolveAccessibilityWindowIdLocked(accessibilityWindowId);
                boolean permissionGranted = this.mSecurityPolicy.canGetAccessibilityNodeInfoLocked(this.mSystemSupport.getCurrentUserIdLocked(), this, resolvedWindowId);
                if (!permissionGranted) {
                    return null;
                }
                AccessibilityWindowManager.RemoteAccessibilityConnection connection = this.mA11yWindowManager.getConnectionLocked(this.mSystemSupport.getCurrentUserIdLocked(), resolvedWindowId);
                if (connection == null) {
                    return null;
                }
                if (this.mA11yWindowManager.computePartialInteractiveRegionForWindowLocked(resolvedWindowId, partialInteractiveRegion2)) {
                    partialInteractiveRegion = partialInteractiveRegion2;
                } else {
                    partialInteractiveRegion2.recycle();
                    partialInteractiveRegion = null;
                }
                try {
                    MagnificationSpec spec = this.mSystemSupport.getCompatibleMagnificationSpecLocked(resolvedWindowId);
                    if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                        return null;
                    }
                    int interrogatingPid = Binder.getCallingPid();
                    IAccessibilityInteractionConnectionCallback callback2 = replaceCallbackIfNeeded(callback, resolvedWindowId, interactionId, interrogatingPid, interrogatingTid);
                    long identityToken = Binder.clearCallingIdentity();
                    try {
                        connection.getRemote().focusSearch(accessibilityNodeId, direction, partialInteractiveRegion, interactionId, callback2, this.mFetchFlags, interrogatingPid, interrogatingTid, spec);
                        return this.mSecurityPolicy.computeValidReportedPackages(connection.getPackageName(), connection.getUid());
                    } catch (RemoteException e) {
                        return null;
                    } finally {
                        Binder.restoreCallingIdentity(identityToken);
                        if (partialInteractiveRegion != null && Binder.isProxy(connection.getRemote())) {
                            partialInteractiveRegion.recycle();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void sendGesture(int sequence, ParceledListSlice gestureSteps) {
    }

    public void dispatchGesture(int sequence, ParceledListSlice gestureSteps, int displayId) {
    }

    public boolean performAccessibilityAction(int accessibilityWindowId, long accessibilityNodeId, int action, Bundle arguments, int interactionId, IAccessibilityInteractionConnectionCallback callback, long interrogatingTid) throws RemoteException {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            int resolvedWindowId = resolveAccessibilityWindowIdLocked(accessibilityWindowId);
            if (!this.mSecurityPolicy.canGetAccessibilityNodeInfoLocked(this.mSystemSupport.getCurrentUserIdLocked(), this, resolvedWindowId)) {
                return false;
            }
            if (this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                return performAccessibilityActionInternal(this.mSystemSupport.getCurrentUserIdLocked(), resolvedWindowId, accessibilityNodeId, action, arguments, interactionId, callback, this.mFetchFlags, interrogatingTid);
            }
            return false;
        }
    }

    public boolean performGlobalAction(int action) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            return this.mSystemActionPerformer.performSystemAction(action);
        }
    }

    public List<AccessibilityNodeInfo.AccessibilityAction> getSystemActions() {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return Collections.emptyList();
            }
            return this.mSystemActionPerformer.getSystemActions();
        }
    }

    public boolean isFingerprintGestureDetectionAvailable() {
        FingerprintGestureDispatcher dispatcher;
        return this.mContext.getPackageManager().hasSystemFeature("android.hardware.fingerprint") && isCapturingFingerprintGestures() && (dispatcher = this.mSystemSupport.getFingerprintGestureDispatcher()) != null && dispatcher.isFingerprintGestureDetectionAvailable();
    }

    public float getMagnificationScale(int displayId) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return 1.0f;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                return this.mSystemSupport.getMagnificationController().getScale(displayId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public Region getMagnificationRegion(int displayId) {
        synchronized (this.mLock) {
            Region region = Region.obtain();
            if (!hasRightsToCurrentUserLocked()) {
                return region;
            }
            MagnificationController magnificationController = this.mSystemSupport.getMagnificationController();
            boolean registeredJustForThisCall = registerMagnificationIfNeeded(displayId, magnificationController);
            long identity = Binder.clearCallingIdentity();
            try {
                magnificationController.getMagnificationRegion(displayId, region);
                Binder.restoreCallingIdentity(identity);
                if (registeredJustForThisCall) {
                    magnificationController.unregister(displayId);
                }
                return region;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                if (registeredJustForThisCall) {
                    magnificationController.unregister(displayId);
                }
                throw th;
            }
        }
    }

    public float getMagnificationCenterX(int displayId) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return 0.0f;
            }
            MagnificationController magnificationController = this.mSystemSupport.getMagnificationController();
            boolean registeredJustForThisCall = registerMagnificationIfNeeded(displayId, magnificationController);
            long identity = Binder.clearCallingIdentity();
            try {
                float centerX = magnificationController.getCenterX(displayId);
                Binder.restoreCallingIdentity(identity);
                if (registeredJustForThisCall) {
                    magnificationController.unregister(displayId);
                }
                return centerX;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                if (registeredJustForThisCall) {
                    magnificationController.unregister(displayId);
                }
                throw th;
            }
        }
    }

    public float getMagnificationCenterY(int displayId) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return 0.0f;
            }
            MagnificationController magnificationController = this.mSystemSupport.getMagnificationController();
            boolean registeredJustForThisCall = registerMagnificationIfNeeded(displayId, magnificationController);
            long identity = Binder.clearCallingIdentity();
            try {
                float centerY = magnificationController.getCenterY(displayId);
                Binder.restoreCallingIdentity(identity);
                if (registeredJustForThisCall) {
                    magnificationController.unregister(displayId);
                }
                return centerY;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                if (registeredJustForThisCall) {
                    magnificationController.unregister(displayId);
                }
                throw th;
            }
        }
    }

    private boolean registerMagnificationIfNeeded(int displayId, MagnificationController magnificationController) {
        if (!magnificationController.isRegistered(displayId) && this.mSecurityPolicy.canControlMagnification(this)) {
            magnificationController.register(displayId);
            return true;
        }
        return false;
    }

    public boolean resetMagnification(int displayId, boolean animate) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            if (!this.mSecurityPolicy.canControlMagnification(this)) {
                return false;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                MagnificationController magnificationController = this.mSystemSupport.getMagnificationController();
                return magnificationController.reset(displayId, animate) || !magnificationController.isMagnifying(displayId);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public boolean setMagnificationScaleAndCenter(int displayId, float scale, float centerX, float centerY, boolean animate) {
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                return false;
            }
            if (!this.mSecurityPolicy.canControlMagnification(this)) {
                return false;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                MagnificationController magnificationController = this.mSystemSupport.getMagnificationController();
                if (!magnificationController.isRegistered(displayId)) {
                    magnificationController.register(displayId);
                }
                boolean scaleAndCenter = magnificationController.setScaleAndCenter(displayId, scale, centerX, centerY, animate, this.mId);
                Binder.restoreCallingIdentity(identity);
                return scaleAndCenter;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }
    }

    public void setMagnificationCallbackEnabled(int displayId, boolean enabled) {
        this.mInvocationHandler.setMagnificationCallbackEnabled(displayId, enabled);
    }

    public boolean isMagnificationCallbackEnabled(int displayId) {
        return this.mInvocationHandler.isMagnificationCallbackEnabled(displayId);
    }

    public void setSoftKeyboardCallbackEnabled(boolean enabled) {
        this.mInvocationHandler.setSoftKeyboardCallbackEnabled(enabled);
    }

    public void takeScreenshot(final int displayId, final RemoteCallback callback) {
        long currentTimestamp = SystemClock.uptimeMillis();
        long j = this.mRequestTakeScreenshotTimestampMs;
        if (j != 0 && currentTimestamp - j <= 1000) {
            sendScreenshotFailure(3, callback);
            return;
        }
        this.mRequestTakeScreenshotTimestampMs = currentTimestamp;
        synchronized (this.mLock) {
            if (!hasRightsToCurrentUserLocked()) {
                sendScreenshotFailure(1, callback);
                return;
            }
            if (!this.mSecurityPolicy.canTakeScreenshotLocked(this)) {
                throw new SecurityException("Services don't have the capability of taking the screenshot.");
            }
            if (!this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                sendScreenshotFailure(2, callback);
                return;
            }
            DisplayManager displayManager = (DisplayManager) this.mContext.getSystemService("display");
            Display display = displayManager.getDisplay(displayId);
            if (display == null || (display.getType() == 5 && (display.getFlags() & 4) != 0)) {
                sendScreenshotFailure(4, callback);
                return;
            }
            long identity = Binder.clearCallingIdentity();
            try {
                this.mMainHandler.post(PooledLambda.obtainRunnable(new Consumer() { // from class: com.android.server.accessibility.-$$Lambda$AbstractAccessibilityServiceConnection$2KWbrhNaPTRK49IzRgPA-muj7Go
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$takeScreenshot$0$AbstractAccessibilityServiceConnection(displayId, callback, obj);
                    }
                }, (Object) null).recycleOnUse());
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    public /* synthetic */ void lambda$takeScreenshot$0$AbstractAccessibilityServiceConnection(int displayId, RemoteCallback callback, Object nonArg) {
        SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer = ((DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class)).userScreenshot(displayId);
        if (screenshotBuffer != null) {
            sendScreenshotSuccess(screenshotBuffer, callback);
        } else {
            sendScreenshotFailure(4, callback);
        }
    }

    private void sendScreenshotSuccess(SurfaceControl.ScreenshotGraphicBuffer screenshotBuffer, RemoteCallback callback) {
        GraphicBuffer graphicBuffer = screenshotBuffer.getGraphicBuffer();
        HardwareBuffer hardwareBuffer = HardwareBuffer.createFromGraphicBuffer(graphicBuffer);
        try {
            ParcelableColorSpace colorSpace = new ParcelableColorSpace(screenshotBuffer.getColorSpace());
            Bundle payload = new Bundle();
            payload.putInt("screenshot_status", 0);
            payload.putParcelable("screenshot_hardwareBuffer", hardwareBuffer);
            payload.putParcelable("screenshot_colorSpace", colorSpace);
            payload.putLong("screenshot_timestamp", SystemClock.uptimeMillis());
            callback.sendResult(payload);
            hardwareBuffer.close();
            if (hardwareBuffer != null) {
                hardwareBuffer.close();
            }
        } catch (Throwable th) {
            if (hardwareBuffer != null) {
                try {
                    hardwareBuffer.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void sendScreenshotFailure(final int errorCode, final RemoteCallback callback) {
        this.mMainHandler.post(PooledLambda.obtainRunnable(new Consumer() { // from class: com.android.server.accessibility.-$$Lambda$AbstractAccessibilityServiceConnection$g9riCCZ1Q65sgTLJyka5Kl5oFso
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AbstractAccessibilityServiceConnection.lambda$sendScreenshotFailure$1(errorCode, callback, obj);
            }
        }, (Object) null).recycleOnUse());
    }

    static /* synthetic */ void lambda$sendScreenshotFailure$1(int errorCode, RemoteCallback callback, Object nonArg) {
        Bundle payload = new Bundle();
        payload.putInt("screenshot_status", errorCode);
        callback.sendResult(payload);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, LOG_TAG, pw)) {
            synchronized (this.mLock) {
                pw.append((CharSequence) ("Service[label=" + ((Object) this.mAccessibilityServiceInfo.getResolveInfo().loadLabel(this.mContext.getPackageManager()))));
                pw.append((CharSequence) (", feedbackType" + AccessibilityServiceInfo.feedbackTypeToString(this.mFeedbackType)));
                pw.append((CharSequence) (", capabilities=" + this.mAccessibilityServiceInfo.getCapabilities()));
                pw.append((CharSequence) (", eventTypes=" + AccessibilityEvent.eventTypeToString(this.mEventTypes)));
                pw.append((CharSequence) (", notificationTimeout=" + this.mNotificationTimeout));
                pw.append((CharSequence) (", requestA11yBtn=" + this.mRequestAccessibilityButton));
                pw.append("]");
            }
        }
    }

    public void onAdded() {
        Display[] displays = this.mDisplayManager.getDisplays();
        for (Display display : displays) {
            int displayId = display.getDisplayId();
            onDisplayAdded(displayId);
        }
    }

    public void onDisplayAdded(int displayId) {
        long identity = Binder.clearCallingIdentity();
        try {
            IBinder overlayWindowToken = new Binder();
            this.mWindowManagerService.addWindowToken(overlayWindowToken, 2032, displayId);
            synchronized (this.mLock) {
                this.mOverlayWindowTokens.put(displayId, overlayWindowToken);
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public void onRemoved() {
        Display[] displays = this.mDisplayManager.getDisplays();
        for (Display display : displays) {
            int displayId = display.getDisplayId();
            onDisplayRemoved(displayId);
        }
    }

    public void onDisplayRemoved(int displayId) {
        long identity = Binder.clearCallingIdentity();
        try {
            this.mWindowManagerService.removeWindowToken(this.mOverlayWindowTokens.get(displayId), true, displayId);
            synchronized (this.mLock) {
                this.mOverlayWindowTokens.remove(displayId);
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public IBinder getOverlayWindowToken(int displayId) {
        IBinder iBinder;
        synchronized (this.mLock) {
            iBinder = this.mOverlayWindowTokens.get(displayId);
        }
        return iBinder;
    }

    public int getWindowIdForLeashToken(IBinder token) {
        int windowIdLocked;
        synchronized (this.mLock) {
            windowIdLocked = this.mA11yWindowManager.getWindowIdLocked(token);
        }
        return windowIdLocked;
    }

    public void resetLocked() {
        this.mSystemSupport.getKeyEventDispatcher().flush(this);
        try {
            if (this.mServiceInterface != null) {
                this.mServiceInterface.init((IAccessibilityServiceConnection) null, this.mId, (IBinder) null);
            }
        } catch (RemoteException e) {
        }
        IBinder iBinder = this.mService;
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this, 0);
            } catch (NoSuchElementException e2) {
                Slog.e(LOG_TAG, "Failed unregistering death link");
            }
            this.mService = null;
        }
        this.mServiceInterface = null;
        this.mReceivedAccessibilityButtonCallbackSinceBind = false;
    }

    public boolean isConnectedLocked() {
        return this.mService != null;
    }

    public void notifyAccessibilityEvent(AccessibilityEvent event) {
        Message message;
        synchronized (this.mLock) {
            int eventType = event.getEventType();
            boolean serviceWantsEvent = wantsEventLocked(event);
            int i = 1;
            boolean requiredForCacheConsistency = this.mUsesAccessibilityCache && (4307005 & eventType) != 0;
            if (serviceWantsEvent || requiredForCacheConsistency) {
                if (this.mSecurityPolicy.checkAccessibilityAccess(this)) {
                    AccessibilityEvent newEvent = AccessibilityEvent.obtain(event);
                    if (this.mNotificationTimeout > 0 && eventType != 2048) {
                        AccessibilityEvent oldEvent = this.mPendingEvents.get(eventType);
                        this.mPendingEvents.put(eventType, newEvent);
                        if (oldEvent != null) {
                            this.mEventDispatchHandler.removeMessages(eventType);
                            oldEvent.recycle();
                        }
                        message = this.mEventDispatchHandler.obtainMessage(eventType);
                    } else {
                        message = this.mEventDispatchHandler.obtainMessage(eventType, newEvent);
                    }
                    if (!serviceWantsEvent) {
                        i = 0;
                    }
                    message.arg1 = i;
                    this.mEventDispatchHandler.sendMessageDelayed(message, this.mNotificationTimeout);
                }
            }
        }
    }

    private boolean wantsEventLocked(AccessibilityEvent event) {
        if (!canReceiveEventsLocked()) {
            return false;
        }
        if (event.getWindowId() != -1 && !event.isImportantForAccessibility() && (this.mFetchFlags & 8) == 0) {
            return false;
        }
        int eventType = event.getEventType();
        if ((this.mEventTypes & eventType) != eventType) {
            return false;
        }
        Set<String> packageNames = this.mPackageNames;
        String packageName = event.getPackageName() != null ? event.getPackageName().toString() : null;
        return packageNames.isEmpty() || packageNames.contains(packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAccessibilityEventInternal(int eventType, AccessibilityEvent event, boolean serviceWantsEvent) {
        synchronized (this.mLock) {
            IAccessibilityServiceClient listener = this.mServiceInterface;
            if (listener == null) {
                return;
            }
            if (event == null) {
                event = this.mPendingEvents.get(eventType);
                if (event == null) {
                    return;
                } else {
                    this.mPendingEvents.remove(eventType);
                }
            }
            if (this.mSecurityPolicy.canRetrieveWindowContentLocked(this)) {
                event.setConnectionId(this.mId);
            } else {
                event.setSource((View) null);
            }
            event.setSealed(true);
            try {
                try {
                    listener.onAccessibilityEvent(event, serviceWantsEvent);
                } catch (RemoteException re) {
                    Slog.e(LOG_TAG, "Error during sending " + event + " to " + listener, re);
                }
            } finally {
                event.recycle();
            }
        }
    }

    public void notifyGesture(AccessibilityGestureEvent gestureEvent) {
        this.mInvocationHandler.obtainMessage(1, gestureEvent).sendToTarget();
    }

    public void notifySystemActionsChangedLocked() {
        this.mInvocationHandler.sendEmptyMessage(9);
    }

    public void notifyClearAccessibilityNodeInfoCache() {
        this.mInvocationHandler.sendEmptyMessage(2);
    }

    public void notifyMagnificationChangedLocked(int displayId, Region region, float scale, float centerX, float centerY) {
        this.mInvocationHandler.notifyMagnificationChangedLocked(displayId, region, scale, centerX, centerY);
    }

    public void notifySoftKeyboardShowModeChangedLocked(int showState) {
        this.mInvocationHandler.notifySoftKeyboardShowModeChangedLocked(showState);
    }

    public void notifyAccessibilityButtonClickedLocked(int displayId) {
        this.mInvocationHandler.notifyAccessibilityButtonClickedLocked(displayId);
    }

    public void notifyAccessibilityButtonAvailabilityChangedLocked(boolean available) {
        this.mInvocationHandler.notifyAccessibilityButtonAvailabilityChangedLocked(available);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyMagnificationChangedInternal(int displayId, Region region, float scale, float centerX, float centerY) {
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.onMagnificationChanged(displayId, region, scale, centerX, centerY);
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error sending magnification changes to " + this.mService, re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySoftKeyboardShowModeChangedInternal(int showState) {
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.onSoftKeyboardShowModeChanged(showState);
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error sending soft keyboard show mode changes to " + this.mService, re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAccessibilityButtonClickedInternal(int displayId) {
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.onAccessibilityButtonClicked(displayId);
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error sending accessibility button click to " + this.mService, re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAccessibilityButtonAvailabilityChangedInternal(boolean available) {
        if (this.mReceivedAccessibilityButtonCallbackSinceBind && this.mLastAccessibilityButtonCallbackState == available) {
            return;
        }
        this.mReceivedAccessibilityButtonCallbackSinceBind = true;
        this.mLastAccessibilityButtonCallbackState = available;
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.onAccessibilityButtonAvailabilityChanged(available);
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error sending accessibility button availability change to " + this.mService, re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyGestureInternal(AccessibilityGestureEvent gestureInfo) {
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.onGesture(gestureInfo);
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error during sending gesture " + gestureInfo + " to " + this.mService, re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifySystemActionsChangedInternal() {
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.onSystemActionsChanged();
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error sending system actions change to " + this.mService, re);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyClearAccessibilityCacheInternal() {
        IAccessibilityServiceClient listener = getServiceInterfaceSafely();
        if (listener != null) {
            try {
                listener.clearAccessibilityCache();
            } catch (RemoteException re) {
                Slog.e(LOG_TAG, "Error during requesting accessibility info cache to be cleared.", re);
            }
        }
    }

    private IAccessibilityServiceClient getServiceInterfaceSafely() {
        IAccessibilityServiceClient iAccessibilityServiceClient;
        synchronized (this.mLock) {
            iAccessibilityServiceClient = this.mServiceInterface;
        }
        return iAccessibilityServiceClient;
    }

    private int resolveAccessibilityWindowIdLocked(int accessibilityWindowId) {
        if (accessibilityWindowId == Integer.MAX_VALUE) {
            return this.mA11yWindowManager.getActiveWindowId(this.mSystemSupport.getCurrentUserIdLocked());
        }
        return accessibilityWindowId;
    }

    private int resolveAccessibilityWindowIdForFindFocusLocked(int windowId, int focusType) {
        if (windowId == Integer.MAX_VALUE) {
            return this.mA11yWindowManager.getActiveWindowId(this.mSystemSupport.getCurrentUserIdLocked());
        }
        if (windowId == -2) {
            return this.mA11yWindowManager.getFocusedWindowId(focusType);
        }
        return windowId;
    }

    private void ensureWindowsAvailableTimedLocked(int displayId) {
        if (this.mA11yWindowManager.getWindowListLocked(displayId) != null) {
            return;
        }
        if (!this.mA11yWindowManager.isTrackingWindowsLocked(displayId)) {
            this.mSystemSupport.onClientChangeLocked(false);
        }
        if (!this.mA11yWindowManager.isTrackingWindowsLocked(displayId)) {
            return;
        }
        long startMillis = SystemClock.uptimeMillis();
        while (this.mA11yWindowManager.getWindowListLocked(displayId) == null) {
            long elapsedMillis = SystemClock.uptimeMillis() - startMillis;
            long remainMillis = 5000 - elapsedMillis;
            if (remainMillis <= 0) {
                return;
            } else {
                try {
                    this.mLock.wait(remainMillis);
                } catch (InterruptedException e) {
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x005c  */
    private boolean performAccessibilityActionInternal(int userId, int resolvedWindowId, long accessibilityNodeId, int action, Bundle arguments, int interactionId, IAccessibilityInteractionConnectionCallback callback, int fetchFlags, long interrogatingTid) throws Throwable {
        IBinder activityToken;
        AccessibilityWindowManager.RemoteAccessibilityConnection connection;
        WindowInfo windowInfo;
        synchronized (this.mLock) {
            try {
                AccessibilityWindowManager.RemoteAccessibilityConnection connection2 = this.mA11yWindowManager.getConnectionLocked(userId, resolvedWindowId);
                if (connection2 == null) {
                    return false;
                }
                boolean isA11yFocusAction = action == 64 || action == 128;
                if (isA11yFocusAction || (windowInfo = this.mA11yWindowManager.findWindowInfoByIdLocked(resolvedWindowId)) == null) {
                    activityToken = null;
                } else {
                    IBinder activityToken2 = windowInfo.activityToken;
                    activityToken = activityToken2;
                }
                try {
                    AccessibilityWindowInfo a11yWindowInfo = this.mA11yWindowManager.findA11yWindowInfoByIdLocked(resolvedWindowId);
                    if (a11yWindowInfo != null) {
                        try {
                            if (!a11yWindowInfo.isInPictureInPictureMode() || this.mA11yWindowManager.getPictureInPictureActionReplacingConnection() == null || isA11yFocusAction) {
                                connection = connection2;
                            } else {
                                connection = this.mA11yWindowManager.getPictureInPictureActionReplacingConnection();
                            }
                        } catch (Throwable th) {
                            re = th;
                            throw re;
                        }
                    } else {
                        connection = connection2;
                    }
                    int interrogatingPid = Binder.getCallingPid();
                    long identityToken = Binder.clearCallingIdentity();
                    try {
                        this.mPowerManager.userActivity(SystemClock.uptimeMillis(), 3, 0);
                        if (action == 16 || action == 32) {
                            this.mA11yWindowManager.notifyOutsideTouch(userId, resolvedWindowId);
                        }
                        if (activityToken != null) {
                            try {
                                ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).setFocusedActivity(activityToken);
                            } catch (RemoteException e) {
                                Binder.restoreCallingIdentity(identityToken);
                                return 0;
                            } catch (Throwable th2) {
                                th = th2;
                                Binder.restoreCallingIdentity(identityToken);
                                throw th;
                            }
                        }
                        try {
                            connection.getRemote().performAccessibilityAction(accessibilityNodeId, action, arguments, interactionId, callback, fetchFlags, interrogatingPid, interrogatingTid);
                            Binder.restoreCallingIdentity(identityToken);
                            return true;
                        } catch (RemoteException e2) {
                            Binder.restoreCallingIdentity(identityToken);
                            return 0;
                        } catch (Throwable th3) {
                            th = th3;
                            Binder.restoreCallingIdentity(identityToken);
                            throw th;
                        }
                    } catch (RemoteException e3) {
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    re = th5;
                }
            } catch (Throwable th6) {
                re = th6;
            }
        }
    }

    private IAccessibilityInteractionConnectionCallback replaceCallbackIfNeeded(IAccessibilityInteractionConnectionCallback originalCallback, int resolvedWindowId, int interactionId, int interrogatingPid, long interrogatingTid) throws Throwable {
        AccessibilityWindowManager.RemoteAccessibilityConnection pipActionReplacingConnection = this.mA11yWindowManager.getPictureInPictureActionReplacingConnection();
        synchronized (this.mLock) {
            try {
                try {
                    AccessibilityWindowInfo windowInfo = this.mA11yWindowManager.findA11yWindowInfoByIdLocked(resolvedWindowId);
                    if (windowInfo != null && windowInfo.isInPictureInPictureMode() && pipActionReplacingConnection != null) {
                        return new ActionReplacingCallback(originalCallback, pipActionReplacingConnection.getRemote(), interactionId, interrogatingPid, interrogatingTid);
                    }
                    return originalCallback;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                throw th;
            }
        }
    }

    private List<AccessibilityWindowInfo> getWindowsByDisplayLocked(int displayId) {
        List<AccessibilityWindowInfo> internalWindowList = this.mA11yWindowManager.getWindowListLocked(displayId);
        if (internalWindowList == null) {
            return null;
        }
        List<AccessibilityWindowInfo> returnedWindowList = new ArrayList<>();
        int windowCount = internalWindowList.size();
        for (int i = 0; i < windowCount; i++) {
            AccessibilityWindowInfo window = internalWindowList.get(i);
            AccessibilityWindowInfo windowClone = AccessibilityWindowInfo.obtain(window);
            windowClone.setConnectionId(this.mId);
            returnedWindowList.add(windowClone);
        }
        return returnedWindowList;
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    private final class InvocationHandler extends Handler {
        public static final int MSG_CLEAR_ACCESSIBILITY_CACHE = 2;
        private static final int MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED = 8;
        private static final int MSG_ON_ACCESSIBILITY_BUTTON_CLICKED = 7;
        public static final int MSG_ON_GESTURE = 1;
        private static final int MSG_ON_MAGNIFICATION_CHANGED = 5;
        private static final int MSG_ON_SOFT_KEYBOARD_STATE_CHANGED = 6;
        private static final int MSG_ON_SYSTEM_ACTIONS_CHANGED = 9;
        private boolean mIsSoftKeyboardCallbackEnabled;
        private final SparseArray<Boolean> mMagnificationCallbackState;

        public InvocationHandler(Looper looper) {
            super(looper, null, true);
            this.mMagnificationCallbackState = new SparseArray<>(0);
            this.mIsSoftKeyboardCallbackEnabled = false;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int type = message.what;
            if (type == 1) {
                AbstractAccessibilityServiceConnection.this.notifyGestureInternal((AccessibilityGestureEvent) message.obj);
                return;
            }
            if (type == 2) {
                AbstractAccessibilityServiceConnection.this.notifyClearAccessibilityCacheInternal();
                return;
            }
            switch (type) {
                case 5:
                    SomeArgs args = (SomeArgs) message.obj;
                    Region region = (Region) args.arg1;
                    float scale = ((Float) args.arg2).floatValue();
                    float centerX = ((Float) args.arg3).floatValue();
                    float centerY = ((Float) args.arg4).floatValue();
                    int displayId = args.argi1;
                    AbstractAccessibilityServiceConnection.this.notifyMagnificationChangedInternal(displayId, region, scale, centerX, centerY);
                    args.recycle();
                    return;
                case 6:
                    int showState = message.arg1;
                    AbstractAccessibilityServiceConnection.this.notifySoftKeyboardShowModeChangedInternal(showState);
                    return;
                case 7:
                    int displayId2 = message.arg1;
                    AbstractAccessibilityServiceConnection.this.notifyAccessibilityButtonClickedInternal(displayId2);
                    return;
                case 8:
                    boolean available = message.arg1 != 0;
                    AbstractAccessibilityServiceConnection.this.notifyAccessibilityButtonAvailabilityChangedInternal(available);
                    return;
                case 9:
                    AbstractAccessibilityServiceConnection.this.notifySystemActionsChangedInternal();
                    return;
                default:
                    throw new IllegalArgumentException("Unknown message: " + type);
            }
        }

        public void notifyMagnificationChangedLocked(int displayId, Region region, float scale, float centerX, float centerY) {
            synchronized (AbstractAccessibilityServiceConnection.this.mLock) {
                if (this.mMagnificationCallbackState.get(displayId) == null) {
                    return;
                }
                SomeArgs args = SomeArgs.obtain();
                args.arg1 = region;
                args.arg2 = Float.valueOf(scale);
                args.arg3 = Float.valueOf(centerX);
                args.arg4 = Float.valueOf(centerY);
                args.argi1 = displayId;
                Message msg = obtainMessage(5, args);
                msg.sendToTarget();
            }
        }

        public void setMagnificationCallbackEnabled(int displayId, boolean enabled) {
            synchronized (AbstractAccessibilityServiceConnection.this.mLock) {
                try {
                    if (enabled) {
                        this.mMagnificationCallbackState.put(displayId, true);
                    } else {
                        this.mMagnificationCallbackState.remove(displayId);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean isMagnificationCallbackEnabled(int displayId) {
            boolean z;
            synchronized (AbstractAccessibilityServiceConnection.this.mLock) {
                z = this.mMagnificationCallbackState.get(displayId) != null;
            }
            return z;
        }

        public void notifySoftKeyboardShowModeChangedLocked(int showState) {
            if (!this.mIsSoftKeyboardCallbackEnabled) {
                return;
            }
            Message msg = obtainMessage(6, showState, 0);
            msg.sendToTarget();
        }

        public void setSoftKeyboardCallbackEnabled(boolean enabled) {
            this.mIsSoftKeyboardCallbackEnabled = enabled;
        }

        public void notifyAccessibilityButtonClickedLocked(int displayId) {
            Message msg = obtainMessage(7, displayId, 0);
            msg.sendToTarget();
        }

        public void notifyAccessibilityButtonAvailabilityChangedLocked(boolean z) {
            obtainMessage(8, z ? 1 : 0, 0).sendToTarget();
        }
    }

    public boolean isServiceHandlesDoubleTapEnabled() {
        return this.mServiceHandlesDoubleTap;
    }

    public boolean isMultiFingerGesturesEnabled() {
        return this.mRequestMultiFingerGestures;
    }

    public boolean isTwoFingerPassthroughEnabled() {
        return this.mRequestTwoFingerPassthrough;
    }

    public void setGestureDetectionPassthroughRegion(int displayId, Region region) {
        this.mSystemSupport.setGestureDetectionPassthroughRegion(displayId, region);
    }

    public void setTouchExplorationPassthroughRegion(int displayId, Region region) {
        this.mSystemSupport.setTouchExplorationPassthroughRegion(displayId, region);
    }
}
