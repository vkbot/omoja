package com.android.server.am;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.BidiFormatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
final class AppErrorDialog extends BaseErrorDialog implements View.OnClickListener {
    static final int APP_INFO = 8;
    static final int CANCEL = 7;
    static final long DISMISS_TIMEOUT = 300000;
    static final int FORCE_QUIT = 1;
    static final int FORCE_QUIT_AND_REPORT = 2;
    static final int MUTE = 5;
    static final int RESTART = 3;
    static final int TIMEOUT = 6;
    private final Handler mHandler;
    private final boolean mIsRestartable;
    private final ProcessRecord mProc;
    private final BroadcastReceiver mReceiver;
    private final AppErrorResult mResult;
    private final ActivityManagerService mService;
    static int CANT_SHOW = -1;
    static int BACKGROUND_USER = -2;
    static int ALREADY_SHOWING = -3;

    public AppErrorDialog(Context context, ActivityManagerService service, Data data) {
        CharSequence name;
        super(context);
        this.mHandler = new Handler() { // from class: com.android.server.am.AppErrorDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                AppErrorDialog.this.setResult(msg.what);
                AppErrorDialog.this.dismiss();
            }
        };
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.server.am.AppErrorDialog.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(intent.getAction())) {
                    AppErrorDialog.this.cancel();
                }
            }
        };
        Resources res = context.getResources();
        this.mService = service;
        this.mProc = data.proc;
        this.mResult = data.result;
        this.mIsRestartable = (data.taskId != -1 || data.isRestartableForService) && Settings.Global.getInt(context.getContentResolver(), "show_restart_in_crash_dialog", 0) != 0;
        BidiFormatter bidi = BidiFormatter.getInstance();
        if (this.mProc.pkgList.size() == 1 && (name = context.getPackageManager().getApplicationLabel(this.mProc.info)) != null) {
            setTitle(res.getString(data.repeating ? R.string.app_streaming_blocked_title_for_microphone_dialog : R.string.app_streaming_blocked_title_for_fingerprint_dialog, bidi.unicodeWrap(name.toString()), bidi.unicodeWrap(this.mProc.info.processName)));
        } else {
            CharSequence name2 = this.mProc.processName;
            setTitle(res.getString(data.repeating ? R.string.app_suspended_more_details : R.string.app_suspended_default_message, bidi.unicodeWrap(name2.toString())));
        }
        setCancelable(true);
        setCancelMessage(this.mHandler.obtainMessage(7));
        WindowManager.LayoutParams attrs = getWindow().getAttributes();
        attrs.setTitle("Application Error: " + this.mProc.info.processName);
        attrs.privateFlags = attrs.privateFlags | 272;
        getWindow().setAttributes(attrs);
        if (this.mProc.isPersistent()) {
            getWindow().setType(2010);
        }
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(6), 300000L);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FrameLayout frame = (FrameLayout) findViewById(R.id.custom);
        Context context = getContext();
        LayoutInflater.from(context).inflate(R.layout.app_anr_dialog, (ViewGroup) frame, true);
        boolean hasReceiver = this.mProc.errorReportReceiver != null;
        TextView restart = (TextView) findViewById(R.id.actions_container_layout);
        restart.setOnClickListener(this);
        restart.setVisibility(this.mIsRestartable ? 0 : 8);
        TextView report = (TextView) findViewById(R.id.actions_container);
        report.setOnClickListener(this);
        report.setVisibility(hasReceiver ? 0 : 8);
        TextView close = (TextView) findViewById(R.id.action_mode_close_button);
        close.setOnClickListener(this);
        TextView appInfo = (TextView) findViewById(R.id.action_mode_bar_stub);
        appInfo.setOnClickListener(this);
        boolean showMute = (Build.IS_USER || Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) == 0 || Settings.Global.getInt(context.getContentResolver(), "show_mute_in_crash_dialog", 0) == 0) ? false : true;
        TextView mute = (TextView) findViewById(R.id.actions);
        mute.setOnClickListener(this);
        mute.setVisibility(showMute ? 0 : 8);
        findViewById(R.id.close_button_pill_colorized_layer).setVisibility(0);
    }

    @Override // com.android.server.am.BaseErrorDialog, android.app.Dialog
    public void onStart() {
        super.onStart();
        getContext().registerReceiver(this.mReceiver, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        getContext().unregisterReceiver(this.mReceiver);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (!this.mResult.mHasResult) {
            setResult(1);
        }
        super.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setResult(int result) {
        synchronized (this.mService) {
            try {
                ActivityManagerService.boostPriorityForLockedSection();
                if (this.mProc != null) {
                    this.mProc.getDialogController().clearCrashDialogs(false);
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
        this.mResult.set(result);
        this.mHandler.removeMessages(6);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.action_mode_bar_stub:
                this.mHandler.obtainMessage(8).sendToTarget();
                break;
            case R.id.action_mode_close_button:
                this.mHandler.obtainMessage(1).sendToTarget();
                break;
            case R.id.actions:
                this.mHandler.obtainMessage(5).sendToTarget();
                break;
            case R.id.actions_container:
                this.mHandler.obtainMessage(2).sendToTarget();
                break;
            case R.id.actions_container_layout:
                this.mHandler.obtainMessage(3).sendToTarget();
                break;
        }
    }

    static class Data {
        boolean isRestartableForService;
        ProcessRecord proc;
        boolean repeating;
        AppErrorResult result;
        int taskId;

        Data() {
        }
    }
}
