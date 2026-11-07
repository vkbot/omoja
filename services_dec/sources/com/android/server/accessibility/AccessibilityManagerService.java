package com.android.server.accessibility;

import android.R;
import android.accessibilityservice.AccessibilityGestureEvent;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.AccessibilityShortcutInfo;
import android.accessibilityservice.IAccessibilityServiceClient;
import android.app.ActivityOptions;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.appwidget.AppWidgetManagerInternal;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.database.ContentObserver;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManager;
import android.hardware.fingerprint.IFingerprintService;
import android.media.AudioManagerInternal;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.provider.Settings;
import android.provider.SettingsStringUtil;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Display;
import android.view.IInputFilter;
import android.view.IWindow;
import android.view.KeyEvent;
import android.view.MagnificationSpec;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityInteractionClient;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import android.view.accessibility.IAccessibilityInteractionConnection;
import android.view.accessibility.IAccessibilityManager;
import android.view.accessibility.IAccessibilityManagerClient;
import android.view.accessibility.IWindowMagnificationConnection;
import com.android.internal.accessibility.AccessibilityShortcutController;
import com.android.internal.accessibility.dialog.AccessibilityButtonChooserActivity;
import com.android.internal.accessibility.dialog.AccessibilityShortcutChooserActivity;
import com.android.internal.accessibility.util.AccessibilityStatsLogUtils;
import com.android.internal.content.PackageMonitor;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.IntPair;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.accessibility.magnification.WindowMagnificationManager;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.pm.PackageManagerService;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerInternal;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityManagerService extends IAccessibilityManager.Stub implements AbstractAccessibilityServiceConnection.SystemSupport, AccessibilityUserState.ServiceInfoChangeListener, AccessibilityWindowManager.AccessibilityEventSender, AccessibilitySecurityPolicy.AccessibilityUserManager, SystemActionPerformer.SystemActionsChangedListener {
    private static final char COMPONENT_NAME_SEPARATOR = ':';
    private static final boolean DEBUG = false;
    static final String FUNCTION_REGISTER_SYSTEM_ACTION = "registerSystemAction";
    private static final String FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE = "registerUiTestAutomationService";
    static final String FUNCTION_UNREGISTER_SYSTEM_ACTION = "unregisterSystemAction";
    private static final String GET_WINDOW_TOKEN = "getWindowToken";
    private static final String LOG_TAG = "AccessibilityManagerService";
    public static final int MAGNIFICATION_GESTURE_HANDLER_ID = 0;
    private static final String SET_PIP_ACTION_REPLACEMENT = "setPictureInPictureActionReplacingConnection";
    private static final String TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED = "temporaryEnableAccessibilityStateUntilKeyguardRemoved";
    private static final int WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS = 3000;
    private static final int WAIT_MOTION_INJECTOR_TIMEOUT_MILLIS = 1000;
    private final AccessibilityDisplayListener mA11yDisplayListener;
    private final AccessibilityWindowManager mA11yWindowManager;
    private final Context mContext;
    private AlertDialog mEnableTouchExplorationDialog;
    private FingerprintGestureDispatcher mFingerprintGestureDispatcher;
    private boolean mHasInputFilter;
    private boolean mInitialized;
    private AccessibilityInputFilter mInputFilter;
    private InteractionBridge mInteractionBridge;
    private boolean mIsAccessibilityButtonShown;
    private KeyEventDispatcher mKeyEventDispatcher;
    private MagnificationController mMagnificationController;
    private final MainHandler mMainHandler;
    private SparseArray<MotionEventInjector> mMotionEventInjectors;
    private final PackageManager mPackageManager;
    private final PowerManager mPowerManager;
    private final AccessibilitySecurityPolicy mSecurityPolicy;
    private SystemActionPerformer mSystemActionPerformer;
    private WindowMagnificationManager mWindowMagnificationMgr;
    private static final int OWN_PROCESS_ID = Process.myPid();
    private static int sIdCounter = 1;
    private final Object mLock = new Object();
    private final TextUtils.SimpleStringSplitter mStringColonSplitter = new TextUtils.SimpleStringSplitter(COMPONENT_NAME_SEPARATOR);
    private final Rect mTempRect = new Rect();
    private final Rect mTempRect1 = new Rect();
    private final Set<ComponentName> mTempComponentNameSet = new HashSet();
    private final List<AccessibilityServiceInfo> mTempAccessibilityServiceInfoList = new ArrayList();
    private final IntArray mTempIntArray = new IntArray(0);
    private final RemoteCallbackList<IAccessibilityManagerClient> mGlobalClients = new RemoteCallbackList<>();
    private final SparseArray<AccessibilityUserState> mUserStates = new SparseArray<>();
    private final UiAutomationManager mUiAutomationManager = new UiAutomationManager(this.mLock);
    private int mCurrentUserId = 0;
    private Point mTempPoint = new Point();
    private final WindowManagerInternal mWindowManagerService = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
    private final ActivityTaskManagerInternal mActivityTaskManagerService = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);

    static /* synthetic */ int access$1608() {
        int i = sIdCounter;
        sIdCounter = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityUserState getCurrentUserStateLocked() {
        return getUserStateLocked(this.mCurrentUserId);
    }

    public static final class Lifecycle extends SystemService {
        private final AccessibilityManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new AccessibilityManagerService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService("accessibility", this.mService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            this.mService.onBootPhase(phase);
        }
    }

    AccessibilityManagerService(Context context, PackageManager packageManager, AccessibilitySecurityPolicy securityPolicy, SystemActionPerformer systemActionPerformer, AccessibilityWindowManager a11yWindowManager, AccessibilityDisplayListener a11yDisplayListener) {
        this.mContext = context;
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mMainHandler = new MainHandler(this.mContext.getMainLooper());
        this.mPackageManager = packageManager;
        this.mSecurityPolicy = securityPolicy;
        this.mSystemActionPerformer = systemActionPerformer;
        this.mA11yWindowManager = a11yWindowManager;
        this.mA11yDisplayListener = a11yDisplayListener;
        init();
    }

    public AccessibilityManagerService(Context context) {
        this.mContext = context;
        this.mPowerManager = (PowerManager) context.getSystemService("power");
        this.mMainHandler = new MainHandler(this.mContext.getMainLooper());
        this.mPackageManager = this.mContext.getPackageManager();
        AccessibilitySecurityPolicy accessibilitySecurityPolicy = new AccessibilitySecurityPolicy(this.mContext, this);
        this.mSecurityPolicy = accessibilitySecurityPolicy;
        this.mA11yWindowManager = new AccessibilityWindowManager(this.mLock, this.mMainHandler, this.mWindowManagerService, this, accessibilitySecurityPolicy, this);
        this.mA11yDisplayListener = new AccessibilityDisplayListener(this.mContext, this.mMainHandler);
        init();
    }

    private void init() {
        this.mSecurityPolicy.setAccessibilityWindowManager(this.mA11yWindowManager);
        registerBroadcastReceivers();
        new AccessibilityContentObserver(this.mMainHandler).register(this.mContext.getContentResolver());
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport, com.android.server.accessibility.AccessibilitySecurityPolicy.AccessibilityUserManager
    public int getCurrentUserIdLocked() {
        return this.mCurrentUserId;
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public boolean isAccessibilityButtonShown() {
        return this.mIsAccessibilityButtonShown;
    }

    @Override // com.android.server.accessibility.AccessibilityUserState.ServiceInfoChangeListener
    public void onServiceInfoChangedLocked(AccessibilityUserState userState) {
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public FingerprintGestureDispatcher getFingerprintGestureDispatcher() {
        return this.mFingerprintGestureDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBootPhase(int phase) {
        if (phase == 500 && this.mPackageManager.hasSystemFeature("android.software.app_widgets")) {
            this.mSecurityPolicy.setAppWidgetManager((AppWidgetManagerInternal) LocalServices.getService(AppWidgetManagerInternal.class));
        }
    }

    private AccessibilityUserState getUserState(int userId) {
        AccessibilityUserState userStateLocked;
        synchronized (this.mLock) {
            userStateLocked = getUserStateLocked(userId);
        }
        return userStateLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityUserState getUserStateLocked(int userId) {
        AccessibilityUserState state = this.mUserStates.get(userId);
        if (state == null) {
            AccessibilityUserState state2 = new AccessibilityUserState(userId, this.mContext, this);
            this.mUserStates.put(userId, state2);
            return state2;
        }
        return state;
    }

    boolean getBindInstantServiceAllowed(int userId) {
        boolean bindInstantServiceAllowedLocked;
        synchronized (this.mLock) {
            AccessibilityUserState userState = getUserStateLocked(userId);
            bindInstantServiceAllowedLocked = userState.getBindInstantServiceAllowedLocked();
        }
        return bindInstantServiceAllowedLocked;
    }

    void setBindInstantServiceAllowed(int userId, boolean allowed) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_BIND_INSTANT_SERVICE", "setBindInstantServiceAllowed");
        synchronized (this.mLock) {
            AccessibilityUserState userState = getUserStateLocked(userId);
            if (allowed != userState.getBindInstantServiceAllowedLocked()) {
                userState.setBindInstantServiceAllowedLocked(allowed);
                onUserStateChangedLocked(userState);
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.accessibility.AccessibilityManagerService$1, reason: invalid class name */
    class AnonymousClass1 extends PackageMonitor {
        AnonymousClass1() {
        }

        public void onSomePackagesChanged() {
            synchronized (AccessibilityManagerService.this.mLock) {
                if (getChangingUserId() != AccessibilityManagerService.this.mCurrentUserId) {
                    return;
                }
                AccessibilityUserState userState = AccessibilityManagerService.this.getCurrentUserStateLocked();
                userState.mInstalledServices.clear();
                if (AccessibilityManagerService.this.readConfigurationForUserStateLocked(userState)) {
                    AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                }
            }
        }

        public void onPackageUpdateFinished(final String packageName, int uid) {
            synchronized (AccessibilityManagerService.this.mLock) {
                int userId = getChangingUserId();
                if (userId != AccessibilityManagerService.this.mCurrentUserId) {
                    return;
                }
                AccessibilityUserState userState = AccessibilityManagerService.this.getUserStateLocked(userId);
                boolean reboundAService = userState.getBindingServicesLocked().removeIf(new Predicate() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return AccessibilityManagerService.AnonymousClass1.lambda$onPackageUpdateFinished$0(packageName, (ComponentName) obj);
                    }
                }) || userState.mCrashedServices.removeIf(new Predicate() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$1$J4pGG-UiTxhxH1VLNWBa7KLTh48
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return AccessibilityManagerService.AnonymousClass1.lambda$onPackageUpdateFinished$1(packageName, (ComponentName) obj);
                    }
                });
                userState.mInstalledServices.clear();
                boolean configurationChanged = AccessibilityManagerService.this.readConfigurationForUserStateLocked(userState);
                if (reboundAService || configurationChanged) {
                    AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                }
                AccessibilityManagerService.this.migrateAccessibilityButtonSettingsIfNecessaryLocked(userState, packageName);
            }
        }

        static /* synthetic */ boolean lambda$onPackageUpdateFinished$0(String packageName, ComponentName component) {
            return component != null && component.getPackageName().equals(packageName);
        }

        static /* synthetic */ boolean lambda$onPackageUpdateFinished$1(String packageName, ComponentName component) {
            return component != null && component.getPackageName().equals(packageName);
        }

        public void onPackageRemoved(final String packageName, int uid) {
            synchronized (AccessibilityManagerService.this.mLock) {
                int userId = getChangingUserId();
                if (userId != AccessibilityManagerService.this.mCurrentUserId) {
                    return;
                }
                AccessibilityUserState userState = AccessibilityManagerService.this.getUserStateLocked(userId);
                Predicate<ComponentName> filter = new Predicate() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$1$ITZvj4S56Qgg104SnVkH6QavKLI
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return AccessibilityManagerService.AnonymousClass1.lambda$onPackageRemoved$2(packageName, (ComponentName) obj);
                    }
                };
                userState.mBindingServices.removeIf(filter);
                userState.mCrashedServices.removeIf(filter);
                Iterator<ComponentName> it = userState.mEnabledServices.iterator();
                boolean anyServiceRemoved = false;
                while (it.hasNext()) {
                    ComponentName comp = it.next();
                    String compPkg = comp.getPackageName();
                    if (compPkg.equals(packageName)) {
                        it.remove();
                        userState.mTouchExplorationGrantedServices.remove(comp);
                        anyServiceRemoved = true;
                    }
                }
                if (anyServiceRemoved) {
                    AccessibilityManagerService.this.persistComponentNamesToSettingLocked("enabled_accessibility_services", userState.mEnabledServices, userId);
                    AccessibilityManagerService.this.persistComponentNamesToSettingLocked("touch_exploration_granted_accessibility_services", userState.mTouchExplorationGrantedServices, userId);
                    AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                }
            }
        }

        static /* synthetic */ boolean lambda$onPackageRemoved$2(String packageName, ComponentName component) {
            return component != null && component.getPackageName().equals(packageName);
        }

        public boolean onHandleForceStop(Intent intent, String[] packages, int uid, boolean doit) {
            synchronized (AccessibilityManagerService.this.mLock) {
                int userId = getChangingUserId();
                if (userId != AccessibilityManagerService.this.mCurrentUserId) {
                    return false;
                }
                AccessibilityUserState userState = AccessibilityManagerService.this.getUserStateLocked(userId);
                Iterator<ComponentName> it = userState.mEnabledServices.iterator();
                while (it.hasNext()) {
                    ComponentName comp = it.next();
                    String compPkg = comp.getPackageName();
                    for (String pkg : packages) {
                        if (compPkg.equals(pkg)) {
                            if (!doit) {
                                return true;
                            }
                            it.remove();
                            userState.getBindingServicesLocked().remove(comp);
                            AccessibilityManagerService.this.persistComponentNamesToSettingLocked("enabled_accessibility_services", userState.mEnabledServices, userId);
                            AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                        }
                    }
                }
                return false;
            }
        }
    }

    private void registerBroadcastReceivers() {
        PackageMonitor monitor = new AnonymousClass1();
        monitor.register(this.mContext, (Looper) null, UserHandle.ALL, true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        intentFilter.addAction("android.intent.action.USER_REMOVED");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.os.action.SETTING_RESTORED");
        this.mContext.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.accessibility.AccessibilityManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.USER_SWITCHED".equals(action)) {
                    AccessibilityManagerService.this.switchUser(intent.getIntExtra("android.intent.extra.user_handle", 0));
                    return;
                }
                if ("android.intent.action.USER_UNLOCKED".equals(action)) {
                    AccessibilityManagerService.this.unlockUser(intent.getIntExtra("android.intent.extra.user_handle", 0));
                    return;
                }
                if ("android.intent.action.USER_REMOVED".equals(action)) {
                    AccessibilityManagerService.this.removeUser(intent.getIntExtra("android.intent.extra.user_handle", 0));
                    return;
                }
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    synchronized (AccessibilityManagerService.this.mLock) {
                        AccessibilityUserState userState = AccessibilityManagerService.this.getCurrentUserStateLocked();
                        if (AccessibilityManagerService.this.readConfigurationForUserStateLocked(userState)) {
                            AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                        }
                    }
                    return;
                }
                if ("android.os.action.SETTING_RESTORED".equals(action)) {
                    String which = intent.getStringExtra("setting_name");
                    if ("enabled_accessibility_services".equals(which)) {
                        synchronized (AccessibilityManagerService.this.mLock) {
                            AccessibilityManagerService.this.restoreEnabledAccessibilityServicesLocked(intent.getStringExtra("previous_value"), intent.getStringExtra("new_value"));
                        }
                    } else if ("accessibility_display_magnification_navbar_enabled".equals(which)) {
                        synchronized (AccessibilityManagerService.this.mLock) {
                            AccessibilityManagerService.this.restoreLegacyDisplayMagnificationNavBarIfNeededLocked(intent.getStringExtra("new_value"), intent.getIntExtra("restored_from_sdk_int", 0));
                        }
                    }
                }
            }
        }, UserHandle.ALL, intentFilter, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreLegacyDisplayMagnificationNavBarIfNeededLocked(String newSetting, int restoreFromSdkInt) {
        if (restoreFromSdkInt >= 30) {
            return;
        }
        try {
            boolean displayMagnificationNavBarEnabled = Integer.parseInt(newSetting) == 1;
            AccessibilityUserState userState = getUserStateLocked(0);
            ArraySet arraySet = new ArraySet();
            readColonDelimitedSettingToSet("accessibility_button_targets", userState.mUserId, arraySet, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$PDMEev7fTw8IXlg6MUfoqAonhJ0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AccessibilityManagerService.lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$0((String) obj);
                }
            });
            boolean targetsContainMagnification = arraySet.contains("com.android.server.accessibility.MagnificationController");
            if (targetsContainMagnification == displayMagnificationNavBarEnabled) {
                return;
            }
            if (displayMagnificationNavBarEnabled) {
                arraySet.add("com.android.server.accessibility.MagnificationController");
            } else {
                arraySet.remove("com.android.server.accessibility.MagnificationController");
            }
            persistColonDelimitedSetToSettingLocked("accessibility_button_targets", userState.mUserId, arraySet, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$IySyRJDkaJb7fkWGmJRSb1bpeTM
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AccessibilityManagerService.lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$1((String) obj);
                }
            });
            readAccessibilityButtonTargetsLocked(userState);
            onUserStateChangedLocked(userState);
        } catch (NumberFormatException e) {
            Slog.w(LOG_TAG, "number format is incorrect" + e);
        }
    }

    static /* synthetic */ String lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$0(String str) {
        return str;
    }

    static /* synthetic */ String lambda$restoreLegacyDisplayMagnificationNavBarIfNeededLocked$1(String str) {
        return str;
    }

    public long addClient(IAccessibilityManagerClient callback, int userId) {
        synchronized (this.mLock) {
            int resolvedUserId = this.mSecurityPolicy.resolveCallingUserIdEnforcingPermissionsLocked(userId);
            AccessibilityUserState userState = getUserStateLocked(resolvedUserId);
            Client client = new Client(this, callback, Binder.getCallingUid(), userState, null);
            if (this.mSecurityPolicy.isCallerInteractingAcrossUsers(userId)) {
                this.mGlobalClients.register(callback, client);
                return IntPair.of(getClientStateLocked(userState), client.mLastSentRelevantEventTypes);
            }
            userState.mUserClients.register(callback, client);
            return IntPair.of(resolvedUserId == this.mCurrentUserId ? getClientStateLocked(userState) : 0, client.mLastSentRelevantEventTypes);
        }
    }

    public void sendAccessibilityEvent(AccessibilityEvent event, int userId) {
        AccessibilityWindowInfo pip;
        boolean dispatchEvent = false;
        synchronized (this.mLock) {
            if (event.getWindowId() == -3 && (pip = this.mA11yWindowManager.getPictureInPictureWindowLocked()) != null) {
                int pipId = pip.getId();
                event.setWindowId(pipId);
            }
            int resolvedUserId = this.mSecurityPolicy.resolveCallingUserIdEnforcingPermissionsLocked(userId);
            event.setPackageName(this.mSecurityPolicy.resolveValidReportedPackageLocked(event.getPackageName(), UserHandle.getCallingAppId(), resolvedUserId, getCallingPid()));
            if (resolvedUserId == this.mCurrentUserId) {
                if (this.mSecurityPolicy.canDispatchAccessibilityEventLocked(this.mCurrentUserId, event)) {
                    this.mA11yWindowManager.updateActiveAndAccessibilityFocusedWindowLocked(this.mCurrentUserId, event.getWindowId(), event.getSourceNodeId(), event.getEventType(), event.getAction());
                    this.mSecurityPolicy.updateEventSourceLocked(event);
                    dispatchEvent = true;
                }
                if (this.mHasInputFilter && this.mInputFilter != null) {
                    this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ((AccessibilityManagerService) obj).sendAccessibilityEventToInputFilter((AccessibilityEvent) obj2);
                        }
                    }, this, AccessibilityEvent.obtain(event)));
                }
            }
        }
        if (dispatchEvent) {
            boolean shouldComputeWindows = false;
            int displayId = -1;
            synchronized (this.mLock) {
                int windowId = event.getWindowId();
                if (event.getEventType() == 32 && windowId != -1) {
                    displayId = this.mA11yWindowManager.getDisplayIdByUserIdAndWindowIdLocked(this.mCurrentUserId, windowId);
                }
                if (displayId != -1 && this.mA11yWindowManager.isTrackingWindowsLocked(displayId)) {
                    shouldComputeWindows = true;
                }
            }
            if (shouldComputeWindows) {
                WindowManagerInternal wm = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
                wm.computeWindowsForAccessibility(displayId);
            }
            synchronized (this.mLock) {
                notifyAccessibilityServicesDelayedLocked(event, false);
                notifyAccessibilityServicesDelayedLocked(event, true);
                this.mUiAutomationManager.sendAccessibilityEventLocked(event);
            }
        }
        if (OWN_PROCESS_ID != Binder.getCallingPid()) {
            event.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAccessibilityEventToInputFilter(AccessibilityEvent event) {
        synchronized (this.mLock) {
            if (this.mHasInputFilter && this.mInputFilter != null) {
                this.mInputFilter.notifyAccessibilityEvent(event);
            }
        }
        event.recycle();
    }

    public void registerSystemAction(RemoteAction action, int actionId) {
        this.mSecurityPolicy.enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACCESSIBILITY", FUNCTION_REGISTER_SYSTEM_ACTION);
        getSystemActionPerformer().registerSystemAction(actionId, action);
    }

    public void unregisterSystemAction(int actionId) {
        this.mSecurityPolicy.enforceCallerIsRecentsOrHasPermission("android.permission.MANAGE_ACCESSIBILITY", FUNCTION_UNREGISTER_SYSTEM_ACTION);
        getSystemActionPerformer().unregisterSystemAction(actionId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SystemActionPerformer getSystemActionPerformer() {
        if (this.mSystemActionPerformer == null) {
            this.mSystemActionPerformer = new SystemActionPerformer(this.mContext, this.mWindowManagerService, null, this);
        }
        return this.mSystemActionPerformer;
    }

    public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(int userId) {
        List<AccessibilityServiceInfo> list;
        synchronized (this.mLock) {
            int resolvedUserId = this.mSecurityPolicy.resolveCallingUserIdEnforcingPermissionsLocked(userId);
            list = getUserStateLocked(resolvedUserId).mInstalledServices;
        }
        return list;
    }

    public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(int feedbackType, int userId) {
        synchronized (this.mLock) {
            int resolvedUserId = this.mSecurityPolicy.resolveCallingUserIdEnforcingPermissionsLocked(userId);
            AccessibilityUserState userState = getUserStateLocked(resolvedUserId);
            if (this.mUiAutomationManager.suppressingAccessibilityServicesLocked()) {
                return Collections.emptyList();
            }
            List<AccessibilityServiceConnection> services = userState.mBoundServices;
            int serviceCount = services.size();
            List<AccessibilityServiceInfo> result = new ArrayList<>(serviceCount);
            for (int i = 0; i < serviceCount; i++) {
                AccessibilityServiceConnection service = services.get(i);
                if ((service.mFeedbackType & feedbackType) != 0 || feedbackType == -1) {
                    result.add(service.getServiceInfo());
                }
            }
            return result;
        }
    }

    public void interrupt(int userId) {
        synchronized (this.mLock) {
            int resolvedUserId = this.mSecurityPolicy.resolveCallingUserIdEnforcingPermissionsLocked(userId);
            if (resolvedUserId != this.mCurrentUserId) {
                return;
            }
            List<AccessibilityServiceConnection> services = getUserStateLocked(resolvedUserId).mBoundServices;
            int numServices = services.size();
            List<IAccessibilityServiceClient> interfacesToInterrupt = new ArrayList<>(numServices);
            for (int i = 0; i < numServices; i++) {
                AccessibilityServiceConnection service = services.get(i);
                IBinder a11yServiceBinder = service.mService;
                IAccessibilityServiceClient a11yServiceInterface = service.mServiceInterface;
                if (a11yServiceBinder != null && a11yServiceInterface != null) {
                    interfacesToInterrupt.add(a11yServiceInterface);
                }
            }
            int count = interfacesToInterrupt.size();
            for (int i2 = 0; i2 < count; i2++) {
                try {
                    interfacesToInterrupt.get(i2).onInterrupt();
                } catch (RemoteException re) {
                    Slog.e(LOG_TAG, "Error sending interrupt request to " + interfacesToInterrupt.get(i2), re);
                }
            }
        }
    }

    public int addAccessibilityInteractionConnection(IWindow windowToken, IBinder leashToken, IAccessibilityInteractionConnection connection, String packageName, int userId) throws RemoteException {
        return this.mA11yWindowManager.addAccessibilityInteractionConnection(windowToken, leashToken, connection, packageName, userId);
    }

    public void removeAccessibilityInteractionConnection(IWindow window) {
        this.mA11yWindowManager.removeAccessibilityInteractionConnection(window);
    }

    public void setPictureInPictureActionReplacingConnection(IAccessibilityInteractionConnection connection) throws RemoteException {
        this.mSecurityPolicy.enforceCallingPermission("android.permission.MODIFY_ACCESSIBILITY_DATA", SET_PIP_ACTION_REPLACEMENT);
        this.mA11yWindowManager.setPictureInPictureActionReplacingConnection(connection);
    }

    public void registerUiTestAutomationService(IBinder owner, IAccessibilityServiceClient serviceClient, AccessibilityServiceInfo accessibilityServiceInfo, int flags) {
        this.mSecurityPolicy.enforceCallingPermission("android.permission.RETRIEVE_WINDOW_CONTENT", FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE);
        synchronized (this.mLock) {
            UiAutomationManager uiAutomationManager = this.mUiAutomationManager;
            Context context = this.mContext;
            int i = sIdCounter;
            sIdCounter = i + 1;
            uiAutomationManager.registerUiTestAutomationServiceLocked(owner, serviceClient, context, accessibilityServiceInfo, i, this.mMainHandler, this.mSecurityPolicy, this, this.mWindowManagerService, getSystemActionPerformer(), this.mA11yWindowManager, flags);
            onUserStateChangedLocked(getCurrentUserStateLocked());
        }
    }

    public void unregisterUiTestAutomationService(IAccessibilityServiceClient serviceClient) {
        synchronized (this.mLock) {
            this.mUiAutomationManager.unregisterUiTestAutomationServiceLocked(serviceClient);
        }
    }

    public void temporaryEnableAccessibilityStateUntilKeyguardRemoved(ComponentName service, boolean touchExplorationEnabled) {
        this.mSecurityPolicy.enforceCallingPermission("android.permission.TEMPORARY_ENABLE_ACCESSIBILITY", TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED);
        if (!this.mWindowManagerService.isKeyguardLocked()) {
            return;
        }
        synchronized (this.mLock) {
            AccessibilityUserState userState = getCurrentUserStateLocked();
            userState.setTouchExplorationEnabledLocked(touchExplorationEnabled);
            userState.setDisplayMagnificationEnabledLocked(false);
            userState.disableShortcutMagnificationLocked();
            userState.setAutoclickEnabledLocked(false);
            userState.mEnabledServices.clear();
            userState.mEnabledServices.add(service);
            userState.getBindingServicesLocked().clear();
            userState.getCrashedServicesLocked().clear();
            userState.mTouchExplorationGrantedServices.clear();
            userState.mTouchExplorationGrantedServices.add(service);
            onUserStateChangedLocked(userState);
        }
    }

    public IBinder getWindowToken(int windowId, int userId) {
        this.mSecurityPolicy.enforceCallingPermission("android.permission.RETRIEVE_WINDOW_TOKEN", GET_WINDOW_TOKEN);
        synchronized (this.mLock) {
            int resolvedUserId = this.mSecurityPolicy.resolveCallingUserIdEnforcingPermissionsLocked(userId);
            if (resolvedUserId != this.mCurrentUserId) {
                return null;
            }
            if (this.mA11yWindowManager.findA11yWindowInfoByIdLocked(windowId) == null) {
                return null;
            }
            return this.mA11yWindowManager.getWindowTokenForUserAndWindowIdLocked(userId, windowId);
        }
    }

    public void notifyAccessibilityButtonClicked(int displayId, String targetName) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE") != 0) {
            throw new SecurityException("Caller does not hold permission android.permission.STATUS_BAR_SERVICE");
        }
        if (targetName == null) {
            synchronized (this.mLock) {
                AccessibilityUserState userState = getCurrentUserStateLocked();
                targetName = userState.getTargetAssignedToAccessibilityButton();
            }
        }
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs.INSTANCE, this, Integer.valueOf(displayId), 0, targetName));
    }

    public void notifyAccessibilityButtonVisibilityChanged(boolean shown) {
        this.mSecurityPolicy.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE");
        synchronized (this.mLock) {
            notifyAccessibilityButtonVisibilityChangedLocked(shown);
        }
    }

    public boolean onGesture(AccessibilityGestureEvent gestureEvent) {
        boolean handled;
        synchronized (this.mLock) {
            handled = notifyGestureLocked(gestureEvent, false);
            if (!handled) {
                handled = notifyGestureLocked(gestureEvent, true);
            }
        }
        return handled;
    }

    @Override // com.android.server.accessibility.SystemActionPerformer.SystemActionsChangedListener
    public void onSystemActionsChanged() {
        synchronized (this.mLock) {
            AccessibilityUserState state = getCurrentUserStateLocked();
            notifySystemActionsChangedLocked(state);
        }
    }

    void notifySystemActionsChangedLocked(AccessibilityUserState userState) {
        for (int i = userState.mBoundServices.size() - 1; i >= 0; i--) {
            AccessibilityServiceConnection service = userState.mBoundServices.get(i);
            service.notifySystemActionsChangedLocked();
        }
    }

    public boolean notifyKeyEvent(KeyEvent event, int policyFlags) {
        synchronized (this.mLock) {
            List<AccessibilityServiceConnection> boundServices = getCurrentUserStateLocked().mBoundServices;
            if (boundServices.isEmpty()) {
                return false;
            }
            return getKeyEventDispatcher().notifyKeyEventLocked(event, policyFlags, boundServices);
        }
    }

    public void notifyMagnificationChanged(int displayId, Region region, float scale, float centerX, float centerY) {
        synchronized (this.mLock) {
            notifyClearAccessibilityCacheLocked();
            notifyMagnificationChangedLocked(displayId, region, scale, centerX, centerY);
        }
    }

    void setMotionEventInjectors(SparseArray<MotionEventInjector> motionEventInjectors) {
        synchronized (this.mLock) {
            this.mMotionEventInjectors = motionEventInjectors;
            this.mLock.notifyAll();
        }
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public MotionEventInjector getMotionEventInjectorForDisplayLocked(int displayId) {
        long endMillis = SystemClock.uptimeMillis() + 1000;
        while (this.mMotionEventInjectors == null && SystemClock.uptimeMillis() < endMillis) {
            try {
                this.mLock.wait(endMillis - SystemClock.uptimeMillis());
            } catch (InterruptedException e) {
            }
        }
        SparseArray<MotionEventInjector> sparseArray = this.mMotionEventInjectors;
        if (sparseArray == null) {
            Slog.e(LOG_TAG, "MotionEventInjector installation timed out");
            return null;
        }
        MotionEventInjector motionEventInjector = sparseArray.get(displayId);
        return motionEventInjector;
    }

    public boolean getAccessibilityFocusClickPointInScreen(Point outPoint) {
        return getInteractionBridge().getAccessibilityFocusClickPointInScreenNotLocked(outPoint);
    }

    public boolean performActionOnAccessibilityFocusedItem(AccessibilityNodeInfo.AccessibilityAction action) {
        return getInteractionBridge().performActionOnAccessibilityFocusedItemNotLocked(action);
    }

    public boolean accessibilityFocusOnlyInActiveWindow() {
        boolean zIsTrackingWindowsLocked;
        synchronized (this.mLock) {
            zIsTrackingWindowsLocked = this.mA11yWindowManager.isTrackingWindowsLocked();
        }
        return zIsTrackingWindowsLocked;
    }

    boolean getWindowBounds(int windowId, Rect outBounds) {
        IBinder token;
        synchronized (this.mLock) {
            token = getWindowToken(windowId, this.mCurrentUserId);
        }
        this.mWindowManagerService.getWindowFrame(token, outBounds);
        if (!outBounds.isEmpty()) {
            return true;
        }
        return false;
    }

    public int getActiveWindowId() {
        return this.mA11yWindowManager.getActiveWindowId(this.mCurrentUserId);
    }

    public void onTouchInteractionStart() {
        this.mA11yWindowManager.onTouchInteractionStart();
    }

    public void onTouchInteractionEnd() {
        this.mA11yWindowManager.onTouchInteractionEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchUser(int userId) {
        synchronized (this.mLock) {
            if (this.mCurrentUserId == userId && this.mInitialized) {
                return;
            }
            AccessibilityUserState oldUserState = getCurrentUserStateLocked();
            oldUserState.onSwitchToAnotherUserLocked();
            if (oldUserState.mUserClients.getRegisteredCallbackCount() > 0) {
                this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((AccessibilityManagerService) obj).sendStateToClients(((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                    }
                }, this, 0, Integer.valueOf(oldUserState.mUserId)));
            }
            UserManager userManager = (UserManager) this.mContext.getSystemService("user");
            boolean announceNewUser = userManager.getUsers().size() > 1;
            this.mCurrentUserId = userId;
            AccessibilityUserState userState = getCurrentUserStateLocked();
            readConfigurationForUserStateLocked(userState);
            onUserStateChangedLocked(userState);
            migrateAccessibilityButtonSettingsIfNecessaryLocked(userState, null);
            if (announceNewUser) {
                this.mMainHandler.sendMessageDelayed(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((AccessibilityManagerService) obj).announceNewUserIfNeeded();
                    }
                }, this), BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void announceNewUserIfNeeded() {
        synchronized (this.mLock) {
            AccessibilityUserState userState = getCurrentUserStateLocked();
            if (userState.isHandlingAccessibilityEventsLocked()) {
                UserManager userManager = (UserManager) this.mContext.getSystemService("user");
                String message = this.mContext.getString(R.string.permlab_bodySensors, userManager.getUserInfo(this.mCurrentUserId).name);
                AccessibilityEvent event = AccessibilityEvent.obtain(16384);
                event.getText().add(message);
                sendAccessibilityEventLocked(event, this.mCurrentUserId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unlockUser(int userId) {
        synchronized (this.mLock) {
            int parentUserId = this.mSecurityPolicy.resolveProfileParentLocked(userId);
            if (parentUserId == this.mCurrentUserId) {
                AccessibilityUserState userState = getUserStateLocked(this.mCurrentUserId);
                onUserStateChangedLocked(userState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUser(int userId) {
        synchronized (this.mLock) {
            this.mUserStates.remove(userId);
        }
    }

    void restoreEnabledAccessibilityServicesLocked(String oldSetting, String newSetting) {
        readComponentNamesFromStringLocked(oldSetting, this.mTempComponentNameSet, false);
        readComponentNamesFromStringLocked(newSetting, this.mTempComponentNameSet, true);
        AccessibilityUserState userState = getUserStateLocked(0);
        userState.mEnabledServices.clear();
        userState.mEnabledServices.addAll(this.mTempComponentNameSet);
        persistComponentNamesToSettingLocked("enabled_accessibility_services", userState.mEnabledServices, 0);
        onUserStateChangedLocked(userState);
        migrateAccessibilityButtonSettingsIfNecessaryLocked(userState, null);
    }

    private int getClientStateLocked(AccessibilityUserState userState) {
        return userState.getClientStateLocked(this.mUiAutomationManager.isUiAutomationRunningLocked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InteractionBridge getInteractionBridge() {
        InteractionBridge interactionBridge;
        synchronized (this.mLock) {
            if (this.mInteractionBridge == null) {
                this.mInteractionBridge = new InteractionBridge();
            }
            interactionBridge = this.mInteractionBridge;
        }
        return interactionBridge;
    }

    private boolean notifyGestureLocked(AccessibilityGestureEvent gestureEvent, boolean isDefault) {
        AccessibilityUserState state = getCurrentUserStateLocked();
        for (int i = state.mBoundServices.size() - 1; i >= 0; i--) {
            AccessibilityServiceConnection service = state.mBoundServices.get(i);
            if (service.mRequestTouchExplorationMode && service.mIsDefault == isDefault) {
                service.notifyGesture(gestureEvent);
                return true;
            }
        }
        return false;
    }

    private void notifyClearAccessibilityCacheLocked() {
        AccessibilityUserState state = getCurrentUserStateLocked();
        for (int i = state.mBoundServices.size() - 1; i >= 0; i--) {
            AccessibilityServiceConnection service = state.mBoundServices.get(i);
            service.notifyClearAccessibilityNodeInfoCache();
        }
    }

    private void notifyMagnificationChangedLocked(int displayId, Region region, float scale, float centerX, float centerY) {
        AccessibilityUserState state = getCurrentUserStateLocked();
        for (int i = state.mBoundServices.size() - 1; i >= 0; i--) {
            AccessibilityServiceConnection service = state.mBoundServices.get(i);
            service.notifyMagnificationChangedLocked(displayId, region, scale, centerX, centerY);
        }
    }

    private void sendAccessibilityButtonToInputFilter(int displayId) {
        synchronized (this.mLock) {
            if (this.mHasInputFilter && this.mInputFilter != null) {
                this.mInputFilter.notifyAccessibilityButtonClicked(displayId);
            }
        }
    }

    private void showAccessibilityTargetsSelection(int displayId, int shortcutType) {
        String chooserClassName;
        Intent intent = new Intent("com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON");
        if (shortcutType == 1) {
            chooserClassName = AccessibilityShortcutChooserActivity.class.getName();
        } else {
            chooserClassName = AccessibilityButtonChooserActivity.class.getName();
        }
        intent.setClassName(PackageManagerService.PLATFORM_PACKAGE_NAME, chooserClassName);
        intent.addFlags(268468224);
        Bundle bundle = ActivityOptions.makeBasic().setLaunchDisplayId(displayId).toBundle();
        this.mContext.startActivityAsUser(intent, bundle, UserHandle.of(this.mCurrentUserId));
    }

    private void launchShortcutTargetActivity(int displayId, ComponentName name) {
        Intent intent = new Intent();
        Bundle bundle = ActivityOptions.makeBasic().setLaunchDisplayId(displayId).toBundle();
        intent.setComponent(name);
        intent.addFlags(AudioFormat.EVRC);
        try {
            this.mContext.startActivityAsUser(intent, bundle, UserHandle.of(this.mCurrentUserId));
        } catch (ActivityNotFoundException e) {
        }
    }

    private void notifyAccessibilityButtonVisibilityChangedLocked(boolean available) {
        AccessibilityUserState state = getCurrentUserStateLocked();
        this.mIsAccessibilityButtonShown = available;
        for (int i = state.mBoundServices.size() - 1; i >= 0; i--) {
            AccessibilityServiceConnection clientConnection = state.mBoundServices.get(i);
            if (clientConnection.mRequestAccessibilityButton) {
                clientConnection.notifyAccessibilityButtonAvailabilityChangedLocked(clientConnection.isAccessibilityButtonAvailableLocked(state));
            }
        }
    }

    private boolean readInstalledAccessibilityServiceLocked(AccessibilityUserState userState) {
        this.mTempAccessibilityServiceInfoList.clear();
        int flags = userState.getBindInstantServiceAllowedLocked() ? 819332 | 8388608 : 819332;
        List<ResolveInfo> installedServices = this.mPackageManager.queryIntentServicesAsUser(new Intent("android.accessibilityservice.AccessibilityService"), flags, this.mCurrentUserId);
        int count = installedServices.size();
        for (int i = 0; i < count; i++) {
            ResolveInfo resolveInfo = installedServices.get(i);
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            if (this.mSecurityPolicy.canRegisterService(serviceInfo)) {
                try {
                    AccessibilityServiceInfo accessibilityServiceInfo = new AccessibilityServiceInfo(resolveInfo, this.mContext);
                    if (!accessibilityServiceInfo.isWithinParcelableSize()) {
                        Slog.e(LOG_TAG, "Skipping service " + accessibilityServiceInfo.getResolveInfo().getComponentInfo() + " because service info size is larger than safe parcelable limits.");
                    } else {
                        if (userState.mCrashedServices.contains(serviceInfo.getComponentName())) {
                            accessibilityServiceInfo.crashed = true;
                        }
                        this.mTempAccessibilityServiceInfoList.add(accessibilityServiceInfo);
                    }
                } catch (IOException | XmlPullParserException xppe) {
                    Slog.e(LOG_TAG, "Error while initializing AccessibilityServiceInfo", xppe);
                }
            }
        }
        if (!this.mTempAccessibilityServiceInfoList.equals(userState.mInstalledServices)) {
            userState.mInstalledServices.clear();
            userState.mInstalledServices.addAll(this.mTempAccessibilityServiceInfoList);
            this.mTempAccessibilityServiceInfoList.clear();
            return true;
        }
        this.mTempAccessibilityServiceInfoList.clear();
        return false;
    }

    private boolean readInstalledAccessibilityShortcutLocked(AccessibilityUserState userState) {
        List<AccessibilityShortcutInfo> shortcutInfos = AccessibilityManager.getInstance(this.mContext).getInstalledAccessibilityShortcutListAsUser(this.mContext, this.mCurrentUserId);
        if (!shortcutInfos.equals(userState.mInstalledShortcuts)) {
            userState.mInstalledShortcuts.clear();
            userState.mInstalledShortcuts.addAll(shortcutInfos);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readEnabledAccessibilityServicesLocked(AccessibilityUserState userState) {
        this.mTempComponentNameSet.clear();
        readComponentNamesFromSettingLocked("enabled_accessibility_services", userState.mUserId, this.mTempComponentNameSet);
        if (!this.mTempComponentNameSet.equals(userState.mEnabledServices)) {
            userState.mEnabledServices.clear();
            userState.mEnabledServices.addAll(this.mTempComponentNameSet);
            this.mTempComponentNameSet.clear();
            return true;
        }
        this.mTempComponentNameSet.clear();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readTouchExplorationGrantedAccessibilityServicesLocked(AccessibilityUserState userState) {
        this.mTempComponentNameSet.clear();
        readComponentNamesFromSettingLocked("touch_exploration_granted_accessibility_services", userState.mUserId, this.mTempComponentNameSet);
        if (!this.mTempComponentNameSet.equals(userState.mTouchExplorationGrantedServices)) {
            userState.mTouchExplorationGrantedServices.clear();
            userState.mTouchExplorationGrantedServices.addAll(this.mTempComponentNameSet);
            this.mTempComponentNameSet.clear();
            return true;
        }
        this.mTempComponentNameSet.clear();
        return false;
    }

    private void notifyAccessibilityServicesDelayedLocked(AccessibilityEvent event, boolean isDefault) {
        try {
            AccessibilityUserState state = getCurrentUserStateLocked();
            int count = state.mBoundServices.size();
            for (int i = 0; i < count; i++) {
                AccessibilityServiceConnection service = state.mBoundServices.get(i);
                if (service.mIsDefault == isDefault) {
                    service.notifyAccessibilityEvent(event);
                }
            }
        } catch (IndexOutOfBoundsException e) {
        }
    }

    private void updateRelevantEventsLocked(final AccessibilityUserState userState) {
        this.mMainHandler.post(new Runnable() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$OoFjRI6y1WlU95cVLgWQrJ3H0b0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateRelevantEventsLocked$3$AccessibilityManagerService(userState);
            }
        });
    }

    public /* synthetic */ void lambda$updateRelevantEventsLocked$3$AccessibilityManagerService(final AccessibilityUserState userState) {
        broadcastToClients(userState, FunctionalUtils.ignoreRemoteException(new FunctionalUtils.RemoteExceptionIgnoringConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$ZdLvxqIs4SwVXlG74hryDdIsj8Q
            public final void acceptOrThrow(Object obj) throws RemoteException {
                this.f$0.lambda$updateRelevantEventsLocked$2$AccessibilityManagerService(userState, (AccessibilityManagerService.Client) obj);
            }
        }));
    }

    public /* synthetic */ void lambda$updateRelevantEventsLocked$2$AccessibilityManagerService(AccessibilityUserState userState, Client client) throws RemoteException {
        int relevantEventTypes;
        boolean changed = false;
        synchronized (this.mLock) {
            relevantEventTypes = computeRelevantEventTypesLocked(userState, client);
            if (client.mLastSentRelevantEventTypes != relevantEventTypes) {
                client.mLastSentRelevantEventTypes = relevantEventTypes;
                changed = true;
            }
        }
        if (changed) {
            client.mCallback.setRelevantEventTypes(relevantEventTypes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int computeRelevantEventTypesLocked(AccessibilityUserState userState, Client client) {
        int relevantEventTypes = 0;
        int serviceCount = userState.mBoundServices.size();
        int i = 0;
        while (true) {
            int relevantEventTypes2 = 0;
            if (i >= serviceCount) {
                break;
            }
            AccessibilityServiceConnection service = userState.mBoundServices.get(i);
            if (isClientInPackageWhitelist(service.getServiceInfo(), client)) {
                relevantEventTypes2 = service.getRelevantEventTypes();
            }
            relevantEventTypes |= relevantEventTypes2;
            i++;
        }
        return relevantEventTypes | (isClientInPackageWhitelist(this.mUiAutomationManager.getServiceInfo(), client) ? this.mUiAutomationManager.getRelevantEventTypes() : 0);
    }

    private static boolean isClientInPackageWhitelist(AccessibilityServiceInfo serviceInfo, Client client) {
        if (serviceInfo == null) {
            return false;
        }
        String[] clientPackages = client.mPackageNames;
        boolean result = ArrayUtils.isEmpty(serviceInfo.packageNames);
        if (!result && clientPackages != null) {
            for (String packageName : clientPackages) {
                if (ArrayUtils.contains(serviceInfo.packageNames, packageName)) {
                    return true;
                }
            }
            return result;
        }
        return result;
    }

    private void broadcastToClients(AccessibilityUserState userState, Consumer<Client> clientAction) {
        this.mGlobalClients.broadcastForEachCookie(clientAction);
        userState.mUserClients.broadcastForEachCookie(clientAction);
    }

    private void readComponentNamesFromSettingLocked(String settingName, int userId, Set<ComponentName> outComponentNames) {
        readColonDelimitedSettingToSet(settingName, userId, outComponentNames, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$pAB0wmwYbzxpH0pn344udWaoe2o
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ComponentName.unflattenFromString((String) obj);
            }
        });
    }

    private void readComponentNamesFromStringLocked(String names, Set<ComponentName> outComponentNames, boolean doMerge) {
        readColonDelimitedStringToSet(names, outComponentNames, doMerge, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$WSVclf7SW8Zyu3d3LwkuhR7n3vs
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ComponentName.unflattenFromString((String) obj);
            }
        });
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public void persistComponentNamesToSettingLocked(String settingName, Set<ComponentName> componentNames, int userId) {
        persistColonDelimitedSetToSettingLocked(settingName, userId, componentNames, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$w89etkvLWR-_CyLrTZBzMBGC7ZI
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ComponentName) obj).flattenToShortString();
            }
        });
    }

    private <T> void readColonDelimitedSettingToSet(String settingName, int userId, Set<T> outSet, Function<String, T> toItem) {
        String settingValue = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), settingName, userId);
        readColonDelimitedStringToSet(settingValue, outSet, false, toItem);
    }

    private <T> void readColonDelimitedStringToSet(String names, Set<T> outSet, boolean doMerge, Function<String, T> toItem) {
        T item;
        if (!doMerge) {
            outSet.clear();
        }
        if (!TextUtils.isEmpty(names)) {
            TextUtils.SimpleStringSplitter splitter = this.mStringColonSplitter;
            splitter.setString(names);
            while (splitter.hasNext()) {
                String str = splitter.next();
                if (!TextUtils.isEmpty(str) && (item = toItem.apply(str)) != null) {
                    outSet.add(item);
                }
            }
        }
    }

    private <T> void persistColonDelimitedSetToSettingLocked(String settingName, int userId, Set<T> set, Function<T, String> toString) {
        String str;
        StringBuilder builder = new StringBuilder();
        Iterator<T> it = set.iterator();
        while (true) {
            str = null;
            if (!it.hasNext()) {
                break;
            }
            T item = it.next();
            str = item != null ? toString.apply(item) : null;
            if (!TextUtils.isEmpty(str)) {
                if (builder.length() > 0) {
                    builder.append(COMPONENT_NAME_SEPARATOR);
                }
                builder.append(str);
            }
        }
        long identity = Binder.clearCallingIdentity();
        try {
            String settingValue = builder.toString();
            ContentResolver contentResolver = this.mContext.getContentResolver();
            if (!TextUtils.isEmpty(settingValue)) {
                str = settingValue;
            }
            Settings.Secure.putStringForUser(contentResolver, settingName, str, userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private void updateServicesLocked(AccessibilityUserState userState) {
        AccessibilityManagerService accessibilityManagerService;
        AccessibilityServiceConnection service;
        AccessibilityManagerService accessibilityManagerService2 = this;
        Map<ComponentName, AccessibilityServiceConnection> componentNameToServiceMap = userState.mComponentNameToServiceMap;
        boolean isUnlockingOrUnlocked = ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).isUserUnlockingOrUnlocked(userState.mUserId);
        int count = userState.mInstalledServices.size();
        int i = 0;
        while (i < count) {
            AccessibilityServiceInfo installedService = userState.mInstalledServices.get(i);
            ComponentName componentName = ComponentName.unflattenFromString(installedService.getId());
            AccessibilityServiceConnection service2 = componentNameToServiceMap.get(componentName);
            if (!isUnlockingOrUnlocked && !installedService.isDirectBootAware()) {
                Slog.d(LOG_TAG, "Ignoring non-encryption-aware service " + componentName);
                i = i;
                count = count;
                componentNameToServiceMap = componentNameToServiceMap;
                accessibilityManagerService = accessibilityManagerService2;
            } else if (userState.getBindingServicesLocked().contains(componentName)) {
                i = i;
                count = count;
                componentNameToServiceMap = componentNameToServiceMap;
                accessibilityManagerService = accessibilityManagerService2;
            } else if (userState.getCrashedServicesLocked().contains(componentName)) {
                i = i;
                count = count;
                componentNameToServiceMap = componentNameToServiceMap;
                accessibilityManagerService = accessibilityManagerService2;
            } else if (userState.mEnabledServices.contains(componentName) && !accessibilityManagerService2.mUiAutomationManager.suppressingAccessibilityServicesLocked()) {
                if (service2 == null) {
                    Context context = accessibilityManagerService2.mContext;
                    int i2 = sIdCounter;
                    sIdCounter = i2 + 1;
                    i = i;
                    count = count;
                    componentNameToServiceMap = componentNameToServiceMap;
                    service = new AccessibilityServiceConnection(userState, context, componentName, installedService, i2, accessibilityManagerService2.mMainHandler, accessibilityManagerService2.mLock, accessibilityManagerService2.mSecurityPolicy, this, accessibilityManagerService2.mWindowManagerService, getSystemActionPerformer(), accessibilityManagerService2.mA11yWindowManager, accessibilityManagerService2.mActivityTaskManagerService);
                } else {
                    i = i;
                    count = count;
                    componentNameToServiceMap = componentNameToServiceMap;
                    if (!userState.mBoundServices.contains(service2)) {
                        service = service2;
                    } else {
                        accessibilityManagerService = this;
                    }
                }
                service.bindLocked();
                accessibilityManagerService = this;
            } else if (service2 == 0) {
                accessibilityManagerService = this;
            } else {
                service2.unbindLocked();
                accessibilityManagerService = this;
                accessibilityManagerService.removeShortcutTargetForUnboundServiceLocked(userState, service2);
            }
            i++;
            accessibilityManagerService2 = accessibilityManagerService;
            count = count;
            componentNameToServiceMap = componentNameToServiceMap;
        }
        AccessibilityManagerService accessibilityManagerService3 = accessibilityManagerService2;
        int count2 = userState.mBoundServices.size();
        accessibilityManagerService3.mTempIntArray.clear();
        for (int i3 = 0; i3 < count2; i3++) {
            ResolveInfo resolveInfo = userState.mBoundServices.get(i3).mAccessibilityServiceInfo.getResolveInfo();
            if (resolveInfo != null) {
                accessibilityManagerService3.mTempIntArray.add(resolveInfo.serviceInfo.applicationInfo.uid);
            }
        }
        AudioManagerInternal audioManager = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
        if (audioManager != null) {
            audioManager.setAccessibilityServiceUids(accessibilityManagerService3.mTempIntArray);
        }
        updateAccessibilityEnabledSettingLocked(userState);
    }

    private void scheduleUpdateClientsIfNeededLocked(AccessibilityUserState userState) {
        int clientState = getClientStateLocked(userState);
        if (userState.getLastSentClientStateLocked() != clientState) {
            if (this.mGlobalClients.getRegisteredCallbackCount() > 0 || userState.mUserClients.getRegisteredCallbackCount() > 0) {
                userState.setLastSentClientStateLocked(clientState);
                this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((AccessibilityManagerService) obj).sendStateToAllClients(((Integer) obj2).intValue(), ((Integer) obj3).intValue());
                    }
                }, this, Integer.valueOf(clientState), Integer.valueOf(userState.mUserId)));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStateToAllClients(int clientState, int userId) {
        sendStateToClients(clientState, this.mGlobalClients);
        sendStateToClients(clientState, userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStateToClients(int clientState, int userId) {
        sendStateToClients(clientState, getUserState(userId).mUserClients);
    }

    private void sendStateToClients(final int clientState, RemoteCallbackList<IAccessibilityManagerClient> clients) {
        clients.broadcast(FunctionalUtils.ignoreRemoteException(new FunctionalUtils.RemoteExceptionIgnoringConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$5x6q6c6gSp0no05xKfQpGFp35yQ
            public final void acceptOrThrow(Object obj) {
                ((IAccessibilityManagerClient) obj).setState(clientState);
            }
        }));
    }

    private void scheduleNotifyClientsOfServicesStateChangeLocked(AccessibilityUserState userState) {
        updateRecommendedUiTimeoutLocked(userState);
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$heq1MRdQjg8BGWFbpV3PEpnDVcg
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((AccessibilityManagerService) obj).sendServicesStateChanged((RemoteCallbackList) obj2, ((Long) obj3).longValue());
            }
        }, this, userState.mUserClients, Long.valueOf(getRecommendedTimeoutMillisLocked(userState))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendServicesStateChanged(RemoteCallbackList<IAccessibilityManagerClient> userClients, long uiTimeout) {
        notifyClientsOfServicesStateChange(this.mGlobalClients, uiTimeout);
        notifyClientsOfServicesStateChange(userClients, uiTimeout);
    }

    private void notifyClientsOfServicesStateChange(RemoteCallbackList<IAccessibilityManagerClient> clients, final long uiTimeout) {
        clients.broadcast(FunctionalUtils.ignoreRemoteException(new FunctionalUtils.RemoteExceptionIgnoringConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$sGdMPxvBcGKDALNlLBuP2gGcyp0
            public final void acceptOrThrow(Object obj) {
                ((IAccessibilityManagerClient) obj).notifyServicesStateChanged(uiTimeout);
            }
        }));
    }

    private void scheduleUpdateInputFilter(AccessibilityUserState userState) {
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$NCeV24lEcO5W6ZZr1GqGK-ylU9g
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((AccessibilityManagerService) obj).updateInputFilter((AccessibilityUserState) obj2);
            }
        }, this, userState));
    }

    private void scheduleUpdateFingerprintGestureHandling(AccessibilityUserState userState) {
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$luI_C3QiJWsM08i8m3lx484SyyY
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((AccessibilityManagerService) obj).updateFingerprintGestureHandling((AccessibilityUserState) obj2);
            }
        }, this, userState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInputFilter(AccessibilityUserState userState) {
        if (this.mUiAutomationManager.suppressingAccessibilityServicesLocked()) {
            return;
        }
        boolean setInputFilter = false;
        IInputFilter iInputFilter = null;
        synchronized (this.mLock) {
            int flags = 0;
            if (userState.isDisplayMagnificationEnabledLocked()) {
                flags = 0 | 1;
            }
            if (userState.isShortcutMagnificationEnabledLocked()) {
                flags |= 64;
            }
            if (userHasMagnificationServicesLocked(userState)) {
                flags |= 32;
            }
            if (userState.isHandlingAccessibilityEventsLocked() && userState.isTouchExplorationEnabledLocked()) {
                flags |= 2;
                if (userState.isServiceHandlesDoubleTapEnabledLocked()) {
                    flags |= 128;
                }
                if (userState.isMultiFingerGesturesEnabledLocked()) {
                    flags |= 256;
                }
                if (userState.isTwoFingerPassthroughEnabledLocked()) {
                    flags |= 512;
                }
            }
            if (userState.isFilterKeyEventsEnabledLocked()) {
                flags |= 4;
            }
            if (userState.isAutoclickEnabledLocked()) {
                flags |= 8;
            }
            if (userState.isPerformGesturesEnabledLocked()) {
                flags |= 16;
            }
            if (flags != 0) {
                if (!this.mHasInputFilter) {
                    this.mHasInputFilter = true;
                    if (this.mInputFilter == null) {
                        this.mInputFilter = new AccessibilityInputFilter(this.mContext, this);
                    }
                    iInputFilter = this.mInputFilter;
                    setInputFilter = true;
                }
                this.mInputFilter.setUserAndEnabledFeatures(userState.mUserId, flags);
            } else if (this.mHasInputFilter) {
                this.mHasInputFilter = false;
                this.mInputFilter.setUserAndEnabledFeatures(userState.mUserId, 0);
                iInputFilter = null;
                setInputFilter = true;
            }
        }
        if (setInputFilter) {
            this.mWindowManagerService.setInputFilter(iInputFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showEnableTouchExplorationDialog(final AccessibilityServiceConnection service) {
        synchronized (this.mLock) {
            String label = service.getServiceInfo().getResolveInfo().loadLabel(this.mContext.getPackageManager()).toString();
            final AccessibilityUserState userState = getCurrentUserStateLocked();
            if (userState.isTouchExplorationEnabledLocked()) {
                return;
            }
            if (this.mEnableTouchExplorationDialog == null || !this.mEnableTouchExplorationDialog.isShowing()) {
                AlertDialog alertDialogCreate = new AlertDialog.Builder(this.mContext).setIconAttribute(R.attr.alertDialogIcon).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: com.android.server.accessibility.AccessibilityManagerService.4
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        userState.mTouchExplorationGrantedServices.add(service.mComponentName);
                        AccessibilityManagerService.this.persistComponentNamesToSettingLocked("touch_exploration_granted_accessibility_services", userState.mTouchExplorationGrantedServices, userState.mUserId);
                        userState.setTouchExplorationEnabledLocked(true);
                        long identity = Binder.clearCallingIdentity();
                        try {
                            Settings.Secure.putIntForUser(AccessibilityManagerService.this.mContext.getContentResolver(), "touch_exploration_enabled", 1, userState.mUserId);
                            Binder.restoreCallingIdentity(identity);
                            AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(identity);
                            throw th;
                        }
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.android.server.accessibility.AccessibilityManagerService.3
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                    }
                }).setTitle(R.string.date_time).setMessage(this.mContext.getString(R.string.date_picker_prev_month_button, label)).create();
                this.mEnableTouchExplorationDialog = alertDialogCreate;
                alertDialogCreate.getWindow().setType(2003);
                this.mEnableTouchExplorationDialog.getWindow().getAttributes().privateFlags |= 16;
                this.mEnableTouchExplorationDialog.setCanceledOnTouchOutside(true);
                this.mEnableTouchExplorationDialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserStateChangedLocked(AccessibilityUserState userState) {
        this.mInitialized = true;
        updateLegacyCapabilitiesLocked(userState);
        updateServicesLocked(userState);
        updateWindowsForAccessibilityCallbackLocked(userState);
        updateFilterKeyEventsLocked(userState);
        updateTouchExplorationLocked(userState);
        updatePerformGesturesLocked(userState);
        updateMagnificationLocked(userState);
        scheduleUpdateFingerprintGestureHandling(userState);
        scheduleUpdateInputFilter(userState);
        updateRelevantEventsLocked(userState);
        scheduleUpdateClientsIfNeededLocked(userState);
        updateAccessibilityShortcutKeyTargetsLocked(userState);
        updateAccessibilityButtonTargetsLocked(userState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWindowsForAccessibilityCallbackLocked(AccessibilityUserState userState) {
        boolean observingWindows = this.mUiAutomationManager.canRetrieveInteractiveWindowsLocked();
        List<AccessibilityServiceConnection> boundServices = userState.mBoundServices;
        int boundServiceCount = boundServices.size();
        for (int i = 0; !observingWindows && i < boundServiceCount; i++) {
            AccessibilityServiceConnection boundService = boundServices.get(i);
            if (boundService.canRetrieveInteractiveWindowsLocked()) {
                userState.setAccessibilityFocusOnlyInActiveWindow(false);
                observingWindows = true;
            }
        }
        userState.setAccessibilityFocusOnlyInActiveWindow(true);
        ArrayList<Display> displays = getValidDisplayList();
        for (int i2 = 0; i2 < displays.size(); i2++) {
            Display display = displays.get(i2);
            if (display != null) {
                if (observingWindows) {
                    this.mA11yWindowManager.startTrackingWindows(display.getDisplayId());
                } else {
                    this.mA11yWindowManager.stopTrackingWindows(display.getDisplayId());
                }
            }
        }
    }

    private void updateLegacyCapabilitiesLocked(AccessibilityUserState userState) {
        int installedServiceCount = userState.mInstalledServices.size();
        for (int i = 0; i < installedServiceCount; i++) {
            AccessibilityServiceInfo serviceInfo = userState.mInstalledServices.get(i);
            ResolveInfo resolveInfo = serviceInfo.getResolveInfo();
            if ((serviceInfo.getCapabilities() & 2) == 0 && resolveInfo.serviceInfo.applicationInfo.targetSdkVersion <= 17) {
                ComponentName componentName = new ComponentName(resolveInfo.serviceInfo.packageName, resolveInfo.serviceInfo.name);
                if (userState.mTouchExplorationGrantedServices.contains(componentName)) {
                    serviceInfo.setCapabilities(serviceInfo.getCapabilities() | 2);
                }
            }
        }
    }

    private void updatePerformGesturesLocked(AccessibilityUserState userState) {
        int serviceCount = userState.mBoundServices.size();
        for (int i = 0; i < serviceCount; i++) {
            AccessibilityServiceConnection service = userState.mBoundServices.get(i);
            if ((service.getCapabilities() & 32) != 0) {
                userState.setPerformGesturesEnabledLocked(true);
                return;
            }
        }
        userState.setPerformGesturesEnabledLocked(false);
    }

    private void updateFilterKeyEventsLocked(AccessibilityUserState userState) {
        int serviceCount = userState.mBoundServices.size();
        for (int i = 0; i < serviceCount; i++) {
            AccessibilityServiceConnection service = userState.mBoundServices.get(i);
            if (service.mRequestFilterKeyEvents && (service.getCapabilities() & 8) != 0) {
                userState.setFilterKeyEventsEnabledLocked(true);
                return;
            }
        }
        userState.setFilterKeyEventsEnabledLocked(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readConfigurationForUserStateLocked(AccessibilityUserState userState) {
        boolean somethingChanged = readInstalledAccessibilityServiceLocked(userState);
        return somethingChanged | readInstalledAccessibilityShortcutLocked(userState) | readEnabledAccessibilityServicesLocked(userState) | readTouchExplorationGrantedAccessibilityServicesLocked(userState) | readTouchExplorationEnabledSettingLocked(userState) | readHighTextContrastEnabledSettingLocked(userState) | readMagnificationEnabledSettingsLocked(userState) | readAutoclickEnabledSettingLocked(userState) | readAccessibilityShortcutKeySettingLocked(userState) | readAccessibilityButtonTargetsLocked(userState) | readAccessibilityButtonTargetComponentLocked(userState) | readUserRecommendedUiTimeoutSettingsLocked(userState);
    }

    private void updateAccessibilityEnabledSettingLocked(AccessibilityUserState userState) {
        long identity = Binder.clearCallingIdentity();
        boolean isA11yEnabled = this.mUiAutomationManager.isUiAutomationRunningLocked() || userState.isHandlingAccessibilityEventsLocked();
        try {
            Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "accessibility_enabled", isA11yEnabled ? 1 : 0, userState.mUserId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readTouchExplorationEnabledSettingLocked(AccessibilityUserState userState) {
        boolean touchExplorationEnabled = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "touch_exploration_enabled", 0, userState.mUserId) == 1;
        if (touchExplorationEnabled == userState.isTouchExplorationEnabledLocked()) {
            return false;
        }
        userState.setTouchExplorationEnabledLocked(touchExplorationEnabled);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readMagnificationEnabledSettingsLocked(AccessibilityUserState userState) {
        boolean displayMagnificationEnabled = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_display_magnification_enabled", 0, userState.mUserId) == 1;
        if (displayMagnificationEnabled == userState.isDisplayMagnificationEnabledLocked()) {
            return false;
        }
        userState.setDisplayMagnificationEnabledLocked(displayMagnificationEnabled);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readAutoclickEnabledSettingLocked(AccessibilityUserState userState) {
        boolean autoclickEnabled = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_autoclick_enabled", 0, userState.mUserId) == 1;
        if (autoclickEnabled == userState.isAutoclickEnabledLocked()) {
            return false;
        }
        userState.setAutoclickEnabledLocked(autoclickEnabled);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readHighTextContrastEnabledSettingLocked(AccessibilityUserState userState) {
        boolean highTextContrastEnabled = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "high_text_contrast_enabled", 0, userState.mUserId) == 1;
        if (highTextContrastEnabled == userState.isTextHighContrastEnabledLocked()) {
            return false;
        }
        userState.setTextHighContrastEnabledLocked(highTextContrastEnabled);
        return true;
    }

    private void updateTouchExplorationLocked(AccessibilityUserState userState) {
        boolean touchExplorationEnabled = this.mUiAutomationManager.isTouchExplorationEnabledLocked();
        boolean serviceHandlesDoubleTapEnabled = false;
        boolean requestMultiFingerGestures = false;
        boolean requestTwoFingerPassthrough = false;
        int serviceCount = userState.mBoundServices.size();
        for (int i = 0; i < serviceCount; i++) {
            AccessibilityServiceConnection service = userState.mBoundServices.get(i);
            if (canRequestAndRequestsTouchExplorationLocked(service, userState)) {
                touchExplorationEnabled = true;
                serviceHandlesDoubleTapEnabled = service.isServiceHandlesDoubleTapEnabled();
                requestMultiFingerGestures = service.isMultiFingerGesturesEnabled();
                requestTwoFingerPassthrough = service.isTwoFingerPassthroughEnabled();
                break;
            }
        }
        if (touchExplorationEnabled != userState.isTouchExplorationEnabledLocked()) {
            userState.setTouchExplorationEnabledLocked(touchExplorationEnabled);
            long identity = Binder.clearCallingIdentity();
            try {
                Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "touch_exploration_enabled", touchExplorationEnabled ? 1 : 0, userState.mUserId);
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }
        userState.setServiceHandlesDoubleTapLocked(serviceHandlesDoubleTapEnabled);
        userState.setMultiFingerGesturesLocked(requestMultiFingerGestures);
        userState.setTwoFingerPassthroughLocked(requestTwoFingerPassthrough);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readAccessibilityShortcutKeySettingLocked(AccessibilityUserState userState) {
        String settingValue = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "accessibility_shortcut_target_service", userState.mUserId);
        Set<String> targetsFromSetting = new ArraySet<>();
        readColonDelimitedStringToSet(settingValue, targetsFromSetting, false, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$Gfpf42F-WgaKLjT8H9wQIIdsOHg
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AccessibilityManagerService.lambda$readAccessibilityShortcutKeySettingLocked$9((String) obj);
            }
        });
        if (settingValue == null) {
            String defaultService = this.mContext.getString(R.string.config_defaultWellbeingPackage);
            if (!TextUtils.isEmpty(defaultService)) {
                targetsFromSetting.add(defaultService);
            }
        }
        Set<String> currentTargets = userState.getShortcutTargetsLocked(1);
        if (targetsFromSetting.equals(currentTargets)) {
            return false;
        }
        currentTargets.clear();
        currentTargets.addAll(targetsFromSetting);
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
        return true;
    }

    static /* synthetic */ String lambda$readAccessibilityShortcutKeySettingLocked$9(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readAccessibilityButtonTargetsLocked(AccessibilityUserState userState) {
        Set<String> targetsFromSetting = new ArraySet<>();
        readColonDelimitedSettingToSet("accessibility_button_targets", userState.mUserId, targetsFromSetting, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$eQYUc4U2i8Xl3NCvLKTNFpnxaAo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AccessibilityManagerService.lambda$readAccessibilityButtonTargetsLocked$10((String) obj);
            }
        });
        Set<String> currentTargets = userState.getShortcutTargetsLocked(0);
        if (targetsFromSetting.equals(currentTargets)) {
            return false;
        }
        currentTargets.clear();
        currentTargets.addAll(targetsFromSetting);
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
        return true;
    }

    static /* synthetic */ String lambda$readAccessibilityButtonTargetsLocked$10(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readAccessibilityButtonTargetComponentLocked(AccessibilityUserState userState) {
        String componentId = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "accessibility_button_target_component", userState.mUserId);
        if (TextUtils.isEmpty(componentId)) {
            if (userState.getTargetAssignedToAccessibilityButton() == null) {
                return false;
            }
            userState.setTargetAssignedToAccessibilityButton(null);
            return true;
        }
        if (componentId.equals(userState.getTargetAssignedToAccessibilityButton())) {
            return false;
        }
        userState.setTargetAssignedToAccessibilityButton(componentId);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean readUserRecommendedUiTimeoutSettingsLocked(AccessibilityUserState userState) {
        int nonInteractiveUiTimeout = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_non_interactive_ui_timeout_ms", 0, userState.mUserId);
        int interactiveUiTimeout = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_interactive_ui_timeout_ms", 0, userState.mUserId);
        if (nonInteractiveUiTimeout == userState.getUserNonInteractiveUiTimeoutLocked() && interactiveUiTimeout == userState.getUserInteractiveUiTimeoutLocked()) {
            return false;
        }
        userState.setUserNonInteractiveUiTimeoutLocked(nonInteractiveUiTimeout);
        userState.setUserInteractiveUiTimeoutLocked(interactiveUiTimeout);
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
        return true;
    }

    private void updateAccessibilityShortcutKeyTargetsLocked(final AccessibilityUserState userState) {
        ArraySet<String> shortcutTargetsLocked = userState.getShortcutTargetsLocked(1);
        int lastSize = shortcutTargetsLocked.size();
        if (lastSize == 0) {
            return;
        }
        shortcutTargetsLocked.removeIf(new Predicate() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$hFXGzgE7_VsXwOxnttp-rxyJY9U
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AccessibilityManagerService.lambda$updateAccessibilityShortcutKeyTargetsLocked$11(userState, (String) obj);
            }
        });
        if (lastSize == shortcutTargetsLocked.size()) {
            return;
        }
        persistColonDelimitedSetToSettingLocked("accessibility_shortcut_target_service", userState.mUserId, shortcutTargetsLocked, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$MhnuCBpuqBWYiFc16BnfACa9EFI
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AccessibilityManagerService.lambda$updateAccessibilityShortcutKeyTargetsLocked$12((String) obj);
            }
        });
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
    }

    static /* synthetic */ boolean lambda$updateAccessibilityShortcutKeyTargetsLocked$11(AccessibilityUserState userState, String name) {
        return !userState.isShortcutTargetInstalledLocked(name);
    }

    static /* synthetic */ String lambda$updateAccessibilityShortcutKeyTargetsLocked$12(String str) {
        return str;
    }

    private boolean canRequestAndRequestsTouchExplorationLocked(AccessibilityServiceConnection service, AccessibilityUserState userState) {
        if (!service.canReceiveEventsLocked() || !service.mRequestTouchExplorationMode) {
            return false;
        }
        if (service.getServiceInfo().getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion <= 17) {
            if (userState.mTouchExplorationGrantedServices.contains(service.mComponentName)) {
                return true;
            }
            AlertDialog alertDialog = this.mEnableTouchExplorationDialog;
            if (alertDialog == null || !alertDialog.isShowing()) {
                this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ((AccessibilityManagerService) obj).showEnableTouchExplorationDialog((AccessibilityServiceConnection) obj2);
                    }
                }, this, service));
            }
        } else if ((service.getCapabilities() & 2) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMagnificationLocked(AccessibilityUserState userState) {
        MagnificationController magnificationController;
        if (userState.mUserId != this.mCurrentUserId) {
            return;
        }
        MagnificationController magnificationController2 = this.mMagnificationController;
        if (magnificationController2 != null) {
            magnificationController2.setUserId(userState.mUserId);
        }
        if (this.mUiAutomationManager.suppressingAccessibilityServicesLocked() && (magnificationController = this.mMagnificationController) != null) {
            magnificationController.unregisterAll();
            return;
        }
        ArrayList<Display> displays = getValidDisplayList();
        if (userState.isDisplayMagnificationEnabledLocked() || userState.isShortcutMagnificationEnabledLocked()) {
            for (int i = 0; i < displays.size(); i++) {
                Display display = displays.get(i);
                getMagnificationController().register(display.getDisplayId());
            }
            return;
        }
        for (int i2 = 0; i2 < displays.size(); i2++) {
            Display display2 = displays.get(i2);
            int displayId = display2.getDisplayId();
            if (userHasListeningMagnificationServicesLocked(userState, displayId)) {
                getMagnificationController().register(displayId);
            } else {
                MagnificationController magnificationController3 = this.mMagnificationController;
                if (magnificationController3 != null) {
                    magnificationController3.unregister(displayId);
                }
            }
        }
    }

    private boolean userHasMagnificationServicesLocked(AccessibilityUserState userState) {
        List<AccessibilityServiceConnection> services = userState.mBoundServices;
        int count = services.size();
        for (int i = 0; i < count; i++) {
            AccessibilityServiceConnection service = services.get(i);
            if (this.mSecurityPolicy.canControlMagnification(service)) {
                return true;
            }
        }
        return false;
    }

    private boolean userHasListeningMagnificationServicesLocked(AccessibilityUserState userState, int displayId) {
        List<AccessibilityServiceConnection> services = userState.mBoundServices;
        int count = services.size();
        for (int i = 0; i < count; i++) {
            AccessibilityServiceConnection service = services.get(i);
            if (this.mSecurityPolicy.canControlMagnification(service) && service.isMagnificationCallbackEnabled(displayId)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFingerprintGestureHandling(AccessibilityUserState userState) {
        List<AccessibilityServiceConnection> services;
        synchronized (this.mLock) {
            services = userState.mBoundServices;
            if (this.mFingerprintGestureDispatcher == null && this.mPackageManager.hasSystemFeature("android.hardware.fingerprint")) {
                int numServices = services.size();
                for (int i = 0; i < numServices; i++) {
                    if (services.get(i).isCapturingFingerprintGestures()) {
                        long identity = Binder.clearCallingIdentity();
                        try {
                            IFingerprintService service = IFingerprintService.Stub.asInterface(ServiceManager.getService("fingerprint"));
                            Binder.restoreCallingIdentity(identity);
                            if (service != null) {
                                this.mFingerprintGestureDispatcher = new FingerprintGestureDispatcher(service, this.mContext.getResources(), this.mLock);
                                break;
                            }
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(identity);
                            throw th;
                        }
                    }
                }
            }
        }
        FingerprintGestureDispatcher fingerprintGestureDispatcher = this.mFingerprintGestureDispatcher;
        if (fingerprintGestureDispatcher != null) {
            fingerprintGestureDispatcher.updateClientList(services);
        }
    }

    private void updateAccessibilityButtonTargetsLocked(final AccessibilityUserState userState) {
        for (int i = userState.mBoundServices.size() - 1; i >= 0; i--) {
            AccessibilityServiceConnection service = userState.mBoundServices.get(i);
            if (service.mRequestAccessibilityButton) {
                service.notifyAccessibilityButtonAvailabilityChangedLocked(service.isAccessibilityButtonAvailableLocked(userState));
            }
        }
        ArraySet<String> shortcutTargetsLocked = userState.getShortcutTargetsLocked(0);
        int lastSize = shortcutTargetsLocked.size();
        if (lastSize == 0) {
            return;
        }
        shortcutTargetsLocked.removeIf(new Predicate() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$GUp_mA8vmiAcg0R2-X_abqkp5m8
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AccessibilityManagerService.lambda$updateAccessibilityButtonTargetsLocked$13(userState, (String) obj);
            }
        });
        if (lastSize == shortcutTargetsLocked.size()) {
            return;
        }
        persistColonDelimitedSetToSettingLocked("accessibility_button_targets", userState.mUserId, shortcutTargetsLocked, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$rnbNCQJtFw_uMhQIrym3WuAg2Gc
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AccessibilityManagerService.lambda$updateAccessibilityButtonTargetsLocked$14((String) obj);
            }
        });
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
    }

    static /* synthetic */ boolean lambda$updateAccessibilityButtonTargetsLocked$13(AccessibilityUserState userState, String name) {
        return !userState.isShortcutTargetInstalledLocked(name);
    }

    static /* synthetic */ String lambda$updateAccessibilityButtonTargetsLocked$14(String str) {
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void migrateAccessibilityButtonSettingsIfNecessaryLocked(final AccessibilityUserState userState, final String packageName) {
        final ArraySet<String> shortcutTargetsLocked = userState.getShortcutTargetsLocked(0);
        int lastSize = shortcutTargetsLocked.size();
        shortcutTargetsLocked.removeIf(new Predicate() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$qMRX_NUgMKPJgFkUHbwhO0kqGYQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AccessibilityManagerService.lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$15(packageName, userState, (String) obj);
            }
        });
        boolean changed = lastSize != shortcutTargetsLocked.size();
        int lastSize2 = shortcutTargetsLocked.size();
        final Set<String> shortcutKeyTargets = userState.getShortcutTargetsLocked(1);
        userState.mEnabledServices.forEach(new Consumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$-bTcOt6lEs3SZ7qHMklsaQbaIGM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AccessibilityManagerService.lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$16(packageName, userState, shortcutTargetsLocked, shortcutKeyTargets, (ComponentName) obj);
            }
        });
        if (!((lastSize2 != shortcutTargetsLocked.size()) | changed)) {
            return;
        }
        persistColonDelimitedSetToSettingLocked("accessibility_button_targets", userState.mUserId, shortcutTargetsLocked, new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$izifS7Le9TQuxSikL_j2KI9n6Jo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AccessibilityManagerService.lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$17((String) obj);
            }
        });
        scheduleNotifyClientsOfServicesStateChangeLocked(userState);
    }

    static /* synthetic */ boolean lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$15(String packageName, AccessibilityUserState userState, String name) {
        ComponentName componentName;
        AccessibilityServiceInfo serviceInfo;
        if ((packageName != null && name != null && !name.contains(packageName)) || (componentName = ComponentName.unflattenFromString(name)) == null || (serviceInfo = userState.getInstalledServiceInfoLocked(componentName)) == null) {
            return false;
        }
        if (serviceInfo.getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion <= 29) {
            Slog.v(LOG_TAG, "Legacy service " + componentName + " should not in the button");
            return true;
        }
        boolean requestA11yButton = (serviceInfo.flags & 256) != 0;
        if (!requestA11yButton || userState.mEnabledServices.contains(componentName)) {
            return false;
        }
        Slog.v(LOG_TAG, "Service requesting a11y button and be assigned to the button" + componentName + " should be enabled state");
        return true;
    }

    static /* synthetic */ void lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$16(String packageName, AccessibilityUserState userState, Set buttonTargets, Set shortcutKeyTargets, ComponentName componentName) {
        AccessibilityServiceInfo serviceInfo;
        if ((packageName != null && componentName != null && !packageName.equals(componentName.getPackageName())) || (serviceInfo = userState.getInstalledServiceInfoLocked(componentName)) == null) {
            return;
        }
        boolean requestA11yButton = (serviceInfo.flags & 256) != 0;
        if (serviceInfo.getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion <= 29 || !requestA11yButton) {
            return;
        }
        String serviceName = componentName.flattenToString();
        if (TextUtils.isEmpty(serviceName) || AccessibilityUserState.doesShortcutTargetsStringContain(buttonTargets, serviceName) || AccessibilityUserState.doesShortcutTargetsStringContain(shortcutKeyTargets, serviceName)) {
            return;
        }
        Slog.v(LOG_TAG, "A enabled service requesting a11y button " + componentName + " should be assign to the button or shortcut.");
        buttonTargets.add(serviceName);
    }

    static /* synthetic */ String lambda$migrateAccessibilityButtonSettingsIfNecessaryLocked$17(String str) {
        return str;
    }

    private void removeShortcutTargetForUnboundServiceLocked(AccessibilityUserState userState, AccessibilityServiceConnection service) {
        if (!service.mRequestAccessibilityButton || service.getServiceInfo().getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion <= 29) {
            return;
        }
        ComponentName serviceName = service.getComponentName();
        if (userState.removeShortcutTargetLocked(1, serviceName)) {
            persistColonDelimitedSetToSettingLocked("accessibility_shortcut_target_service", userState.mUserId, userState.getShortcutTargetsLocked(1), new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$Dr0UZNY6LcWGU-_qkFYs5k2BcRI
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AccessibilityManagerService.lambda$removeShortcutTargetForUnboundServiceLocked$18((String) obj);
                }
            });
        }
        if (userState.removeShortcutTargetLocked(0, serviceName)) {
            persistColonDelimitedSetToSettingLocked("accessibility_button_targets", userState.mUserId, userState.getShortcutTargetsLocked(0), new Function() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return AccessibilityManagerService.lambda$removeShortcutTargetForUnboundServiceLocked$19((String) obj);
                }
            });
        }
    }

    static /* synthetic */ String lambda$removeShortcutTargetForUnboundServiceLocked$18(String str) {
        return str;
    }

    static /* synthetic */ String lambda$removeShortcutTargetForUnboundServiceLocked$19(String str) {
        return str;
    }

    private void updateRecommendedUiTimeoutLocked(AccessibilityUserState userState) {
        int newNonInteractiveUiTimeout = userState.getUserNonInteractiveUiTimeoutLocked();
        int newInteractiveUiTimeout = userState.getUserInteractiveUiTimeoutLocked();
        if (newNonInteractiveUiTimeout == 0 || newInteractiveUiTimeout == 0) {
            int serviceNonInteractiveUiTimeout = 0;
            int serviceInteractiveUiTimeout = 0;
            List<AccessibilityServiceConnection> services = userState.mBoundServices;
            for (int i = 0; i < services.size(); i++) {
                int timeout = services.get(i).getServiceInfo().getInteractiveUiTimeoutMillis();
                if (serviceInteractiveUiTimeout < timeout) {
                    serviceInteractiveUiTimeout = timeout;
                }
                int timeout2 = services.get(i).getServiceInfo().getNonInteractiveUiTimeoutMillis();
                if (serviceNonInteractiveUiTimeout < timeout2) {
                    serviceNonInteractiveUiTimeout = timeout2;
                }
            }
            if (newNonInteractiveUiTimeout == 0) {
                newNonInteractiveUiTimeout = serviceNonInteractiveUiTimeout;
            }
            if (newInteractiveUiTimeout == 0) {
                newInteractiveUiTimeout = serviceInteractiveUiTimeout;
            }
        }
        userState.setNonInteractiveUiTimeoutLocked(newNonInteractiveUiTimeout);
        userState.setInteractiveUiTimeoutLocked(newInteractiveUiTimeout);
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public MagnificationSpec getCompatibleMagnificationSpecLocked(int windowId) {
        IBinder windowToken = this.mA11yWindowManager.getWindowTokenForUserAndWindowIdLocked(this.mCurrentUserId, windowId);
        if (windowToken != null) {
            return this.mWindowManagerService.getCompatibleMagnificationSpecForWindow(windowToken);
        }
        return null;
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public KeyEventDispatcher getKeyEventDispatcher() {
        if (this.mKeyEventDispatcher == null) {
            this.mKeyEventDispatcher = new KeyEventDispatcher(this.mMainHandler, 8, this.mLock, this.mPowerManager);
        }
        return this.mKeyEventDispatcher;
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public PendingIntent getPendingIntentActivity(Context context, int requestCode, Intent intent, int flags) {
        return PendingIntent.getActivity(context, requestCode, intent, flags);
    }

    public void performAccessibilityShortcut(String targetName) {
        if (UserHandle.getAppId(Binder.getCallingUid()) != 1000 && this.mContext.checkCallingPermission("android.permission.MANAGE_ACCESSIBILITY") != 0) {
            throw new SecurityException("performAccessibilityShortcut requires the MANAGE_ACCESSIBILITY permission");
        }
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AccessibilityManagerService$eskhivxnBVBZCLZ0d5oWdhYVtfs.INSTANCE, this, 0, 1, targetName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performAccessibilityShortcutInternal(int displayId, int shortcutType, String targetName) {
        List<String> shortcutTargets = getAccessibilityShortcutTargetsInternal(shortcutType);
        if (shortcutTargets.isEmpty()) {
            Slog.d(LOG_TAG, "No target to perform shortcut, shortcutType=" + shortcutType);
            return;
        }
        if (targetName != null && !AccessibilityUserState.doesShortcutTargetsStringContain(shortcutTargets, targetName)) {
            Slog.v(LOG_TAG, "Perform shortcut failed, invalid target name:" + targetName);
            targetName = null;
        }
        if (targetName == null) {
            if (shortcutTargets.size() > 1) {
                showAccessibilityTargetsSelection(displayId, shortcutType);
                return;
            }
            targetName = shortcutTargets.get(0);
        }
        if (targetName.equals("com.android.server.accessibility.MagnificationController")) {
            boolean enabled = !getMagnificationController().isMagnifying(displayId);
            AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(AccessibilityShortcutController.MAGNIFICATION_COMPONENT_NAME, shortcutType, enabled);
            sendAccessibilityButtonToInputFilter(displayId);
            return;
        }
        ComponentName targetComponentName = ComponentName.unflattenFromString(targetName);
        if (targetComponentName == null) {
            Slog.d(LOG_TAG, "Perform shortcut failed, invalid target name:" + targetName);
            return;
        }
        if (performAccessibilityFrameworkFeature(targetComponentName, shortcutType)) {
            return;
        }
        if (performAccessibilityShortcutTargetActivity(displayId, targetComponentName)) {
            AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(targetComponentName, shortcutType);
        } else if (performAccessibilityShortcutTargetService(displayId, shortcutType, targetComponentName)) {
        }
    }

    private boolean performAccessibilityFrameworkFeature(ComponentName assignedTarget, int shortcutType) {
        Map<ComponentName, AccessibilityShortcutController.ToggleableFrameworkFeatureInfo> frameworkFeatureMap = AccessibilityShortcutController.getFrameworkShortcutFeaturesMap();
        if (!frameworkFeatureMap.containsKey(assignedTarget)) {
            return false;
        }
        AccessibilityShortcutController.ToggleableFrameworkFeatureInfo featureInfo = frameworkFeatureMap.get(assignedTarget);
        SettingsStringUtil.SettingStringHelper setting = new SettingsStringUtil.SettingStringHelper(this.mContext.getContentResolver(), featureInfo.getSettingKey(), this.mCurrentUserId);
        if (!TextUtils.equals(featureInfo.getSettingOnValue(), setting.read())) {
            AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(assignedTarget, shortcutType, true);
            setting.write(featureInfo.getSettingOnValue());
        } else {
            AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(assignedTarget, shortcutType, false);
            setting.write(featureInfo.getSettingOffValue());
        }
        return true;
    }

    private boolean performAccessibilityShortcutTargetActivity(int displayId, ComponentName assignedTarget) {
        synchronized (this.mLock) {
            AccessibilityUserState userState = getCurrentUserStateLocked();
            for (int i = 0; i < userState.mInstalledShortcuts.size(); i++) {
                AccessibilityShortcutInfo shortcutInfo = userState.mInstalledShortcuts.get(i);
                if (shortcutInfo.getComponentName().equals(assignedTarget)) {
                    launchShortcutTargetActivity(displayId, assignedTarget);
                    return true;
                }
            }
            return false;
        }
    }

    private boolean performAccessibilityShortcutTargetService(int displayId, int shortcutType, ComponentName assignedTarget) {
        synchronized (this.mLock) {
            AccessibilityUserState userState = getCurrentUserStateLocked();
            AccessibilityServiceInfo installedServiceInfo = userState.getInstalledServiceInfoLocked(assignedTarget);
            if (installedServiceInfo == null) {
                Slog.d(LOG_TAG, "Perform shortcut failed, invalid component name:" + assignedTarget);
                return false;
            }
            AccessibilityServiceConnection serviceConnection = userState.getServiceConnectionLocked(assignedTarget);
            int targetSdk = installedServiceInfo.getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion;
            boolean requestA11yButton = (installedServiceInfo.flags & 256) != 0;
            if ((targetSdk <= 29 && shortcutType == 1) || (targetSdk > 29 && !requestA11yButton)) {
                if (serviceConnection == null) {
                    AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(assignedTarget, shortcutType, true);
                    enableAccessibilityServiceLocked(assignedTarget, this.mCurrentUserId);
                } else {
                    AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(assignedTarget, shortcutType, false);
                    disableAccessibilityServiceLocked(assignedTarget, this.mCurrentUserId);
                }
                return true;
            }
            if (shortcutType == 1 && targetSdk > 29 && requestA11yButton && !userState.getEnabledServicesLocked().contains(assignedTarget)) {
                enableAccessibilityServiceLocked(assignedTarget, this.mCurrentUserId);
                return true;
            }
            if (serviceConnection != null && userState.mBoundServices.contains(serviceConnection) && serviceConnection.mRequestAccessibilityButton) {
                AccessibilityStatsLogUtils.logAccessibilityShortcutActivated(assignedTarget, shortcutType, true);
                serviceConnection.notifyAccessibilityButtonClickedLocked(displayId);
                return true;
            }
            Slog.d(LOG_TAG, "Perform shortcut failed, service is not ready:" + assignedTarget);
            return false;
        }
    }

    public List<String> getAccessibilityShortcutTargets(int shortcutType) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.MANAGE_ACCESSIBILITY") != 0) {
            throw new SecurityException("getAccessibilityShortcutService requires the MANAGE_ACCESSIBILITY permission");
        }
        return getAccessibilityShortcutTargetsInternal(shortcutType);
    }

    private List<String> getAccessibilityShortcutTargetsInternal(int shortcutType) {
        synchronized (this.mLock) {
            AccessibilityUserState userState = getCurrentUserStateLocked();
            ArrayList<String> shortcutTargets = new ArrayList<>(userState.getShortcutTargetsLocked(shortcutType));
            if (shortcutType != 0) {
                return shortcutTargets;
            }
            for (int i = userState.mBoundServices.size() - 1; i >= 0; i--) {
                AccessibilityServiceConnection service = userState.mBoundServices.get(i);
                if (service.mRequestAccessibilityButton && service.getServiceInfo().getResolveInfo().serviceInfo.applicationInfo.targetSdkVersion <= 29) {
                    String serviceName = service.getComponentName().flattenToString();
                    if (!TextUtils.isEmpty(serviceName)) {
                        shortcutTargets.add(serviceName);
                    }
                }
            }
            return shortcutTargets;
        }
    }

    private void enableAccessibilityServiceLocked(ComponentName componentName, int userId) {
        this.mTempComponentNameSet.clear();
        readComponentNamesFromSettingLocked("enabled_accessibility_services", userId, this.mTempComponentNameSet);
        this.mTempComponentNameSet.add(componentName);
        persistComponentNamesToSettingLocked("enabled_accessibility_services", this.mTempComponentNameSet, userId);
        AccessibilityUserState userState = getUserStateLocked(userId);
        if (userState.mEnabledServices.add(componentName)) {
            onUserStateChangedLocked(userState);
        }
    }

    private void disableAccessibilityServiceLocked(ComponentName componentName, int userId) {
        this.mTempComponentNameSet.clear();
        readComponentNamesFromSettingLocked("enabled_accessibility_services", userId, this.mTempComponentNameSet);
        this.mTempComponentNameSet.remove(componentName);
        persistComponentNamesToSettingLocked("enabled_accessibility_services", this.mTempComponentNameSet, userId);
        AccessibilityUserState userState = getUserStateLocked(userId);
        if (userState.mEnabledServices.remove(componentName)) {
            onUserStateChangedLocked(userState);
        }
    }

    @Override // com.android.server.accessibility.AccessibilityWindowManager.AccessibilityEventSender
    public void sendAccessibilityEventForCurrentUserLocked(AccessibilityEvent event) {
        sendAccessibilityEventLocked(event, this.mCurrentUserId);
    }

    private void sendAccessibilityEventLocked(AccessibilityEvent event, int userId) {
        event.setEventTime(SystemClock.uptimeMillis());
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.accessibility.-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((AccessibilityManagerService) obj).sendAccessibilityEvent((AccessibilityEvent) obj2, ((Integer) obj3).intValue());
            }
        }, this, event, Integer.valueOf(userId)));
    }

    public boolean sendFingerprintGesture(int gestureKeyCode) {
        synchronized (this.mLock) {
            if (UserHandle.getAppId(Binder.getCallingUid()) != 1000) {
                throw new SecurityException("Only SYSTEM can call sendFingerprintGesture");
            }
        }
        FingerprintGestureDispatcher fingerprintGestureDispatcher = this.mFingerprintGestureDispatcher;
        if (fingerprintGestureDispatcher == null) {
            return false;
        }
        return fingerprintGestureDispatcher.onFingerprintGesture(gestureKeyCode);
    }

    public int getAccessibilityWindowId(IBinder windowToken) {
        int iFindWindowIdLocked;
        synchronized (this.mLock) {
            if (UserHandle.getAppId(Binder.getCallingUid()) != 1000) {
                throw new SecurityException("Only SYSTEM can call getAccessibilityWindowId");
            }
            iFindWindowIdLocked = this.mA11yWindowManager.findWindowIdLocked(this.mCurrentUserId, windowToken);
        }
        return iFindWindowIdLocked;
    }

    public long getRecommendedTimeoutMillis() {
        long recommendedTimeoutMillisLocked;
        synchronized (this.mLock) {
            AccessibilityUserState userState = getCurrentUserStateLocked();
            recommendedTimeoutMillisLocked = getRecommendedTimeoutMillisLocked(userState);
        }
        return recommendedTimeoutMillisLocked;
    }

    private long getRecommendedTimeoutMillisLocked(AccessibilityUserState userState) {
        return IntPair.of(userState.getInteractiveUiTimeoutLocked(), userState.getNonInteractiveUiTimeoutLocked());
    }

    public void setWindowMagnificationConnection(IWindowMagnificationConnection connection) throws RemoteException {
        this.mSecurityPolicy.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE");
        getWindowMagnificationMgr().setConnection(connection);
    }

    WindowMagnificationManager getWindowMagnificationMgr() {
        WindowMagnificationManager windowMagnificationManager;
        synchronized (this.mLock) {
            if (this.mWindowMagnificationMgr == null) {
                this.mWindowMagnificationMgr = new WindowMagnificationManager();
            }
            windowMagnificationManager = this.mWindowMagnificationMgr;
        }
        return windowMagnificationManager;
    }

    public void associateEmbeddedHierarchy(IBinder host, IBinder embedded) {
        synchronized (this.mLock) {
            this.mA11yWindowManager.associateEmbeddedHierarchyLocked(host, embedded);
        }
    }

    public void disassociateEmbeddedHierarchy(IBinder token) {
        synchronized (this.mLock) {
            this.mA11yWindowManager.disassociateEmbeddedHierarchyLocked(token);
        }
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, LOG_TAG, pw)) {
            synchronized (this.mLock) {
                pw.println("ACCESSIBILITY MANAGER (dumpsys accessibility)");
                pw.println();
                pw.append("currentUserId=").append((CharSequence) String.valueOf(this.mCurrentUserId));
                pw.println();
                int userCount = this.mUserStates.size();
                for (int i = 0; i < userCount; i++) {
                    this.mUserStates.valueAt(i).dump(fd, pw, args);
                }
                if (this.mUiAutomationManager.isUiAutomationRunningLocked()) {
                    this.mUiAutomationManager.dumpUiAutomationService(fd, pw, args);
                    pw.println();
                }
                this.mA11yWindowManager.dump(fd, pw, args);
            }
        }
    }

    final class MainHandler extends Handler {
        public static final int MSG_SEND_KEY_EVENT_TO_INPUT_FILTER = 8;

        public MainHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 8) {
                KeyEvent event = (KeyEvent) msg.obj;
                int policyFlags = msg.arg1;
                synchronized (AccessibilityManagerService.this.mLock) {
                    if (AccessibilityManagerService.this.mHasInputFilter && AccessibilityManagerService.this.mInputFilter != null) {
                        AccessibilityManagerService.this.mInputFilter.sendInputEvent(event, policyFlags);
                    }
                }
                event.recycle();
            }
        }
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public MagnificationController getMagnificationController() {
        MagnificationController magnificationController;
        synchronized (this.mLock) {
            if (this.mMagnificationController == null) {
                MagnificationController magnificationController2 = new MagnificationController(this.mContext, this, this.mLock);
                this.mMagnificationController = magnificationController2;
                magnificationController2.setUserId(this.mCurrentUserId);
            }
            magnificationController = this.mMagnificationController;
        }
        return magnificationController;
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public void onClientChangeLocked(boolean serviceInfoChanged) {
        AccessibilityUserState userState = getUserStateLocked(this.mCurrentUserId);
        onUserStateChangedLocked(userState);
        if (serviceInfoChanged) {
            scheduleNotifyClientsOfServicesStateChangeLocked(userState);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new AccessibilityShellCommand(this, this.mSystemActionPerformer).exec(this, in, out, err, args, callback, resultReceiver);
    }

    private final class InteractionBridge {
        private final ComponentName COMPONENT_NAME = new ComponentName("com.android.server.accessibility", "InteractionBridge");
        private final AccessibilityInteractionClient mClient;
        private final int mConnectionId;
        private final Display mDefaultDisplay;

        /* JADX WARN: Bottom block not found for handler: all -> 0x009a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InteractionBridge() throws java.lang.Throwable {
            /*
                r20 = this;
                r15 = r20
                r0 = r21
                com.android.server.accessibility.AccessibilityManagerService.this = r0
                r20.<init>()
                android.content.ComponentName r1 = new android.content.ComponentName
                java.lang.String r2 = "com.android.server.accessibility"
                java.lang.String r3 = "InteractionBridge"
                r1.<init>(r2, r3)
                r15.COMPONENT_NAME = r1
                android.accessibilityservice.AccessibilityServiceInfo r1 = new android.accessibilityservice.AccessibilityServiceInfo
                r1.<init>()
                r14 = r1
                r1 = 1
                r14.setCapabilities(r1)
                int r1 = r14.flags
                r1 = r1 | 64
                r14.flags = r1
                int r1 = r14.flags
                r1 = r1 | 2
                r14.flags = r1
                java.lang.Object r1 = com.android.server.accessibility.AccessibilityManagerService.access$100(r21)
                monitor-enter(r1)
                com.android.server.accessibility.AccessibilityUserState r3 = com.android.server.accessibility.AccessibilityManagerService.access$300(r21)     // Catch: java.lang.Throwable -> L94
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L94
                com.android.server.accessibility.AccessibilityManagerService$InteractionBridge$1 r17 = new com.android.server.accessibility.AccessibilityManagerService$InteractionBridge$1
                android.content.Context r4 = com.android.server.accessibility.AccessibilityManagerService.access$1300(r21)
                android.content.ComponentName r5 = r15.COMPONENT_NAME
                int r7 = com.android.server.accessibility.AccessibilityManagerService.access$1608()
                com.android.server.accessibility.AccessibilityManagerService$MainHandler r8 = com.android.server.accessibility.AccessibilityManagerService.access$1700(r21)
                java.lang.Object r9 = com.android.server.accessibility.AccessibilityManagerService.access$100(r21)
                com.android.server.accessibility.AccessibilitySecurityPolicy r10 = com.android.server.accessibility.AccessibilityManagerService.access$1800(r21)
                com.android.server.wm.WindowManagerInternal r12 = com.android.server.accessibility.AccessibilityManagerService.access$1900(r21)
                com.android.server.accessibility.SystemActionPerformer r13 = com.android.server.accessibility.AccessibilityManagerService.access$2000(r21)
                com.android.server.accessibility.AccessibilityWindowManager r16 = com.android.server.accessibility.AccessibilityManagerService.access$2100(r21)
                com.android.server.wm.ActivityTaskManagerInternal r18 = com.android.server.accessibility.AccessibilityManagerService.access$2200(r21)
                r1 = r17
                r2 = r20
                r6 = r14
                r11 = r21
                r19 = r14
                r14 = r16
                r15 = r18
                r16 = r21
                r1.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
                int r2 = r1.mId
                r4 = r20
                r4.mConnectionId = r2
                android.view.accessibility.AccessibilityInteractionClient r2 = android.view.accessibility.AccessibilityInteractionClient.getInstance()
                r4.mClient = r2
                int r2 = r4.mConnectionId
                android.view.accessibility.AccessibilityInteractionClient.addConnection(r2, r1)
                android.content.Context r0 = com.android.server.accessibility.AccessibilityManagerService.access$1300(r21)
                java.lang.String r2 = "display"
                java.lang.Object r0 = r0.getSystemService(r2)
                android.hardware.display.DisplayManager r0 = (android.hardware.display.DisplayManager) r0
                r2 = 0
                android.view.Display r2 = r0.getDisplay(r2)
                r4.mDefaultDisplay = r2
                return
            L94:
                r0 = move-exception
                r19 = r14
                r4 = r15
            L98:
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L9a
                throw r0
            L9a:
                r0 = move-exception
                goto L98
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.accessibility.AccessibilityManagerService.InteractionBridge.<init>(com.android.server.accessibility.AccessibilityManagerService):void");
        }

        boolean getAccessibilityFocusClickPointInScreen(Point outPoint) {
            return AccessibilityManagerService.this.getInteractionBridge().getAccessibilityFocusClickPointInScreenNotLocked(outPoint);
        }

        public boolean performActionOnAccessibilityFocusedItemNotLocked(AccessibilityNodeInfo.AccessibilityAction action) {
            AccessibilityNodeInfo focus = getAccessibilityFocusNotLocked();
            if (focus == null || !focus.getActionList().contains(action)) {
                return false;
            }
            return focus.performAction(action.getId());
        }

        public boolean getAccessibilityFocusClickPointInScreenNotLocked(Point outPoint) {
            AccessibilityNodeInfo focus = getAccessibilityFocusNotLocked();
            if (focus != null) {
                synchronized (AccessibilityManagerService.this.mLock) {
                    Rect boundsInScreen = AccessibilityManagerService.this.mTempRect;
                    focus.getBoundsInScreen(boundsInScreen);
                    MagnificationSpec spec = AccessibilityManagerService.this.getCompatibleMagnificationSpecLocked(focus.getWindowId());
                    if (spec != null && !spec.isNop()) {
                        boundsInScreen.offset((int) (-spec.offsetX), (int) (-spec.offsetY));
                        boundsInScreen.scale(1.0f / spec.scale);
                    }
                    Rect windowBounds = AccessibilityManagerService.this.mTempRect1;
                    AccessibilityManagerService.this.getWindowBounds(focus.getWindowId(), windowBounds);
                    if (boundsInScreen.intersect(windowBounds)) {
                        Point screenSize = AccessibilityManagerService.this.mTempPoint;
                        this.mDefaultDisplay.getRealSize(screenSize);
                        if (!boundsInScreen.intersect(0, 0, screenSize.x, screenSize.y)) {
                            return false;
                        }
                        outPoint.set(boundsInScreen.centerX(), boundsInScreen.centerY());
                        return true;
                    }
                    return false;
                }
            }
            return false;
        }

        private AccessibilityNodeInfo getAccessibilityFocusNotLocked() {
            synchronized (AccessibilityManagerService.this.mLock) {
                int focusedWindowId = AccessibilityManagerService.this.mA11yWindowManager.getFocusedWindowId(2);
                if (focusedWindowId == -1) {
                    return null;
                }
                return getAccessibilityFocusNotLocked(focusedWindowId);
            }
        }

        private AccessibilityNodeInfo getAccessibilityFocusNotLocked(int windowId) {
            return this.mClient.findFocus(this.mConnectionId, windowId, AccessibilityNodeInfo.ROOT_NODE_ID, 2);
        }
    }

    public ArrayList<Display> getValidDisplayList() {
        return this.mA11yDisplayListener.getValidDisplayList();
    }

    public class AccessibilityDisplayListener implements DisplayManager.DisplayListener {
        private final DisplayManager mDisplayManager;
        private final ArrayList<Display> mDisplaysList = new ArrayList<>();
        private int mSystemUiUid;

        AccessibilityDisplayListener(Context context, MainHandler handler) {
            this.mSystemUiUid = 0;
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            this.mDisplayManager = displayManager;
            displayManager.registerDisplayListener(this, handler);
            initializeDisplayList();
            PackageManagerInternal pm = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
            if (pm != null) {
                this.mSystemUiUid = pm.getPackageUid(pm.getSystemUiServiceComponent().getPackageName(), 1048576, AccessibilityManagerService.this.mCurrentUserId);
            }
        }

        ArrayList<Display> getValidDisplayList() {
            ArrayList<Display> arrayList;
            synchronized (AccessibilityManagerService.this.mLock) {
                arrayList = this.mDisplaysList;
            }
            return arrayList;
        }

        private void initializeDisplayList() {
            Display[] displays = this.mDisplayManager.getDisplays();
            synchronized (AccessibilityManagerService.this.mLock) {
                this.mDisplaysList.clear();
                for (Display display : displays) {
                    if (isValidDisplay(display)) {
                        this.mDisplaysList.add(display);
                    }
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int displayId) {
            Display display = this.mDisplayManager.getDisplay(displayId);
            if (isValidDisplay(display)) {
                synchronized (AccessibilityManagerService.this.mLock) {
                    this.mDisplaysList.add(display);
                    if (AccessibilityManagerService.this.mInputFilter != null) {
                        AccessibilityManagerService.this.mInputFilter.onDisplayChanged();
                    }
                    AccessibilityUserState userState = AccessibilityManagerService.this.getCurrentUserStateLocked();
                    if (displayId != 0) {
                        List<AccessibilityServiceConnection> services = userState.mBoundServices;
                        for (int i = 0; i < services.size(); i++) {
                            AccessibilityServiceConnection boundClient = services.get(i);
                            boundClient.onDisplayAdded(displayId);
                        }
                    }
                    AccessibilityManagerService.this.updateMagnificationLocked(userState);
                    AccessibilityManagerService.this.updateWindowsForAccessibilityCallbackLocked(userState);
                }
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int displayId) {
            synchronized (AccessibilityManagerService.this.mLock) {
                if (removeDisplayFromList(displayId)) {
                    if (AccessibilityManagerService.this.mInputFilter != null) {
                        AccessibilityManagerService.this.mInputFilter.onDisplayChanged();
                    }
                    AccessibilityUserState userState = AccessibilityManagerService.this.getCurrentUserStateLocked();
                    if (displayId != 0) {
                        List<AccessibilityServiceConnection> services = userState.mBoundServices;
                        for (int i = 0; i < services.size(); i++) {
                            AccessibilityServiceConnection boundClient = services.get(i);
                            boundClient.onDisplayRemoved(displayId);
                        }
                    }
                    if (AccessibilityManagerService.this.mMagnificationController != null) {
                        AccessibilityManagerService.this.mMagnificationController.onDisplayRemoved(displayId);
                    }
                    AccessibilityManagerService.this.mA11yWindowManager.stopTrackingWindows(displayId);
                }
            }
        }

        private boolean removeDisplayFromList(int displayId) {
            for (int i = 0; i < this.mDisplaysList.size(); i++) {
                if (this.mDisplaysList.get(i).getDisplayId() == displayId) {
                    this.mDisplaysList.remove(i);
                    return true;
                }
            }
            return false;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int displayId) {
        }

        private boolean isValidDisplay(Display display) {
            if (display == null || display.getType() == 4) {
                return false;
            }
            if (display.getType() == 5 && (display.getFlags() & 4) != 0 && display.getOwnerUid() != this.mSystemUiUid) {
                return false;
            }
            return true;
        }
    }

    class Client {
        final IAccessibilityManagerClient mCallback;
        int mLastSentRelevantEventTypes;
        final String[] mPackageNames;

        /* synthetic */ Client(AccessibilityManagerService x0, IAccessibilityManagerClient x1, int x2, AccessibilityUserState x3, AnonymousClass1 x4) {
            this(x1, x2, x3);
        }

        private Client(IAccessibilityManagerClient callback, int clientUid, AccessibilityUserState userState) {
            this.mCallback = callback;
            this.mPackageNames = AccessibilityManagerService.this.mPackageManager.getPackagesForUid(clientUid);
            synchronized (AccessibilityManagerService.this.mLock) {
                this.mLastSentRelevantEventTypes = AccessibilityManagerService.this.computeRelevantEventTypesLocked(userState, this);
            }
        }
    }

    private final class AccessibilityContentObserver extends ContentObserver {
        private final Uri mAccessibilityButtonComponentIdUri;
        private final Uri mAccessibilityButtonTargetsUri;
        private final Uri mAccessibilityShortcutServiceIdUri;
        private final Uri mAccessibilitySoftKeyboardModeUri;
        private final Uri mAutoclickEnabledUri;
        private final Uri mDisplayMagnificationEnabledUri;
        private final Uri mEnabledAccessibilityServicesUri;
        private final Uri mHighTextContrastUri;
        private final Uri mShowImeWithHardKeyboardUri;
        private final Uri mTouchExplorationEnabledUri;
        private final Uri mTouchExplorationGrantedAccessibilityServicesUri;
        private final Uri mUserInteractiveUiTimeoutUri;
        private final Uri mUserNonInteractiveUiTimeoutUri;

        public AccessibilityContentObserver(Handler handler) {
            super(handler);
            this.mTouchExplorationEnabledUri = Settings.Secure.getUriFor("touch_exploration_enabled");
            this.mDisplayMagnificationEnabledUri = Settings.Secure.getUriFor("accessibility_display_magnification_enabled");
            this.mAutoclickEnabledUri = Settings.Secure.getUriFor("accessibility_autoclick_enabled");
            this.mEnabledAccessibilityServicesUri = Settings.Secure.getUriFor("enabled_accessibility_services");
            this.mTouchExplorationGrantedAccessibilityServicesUri = Settings.Secure.getUriFor("touch_exploration_granted_accessibility_services");
            this.mHighTextContrastUri = Settings.Secure.getUriFor("high_text_contrast_enabled");
            this.mAccessibilitySoftKeyboardModeUri = Settings.Secure.getUriFor("accessibility_soft_keyboard_mode");
            this.mShowImeWithHardKeyboardUri = Settings.Secure.getUriFor("show_ime_with_hard_keyboard");
            this.mAccessibilityShortcutServiceIdUri = Settings.Secure.getUriFor("accessibility_shortcut_target_service");
            this.mAccessibilityButtonComponentIdUri = Settings.Secure.getUriFor("accessibility_button_target_component");
            this.mAccessibilityButtonTargetsUri = Settings.Secure.getUriFor("accessibility_button_targets");
            this.mUserNonInteractiveUiTimeoutUri = Settings.Secure.getUriFor("accessibility_non_interactive_ui_timeout_ms");
            this.mUserInteractiveUiTimeoutUri = Settings.Secure.getUriFor("accessibility_interactive_ui_timeout_ms");
        }

        public void register(ContentResolver contentResolver) {
            contentResolver.registerContentObserver(this.mTouchExplorationEnabledUri, false, this, -1);
            contentResolver.registerContentObserver(this.mDisplayMagnificationEnabledUri, false, this, -1);
            contentResolver.registerContentObserver(this.mAutoclickEnabledUri, false, this, -1);
            contentResolver.registerContentObserver(this.mEnabledAccessibilityServicesUri, false, this, -1);
            contentResolver.registerContentObserver(this.mTouchExplorationGrantedAccessibilityServicesUri, false, this, -1);
            contentResolver.registerContentObserver(this.mHighTextContrastUri, false, this, -1);
            contentResolver.registerContentObserver(this.mAccessibilitySoftKeyboardModeUri, false, this, -1);
            contentResolver.registerContentObserver(this.mShowImeWithHardKeyboardUri, false, this, -1);
            contentResolver.registerContentObserver(this.mAccessibilityShortcutServiceIdUri, false, this, -1);
            contentResolver.registerContentObserver(this.mAccessibilityButtonComponentIdUri, false, this, -1);
            contentResolver.registerContentObserver(this.mAccessibilityButtonTargetsUri, false, this, -1);
            contentResolver.registerContentObserver(this.mUserNonInteractiveUiTimeoutUri, false, this, -1);
            contentResolver.registerContentObserver(this.mUserInteractiveUiTimeoutUri, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            synchronized (AccessibilityManagerService.this.mLock) {
                AccessibilityUserState userState = AccessibilityManagerService.this.getCurrentUserStateLocked();
                if (this.mTouchExplorationEnabledUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readTouchExplorationEnabledSettingLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mDisplayMagnificationEnabledUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readMagnificationEnabledSettingsLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mAutoclickEnabledUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readAutoclickEnabledSettingLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mEnabledAccessibilityServicesUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readEnabledAccessibilityServicesLocked(userState)) {
                        userState.updateCrashedServicesIfNeededLocked();
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mTouchExplorationGrantedAccessibilityServicesUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readTouchExplorationGrantedAccessibilityServicesLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mHighTextContrastUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readHighTextContrastEnabledSettingLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mAccessibilitySoftKeyboardModeUri.equals(uri) || this.mShowImeWithHardKeyboardUri.equals(uri)) {
                    userState.reconcileSoftKeyboardModeWithSettingsLocked();
                } else if (this.mAccessibilityShortcutServiceIdUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readAccessibilityShortcutKeySettingLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mAccessibilityButtonComponentIdUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readAccessibilityButtonTargetComponentLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mAccessibilityButtonTargetsUri.equals(uri)) {
                    if (AccessibilityManagerService.this.readAccessibilityButtonTargetsLocked(userState)) {
                        AccessibilityManagerService.this.onUserStateChangedLocked(userState);
                    }
                } else if (this.mUserNonInteractiveUiTimeoutUri.equals(uri) || this.mUserInteractiveUiTimeoutUri.equals(uri)) {
                    AccessibilityManagerService.this.readUserRecommendedUiTimeoutSettingsLocked(userState);
                }
            }
        }
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public void setGestureDetectionPassthroughRegion(int displayId, Region region) {
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((AccessibilityManagerService) obj).setGestureDetectionPassthroughRegionInternal(((Integer) obj2).intValue(), (Region) obj3);
            }
        }, this, Integer.valueOf(displayId), region));
    }

    @Override // com.android.server.accessibility.AbstractAccessibilityServiceConnection.SystemSupport
    public void setTouchExplorationPassthroughRegion(int displayId, Region region) {
        this.mMainHandler.sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.accessibility.-$$Lambda$AccessibilityManagerService$zajP-hb_Pu4KrBx9lo0SCrvm0I4
            public final void accept(Object obj, Object obj2, Object obj3) {
                ((AccessibilityManagerService) obj).setTouchExplorationPassthroughRegionInternal(((Integer) obj2).intValue(), (Region) obj3);
            }
        }, this, Integer.valueOf(displayId), region));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTouchExplorationPassthroughRegionInternal(int displayId, Region region) {
        synchronized (this.mLock) {
            if (this.mHasInputFilter && this.mInputFilter != null) {
                this.mInputFilter.setTouchExplorationPassthroughRegion(displayId, region);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGestureDetectionPassthroughRegionInternal(int displayId, Region region) {
        synchronized (this.mLock) {
            if (this.mHasInputFilter && this.mInputFilter != null) {
                this.mInputFilter.setGestureDetectionPassthroughRegion(displayId, region);
            }
        }
    }
}
