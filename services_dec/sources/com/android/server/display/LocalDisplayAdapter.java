package com.android.server.display;

import android.R;
import android.app.ActivityThread;
import android.content.Context;
import android.content.res.Resources;
import android.hardware.sidekick.SidekickInternal;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.LongSparseArray;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Spline;
import android.view.Display;
import android.view.DisplayAddress;
import android.view.DisplayCutout;
import android.view.DisplayEventReceiver;
import android.view.SurfaceControl;
import com.android.internal.BrightnessSynchronizer;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.lights.LightsManager;
import com.android.server.lights.LogicalLight;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
final class LocalDisplayAdapter extends DisplayAdapter {
    private static final boolean DEBUG = false;
    private static final int NO_DISPLAY_MODE_ID = 0;
    private static final String PROPERTY_EMULATOR_CIRCULAR = "ro.emulator.circular";
    private static final String TAG = "LocalDisplayAdapter";
    private static final String UNIQUE_ID_PREFIX = "local:";
    private final LongSparseArray<LocalDisplayDevice> mDevices;
    private PhysicalDisplayEventReceiver mPhysicalDisplayEventReceiver;

    public LocalDisplayAdapter(DisplayManagerService.SyncRoot syncRoot, Context context, Handler handler, DisplayAdapter.Listener listener) {
        super(syncRoot, context, handler, listener, TAG);
        this.mDevices = new LongSparseArray<>();
    }

    @Override // com.android.server.display.DisplayAdapter
    public void registerLocked() {
        super.registerLocked();
        this.mPhysicalDisplayEventReceiver = new PhysicalDisplayEventReceiver(getHandler().getLooper());
        for (long physicalDisplayId : SurfaceControl.getPhysicalDisplayIds()) {
            tryConnectDisplayLocked(physicalDisplayId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryConnectDisplayLocked(long physicalDisplayId) {
        int activeColorMode;
        IBinder displayToken = SurfaceControl.getPhysicalDisplayToken(physicalDisplayId);
        if (displayToken != null) {
            SurfaceControl.DisplayInfo info = SurfaceControl.getDisplayInfo(displayToken);
            if (info == null) {
                Slog.w(TAG, "No valid info found for display device " + physicalDisplayId);
                return;
            }
            SurfaceControl.DisplayConfig[] configs = SurfaceControl.getDisplayConfigs(displayToken);
            if (configs == null) {
                Slog.w(TAG, "No valid configs found for display device " + physicalDisplayId);
                return;
            }
            int activeConfig = SurfaceControl.getActiveConfig(displayToken);
            if (activeConfig < 0) {
                Slog.w(TAG, "No active config found for display device " + physicalDisplayId);
                return;
            }
            int activeColorMode2 = SurfaceControl.getActiveColorMode(displayToken);
            if (activeColorMode2 >= 0) {
                activeColorMode = activeColorMode2;
            } else {
                Slog.w(TAG, "Unable to get active color mode for display device " + physicalDisplayId);
                activeColorMode = -1;
            }
            SurfaceControl.DesiredDisplayConfigSpecs configSpecs = SurfaceControl.getDesiredDisplayConfigSpecs(displayToken);
            int[] colorModes = SurfaceControl.getDisplayColorModes(displayToken);
            Display.HdrCapabilities hdrCapabilities = SurfaceControl.getHdrCapabilities(displayToken);
            LocalDisplayDevice device = this.mDevices.get(physicalDisplayId);
            if (device != null) {
                if (device.updateDisplayProperties(configs, activeConfig, configSpecs, colorModes, activeColorMode, hdrCapabilities)) {
                    sendDisplayDeviceEventLocked(device, 2);
                }
            } else {
                boolean isDefaultDisplay = this.mDevices.size() == 0;
                LocalDisplayDevice device2 = new LocalDisplayDevice(displayToken, physicalDisplayId, info, configs, activeConfig, configSpecs, colorModes, activeColorMode, hdrCapabilities, isDefaultDisplay);
                this.mDevices.put(physicalDisplayId, device2);
                sendDisplayDeviceEventLocked(device2, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryDisconnectDisplayLocked(long physicalDisplayId) {
        LocalDisplayDevice device = this.mDevices.get(physicalDisplayId);
        if (device != null) {
            this.mDevices.remove(physicalDisplayId);
            sendDisplayDeviceEventLocked(device, 3);
        }
    }

    static int getPowerModeForState(int state) {
        if (state == 1) {
            return 0;
        }
        if (state == 6) {
            return 4;
        }
        if (state != 3) {
            return state != 4 ? 2 : 3;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class LocalDisplayDevice extends DisplayDevice {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int mActiveColorMode;
        private boolean mActiveColorModeInvalid;
        private int mActiveConfigId;
        private int mActiveModeId;
        private boolean mActiveModeInvalid;
        private boolean mAllmRequested;
        private boolean mAllmSupported;
        private final LogicalLight mBacklight;
        private float mBrightnessState;
        private int mDefaultConfigGroup;
        private int mDefaultModeId;
        private SurfaceControl.DisplayConfig[] mDisplayConfigs;
        private DisplayDeviceConfig mDisplayDeviceConfig;
        private SurfaceControl.DisplayInfo mDisplayInfo;
        private DisplayModeDirector.DesiredDisplayModeSpecs mDisplayModeSpecs;
        private boolean mDisplayModeSpecsInvalid;
        private boolean mGameContentTypeRequested;
        private boolean mGameContentTypeSupported;
        private boolean mHavePendingChanges;
        private Display.HdrCapabilities mHdrCapabilities;
        private DisplayDeviceInfo mInfo;
        private final boolean mIsDefaultDisplay;
        private Spline mNitsToHalBrightness;
        private final long mPhysicalDisplayId;
        private boolean mSidekickActive;
        private SidekickInternal mSidekickInternal;
        private int mState;
        private final ArrayList<Integer> mSupportedColorModes;
        private final SparseArray<DisplayModeRecord> mSupportedModes;
        private Spline mSystemBrightnessToNits;

        LocalDisplayDevice(IBinder displayToken, long physicalDisplayId, SurfaceControl.DisplayInfo info, SurfaceControl.DisplayConfig[] configs, int activeConfigId, SurfaceControl.DesiredDisplayConfigSpecs configSpecs, int[] colorModes, int activeColorMode, Display.HdrCapabilities hdrCapabilities, boolean isDefaultDisplay) {
            super(LocalDisplayAdapter.this, displayToken, LocalDisplayAdapter.UNIQUE_ID_PREFIX + physicalDisplayId);
            this.mSupportedModes = new SparseArray<>();
            this.mSupportedColorModes = new ArrayList<>();
            this.mState = 0;
            this.mBrightnessState = Float.NaN;
            this.mDisplayModeSpecs = new DisplayModeDirector.DesiredDisplayModeSpecs();
            this.mPhysicalDisplayId = physicalDisplayId;
            this.mIsDefaultDisplay = isDefaultDisplay;
            this.mDisplayInfo = info;
            updateDisplayProperties(configs, activeConfigId, configSpecs, colorModes, activeColorMode, hdrCapabilities);
            this.mSidekickInternal = (SidekickInternal) LocalServices.getService(SidekickInternal.class);
            if (this.mIsDefaultDisplay) {
                LightsManager lights = (LightsManager) LocalServices.getService(LightsManager.class);
                this.mBacklight = lights.getLight(0);
            } else {
                this.mBacklight = null;
            }
            this.mAllmSupported = SurfaceControl.getAutoLowLatencyModeSupport(displayToken);
            this.mGameContentTypeSupported = SurfaceControl.getGameContentTypeSupport(displayToken);
            this.mDisplayDeviceConfig = null;
            BackgroundThread.getHandler().sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.display.-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$S4bSIp6drytTEiae37oiY_7m6ng
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((LocalDisplayAdapter.LocalDisplayDevice) obj).loadDisplayConfigurationBrightnessMapping();
                }
            }, this));
        }

        @Override // com.android.server.display.DisplayDevice
        public boolean hasStableUniqueId() {
            return true;
        }

        public boolean updateDisplayProperties(SurfaceControl.DisplayConfig[] configs, int activeConfigId, SurfaceControl.DesiredDisplayConfigSpecs configSpecs, int[] colorModes, int activeColorMode, Display.HdrCapabilities hdrCapabilities) {
            boolean changed = updateDisplayConfigsLocked(configs, activeConfigId, configSpecs);
            return changed | updateColorModesLocked(colorModes, activeColorMode) | updateHdrCapabilitiesLocked(hdrCapabilities);
        }

        public boolean updateDisplayConfigsLocked(SurfaceControl.DisplayConfig[] configs, int activeConfigId, SurfaceControl.DesiredDisplayConfigSpecs configSpecs) {
            int activeBaseMode;
            this.mDisplayConfigs = (SurfaceControl.DisplayConfig[]) Arrays.copyOf(configs, configs.length);
            this.mActiveConfigId = activeConfigId;
            ArrayList<DisplayModeRecord> records = new ArrayList<>();
            boolean modesAdded = false;
            for (SurfaceControl.DisplayConfig config : configs) {
                boolean existingMode = false;
                for (int j = 0; j < records.size(); j++) {
                    if (records.get(j).hasMatchingMode(config)) {
                        existingMode = true;
                        break;
                    }
                }
                if (!existingMode) {
                    DisplayModeRecord record = findDisplayModeRecord(config);
                    if (record == null) {
                        record = new DisplayModeRecord(config);
                        modesAdded = true;
                    }
                    records.add(record);
                }
            }
            DisplayModeRecord activeRecord = null;
            for (int i = 0; i < records.size(); i++) {
                DisplayModeRecord record2 = records.get(i);
                if (record2.hasMatchingMode(configs[activeConfigId])) {
                    activeRecord = record2;
                    break;
                }
            }
            int i2 = this.mActiveModeId;
            if (i2 != 0 && i2 != activeRecord.mMode.getModeId()) {
                this.mActiveModeInvalid = true;
                LocalDisplayAdapter.this.sendTraversalRequestLocked();
            }
            if (this.mDisplayModeSpecs.baseModeId != 0 && (activeBaseMode = findMatchingModeIdLocked(configSpecs.defaultConfig)) != 0 && (this.mDisplayModeSpecs.baseModeId != activeBaseMode || this.mDisplayModeSpecs.primaryRefreshRateRange.min != configSpecs.primaryRefreshRateMin || this.mDisplayModeSpecs.primaryRefreshRateRange.max != configSpecs.primaryRefreshRateMax || this.mDisplayModeSpecs.appRequestRefreshRateRange.min != configSpecs.appRequestRefreshRateMin || this.mDisplayModeSpecs.appRequestRefreshRateRange.max != configSpecs.appRequestRefreshRateMax)) {
                this.mDisplayModeSpecsInvalid = true;
                LocalDisplayAdapter.this.sendTraversalRequestLocked();
            }
            boolean recordsChanged = records.size() != this.mSupportedModes.size() || modesAdded;
            if (!recordsChanged) {
                return false;
            }
            this.mHavePendingChanges = true;
            this.mSupportedModes.clear();
            for (DisplayModeRecord record3 : records) {
                this.mSupportedModes.put(record3.mMode.getModeId(), record3);
            }
            if (this.mDefaultModeId == 0) {
                this.mDefaultModeId = activeRecord.mMode.getModeId();
                this.mDefaultConfigGroup = configs[activeConfigId].configGroup;
            } else if (modesAdded && this.mActiveModeId != activeRecord.mMode.getModeId()) {
                Slog.d(LocalDisplayAdapter.TAG, "New display modes are added and the active mode has changed, use active mode as default mode.");
                this.mActiveModeId = activeRecord.mMode.getModeId();
                this.mDefaultModeId = activeRecord.mMode.getModeId();
                this.mDefaultConfigGroup = configs[activeConfigId].configGroup;
            } else if (findDisplayConfigIdLocked(this.mDefaultModeId, this.mDefaultConfigGroup) < 0) {
                Slog.w(LocalDisplayAdapter.TAG, "Default display mode no longer available, using currently active mode as default.");
                this.mDefaultModeId = activeRecord.mMode.getModeId();
                this.mDefaultConfigGroup = configs[activeConfigId].configGroup;
            }
            if (this.mSupportedModes.indexOfKey(this.mDisplayModeSpecs.baseModeId) < 0) {
                if (this.mDisplayModeSpecs.baseModeId != 0) {
                    Slog.w(LocalDisplayAdapter.TAG, "DisplayModeSpecs base mode no longer available, using currently active mode.");
                }
                this.mDisplayModeSpecs.baseModeId = activeRecord.mMode.getModeId();
                this.mDisplayModeSpecsInvalid = true;
            }
            if (this.mSupportedModes.indexOfKey(this.mActiveModeId) < 0) {
                if (this.mActiveModeId != 0) {
                    Slog.w(LocalDisplayAdapter.TAG, "Active display mode no longer available, reverting to default mode.");
                }
                this.mActiveModeId = this.mDefaultModeId;
                this.mActiveModeInvalid = true;
            }
            LocalDisplayAdapter.this.sendTraversalRequestLocked();
            return true;
        }

        @Override // com.android.server.display.DisplayDevice
        public DisplayDeviceConfig getDisplayDeviceConfig() {
            return this.mDisplayDeviceConfig;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadDisplayConfigurationBrightnessMapping() {
            DisplayDeviceConfig config = DisplayDeviceConfig.create(this.mPhysicalDisplayId);
            this.mDisplayDeviceConfig = config;
            if (config == null) {
                return;
            }
            float[] halNits = config.getNits();
            float[] halBrightness = this.mDisplayDeviceConfig.getBrightness();
            if (halNits == null || halBrightness == null) {
                return;
            }
            Spline nitsToHal = Spline.createSpline(halNits, halBrightness);
            Resources res = LocalDisplayAdapter.this.getOverlayContext().getResources();
            float[] sysNits = BrightnessMappingStrategy.getFloatArray(res.obtainTypedArray(R.array.config_foldedDeviceStates));
            int[] sysBrightness = res.getIntArray(R.array.config_fillBuiltInDisplayCutoutArray);
            if (sysNits.length == 0 || sysBrightness.length != sysNits.length) {
                return;
            }
            float[] sysBrightnessFloat = new float[sysBrightness.length];
            for (int i = 0; i < sysBrightness.length; i++) {
                sysBrightnessFloat[i] = sysBrightness[i];
            }
            Spline sysToNits = Spline.createSpline(sysBrightnessFloat, sysNits);
            this.mNitsToHalBrightness = nitsToHal;
            this.mSystemBrightnessToNits = sysToNits;
        }

        private boolean updateColorModesLocked(int[] colorModes, int activeColorMode) {
            if (colorModes == null) {
                return false;
            }
            List<Integer> pendingColorModes = new ArrayList<>();
            boolean colorModesAdded = false;
            for (int colorMode : colorModes) {
                if (!this.mSupportedColorModes.contains(Integer.valueOf(colorMode))) {
                    colorModesAdded = true;
                }
                pendingColorModes.add(Integer.valueOf(colorMode));
            }
            boolean colorModesChanged = pendingColorModes.size() != this.mSupportedColorModes.size() || colorModesAdded;
            if (!colorModesChanged) {
                return false;
            }
            this.mHavePendingChanges = true;
            this.mSupportedColorModes.clear();
            this.mSupportedColorModes.addAll(pendingColorModes);
            Collections.sort(this.mSupportedColorModes);
            if (!this.mSupportedColorModes.contains(Integer.valueOf(this.mActiveColorMode))) {
                if (this.mActiveColorMode != 0) {
                    Slog.w(LocalDisplayAdapter.TAG, "Active color mode no longer available, reverting to default mode.");
                    this.mActiveColorMode = 0;
                    this.mActiveColorModeInvalid = true;
                } else if (!this.mSupportedColorModes.isEmpty()) {
                    Slog.e(LocalDisplayAdapter.TAG, "Default and active color mode is no longer available! Reverting to first available mode.");
                    this.mActiveColorMode = this.mSupportedColorModes.get(0).intValue();
                    this.mActiveColorModeInvalid = true;
                } else {
                    Slog.e(LocalDisplayAdapter.TAG, "No color modes available!");
                }
            }
            return true;
        }

        private boolean updateHdrCapabilitiesLocked(Display.HdrCapabilities newHdrCapabilities) {
            if (Objects.equals(this.mHdrCapabilities, newHdrCapabilities)) {
                return false;
            }
            this.mHdrCapabilities = newHdrCapabilities;
            return true;
        }

        private DisplayModeRecord findDisplayModeRecord(SurfaceControl.DisplayConfig config) {
            for (int i = 0; i < this.mSupportedModes.size(); i++) {
                DisplayModeRecord record = this.mSupportedModes.valueAt(i);
                if (record.hasMatchingMode(config)) {
                    return record;
                }
            }
            return null;
        }

        @Override // com.android.server.display.DisplayDevice
        public void applyPendingDisplayDeviceInfoChangesLocked() {
            if (this.mHavePendingChanges) {
                this.mInfo = null;
                this.mHavePendingChanges = false;
            }
        }

        private int GetRotationByModeid(int modeid) {
            String rotationstr = "ro.rotation.mode_id" + modeid;
            int i = SystemProperties.getInt(rotationstr, 0);
            if (i == 90) {
                return 1;
            }
            if (i == 180) {
                return 2;
            }
            if (i != 270) {
                return 0;
            }
            return 3;
        }

        @Override // com.android.server.display.DisplayDevice
        public DisplayDeviceInfo getDisplayDeviceInfoLocked() {
            if (this.mInfo == null) {
                SurfaceControl.DisplayConfig config = this.mDisplayConfigs[this.mActiveConfigId];
                DisplayDeviceInfo displayDeviceInfo = new DisplayDeviceInfo();
                this.mInfo = displayDeviceInfo;
                displayDeviceInfo.width = config.width;
                this.mInfo.height = config.height;
                this.mInfo.modeId = this.mActiveModeId;
                this.mInfo.defaultModeId = this.mDefaultModeId;
                this.mInfo.supportedModes = getDisplayModes(this.mSupportedModes);
                this.mInfo.colorMode = this.mActiveColorMode;
                this.mInfo.allmSupported = this.mAllmSupported;
                this.mInfo.gameContentTypeSupported = this.mGameContentTypeSupported;
                this.mInfo.supportedColorModes = new int[this.mSupportedColorModes.size()];
                for (int i = 0; i < this.mSupportedColorModes.size(); i++) {
                    this.mInfo.supportedColorModes[i] = this.mSupportedColorModes.get(i).intValue();
                }
                this.mInfo.hdrCapabilities = this.mHdrCapabilities;
                this.mInfo.appVsyncOffsetNanos = config.appVsyncOffsetNanos;
                this.mInfo.presentationDeadlineNanos = config.presentationDeadlineNanos;
                this.mInfo.state = this.mState;
                this.mInfo.uniqueId = getUniqueId();
                DisplayAddress.Physical physicalAddress = DisplayAddress.fromPhysicalDisplayId(this.mPhysicalDisplayId);
                this.mInfo.address = physicalAddress;
                this.mInfo.densityDpi = (int) ((this.mDisplayInfo.density * 160.0f) + 0.5f);
                this.mInfo.xDpi = config.xDpi;
                this.mInfo.yDpi = config.yDpi;
                this.mInfo.deviceProductInfo = this.mDisplayInfo.deviceProductInfo;
                if (this.mDisplayInfo.secure) {
                    this.mInfo.flags = 12;
                }
                if (GetRotationByModeid(this.mInfo.modeId) != 0) {
                    DisplayDeviceInfo displayDeviceInfo2 = this.mInfo;
                    displayDeviceInfo2.rotation = GetRotationByModeid(displayDeviceInfo2.modeId);
                }
                Resources res = LocalDisplayAdapter.this.getOverlayContext().getResources();
                if (this.mIsDefaultDisplay) {
                    this.mInfo.flags |= 1;
                    if (res.getBoolean(R.bool.config_cecQuerySadLpcm_userConfigurable) || (Build.IS_EMULATOR && SystemProperties.getBoolean(LocalDisplayAdapter.PROPERTY_EMULATOR_CIRCULAR, false))) {
                        this.mInfo.flags |= 256;
                    }
                    if (res.getBoolean(R.bool.config_cecQuerySadMaxDisabled_allowed)) {
                        this.mInfo.flags |= 2048;
                    }
                    DisplayDeviceInfo displayDeviceInfo3 = this.mInfo;
                    displayDeviceInfo3.displayCutout = DisplayCutout.fromResourcesRectApproximation(res, displayDeviceInfo3.width, this.mInfo.height);
                } else {
                    if (!res.getBoolean(R.bool.config_cecQuerySadLpcmDisabled_default)) {
                        this.mInfo.flags |= 128;
                    }
                    if (isDisplayPrivate(physicalAddress)) {
                        this.mInfo.flags |= 16;
                    }
                }
                if (this.mDisplayInfo.isInternal) {
                    this.mInfo.type = 1;
                    if (this.mIsDefaultDisplay) {
                        this.mInfo.touch = 1;
                    } else {
                        this.mInfo.touch = 2;
                        this.mInfo.flags |= 64;
                    }
                    this.mInfo.flags |= 2;
                    this.mInfo.name = res.getString(R.string.data_saver_description);
                } else {
                    this.mInfo.type = 2;
                    this.mInfo.touch = 2;
                    this.mInfo.flags |= 64;
                    this.mInfo.name = LocalDisplayAdapter.this.getContext().getResources().getString(R.string.data_saver_enable_button);
                }
                this.mInfo.flags |= 8192;
            }
            return this.mInfo;
        }

        @Override // com.android.server.display.DisplayDevice
        public Runnable requestDisplayStateLocked(final int state, final float brightnessState) {
            boolean stateChanged = this.mState != state;
            final boolean brightnessChanged = (BrightnessSynchronizer.floatEquals(this.mBrightnessState, brightnessState) || this.mBacklight == null) ? false : true;
            if (stateChanged || brightnessChanged) {
                final long physicalDisplayId = this.mPhysicalDisplayId;
                final IBinder token = getDisplayTokenLocked();
                final int oldState = this.mState;
                if (stateChanged) {
                    this.mState = state;
                    updateDeviceInfoLocked();
                }
                if (brightnessChanged) {
                    this.mBrightnessState = brightnessState;
                }
                return new Runnable() { // from class: com.android.server.display.LocalDisplayAdapter.LocalDisplayDevice.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int i;
                        int i2;
                        int currentState = oldState;
                        if (Display.isSuspendedState(oldState) || oldState == 0) {
                            if (!Display.isSuspendedState(state)) {
                                setDisplayState(state);
                                currentState = state;
                            } else {
                                int i3 = state;
                                if (i3 == 4 || (i = oldState) == 4) {
                                    setDisplayState(3);
                                    currentState = 3;
                                } else if (i3 == 6 || i == 6) {
                                    setDisplayState(2);
                                    currentState = 2;
                                } else {
                                    return;
                                }
                            }
                        }
                        boolean vrModeChange = false;
                        if ((state == 5 || currentState == 5) && currentState != (i2 = state)) {
                            setVrMode(i2 == 5);
                            vrModeChange = true;
                        }
                        if (brightnessChanged || vrModeChange) {
                            setDisplayBrightness(brightnessState);
                        }
                        int i4 = state;
                        if (i4 != currentState) {
                            setDisplayState(i4);
                        }
                    }

                    private void setVrMode(boolean isVrEnabled) {
                        if (LocalDisplayDevice.this.mBacklight != null) {
                            LocalDisplayDevice.this.mBacklight.setVrMode(isVrEnabled);
                        }
                    }

                    private void setDisplayState(int state2) {
                        if (LocalDisplayDevice.this.mSidekickActive) {
                            Trace.traceBegin(131072L, "SidekickInternal#endDisplayControl");
                            try {
                                LocalDisplayDevice.this.mSidekickInternal.endDisplayControl();
                                Trace.traceEnd(131072L);
                                LocalDisplayDevice.this.mSidekickActive = false;
                            } catch (Throwable th) {
                                Trace.traceEnd(131072L);
                                throw th;
                            }
                        }
                        int mode = LocalDisplayAdapter.getPowerModeForState(state2);
                        Trace.traceBegin(131072L, "setDisplayState(id=" + physicalDisplayId + ", state=" + Display.stateToString(state2) + ")");
                        try {
                            SurfaceControl.setDisplayPowerMode(token, mode);
                            Trace.traceCounter(131072L, "DisplayPowerMode", mode);
                            Trace.traceEnd(131072L);
                            if (Display.isSuspendedState(state2) && state2 != 1 && LocalDisplayDevice.this.mSidekickInternal != null && !LocalDisplayDevice.this.mSidekickActive) {
                                Trace.traceBegin(131072L, "SidekickInternal#startDisplayControl");
                                try {
                                    LocalDisplayDevice.this.mSidekickActive = LocalDisplayDevice.this.mSidekickInternal.startDisplayControl(state2);
                                } finally {
                                    Trace.traceEnd(131072L);
                                }
                            }
                        } catch (Throwable th2) {
                            Trace.traceEnd(131072L);
                            throw th2;
                        }
                    }

                    private void setDisplayBrightness(float brightness) {
                        Trace.traceBegin(131072L, "setDisplayBrightness(id=" + physicalDisplayId + ", brightness=" + brightness + ")");
                        try {
                            if (isHalBrightnessRangeSpecified()) {
                                brightness = displayBrightnessToHalBrightness(BrightnessSynchronizer.brightnessFloatToIntRange(LocalDisplayAdapter.this.getContext(), brightness));
                            }
                            if (LocalDisplayDevice.this.mBacklight != null) {
                                LocalDisplayDevice.this.mBacklight.setBrightness(brightness);
                            }
                            Trace.traceCounter(131072L, "ScreenBrightness", BrightnessSynchronizer.brightnessFloatToInt(LocalDisplayAdapter.this.getContext(), brightness));
                        } finally {
                            Trace.traceEnd(131072L);
                        }
                    }

                    private boolean isHalBrightnessRangeSpecified() {
                        return (LocalDisplayDevice.this.mSystemBrightnessToNits == null || LocalDisplayDevice.this.mNitsToHalBrightness == null) ? false : true;
                    }

                    private float displayBrightnessToHalBrightness(float brightness) {
                        if (!isHalBrightnessRangeSpecified()) {
                            return Float.NaN;
                        }
                        if (!BrightnessSynchronizer.floatEquals(brightness, 0.0f)) {
                            float nits = LocalDisplayDevice.this.mSystemBrightnessToNits.interpolate(brightness);
                            float halBrightness = LocalDisplayDevice.this.mNitsToHalBrightness.interpolate(nits);
                            return halBrightness;
                        }
                        return -1.0f;
                    }
                };
            }
            return null;
        }

        @Override // com.android.server.display.DisplayDevice
        public void setRequestedColorModeLocked(int colorMode) {
            requestColorModeLocked(colorMode);
        }

        @Override // com.android.server.display.DisplayDevice
        public void setDesiredDisplayModeSpecsLocked(DisplayModeDirector.DesiredDisplayModeSpecs displayModeSpecs) {
            if (displayModeSpecs.baseModeId == 0) {
                return;
            }
            int baseConfigId = findDisplayConfigIdLocked(displayModeSpecs.baseModeId, this.mDefaultConfigGroup);
            if (baseConfigId < 0) {
                Slog.w(LocalDisplayAdapter.TAG, "Ignoring request for invalid base mode id " + displayModeSpecs.baseModeId);
                updateDeviceInfoLocked();
                return;
            }
            if (this.mDisplayModeSpecsInvalid || !displayModeSpecs.equals(this.mDisplayModeSpecs)) {
                this.mDisplayModeSpecsInvalid = false;
                this.mDisplayModeSpecs.copyFrom(displayModeSpecs);
                LocalDisplayAdapter.this.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.display.-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs
                    public final void accept(Object obj, Object obj2, Object obj3) {
                        ((LocalDisplayAdapter.LocalDisplayDevice) obj).setDesiredDisplayModeSpecsAsync((IBinder) obj2, (SurfaceControl.DesiredDisplayConfigSpecs) obj3);
                    }
                }, this, getDisplayTokenLocked(), new SurfaceControl.DesiredDisplayConfigSpecs(baseConfigId, this.mDisplayModeSpecs.primaryRefreshRateRange.min, this.mDisplayModeSpecs.primaryRefreshRateRange.max, this.mDisplayModeSpecs.appRequestRefreshRateRange.min, this.mDisplayModeSpecs.appRequestRefreshRateRange.max)));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDesiredDisplayModeSpecsAsync(IBinder displayToken, SurfaceControl.DesiredDisplayConfigSpecs configSpecs) {
            SurfaceControl.setDesiredDisplayConfigSpecs(displayToken, configSpecs);
            int activePhysIndex = SurfaceControl.getActiveConfig(displayToken);
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                if (updateActiveModeLocked(activePhysIndex)) {
                    updateDeviceInfoLocked();
                }
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public void onOverlayChangedLocked() {
            updateDeviceInfoLocked();
        }

        public void onActiveDisplayConfigChangedLocked(int configId) {
            if (updateActiveModeLocked(configId)) {
                updateDeviceInfoLocked();
            }
        }

        public boolean updateActiveModeLocked(int activeConfigId) {
            if (this.mActiveConfigId == activeConfigId) {
                return false;
            }
            this.mActiveConfigId = activeConfigId;
            int iFindMatchingModeIdLocked = findMatchingModeIdLocked(activeConfigId);
            this.mActiveModeId = iFindMatchingModeIdLocked;
            boolean z = iFindMatchingModeIdLocked == 0;
            this.mActiveModeInvalid = z;
            if (z) {
                Slog.w(LocalDisplayAdapter.TAG, "In unknown mode after setting allowed configs, activeConfigId=" + this.mActiveConfigId);
            }
            return true;
        }

        public void requestColorModeLocked(int colorMode) {
            if (this.mActiveColorMode == colorMode) {
                return;
            }
            if (!this.mSupportedColorModes.contains(Integer.valueOf(colorMode))) {
                Slog.w(LocalDisplayAdapter.TAG, "Unable to find color mode " + colorMode + ", ignoring request.");
                return;
            }
            this.mActiveColorMode = colorMode;
            this.mActiveColorModeInvalid = false;
            LocalDisplayAdapter.this.getHandler().sendMessage(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.display.-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ
                public final void accept(Object obj, Object obj2, Object obj3) {
                    ((LocalDisplayAdapter.LocalDisplayDevice) obj).requestColorModeAsync((IBinder) obj2, ((Integer) obj3).intValue());
                }
            }, this, getDisplayTokenLocked(), Integer.valueOf(colorMode)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestColorModeAsync(IBinder displayToken, int colorMode) {
            SurfaceControl.setActiveColorMode(displayToken, colorMode);
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                updateDeviceInfoLocked();
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public void setAutoLowLatencyModeLocked(boolean on) {
            if (this.mAllmRequested == on) {
                return;
            }
            this.mAllmRequested = on;
            if (!this.mAllmSupported) {
                Slog.d(LocalDisplayAdapter.TAG, "Unable to set ALLM because the connected display does not support ALLM.");
            } else {
                SurfaceControl.setAutoLowLatencyMode(getDisplayTokenLocked(), on);
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public void setGameContentTypeLocked(boolean on) {
            if (this.mGameContentTypeRequested == on) {
                return;
            }
            this.mGameContentTypeRequested = on;
            if (!this.mGameContentTypeSupported) {
                Slog.d(LocalDisplayAdapter.TAG, "Unable to set game content type because the connected display does not support game content type.");
            } else {
                SurfaceControl.setGameContentType(getDisplayTokenLocked(), on);
            }
        }

        @Override // com.android.server.display.DisplayDevice
        public void dumpLocked(PrintWriter pw) {
            super.dumpLocked(pw);
            pw.println("mPhysicalDisplayId=" + this.mPhysicalDisplayId);
            pw.println("mDisplayModeSpecs={" + this.mDisplayModeSpecs + "}");
            StringBuilder sb = new StringBuilder();
            sb.append("mDisplayModeSpecsInvalid=");
            sb.append(this.mDisplayModeSpecsInvalid);
            pw.println(sb.toString());
            pw.println("mActiveConfigId=" + this.mActiveConfigId);
            pw.println("mActiveModeId=" + this.mActiveModeId);
            pw.println("mActiveColorMode=" + this.mActiveColorMode);
            pw.println("mDefaultModeId=" + this.mDefaultModeId);
            pw.println("mState=" + Display.stateToString(this.mState));
            pw.println("mBrightnessState=" + this.mBrightnessState);
            pw.println("mBacklight=" + this.mBacklight);
            pw.println("mAllmSupported=" + this.mAllmSupported);
            pw.println("mAllmRequested=" + this.mAllmRequested);
            pw.println("mGameContentTypeSupported=" + this.mGameContentTypeSupported);
            pw.println("mGameContentTypeRequested=" + this.mGameContentTypeRequested);
            pw.println("mDisplayInfo=" + this.mDisplayInfo);
            pw.println("mDisplayConfigs=");
            for (int i = 0; i < this.mDisplayConfigs.length; i++) {
                pw.println("  " + this.mDisplayConfigs[i]);
            }
            pw.println("mSupportedModes=");
            for (int i2 = 0; i2 < this.mSupportedModes.size(); i2++) {
                pw.println("  " + this.mSupportedModes.valueAt(i2));
            }
            pw.print("mSupportedColorModes=" + this.mSupportedColorModes.toString());
        }

        private int findDisplayConfigIdLocked(int modeId, int configGroup) {
            int matchingConfigId = -1;
            DisplayModeRecord record = this.mSupportedModes.get(modeId);
            if (record != null) {
                int i = 0;
                while (true) {
                    SurfaceControl.DisplayConfig[] displayConfigArr = this.mDisplayConfigs;
                    if (i >= displayConfigArr.length) {
                        break;
                    }
                    SurfaceControl.DisplayConfig config = displayConfigArr[i];
                    if (record.hasMatchingMode(config)) {
                        if (matchingConfigId == -1) {
                            matchingConfigId = i;
                        }
                        if (config.configGroup == configGroup) {
                            return i;
                        }
                    }
                    i++;
                }
            }
            return matchingConfigId;
        }

        private int findMatchingModeIdLocked(int configId) {
            SurfaceControl.DisplayConfig config = this.mDisplayConfigs[configId];
            for (int i = 0; i < this.mSupportedModes.size(); i++) {
                DisplayModeRecord record = this.mSupportedModes.valueAt(i);
                if (record.hasMatchingMode(config)) {
                    return record.mMode.getModeId();
                }
            }
            return 0;
        }

        private void updateDeviceInfoLocked() {
            this.mInfo = null;
            LocalDisplayAdapter.this.sendDisplayDeviceEventLocked(this, 2);
        }

        private Display.Mode[] getDisplayModes(SparseArray<DisplayModeRecord> records) {
            int size = records.size();
            Display.Mode[] modes = new Display.Mode[size];
            for (int i = 0; i < size; i++) {
                DisplayModeRecord record = records.valueAt(i);
                modes[i] = record.mMode;
            }
            return modes;
        }

        private boolean isDisplayPrivate(DisplayAddress.Physical physicalAddress) {
            if (physicalAddress == null) {
                return false;
            }
            Resources res = LocalDisplayAdapter.this.getOverlayContext().getResources();
            int[] ports = res.getIntArray(R.array.config_displayWhiteBalanceHighLightAmbientBiases);
            if (ports != null) {
                int port = Byte.toUnsignedInt(physicalAddress.getPort());
                for (int p : ports) {
                    if (p == port) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    Context getOverlayContext() {
        return ActivityThread.currentActivityThread().getSystemUiContext();
    }

    private static final class DisplayModeRecord {
        public final Display.Mode mMode;

        DisplayModeRecord(SurfaceControl.DisplayConfig config) {
            this.mMode = DisplayAdapter.createMode(config.width, config.height, config.refreshRate);
        }

        public boolean hasMatchingMode(SurfaceControl.DisplayConfig config) {
            int modeRefreshRate = Float.floatToIntBits(this.mMode.getRefreshRate());
            int configRefreshRate = Float.floatToIntBits(config.refreshRate);
            return this.mMode.getPhysicalWidth() == config.width && this.mMode.getPhysicalHeight() == config.height && modeRefreshRate == configRefreshRate;
        }

        public String toString() {
            return "DisplayModeRecord{mMode=" + this.mMode + "}";
        }
    }

    private final class PhysicalDisplayEventReceiver extends DisplayEventReceiver {
        PhysicalDisplayEventReceiver(Looper looper) {
            super(looper, 0, 1);
        }

        public void onHotplug(long timestampNanos, long physicalDisplayId, boolean connected) {
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                try {
                    if (connected) {
                        LocalDisplayAdapter.this.tryConnectDisplayLocked(physicalDisplayId);
                    } else {
                        LocalDisplayAdapter.this.tryDisconnectDisplayLocked(physicalDisplayId);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void onConfigChanged(long timestampNanos, long physicalDisplayId, int configId) {
            synchronized (LocalDisplayAdapter.this.getSyncRoot()) {
                LocalDisplayDevice device = (LocalDisplayDevice) LocalDisplayAdapter.this.mDevices.get(physicalDisplayId);
                if (device == null) {
                    return;
                }
                device.onActiveDisplayConfigChangedLocked(configId);
            }
        }
    }
}
