package com.mega.common.dialog;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import com.mega.common.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class CommonBaseDialog extends Dialog {
    private static final String TAG = "CommonBaseDialog";
    private boolean mHasRegister;
    private boolean mIsCloseDialog;
    private final BroadcastReceiver mReceiver;

    public boolean isCoexist() {
        return false;
    }

    public CommonBaseDialog(Context context) {
        this(context, -1);
    }

    public CommonBaseDialog(Context context, int i) {
        super(context, i);
        this.mIsCloseDialog = false;
        this.mHasRegister = false;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.mega.common.dialog.CommonBaseDialog.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                String stringExtra = intent.getStringExtra("packageName");
                Log.d(CommonBaseDialog.TAG, "action = " + action + " pkg = " + stringExtra + " mIsCloseDialog = " + CommonBaseDialog.this.mIsCloseDialog);
                if (context2.getPackageName().equals(stringExtra) || CommonBaseDialog.this.mIsCloseDialog) {
                    return;
                }
                CommonBaseDialog.this.mIsCloseDialog = true;
                CommonBaseDialog.this.dismiss();
            }
        };
        this.mReceiver = broadcastReceiver;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.IFLYTEK_ACTION_CLOSE_DIALOG);
        intentFilter.addAction("mega_action_close_dialog");
        if (isCoexist()) {
            return;
        }
        this.mHasRegister = true;
        getContext().registerReceiver(broadcastReceiver, intentFilter);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        sendDialogCloseBroadcast();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.mHasRegister) {
            this.mHasRegister = false;
            getContext().unregisterReceiver(this.mReceiver);
        }
    }

    private void sendDialogCloseBroadcast() {
        Intent intent = new Intent("mega_action_close_dialog");
        intent.putExtra("packageName", getContext().getPackageName());
        getContext().sendBroadcast(intent);
    }
}
