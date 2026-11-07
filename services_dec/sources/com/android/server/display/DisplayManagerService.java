package com.android.server.display;

import android.R;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ParceledListSlice;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.SensorManager;
import android.hardware.display.AmbientBrightnessDayStats;
import android.hardware.display.BrightnessChangeEvent;
import android.hardware.display.BrightnessConfiguration;
import android.hardware.display.Curve;
import android.hardware.display.DisplayManagerGlobal;
import android.hardware.display.DisplayManagerInternal;
import android.hardware.display.DisplayViewport;
import android.hardware.display.DisplayedContentSample;
import android.hardware.display.DisplayedContentSamplingAttributes;
import android.hardware.display.IDisplayManager;
import android.hardware.display.IDisplayManagerCallback;
import android.hardware.display.IVirtualDisplayCallback;
import android.hardware.display.VirtualDisplayConfig;
import android.hardware.display.WifiDisplayStatus;
import android.hardware.input.InputManagerInternal;
import android.media.projection.IMediaProjection;
import android.media.projection.IMediaProjectionManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.EventLog;
import android.util.IntArray;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Spline;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.Surface;
import android.view.SurfaceControl;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.AnimationThread;
import com.android.server.DisplayThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.UiThread;
import com.android.server.power.backlight.BackLightConfig;
import com.android.server.wm.SurfaceAnimationThread;
import com.android.server.wm.WindowManagerInternal;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayManagerService extends SystemService {
    private static final boolean DEBUG = false;
    private static final String FORCE_WIFI_DISPLAY_ENABLE = "persist.debug.wfd.enable";
    private static final int MSG_DELIVER_DISPLAY_EVENT = 3;
    private static final int MSG_LOAD_BRIGHTNESS_CONFIGURATION = 6;
    private static final int MSG_REGISTER_ADDITIONAL_DISPLAY_ADAPTERS = 2;
    private static final int MSG_REGISTER_DEFAULT_DISPLAY_ADAPTERS = 1;
    private static final int MSG_REQUEST_TRAVERSAL = 4;
    private static final int MSG_UPDATE_VIEWPORT = 5;
    private static final String PROP_DEFAULT_DISPLAY_TOP_INSET = "persist.sys.displayinset.top";
    private static final String TAG = "DisplayManagerService";
    private static final long WAIT_FOR_DEFAULT_DISPLAY_TIMEOUT = 10000;
    public final SparseArray<CallbackRecord> mCallbacks;
    private final Context mContext;
    private int mCurrentUserId;
    private final int mDefaultDisplayDefaultColorMode;
    private int mDefaultDisplayTopInset;
    private final SparseArray<IntArray> mDisplayAccessUIDs;
    private final DisplayAdapterListener mDisplayAdapterListener;
    private final ArrayList<DisplayAdapter> mDisplayAdapters;
    private final ArrayList<DisplayDevice> mDisplayDevices;
    private final DisplayModeDirector mDisplayModeDirector;
    private DisplayPowerController mDisplayPowerController;
    private final CopyOnWriteArrayList<DisplayManagerInternal.DisplayTransactionListener> mDisplayTransactionListeners;
    private float mGlobalDisplayBrightness;
    private int mGlobalDisplayState;
    private final DisplayManagerHandler mHandler;
    private final Injector mInjector;
    private InputManagerInternal mInputManagerInternal;
    private final SparseArray<LogicalDisplay> mLogicalDisplays;
    private boolean mMinimalPostProcessingAllowed;
    private final Curve mMinimumBrightnessCurve;
    private final Spline mMinimumBrightnessSpline;
    private int mNextNonDefaultDisplayId;
    private int mNextVirtualDisplayId;
    public boolean mOnlyCore;
    private boolean mPendingTraversal;
    private final PersistentDataStore mPersistentDataStore;
    private IMediaProjectionManager mProjectionService;
    public boolean mSafeMode;
    private SensorManager mSensorManager;
    private SettingsObserver mSettingsObserver;
    private final boolean mSingleDisplayDemoMode;
    private Point mStableDisplaySize;
    private final SyncRoot mSyncRoot;
    private boolean mSystemReady;
    private final ArrayList<CallbackRecord> mTempCallbacks;
    private final DisplayInfo mTempDisplayInfo;
    private final ArrayList<Runnable> mTempDisplayStateWorkQueue;
    private final ArrayList<DisplayViewport> mTempViewports;
    private final Handler mUiHandler;
    private final ArrayList<DisplayViewport> mViewports;
    private VirtualDisplayAdapter mVirtualDisplayAdapter;
    private final ColorSpace mWideColorSpace;
    private WifiDisplayAdapter mWifiDisplayAdapter;
    private int mWifiDisplayScanRequestCount;
    private WindowManagerInternal mWindowManagerInternal;

    public static final class SyncRoot {
    }

    public DisplayManagerService(Context context) {
        this(context, new Injector());
    }

    DisplayManagerService(Context context, Injector injector) {
        super(context);
        this.mSyncRoot = new SyncRoot();
        this.mCallbacks = new SparseArray<>();
        this.mDisplayAdapters = new ArrayList<>();
        this.mDisplayDevices = new ArrayList<>();
        this.mLogicalDisplays = new SparseArray<>();
        this.mNextNonDefaultDisplayId = 1;
        this.mNextVirtualDisplayId = 10;
        this.mDisplayTransactionListeners = new CopyOnWriteArrayList<>();
        this.mGlobalDisplayState = 2;
        this.mStableDisplaySize = new Point();
        this.mViewports = new ArrayList<>();
        this.mPersistentDataStore = new PersistentDataStore();
        this.mTempCallbacks = new ArrayList<>();
        this.mTempDisplayInfo = new DisplayInfo();
        this.mTempViewports = new ArrayList<>();
        this.mTempDisplayStateWorkQueue = new ArrayList<>();
        this.mDisplayAccessUIDs = new SparseArray<>();
        this.mInjector = injector;
        this.mContext = context;
        this.mHandler = new DisplayManagerHandler(DisplayThread.get().getLooper());
        this.mUiHandler = UiThread.getHandler();
        this.mDisplayAdapterListener = new DisplayAdapterListener();
        this.mDisplayModeDirector = new DisplayModeDirector(context, this.mHandler);
        this.mSingleDisplayDemoMode = SystemProperties.getBoolean("persist.demo.singledisplay", false);
        Resources resources = this.mContext.getResources();
        this.mDefaultDisplayDefaultColorMode = this.mContext.getResources().getInteger(R.integer.config_carDockRotation);
        this.mDefaultDisplayTopInset = SystemProperties.getInt(PROP_DEFAULT_DISPLAY_TOP_INSET, -1);
        float[] lux = getFloatArray(resources.obtainTypedArray(R.array.config_displayWhiteBalanceLowLightAmbientBiasesStrong));
        float[] nits = getFloatArray(resources.obtainTypedArray(R.array.config_displayWhiteBalanceLowLightAmbientBrightnesses));
        this.mMinimumBrightnessCurve = new Curve(lux, nits);
        this.mMinimumBrightnessSpline = Spline.createSpline(lux, nits);
        PowerManager pm = (PowerManager) this.mContext.getSystemService(PowerManager.class);
        this.mGlobalDisplayBrightness = pm.getBrightnessConstraint(2);
        this.mCurrentUserId = 0;
        ColorSpace[] colorSpaces = SurfaceControl.getCompositionColorSpaces();
        this.mWideColorSpace = colorSpaces[1];
        BackLightConfig.initDisplayIdsAndSettingsConfig();
        this.mSystemReady = false;
    }

    public void setupSchedulerPolicies() {
        Process.setThreadGroupAndCpuset(DisplayThread.get().getThreadId(), 5);
        Process.setThreadGroupAndCpuset(AnimationThread.get().getThreadId(), 5);
        Process.setThreadGroupAndCpuset(SurfaceAnimationThread.get().getThreadId(), 5);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        synchronized (this.mSyncRoot) {
            this.mPersistentDataStore.loadIfNeeded();
            loadStableDisplayValuesLocked();
        }
        this.mHandler.sendEmptyMessage(1);
        DisplayManagerGlobal.invalidateLocalDisplayInfoCaches();
        publishBinderService("display", new BinderService(), true);
        publishLocalService(DisplayManagerInternal.class, new LocalService());
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 100) {
            synchronized (this.mSyncRoot) {
                long timeout = SystemClock.uptimeMillis() + this.mInjector.getDefaultDisplayDelayTimeout();
                while (true) {
                    if (this.mLogicalDisplays.get(0) != null && this.mVirtualDisplayAdapter != null) {
                    }
                    long delay = timeout - SystemClock.uptimeMillis();
                    if (delay <= 0) {
                        throw new RuntimeException("Timeout waiting for default display to be initialized. DefaultDisplay=" + this.mLogicalDisplays.get(0) + ", mVirtualDisplayAdapter=" + this.mVirtualDisplayAdapter);
                    }
                    try {
                        this.mSyncRoot.wait(delay);
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int newUserId) {
        int userSerial = getUserManager().getUserSerialNumber(newUserId);
        synchronized (this.mSyncRoot) {
            if (this.mCurrentUserId != newUserId) {
                this.mCurrentUserId = newUserId;
                BrightnessConfiguration config = this.mPersistentDataStore.getBrightnessConfiguration(userSerial);
                this.mDisplayPowerController.setBrightnessConfiguration(config);
                handleSettingsChange();
            }
            this.mDisplayPowerController.onSwitchUser(newUserId);
        }
    }

    public void windowManagerAndInputReady() {
        synchronized (this.mSyncRoot) {
            this.mWindowManagerInternal = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
            this.mInputManagerInternal = (InputManagerInternal) LocalServices.getService(InputManagerInternal.class);
            scheduleTraversalLocked(false);
        }
    }

    public void systemReady(boolean safeMode, boolean onlyCore) {
        synchronized (this.mSyncRoot) {
            this.mSafeMode = safeMode;
            this.mOnlyCore = onlyCore;
            this.mSystemReady = true;
            recordTopInsetLocked(this.mLogicalDisplays.get(0));
            updateSettingsLocked();
        }
        this.mDisplayModeDirector.setDesiredDisplayModeSpecsListener(new DesiredDisplayModeSpecsObserver());
        this.mDisplayModeDirector.start(this.mSensorManager);
        this.mHandler.sendEmptyMessage(2);
        this.mSettingsObserver = new SettingsObserver();
    }

    Handler getDisplayHandler() {
        return this.mHandler;
    }

    private void loadStableDisplayValuesLocked() {
        Point size = this.mPersistentDataStore.getStableDisplaySize();
        if (size.x > 0 && size.y > 0) {
            this.mStableDisplaySize.set(size.x, size.y);
            return;
        }
        Resources res = this.mContext.getResources();
        int width = res.getInteger(R.integer.config_lowMemoryKillerMinFreeKbytesAdjust);
        int height = res.getInteger(R.integer.config_lowMemoryKillerMinFreeKbytesAbsolute);
        if (width > 0 && height > 0) {
            setStableDisplaySizeLocked(width, height);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Point getStableDisplaySizeInternal() {
        Point r = new Point();
        synchronized (this.mSyncRoot) {
            if (this.mStableDisplaySize.x > 0 && this.mStableDisplaySize.y > 0) {
                r.set(this.mStableDisplaySize.x, this.mStableDisplaySize.y);
            }
        }
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerDisplayTransactionListenerInternal(DisplayManagerInternal.DisplayTransactionListener listener) {
        this.mDisplayTransactionListeners.add(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterDisplayTransactionListenerInternal(DisplayManagerInternal.DisplayTransactionListener listener) {
        this.mDisplayTransactionListeners.remove(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayInfoOverrideFromWindowManagerInternal(int displayId, DisplayInfo info) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null && display.setDisplayInfoOverrideFromWindowManagerLocked(info)) {
                handleLogicalDisplayChanged(displayId, display);
                scheduleTraversalLocked(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getNonOverrideDisplayInfoInternal(int displayId, DisplayInfo outInfo) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null) {
                display.getNonOverrideDisplayInfoLocked(outInfo);
            }
        }
    }

    void performTraversalInternal(SurfaceControl.Transaction t) {
        synchronized (this.mSyncRoot) {
            if (this.mPendingTraversal) {
                this.mPendingTraversal = false;
                performTraversalLocked(t);
                for (DisplayManagerInternal.DisplayTransactionListener listener : this.mDisplayTransactionListeners) {
                    listener.onDisplayTransaction(t);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestGlobalDisplayStateInternal(int state, float brightnessState) {
        LogicalDisplay display;
        DisplayDevice device;
        if (state == 0) {
            state = 2;
        }
        if (state == 1) {
            brightnessState = -1.0f;
        } else if (brightnessState != -1.0f && brightnessState < 0.0f) {
            brightnessState = Float.NaN;
        } else if (brightnessState > 1.0f) {
            brightnessState = 1.0f;
        }
        synchronized (this.mTempDisplayStateWorkQueue) {
            try {
                synchronized (this.mSyncRoot) {
                    if (this.mGlobalDisplayState != state || this.mGlobalDisplayBrightness != brightnessState) {
                        Trace.traceBegin(131072L, "requestGlobalDisplayState(" + Display.stateToString(state) + ", brightness=" + brightnessState + ")");
                        this.mGlobalDisplayState = state;
                        this.mGlobalDisplayBrightness = brightnessState;
                        applyGlobalDisplayStateLocked(this.mTempDisplayStateWorkQueue);
                        if (this.mGlobalDisplayState != 1 && this.mLogicalDisplays != null && (display = this.mLogicalDisplays.get(0)) != null && (device = display.getPrimaryDisplayDeviceLocked()) != null && device.mCurrentLayerStack == -1) {
                            DisplayDeviceInfo info = device.getDisplayDeviceInfoLocked();
                            StringBuilder sb = new StringBuilder();
                            sb.append("xuyong-requestGlobalDisplayStateInternal, displayId = ");
                            sb.append(display.getDisplayIdLocked());
                            sb.append(", info = ");
                            sb.append(info);
                            sb.append(", mGlobalDisplayState = ");
                            sb.append(Display.stateToString(this.mGlobalDisplayState));
                            sb.append(", info.state = ");
                            sb.append(info != null ? Display.stateToString(info.state) : "info is null");
                            Slog.e(TAG, sb.toString());
                            scheduleTraversalLocked(false);
                        }
                        for (int i = 0; i < this.mTempDisplayStateWorkQueue.size(); i++) {
                            this.mTempDisplayStateWorkQueue.get(i).run();
                        }
                        Trace.traceEnd(131072L);
                        this.mTempDisplayStateWorkQueue.clear();
                        return;
                    }
                    this.mTempDisplayStateWorkQueue.clear();
                }
            } catch (Throwable th) {
                this.mTempDisplayStateWorkQueue.clear();
                throw th;
            }
        }
    }

    private class SettingsObserver extends ContentObserver {
        SettingsObserver() {
            super(DisplayManagerService.this.mHandler);
            DisplayManagerService.this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("minimal_post_processing_allowed"), false, this);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            DisplayManagerService.this.handleSettingsChange();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSettingsChange() {
        synchronized (this.mSyncRoot) {
            updateSettingsLocked();
            scheduleTraversalLocked(false);
        }
    }

    private void updateSettingsLocked() {
        this.mMinimalPostProcessingAllowed = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "minimal_post_processing_allowed", 1, -2) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DisplayInfo getDisplayInfoInternal(int displayId, int callingUid) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null) {
                DisplayInfo info = display.getDisplayInfoLocked();
                if (info.hasAccess(callingUid) || isUidPresentOnDisplayInternal(callingUid, displayId)) {
                    return info;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getDisplayIdsInternal(int callingUid) {
        int[] displayIds;
        synchronized (this.mSyncRoot) {
            int count = this.mLogicalDisplays.size();
            displayIds = new int[count];
            int n = 0;
            for (int i = 0; i < count; i++) {
                LogicalDisplay display = this.mLogicalDisplays.valueAt(i);
                DisplayInfo info = display.getDisplayInfoLocked();
                if (info.hasAccess(callingUid)) {
                    displayIds[n] = this.mLogicalDisplays.keyAt(i);
                    n++;
                }
            }
            if (n != count) {
                displayIds = Arrays.copyOfRange(displayIds, 0, n);
            }
        }
        return displayIds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerCallbackInternal(IDisplayManagerCallback callback, int callingPid) {
        synchronized (this.mSyncRoot) {
            if (this.mCallbacks.get(callingPid) != null) {
                throw new SecurityException("The calling process has already registered an IDisplayManagerCallback.");
            }
            CallbackRecord record = new CallbackRecord(callingPid, callback);
            try {
                IBinder binder = callback.asBinder();
                binder.linkToDeath(record, 0);
                this.mCallbacks.put(callingPid, record);
            } catch (RemoteException ex) {
                throw new RuntimeException(ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCallbackDied(CallbackRecord record) {
        synchronized (this.mSyncRoot) {
            this.mCallbacks.remove(record.mPid);
            stopWifiDisplayScanLocked(record);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startWifiDisplayScanInternal(int callingPid) {
        synchronized (this.mSyncRoot) {
            CallbackRecord record = this.mCallbacks.get(callingPid);
            if (record == null) {
                throw new IllegalStateException("The calling process has not registered an IDisplayManagerCallback.");
            }
            startWifiDisplayScanLocked(record);
        }
    }

    private void startWifiDisplayScanLocked(CallbackRecord record) {
        WifiDisplayAdapter wifiDisplayAdapter;
        if (!record.mWifiDisplayScanRequested) {
            record.mWifiDisplayScanRequested = true;
            int i = this.mWifiDisplayScanRequestCount;
            this.mWifiDisplayScanRequestCount = i + 1;
            if (i == 0 && (wifiDisplayAdapter = this.mWifiDisplayAdapter) != null) {
                wifiDisplayAdapter.requestStartScanLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopWifiDisplayScanInternal(int callingPid) {
        synchronized (this.mSyncRoot) {
            CallbackRecord record = this.mCallbacks.get(callingPid);
            if (record == null) {
                throw new IllegalStateException("The calling process has not registered an IDisplayManagerCallback.");
            }
            stopWifiDisplayScanLocked(record);
        }
    }

    private void stopWifiDisplayScanLocked(CallbackRecord record) {
        if (record.mWifiDisplayScanRequested) {
            record.mWifiDisplayScanRequested = false;
            int i = this.mWifiDisplayScanRequestCount - 1;
            this.mWifiDisplayScanRequestCount = i;
            if (i == 0) {
                WifiDisplayAdapter wifiDisplayAdapter = this.mWifiDisplayAdapter;
                if (wifiDisplayAdapter != null) {
                    wifiDisplayAdapter.requestStopScanLocked();
                    return;
                }
                return;
            }
            if (i < 0) {
                Slog.wtf(TAG, "mWifiDisplayScanRequestCount became negative: " + this.mWifiDisplayScanRequestCount);
                this.mWifiDisplayScanRequestCount = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectWifiDisplayInternal(String address) {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                this.mWifiDisplayAdapter.requestConnectLocked(address);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pauseWifiDisplayInternal() {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                this.mWifiDisplayAdapter.requestPauseLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeWifiDisplayInternal() {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                this.mWifiDisplayAdapter.requestResumeLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectWifiDisplayInternal() {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                this.mWifiDisplayAdapter.requestDisconnectLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renameWifiDisplayInternal(String address, String alias) {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                this.mWifiDisplayAdapter.requestRenameLocked(address, alias);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forgetWifiDisplayInternal(String address) {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                this.mWifiDisplayAdapter.requestForgetLocked(address);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WifiDisplayStatus getWifiDisplayStatusInternal() {
        synchronized (this.mSyncRoot) {
            if (this.mWifiDisplayAdapter != null) {
                return this.mWifiDisplayAdapter.getWifiDisplayStatusLocked();
            }
            return new WifiDisplayStatus();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestColorModeInternal(int displayId, int colorMode) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null && display.getRequestedColorModeLocked() != colorMode) {
                display.setRequestedColorModeLocked(colorMode);
                scheduleTraversalLocked(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int createVirtualDisplayInternal(IVirtualDisplayCallback callback, IMediaProjection projection, int callingUid, String packageName, Surface surface, int flags, VirtualDisplayConfig virtualDisplayConfig) {
        synchronized (this.mSyncRoot) {
            if (this.mVirtualDisplayAdapter == null) {
                Slog.w(TAG, "Rejecting request to create private virtual display because the virtual display adapter is not available.");
                return -1;
            }
            DisplayDevice device = this.mVirtualDisplayAdapter.createVirtualDisplayLocked(callback, projection, callingUid, packageName, surface, flags, virtualDisplayConfig);
            if (device == null) {
                return -1;
            }
            handleDisplayDeviceAddedLocked(device);
            LogicalDisplay display = findLogicalDisplayForDeviceLocked(device);
            if (display != null) {
                return display.getDisplayIdLocked();
            }
            Slog.w(TAG, "Rejecting request to create virtual display because the logical display was not created.");
            this.mVirtualDisplayAdapter.releaseVirtualDisplayLocked(callback.asBinder());
            handleDisplayDeviceRemovedLocked(device);
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resizeVirtualDisplayInternal(IBinder appToken, int width, int height, int densityDpi) {
        synchronized (this.mSyncRoot) {
            if (this.mVirtualDisplayAdapter == null) {
                return;
            }
            this.mVirtualDisplayAdapter.resizeVirtualDisplayLocked(appToken, width, height, densityDpi);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVirtualDisplaySurfaceInternal(IBinder appToken, Surface surface) {
        synchronized (this.mSyncRoot) {
            if (this.mVirtualDisplayAdapter == null) {
                return;
            }
            this.mVirtualDisplayAdapter.setVirtualDisplaySurfaceLocked(appToken, surface);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseVirtualDisplayInternal(IBinder appToken) {
        synchronized (this.mSyncRoot) {
            if (this.mVirtualDisplayAdapter == null) {
                return;
            }
            DisplayDevice device = this.mVirtualDisplayAdapter.releaseVirtualDisplayLocked(appToken);
            if (device != null) {
                handleDisplayDeviceRemovedLocked(device);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVirtualDisplayStateInternal(IBinder appToken, boolean isOn) {
        synchronized (this.mSyncRoot) {
            if (this.mVirtualDisplayAdapter == null) {
                return;
            }
            this.mVirtualDisplayAdapter.setVirtualDisplayStateLocked(appToken, isOn);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerDefaultDisplayAdapters() {
        synchronized (this.mSyncRoot) {
            registerDisplayAdapterLocked(new LocalDisplayAdapter(this.mSyncRoot, this.mContext, this.mHandler, this.mDisplayAdapterListener));
            VirtualDisplayAdapter virtualDisplayAdapter = this.mInjector.getVirtualDisplayAdapter(this.mSyncRoot, this.mContext, this.mHandler, this.mDisplayAdapterListener);
            this.mVirtualDisplayAdapter = virtualDisplayAdapter;
            if (virtualDisplayAdapter != null) {
                registerDisplayAdapterLocked(virtualDisplayAdapter);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerAdditionalDisplayAdapters() {
        synchronized (this.mSyncRoot) {
            if (shouldRegisterNonEssentialDisplayAdaptersLocked()) {
                registerOverlayDisplayAdapterLocked();
                registerWifiDisplayAdapterLocked();
            }
        }
    }

    private void registerOverlayDisplayAdapterLocked() {
        registerDisplayAdapterLocked(new OverlayDisplayAdapter(this.mSyncRoot, this.mContext, this.mHandler, this.mDisplayAdapterListener, this.mUiHandler));
    }

    private void registerWifiDisplayAdapterLocked() {
        if (this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadDdDisabled_default) || SystemProperties.getInt(FORCE_WIFI_DISPLAY_ENABLE, -1) == 1) {
            WifiDisplayAdapter wifiDisplayAdapter = new WifiDisplayAdapter(this.mSyncRoot, this.mContext, this.mHandler, this.mDisplayAdapterListener, this.mPersistentDataStore);
            this.mWifiDisplayAdapter = wifiDisplayAdapter;
            registerDisplayAdapterLocked(wifiDisplayAdapter);
        }
    }

    private boolean shouldRegisterNonEssentialDisplayAdaptersLocked() {
        return (this.mSafeMode || this.mOnlyCore) ? false : true;
    }

    private void registerDisplayAdapterLocked(DisplayAdapter adapter) {
        this.mDisplayAdapters.add(adapter);
        adapter.registerLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisplayDeviceAdded(DisplayDevice device) {
        synchronized (this.mSyncRoot) {
            handleDisplayDeviceAddedLocked(device);
        }
    }

    private void handleDisplayDeviceAddedLocked(DisplayDevice device) {
        DisplayDeviceInfo info = device.getDisplayDeviceInfoLocked();
        if (this.mDisplayDevices.contains(device)) {
            Slog.w(TAG, "Attempted to add already added display device: " + info);
            return;
        }
        Slog.i(TAG, "Display device added: " + info);
        device.mDebugLastLoggedDeviceInfo = info;
        this.mDisplayDevices.add(device);
        addLogicalDisplayLocked(device);
        Runnable work = updateDisplayStateLocked(device);
        if (work != null) {
            work.run();
        }
        scheduleTraversalLocked(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisplayDeviceChanged(DisplayDevice device) {
        synchronized (this.mSyncRoot) {
            try {
                DisplayDeviceInfo info = device.getDisplayDeviceInfoLocked();
                if (!this.mDisplayDevices.contains(device)) {
                    Slog.w(TAG, "Attempted to change non-existent display device: " + info);
                    return;
                }
                int diff = device.mDebugLastLoggedDeviceInfo.diff(info);
                if (diff == 1) {
                    Slog.i(TAG, "Display device changed state: \"" + info.name + "\", " + Display.stateToString(info.state));
                    Optional<Integer> viewportType = getViewportType(info);
                    if (viewportType.isPresent()) {
                        for (DisplayViewport d : this.mViewports) {
                            if (d.type == viewportType.get().intValue() && info.uniqueId.equals(d.uniqueId)) {
                                d.isActive = Display.isActiveState(info.state);
                            }
                        }
                        if (this.mInputManagerInternal != null) {
                            this.mHandler.sendEmptyMessage(5);
                        }
                    }
                } else if (diff != 0) {
                    Slog.i(TAG, "Display device changed: " + info);
                }
                if ((diff & 4) != 0) {
                    try {
                        this.mPersistentDataStore.setColorMode(device, info.colorMode);
                        this.mPersistentDataStore.saveIfNeeded();
                    } catch (Throwable th) {
                        this.mPersistentDataStore.saveIfNeeded();
                        throw th;
                    }
                }
                device.mDebugLastLoggedDeviceInfo = info;
                device.applyPendingDisplayDeviceInfoChangesLocked();
                if (updateLogicalDisplaysLocked()) {
                    scheduleTraversalLocked(false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDisplayDeviceRemoved(DisplayDevice device) {
        synchronized (this.mSyncRoot) {
            handleDisplayDeviceRemovedLocked(device);
        }
    }

    private void handleDisplayDeviceRemovedLocked(DisplayDevice device) {
        DisplayDeviceInfo info = device.getDisplayDeviceInfoLocked();
        if (!this.mDisplayDevices.remove(device)) {
            Slog.w(TAG, "Attempted to remove non-existent display device: " + info);
            return;
        }
        Slog.i(TAG, "Display device removed: " + info);
        device.mDebugLastLoggedDeviceInfo = info;
        updateLogicalDisplaysLocked();
        scheduleTraversalLocked(false);
    }

    private void handleLogicalDisplayChanged(int displayId, LogicalDisplay display) {
        if (displayId == 0) {
            recordTopInsetLocked(display);
        }
        sendDisplayEventLocked(displayId, 2);
    }

    private void handleLogicalDisplayRemoved(int displayId) {
        DisplayManagerGlobal.invalidateLocalDisplayInfoCaches();
        sendDisplayEventLocked(displayId, 3);
    }

    private void applyGlobalDisplayStateLocked(List<Runnable> workQueue) {
        int count = this.mDisplayDevices.size();
        for (int i = 0; i < count; i++) {
            DisplayDevice device = this.mDisplayDevices.get(i);
            Runnable runnable = updateDisplayStateLocked(device);
            if (runnable != null) {
                workQueue.add(runnable);
            }
        }
    }

    private Runnable updateDisplayStateLocked(DisplayDevice device) {
        DisplayDeviceInfo info = device.getDisplayDeviceInfoLocked();
        if ((info.flags & 32) == 0) {
            return device.requestDisplayStateLocked(this.mGlobalDisplayState, this.mGlobalDisplayBrightness);
        }
        return null;
    }

    private LogicalDisplay addLogicalDisplayLocked(DisplayDevice device) {
        int displayId;
        DisplayDeviceInfo deviceInfo = device.getDisplayDeviceInfoLocked();
        boolean isDefault = (deviceInfo.flags & 1) != 0;
        if (isDefault && this.mLogicalDisplays.get(0) != null) {
            Slog.w(TAG, "Ignoring attempt to add a second default display: " + deviceInfo);
            isDefault = false;
        }
        if (!isDefault && this.mSingleDisplayDemoMode) {
            Slog.i(TAG, "Not creating a logical display for a secondary display  because single display demo mode is enabled: " + deviceInfo);
            return null;
        }
        if (device.getAdapterLocked() != this.mVirtualDisplayAdapter && this.mNextNonDefaultDisplayId < 10) {
            displayId = assignDisplayIdLocked(isDefault);
        } else {
            displayId = this.mNextVirtualDisplayId;
            this.mNextVirtualDisplayId = displayId + 1;
        }
        int layerStack = assignLayerStackLocked(displayId);
        LogicalDisplay display = new LogicalDisplay(displayId, layerStack, device);
        display.updateLocked(this.mDisplayDevices);
        if (!display.isValidLocked()) {
            Slog.w(TAG, "Ignoring display device because the logical display created from it was not considered valid: " + deviceInfo);
            return null;
        }
        configureColorModeLocked(display, device);
        if (isDefault) {
            recordStableDisplayStatsIfNeededLocked(display);
            recordTopInsetLocked(display);
        }
        this.mLogicalDisplays.put(displayId, display);
        DisplayManagerGlobal.invalidateLocalDisplayInfoCaches();
        if (isDefault) {
            this.mSyncRoot.notifyAll();
        }
        sendDisplayEventLocked(displayId, 1);
        return display;
    }

    private int assignDisplayIdLocked(boolean isDefault) {
        if (isDefault) {
            return 0;
        }
        int i = this.mNextNonDefaultDisplayId;
        this.mNextNonDefaultDisplayId = i + 1;
        return i;
    }

    private int assignLayerStackLocked(int displayId) {
        return displayId;
    }

    private void configureColorModeLocked(LogicalDisplay display, DisplayDevice device) {
        if (display.getPrimaryDisplayDeviceLocked() == device) {
            int colorMode = this.mPersistentDataStore.getColorMode(device);
            if (colorMode == -1) {
                if ((device.getDisplayDeviceInfoLocked().flags & 1) != 0) {
                    colorMode = this.mDefaultDisplayDefaultColorMode;
                } else {
                    colorMode = 0;
                }
            }
            display.setRequestedColorModeLocked(colorMode);
        }
    }

    private void recordStableDisplayStatsIfNeededLocked(LogicalDisplay d) {
        if (this.mStableDisplaySize.x <= 0 && this.mStableDisplaySize.y <= 0) {
            DisplayInfo info = d.getDisplayInfoLocked();
            setStableDisplaySizeLocked(info.getNaturalWidth(), info.getNaturalHeight());
        }
    }

    private void recordTopInsetLocked(LogicalDisplay d) {
        int topInset;
        if (!this.mSystemReady || d == null || (topInset = d.getInsets().top) == this.mDefaultDisplayTopInset) {
            return;
        }
        this.mDefaultDisplayTopInset = topInset;
        SystemProperties.set(PROP_DEFAULT_DISPLAY_TOP_INSET, Integer.toString(topInset));
    }

    private void setStableDisplaySizeLocked(int width, int height) {
        Point point = new Point(width, height);
        this.mStableDisplaySize = point;
        try {
            this.mPersistentDataStore.setStableDisplaySize(point);
        } finally {
            this.mPersistentDataStore.saveIfNeeded();
        }
    }

    Curve getMinimumBrightnessCurveInternal() {
        return this.mMinimumBrightnessCurve;
    }

    int getPreferredWideGamutColorSpaceIdInternal() {
        return this.mWideColorSpace.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBrightnessConfigurationForUserInternal(BrightnessConfiguration c, int userId, String packageName) {
        validateBrightnessConfiguration(c);
        int userSerial = getUserManager().getUserSerialNumber(userId);
        synchronized (this.mSyncRoot) {
            try {
                try {
                    this.mPersistentDataStore.setBrightnessConfigurationForUser(c, userSerial, packageName);
                    this.mPersistentDataStore.saveIfNeeded();
                    if (userId == this.mCurrentUserId) {
                        this.mDisplayPowerController.setBrightnessConfiguration(c);
                    }
                } catch (Throwable th) {
                    this.mPersistentDataStore.saveIfNeeded();
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    void validateBrightnessConfiguration(BrightnessConfiguration config) {
        if (config != null && isBrightnessConfigurationTooDark(config)) {
            throw new IllegalArgumentException("brightness curve is too dark");
        }
    }

    private boolean isBrightnessConfigurationTooDark(BrightnessConfiguration config) {
        Pair<float[], float[]> curve = config.getCurve();
        float[] lux = (float[]) curve.first;
        float[] nits = (float[]) curve.second;
        for (int i = 0; i < lux.length; i++) {
            if (nits[i] < this.mMinimumBrightnessSpline.interpolate(lux[i])) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadBrightnessConfiguration() {
        synchronized (this.mSyncRoot) {
            int userSerial = getUserManager().getUserSerialNumber(this.mCurrentUserId);
            BrightnessConfiguration config = this.mPersistentDataStore.getBrightnessConfiguration(userSerial);
            this.mDisplayPowerController.setBrightnessConfiguration(config);
        }
    }

    private boolean updateLogicalDisplaysLocked() {
        boolean changed = false;
        int displayId = this.mLogicalDisplays.size();
        while (true) {
            int i = displayId - 1;
            if (displayId > 0) {
                int displayId2 = this.mLogicalDisplays.keyAt(i);
                LogicalDisplay display = this.mLogicalDisplays.valueAt(i);
                this.mTempDisplayInfo.copyFrom(display.getDisplayInfoLocked());
                display.updateLocked(this.mDisplayDevices);
                if (!display.isValidLocked()) {
                    this.mLogicalDisplays.removeAt(i);
                    handleLogicalDisplayRemoved(displayId2);
                    changed = true;
                } else if (!this.mTempDisplayInfo.equals(display.getDisplayInfoLocked())) {
                    handleLogicalDisplayChanged(displayId2, display);
                    changed = true;
                }
                displayId = i;
            } else {
                return changed;
            }
        }
    }

    private void performTraversalLocked(SurfaceControl.Transaction t) {
        clearViewportsLocked();
        int count = this.mDisplayDevices.size();
        for (int i = 0; i < count; i++) {
            DisplayDevice device = this.mDisplayDevices.get(i);
            configureDisplayLocked(t, device);
            device.performTraversalLocked(t);
        }
        if (this.mInputManagerInternal != null) {
            this.mHandler.sendEmptyMessage(5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayPropertiesInternal(int displayId, boolean hasContent, float requestedRefreshRate, int requestedModeId, boolean preferMinimalPostProcessing, boolean inTraversal) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display == null) {
                return;
            }
            boolean shouldScheduleTraversal = false;
            if (display.hasContentLocked() != hasContent) {
                display.setHasContentLocked(hasContent);
                shouldScheduleTraversal = true;
            }
            if (requestedModeId == 0 && requestedRefreshRate != 0.0f) {
                requestedModeId = display.getDisplayInfoLocked().findDefaultModeByRefreshRate(requestedRefreshRate);
            }
            this.mDisplayModeDirector.getAppRequestObserver().setAppRequestedMode(displayId, requestedModeId);
            if (display.getDisplayInfoLocked().minimalPostProcessingSupported) {
                boolean mppRequest = this.mMinimalPostProcessingAllowed && preferMinimalPostProcessing;
                if (display.getRequestedMinimalPostProcessingLocked() != mppRequest) {
                    display.setRequestedMinimalPostProcessingLocked(mppRequest);
                    shouldScheduleTraversal = true;
                }
            }
            if (shouldScheduleTraversal) {
                scheduleTraversalLocked(inTraversal);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayOffsetsInternal(int displayId, int x, int y) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display == null) {
                return;
            }
            if (display.getDisplayOffsetXLocked() != x || display.getDisplayOffsetYLocked() != y) {
                display.setDisplayOffsetsLocked(x, y);
                scheduleTraversalLocked(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayScalingDisabledInternal(int displayId, boolean disable) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display == null) {
                return;
            }
            if (display.isDisplayScalingDisabled() != disable) {
                display.setDisplayScalingDisabledLocked(disable);
                scheduleTraversalLocked(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayAccessUIDsInternal(SparseArray<IntArray> newDisplayAccessUIDs) {
        synchronized (this.mSyncRoot) {
            this.mDisplayAccessUIDs.clear();
            for (int i = newDisplayAccessUIDs.size() - 1; i >= 0; i--) {
                this.mDisplayAccessUIDs.append(newDisplayAccessUIDs.keyAt(i), newDisplayAccessUIDs.valueAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isUidPresentOnDisplayInternal(int uid, int displayId) {
        boolean z;
        synchronized (this.mSyncRoot) {
            IntArray displayUIDs = this.mDisplayAccessUIDs.get(displayId);
            z = (displayUIDs == null || displayUIDs.indexOf(uid) == -1) ? false : true;
        }
        return z;
    }

    private IBinder getDisplayToken(int displayId) {
        DisplayDevice device;
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null && (device = display.getPrimaryDisplayDeviceLocked()) != null) {
                return device.getDisplayTokenLocked();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SurfaceControl.ScreenshotGraphicBuffer systemScreenshotInternal(int displayId) {
        synchronized (this.mSyncRoot) {
            IBinder token = getDisplayToken(displayId);
            if (token == null) {
                return null;
            }
            LogicalDisplay logicalDisplay = this.mLogicalDisplays.get(displayId);
            if (logicalDisplay == null) {
                return null;
            }
            DisplayInfo displayInfo = logicalDisplay.getDisplayInfoLocked();
            return SurfaceControl.screenshotToBufferWithSecureLayersUnsafe(token, new Rect(), displayInfo.getNaturalWidth(), displayInfo.getNaturalHeight(), false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SurfaceControl.ScreenshotGraphicBuffer userScreenshotInternal(int displayId) {
        int rotation;
        synchronized (this.mSyncRoot) {
            IBinder token = getDisplayToken(displayId);
            if (token == null) {
                return null;
            }
            LogicalDisplay logicalDisplay = this.mLogicalDisplays.get(displayId);
            if (logicalDisplay == null) {
                return null;
            }
            DisplayInfo displayInfo = logicalDisplay.getDisplayInfoLocked();
            Display display = DisplayManagerGlobal.getInstance().getRealDisplay(displayId);
            if (display == null) {
                return null;
            }
            Point displaySize = new Point();
            display.getRealSize(displaySize);
            int rotation2 = displayInfo.rotation;
            int rotation3 = 3;
            if (rotation2 == 1 || rotation2 == 3) {
                if (rotation2 != 1) {
                    rotation3 = 1;
                }
                rotation = rotation3;
            } else {
                rotation = rotation2;
            }
            return SurfaceControl.screenshotToBuffer(token, new Rect(), displaySize.x, displaySize.y, false, rotation);
        }
    }

    DisplayedContentSamplingAttributes getDisplayedContentSamplingAttributesInternal(int displayId) {
        IBinder token = getDisplayToken(displayId);
        if (token == null) {
            return null;
        }
        return SurfaceControl.getDisplayedContentSamplingAttributes(token);
    }

    boolean setDisplayedContentSamplingEnabledInternal(int displayId, boolean enable, int componentMask, int maxFrames) {
        IBinder token = getDisplayToken(displayId);
        if (token == null) {
            return false;
        }
        return SurfaceControl.setDisplayedContentSamplingEnabled(token, enable, componentMask, maxFrames);
    }

    DisplayedContentSample getDisplayedContentSampleInternal(int displayId, long maxFrames, long timestamp) {
        IBinder token = getDisplayToken(displayId);
        if (token == null) {
            return null;
        }
        return SurfaceControl.getDisplayedContentSample(token, maxFrames, timestamp);
    }

    void resetBrightnessConfiguration() {
        setBrightnessConfigurationForUserInternal(null, this.mContext.getUserId(), this.mContext.getPackageName());
    }

    void setAutoBrightnessLoggingEnabled(boolean enabled) {
        if (this.mDisplayPowerController != null) {
            synchronized (this.mSyncRoot) {
                this.mDisplayPowerController.setAutoBrightnessLoggingEnabled(enabled);
            }
        }
    }

    void setDisplayWhiteBalanceLoggingEnabled(boolean enabled) {
        if (this.mDisplayPowerController != null) {
            synchronized (this.mSyncRoot) {
                this.mDisplayPowerController.setDisplayWhiteBalanceLoggingEnabled(enabled);
            }
        }
    }

    void setDisplayModeDirectorLoggingEnabled(boolean enabled) {
        synchronized (this.mSyncRoot) {
            if (this.mDisplayModeDirector != null) {
                this.mDisplayModeDirector.setLoggingEnabled(enabled);
            }
        }
    }

    void setAmbientColorTemperatureOverride(float cct) {
        if (this.mDisplayPowerController != null) {
            synchronized (this.mSyncRoot) {
                this.mDisplayPowerController.setAmbientColorTemperatureOverride(cct);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDesiredDisplayModeSpecsChangedInternal() {
        boolean changed = false;
        synchronized (this.mSyncRoot) {
            int count = this.mLogicalDisplays.size();
            for (int i = 0; i < count; i++) {
                LogicalDisplay display = this.mLogicalDisplays.valueAt(i);
                int displayId = this.mLogicalDisplays.keyAt(i);
                DisplayModeDirector.DesiredDisplayModeSpecs desiredDisplayModeSpecs = this.mDisplayModeDirector.getDesiredDisplayModeSpecs(displayId);
                DisplayModeDirector.DesiredDisplayModeSpecs existingDesiredDisplayModeSpecs = display.getDesiredDisplayModeSpecsLocked();
                if (!desiredDisplayModeSpecs.equals(existingDesiredDisplayModeSpecs)) {
                    display.setDesiredDisplayModeSpecsLocked(desiredDisplayModeSpecs);
                    changed = true;
                }
            }
            if (changed) {
                scheduleTraversalLocked(false);
            }
        }
    }

    private void clearViewportsLocked() {
        this.mViewports.clear();
    }

    private Optional<Integer> getViewportType(DisplayDeviceInfo info) {
        if ((info.flags & 1) != 0) {
            return Optional.of(1);
        }
        if (info.touch == 2) {
            return Optional.of(2);
        }
        if (info.touch == 3 && !TextUtils.isEmpty(info.uniqueId)) {
            return Optional.of(3);
        }
        return Optional.empty();
    }

    private void configureDisplayLocked(SurfaceControl.Transaction t, DisplayDevice device) {
        DisplayDeviceInfo info = device.getDisplayDeviceInfoLocked();
        boolean ownContent = (info.flags & 128) != 0;
        LogicalDisplay display = findLogicalDisplayForDeviceLocked(device);
        if (!ownContent) {
            if (display != null && !display.hasContentLocked()) {
                display = this.mLogicalDisplays.get(device.getDisplayIdToMirrorLocked());
            }
            if (display == null) {
                display = this.mLogicalDisplays.get(0);
            }
        }
        if (display == null) {
            Slog.w(TAG, "Missing logical display to use for physical display device: " + device.getDisplayDeviceInfoLocked());
            return;
        }
        if (info.state == 1) {
            Slog.e(TAG, "xuyong-configureDisplayLocked, displayId = " + display.getDisplayIdLocked() + ", info = " + info + ", mGlobalDisplayState = " + Display.stateToString(this.mGlobalDisplayState));
        }
        display.configureDisplayLocked(t, device, info.state == 1);
        Optional<Integer> viewportType = getViewportType(info);
        if (viewportType.isPresent()) {
            populateViewportLocked(viewportType.get().intValue(), display.getDisplayIdLocked(), device, info);
        }
    }

    private DisplayViewport getViewportLocked(int viewportType, String uniqueId) {
        if (viewportType != 1 && viewportType != 2 && viewportType != 3) {
            Slog.wtf(TAG, "Cannot call getViewportByTypeLocked for type " + DisplayViewport.typeToString(viewportType));
            return null;
        }
        if (viewportType != 3) {
            uniqueId = "";
        }
        int count = this.mViewports.size();
        for (int i = 0; i < count; i++) {
            DisplayViewport viewport = this.mViewports.get(i);
            if (viewport.type == viewportType && uniqueId.equals(viewport.uniqueId)) {
                return viewport;
            }
        }
        DisplayViewport viewport2 = new DisplayViewport();
        viewport2.type = viewportType;
        viewport2.uniqueId = uniqueId;
        this.mViewports.add(viewport2);
        return viewport2;
    }

    private void populateViewportLocked(int viewportType, int displayId, DisplayDevice device, DisplayDeviceInfo info) {
        DisplayViewport viewport = getViewportLocked(viewportType, info.uniqueId);
        device.populateViewportLocked(viewport);
        viewport.valid = true;
        viewport.displayId = displayId;
        viewport.isActive = Display.isActiveState(info.state);
    }

    private LogicalDisplay findLogicalDisplayForDeviceLocked(DisplayDevice device) {
        int count = this.mLogicalDisplays.size();
        for (int i = 0; i < count; i++) {
            LogicalDisplay display = this.mLogicalDisplays.valueAt(i);
            if (display.getPrimaryDisplayDeviceLocked() == device) {
                return display;
            }
        }
        return null;
    }

    private void sendDisplayEventLocked(int displayId, int event) {
        Message msg = this.mHandler.obtainMessage(3, displayId, event);
        this.mHandler.sendMessage(msg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleTraversalLocked(boolean inTraversal) {
        if (!this.mPendingTraversal && this.mWindowManagerInternal != null) {
            this.mPendingTraversal = true;
            if (!inTraversal) {
                this.mHandler.sendEmptyMessage(4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverDisplayEvent(int displayId, int event) {
        int count;
        synchronized (this.mSyncRoot) {
            count = this.mCallbacks.size();
            this.mTempCallbacks.clear();
            for (int i = 0; i < count; i++) {
                this.mTempCallbacks.add(this.mCallbacks.valueAt(i));
            }
        }
        for (int i2 = 0; i2 < count; i2++) {
            this.mTempCallbacks.get(i2).notifyDisplayEventAsync(displayId, event);
        }
        this.mTempCallbacks.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IMediaProjectionManager getProjectionService() {
        if (this.mProjectionService == null) {
            IBinder b = ServiceManager.getService("media_projection");
            this.mProjectionService = IMediaProjectionManager.Stub.asInterface(b);
        }
        return this.mProjectionService;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserManager getUserManager() {
        return (UserManager) this.mContext.getSystemService(UserManager.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpInternal(PrintWriter pw) {
        pw.println("DISPLAY MANAGER (dumpsys display)");
        synchronized (this.mSyncRoot) {
            pw.println("  mOnlyCode=" + this.mOnlyCore);
            pw.println("  mSafeMode=" + this.mSafeMode);
            pw.println("  mPendingTraversal=" + this.mPendingTraversal);
            pw.println("  mGlobalDisplayState=" + Display.stateToString(this.mGlobalDisplayState));
            pw.println("  mNextNonDefaultDisplayId=" + this.mNextNonDefaultDisplayId);
            pw.println("  mNextVirtualDisplayId=" + this.mNextVirtualDisplayId);
            pw.println("  mViewports=" + this.mViewports);
            pw.println("  mDefaultDisplayDefaultColorMode=" + this.mDefaultDisplayDefaultColorMode);
            pw.println("  mSingleDisplayDemoMode=" + this.mSingleDisplayDemoMode);
            pw.println("  mWifiDisplayScanRequestCount=" + this.mWifiDisplayScanRequestCount);
            pw.println("  mStableDisplaySize=" + this.mStableDisplaySize);
            pw.println("  mMinimumBrightnessCurve=" + this.mMinimumBrightnessCurve);
            PrintWriter indentingPrintWriter = new IndentingPrintWriter(pw, "    ");
            indentingPrintWriter.increaseIndent();
            pw.println();
            pw.println("Display Adapters: size=" + this.mDisplayAdapters.size());
            for (DisplayAdapter adapter : this.mDisplayAdapters) {
                pw.println("  " + adapter.getName());
                adapter.dumpLocked(indentingPrintWriter);
            }
            pw.println();
            pw.println("Display Devices: size=" + this.mDisplayDevices.size());
            for (DisplayDevice device : this.mDisplayDevices) {
                pw.println("  " + device.getDisplayDeviceInfoLocked());
                device.dumpLocked(indentingPrintWriter);
            }
            int logicalDisplayCount = this.mLogicalDisplays.size();
            pw.println();
            pw.println("Logical Displays: size=" + logicalDisplayCount);
            for (int i = 0; i < logicalDisplayCount; i++) {
                int displayId = this.mLogicalDisplays.keyAt(i);
                LogicalDisplay display = this.mLogicalDisplays.valueAt(i);
                pw.println("  Display " + displayId + ":");
                display.dumpLocked(indentingPrintWriter);
            }
            pw.println();
            this.mDisplayModeDirector.dump(pw);
            int callbackCount = this.mCallbacks.size();
            pw.println();
            pw.println("Callbacks: size=" + callbackCount);
            for (int i2 = 0; i2 < callbackCount; i2++) {
                CallbackRecord callback = this.mCallbacks.valueAt(i2);
                pw.println("  " + i2 + ": mPid=" + callback.mPid + ", mWifiDisplayScanRequested=" + callback.mWifiDisplayScanRequested);
            }
            if (this.mDisplayPowerController != null) {
                this.mDisplayPowerController.dump(pw);
            }
            pw.println();
            this.mPersistentDataStore.dump(pw);
        }
    }

    private static float[] getFloatArray(TypedArray array) {
        int length = array.length();
        float[] floatArray = new float[length];
        for (int i = 0; i < length; i++) {
            floatArray[i] = array.getFloat(i, Float.NaN);
        }
        array.recycle();
        return floatArray;
    }

    static class Injector {
        Injector() {
        }

        VirtualDisplayAdapter getVirtualDisplayAdapter(SyncRoot syncRoot, Context context, Handler handler, DisplayAdapter.Listener displayAdapterListener) {
            return new VirtualDisplayAdapter(syncRoot, context, handler, displayAdapterListener);
        }

        long getDefaultDisplayDelayTimeout() {
            return 10000L;
        }
    }

    DisplayDeviceInfo getDisplayDeviceInfoInternal(int displayId) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null) {
                DisplayDevice displayDevice = display.getPrimaryDisplayDeviceLocked();
                return displayDevice.getDisplayDeviceInfoLocked();
            }
            return null;
        }
    }

    int getDisplayIdToMirrorInternal(int displayId) {
        synchronized (this.mSyncRoot) {
            LogicalDisplay display = this.mLogicalDisplays.get(displayId);
            if (display != null) {
                DisplayDevice displayDevice = display.getPrimaryDisplayDeviceLocked();
                return displayDevice.getDisplayIdToMirrorLocked();
            }
            return -1;
        }
    }

    Surface getVirtualDisplaySurfaceInternal(IBinder appToken) {
        synchronized (this.mSyncRoot) {
            if (this.mVirtualDisplayAdapter == null) {
                return null;
            }
            return this.mVirtualDisplayAdapter.getVirtualDisplaySurfaceLocked(appToken);
        }
    }

    private final class DisplayManagerHandler extends Handler {
        public DisplayManagerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            boolean changed;
            switch (msg.what) {
                case 1:
                    DisplayManagerService.this.registerDefaultDisplayAdapters();
                    return;
                case 2:
                    DisplayManagerService.this.registerAdditionalDisplayAdapters();
                    return;
                case 3:
                    DisplayManagerService.this.deliverDisplayEvent(msg.arg1, msg.arg2);
                    return;
                case 4:
                    DisplayManagerService.this.mWindowManagerInternal.requestTraversalFromDisplayManager();
                    return;
                case 5:
                    synchronized (DisplayManagerService.this.mSyncRoot) {
                        changed = !DisplayManagerService.this.mTempViewports.equals(DisplayManagerService.this.mViewports);
                        if (changed) {
                            DisplayManagerService.this.mTempViewports.clear();
                            for (DisplayViewport d : DisplayManagerService.this.mViewports) {
                                DisplayManagerService.this.mTempViewports.add(d.makeCopy());
                            }
                        }
                        break;
                    }
                    if (changed) {
                        DisplayManagerService.this.mInputManagerInternal.setDisplayViewports(DisplayManagerService.this.mTempViewports);
                        return;
                    }
                    return;
                case 6:
                    DisplayManagerService.this.loadBrightnessConfiguration();
                    return;
                default:
                    return;
            }
        }
    }

    private final class DisplayAdapterListener implements DisplayAdapter.Listener {
        private DisplayAdapterListener() {
        }

        @Override // com.android.server.display.DisplayAdapter.Listener
        public void onDisplayDeviceEvent(DisplayDevice device, int event) {
            if (event == 1) {
                DisplayManagerService.this.handleDisplayDeviceAdded(device);
            } else if (event == 2) {
                DisplayManagerService.this.handleDisplayDeviceChanged(device);
            } else if (event == 3) {
                DisplayManagerService.this.handleDisplayDeviceRemoved(device);
            }
        }

        @Override // com.android.server.display.DisplayAdapter.Listener
        public void onTraversalRequested() {
            synchronized (DisplayManagerService.this.mSyncRoot) {
                DisplayManagerService.this.scheduleTraversalLocked(false);
            }
        }
    }

    private final class CallbackRecord implements IBinder.DeathRecipient {
        private final IDisplayManagerCallback mCallback;
        public final int mPid;
        public boolean mWifiDisplayScanRequested;

        public CallbackRecord(int pid, IDisplayManagerCallback callback) {
            this.mPid = pid;
            this.mCallback = callback;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            DisplayManagerService.this.onCallbackDied(this);
        }

        public void notifyDisplayEventAsync(int displayId, int event) {
            try {
                this.mCallback.onDisplayEvent(displayId, event);
            } catch (RemoteException ex) {
                Slog.w(DisplayManagerService.TAG, "Failed to notify process " + this.mPid + " that displays changed, assuming it died.", ex);
                binderDied();
            }
        }
    }

    final class BinderService extends IDisplayManager.Stub {
        BinderService() {
        }

        public DisplayInfo getDisplayInfo(int displayId) {
            int callingUid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.getDisplayInfoInternal(displayId, callingUid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public int[] getDisplayIds() {
            int callingUid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.getDisplayIdsInternal(callingUid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public boolean isUidPresentOnDisplay(int uid, int displayId) {
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.isUidPresentOnDisplayInternal(uid, displayId);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public Point getStableDisplaySize() {
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.getStableDisplaySizeInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void registerCallback(IDisplayManagerCallback callback) {
            if (callback == null) {
                throw new IllegalArgumentException("listener must not be null");
            }
            int callingPid = Binder.getCallingPid();
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.registerCallbackInternal(callback, callingPid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void startWifiDisplayScan() {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to start wifi display scans");
            int callingPid = Binder.getCallingPid();
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.startWifiDisplayScanInternal(callingPid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void stopWifiDisplayScan() {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to stop wifi display scans");
            int callingPid = Binder.getCallingPid();
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.stopWifiDisplayScanInternal(callingPid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void connectWifiDisplay(String address) {
            if (address != null) {
                DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to connect to a wifi display");
                long token = Binder.clearCallingIdentity();
                try {
                    DisplayManagerService.this.connectWifiDisplayInternal(address);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            }
            throw new IllegalArgumentException("address must not be null");
        }

        public void disconnectWifiDisplay() {
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.disconnectWifiDisplayInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void renameWifiDisplay(String address, String alias) {
            if (address != null) {
                DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to rename to a wifi display");
                long token = Binder.clearCallingIdentity();
                try {
                    DisplayManagerService.this.renameWifiDisplayInternal(address, alias);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            }
            throw new IllegalArgumentException("address must not be null");
        }

        public void forgetWifiDisplay(String address) {
            if (address != null) {
                DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to forget to a wifi display");
                long token = Binder.clearCallingIdentity();
                try {
                    DisplayManagerService.this.forgetWifiDisplayInternal(address);
                    return;
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            }
            throw new IllegalArgumentException("address must not be null");
        }

        public void pauseWifiDisplay() {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to pause a wifi display session");
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.pauseWifiDisplayInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void resumeWifiDisplay() {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_WIFI_DISPLAY", "Permission required to resume a wifi display session");
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.resumeWifiDisplayInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public WifiDisplayStatus getWifiDisplayStatus() {
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.getWifiDisplayStatusInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void requestColorMode(int displayId, int colorMode) {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_DISPLAY_COLOR_MODE", "Permission required to change the display color mode");
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.requestColorModeInternal(displayId, colorMode);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public int createVirtualDisplay(VirtualDisplayConfig virtualDisplayConfig, IVirtualDisplayCallback callback, IMediaProjection projection, String packageName) {
            int flags;
            int flags2;
            int callingUid = Binder.getCallingUid();
            if (!validatePackageName(callingUid, packageName)) {
                throw new SecurityException("packageName must match the calling uid");
            }
            if (callback == null) {
                throw new IllegalArgumentException("appToken must not be null");
            }
            if (virtualDisplayConfig == null) {
                throw new IllegalArgumentException("virtualDisplayConfig must not be null");
            }
            Surface surface = virtualDisplayConfig.getSurface();
            int flags3 = virtualDisplayConfig.getFlags();
            if (surface != null && surface.isSingleBuffered()) {
                throw new IllegalArgumentException("Surface can't be single-buffered");
            }
            if ((flags3 & 1) != 0) {
                flags3 |= 16;
                if ((flags3 & 32) != 0) {
                    throw new IllegalArgumentException("Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE");
                }
            }
            if ((flags3 & 8) == 0) {
                flags = flags3;
            } else {
                flags = flags3 & (-17);
            }
            if (projection != null) {
                try {
                    if (!DisplayManagerService.this.getProjectionService().isValidMediaProjection(projection)) {
                        throw new SecurityException("Invalid media projection");
                    }
                    flags = projection.applyVirtualDisplayFlags(flags);
                } catch (RemoteException e) {
                    throw new SecurityException("unable to validate media projection or flags");
                }
            }
            if (callingUid != 1000 && (flags & 16) != 0 && !canProjectVideo(projection)) {
                throw new SecurityException("Requires CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display.");
            }
            if (callingUid == 1000 || (flags & 4) == 0 || canProjectSecureVideo(projection)) {
                if (callingUid != 1000 && (flags & 1024) != 0 && !checkCallingPermission("android.permission.ADD_TRUSTED_DISPLAY", "createVirtualDisplay()")) {
                    EventLog.writeEvent(1397638484, "162627132", Integer.valueOf(callingUid), "Attempt to create a trusted display without holding permission!");
                    throw new SecurityException("Requires ADD_TRUSTED_DISPLAY permission to create a trusted virtual display.");
                }
                if ((flags & 1024) != 0) {
                    flags2 = flags;
                } else {
                    flags2 = flags & (-513);
                }
                if ((flags2 & 1536) == 512 && !checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW", "createVirtualDisplay()")) {
                    throw new SecurityException("Requires INTERNAL_SYSTEM_WINDOW permission");
                }
                long token = Binder.clearCallingIdentity();
                try {
                    return DisplayManagerService.this.createVirtualDisplayInternal(callback, projection, callingUid, packageName, surface, flags2, virtualDisplayConfig);
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            }
            throw new SecurityException("Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display.");
        }

        public void resizeVirtualDisplay(IVirtualDisplayCallback callback, int width, int height, int densityDpi) {
            if (width <= 0 || height <= 0 || densityDpi <= 0) {
                throw new IllegalArgumentException("width, height, and densityDpi must be greater than 0");
            }
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.resizeVirtualDisplayInternal(callback.asBinder(), width, height, densityDpi);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void setVirtualDisplaySurface(IVirtualDisplayCallback callback, Surface surface) {
            if (surface != null && surface.isSingleBuffered()) {
                throw new IllegalArgumentException("Surface can't be single-buffered");
            }
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.setVirtualDisplaySurfaceInternal(callback.asBinder(), surface);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void releaseVirtualDisplay(IVirtualDisplayCallback callback) {
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.releaseVirtualDisplayInternal(callback.asBinder());
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void setVirtualDisplayState(IVirtualDisplayCallback callback, boolean isOn) {
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.setVirtualDisplayStateInternal(callback.asBinder(), isOn);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(DisplayManagerService.this.mContext, DisplayManagerService.TAG, pw)) {
                long token = Binder.clearCallingIdentity();
                try {
                    DisplayManagerService.this.dumpInternal(pw);
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            }
        }

        public ParceledListSlice<BrightnessChangeEvent> getBrightnessEvents(String callingPackage) {
            ParceledListSlice<BrightnessChangeEvent> brightnessEvents;
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.BRIGHTNESS_SLIDER_USAGE", "Permission to read brightness events.");
            int callingUid = Binder.getCallingUid();
            AppOpsManager appOpsManager = (AppOpsManager) DisplayManagerService.this.mContext.getSystemService(AppOpsManager.class);
            int mode = appOpsManager.noteOp(43, callingUid, callingPackage);
            boolean hasUsageStats = true;
            if (mode == 3) {
                if (DisplayManagerService.this.mContext.checkCallingPermission("android.permission.PACKAGE_USAGE_STATS") != 0) {
                    hasUsageStats = false;
                }
            } else if (mode != 0) {
                hasUsageStats = false;
            }
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    brightnessEvents = DisplayManagerService.this.mDisplayPowerController.getBrightnessEvents(userId, hasUsageStats);
                }
                Binder.restoreCallingIdentity(token);
                return brightnessEvents;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public ParceledListSlice<AmbientBrightnessDayStats> getAmbientBrightnessStats() {
            ParceledListSlice<AmbientBrightnessDayStats> ambientBrightnessStats;
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.ACCESS_AMBIENT_LIGHT_STATS", "Permission required to to access ambient light stats.");
            int callingUid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(callingUid);
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    ambientBrightnessStats = DisplayManagerService.this.mDisplayPowerController.getAmbientBrightnessStats(userId);
                }
                Binder.restoreCallingIdentity(token);
                return ambientBrightnessStats;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setBrightnessConfigurationForUser(BrightnessConfiguration c, int userId, String packageName) {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_DISPLAY_BRIGHTNESS", "Permission required to change the display's brightness configuration");
            if (userId != UserHandle.getCallingUserId()) {
                DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", "Permission required to change the display brightness configuration of another user");
            }
            if (packageName != null && !validatePackageName(getCallingUid(), packageName)) {
                packageName = null;
            }
            long token = Binder.clearCallingIdentity();
            try {
                DisplayManagerService.this.setBrightnessConfigurationForUserInternal(c, userId, packageName);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public BrightnessConfiguration getBrightnessConfigurationForUser(int userId) {
            BrightnessConfiguration config;
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_DISPLAY_BRIGHTNESS", "Permission required to read the display's brightness configuration");
            if (userId != UserHandle.getCallingUserId()) {
                DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS", "Permission required to read the display brightness configuration of another user");
            }
            long token = Binder.clearCallingIdentity();
            try {
                int userSerial = DisplayManagerService.this.getUserManager().getUserSerialNumber(userId);
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    config = DisplayManagerService.this.mPersistentDataStore.getBrightnessConfiguration(userSerial);
                    if (config == null) {
                        config = DisplayManagerService.this.mDisplayPowerController.getDefaultBrightnessConfiguration();
                    }
                }
                Binder.restoreCallingIdentity(token);
                return config;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public BrightnessConfiguration getDefaultBrightnessConfiguration() {
            BrightnessConfiguration defaultBrightnessConfiguration;
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONFIGURE_DISPLAY_BRIGHTNESS", "Permission required to read the display's default brightness configuration");
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    defaultBrightnessConfiguration = DisplayManagerService.this.mDisplayPowerController.getDefaultBrightnessConfiguration();
                }
                Binder.restoreCallingIdentity(token);
                return defaultBrightnessConfiguration;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public boolean isMinimalPostProcessingRequested(int displayId) {
            boolean requestedMinimalPostProcessingLocked;
            synchronized (DisplayManagerService.this.mSyncRoot) {
                requestedMinimalPostProcessingLocked = ((LogicalDisplay) DisplayManagerService.this.mLogicalDisplays.get(displayId)).getRequestedMinimalPostProcessingLocked();
            }
            return requestedMinimalPostProcessingLocked;
        }

        public void setTemporaryBrightness(float brightness) {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONTROL_DISPLAY_BRIGHTNESS", "Permission required to set the display's brightness");
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    DisplayManagerService.this.mDisplayPowerController.setTemporaryBrightness(brightness);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setTemporaryAutoBrightnessAdjustment(float adjustment) {
            DisplayManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.CONTROL_DISPLAY_BRIGHTNESS", "Permission required to set the display's auto brightness adjustment");
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    DisplayManagerService.this.mDisplayPowerController.setTemporaryAutoBrightnessAdjustment(adjustment);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            new DisplayManagerShellCommand(DisplayManagerService.this).exec(this, in, out, err, args, callback, resultReceiver);
        }

        public Curve getMinimumBrightnessCurve() {
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.getMinimumBrightnessCurveInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public int getPreferredWideGamutColorSpaceId() {
            long token = Binder.clearCallingIdentity();
            try {
                return DisplayManagerService.this.getPreferredWideGamutColorSpaceIdInternal();
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        private boolean validatePackageName(int uid, String packageName) {
            String[] packageNames;
            if (packageName != null && (packageNames = DisplayManagerService.this.mContext.getPackageManager().getPackagesForUid(uid)) != null) {
                for (String n : packageNames) {
                    if (n.equals(packageName)) {
                        return true;
                    }
                }
            }
            return false;
        }

        private boolean canProjectVideo(IMediaProjection projection) {
            if (projection != null) {
                try {
                    if (projection.canProjectVideo()) {
                        return true;
                    }
                } catch (RemoteException e) {
                    Slog.e(DisplayManagerService.TAG, "Unable to query projection service for permissions", e);
                }
            }
            if (checkCallingPermission("android.permission.CAPTURE_VIDEO_OUTPUT", "canProjectVideo()")) {
                return true;
            }
            return canProjectSecureVideo(projection);
        }

        private boolean canProjectSecureVideo(IMediaProjection projection) {
            if (projection != null) {
                try {
                    if (projection.canProjectSecureVideo()) {
                        return true;
                    }
                } catch (RemoteException e) {
                    Slog.e(DisplayManagerService.TAG, "Unable to query projection service for permissions", e);
                }
            }
            return checkCallingPermission("android.permission.CAPTURE_SECURE_VIDEO_OUTPUT", "canProjectSecureVideo()");
        }

        private boolean checkCallingPermission(String permission, String func) {
            if (DisplayManagerService.this.mContext.checkCallingPermission(permission) == 0) {
                return true;
            }
            String msg = "Permission Denial: " + func + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires " + permission;
            Slog.w(DisplayManagerService.TAG, msg);
            return false;
        }

        public int[] getDisplayIdsForScreenType(int screenType) {
            int[] displayIdsForScreenTypeInternal;
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    displayIdsForScreenTypeInternal = DisplayManagerService.this.getDisplayIdsForScreenTypeInternal(screenType);
                }
                Binder.restoreCallingIdentity(token);
                return displayIdsForScreenTypeInternal;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public int getDefaultDisplayIdForScreenType(int screenType) {
            int defaultDisplayIdForScreenTypeInternal;
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    defaultDisplayIdForScreenTypeInternal = DisplayManagerService.this.getDefaultDisplayIdForScreenTypeInternal(screenType);
                }
                Binder.restoreCallingIdentity(token);
                return defaultDisplayIdForScreenTypeInternal;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public int getScreenTypeForDisplayId(int displayId) {
            int screenTypeForDisplayIdInternal;
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (DisplayManagerService.this.mSyncRoot) {
                    screenTypeForDisplayIdInternal = DisplayManagerService.this.getScreenTypeForDisplayIdInternal(displayId);
                }
                Binder.restoreCallingIdentity(token);
                return screenTypeForDisplayIdInternal;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }
    }

    private final class LocalService extends DisplayManagerInternal {
        private LocalService() {
        }

        public void initPowerManagement(final DisplayManagerInternal.DisplayPowerCallbacks callbacks, Handler handler, SensorManager sensorManager) {
            synchronized (DisplayManagerService.this.mSyncRoot) {
                DisplayBlanker blanker = new DisplayBlanker() { // from class: com.android.server.display.DisplayManagerService.LocalService.1
                    @Override // com.android.server.display.DisplayBlanker
                    public void requestDisplayState(int state, float brightness) {
                        if (state == 1) {
                            DisplayManagerService.this.requestGlobalDisplayStateInternal(state, brightness);
                        }
                        callbacks.onDisplayStateChange(state);
                        if (state != 1) {
                            DisplayManagerService.this.requestGlobalDisplayStateInternal(state, brightness);
                        }
                    }
                };
                DisplayManagerService.this.mDisplayPowerController = new DisplayPowerController(DisplayManagerService.this.mContext, callbacks, handler, sensorManager, blanker, (DisplayDevice) DisplayManagerService.this.mDisplayDevices.get(0));
                DisplayManagerService.this.mSensorManager = sensorManager;
            }
            DisplayManagerService.this.mHandler.sendEmptyMessage(6);
        }

        public boolean requestPowerState(DisplayManagerInternal.DisplayPowerRequest request, boolean waitForNegativeProximity) {
            boolean zRequestPowerState;
            synchronized (DisplayManagerService.this.mSyncRoot) {
                zRequestPowerState = DisplayManagerService.this.mDisplayPowerController.requestPowerState(request, waitForNegativeProximity);
            }
            return zRequestPowerState;
        }

        public boolean isProximitySensorAvailable() {
            boolean zIsProximitySensorAvailable;
            synchronized (DisplayManagerService.this.mSyncRoot) {
                zIsProximitySensorAvailable = DisplayManagerService.this.mDisplayPowerController.isProximitySensorAvailable();
            }
            return zIsProximitySensorAvailable;
        }

        public SurfaceControl.ScreenshotGraphicBuffer systemScreenshot(int displayId) {
            return DisplayManagerService.this.systemScreenshotInternal(displayId);
        }

        public SurfaceControl.ScreenshotGraphicBuffer userScreenshot(int displayId) {
            return DisplayManagerService.this.userScreenshotInternal(displayId);
        }

        public DisplayInfo getDisplayInfo(int displayId) {
            return DisplayManagerService.this.getDisplayInfoInternal(displayId, Process.myUid());
        }

        public Point getDisplayPosition(int displayId) {
            synchronized (DisplayManagerService.this.mSyncRoot) {
                LogicalDisplay display = (LogicalDisplay) DisplayManagerService.this.mLogicalDisplays.get(displayId);
                if (display != null) {
                    return display.getDisplayPosition();
                }
                return null;
            }
        }

        public void registerDisplayTransactionListener(DisplayManagerInternal.DisplayTransactionListener listener) {
            if (listener != null) {
                DisplayManagerService.this.registerDisplayTransactionListenerInternal(listener);
                return;
            }
            throw new IllegalArgumentException("listener must not be null");
        }

        public void unregisterDisplayTransactionListener(DisplayManagerInternal.DisplayTransactionListener listener) {
            if (listener != null) {
                DisplayManagerService.this.unregisterDisplayTransactionListenerInternal(listener);
                return;
            }
            throw new IllegalArgumentException("listener must not be null");
        }

        public void setDisplayInfoOverrideFromWindowManager(int displayId, DisplayInfo info) {
            DisplayManagerService.this.setDisplayInfoOverrideFromWindowManagerInternal(displayId, info);
        }

        public void getNonOverrideDisplayInfo(int displayId, DisplayInfo outInfo) {
            DisplayManagerService.this.getNonOverrideDisplayInfoInternal(displayId, outInfo);
        }

        public void performTraversal(SurfaceControl.Transaction t) {
            DisplayManagerService.this.performTraversalInternal(t);
        }

        public void setDisplayProperties(int displayId, boolean hasContent, float requestedRefreshRate, int requestedMode, boolean requestedMinimalPostProcessing, boolean inTraversal) {
            DisplayManagerService.this.setDisplayPropertiesInternal(displayId, hasContent, requestedRefreshRate, requestedMode, requestedMinimalPostProcessing, inTraversal);
        }

        public void setDisplayOffsets(int displayId, int x, int y) {
            DisplayManagerService.this.setDisplayOffsetsInternal(displayId, x, y);
        }

        public void setDisplayScalingDisabled(int displayId, boolean disableScaling) {
            DisplayManagerService.this.setDisplayScalingDisabledInternal(displayId, disableScaling);
        }

        public void setDisplayAccessUIDs(SparseArray<IntArray> newDisplayAccessUIDs) {
            DisplayManagerService.this.setDisplayAccessUIDsInternal(newDisplayAccessUIDs);
        }

        public void persistBrightnessTrackerState() {
            synchronized (DisplayManagerService.this.mSyncRoot) {
                DisplayManagerService.this.mDisplayPowerController.persistBrightnessTrackerState();
            }
        }

        public void onOverlayChanged() {
            synchronized (DisplayManagerService.this.mSyncRoot) {
                for (int i = 0; i < DisplayManagerService.this.mDisplayDevices.size(); i++) {
                    ((DisplayDevice) DisplayManagerService.this.mDisplayDevices.get(i)).onOverlayChangedLocked();
                }
            }
        }

        public DisplayedContentSamplingAttributes getDisplayedContentSamplingAttributes(int displayId) {
            return DisplayManagerService.this.getDisplayedContentSamplingAttributesInternal(displayId);
        }

        public boolean setDisplayedContentSamplingEnabled(int displayId, boolean enable, int componentMask, int maxFrames) {
            return DisplayManagerService.this.setDisplayedContentSamplingEnabledInternal(displayId, enable, componentMask, maxFrames);
        }

        public DisplayedContentSample getDisplayedContentSample(int displayId, long maxFrames, long timestamp) {
            return DisplayManagerService.this.getDisplayedContentSampleInternal(displayId, maxFrames, timestamp);
        }

        public void ignoreProximitySensorUntilChanged() {
            DisplayManagerService.this.mDisplayPowerController.ignoreProximitySensorUntilChanged();
        }
    }

    class DesiredDisplayModeSpecsObserver implements DisplayModeDirector.DesiredDisplayModeSpecsListener {
        DesiredDisplayModeSpecsObserver() {
        }

        @Override // com.android.server.display.DisplayModeDirector.DesiredDisplayModeSpecsListener
        public void onDesiredDisplayModeSpecsChanged() {
            DisplayManagerService.this.onDesiredDisplayModeSpecsChangedInternal();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] getDisplayIdsForScreenTypeInternal(int screenType) {
        String settingsName = screenTypeToSettingsName(screenType);
        if (TextUtils.isEmpty(settingsName)) {
            return null;
        }
        return BackLightConfig.getAllDisplayIdForSettings(settingsName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDefaultDisplayIdForScreenTypeInternal(int screenType) {
        String settingsName = screenTypeToSettingsName(screenType);
        if (TextUtils.isEmpty(settingsName)) {
            return -1;
        }
        return BackLightConfig.getDefaultDisplayIdForSettings(settingsName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getScreenTypeForDisplayIdInternal(int displayId) {
        String settingsName = BackLightConfig.getSettingsNameForDisplayId(displayId);
        return settingsNameToScreenType(settingsName);
    }

    private int settingsNameToScreenType(String settingsName) {
        if (TextUtils.isEmpty(settingsName)) {
            return -1;
        }
        switch (settingsName) {
            case "instrument_board_brightness":
                return 1;
            case "main_control_brightness":
                return 2;
            case "passenger_media_brightness":
                return 3;
            case "vehicle_control_brightness":
                return 4;
            case "hud_brightness":
                return 5;
            case "vpa_brightness":
                return 6;
            case "ceiling_brightness":
                return 7;
            case "left_rear_brightness":
                return 8;
            case "right_rear_brightness":
                return 9;
            case "mid_rear_brightness":
                return 10;
            default:
                return -1;
        }
    }

    private String screenTypeToSettingsName(int screenType) {
        switch (screenType) {
            case 1:
                return "instrument_board_brightness";
            case 2:
                return "main_control_brightness";
            case 3:
                return "passenger_media_brightness";
            case 4:
                return "vehicle_control_brightness";
            case 5:
                return "hud_brightness";
            case 6:
                return "vpa_brightness";
            case 7:
                return "ceiling_brightness";
            case 8:
                return "left_rear_brightness";
            case 9:
                return "right_rear_brightness";
            case 10:
                return "mid_rear_brightness";
            default:
                return null;
        }
    }
}
