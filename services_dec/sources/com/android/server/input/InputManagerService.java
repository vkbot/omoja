package com.android.server.input;

import android.R;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayViewport;
import android.hardware.input.IInputDevicesChangedListener;
import android.hardware.input.IInputManager;
import android.hardware.input.ITabletModeChangedListener;
import android.hardware.input.InputDeviceIdentifier;
import android.hardware.input.InputManagerInternal;
import android.hardware.input.KeyboardLayout;
import android.hardware.input.TouchCalibration;
import android.media.AudioManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Message;
import android.os.MessageQueue;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Display;
import android.view.IInputFilter;
import android.view.IInputFilterHost;
import android.view.IInputMonitorHost;
import android.view.InputApplicationHandle;
import android.view.InputChannel;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.InputMonitor;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.VerifiedInputEvent;
import android.view.ViewConfiguration;
import android.widget.Toast;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.XmlUtils;
import com.android.server.DisplayThread;
import com.android.server.LocalServices;
import com.android.server.Watchdog;
import com.android.server.notification.SnoozeHelper;
import com.android.server.pm.Settings;
import com.android.server.slice.SliceClientPermissions;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import libcore.io.IoUtils;
import libcore.io.Streams;

/* JADX INFO: loaded from: classes.dex */
public class InputManagerService extends IInputManager.Stub implements Watchdog.Monitor {
    public static final int BTN_MOUSE = 272;
    static final boolean DEBUG = false;
    private static final String DEEP_PRESS_ENABLED = "deep_press_enabled";
    private static final String EXCLUDED_DEVICES_PATH = "etc/excluded-input-devices.xml";
    private static final int INJECTION_TIMEOUT_MILLIS = 30000;
    private static final int INPUT_EVENT_INJECTION_FAILED = 2;
    private static final int INPUT_EVENT_INJECTION_PERMISSION_DENIED = 1;
    private static final int INPUT_EVENT_INJECTION_SUCCEEDED = 0;
    private static final int INPUT_EVENT_INJECTION_TIMED_OUT = 3;
    public static final int KEY_STATE_DOWN = 1;
    public static final int KEY_STATE_UNKNOWN = -1;
    public static final int KEY_STATE_UP = 0;
    public static final int KEY_STATE_VIRTUAL = 2;
    private static final int MSG_DELIVER_INPUT_DEVICES_CHANGED = 1;
    private static final int MSG_DELIVER_TABLET_MODE_CHANGED = 6;
    private static final int MSG_RELOAD_DEVICE_ALIASES = 5;
    private static final int MSG_RELOAD_KEYBOARD_LAYOUTS = 3;
    private static final int MSG_SWITCH_KEYBOARD_LAYOUT = 2;
    private static final int MSG_UPDATE_KEYBOARD_LAYOUTS = 4;
    private static final String PORT_ASSOCIATIONS_PATH = "etc/input-port-associations.xml";
    public static final int SW_CAMERA_LENS_COVER = 9;
    public static final int SW_CAMERA_LENS_COVER_BIT = 512;
    public static final int SW_HEADPHONE_INSERT = 2;
    public static final int SW_HEADPHONE_INSERT_BIT = 4;
    public static final int SW_JACK_BITS = 212;
    public static final int SW_JACK_PHYSICAL_INSERT = 7;
    public static final int SW_JACK_PHYSICAL_INSERT_BIT = 128;
    public static final int SW_KEYPAD_SLIDE = 10;
    public static final int SW_KEYPAD_SLIDE_BIT = 1024;
    public static final int SW_LID = 0;
    public static final int SW_LID_BIT = 1;
    public static final int SW_LINEOUT_INSERT = 6;
    public static final int SW_LINEOUT_INSERT_BIT = 64;
    public static final int SW_MICROPHONE_INSERT = 4;
    public static final int SW_MICROPHONE_INSERT_BIT = 16;
    public static final int SW_MUTE_DEVICE = 14;
    public static final int SW_MUTE_DEVICE_BIT = 16384;
    public static final int SW_TABLET_MODE = 1;
    public static final int SW_TABLET_MODE_BIT = 2;
    static final String TAG = "InputManager";
    private final Context mContext;
    private Context mDisplayContext;
    private final File mDoubleTouchGestureEnableFile;
    private boolean mInputDevicesChangedPending;
    IInputFilter mInputFilter;
    InputFilterHost mInputFilterHost;
    private boolean mKeyboardLayoutNotificationShown;
    private int mNextVibratorTokenValue;
    private NotificationManager mNotificationManager;
    private final long mPtr;
    private Toast mSwitchedKeyboardLayoutToast;
    private boolean mSystemReady;
    final boolean mUseDevInputEventForAudioJack;
    private WindowManagerCallbacks mWindowManagerCallbacks;
    private WiredAccessoryCallbacks mWiredAccessoryCallbacks;
    private final Object mTabletModeLock = new Object();
    private final SparseArray<TabletModeChangedListenerRecord> mTabletModeChangedListeners = new SparseArray<>();
    private final List<TabletModeChangedListenerRecord> mTempTabletModeChangedListenersToNotify = new ArrayList();
    private final PersistentDataStore mDataStore = new PersistentDataStore();
    private Object mInputDevicesLock = new Object();
    private InputDevice[] mInputDevices = new InputDevice[0];
    private final SparseArray<InputDevicesChangedListenerRecord> mInputDevicesChangedListeners = new SparseArray<>();
    private final ArrayList<InputDevicesChangedListenerRecord> mTempInputDevicesChangedListenersToNotify = new ArrayList<>();
    private final ArrayList<InputDevice> mTempFullKeyboards = new ArrayList<>();
    private Object mVibratorLock = new Object();
    private HashMap<IBinder, VibratorToken> mVibratorTokens = new HashMap<>();
    final Object mInputFilterLock = new Object();
    private final Object mAssociationsLock = new Object();
    private final Map<String, Integer> mRuntimeAssociations = new HashMap();
    private final InputManagerHandler mHandler = new InputManagerHandler(DisplayThread.get().getLooper());
    private final Map<String, Integer> mStaticAssociations = loadStaticInputPortAssociations();

    private interface KeyboardLayoutVisitor {
        void visitKeyboardLayout(Resources resources, int i, KeyboardLayout keyboardLayout);
    }

    public interface WindowManagerCallbacks {
        KeyEvent dispatchUnhandledKey(IBinder iBinder, KeyEvent keyEvent, int i);

        int getPointerDisplayId();

        int getPointerLayer();

        long interceptKeyBeforeDispatching(IBinder iBinder, KeyEvent keyEvent, int i);

        int interceptKeyBeforeQueueing(KeyEvent keyEvent, int i);

        int interceptMotionBeforeQueueingNonInteractive(int i, long j, int i2);

        long notifyANR(InputApplicationHandle inputApplicationHandle, IBinder iBinder, String str);

        void notifyCameraLensCoverSwitchChanged(long j, boolean z);

        void notifyConfigurationChanged();

        boolean notifyFocusChanged(IBinder iBinder, IBinder iBinder2);

        void notifyInputChannelBroken(IBinder iBinder);

        void notifyLidSwitchChanged(long j, boolean z);

        void onPointerDownOutsideFocus(IBinder iBinder);

        boolean requestPointerCapture(IBinder iBinder, boolean z);
    }

    public interface WiredAccessoryCallbacks {
        void notifyWiredAccessoryChanged(long j, int i, int i2);

        void systemReady();
    }

    private static native boolean nativeCanDispatchToDisplay(long j, int i, int i2);

    private static native void nativeCancelVibrate(long j, int i, int i2);

    private static native void nativeDisableInputDevice(long j, int i);

    private static native void nativeDisplayRemoved(long j, int i);

    private static native String nativeDump(long j);

    private static native void nativeEnableInputDevice(long j, int i);

    private static native int nativeGetKeyCodeState(long j, int i, int i2, int i3);

    private static native int nativeGetScanCodeState(long j, int i, int i2, int i3);

    private static native int nativeGetSwitchState(long j, int i, int i2, int i3);

    private static native boolean nativeHasKeys(long j, int i, int i2, int[] iArr, boolean[] zArr);

    private static native long nativeInit(InputManagerService inputManagerService, Context context, MessageQueue messageQueue);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nativeInjectInputEvent(long j, InputEvent inputEvent, int i, int i2, int i3, int i4, int i5);

    private static native boolean nativeIsInputDeviceEnabled(long j, int i);

    private static native void nativeMonitor(long j);

    private static native void nativeNotifyPortAssociationsChanged(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativePilferPointers(long j, IBinder iBinder);

    private static native void nativeRegisterInputChannel(long j, InputChannel inputChannel);

    private static native void nativeRegisterInputMonitor(long j, InputChannel inputChannel, int i, boolean z);

    private static native void nativeReloadCalibration(long j);

    private static native void nativeReloadDeviceAliases(long j);

    private static native void nativeReloadKeyboardLayouts(long j);

    private static native void nativeReloadPointerIcons(long j);

    private static native void nativeSetCustomPointerIcon(long j, PointerIcon pointerIcon);

    private static native void nativeSetDisplayViewports(long j, DisplayViewport[] displayViewportArr);

    private static native void nativeSetFocusedApplication(long j, int i, InputApplicationHandle inputApplicationHandle);

    private static native void nativeSetFocusedDisplay(long j, int i);

    private static native void nativeSetInTouchMode(long j, boolean z);

    private static native void nativeSetInputDispatchMode(long j, boolean z, boolean z2);

    private static native void nativeSetInputFilterEnabled(long j, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeSetInteractive(long j, boolean z);

    private static native void nativeSetMotionClassifierEnabled(long j, boolean z);

    private static native void nativeSetPointerCapture(long j, boolean z);

    private static native void nativeSetPointerIconType(long j, int i);

    private static native void nativeSetPointerSpeed(long j, int i);

    private static native void nativeSetShowTouches(long j, boolean z);

    private static native void nativeSetSystemUiVisibility(long j, int i);

    private static native void nativeStart(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeToggleCapsLock(long j, int i);

    private static native boolean nativeTransferTouchFocus(long j, IBinder iBinder, IBinder iBinder2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeUnregisterInputChannel(long j, InputChannel inputChannel);

    private static native VerifiedInputEvent nativeVerifyInputEvent(long j, InputEvent inputEvent);

    private static native void nativeVibrate(long j, int i, long[] jArr, int i2, int i3);

    public InputManagerService(Context context) {
        this.mContext = context;
        this.mUseDevInputEventForAudioJack = context.getResources().getBoolean(R.bool.config_cecSystemAudioControlDisabled_allowed);
        Slog.i(TAG, "Initializing input manager, mUseDevInputEventForAudioJack=" + this.mUseDevInputEventForAudioJack);
        this.mPtr = nativeInit(this, this.mContext, this.mHandler.getLooper().getQueue());
        String doubleTouchGestureEnablePath = context.getResources().getString(R.string.config_fingerprintFrrTargetComponent);
        this.mDoubleTouchGestureEnableFile = TextUtils.isEmpty(doubleTouchGestureEnablePath) ? null : new File(doubleTouchGestureEnablePath);
        LocalServices.addService(InputManagerInternal.class, new LocalService());
    }

    public void setWindowManagerCallbacks(WindowManagerCallbacks callbacks) {
        this.mWindowManagerCallbacks = callbacks;
    }

    public void setWiredAccessoryCallbacks(WiredAccessoryCallbacks callbacks) {
        this.mWiredAccessoryCallbacks = callbacks;
    }

    public void start() {
        Slog.i(TAG, "Starting input manager");
        nativeStart(this.mPtr);
        Watchdog.getInstance().addMonitor(this);
        registerPointerSpeedSettingObserver();
        registerShowTouchesSettingObserver();
        registerAccessibilityLargePointerSettingObserver();
        registerLongPressTimeoutObserver();
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.input.InputManagerService.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                InputManagerService.this.updatePointerSpeedFromSettings();
                InputManagerService.this.updateShowTouchesFromSettings();
                InputManagerService.this.updateAccessibilityLargePointerFromSettings();
                InputManagerService.this.updateDeepPressStatusFromSettings("user switched");
            }
        }, new IntentFilter("android.intent.action.USER_SWITCHED"), null, this.mHandler);
        updatePointerSpeedFromSettings();
        updateShowTouchesFromSettings();
        updateAccessibilityLargePointerFromSettings();
        updateDeepPressStatusFromSettings("just booted");
    }

    public void systemRunning() {
        this.mNotificationManager = (NotificationManager) this.mContext.getSystemService("notification");
        this.mSystemReady = true;
        IntentFilter filter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_REMOVED");
        filter.addAction("android.intent.action.PACKAGE_CHANGED");
        filter.addAction("android.intent.action.PACKAGE_REPLACED");
        filter.addDataScheme(Settings.ATTR_PACKAGE);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.input.InputManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) throws Throwable {
                InputManagerService.this.updateKeyboardLayouts();
            }
        }, filter, null, this.mHandler);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.input.InputManagerService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                InputManagerService.this.reloadDeviceAliases();
            }
        }, new IntentFilter("android.bluetooth.device.action.ALIAS_CHANGED"), null, this.mHandler);
        this.mHandler.sendEmptyMessage(5);
        this.mHandler.sendEmptyMessage(4);
        WiredAccessoryCallbacks wiredAccessoryCallbacks = this.mWiredAccessoryCallbacks;
        if (wiredAccessoryCallbacks != null) {
            wiredAccessoryCallbacks.systemReady();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadKeyboardLayouts() {
        nativeReloadKeyboardLayouts(this.mPtr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadDeviceAliases() {
        nativeReloadDeviceAliases(this.mPtr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayViewportsInternal(List<DisplayViewport> viewports) {
        nativeSetDisplayViewports(this.mPtr, (DisplayViewport[]) viewports.toArray(new DisplayViewport[0]));
    }

    public int getKeyCodeState(int deviceId, int sourceMask, int keyCode) {
        return nativeGetKeyCodeState(this.mPtr, deviceId, sourceMask, keyCode);
    }

    public int getScanCodeState(int deviceId, int sourceMask, int scanCode) {
        return nativeGetScanCodeState(this.mPtr, deviceId, sourceMask, scanCode);
    }

    public int getSwitchState(int deviceId, int sourceMask, int switchCode) {
        return nativeGetSwitchState(this.mPtr, deviceId, sourceMask, switchCode);
    }

    public boolean hasKeys(int deviceId, int sourceMask, int[] keyCodes, boolean[] keyExists) {
        if (keyCodes == null) {
            throw new IllegalArgumentException("keyCodes must not be null.");
        }
        if (keyExists == null || keyExists.length < keyCodes.length) {
            throw new IllegalArgumentException("keyExists must not be null and must be at least as large as keyCodes.");
        }
        return nativeHasKeys(this.mPtr, deviceId, sourceMask, keyCodes, keyExists);
    }

    public InputChannel monitorInput(String inputChannelName, int displayId) {
        if (inputChannelName == null) {
            throw new IllegalArgumentException("inputChannelName must not be null.");
        }
        if (displayId < 0) {
            throw new IllegalArgumentException("displayId must >= 0.");
        }
        InputChannel[] inputChannels = InputChannel.openInputChannelPair(inputChannelName);
        nativeRegisterInputMonitor(this.mPtr, inputChannels[0], displayId, false);
        inputChannels[0].dispose();
        return inputChannels[1];
    }

    public InputMonitor monitorGestureInput(String inputChannelName, int displayId) {
        if (!checkCallingPermission("android.permission.MONITOR_INPUT", "monitorInputRegion()")) {
            throw new SecurityException("Requires MONITOR_INPUT permission");
        }
        Objects.requireNonNull(inputChannelName, "inputChannelName must not be null.");
        if (displayId < 0) {
            throw new IllegalArgumentException("displayId must >= 0.");
        }
        long ident = Binder.clearCallingIdentity();
        try {
            InputChannel[] inputChannels = InputChannel.openInputChannelPair(inputChannelName);
            InputMonitorHost host = new InputMonitorHost(inputChannels[0]);
            nativeRegisterInputMonitor(this.mPtr, inputChannels[0], displayId, true);
            return new InputMonitor(inputChannels[1], host);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    public void registerInputChannel(InputChannel inputChannel) {
        if (inputChannel == null) {
            throw new IllegalArgumentException("inputChannel must not be null.");
        }
        nativeRegisterInputChannel(this.mPtr, inputChannel);
    }

    public void unregisterInputChannel(InputChannel inputChannel) {
        if (inputChannel == null) {
            throw new IllegalArgumentException("inputChannel must not be null.");
        }
        nativeUnregisterInputChannel(this.mPtr, inputChannel);
    }

    public void setInputFilter(IInputFilter filter) {
        synchronized (this.mInputFilterLock) {
            IInputFilter oldFilter = this.mInputFilter;
            if (oldFilter == filter) {
                return;
            }
            if (oldFilter != null) {
                this.mInputFilter = null;
                this.mInputFilterHost.disconnectLocked();
                this.mInputFilterHost = null;
                try {
                    oldFilter.uninstall();
                } catch (RemoteException e) {
                }
            }
            if (filter != null) {
                this.mInputFilter = filter;
                InputFilterHost inputFilterHost = new InputFilterHost();
                this.mInputFilterHost = inputFilterHost;
                try {
                    filter.install(inputFilterHost);
                } catch (RemoteException e2) {
                }
            }
            nativeSetInputFilterEnabled(this.mPtr, filter != null);
        }
    }

    public void setInTouchMode(boolean inTouchMode) {
        nativeSetInTouchMode(this.mPtr, inTouchMode);
    }

    public boolean injectInputEvent(InputEvent event, int mode) {
        return injectInputEventInternal(event, mode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean injectInputEventInternal(InputEvent event, int mode) {
        if (event == null) {
            throw new IllegalArgumentException("event must not be null");
        }
        if (mode != 0 && mode != 2 && mode != 1) {
            throw new IllegalArgumentException("mode is invalid");
        }
        int pid = Binder.getCallingPid();
        int uid = Binder.getCallingUid();
        long ident = Binder.clearCallingIdentity();
        try {
            int result = nativeInjectInputEvent(this.mPtr, event, pid, uid, mode, INJECTION_TIMEOUT_MILLIS, AudioFormat.OPUS);
            Binder.restoreCallingIdentity(ident);
            if (result != 0) {
                if (result == 1) {
                    Slog.w(TAG, "Input event injection from pid " + pid + " permission denied.");
                    throw new SecurityException("Injecting to another application requires INJECT_EVENTS permission");
                }
                if (result == 3) {
                    Slog.w(TAG, "Input event injection from pid " + pid + " timed out.");
                    return false;
                }
                Slog.w(TAG, "Input event injection from pid " + pid + " failed.");
                return false;
            }
            return true;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public VerifiedInputEvent verifyInputEvent(InputEvent event) {
        return nativeVerifyInputEvent(this.mPtr, event);
    }

    public InputDevice getInputDevice(int deviceId) {
        synchronized (this.mInputDevicesLock) {
            int count = this.mInputDevices.length;
            for (int i = 0; i < count; i++) {
                InputDevice inputDevice = this.mInputDevices[i];
                if (inputDevice.getId() == deviceId) {
                    return inputDevice;
                }
            }
            return null;
        }
    }

    public boolean isInputDeviceEnabled(int deviceId) {
        return nativeIsInputDeviceEnabled(this.mPtr, deviceId);
    }

    public void enableInputDevice(int deviceId) {
        if (!checkCallingPermission("android.permission.DISABLE_INPUT_DEVICE", "enableInputDevice()")) {
            throw new SecurityException("Requires DISABLE_INPUT_DEVICE permission");
        }
        nativeEnableInputDevice(this.mPtr, deviceId);
    }

    public void disableInputDevice(int deviceId) {
        if (!checkCallingPermission("android.permission.DISABLE_INPUT_DEVICE", "disableInputDevice()")) {
            throw new SecurityException("Requires DISABLE_INPUT_DEVICE permission");
        }
        nativeDisableInputDevice(this.mPtr, deviceId);
    }

    public int[] getInputDeviceIds() {
        int[] ids;
        synchronized (this.mInputDevicesLock) {
            int count = this.mInputDevices.length;
            ids = new int[count];
            for (int i = 0; i < count; i++) {
                ids[i] = this.mInputDevices[i].getId();
            }
        }
        return ids;
    }

    public InputDevice[] getInputDevices() {
        InputDevice[] inputDeviceArr;
        synchronized (this.mInputDevicesLock) {
            inputDeviceArr = this.mInputDevices;
        }
        return inputDeviceArr;
    }

    public void registerInputDevicesChangedListener(IInputDevicesChangedListener listener) {
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mInputDevicesLock) {
            int callingPid = Binder.getCallingPid();
            if (this.mInputDevicesChangedListeners.get(callingPid) != null) {
                throw new SecurityException("The calling process has already registered an InputDevicesChangedListener.");
            }
            InputDevicesChangedListenerRecord record = new InputDevicesChangedListenerRecord(callingPid, listener);
            try {
                IBinder binder = listener.asBinder();
                binder.linkToDeath(record, 0);
                this.mInputDevicesChangedListeners.put(callingPid, record);
            } catch (RemoteException ex) {
                throw new RuntimeException(ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onInputDevicesChangedListenerDied(int pid) {
        synchronized (this.mInputDevicesLock) {
            this.mInputDevicesChangedListeners.remove(pid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverInputDevicesChanged(InputDevice[] oldInputDevices) throws Throwable {
        int numFullKeyboardsAdded = 0;
        this.mTempInputDevicesChangedListenersToNotify.clear();
        this.mTempFullKeyboards.clear();
        synchronized (this.mInputDevicesLock) {
            try {
                if (this.mInputDevicesChangedPending) {
                    this.mInputDevicesChangedPending = false;
                    int numListeners = this.mInputDevicesChangedListeners.size();
                    for (int i = 0; i < numListeners; i++) {
                        this.mTempInputDevicesChangedListenersToNotify.add(this.mInputDevicesChangedListeners.valueAt(i));
                    }
                    int numDevices = this.mInputDevices.length;
                    int[] deviceIdAndGeneration = new int[numDevices * 2];
                    for (int i2 = 0; i2 < numDevices; i2++) {
                        InputDevice inputDevice = this.mInputDevices[i2];
                        deviceIdAndGeneration[i2 * 2] = inputDevice.getId();
                        deviceIdAndGeneration[(i2 * 2) + 1] = inputDevice.getGeneration();
                        if (!inputDevice.isVirtual() && inputDevice.isFullKeyboard()) {
                            if (!containsInputDeviceWithDescriptor(oldInputDevices, inputDevice.getDescriptor())) {
                                int numFullKeyboardsAdded2 = numFullKeyboardsAdded + 1;
                                try {
                                    this.mTempFullKeyboards.add(numFullKeyboardsAdded, inputDevice);
                                    numFullKeyboardsAdded = numFullKeyboardsAdded2;
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            } else {
                                this.mTempFullKeyboards.add(inputDevice);
                            }
                        }
                    }
                    for (int i3 = 0; i3 < numListeners; i3++) {
                        this.mTempInputDevicesChangedListenersToNotify.get(i3).notifyInputDevicesChanged(deviceIdAndGeneration);
                    }
                    this.mTempInputDevicesChangedListenersToNotify.clear();
                    List<InputDevice> keyboardsMissingLayout = new ArrayList<>();
                    int numFullKeyboards = this.mTempFullKeyboards.size();
                    synchronized (this.mDataStore) {
                        for (int i4 = 0; i4 < numFullKeyboards; i4++) {
                            InputDevice inputDevice2 = this.mTempFullKeyboards.get(i4);
                            String layout = getCurrentKeyboardLayoutForInputDevice(inputDevice2.getIdentifier());
                            if (layout == null && (layout = getDefaultKeyboardLayout(inputDevice2)) != null) {
                                setCurrentKeyboardLayoutForInputDevice(inputDevice2.getIdentifier(), layout);
                            }
                            if (layout == null) {
                                keyboardsMissingLayout.add(inputDevice2);
                            }
                        }
                    }
                    if (this.mNotificationManager != null) {
                        if (!keyboardsMissingLayout.isEmpty()) {
                            if (keyboardsMissingLayout.size() > 1) {
                                showMissingKeyboardLayoutNotification(null);
                            } else {
                                showMissingKeyboardLayoutNotification(keyboardsMissingLayout.get(0));
                            }
                        } else if (this.mKeyboardLayoutNotificationShown) {
                            hideMissingKeyboardLayoutNotification();
                        }
                    }
                    this.mTempFullKeyboards.clear();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private String getDefaultKeyboardLayout(final InputDevice d) throws Throwable {
        final Locale systemLocale = this.mContext.getResources().getConfiguration().locale;
        if (TextUtils.isEmpty(systemLocale.getLanguage())) {
            return null;
        }
        final List<KeyboardLayout> layouts = new ArrayList<>();
        visitAllKeyboardLayouts(new KeyboardLayoutVisitor() { // from class: com.android.server.input.InputManagerService.4
            @Override // com.android.server.input.InputManagerService.KeyboardLayoutVisitor
            public void visitKeyboardLayout(Resources resources, int keyboardLayoutResId, KeyboardLayout layout) {
                if (layout.getVendorId() != d.getVendorId() || layout.getProductId() != d.getProductId()) {
                    return;
                }
                LocaleList locales = layout.getLocales();
                int numLocales = locales.size();
                for (int localeIndex = 0; localeIndex < numLocales; localeIndex++) {
                    if (InputManagerService.isCompatibleLocale(systemLocale, locales.get(localeIndex))) {
                        layouts.add(layout);
                        return;
                    }
                }
            }
        });
        if (layouts.isEmpty()) {
            return null;
        }
        Collections.sort(layouts);
        int N = layouts.size();
        for (int i = 0; i < N; i++) {
            KeyboardLayout layout = layouts.get(i);
            LocaleList locales = layout.getLocales();
            int numLocales = locales.size();
            for (int localeIndex = 0; localeIndex < numLocales; localeIndex++) {
                Locale locale = locales.get(localeIndex);
                if (locale.getCountry().equals(systemLocale.getCountry()) && locale.getVariant().equals(systemLocale.getVariant())) {
                    return layout.getDescriptor();
                }
            }
        }
        for (int i2 = 0; i2 < N; i2++) {
            KeyboardLayout layout2 = layouts.get(i2);
            LocaleList locales2 = layout2.getLocales();
            int numLocales2 = locales2.size();
            for (int localeIndex2 = 0; localeIndex2 < numLocales2; localeIndex2++) {
                if (locales2.get(localeIndex2).getCountry().equals(systemLocale.getCountry())) {
                    return layout2.getDescriptor();
                }
            }
        }
        return layouts.get(0).getDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isCompatibleLocale(Locale systemLocale, Locale keyboardLocale) {
        if (systemLocale.getLanguage().equals(keyboardLocale.getLanguage())) {
            return TextUtils.isEmpty(systemLocale.getCountry()) || TextUtils.isEmpty(keyboardLocale.getCountry()) || systemLocale.getCountry().equals(keyboardLocale.getCountry());
        }
        return false;
    }

    public TouchCalibration getTouchCalibrationForInputDevice(String inputDeviceDescriptor, int surfaceRotation) {
        TouchCalibration touchCalibration;
        if (inputDeviceDescriptor == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        synchronized (this.mDataStore) {
            touchCalibration = this.mDataStore.getTouchCalibration(inputDeviceDescriptor, surfaceRotation);
        }
        return touchCalibration;
    }

    public void setTouchCalibrationForInputDevice(String inputDeviceDescriptor, int surfaceRotation, TouchCalibration calibration) {
        if (!checkCallingPermission("android.permission.SET_INPUT_CALIBRATION", "setTouchCalibrationForInputDevice()")) {
            throw new SecurityException("Requires SET_INPUT_CALIBRATION permission");
        }
        if (inputDeviceDescriptor == null) {
            throw new IllegalArgumentException("inputDeviceDescriptor must not be null");
        }
        if (calibration == null) {
            throw new IllegalArgumentException("calibration must not be null");
        }
        if (surfaceRotation < 0 || surfaceRotation > 3) {
            throw new IllegalArgumentException("surfaceRotation value out of bounds");
        }
        synchronized (this.mDataStore) {
            try {
                if (this.mDataStore.setTouchCalibration(inputDeviceDescriptor, surfaceRotation, calibration)) {
                    nativeReloadCalibration(this.mPtr);
                }
                this.mDataStore.saveIfNeeded();
            } catch (Throwable th) {
                this.mDataStore.saveIfNeeded();
                throw th;
            }
        }
    }

    public int isInTabletMode() {
        if (!checkCallingPermission("android.permission.TABLET_MODE", "isInTabletMode()")) {
            throw new SecurityException("Requires TABLET_MODE permission");
        }
        return getSwitchState(-1, -256, 1);
    }

    public int isMicMuted() {
        return getSwitchState(-1, -256, 14);
    }

    public void registerTabletModeChangedListener(ITabletModeChangedListener listener) {
        if (!checkCallingPermission("android.permission.TABLET_MODE", "registerTabletModeChangedListener()")) {
            throw new SecurityException("Requires TABLET_MODE_LISTENER permission");
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this.mTabletModeLock) {
            int callingPid = Binder.getCallingPid();
            if (this.mTabletModeChangedListeners.get(callingPid) != null) {
                throw new IllegalStateException("The calling process has already registered a TabletModeChangedListener.");
            }
            TabletModeChangedListenerRecord record = new TabletModeChangedListenerRecord(callingPid, listener);
            try {
                IBinder binder = listener.asBinder();
                binder.linkToDeath(record, 0);
                this.mTabletModeChangedListeners.put(callingPid, record);
            } catch (RemoteException ex) {
                throw new RuntimeException(ex);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTabletModeChangedListenerDied(int pid) {
        synchronized (this.mTabletModeLock) {
            this.mTabletModeChangedListeners.remove(pid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deliverTabletModeChanged(long whenNanos, boolean inTabletMode) {
        int numListeners;
        this.mTempTabletModeChangedListenersToNotify.clear();
        synchronized (this.mTabletModeLock) {
            numListeners = this.mTabletModeChangedListeners.size();
            for (int i = 0; i < numListeners; i++) {
                this.mTempTabletModeChangedListenersToNotify.add(this.mTabletModeChangedListeners.valueAt(i));
            }
        }
        for (int i2 = 0; i2 < numListeners; i2++) {
            this.mTempTabletModeChangedListenersToNotify.get(i2).notifyTabletModeChanged(whenNanos, inTabletMode);
        }
    }

    private void showMissingKeyboardLayoutNotification(InputDevice device) {
        if (!this.mKeyboardLayoutNotificationShown) {
            Intent intent = new Intent("android.settings.HARD_KEYBOARD_SETTINGS");
            if (device != null) {
                intent.putExtra("input_device_identifier", (Parcelable) device.getIdentifier());
            }
            intent.setFlags(337641472);
            PendingIntent keyboardLayoutIntent = PendingIntent.getActivityAsUser(this.mContext, 0, intent, 67108864, null, UserHandle.CURRENT);
            Resources r = this.mContext.getResources();
            Notification notification = new Notification.Builder(this.mContext, SystemNotificationChannels.PHYSICAL_KEYBOARD).setContentTitle(r.getString(R.string.permdesc_foregroundServiceSpecialUse)).setContentText(r.getString(R.string.permdesc_foregroundServiceRemoteMessaging)).setContentIntent(keyboardLayoutIntent).setSmallIcon(R.drawable.ic_media_route_on_2_holo_light).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).build();
            this.mNotificationManager.notifyAsUser(null, 19, notification, UserHandle.ALL);
            this.mKeyboardLayoutNotificationShown = true;
        }
    }

    private void hideMissingKeyboardLayoutNotification() {
        if (this.mKeyboardLayoutNotificationShown) {
            this.mKeyboardLayoutNotificationShown = false;
            this.mNotificationManager.cancelAsUser(null, 19, UserHandle.ALL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateKeyboardLayouts() throws Throwable {
        final HashSet<String> availableKeyboardLayouts = new HashSet<>();
        visitAllKeyboardLayouts(new KeyboardLayoutVisitor() { // from class: com.android.server.input.InputManagerService.5
            @Override // com.android.server.input.InputManagerService.KeyboardLayoutVisitor
            public void visitKeyboardLayout(Resources resources, int keyboardLayoutResId, KeyboardLayout layout) {
                availableKeyboardLayouts.add(layout.getDescriptor());
            }
        });
        synchronized (this.mDataStore) {
            try {
                this.mDataStore.removeUninstalledKeyboardLayouts(availableKeyboardLayouts);
                this.mDataStore.saveIfNeeded();
            } catch (Throwable th) {
                this.mDataStore.saveIfNeeded();
                throw th;
            }
        }
        reloadKeyboardLayouts();
    }

    private static boolean containsInputDeviceWithDescriptor(InputDevice[] inputDevices, String descriptor) {
        for (InputDevice inputDevice : inputDevices) {
            if (inputDevice.getDescriptor().equals(descriptor)) {
                return true;
            }
        }
        return false;
    }

    public KeyboardLayout[] getKeyboardLayouts() throws Throwable {
        final ArrayList<KeyboardLayout> list = new ArrayList<>();
        visitAllKeyboardLayouts(new KeyboardLayoutVisitor() { // from class: com.android.server.input.InputManagerService.6
            @Override // com.android.server.input.InputManagerService.KeyboardLayoutVisitor
            public void visitKeyboardLayout(Resources resources, int keyboardLayoutResId, KeyboardLayout layout) {
                list.add(layout);
            }
        });
        return (KeyboardLayout[]) list.toArray(new KeyboardLayout[list.size()]);
    }

    public KeyboardLayout[] getKeyboardLayoutsForInputDevice(final InputDeviceIdentifier identifier) throws Throwable {
        final String[] enabledLayoutDescriptors = getEnabledKeyboardLayoutsForInputDevice(identifier);
        final ArrayList<KeyboardLayout> enabledLayouts = new ArrayList<>(enabledLayoutDescriptors.length);
        final ArrayList<KeyboardLayout> potentialLayouts = new ArrayList<>();
        visitAllKeyboardLayouts(new KeyboardLayoutVisitor() { // from class: com.android.server.input.InputManagerService.7
            boolean mHasSeenDeviceSpecificLayout;

            @Override // com.android.server.input.InputManagerService.KeyboardLayoutVisitor
            public void visitKeyboardLayout(Resources resources, int keyboardLayoutResId, KeyboardLayout layout) {
                for (String s : enabledLayoutDescriptors) {
                    if (s != null && s.equals(layout.getDescriptor())) {
                        enabledLayouts.add(layout);
                        return;
                    }
                }
                if (layout.getVendorId() == identifier.getVendorId() && layout.getProductId() == identifier.getProductId()) {
                    if (!this.mHasSeenDeviceSpecificLayout) {
                        this.mHasSeenDeviceSpecificLayout = true;
                        potentialLayouts.clear();
                    }
                    potentialLayouts.add(layout);
                    return;
                }
                if (layout.getVendorId() == -1 && layout.getProductId() == -1 && !this.mHasSeenDeviceSpecificLayout) {
                    potentialLayouts.add(layout);
                }
            }
        });
        int enabledLayoutSize = enabledLayouts.size();
        int potentialLayoutSize = potentialLayouts.size();
        KeyboardLayout[] layouts = new KeyboardLayout[enabledLayoutSize + potentialLayoutSize];
        enabledLayouts.toArray(layouts);
        for (int i = 0; i < potentialLayoutSize; i++) {
            layouts[enabledLayoutSize + i] = potentialLayouts.get(i);
        }
        return layouts;
    }

    public KeyboardLayout getKeyboardLayout(String keyboardLayoutDescriptor) throws Throwable {
        if (keyboardLayoutDescriptor == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        final KeyboardLayout[] result = new KeyboardLayout[1];
        visitKeyboardLayout(keyboardLayoutDescriptor, new KeyboardLayoutVisitor() { // from class: com.android.server.input.InputManagerService.8
            @Override // com.android.server.input.InputManagerService.KeyboardLayoutVisitor
            public void visitKeyboardLayout(Resources resources, int keyboardLayoutResId, KeyboardLayout layout) {
                result[0] = layout;
            }
        });
        if (result[0] == null) {
            Slog.w(TAG, "Could not get keyboard layout with descriptor '" + keyboardLayoutDescriptor + "'.");
        }
        return result[0];
    }

    private void visitAllKeyboardLayouts(KeyboardLayoutVisitor visitor) throws Throwable {
        PackageManager pm = this.mContext.getPackageManager();
        Intent intent = new Intent("android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS");
        for (ResolveInfo resolveInfo : pm.queryBroadcastReceivers(intent, 786560)) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            int priority = resolveInfo.priority;
            visitKeyboardLayoutsInPackage(pm, activityInfo, null, priority, visitor);
        }
    }

    private void visitKeyboardLayout(String keyboardLayoutDescriptor, KeyboardLayoutVisitor visitor) throws Throwable {
        KeyboardLayoutDescriptor d = KeyboardLayoutDescriptor.parse(keyboardLayoutDescriptor);
        if (d != null) {
            PackageManager pm = this.mContext.getPackageManager();
            try {
                ActivityInfo receiver = pm.getReceiverInfo(new ComponentName(d.packageName, d.receiverName), 786560);
                visitKeyboardLayoutsInPackage(pm, receiver, d.keyboardLayoutName, 0, visitor);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:97:0x00f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void visitKeyboardLayoutsInPackage(PackageManager pm, ActivityInfo receiver, String keyboardName, int requestedPriority, KeyboardLayoutVisitor visitor) throws Throwable {
        int i;
        TypedArray a;
        Bundle metaData = receiver.metaData;
        if (metaData == null) {
            return;
        }
        int configResId = metaData.getInt("android.hardware.input.metadata.KEYBOARD_LAYOUTS");
        if (configResId == 0) {
            Slog.w(TAG, "Missing meta-data 'android.hardware.input.metadata.KEYBOARD_LAYOUTS' on receiver " + receiver.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiver.name);
            return;
        }
        CharSequence receiverLabel = receiver.loadLabel(pm);
        String collection = receiverLabel != null ? receiverLabel.toString() : "";
        int i2 = 1;
        int priority = (receiver.applicationInfo.flags & 1) != 0 ? requestedPriority : 0;
        try {
            Resources resources = pm.getResourcesForApplication(receiver.applicationInfo);
            XmlResourceParser parser = resources.getXml(configResId);
            try {
                XmlUtils.beginDocument(parser, "keyboard-layouts");
                while (true) {
                    XmlUtils.nextElement(parser);
                    String element = parser.getName();
                    if (element == null) {
                        try {
                            parser.close();
                            return;
                        } catch (Exception e) {
                            ex = e;
                            Slog.w(TAG, "Could not parse keyboard layout resource from receiver " + receiver.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiver.name, ex);
                            return;
                        }
                    }
                    if (element.equals("keyboard-layout")) {
                        TypedArray a2 = resources.obtainAttributes(parser, com.android.internal.R.styleable.KeyboardLayout);
                        try {
                            String name = a2.getString(i2);
                            String label = a2.getString(0);
                            int keyboardLayoutResId = a2.getResourceId(2, 0);
                            String languageTags = a2.getString(3);
                            LocaleList locales = getLocalesFromLanguageTags(languageTags);
                            try {
                                int vid = a2.getInt(5, -1);
                                a = a2;
                                try {
                                    int pid = a.getInt(4, -1);
                                    if (name == null || label == null || keyboardLayoutResId == 0) {
                                        i = 1;
                                        try {
                                            Slog.w(TAG, "Missing required 'name', 'label' or 'keyboardLayout' attributes in keyboard layout resource from receiver " + receiver.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiver.name);
                                            try {
                                                a.recycle();
                                            } catch (Throwable th) {
                                                th = th;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            a.recycle();
                                            throw th;
                                        }
                                    } else {
                                        String descriptor = KeyboardLayoutDescriptor.format(receiver.packageName, receiver.name, name);
                                        if (keyboardName != 0) {
                                            try {
                                                if (name.equals(keyboardName)) {
                                                    try {
                                                        parser = parser;
                                                        resources = resources;
                                                        i = 1;
                                                        try {
                                                            KeyboardLayout layout = new KeyboardLayout(descriptor, label, collection, priority, locales, vid, pid);
                                                            visitor.visitKeyboardLayout(resources, keyboardLayoutResId, layout);
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            a.recycle();
                                                            throw th;
                                                        }
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        parser = parser;
                                                    }
                                                } else {
                                                    parser = parser;
                                                    resources = resources;
                                                    i = 1;
                                                }
                                                a.recycle();
                                            } catch (Throwable th5) {
                                                th = th5;
                                                parser = parser;
                                            }
                                        } else {
                                            parser = parser;
                                            resources = resources;
                                            i = 1;
                                            KeyboardLayout layout2 = new KeyboardLayout(descriptor, label, collection, priority, locales, vid, pid);
                                            visitor.visitKeyboardLayout(resources, keyboardLayoutResId, layout2);
                                            a.recycle();
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    parser = parser;
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                parser = parser;
                                a = a2;
                            }
                        } catch (Throwable th8) {
                            th = th8;
                            parser = parser;
                            a = a2;
                        }
                        a.recycle();
                        throw th;
                    } else {
                        parser = parser;
                        resources = resources;
                        i = i2;
                        Slog.w(TAG, "Skipping unrecognized element '" + element + "' in keyboard layout resource from receiver " + receiver.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiver.name);
                    }
                    resources = resources;
                    i2 = i;
                    metaData = metaData;
                    configResId = configResId;
                    parser = parser;
                    try {
                        parser.close();
                        throw th;
                    } catch (Exception e2) {
                        ex = e2;
                        Slog.w(TAG, "Could not parse keyboard layout resource from receiver " + receiver.packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiver.name, ex);
                        return;
                    }
                }
            } catch (Throwable th9) {
                th = th9;
                parser = parser;
            }
        } catch (Exception e3) {
            ex = e3;
        }
    }

    private static LocaleList getLocalesFromLanguageTags(String languageTags) {
        if (TextUtils.isEmpty(languageTags)) {
            return LocaleList.getEmptyLocaleList();
        }
        return LocaleList.forLanguageTags(languageTags.replace('|', ','));
    }

    private String getLayoutDescriptor(InputDeviceIdentifier identifier) {
        if (identifier == null || identifier.getDescriptor() == null) {
            throw new IllegalArgumentException("identifier and descriptor must not be null");
        }
        if (identifier.getVendorId() == 0 && identifier.getProductId() == 0) {
            return identifier.getDescriptor();
        }
        return "vendor:" + identifier.getVendorId() + ",product:" + identifier.getProductId();
    }

    public String getCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier identifier) {
        String layout;
        String key = getLayoutDescriptor(identifier);
        synchronized (this.mDataStore) {
            layout = this.mDataStore.getCurrentKeyboardLayout(key);
            if (layout == null && !key.equals(identifier.getDescriptor())) {
                layout = this.mDataStore.getCurrentKeyboardLayout(identifier.getDescriptor());
            }
        }
        return layout;
    }

    public void setCurrentKeyboardLayoutForInputDevice(InputDeviceIdentifier identifier, String keyboardLayoutDescriptor) {
        if (!checkCallingPermission("android.permission.SET_KEYBOARD_LAYOUT", "setCurrentKeyboardLayoutForInputDevice()")) {
            throw new SecurityException("Requires SET_KEYBOARD_LAYOUT permission");
        }
        if (keyboardLayoutDescriptor == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        String key = getLayoutDescriptor(identifier);
        synchronized (this.mDataStore) {
            try {
                if (this.mDataStore.setCurrentKeyboardLayout(key, keyboardLayoutDescriptor)) {
                    this.mHandler.sendEmptyMessage(3);
                }
                this.mDataStore.saveIfNeeded();
            } catch (Throwable th) {
                this.mDataStore.saveIfNeeded();
                throw th;
            }
        }
    }

    public String[] getEnabledKeyboardLayoutsForInputDevice(InputDeviceIdentifier identifier) {
        String[] layouts;
        String key = getLayoutDescriptor(identifier);
        synchronized (this.mDataStore) {
            layouts = this.mDataStore.getKeyboardLayouts(key);
            if ((layouts == null || layouts.length == 0) && !key.equals(identifier.getDescriptor())) {
                layouts = this.mDataStore.getKeyboardLayouts(identifier.getDescriptor());
            }
        }
        return layouts;
    }

    public void addKeyboardLayoutForInputDevice(InputDeviceIdentifier identifier, String keyboardLayoutDescriptor) {
        if (!checkCallingPermission("android.permission.SET_KEYBOARD_LAYOUT", "addKeyboardLayoutForInputDevice()")) {
            throw new SecurityException("Requires SET_KEYBOARD_LAYOUT permission");
        }
        if (keyboardLayoutDescriptor == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        String key = getLayoutDescriptor(identifier);
        synchronized (this.mDataStore) {
            try {
                String oldLayout = this.mDataStore.getCurrentKeyboardLayout(key);
                if (oldLayout == null && !key.equals(identifier.getDescriptor())) {
                    oldLayout = this.mDataStore.getCurrentKeyboardLayout(identifier.getDescriptor());
                }
                if (this.mDataStore.addKeyboardLayout(key, keyboardLayoutDescriptor) && !Objects.equals(oldLayout, this.mDataStore.getCurrentKeyboardLayout(key))) {
                    this.mHandler.sendEmptyMessage(3);
                }
                this.mDataStore.saveIfNeeded();
            } catch (Throwable th) {
                this.mDataStore.saveIfNeeded();
                throw th;
            }
        }
    }

    public void removeKeyboardLayoutForInputDevice(InputDeviceIdentifier identifier, String keyboardLayoutDescriptor) {
        if (!checkCallingPermission("android.permission.SET_KEYBOARD_LAYOUT", "removeKeyboardLayoutForInputDevice()")) {
            throw new SecurityException("Requires SET_KEYBOARD_LAYOUT permission");
        }
        if (keyboardLayoutDescriptor == null) {
            throw new IllegalArgumentException("keyboardLayoutDescriptor must not be null");
        }
        String key = getLayoutDescriptor(identifier);
        synchronized (this.mDataStore) {
            try {
                String oldLayout = this.mDataStore.getCurrentKeyboardLayout(key);
                if (oldLayout == null && !key.equals(identifier.getDescriptor())) {
                    oldLayout = this.mDataStore.getCurrentKeyboardLayout(identifier.getDescriptor());
                }
                boolean removed = this.mDataStore.removeKeyboardLayout(key, keyboardLayoutDescriptor);
                if (!key.equals(identifier.getDescriptor())) {
                    removed |= this.mDataStore.removeKeyboardLayout(identifier.getDescriptor(), keyboardLayoutDescriptor);
                }
                if (removed && !Objects.equals(oldLayout, this.mDataStore.getCurrentKeyboardLayout(key))) {
                    this.mHandler.sendEmptyMessage(3);
                }
                this.mDataStore.saveIfNeeded();
            } catch (Throwable th) {
                this.mDataStore.saveIfNeeded();
                throw th;
            }
        }
    }

    public void switchKeyboardLayout(int deviceId, int direction) {
        this.mHandler.obtainMessage(2, deviceId, direction).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSwitchKeyboardLayout(int deviceId, int direction) {
        boolean changed;
        String keyboardLayoutDescriptor;
        KeyboardLayout keyboardLayout;
        InputDevice device = getInputDevice(deviceId);
        if (device != null) {
            String key = getLayoutDescriptor(device.getIdentifier());
            synchronized (this.mDataStore) {
                try {
                    changed = this.mDataStore.switchKeyboardLayout(key, direction);
                    keyboardLayoutDescriptor = this.mDataStore.getCurrentKeyboardLayout(key);
                    this.mDataStore.saveIfNeeded();
                } catch (Throwable th) {
                    this.mDataStore.saveIfNeeded();
                    throw th;
                }
            }
            if (changed) {
                Toast toast = this.mSwitchedKeyboardLayoutToast;
                if (toast != null) {
                    toast.cancel();
                    this.mSwitchedKeyboardLayoutToast = null;
                }
                if (keyboardLayoutDescriptor != null && (keyboardLayout = getKeyboardLayout(keyboardLayoutDescriptor)) != null) {
                    Toast toastMakeText = Toast.makeText(this.mContext, keyboardLayout.getLabel(), 0);
                    this.mSwitchedKeyboardLayoutToast = toastMakeText;
                    toastMakeText.show();
                }
                reloadKeyboardLayouts();
            }
        }
    }

    public void setFocusedApplication(int displayId, InputApplicationHandle application) {
        nativeSetFocusedApplication(this.mPtr, displayId, application);
    }

    public void setFocusedDisplay(int displayId) {
        nativeSetFocusedDisplay(this.mPtr, displayId);
    }

    public void onDisplayRemoved(int displayId) {
        nativeDisplayRemoved(this.mPtr, displayId);
    }

    public void requestPointerCapture(IBinder windowToken, boolean enabled) {
        boolean requestConfigurationRefresh = this.mWindowManagerCallbacks.requestPointerCapture(windowToken, enabled);
        if (requestConfigurationRefresh) {
            nativeSetPointerCapture(this.mPtr, enabled);
        }
    }

    public void setInputDispatchMode(boolean enabled, boolean frozen) {
        nativeSetInputDispatchMode(this.mPtr, enabled, frozen);
    }

    public void setSystemUiVisibility(int visibility) {
        nativeSetSystemUiVisibility(this.mPtr, visibility);
    }

    public boolean transferTouchFocus(InputChannel fromChannel, InputChannel toChannel) {
        return nativeTransferTouchFocus(this.mPtr, fromChannel.getToken(), toChannel.getToken());
    }

    public boolean transferTouchFocus(IBinder fromChannelToken, IBinder toChannelToken) {
        Objects.nonNull(fromChannelToken);
        Objects.nonNull(toChannelToken);
        return nativeTransferTouchFocus(this.mPtr, fromChannelToken, toChannelToken);
    }

    public void tryPointerSpeed(int speed) {
        if (!checkCallingPermission("android.permission.SET_POINTER_SPEED", "tryPointerSpeed()")) {
            throw new SecurityException("Requires SET_POINTER_SPEED permission");
        }
        if (speed < -7 || speed > 7) {
            throw new IllegalArgumentException("speed out of range");
        }
        setPointerSpeedUnchecked(speed);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePointerSpeedFromSettings() {
        int speed = getPointerSpeedSetting();
        setPointerSpeedUnchecked(speed);
    }

    private void setPointerSpeedUnchecked(int speed) {
        nativeSetPointerSpeed(this.mPtr, Math.min(Math.max(speed, -7), 7));
    }

    private void registerPointerSpeedSettingObserver() {
        this.mContext.getContentResolver().registerContentObserver(android.provider.Settings.System.getUriFor("pointer_speed"), true, new ContentObserver(this.mHandler) { // from class: com.android.server.input.InputManagerService.9
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                InputManagerService.this.updatePointerSpeedFromSettings();
            }
        }, -1);
    }

    private int getPointerSpeedSetting() {
        try {
            int speed = android.provider.Settings.System.getIntForUser(this.mContext.getContentResolver(), "pointer_speed", -2);
            return speed;
        } catch (android.provider.Settings.SettingNotFoundException e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShowTouchesFromSettings() {
        int setting = getShowTouchesSetting(0);
        nativeSetShowTouches(this.mPtr, setting != 0);
    }

    private void registerShowTouchesSettingObserver() {
        this.mContext.getContentResolver().registerContentObserver(android.provider.Settings.System.getUriFor("show_touches"), true, new ContentObserver(this.mHandler) { // from class: com.android.server.input.InputManagerService.10
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                InputManagerService.this.updateShowTouchesFromSettings();
            }
        }, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAccessibilityLargePointerFromSettings() {
        int accessibilityConfig = android.provider.Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "accessibility_large_pointer_icon", 0, -2);
        PointerIcon.setUseLargeIcons(accessibilityConfig == 1);
        nativeReloadPointerIcons(this.mPtr);
    }

    private void registerAccessibilityLargePointerSettingObserver() {
        this.mContext.getContentResolver().registerContentObserver(android.provider.Settings.Secure.getUriFor("accessibility_large_pointer_icon"), true, new ContentObserver(this.mHandler) { // from class: com.android.server.input.InputManagerService.11
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                InputManagerService.this.updateAccessibilityLargePointerFromSettings();
            }
        }, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDeepPressStatusFromSettings(String reason) {
        int timeout = android.provider.Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "long_press_timeout", 400, -2);
        boolean featureEnabledFlag = DeviceConfig.getBoolean("input_native_boot", DEEP_PRESS_ENABLED, true);
        boolean enabled = featureEnabledFlag && timeout <= 400;
        StringBuilder sb = new StringBuilder();
        sb.append(enabled ? "Enabling" : "Disabling");
        sb.append(" motion classifier because ");
        sb.append(reason);
        sb.append(": feature ");
        sb.append(featureEnabledFlag ? "enabled" : "disabled");
        sb.append(", long press timeout = ");
        sb.append(timeout);
        Log.i(TAG, sb.toString());
        nativeSetMotionClassifierEnabled(this.mPtr, enabled);
    }

    private void registerLongPressTimeoutObserver() {
        this.mContext.getContentResolver().registerContentObserver(android.provider.Settings.Secure.getUriFor("long_press_timeout"), true, new ContentObserver(this.mHandler) { // from class: com.android.server.input.InputManagerService.12
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                InputManagerService.this.updateDeepPressStatusFromSettings("timeout changed");
            }
        }, -1);
    }

    private int getShowTouchesSetting(int defaultValue) {
        try {
            int result = android.provider.Settings.System.getIntForUser(this.mContext.getContentResolver(), "show_touches", -2);
            return result;
        } catch (android.provider.Settings.SettingNotFoundException e) {
            return defaultValue;
        }
    }

    public void vibrate(int deviceId, long[] pattern, int repeat, IBinder token) {
        VibratorToken v;
        if (repeat >= pattern.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        synchronized (this.mVibratorLock) {
            v = this.mVibratorTokens.get(token);
            if (v == null) {
                int i = this.mNextVibratorTokenValue;
                this.mNextVibratorTokenValue = i + 1;
                v = new VibratorToken(deviceId, token, i);
                try {
                    token.linkToDeath(v, 0);
                    this.mVibratorTokens.put(token, v);
                } catch (RemoteException ex) {
                    throw new RuntimeException(ex);
                }
            }
        }
        synchronized (v) {
            v.mVibrating = true;
            nativeVibrate(this.mPtr, deviceId, pattern, repeat, v.mTokenValue);
        }
    }

    public void cancelVibrate(int deviceId, IBinder token) {
        synchronized (this.mVibratorLock) {
            VibratorToken v = this.mVibratorTokens.get(token);
            if (v != null && v.mDeviceId == deviceId) {
                cancelVibrateIfNeeded(v);
            }
        }
    }

    void onVibratorTokenDied(VibratorToken v) {
        synchronized (this.mVibratorLock) {
            this.mVibratorTokens.remove(v.mToken);
        }
        cancelVibrateIfNeeded(v);
    }

    private void cancelVibrateIfNeeded(VibratorToken v) {
        synchronized (v) {
            if (v.mVibrating) {
                nativeCancelVibrate(this.mPtr, v.mDeviceId, v.mTokenValue);
                v.mVibrating = false;
            }
        }
    }

    public void setPointerIconType(int iconId) {
        nativeSetPointerIconType(this.mPtr, iconId);
    }

    public void setCustomPointerIcon(PointerIcon icon) {
        Objects.requireNonNull(icon);
        nativeSetCustomPointerIcon(this.mPtr, icon);
    }

    public void addPortAssociation(String inputPort, int displayPort) {
        if (!checkCallingPermission("android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT", "addPortAssociation()")) {
            throw new SecurityException("Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT permission");
        }
        Objects.requireNonNull(inputPort);
        synchronized (this.mAssociationsLock) {
            this.mRuntimeAssociations.put(inputPort, Integer.valueOf(displayPort));
        }
        nativeNotifyPortAssociationsChanged(this.mPtr);
    }

    public void removePortAssociation(String inputPort) {
        if (!checkCallingPermission("android.permission.ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT", "clearPortAssociations()")) {
            throw new SecurityException("Requires ASSOCIATE_INPUT_DEVICE_TO_DISPLAY_BY_PORT permission");
        }
        Objects.requireNonNull(inputPort);
        synchronized (this.mAssociationsLock) {
            this.mRuntimeAssociations.remove(inputPort);
        }
        nativeNotifyPortAssociationsChanged(this.mPtr);
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            pw.println("INPUT MANAGER (dumpsys input)\n");
            String dumpStr = nativeDump(this.mPtr);
            if (dumpStr != null) {
                pw.println(dumpStr);
                dumpAssociations(pw);
            }
        }
    }

    private void dumpAssociations(final PrintWriter pw) {
        if (!this.mStaticAssociations.isEmpty()) {
            pw.println("Static Associations:");
            this.mStaticAssociations.forEach(new BiConsumer() { // from class: com.android.server.input.-$$Lambda$InputManagerService$M0FF5e8p6FGyFBNFwEYoVAKqrhQ
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    InputManagerService.lambda$dumpAssociations$0(pw, (String) obj, (Integer) obj2);
                }
            });
        }
        synchronized (this.mAssociationsLock) {
            if (!this.mRuntimeAssociations.isEmpty()) {
                pw.println("Runtime Associations:");
                this.mRuntimeAssociations.forEach(new BiConsumer() { // from class: com.android.server.input.-$$Lambda$InputManagerService$e8CLEFczq_4kLYCG30uaJDgK3rA
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        InputManagerService.lambda$dumpAssociations$1(pw, (String) obj, (Integer) obj2);
                    }
                });
            }
        }
    }

    static /* synthetic */ void lambda$dumpAssociations$0(PrintWriter pw, String k, Integer v) {
        pw.print("  port: " + k);
        pw.println("  display: " + v);
    }

    static /* synthetic */ void lambda$dumpAssociations$1(PrintWriter pw, String k, Integer v) {
        pw.print("  port: " + k);
        pw.println("  display: " + v);
    }

    private boolean checkCallingPermission(String permission, String func) {
        if (Binder.getCallingPid() == Process.myPid() || this.mContext.checkCallingPermission(permission) == 0) {
            return true;
        }
        String msg = "Permission Denial: " + func + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires " + permission;
        Slog.w(TAG, msg);
        return false;
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this.mInputFilterLock) {
        }
        synchronized (this.mAssociationsLock) {
        }
        nativeMonitor(this.mPtr);
    }

    private void notifyConfigurationChanged(long whenNanos) {
        this.mWindowManagerCallbacks.notifyConfigurationChanged();
    }

    private void notifyInputDevicesChanged(InputDevice[] inputDevices) {
        synchronized (this.mInputDevicesLock) {
            if (!this.mInputDevicesChangedPending) {
                this.mInputDevicesChangedPending = true;
                this.mHandler.obtainMessage(1, this.mInputDevices).sendToTarget();
            }
            this.mInputDevices = inputDevices;
        }
    }

    private void notifySwitch(long whenNanos, int switchValues, int switchMask) {
        if ((switchMask & 1) != 0) {
            boolean lidOpen = (switchValues & 1) == 0;
            this.mWindowManagerCallbacks.notifyLidSwitchChanged(whenNanos, lidOpen);
        }
        if ((switchMask & 512) != 0) {
            boolean lensCovered = (switchValues & 512) != 0;
            this.mWindowManagerCallbacks.notifyCameraLensCoverSwitchChanged(whenNanos, lensCovered);
        }
        boolean lensCovered2 = this.mUseDevInputEventForAudioJack;
        if (lensCovered2 && (switchMask & SW_JACK_BITS) != 0) {
            this.mWiredAccessoryCallbacks.notifyWiredAccessoryChanged(whenNanos, switchValues, switchMask);
        }
        if ((switchMask & 2) != 0) {
            SomeArgs args = SomeArgs.obtain();
            args.argi1 = (int) ((-1) & whenNanos);
            args.argi2 = (int) (whenNanos >> 32);
            args.arg1 = Boolean.valueOf((switchValues & 2) != 0);
            this.mHandler.obtainMessage(6, args).sendToTarget();
        }
        if ((switchMask & 16384) != 0) {
            boolean micMute = (switchValues & 16384) != 0;
            AudioManager audioManager = (AudioManager) this.mContext.getSystemService(AudioManager.class);
            audioManager.setMicrophoneMuteFromSwitch(micMute);
        }
    }

    private void notifyInputChannelBroken(IBinder token) {
        this.mWindowManagerCallbacks.notifyInputChannelBroken(token);
    }

    private void notifyFocusChanged(IBinder oldToken, IBinder newToken) {
        boolean requestConfigurationRefresh = this.mWindowManagerCallbacks.notifyFocusChanged(oldToken, newToken);
        if (requestConfigurationRefresh) {
            nativeSetPointerCapture(this.mPtr, false);
        }
    }

    private long notifyANR(InputApplicationHandle inputApplicationHandle, IBinder token, String reason) {
        return this.mWindowManagerCallbacks.notifyANR(inputApplicationHandle, token, reason);
    }

    final boolean filterInputEvent(InputEvent event, int policyFlags) {
        synchronized (this.mInputFilterLock) {
            if (this.mInputFilter != null) {
                try {
                    this.mInputFilter.filterInputEvent(event, policyFlags);
                } catch (RemoteException e) {
                }
                return false;
            }
            event.recycle();
            return true;
        }
    }

    private int interceptKeyBeforeQueueing(KeyEvent event, int policyFlags) {
        return this.mWindowManagerCallbacks.interceptKeyBeforeQueueing(event, policyFlags);
    }

    private int interceptMotionBeforeQueueingNonInteractive(int displayId, long whenNanos, int policyFlags) {
        return this.mWindowManagerCallbacks.interceptMotionBeforeQueueingNonInteractive(displayId, whenNanos, policyFlags);
    }

    private long interceptKeyBeforeDispatching(IBinder focus, KeyEvent event, int policyFlags) {
        return this.mWindowManagerCallbacks.interceptKeyBeforeDispatching(focus, event, policyFlags);
    }

    private KeyEvent dispatchUnhandledKey(IBinder focus, KeyEvent event, int policyFlags) {
        return this.mWindowManagerCallbacks.dispatchUnhandledKey(focus, event, policyFlags);
    }

    private boolean checkInjectEventsPermission(int injectorPid, int injectorUid) {
        return this.mContext.checkPermission("android.permission.INJECT_EVENTS", injectorPid, injectorUid) == 0;
    }

    private void onPointerDownOutsideFocus(IBinder touchedToken) {
        this.mWindowManagerCallbacks.onPointerDownOutsideFocus(touchedToken);
    }

    private int getVirtualKeyQuietTimeMillis() {
        return this.mContext.getResources().getInteger(R.integer.config_mdc_initial_max_retry);
    }

    private static String[] getExcludedDeviceNames() {
        List<String> names = new ArrayList<>();
        File[] baseDirs = {Environment.getRootDirectory(), Environment.getVendorDirectory()};
        for (File baseDir : baseDirs) {
            File confFile = new File(baseDir, EXCLUDED_DEVICES_PATH);
            try {
                InputStream stream = new FileInputStream(confFile);
                names.addAll(ConfigurationProcessor.processExcludedDeviceNames(stream));
            } catch (FileNotFoundException e) {
            } catch (Exception e2) {
                Slog.e(TAG, "Could not parse '" + confFile.getAbsolutePath() + "'", e2);
            }
        }
        return (String[]) names.toArray(new String[0]);
    }

    private static List<String> flatten(Map<String, Integer> map) {
        final List<String> list = new ArrayList<>(map.size() * 2);
        map.forEach(new BiConsumer() { // from class: com.android.server.input.-$$Lambda$InputManagerService$P986LfJHWb-Wytu9J9I0HQIpodU
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                InputManagerService.lambda$flatten$2(list, (String) obj, (Integer) obj2);
            }
        });
        return list;
    }

    static /* synthetic */ void lambda$flatten$2(List list, String k, Integer v) {
        list.add(k);
        list.add(v.toString());
    }

    private static Map<String, Integer> loadStaticInputPortAssociations() {
        File baseDir = Environment.getVendorDirectory();
        File confFile = new File(baseDir, PORT_ASSOCIATIONS_PATH);
        try {
            InputStream stream = new FileInputStream(confFile);
            return ConfigurationProcessor.processInputPortAssociations(stream);
        } catch (FileNotFoundException e) {
            return new HashMap();
        } catch (Exception e2) {
            Slog.e(TAG, "Could not parse '" + confFile.getAbsolutePath() + "'", e2);
            return new HashMap();
        }
    }

    private String[] getInputPortAssociations() {
        Map<String, Integer> associations = new HashMap<>(this.mStaticAssociations);
        synchronized (this.mAssociationsLock) {
            associations.putAll(this.mRuntimeAssociations);
        }
        List<String> associationList = flatten(associations);
        return (String[]) associationList.toArray(new String[0]);
    }

    public boolean canDispatchToDisplay(int deviceId, int displayId) {
        return nativeCanDispatchToDisplay(this.mPtr, deviceId, displayId);
    }

    private int getKeyRepeatTimeout() {
        return ViewConfiguration.getKeyRepeatTimeout();
    }

    private int getKeyRepeatDelay() {
        return ViewConfiguration.getKeyRepeatDelay();
    }

    private int getHoverTapTimeout() {
        return ViewConfiguration.getHoverTapTimeout();
    }

    private int getHoverTapSlop() {
        return ViewConfiguration.getHoverTapSlop();
    }

    private int getDoubleTapTimeout() {
        return ViewConfiguration.getDoubleTapTimeout();
    }

    private int getLongPressTimeout() {
        return ViewConfiguration.getLongPressTimeout();
    }

    private int getPointerLayer() {
        return this.mWindowManagerCallbacks.getPointerLayer();
    }

    private PointerIcon getPointerIcon(int displayId) {
        return PointerIcon.getDefaultIcon(getContextForDisplay(displayId));
    }

    private Context getContextForDisplay(int displayId) {
        Context context = this.mDisplayContext;
        if (context != null && context.getDisplay().getDisplayId() == displayId) {
            return this.mDisplayContext;
        }
        if (this.mContext.getDisplay().getDisplayId() == displayId) {
            Context context2 = this.mContext;
            this.mDisplayContext = context2;
            return context2;
        }
        DisplayManager displayManager = (DisplayManager) this.mContext.getSystemService(DisplayManager.class);
        Display display = displayManager.getDisplay(displayId);
        Context contextCreateDisplayContext = this.mContext.createDisplayContext(display);
        this.mDisplayContext = contextCreateDisplayContext;
        return contextCreateDisplayContext;
    }

    private int getPointerDisplayId() {
        return this.mWindowManagerCallbacks.getPointerDisplayId();
    }

    private String[] getKeyboardLayoutOverlay(InputDeviceIdentifier identifier) throws Throwable {
        String keyboardLayoutDescriptor;
        if (!this.mSystemReady || (keyboardLayoutDescriptor = getCurrentKeyboardLayoutForInputDevice(identifier)) == null) {
            return null;
        }
        final String[] result = new String[2];
        visitKeyboardLayout(keyboardLayoutDescriptor, new KeyboardLayoutVisitor() { // from class: com.android.server.input.InputManagerService.13
            @Override // com.android.server.input.InputManagerService.KeyboardLayoutVisitor
            public void visitKeyboardLayout(Resources resources, int keyboardLayoutResId, KeyboardLayout layout) {
                try {
                    result[0] = layout.getDescriptor();
                    result[1] = Streams.readFully(new InputStreamReader(resources.openRawResource(keyboardLayoutResId)));
                } catch (Resources.NotFoundException e) {
                } catch (IOException e2) {
                }
            }
        });
        if (result[0] == null) {
            Slog.w(TAG, "Could not get keyboard layout with descriptor '" + keyboardLayoutDescriptor + "'.");
            return null;
        }
        return result;
    }

    private String getDeviceAlias(String uniqueId) {
        return BluetoothAdapter.checkBluetoothAddress(uniqueId) ? null : null;
    }

    private final class InputManagerHandler extends Handler {
        public InputManagerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            switch (msg.what) {
                case 1:
                    InputManagerService.this.deliverInputDevicesChanged((InputDevice[]) msg.obj);
                    break;
                case 2:
                    InputManagerService.this.handleSwitchKeyboardLayout(msg.arg1, msg.arg2);
                    break;
                case 3:
                    InputManagerService.this.reloadKeyboardLayouts();
                    break;
                case 4:
                    InputManagerService.this.updateKeyboardLayouts();
                    break;
                case 5:
                    InputManagerService.this.reloadDeviceAliases();
                    break;
                case 6:
                    SomeArgs args = (SomeArgs) msg.obj;
                    long whenNanos = (((long) args.argi1) & 4294967295L) | (((long) args.argi2) << 32);
                    boolean inTabletMode = ((Boolean) args.arg1).booleanValue();
                    InputManagerService.this.deliverTabletModeChanged(whenNanos, inTabletMode);
                    break;
            }
        }
    }

    private final class InputFilterHost extends IInputFilterHost.Stub {
        private boolean mDisconnected;

        private InputFilterHost() {
        }

        public void disconnectLocked() {
            this.mDisconnected = true;
        }

        public void sendInputEvent(InputEvent event, int policyFlags) {
            if (event == null) {
                throw new IllegalArgumentException("event must not be null");
            }
            synchronized (InputManagerService.this.mInputFilterLock) {
                if (!this.mDisconnected) {
                    InputManagerService.nativeInjectInputEvent(InputManagerService.this.mPtr, event, 0, 0, 0, 0, policyFlags | 67108864);
                }
            }
        }
    }

    private final class InputMonitorHost extends IInputMonitorHost.Stub {
        private final InputChannel mInputChannel;

        InputMonitorHost(InputChannel channel) {
            this.mInputChannel = channel;
        }

        public void pilferPointers() {
            InputManagerService.nativePilferPointers(InputManagerService.this.mPtr, this.mInputChannel.getToken());
        }

        public void dispose() {
            InputManagerService.nativeUnregisterInputChannel(InputManagerService.this.mPtr, this.mInputChannel);
            this.mInputChannel.dispose();
        }
    }

    private static final class KeyboardLayoutDescriptor {
        public String keyboardLayoutName;
        public String packageName;
        public String receiverName;

        private KeyboardLayoutDescriptor() {
        }

        public static String format(String packageName, String receiverName, String keyboardName) {
            return packageName + SliceClientPermissions.SliceAuthority.DELIMITER + receiverName + SliceClientPermissions.SliceAuthority.DELIMITER + keyboardName;
        }

        public static KeyboardLayoutDescriptor parse(String descriptor) {
            int pos2;
            int pos = descriptor.indexOf(47);
            if (pos < 0 || pos + 1 == descriptor.length() || (pos2 = descriptor.indexOf(47, pos + 1)) < pos + 2 || pos2 + 1 == descriptor.length()) {
                return null;
            }
            KeyboardLayoutDescriptor result = new KeyboardLayoutDescriptor();
            result.packageName = descriptor.substring(0, pos);
            result.receiverName = descriptor.substring(pos + 1, pos2);
            result.keyboardLayoutName = descriptor.substring(pos2 + 1);
            return result;
        }
    }

    private final class InputDevicesChangedListenerRecord implements IBinder.DeathRecipient {
        private final IInputDevicesChangedListener mListener;
        private final int mPid;

        public InputDevicesChangedListenerRecord(int pid, IInputDevicesChangedListener listener) {
            this.mPid = pid;
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            InputManagerService.this.onInputDevicesChangedListenerDied(this.mPid);
        }

        public void notifyInputDevicesChanged(int[] info) {
            try {
                this.mListener.onInputDevicesChanged(info);
            } catch (RemoteException ex) {
                Slog.w(InputManagerService.TAG, "Failed to notify process " + this.mPid + " that input devices changed, assuming it died.", ex);
                binderDied();
            }
        }
    }

    private final class TabletModeChangedListenerRecord implements IBinder.DeathRecipient {
        private final ITabletModeChangedListener mListener;
        private final int mPid;

        public TabletModeChangedListenerRecord(int pid, ITabletModeChangedListener listener) {
            this.mPid = pid;
            this.mListener = listener;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            InputManagerService.this.onTabletModeChangedListenerDied(this.mPid);
        }

        public void notifyTabletModeChanged(long whenNanos, boolean inTabletMode) {
            try {
                this.mListener.onTabletModeChanged(whenNanos, inTabletMode);
            } catch (RemoteException ex) {
                Slog.w(InputManagerService.TAG, "Failed to notify process " + this.mPid + " that tablet mode changed, assuming it died.", ex);
                binderDied();
            }
        }
    }

    private final class VibratorToken implements IBinder.DeathRecipient {
        public final int mDeviceId;
        public final IBinder mToken;
        public final int mTokenValue;
        public boolean mVibrating;

        public VibratorToken(int deviceId, IBinder token, int tokenValue) {
            this.mDeviceId = deviceId;
            this.mToken = token;
            this.mTokenValue = tokenValue;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            InputManagerService.this.onVibratorTokenDied(this);
        }
    }

    private final class LocalService extends InputManagerInternal {
        private LocalService() {
        }

        public void setDisplayViewports(List<DisplayViewport> viewports) {
            InputManagerService.this.setDisplayViewportsInternal(viewports);
        }

        public boolean injectInputEvent(InputEvent event, int mode) {
            return InputManagerService.this.injectInputEventInternal(event, mode);
        }

        public void setInteractive(boolean interactive) {
            InputManagerService.nativeSetInteractive(InputManagerService.this.mPtr, interactive);
        }

        public void toggleCapsLock(int deviceId) {
            InputManagerService.nativeToggleCapsLock(InputManagerService.this.mPtr, deviceId);
        }

        public void setPulseGestureEnabled(boolean enabled) {
            if (InputManagerService.this.mDoubleTouchGestureEnableFile != null) {
                FileWriter writer = null;
                try {
                    try {
                        writer = new FileWriter(InputManagerService.this.mDoubleTouchGestureEnableFile);
                        writer.write(enabled ? SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION : "0");
                    } catch (IOException e) {
                        Log.wtf(InputManagerService.TAG, "Unable to setPulseGestureEnabled", e);
                    }
                } finally {
                    IoUtils.closeQuietly(writer);
                }
            }
        }

        public boolean transferTouchFocus(IBinder fromChannelToken, IBinder toChannelToken) {
            return InputManagerService.this.transferTouchFocus(fromChannelToken, toChannelToken);
        }
    }
}
