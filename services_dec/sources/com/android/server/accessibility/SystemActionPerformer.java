package com.android.server.accessibility;

import android.R;
import android.app.PendingIntent;
import android.app.RemoteAction;
import android.app.StatusBarManager;
import android.content.Context;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.util.ScreenshotHelper;
import com.android.server.LocalServices;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.usb.descriptors.UsbTerminalTypes;
import com.android.server.wm.WindowManagerInternal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes.dex */
public class SystemActionPerformer {
    private static final String TAG = "SystemActionPerformer";
    private final Context mContext;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyBackAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyHomeAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyLockScreenAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyNotificationsAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyPowerDialogAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyQuickSettingsAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyRecentsAction;
    private final AccessibilityNodeInfo.AccessibilityAction mLegacyTakeScreenshotAction;
    private final SystemActionsChangedListener mListener;
    private final Map<Integer, RemoteAction> mRegisteredSystemActions;
    private Supplier<ScreenshotHelper> mScreenshotHelperSupplier;
    private final Object mSystemActionLock;
    private final WindowManagerInternal mWindowManagerService;

    interface SystemActionsChangedListener {
        void onSystemActionsChanged();
    }

    public SystemActionPerformer(Context context, WindowManagerInternal windowManagerInternal) {
        this(context, windowManagerInternal, null, null);
    }

    public SystemActionPerformer(Context context, WindowManagerInternal windowManagerInternal, Supplier<ScreenshotHelper> screenshotHelperSupplier) {
        this(context, windowManagerInternal, screenshotHelperSupplier, null);
    }

    public SystemActionPerformer(Context context, WindowManagerInternal windowManagerInternal, Supplier<ScreenshotHelper> screenshotHelperSupplier, SystemActionsChangedListener listener) {
        this.mSystemActionLock = new Object();
        this.mRegisteredSystemActions = new ArrayMap();
        this.mContext = context;
        this.mWindowManagerService = windowManagerInternal;
        this.mListener = listener;
        this.mScreenshotHelperSupplier = screenshotHelperSupplier;
        this.mLegacyHomeAction = new AccessibilityNodeInfo.AccessibilityAction(2, this.mContext.getResources().getString(R.string.PERSOSUBSTATE_SIM_ICCID_SUCCESS));
        this.mLegacyBackAction = new AccessibilityNodeInfo.AccessibilityAction(1, this.mContext.getResources().getString(R.string.PERSOSUBSTATE_SIM_CORPORATE_ENTRY));
        this.mLegacyRecentsAction = new AccessibilityNodeInfo.AccessibilityAction(3, this.mContext.getResources().getString(R.string.config_defaultNotes));
        this.mLegacyNotificationsAction = new AccessibilityNodeInfo.AccessibilityAction(4, this.mContext.getResources().getString(R.string.CLIRDefaultOffNextCallOff));
        this.mLegacyQuickSettingsAction = new AccessibilityNodeInfo.AccessibilityAction(5, this.mContext.getResources().getString(R.string.PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_ENTRY));
        this.mLegacyPowerDialogAction = new AccessibilityNodeInfo.AccessibilityAction(6, this.mContext.getResources().getString(R.string.PERSOSUBSTATE_RUIM_HRPD_IN_PROGRESS));
        this.mLegacyLockScreenAction = new AccessibilityNodeInfo.AccessibilityAction(8, this.mContext.getResources().getString(R.string.PERSOSUBSTATE_SIM_CORPORATE_ERROR));
        this.mLegacyTakeScreenshotAction = new AccessibilityNodeInfo.AccessibilityAction(9, this.mContext.getResources().getString(R.string.PERSOSUBSTATE_SIM_IMPI_IN_PROGRESS));
    }

    public void registerSystemAction(int id, RemoteAction action) {
        synchronized (this.mSystemActionLock) {
            this.mRegisteredSystemActions.put(Integer.valueOf(id), action);
        }
        SystemActionsChangedListener systemActionsChangedListener = this.mListener;
        if (systemActionsChangedListener != null) {
            systemActionsChangedListener.onSystemActionsChanged();
        }
    }

    public void unregisterSystemAction(int id) {
        synchronized (this.mSystemActionLock) {
            this.mRegisteredSystemActions.remove(Integer.valueOf(id));
        }
        SystemActionsChangedListener systemActionsChangedListener = this.mListener;
        if (systemActionsChangedListener != null) {
            systemActionsChangedListener.onSystemActionsChanged();
        }
    }

    public List<AccessibilityNodeInfo.AccessibilityAction> getSystemActions() {
        List<AccessibilityNodeInfo.AccessibilityAction> systemActions = new ArrayList<>();
        synchronized (this.mSystemActionLock) {
            for (Map.Entry<Integer, RemoteAction> entry : this.mRegisteredSystemActions.entrySet()) {
                AccessibilityNodeInfo.AccessibilityAction systemAction = new AccessibilityNodeInfo.AccessibilityAction(entry.getKey().intValue(), entry.getValue().getTitle());
                systemActions.add(systemAction);
            }
            addLegacySystemActions(systemActions);
        }
        return systemActions;
    }

    private void addLegacySystemActions(List<AccessibilityNodeInfo.AccessibilityAction> systemActions) {
        if (!this.mRegisteredSystemActions.containsKey(1)) {
            systemActions.add(this.mLegacyBackAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(2)) {
            systemActions.add(this.mLegacyHomeAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(3)) {
            systemActions.add(this.mLegacyRecentsAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(4)) {
            systemActions.add(this.mLegacyNotificationsAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(5)) {
            systemActions.add(this.mLegacyQuickSettingsAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(6)) {
            systemActions.add(this.mLegacyPowerDialogAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(8)) {
            systemActions.add(this.mLegacyLockScreenAction);
        }
        if (!this.mRegisteredSystemActions.containsKey(9)) {
            systemActions.add(this.mLegacyTakeScreenshotAction);
        }
    }

    public boolean performSystemAction(int actionId) {
        long identity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mSystemActionLock) {
                RemoteAction registeredAction = this.mRegisteredSystemActions.get(Integer.valueOf(actionId));
                if (registeredAction != null) {
                    try {
                        registeredAction.getActionIntent().send();
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    } catch (PendingIntent.CanceledException ex) {
                        Slog.e(TAG, "canceled PendingIntent for global action " + ((Object) registeredAction.getTitle()), ex);
                        Binder.restoreCallingIdentity(identity);
                        return false;
                    }
                }
                switch (actionId) {
                    case 1:
                        sendDownAndUpKeyEvents(4);
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    case 2:
                        sendDownAndUpKeyEvents(3);
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    case 3:
                        boolean zOpenRecents = openRecents();
                        Binder.restoreCallingIdentity(identity);
                        return zOpenRecents;
                    case 4:
                        expandNotifications();
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    case 5:
                        expandQuickSettings();
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    case 6:
                        showGlobalActions();
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    case 7:
                        boolean z = toggleSplitScreen();
                        Binder.restoreCallingIdentity(identity);
                        return z;
                    case 8:
                        boolean zLockScreen = lockScreen();
                        Binder.restoreCallingIdentity(identity);
                        return zLockScreen;
                    case 9:
                        boolean zTakeScreenshot = takeScreenshot();
                        Binder.restoreCallingIdentity(identity);
                        return zTakeScreenshot;
                    case 10:
                        sendDownAndUpKeyEvents(79);
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    default:
                        Slog.e(TAG, "Invalid action id: " + actionId);
                        Binder.restoreCallingIdentity(identity);
                        return false;
                }
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    private void sendDownAndUpKeyEvents(int keyCode) {
        long token = Binder.clearCallingIdentity();
        long downTime = SystemClock.uptimeMillis();
        sendKeyEventIdentityCleared(keyCode, 0, downTime, downTime);
        sendKeyEventIdentityCleared(keyCode, 1, downTime, SystemClock.uptimeMillis());
        Binder.restoreCallingIdentity(token);
    }

    private void sendKeyEventIdentityCleared(int keyCode, int action, long downTime, long time) {
        KeyEvent event = KeyEvent.obtain(downTime, time, action, keyCode, 0, 0, -1, 0, 8, UsbTerminalTypes.TERMINAL_USB_STREAMING, null);
        InputManager.getInstance().injectInputEvent(event, 0);
        event.recycle();
    }

    private void expandNotifications() {
        long token = Binder.clearCallingIdentity();
        StatusBarManager statusBarManager = (StatusBarManager) this.mContext.getSystemService("statusbar");
        statusBarManager.expandNotificationsPanel();
        Binder.restoreCallingIdentity(token);
    }

    private void expandQuickSettings() {
        long token = Binder.clearCallingIdentity();
        StatusBarManager statusBarManager = (StatusBarManager) this.mContext.getSystemService("statusbar");
        statusBarManager.expandSettingsPanel();
        Binder.restoreCallingIdentity(token);
    }

    private boolean openRecents() {
        long token = Binder.clearCallingIdentity();
        try {
            StatusBarManagerInternal statusBarService = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
            if (statusBarService != null) {
                statusBarService.toggleRecentApps();
                return true;
            }
            return false;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private void showGlobalActions() {
        this.mWindowManagerService.showGlobalActions();
    }

    private boolean toggleSplitScreen() {
        long token = Binder.clearCallingIdentity();
        try {
            StatusBarManagerInternal statusBarService = (StatusBarManagerInternal) LocalServices.getService(StatusBarManagerInternal.class);
            if (statusBarService != null) {
                statusBarService.toggleSplitScreen();
                return true;
            }
            return false;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private boolean lockScreen() {
        ((PowerManager) this.mContext.getSystemService(PowerManager.class)).goToSleep(SystemClock.uptimeMillis(), 7, 0);
        this.mWindowManagerService.lockNow();
        return true;
    }

    private boolean takeScreenshot() {
        Supplier<ScreenshotHelper> supplier = this.mScreenshotHelperSupplier;
        ScreenshotHelper screenshotHelper = supplier != null ? supplier.get() : new ScreenshotHelper(this.mContext);
        screenshotHelper.takeScreenshot(1, true, true, 4, new Handler(Looper.getMainLooper()), (Consumer) null);
        return true;
    }
}
