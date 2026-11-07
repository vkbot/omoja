package com.android.server.am;

import android.R;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.BidiFormatter;
import android.util.Slog;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.internal.logging.MetricsLogger;

/* JADX INFO: loaded from: classes.dex */
final class AppNotRespondingDialog extends BaseErrorDialog implements View.OnClickListener {
    public static final int ALREADY_SHOWING = -2;
    public static final int CANT_SHOW = -1;
    static final int FORCE_CLOSE = 1;
    private static final String TAG = "AppNotRespondingDialog";
    static final int WAIT = 2;
    static final int WAIT_AND_REPORT = 3;
    private final Handler mHandler;
    private final ProcessRecord mProc;
    private final ActivityManagerService mService;

    /* JADX WARN: Code duplicated, block: B:13:0x0053 A[DONT_INVERT, PHI: r3
  0x0053: PHI (r3v1 'name2' java.lang.CharSequence) = (r3v0 'name2' java.lang.CharSequence), (r3v4 'name2' java.lang.CharSequence) binds: [B:7:0x0033, B:9:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x0055  */
    /* JADX WARN: Code duplicated, block: B:15:0x005d  */
    public AppNotRespondingDialog(ActivityManagerService service, Context context, Data data) {
        CharSequence name1;
        int resid;
        String string;
        super(context);
        this.mHandler = new Handler() { // from class: com.android.server.am.AppNotRespondingDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                Intent appErrorIntent = null;
                MetricsLogger.action(AppNotRespondingDialog.this.getContext(), 317, msg.what);
                int i = msg.what;
                if (i == 1) {
                    AppNotRespondingDialog.this.mService.killAppAtUsersRequest(AppNotRespondingDialog.this.mProc);
                } else if (i == 2 || i == 3) {
                    synchronized (AppNotRespondingDialog.this.mService) {
                        try {
                            ActivityManagerService.boostPriorityForLockedSection();
                            ProcessRecord app = AppNotRespondingDialog.this.mProc;
                            if (msg.what == 3) {
                                appErrorIntent = AppNotRespondingDialog.this.mService.mAppErrors.createAppErrorIntentLocked(app, System.currentTimeMillis(), null);
                            }
                            app.setNotResponding(false);
                            app.notRespondingReport = null;
                            app.getDialogController().clearAnrDialogs();
                            AppNotRespondingDialog.this.mService.mServices.scheduleServiceTimeoutLocked(app);
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
                if (appErrorIntent != null) {
                    try {
                        AppNotRespondingDialog.this.getContext().startActivity(appErrorIntent);
                    } catch (ActivityNotFoundException e) {
                        Slog.w(AppNotRespondingDialog.TAG, "bug report receiver dissappeared", e);
                    }
                }
                AppNotRespondingDialog.this.dismiss();
            }
        };
        this.mService = service;
        this.mProc = data.proc;
        Resources res = context.getResources();
        setCancelable(false);
        if (data.aInfo != null) {
            name1 = data.aInfo.loadLabel(context.getPackageManager());
        } else {
            name1 = null;
        }
        CharSequence name2 = null;
        if (this.mProc.pkgList.size() == 1) {
            CharSequence applicationLabel = context.getPackageManager().getApplicationLabel(this.mProc.info);
            name2 = applicationLabel;
            if (applicationLabel != null) {
                if (name1 != null) {
                    resid = R.string.autofill_save_title_with_type;
                } else {
                    name1 = name2;
                    name2 = this.mProc.processName;
                    resid = R.string.autofill_save_type_credit_card;
                }
            } else if (name1 != null) {
                name2 = this.mProc.processName;
                resid = R.string.autofill_save_type_address;
            } else {
                name1 = this.mProc.processName;
                resid = R.string.autofill_save_type_debit_card;
            }
        } else if (name1 != null) {
            name2 = this.mProc.processName;
            resid = R.string.autofill_save_type_address;
        } else {
            name1 = this.mProc.processName;
            resid = R.string.autofill_save_type_debit_card;
        }
        BidiFormatter bidi = BidiFormatter.getInstance();
        if (name2 != null) {
            string = res.getString(resid, bidi.unicodeWrap(name1.toString()), bidi.unicodeWrap(name2.toString()));
        } else {
            string = res.getString(resid, bidi.unicodeWrap(name1.toString()));
        }
        setTitle(string);
        if (data.aboveSystem) {
            getWindow().setType(2010);
        }
        WindowManager.LayoutParams attrs = getWindow().getAttributes();
        attrs.setTitle("Application Not Responding: " + this.mProc.info.processName);
        attrs.privateFlags = 272;
        getWindow().setAttributes(attrs);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        FrameLayout frame = (FrameLayout) findViewById(R.id.custom);
        Context context = getContext();
        LayoutInflater.from(context).inflate(R.layout.am_compat_mode_dialog, (ViewGroup) frame, true);
        TextView report = (TextView) findViewById(R.id.actions_container);
        report.setOnClickListener(this);
        boolean hasReceiver = this.mProc.errorReportReceiver != null;
        report.setVisibility(hasReceiver ? 0 : 8);
        TextView close = (TextView) findViewById(R.id.action_mode_close_button);
        close.setOnClickListener(this);
        TextView wait = (TextView) findViewById(R.id.activity_chooser_view_content);
        wait.setOnClickListener(this);
        findViewById(R.id.close_button_pill_colorized_layer).setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == 16908782) {
            this.mHandler.obtainMessage(1).sendToTarget();
        } else if (id == 16908784) {
            this.mHandler.obtainMessage(3).sendToTarget();
        } else if (id == 16908786) {
            this.mHandler.obtainMessage(2).sendToTarget();
        }
    }

    static class Data {
        final ApplicationInfo aInfo;
        final boolean aboveSystem;
        final ProcessRecord proc;

        Data(ProcessRecord proc, ApplicationInfo aInfo, boolean aboveSystem) {
            this.proc = proc;
            this.aInfo = aInfo;
            this.aboveSystem = aboveSystem;
        }
    }
}
