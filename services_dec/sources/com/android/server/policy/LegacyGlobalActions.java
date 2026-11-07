package com.android.server.policy;

import android.R;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.Vibrator;
import android.provider.Settings;
import android.service.dreams.IDreamManager;
import android.sysprop.TelephonyProperties;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.util.ArraySet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.widget.AdapterView;
import com.android.internal.app.AlertController;
import com.android.internal.globalactions.Action;
import com.android.internal.globalactions.ActionsAdapter;
import com.android.internal.globalactions.ActionsDialog;
import com.android.internal.globalactions.LongPressAction;
import com.android.internal.globalactions.SinglePressAction;
import com.android.internal.globalactions.ToggleAction;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.EmergencyAffordanceManager;
import com.android.internal.widget.LockPatternUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BooleanSupplier;

/* JADX INFO: loaded from: classes.dex */
class LegacyGlobalActions implements DialogInterface.OnDismissListener, DialogInterface.OnClickListener {
    private static final int DIALOG_DISMISS_DELAY = 300;
    private static final String GLOBAL_ACTION_KEY_AIRPLANE = "airplane";
    private static final String GLOBAL_ACTION_KEY_ASSIST = "assist";
    private static final String GLOBAL_ACTION_KEY_BUGREPORT = "bugreport";
    private static final String GLOBAL_ACTION_KEY_LOCKDOWN = "lockdown";
    private static final String GLOBAL_ACTION_KEY_POWER = "power";
    private static final String GLOBAL_ACTION_KEY_RESTART = "restart";
    private static final String GLOBAL_ACTION_KEY_SETTINGS = "settings";
    private static final String GLOBAL_ACTION_KEY_SILENT = "silent";
    private static final String GLOBAL_ACTION_KEY_USERS = "users";
    private static final String GLOBAL_ACTION_KEY_VOICEASSIST = "voiceassist";
    private static final int MESSAGE_DISMISS = 0;
    private static final int MESSAGE_REFRESH = 1;
    private static final int MESSAGE_SHOW = 2;
    private static final boolean SHOW_SILENT_TOGGLE = true;
    private static final String TAG = "LegacyGlobalActions";
    private ActionsAdapter mAdapter;
    private ToggleAction mAirplaneModeOn;
    private final AudioManager mAudioManager;
    private final Context mContext;
    private ActionsDialog mDialog;
    private final EmergencyAffordanceManager mEmergencyAffordanceManager;
    private boolean mHasTelephony;
    private boolean mHasVibrator;
    private ArrayList<Action> mItems;
    private final Runnable mOnDismiss;
    private final boolean mShowSilentToggle;
    private Action mSilentModeAction;
    private final WindowManagerPolicy.WindowManagerFuncs mWindowManagerFuncs;
    private boolean mKeyguardShowing = false;
    private boolean mDeviceProvisioned = false;
    private ToggleAction.State mAirplaneState = ToggleAction.State.Off;
    private boolean mIsWaitingForEcmExit = false;
    private BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.policy.LegacyGlobalActions.9
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action) || "android.intent.action.SCREEN_OFF".equals(action)) {
                String reason = intent.getStringExtra(PhoneWindowManager.SYSTEM_DIALOG_REASON_KEY);
                if (!PhoneWindowManager.SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS.equals(reason)) {
                    LegacyGlobalActions.this.mHandler.sendEmptyMessage(0);
                    return;
                }
                return;
            }
            if ("android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED".equals(action) && !intent.getBooleanExtra("android.telephony.extra.PHONE_IN_ECM_STATE", false) && LegacyGlobalActions.this.mIsWaitingForEcmExit) {
                LegacyGlobalActions.this.mIsWaitingForEcmExit = false;
                LegacyGlobalActions.this.changeAirplaneModeSystemSetting(true);
            }
        }
    };
    PhoneStateListener mPhoneStateListener = new PhoneStateListener() { // from class: com.android.server.policy.LegacyGlobalActions.10
        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            if (LegacyGlobalActions.this.mHasTelephony) {
                boolean inAirplaneMode = serviceState.getState() == 3;
                LegacyGlobalActions.this.mAirplaneState = inAirplaneMode ? ToggleAction.State.On : ToggleAction.State.Off;
                LegacyGlobalActions.this.mAirplaneModeOn.updateState(LegacyGlobalActions.this.mAirplaneState);
                LegacyGlobalActions.this.mAdapter.notifyDataSetChanged();
            }
        }
    };
    private BroadcastReceiver mRingerModeReceiver = new BroadcastReceiver() { // from class: com.android.server.policy.LegacyGlobalActions.11
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.media.RINGER_MODE_CHANGED")) {
                LegacyGlobalActions.this.mHandler.sendEmptyMessage(1);
            }
        }
    };
    private ContentObserver mAirplaneModeObserver = new ContentObserver(new Handler()) { // from class: com.android.server.policy.LegacyGlobalActions.12
        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            LegacyGlobalActions.this.onAirplaneModeChanged();
        }
    };
    private Handler mHandler = new Handler() { // from class: com.android.server.policy.LegacyGlobalActions.13
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 0) {
                if (LegacyGlobalActions.this.mDialog != null) {
                    LegacyGlobalActions.this.mDialog.dismiss();
                    LegacyGlobalActions.this.mDialog = null;
                    return;
                }
                return;
            }
            if (i == 1) {
                LegacyGlobalActions.this.refreshSilentMode();
                LegacyGlobalActions.this.mAdapter.notifyDataSetChanged();
            } else if (i == 2) {
                LegacyGlobalActions.this.handleShow();
            }
        }
    };
    private final IDreamManager mDreamManager = IDreamManager.Stub.asInterface(ServiceManager.getService("dreams"));

    public LegacyGlobalActions(Context context, WindowManagerPolicy.WindowManagerFuncs windowManagerFuncs, Runnable onDismiss) {
        boolean z = false;
        this.mContext = context;
        this.mWindowManagerFuncs = windowManagerFuncs;
        this.mOnDismiss = onDismiss;
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.CLOSE_SYSTEM_DIALOGS");
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED");
        context.registerReceiver(this.mBroadcastReceiver, filter);
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        this.mHasTelephony = cm.isNetworkSupported(0);
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        telephonyManager.listen(this.mPhoneStateListener, 1);
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("airplane_mode_on"), true, this.mAirplaneModeObserver);
        Vibrator vibrator = (Vibrator) this.mContext.getSystemService("vibrator");
        if (vibrator != null && vibrator.hasVibrator()) {
            z = true;
        }
        this.mHasVibrator = z;
        this.mShowSilentToggle = !this.mContext.getResources().getBoolean(R.bool.config_safetyProtectionEnabled);
        this.mEmergencyAffordanceManager = new EmergencyAffordanceManager(context);
    }

    public void showDialog(boolean keyguardShowing, boolean isDeviceProvisioned) {
        this.mKeyguardShowing = keyguardShowing;
        this.mDeviceProvisioned = isDeviceProvisioned;
        ActionsDialog actionsDialog = this.mDialog;
        if (actionsDialog != null) {
            actionsDialog.dismiss();
            this.mDialog = null;
            this.mHandler.sendEmptyMessage(2);
            return;
        }
        handleShow();
    }

    private void awakenIfNecessary() {
        IDreamManager iDreamManager = this.mDreamManager;
        if (iDreamManager != null) {
            try {
                if (iDreamManager.isDreaming()) {
                    this.mDreamManager.awaken();
                }
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleShow() {
        awakenIfNecessary();
        this.mDialog = createDialog();
        prepareDialog();
        if (this.mAdapter.getCount() == 1 && (this.mAdapter.getItem(0) instanceof SinglePressAction) && !(this.mAdapter.getItem(0) instanceof LongPressAction)) {
            this.mAdapter.getItem(0).onPress();
            return;
        }
        ActionsDialog actionsDialog = this.mDialog;
        if (actionsDialog != null) {
            WindowManager.LayoutParams attrs = actionsDialog.getWindow().getAttributes();
            attrs.setTitle(TAG);
            this.mDialog.getWindow().setAttributes(attrs);
            this.mDialog.show();
            this.mDialog.getWindow().getDecorView().setSystemUiVisibility(65536);
        }
    }

    private ActionsDialog createDialog() {
        if (!this.mHasVibrator) {
            this.mSilentModeAction = new SilentModeToggleAction();
        } else {
            this.mSilentModeAction = new SilentModeTriStateAction(this.mContext, this.mAudioManager, this.mHandler);
        }
        this.mAirplaneModeOn = new ToggleAction(R.drawable.$$notification_progress_indeterminate_horizontal_material__2__0, R.drawable.$progress_indeterminate_horizontal_material__17, R.string.PERSOSUBSTATE_RUIM_NETWORK1_ERROR, R.string.PERSOSUBSTATE_SIM_IMPI_ENTRY, R.string.PERSOSUBSTATE_SIM_NETWORK_ERROR) { // from class: com.android.server.policy.LegacyGlobalActions.1
            public void onToggle(boolean on) {
                if (!LegacyGlobalActions.this.mHasTelephony || !((Boolean) TelephonyProperties.in_ecm_mode().orElse(false)).booleanValue()) {
                    LegacyGlobalActions.this.changeAirplaneModeSystemSetting(on);
                    return;
                }
                LegacyGlobalActions.this.mIsWaitingForEcmExit = true;
                Intent ecmDialogIntent = new Intent("android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS", (Uri) null);
                ecmDialogIntent.addFlags(AudioFormat.EVRC);
                LegacyGlobalActions.this.mContext.startActivity(ecmDialogIntent);
            }

            protected void changeStateFromPress(boolean buttonOn) {
                if (LegacyGlobalActions.this.mHasTelephony && !((Boolean) TelephonyProperties.in_ecm_mode().orElse(false)).booleanValue()) {
                    this.mState = buttonOn ? ToggleAction.State.TurningOn : ToggleAction.State.TurningOff;
                    LegacyGlobalActions.this.mAirplaneState = this.mState;
                }
            }

            public boolean showDuringKeyguard() {
                return true;
            }

            public boolean showBeforeProvisioning() {
                return false;
            }
        };
        onAirplaneModeChanged();
        this.mItems = new ArrayList<>();
        String[] defaultActions = this.mContext.getResources().getStringArray(R.array.common_nicknames);
        ArraySet<String> addedKeys = new ArraySet<>();
        for (String actionKey : defaultActions) {
            if (!addedKeys.contains(actionKey)) {
                if (GLOBAL_ACTION_KEY_POWER.equals(actionKey)) {
                    this.mItems.add(new PowerAction(this.mContext, this.mWindowManagerFuncs));
                } else if (GLOBAL_ACTION_KEY_AIRPLANE.equals(actionKey)) {
                    this.mItems.add(this.mAirplaneModeOn);
                } else if (GLOBAL_ACTION_KEY_BUGREPORT.equals(actionKey)) {
                    if (Settings.Global.getInt(this.mContext.getContentResolver(), "bugreport_in_power_menu", 0) != 0 && isCurrentUserOwner()) {
                        this.mItems.add(new BugReportAction());
                    }
                } else if (GLOBAL_ACTION_KEY_SILENT.equals(actionKey)) {
                    if (this.mShowSilentToggle) {
                        this.mItems.add(this.mSilentModeAction);
                    }
                } else if ("users".equals(actionKey)) {
                    if (SystemProperties.getBoolean("fw.power_user_switcher", false)) {
                        addUsersToMenu(this.mItems);
                    }
                } else if (GLOBAL_ACTION_KEY_SETTINGS.equals(actionKey)) {
                    this.mItems.add(getSettingsAction());
                } else if (GLOBAL_ACTION_KEY_LOCKDOWN.equals(actionKey)) {
                    this.mItems.add(getLockdownAction());
                } else if (GLOBAL_ACTION_KEY_VOICEASSIST.equals(actionKey)) {
                    this.mItems.add(getVoiceAssistAction());
                } else if ("assist".equals(actionKey)) {
                    this.mItems.add(getAssistAction());
                } else if (GLOBAL_ACTION_KEY_RESTART.equals(actionKey)) {
                    this.mItems.add(new RestartAction(this.mContext, this.mWindowManagerFuncs));
                } else {
                    Log.e(TAG, "Invalid global action key " + actionKey);
                }
                addedKeys.add(actionKey);
            }
        }
        if (this.mEmergencyAffordanceManager.needsEmergencyAffordance()) {
            this.mItems.add(getEmergencyAction());
        }
        this.mAdapter = new ActionsAdapter(this.mContext, this.mItems, new BooleanSupplier() { // from class: com.android.server.policy.-$$Lambda$LegacyGlobalActions$wqp7aD3DxIVGmy_uGo-yxhtwmQk
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return this.f$0.lambda$createDialog$0$LegacyGlobalActions();
            }
        }, new BooleanSupplier() { // from class: com.android.server.policy.-$$Lambda$LegacyGlobalActions$MdLN6qUJHty5FwMejjTE2cTYSvc
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return this.f$0.lambda$createDialog$1$LegacyGlobalActions();
            }
        });
        AlertController.AlertParams params = new AlertController.AlertParams(this.mContext);
        params.mAdapter = this.mAdapter;
        params.mOnClickListener = this;
        params.mForceInverseBackground = true;
        ActionsDialog dialog = new ActionsDialog(this.mContext, params);
        dialog.setCanceledOnTouchOutside(false);
        dialog.getListView().setItemsCanFocus(true);
        dialog.getListView().setLongClickable(true);
        dialog.getListView().setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.android.server.policy.LegacyGlobalActions.2
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
                LongPressAction item = LegacyGlobalActions.this.mAdapter.getItem(position);
                if (item instanceof LongPressAction) {
                    return item.onLongPress();
                }
                return false;
            }
        });
        dialog.getWindow().setType(2009);
        dialog.getWindow().setFlags(131072, 131072);
        dialog.setOnDismissListener(this);
        return dialog;
    }

    public /* synthetic */ boolean lambda$createDialog$0$LegacyGlobalActions() {
        return this.mDeviceProvisioned;
    }

    public /* synthetic */ boolean lambda$createDialog$1$LegacyGlobalActions() {
        return this.mKeyguardShowing;
    }

    private class BugReportAction extends SinglePressAction implements LongPressAction {
        public BugReportAction() {
            super(R.drawable.$$loading_spinner__1__0, R.string.PERSOSUBSTATE_SIM_ICCID_IN_PROGRESS);
        }

        public void onPress() {
            if (!ActivityManager.isUserAMonkey()) {
                LegacyGlobalActions.this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.policy.LegacyGlobalActions.BugReportAction.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            MetricsLogger.action(LegacyGlobalActions.this.mContext, 292);
                            ActivityManager.getService().requestInteractiveBugReport();
                        } catch (RemoteException e) {
                        }
                    }
                }, 500L);
            }
        }

        public boolean onLongPress() {
            if (ActivityManager.isUserAMonkey()) {
                return false;
            }
            try {
                MetricsLogger.action(LegacyGlobalActions.this.mContext, 293);
                ActivityManager.getService().requestFullBugReport();
            } catch (RemoteException e) {
            }
            return false;
        }

        public boolean showDuringKeyguard() {
            return true;
        }

        public boolean showBeforeProvisioning() {
            return false;
        }

        public String getStatus() {
            return LegacyGlobalActions.this.mContext.getString(R.string.PERSOSUBSTATE_RUIM_RUIM_ENTRY, Build.VERSION.RELEASE_OR_CODENAME, Build.ID);
        }
    }

    private Action getSettingsAction() {
        return new SinglePressAction(R.drawable.$loader_horizontal_watch__5, R.string.PERSOSUBSTATE_SIM_NETWORK_PUK_IN_PROGRESS) { // from class: com.android.server.policy.LegacyGlobalActions.3
            public void onPress() {
                Intent intent = new Intent("android.settings.SETTINGS");
                intent.addFlags(AudioFormat.AAC_ADIF);
                LegacyGlobalActions.this.mContext.startActivity(intent);
            }

            public boolean showDuringKeyguard() {
                return true;
            }

            public boolean showBeforeProvisioning() {
                return true;
            }
        };
    }

    private Action getEmergencyAction() {
        return new SinglePressAction(R.drawable.$loader_horizontal_watch__6, R.string.PERSOSUBSTATE_RUIM_NETWORK2_PUK_ENTRY) { // from class: com.android.server.policy.LegacyGlobalActions.4
            public void onPress() {
                LegacyGlobalActions.this.mEmergencyAffordanceManager.performEmergencyCall();
            }

            public boolean showDuringKeyguard() {
                return true;
            }

            public boolean showBeforeProvisioning() {
                return true;
            }
        };
    }

    private Action getAssistAction() {
        return new SinglePressAction(R.drawable.$input_method_item_background_selected__0, R.string.PERSOSUBSTATE_RUIM_CORPORATE_IN_PROGRESS) { // from class: com.android.server.policy.LegacyGlobalActions.5
            public void onPress() {
                Intent intent = new Intent("android.intent.action.ASSIST");
                intent.addFlags(AudioFormat.AAC_ADIF);
                LegacyGlobalActions.this.mContext.startActivity(intent);
            }

            public boolean showDuringKeyguard() {
                return true;
            }

            public boolean showBeforeProvisioning() {
                return true;
            }
        };
    }

    private Action getVoiceAssistAction() {
        return new SinglePressAction(R.drawable.$$notification_progress_indeterminate_horizontal_material__1__0, R.string.PERSOSUBSTATE_RUIM_HRPD_PUK_SUCCESS) { // from class: com.android.server.policy.LegacyGlobalActions.6
            public void onPress() {
                Intent intent = new Intent("android.intent.action.VOICE_ASSIST");
                intent.addFlags(AudioFormat.AAC_ADIF);
                LegacyGlobalActions.this.mContext.startActivity(intent);
            }

            public boolean showDuringKeyguard() {
                return true;
            }

            public boolean showBeforeProvisioning() {
                return true;
            }
        };
    }

    private Action getLockdownAction() {
        return new SinglePressAction(R.drawable.ic_lock_lock, R.string.PERSOSUBSTATE_RUIM_RUIM_IN_PROGRESS) { // from class: com.android.server.policy.LegacyGlobalActions.7
            public void onPress() {
                new LockPatternUtils(LegacyGlobalActions.this.mContext).requireCredentialEntry(-1);
                try {
                    WindowManagerGlobal.getWindowManagerService().lockNow((Bundle) null);
                } catch (RemoteException e) {
                    Log.e(LegacyGlobalActions.TAG, "Error while trying to lock device.", e);
                }
            }

            public boolean showDuringKeyguard() {
                return true;
            }

            public boolean showBeforeProvisioning() {
                return false;
            }
        };
    }

    private UserInfo getCurrentUser() {
        try {
            return ActivityManager.getService().getCurrentUser();
        } catch (RemoteException e) {
            return null;
        }
    }

    private boolean isCurrentUserOwner() {
        UserInfo currentUser = getCurrentUser();
        return currentUser == null || currentUser.isPrimary();
    }

    private void addUsersToMenu(ArrayList<Action> items) {
        UserManager um = (UserManager) this.mContext.getSystemService("user");
        if (um.isUserSwitcherEnabled()) {
            List<UserInfo> users = um.getUsers();
            UserInfo currentUser = getCurrentUser();
            for (final UserInfo user : users) {
                if (user.supportsSwitchToByUser()) {
                    boolean z = true;
                    if (currentUser != null ? currentUser.id != user.id : user.id != 0) {
                        z = false;
                    }
                    boolean isCurrentUser = z;
                    Drawable icon = user.iconPath != null ? Drawable.createFromPath(user.iconPath) : null;
                    int i = R.drawable.$progress_indeterminate_horizontal_material__23;
                    StringBuilder sb = new StringBuilder();
                    sb.append(user.name != null ? user.name : "Primary");
                    sb.append(isCurrentUser ? " ✔" : "");
                    SinglePressAction switchToUser = new SinglePressAction(i, icon, sb.toString()) { // from class: com.android.server.policy.LegacyGlobalActions.8
                        public void onPress() {
                            try {
                                ActivityManager.getService().switchUser(user.id);
                            } catch (RemoteException re) {
                                Log.e(LegacyGlobalActions.TAG, "Couldn't switch user " + re);
                            }
                        }

                        public boolean showDuringKeyguard() {
                            return true;
                        }

                        public boolean showBeforeProvisioning() {
                            return false;
                        }
                    };
                    items.add(switchToUser);
                }
            }
        }
    }

    private void prepareDialog() {
        refreshSilentMode();
        this.mAirplaneModeOn.updateState(this.mAirplaneState);
        this.mAdapter.notifyDataSetChanged();
        this.mDialog.getWindow().setType(2009);
        if (this.mShowSilentToggle) {
            IntentFilter filter = new IntentFilter("android.media.RINGER_MODE_CHANGED");
            this.mContext.registerReceiver(this.mRingerModeReceiver, filter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshSilentMode() {
        if (!this.mHasVibrator) {
            boolean silentModeOn = this.mAudioManager.getRingerMode() != 2;
            this.mSilentModeAction.updateState(silentModeOn ? ToggleAction.State.On : ToggleAction.State.Off);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Runnable runnable = this.mOnDismiss;
        if (runnable != null) {
            runnable.run();
        }
        if (this.mShowSilentToggle) {
            try {
                this.mContext.unregisterReceiver(this.mRingerModeReceiver);
            } catch (IllegalArgumentException ie) {
                Log.w(TAG, ie);
            }
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialog, int which) {
        if (!(this.mAdapter.getItem(which) instanceof SilentModeTriStateAction)) {
            dialog.dismiss();
        }
        this.mAdapter.getItem(which).onPress();
    }

    private class SilentModeToggleAction extends ToggleAction {
        public SilentModeToggleAction() {
            super(R.drawable.ic_safety_protection, R.drawable.$progress_indeterminate_horizontal_material__18, R.string.EmergencyCallWarningTitle, R.string.NetworkPreferenceSwitchTitle, R.string.config_systemAutomotiveCluster);
        }

        public void onToggle(boolean on) {
            if (on) {
                LegacyGlobalActions.this.mAudioManager.setRingerMode(0);
            } else {
                LegacyGlobalActions.this.mAudioManager.setRingerMode(2);
            }
        }

        public boolean showDuringKeyguard() {
            return true;
        }

        public boolean showBeforeProvisioning() {
            return false;
        }
    }

    private static class SilentModeTriStateAction implements Action, View.OnClickListener {
        private final int[] ITEM_IDS = {R.id.KEYCODE_ALT_RIGHT, R.id.KEYCODE_4, R.id.KEYCODE_BUTTON_10};
        private final AudioManager mAudioManager;
        private final Context mContext;
        private final Handler mHandler;

        SilentModeTriStateAction(Context context, AudioManager audioManager, Handler handler) {
            this.mAudioManager = audioManager;
            this.mHandler = handler;
            this.mContext = context;
        }

        private int ringerModeToIndex(int ringerMode) {
            return ringerMode;
        }

        private int indexToRingerMode(int index) {
            return index;
        }

        public CharSequence getLabelForAccessibility(Context context) {
            return null;
        }

        public View create(Context context, View convertView, ViewGroup parent, LayoutInflater inflater) {
            View v = inflater.inflate(R.layout.accessibility_autoclick_scroll_panel, parent, false);
            int selectedIndex = ringerModeToIndex(this.mAudioManager.getRingerMode());
            int i = 0;
            while (i < 3) {
                View itemView = v.findViewById(this.ITEM_IDS[i]);
                itemView.setSelected(selectedIndex == i);
                itemView.setTag(Integer.valueOf(i));
                itemView.setOnClickListener(this);
                i++;
            }
            return v;
        }

        public void onPress() {
        }

        public boolean showDuringKeyguard() {
            return true;
        }

        public boolean showBeforeProvisioning() {
            return false;
        }

        public boolean isEnabled() {
            return true;
        }

        void willCreate() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            if (v.getTag() instanceof Integer) {
                int index = ((Integer) v.getTag()).intValue();
                this.mAudioManager.setRingerMode(indexToRingerMode(index));
                this.mHandler.sendEmptyMessageDelayed(0, 300L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAirplaneModeChanged() {
        if (this.mHasTelephony) {
            return;
        }
        boolean airplaneModeOn = Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0) == 1;
        ToggleAction.State state = airplaneModeOn ? ToggleAction.State.On : ToggleAction.State.Off;
        this.mAirplaneState = state;
        this.mAirplaneModeOn.updateState(state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeAirplaneModeSystemSetting(boolean z) {
        Settings.Global.putInt(this.mContext.getContentResolver(), "airplane_mode_on", z ? 1 : 0);
        Intent intent = new Intent("android.intent.action.AIRPLANE_MODE");
        intent.addFlags(AudioFormat.APTX);
        intent.putExtra("state", z);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
        if (!this.mHasTelephony) {
            this.mAirplaneState = z ? ToggleAction.State.On : ToggleAction.State.Off;
        }
    }
}
