package com.android.server.statusbar;

import android.R;
import android.app.ActivityThread;
import android.app.ITransientNotificationCallback;
import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.hardware.biometrics.IBiometricServiceReceiverInternal;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ShellCallback;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.statusbar.ISplitInterceptor;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.internal.statusbar.RegisterStatusBarResult;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.DumpUtils;
import com.android.internal.view.AppearanceRegion;
import com.android.server.LocalServices;
import com.android.server.UiThread;
import com.android.server.inputmethod.InputMethodManagerInternal;
import com.android.server.notification.NotificationDelegate;
import com.android.server.policy.GlobalActionsProvider;
import com.android.server.power.ShutdownThread;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class StatusBarManagerService extends IStatusBarService.Stub implements DisplayManager.DisplayListener {
    private static final boolean SPEW = false;
    private static final String TAG = "StatusBarManagerService";
    private volatile IStatusBar mBar;
    private final Context mContext;
    private int mCurrentUserId;
    private final DeathRecipient mDeathRecipient;
    private GlobalActionsProvider.GlobalActionsListener mGlobalActionListener;
    private NotificationDelegate mNotificationDelegate;
    private volatile ISplitInterceptor mSplitInterceptor;
    private boolean mTracingEnabled;
    private Handler mHandler = new Handler();
    private ArrayMap<String, StatusBarIcon> mIcons = new ArrayMap<>();
    private final ArrayList<DisableRecord> mDisableRecords = new ArrayList<>();
    private IBinder mSysUiVisToken = new Binder();
    private final Object mLock = new Object();
    private SparseArray<UiState> mDisplayUiState = new SparseArray<>();
    private final StatusBarManagerInternal mInternalService = new StatusBarManagerInternal() { // from class: com.android.server.statusbar.StatusBarManagerService.1
        private boolean mNotificationLightOn;

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void setNotificationDelegate(NotificationDelegate delegate) {
            StatusBarManagerService.this.mNotificationDelegate = delegate;
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showScreenPinningRequest(int taskId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showScreenPinningRequest(taskId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showAssistDisclosure() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showAssistDisclosure();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void startAssist(Bundle args) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.startAssist(args);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void onCameraLaunchGestureDetected(int source) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onCameraLaunchGestureDetected(source);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void topAppWindowChanged(int displayId, boolean isFullscreen, boolean isImmersive) {
            StatusBarManagerService.this.topAppWindowChanged(displayId, isFullscreen, isImmersive);
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void setDisableFlags(int displayId, int flags, String cause) {
            StatusBarManagerService.this.setDisableFlags(displayId, flags, cause);
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void toggleSplitScreen() {
            StatusBarManagerService.this.enforceStatusBarService();
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleSplitScreen();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void appTransitionFinished(int displayId) {
            StatusBarManagerService.this.enforceStatusBarService();
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionFinished(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void toggleRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void setCurrentUser(int newUserId) {
            StatusBarManagerService.this.mCurrentUserId = newUserId;
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void preloadRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.preloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void cancelPreloadRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.cancelPreloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showRecentApps(boolean triggeredFromAltTab) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showRecentApps(triggeredFromAltTab);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void hideRecentApps(boolean triggeredFromAltTab, boolean triggeredFromHomeKey) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.hideRecentApps(triggeredFromAltTab, triggeredFromHomeKey);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void dismissKeyboardShortcutsMenu() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.dismissKeyboardShortcutsMenu();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void toggleKeyboardShortcutsMenu(int deviceId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleKeyboardShortcutsMenu(deviceId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showChargingAnimation(int batteryLevel) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showWirelessChargingAnimation(batteryLevel);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showPictureInPictureMenu() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showPictureInPictureMenu();
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void setWindowState(int displayId, int window, int state) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.setWindowState(displayId, window, state);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void appTransitionPending(int displayId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionPending(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void appTransitionCancelled(int displayId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionCancelled(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void appTransitionStarting(int displayId, long statusBarAnimationsStartTime, long statusBarAnimationsDuration) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionStarting(displayId, statusBarAnimationsStartTime, statusBarAnimationsDuration);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void setTopAppHidesStatusBar(boolean hidesStatusBar) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.setTopAppHidesStatusBar(hidesStatusBar);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public boolean showShutdownUi(boolean isReboot, String reason) {
            if (StatusBarManagerService.this.mContext.getResources().getBoolean(R.bool.config_cecRcProfileSourceContentsMenu_userConfigurable) && StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showShutdownUi(isReboot, reason);
                    return true;
                } catch (RemoteException e) {
                }
            }
            return false;
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void onProposedRotationChanged(int rotation, boolean isValid) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onProposedRotationChanged(rotation, isValid);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void onDisplayReady(int displayId) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onDisplayReady(displayId);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void onRecentsAnimationStateChanged(boolean running) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onRecentsAnimationStateChanged(running);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void onSystemBarAppearanceChanged(int displayId, int appearance, AppearanceRegion[] appearanceRegions, boolean navbarColorManagedByIme) {
            UiState state = StatusBarManagerService.this.getUiState(displayId);
            if (!state.appearanceEquals(appearance, appearanceRegions, navbarColorManagedByIme)) {
                state.setAppearance(appearance, appearanceRegions, navbarColorManagedByIme);
            }
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onSystemBarAppearanceChanged(displayId, appearance, appearanceRegions, navbarColorManagedByIme);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showTransient(int displayId, int[] types) {
            StatusBarManagerService.this.getUiState(displayId).showTransient(types);
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showTransient(displayId, types);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void abortTransient(int displayId, int[] types) {
            StatusBarManagerService.this.getUiState(displayId).clearTransient(types);
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.abortTransient(displayId, types);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void showToast(int uid, String packageName, IBinder token, CharSequence text, IBinder windowToken, int duration, ITransientNotificationCallback callback) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showToast(uid, packageName, token, text, windowToken, duration, callback);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public void hideToast(String packageName, IBinder token) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.hideToast(packageName, token);
                } catch (RemoteException e) {
                }
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public boolean interceptCurrentPackageStart(String packageName, String activityName, Intent intent) {
            if (StatusBarManagerService.this.mSplitInterceptor == null) {
                return false;
            }
            try {
                return StatusBarManagerService.this.mSplitInterceptor.interceptCurrentPackageStart(packageName, activityName, intent);
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // com.android.server.statusbar.StatusBarManagerInternal
        public boolean interceptMoveTaskToTop(int taskId, int flags) {
            if (StatusBarManagerService.this.mSplitInterceptor == null) {
                return false;
            }
            try {
                return StatusBarManagerService.this.mSplitInterceptor.interceptMoveTaskToTop(taskId, flags);
            } catch (RemoteException e) {
                return false;
            }
        }
    };
    private final GlobalActionsProvider mGlobalActionsProvider = new GlobalActionsProvider() { // from class: com.android.server.statusbar.StatusBarManagerService.2
        @Override // com.android.server.policy.GlobalActionsProvider
        public boolean isGlobalActionsDisabled() {
            int disabled2 = ((UiState) StatusBarManagerService.this.mDisplayUiState.get(0)).getDisabled2();
            return (disabled2 & 8) != 0;
        }

        @Override // com.android.server.policy.GlobalActionsProvider
        public void setGlobalActionsListener(GlobalActionsProvider.GlobalActionsListener listener) {
            StatusBarManagerService.this.mGlobalActionListener = listener;
            StatusBarManagerService.this.mGlobalActionListener.onGlobalActionsAvailableChanged(StatusBarManagerService.this.mBar != null);
        }

        @Override // com.android.server.policy.GlobalActionsProvider
        public void showGlobalActions() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.showGlobalActionsMenu();
                } catch (RemoteException e) {
                }
            }
        }
    };

    private class DeathRecipient implements IBinder.DeathRecipient {
        private DeathRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            StatusBarManagerService.this.mBar.asBinder().unlinkToDeath(this, 0);
            StatusBarManagerService.this.mBar = null;
            StatusBarManagerService.this.notifyBarAttachChanged();
        }

        public void linkToDeath() {
            try {
                StatusBarManagerService.this.mBar.asBinder().linkToDeath(StatusBarManagerService.this.mDeathRecipient, 0);
            } catch (RemoteException e) {
                Slog.e(StatusBarManagerService.TAG, "Unable to register Death Recipient for status bar", e);
            }
        }
    }

    private class DisableRecord implements IBinder.DeathRecipient {
        String pkg;
        IBinder token;
        int userId;
        int what1;
        int what2;

        public DisableRecord(int userId, IBinder token) {
            this.userId = userId;
            this.token = token;
            try {
                token.linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Slog.i(StatusBarManagerService.TAG, "binder died for pkg=" + this.pkg);
            StatusBarManagerService.this.disableForUser(0, this.token, this.pkg, this.userId);
            StatusBarManagerService.this.disable2ForUser(0, this.token, this.pkg, this.userId);
            this.token.unlinkToDeath(this, 0);
        }

        public void setFlags(int what, int which, String pkg) {
            if (which == 1) {
                this.what1 = what;
            } else if (which == 2) {
                this.what2 = what;
            } else {
                Slog.w(StatusBarManagerService.TAG, "Can't set unsupported disable flag " + which + ": 0x" + Integer.toHexString(what));
            }
            this.pkg = pkg;
        }

        public int getFlags(int which) {
            if (which == 1) {
                return this.what1;
            }
            if (which == 2) {
                return this.what2;
            }
            Slog.w(StatusBarManagerService.TAG, "Can't get unsupported disable flag " + which);
            return 0;
        }

        public boolean isEmpty() {
            return this.what1 == 0 && this.what2 == 0;
        }

        public String toString() {
            return String.format("userId=%d what1=0x%08X what2=0x%08X pkg=%s token=%s", Integer.valueOf(this.userId), Integer.valueOf(this.what1), Integer.valueOf(this.what2), this.pkg, this.token);
        }
    }

    public StatusBarManagerService(Context context) {
        this.mDeathRecipient = new DeathRecipient();
        this.mContext = context;
        LocalServices.addService(StatusBarManagerInternal.class, this.mInternalService);
        LocalServices.addService(GlobalActionsProvider.class, this.mGlobalActionsProvider);
        UiState state = new UiState();
        this.mDisplayUiState.put(0, state);
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        displayManager.registerDisplayListener(this, this.mHandler);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayAdded(int displayId) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayRemoved(int displayId) {
        synchronized (this.mLock) {
            this.mDisplayUiState.remove(displayId);
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayChanged(int displayId) {
    }

    public void expandNotificationsPanel() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateExpandNotificationsPanel();
            } catch (RemoteException e) {
            }
        }
    }

    public void collapsePanels() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateCollapsePanels();
            } catch (RemoteException e) {
            }
        }
    }

    public void togglePanel() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.togglePanel();
            } catch (RemoteException e) {
            }
        }
    }

    public void expandSettingsPanel(String subPanel) {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateExpandSettingsPanel(subPanel);
            } catch (RemoteException e) {
            }
        }
    }

    public void addTile(ComponentName component) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.addQsTile(component);
            } catch (RemoteException e) {
            }
        }
    }

    public void remTile(ComponentName component) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.remQsTile(component);
            } catch (RemoteException e) {
            }
        }
    }

    public void clickTile(ComponentName component) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.clickQsTile(component);
            } catch (RemoteException e) {
            }
        }
    }

    public void handleSystemKey(int key) throws RemoteException {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.handleSystemKey(key);
            } catch (RemoteException e) {
            }
        }
    }

    public void showPinningEnterExitToast(boolean entering) throws RemoteException {
        if (this.mBar != null) {
            try {
                this.mBar.showPinningEnterExitToast(entering);
            } catch (RemoteException e) {
            }
        }
    }

    public void showPinningEscapeToast() throws RemoteException {
        if (this.mBar != null) {
            try {
                this.mBar.showPinningEscapeToast();
            } catch (RemoteException e) {
            }
        }
    }

    public void showAuthenticationDialog(Bundle bundle, IBiometricServiceReceiverInternal receiver, int biometricModality, boolean requireConfirmation, int userId, String opPackageName, long operationId, int sysUiSessionId) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.showAuthenticationDialog(bundle, receiver, biometricModality, requireConfirmation, userId, opPackageName, operationId, sysUiSessionId);
            } catch (RemoteException e) {
            }
        }
    }

    public void onBiometricAuthenticated() {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.onBiometricAuthenticated();
            } catch (RemoteException e) {
            }
        }
    }

    public void onBiometricHelp(String message) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.onBiometricHelp(message);
            } catch (RemoteException e) {
            }
        }
    }

    public void onBiometricError(int modality, int error, int vendorCode) {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.onBiometricError(modality, error, vendorCode);
            } catch (RemoteException e) {
            }
        }
    }

    public void hideAuthenticationDialog() {
        enforceBiometricDialog();
        if (this.mBar != null) {
            try {
                this.mBar.hideAuthenticationDialog();
            } catch (RemoteException e) {
            }
        }
    }

    public void startTracing() {
        if (this.mBar != null) {
            try {
                this.mBar.startTracing();
                this.mTracingEnabled = true;
            } catch (RemoteException e) {
            }
        }
    }

    public void stopTracing() {
        if (this.mBar != null) {
            try {
                this.mTracingEnabled = false;
                this.mBar.stopTracing();
            } catch (RemoteException e) {
            }
        }
    }

    public boolean isTracing() {
        return this.mTracingEnabled;
    }

    public void disable(int what, IBinder token, String pkg) {
        disableForUser(what, token, pkg, this.mCurrentUserId);
    }

    public void disableForUser(int what, IBinder token, String pkg, int userId) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, userId, what, token, pkg, 1);
        }
    }

    public void disable2(int what, IBinder token, String pkg) {
        disable2ForUser(what, token, pkg, this.mCurrentUserId);
    }

    public void disable2ForUser(int what, IBinder token, String pkg, int userId) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, userId, what, token, pkg, 2);
        }
    }

    private void disableLocked(int displayId, int userId, int what, IBinder token, String pkg, int whichFlag) {
        manageDisableListLocked(userId, what, token, pkg, whichFlag);
        final int net1 = gatherDisableActionsLocked(this.mCurrentUserId, 1);
        int net2 = gatherDisableActionsLocked(this.mCurrentUserId, 2);
        UiState state = getUiState(displayId);
        if (state.disableEquals(net1, net2)) {
            return;
        }
        state.setDisabled(net1, net2);
        this.mHandler.post(new Runnable() { // from class: com.android.server.statusbar.-$$Lambda$StatusBarManagerService$yr21OX4Hyd_XfExwnVnVIn3Jfe4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$disableLocked$0$StatusBarManagerService(net1);
            }
        });
        if (this.mBar != null) {
            try {
                this.mBar.disable(displayId, net1, net2);
            } catch (RemoteException e) {
            }
        }
    }

    public /* synthetic */ void lambda$disableLocked$0$StatusBarManagerService(int net1) {
        this.mNotificationDelegate.onSetDisabled(net1);
    }

    public int[] getDisableFlags(IBinder token, int userId) {
        enforceStatusBar();
        int disable1 = 0;
        int disable2 = 0;
        synchronized (this.mLock) {
            DisableRecord record = (DisableRecord) findMatchingRecordLocked(token, userId).second;
            if (record != null) {
                disable1 = record.what1;
                disable2 = record.what2;
            }
        }
        return new int[]{disable1, disable2};
    }

    public void setIcon(String slot, String iconPackage, int iconId, int iconLevel, String contentDescription) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            StatusBarIcon icon = new StatusBarIcon(iconPackage, UserHandle.SYSTEM, iconId, iconLevel, 0, contentDescription);
            this.mIcons.put(slot, icon);
            if (this.mBar != null) {
                try {
                    this.mBar.setIcon(slot, icon);
                } catch (RemoteException e) {
                }
            }
        }
    }

    public void setIconVisibility(String slot, boolean visibility) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            StatusBarIcon icon = this.mIcons.get(slot);
            if (icon == null) {
                return;
            }
            if (icon.visible != visibility) {
                icon.visible = visibility;
                if (this.mBar != null) {
                    try {
                        this.mBar.setIcon(slot, icon);
                    } catch (RemoteException e) {
                    }
                }
            }
        }
    }

    public void removeIcon(String slot) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            this.mIcons.remove(slot);
            if (this.mBar != null) {
                try {
                    this.mBar.removeIcon(slot);
                } catch (RemoteException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void topAppWindowChanged(final int displayId, final boolean isFullscreen, final boolean isImmersive) {
        enforceStatusBar();
        synchronized (this.mLock) {
            getUiState(displayId).setFullscreen(isFullscreen);
            getUiState(displayId).setImmersive(isImmersive);
            this.mHandler.post(new Runnable() { // from class: com.android.server.statusbar.-$$Lambda$StatusBarManagerService$uF0ibEnnXe7Lxunxb98QQLJjgZM
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$topAppWindowChanged$1$StatusBarManagerService(displayId, isFullscreen, isImmersive);
                }
            });
        }
    }

    public /* synthetic */ void lambda$topAppWindowChanged$1$StatusBarManagerService(int displayId, boolean isFullscreen, boolean isImmersive) {
        if (this.mBar != null) {
            try {
                this.mBar.topAppWindowChanged(displayId, isFullscreen, isImmersive);
            } catch (RemoteException e) {
            }
        }
    }

    public void setImeWindowStatus(final int displayId, final IBinder token, final int vis, final int backDisposition, final boolean showImeSwitcher, final boolean isMultiClientImeEnabled) throws Throwable {
        enforceStatusBar();
        synchronized (this.mLock) {
            try {
                try {
                    getUiState(displayId).setImeWindowState(vis, backDisposition, showImeSwitcher, token);
                    this.mHandler.post(new Runnable() { // from class: com.android.server.statusbar.-$$Lambda$StatusBarManagerService$dQguzfF4tEgBOj3Pr8MpGRN8HT0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$setImeWindowStatus$2$StatusBarManagerService(displayId, token, vis, backDisposition, showImeSwitcher, isMultiClientImeEnabled);
                        }
                    });
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

    public /* synthetic */ void lambda$setImeWindowStatus$2$StatusBarManagerService(int displayId, IBinder token, int vis, int backDisposition, boolean showImeSwitcher, boolean isMultiClientImeEnabled) {
        if (this.mBar == null) {
            return;
        }
        try {
            this.mBar.setImeWindowStatus(displayId, token, vis, backDisposition, showImeSwitcher, isMultiClientImeEnabled);
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisableFlags(int displayId, int flags, String cause) {
        enforceStatusBarService();
        int unknownFlags = (-67043329) & flags;
        if (unknownFlags != 0) {
            Slog.e(TAG, "Unknown disable flags: 0x" + Integer.toHexString(unknownFlags), new RuntimeException());
        }
        synchronized (this.mLock) {
            disableLocked(displayId, this.mCurrentUserId, flags, this.mSysUiVisToken, cause, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UiState getUiState(int displayId) {
        UiState state = this.mDisplayUiState.get(displayId);
        if (state == null) {
            UiState state2 = new UiState();
            this.mDisplayUiState.put(displayId, state2);
            return state2;
        }
        return state;
    }

    private class UiState {
        private int mAppearance;
        private AppearanceRegion[] mAppearanceRegions;
        private int mDisabled1;
        private int mDisabled2;
        private boolean mFullscreen;
        private int mImeBackDisposition;
        private IBinder mImeToken;
        private int mImeWindowVis;
        private boolean mImmersive;
        private boolean mNavbarColorManagedByIme;
        private boolean mShowImeSwitcher;
        private ArraySet<Integer> mTransientBarTypes;

        private UiState() {
            this.mAppearance = 0;
            this.mAppearanceRegions = new AppearanceRegion[0];
            this.mTransientBarTypes = new ArraySet<>();
            this.mNavbarColorManagedByIme = false;
            this.mFullscreen = false;
            this.mImmersive = false;
            this.mDisabled1 = 0;
            this.mDisabled2 = 0;
            this.mImeWindowVis = 0;
            this.mImeBackDisposition = 0;
            this.mShowImeSwitcher = false;
            this.mImeToken = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAppearance(int appearance, AppearanceRegion[] appearanceRegions, boolean navbarColorManagedByIme) {
            this.mAppearance = appearance;
            this.mAppearanceRegions = appearanceRegions;
            this.mNavbarColorManagedByIme = navbarColorManagedByIme;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean appearanceEquals(int appearance, AppearanceRegion[] appearanceRegions, boolean navbarColorManagedByIme) {
            if (this.mAppearance != appearance || this.mAppearanceRegions.length != appearanceRegions.length || this.mNavbarColorManagedByIme != navbarColorManagedByIme) {
                return false;
            }
            for (int i = appearanceRegions.length - 1; i >= 0; i--) {
                if (!this.mAppearanceRegions[i].equals(appearanceRegions[i])) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showTransient(int[] types) {
            for (int type : types) {
                this.mTransientBarTypes.add(Integer.valueOf(type));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearTransient(int[] types) {
            for (int type : types) {
                this.mTransientBarTypes.remove(Integer.valueOf(type));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFullscreen(boolean isFullscreen) {
            this.mFullscreen = isFullscreen;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImmersive(boolean isImmersive) {
            this.mImmersive = isImmersive;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getDisabled1() {
            return this.mDisabled1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getDisabled2() {
            return this.mDisabled2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setDisabled(int disabled1, int disabled2) {
            this.mDisabled1 = disabled1;
            this.mDisabled2 = disabled2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean disableEquals(int disabled1, int disabled2) {
            return this.mDisabled1 == disabled1 && this.mDisabled2 == disabled2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setImeWindowState(int vis, int backDisposition, boolean showImeSwitcher, IBinder token) {
            this.mImeWindowVis = vis;
            this.mImeBackDisposition = backDisposition;
            this.mShowImeSwitcher = showImeSwitcher;
            this.mImeToken = token;
        }
    }

    private void enforceStatusBarOrShell() {
        if (Binder.getCallingUid() == 2000) {
            return;
        }
        enforceStatusBar();
    }

    private void enforceStatusBar() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR", TAG);
    }

    private void enforceExpandStatusBar() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.EXPAND_STATUS_BAR", TAG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceStatusBarService() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE", TAG);
    }

    private void enforceBiometricDialog() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_BIOMETRIC_DIALOG", TAG);
    }

    public RegisterStatusBarResult registerStatusBar(IStatusBar bar) {
        ArrayMap<String, StatusBarIcon> icons;
        RegisterStatusBarResult registerStatusBarResult;
        enforceStatusBarService();
        Slog.i(TAG, "registerStatusBar bar=" + bar);
        this.mBar = bar;
        this.mDeathRecipient.linkToDeath();
        notifyBarAttachChanged();
        synchronized (this.mIcons) {
            icons = new ArrayMap<>(this.mIcons);
        }
        synchronized (this.mLock) {
            UiState state = this.mDisplayUiState.get(0);
            int[] transientBarTypes = new int[state.mTransientBarTypes.size()];
            for (int i = 0; i < transientBarTypes.length; i++) {
                transientBarTypes[i] = ((Integer) state.mTransientBarTypes.valueAt(i)).intValue();
            }
            registerStatusBarResult = new RegisterStatusBarResult(icons, gatherDisableActionsLocked(this.mCurrentUserId, 1), state.mAppearance, state.mAppearanceRegions, state.mImeWindowVis, state.mImeBackDisposition, state.mShowImeSwitcher, gatherDisableActionsLocked(this.mCurrentUserId, 2), state.mImeToken, state.mNavbarColorManagedByIme, state.mFullscreen, state.mImmersive, transientBarTypes);
        }
        return registerStatusBarResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyBarAttachChanged() {
        UiThread.getHandler().post(new Runnable() { // from class: com.android.server.statusbar.-$$Lambda$StatusBarManagerService$E67OP8P-DuCzmX46ISCwIyOv93Q
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyBarAttachChanged$3$StatusBarManagerService();
            }
        });
    }

    public /* synthetic */ void lambda$notifyBarAttachChanged$3$StatusBarManagerService() {
        GlobalActionsProvider.GlobalActionsListener globalActionsListener = this.mGlobalActionListener;
        if (globalActionsListener == null) {
            return;
        }
        globalActionsListener.onGlobalActionsAvailableChanged(this.mBar != null);
    }

    public void onPanelRevealed(boolean clearNotificationEffects, int numItems) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onPanelRevealed(clearNotificationEffects, numItems);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void clearNotificationEffects() throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.clearEffects();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onPanelHidden() throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onPanelHidden();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void shutdown() {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.prepareForPossibleShutdown();
            this.mHandler.post(new Runnable() { // from class: com.android.server.statusbar.-$$Lambda$StatusBarManagerService$KPqmL9kxt0YFCz4dBAFkiUMRWw8
                @Override // java.lang.Runnable
                public final void run() {
                    ShutdownThread.shutdown(StatusBarManagerService.getUiContext(), "userrequested", false);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void reboot(final boolean safeMode) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.prepareForPossibleShutdown();
            this.mHandler.post(new Runnable() { // from class: com.android.server.statusbar.-$$Lambda$StatusBarManagerService$P3yc6y5R6oqIuxbUK14JNoV_hJM
                @Override // java.lang.Runnable
                public final void run() {
                    StatusBarManagerService.lambda$reboot$5(safeMode);
                }
            });
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    static /* synthetic */ void lambda$reboot$5(boolean safeMode) {
        if (safeMode) {
            ShutdownThread.rebootSafeMode(getUiContext(), true);
        } else {
            ShutdownThread.reboot(getUiContext(), "userrequested", false);
        }
    }

    public void onGlobalActionsShown() {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            if (this.mGlobalActionListener == null) {
                return;
            }
            this.mGlobalActionListener.onGlobalActionsShown();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onGlobalActionsHidden() {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            if (this.mGlobalActionListener == null) {
                return;
            }
            this.mGlobalActionListener.onGlobalActionsDismissed();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationClick(String key, NotificationVisibility nv) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationClick(callingUid, callingPid, key, nv);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationActionClick(String key, int actionIndex, Notification.Action action, NotificationVisibility nv, boolean generatedByAssistant) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationActionClick(callingUid, callingPid, key, actionIndex, action, nv, generatedByAssistant);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationError(String pkg, String tag, int id, int uid, int initialPid, String message, int userId) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationError(callingUid, callingPid, pkg, tag, id, uid, initialPid, message, userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationClear(String pkg, String tag, int id, int userId, String key, int dismissalSurface, int dismissalSentiment, NotificationVisibility nv) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationClear(callingUid, callingPid, pkg, tag, id, userId, key, dismissalSurface, dismissalSentiment, nv);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationVisibilityChanged(NotificationVisibility[] newlyVisibleKeys, NotificationVisibility[] noLongerVisibleKeys) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationVisibilityChanged(newlyVisibleKeys, noLongerVisibleKeys);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationExpansionChanged(String key, boolean userAction, boolean expanded, int location) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationExpansionChanged(key, userAction, expanded, location);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationDirectReplied(String key) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationDirectReplied(key);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationSmartSuggestionsAdded(String key, int smartReplyCount, int smartActionCount, boolean generatedByAssistant, boolean editBeforeSending) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationSmartSuggestionsAdded(key, smartReplyCount, smartActionCount, generatedByAssistant, editBeforeSending);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationSmartReplySent(String key, int replyIndex, CharSequence reply, int notificationLocation, boolean modifiedBeforeSending) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationSmartReplySent(key, replyIndex, reply, notificationLocation, modifiedBeforeSending);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationSettingsViewed(String key) throws RemoteException {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationSettingsViewed(key);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onClearAllNotifications(int userId) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onClearAll(callingUid, callingPid, userId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onNotificationBubbleChanged(String key, boolean isBubble, int flags) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onNotificationBubbleChanged(key, isBubble, flags);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void onBubbleNotificationSuppressionChanged(String key, boolean isNotifSuppressed) {
        enforceStatusBarService();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.onBubbleNotificationSuppressionChanged(key, isNotifSuppressed);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void hideCurrentInputMethodForBubbles() {
        long token = Binder.clearCallingIdentity();
        try {
            InputMethodManagerInternal.get().hideCurrentInputMethod(19);
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void grantInlineReplyUriPermission(String key, Uri uri, UserHandle user, String packageName) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.grantInlineReplyUriPermission(key, uri, user, packageName, callingUid);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public void clearInlineReplyUriPermissions(String key) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        long identity = Binder.clearCallingIdentity();
        try {
            this.mNotificationDelegate.clearInlineReplyUriPermissions(key, callingUid);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new StatusBarShellCommand(this, this.mContext).exec(this, in, out, err, args, callback, resultReceiver);
    }

    public void showInattentiveSleepWarning() {
        enforceStatusBarService();
        if (this.mBar != null) {
            try {
                this.mBar.showInattentiveSleepWarning();
            } catch (RemoteException e) {
            }
        }
    }

    public void dismissInattentiveSleepWarning(boolean animated) {
        enforceStatusBarService();
        if (this.mBar != null) {
            try {
                this.mBar.dismissInattentiveSleepWarning(animated);
            } catch (RemoteException e) {
            }
        }
    }

    public void suppressAmbientDisplay(boolean suppress) {
        enforceStatusBarService();
        if (this.mBar != null) {
            try {
                this.mBar.suppressAmbientDisplay(suppress);
            } catch (RemoteException e) {
            }
        }
    }

    public String[] getStatusBarIcons() {
        return this.mContext.getResources().getStringArray(R.array.config_allowedGlobalInstantAppSettings);
    }

    void manageDisableListLocked(int userId, int what, IBinder token, String pkg, int which) {
        Pair<Integer, DisableRecord> match = findMatchingRecordLocked(token, userId);
        int i = ((Integer) match.first).intValue();
        DisableRecord record = (DisableRecord) match.second;
        if (!token.isBinderAlive()) {
            if (record != null) {
                this.mDisableRecords.remove(i);
                record.token.unlinkToDeath(record, 0);
                return;
            }
            return;
        }
        if (record != null) {
            record.setFlags(what, which, pkg);
            if (record.isEmpty()) {
                this.mDisableRecords.remove(i);
                record.token.unlinkToDeath(record, 0);
                return;
            }
            return;
        }
        DisableRecord record2 = new DisableRecord(userId, token);
        record2.setFlags(what, which, pkg);
        this.mDisableRecords.add(record2);
    }

    private Pair<Integer, DisableRecord> findMatchingRecordLocked(IBinder token, int userId) {
        int numRecords = this.mDisableRecords.size();
        DisableRecord record = null;
        int i = 0;
        while (i < numRecords) {
            DisableRecord r = this.mDisableRecords.get(i);
            if (r.token != token || r.userId != userId) {
                i++;
            } else {
                record = r;
                break;
            }
        }
        return new Pair<>(Integer.valueOf(i), record);
    }

    int gatherDisableActionsLocked(int userId, int which) {
        int N = this.mDisableRecords.size();
        int net = 0;
        for (int i = 0; i < N; i++) {
            DisableRecord rec = this.mDisableRecords.get(i);
            if (rec.userId == userId) {
                net |= rec.getFlags(which);
            }
        }
        return net;
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpPermission(this.mContext, TAG, pw)) {
            synchronized (this.mLock) {
                for (int i = 0; i < this.mDisplayUiState.size(); i++) {
                    int key = this.mDisplayUiState.keyAt(i);
                    UiState state = this.mDisplayUiState.get(key);
                    pw.println("  displayId=" + key);
                    pw.println("    mDisabled1=0x" + Integer.toHexString(state.getDisabled1()));
                    pw.println("    mDisabled2=0x" + Integer.toHexString(state.getDisabled2()));
                }
                int N = this.mDisableRecords.size();
                pw.println("  mDisableRecords.size=" + N);
                for (int i2 = 0; i2 < N; i2++) {
                    DisableRecord tok = this.mDisableRecords.get(i2);
                    pw.println("    [" + i2 + "] " + tok);
                }
                pw.println("  mCurrentUserId=" + this.mCurrentUserId);
                pw.println("  mIcons=");
                for (String slot : this.mIcons.keySet()) {
                    pw.println("    ");
                    pw.print(slot);
                    pw.print(" -> ");
                    StatusBarIcon icon = this.mIcons.get(slot);
                    pw.print(icon);
                    if (!TextUtils.isEmpty(icon.contentDescription)) {
                        pw.print(" \"");
                        pw.print(icon.contentDescription);
                        pw.print("\"");
                    }
                    pw.println();
                }
            }
        }
    }

    private static final Context getUiContext() {
        return ActivityThread.currentActivityThread().getSystemUiContext();
    }

    public void registerSplitInterceptor(ISplitInterceptor interceptor) {
        this.mSplitInterceptor = interceptor;
    }
}
