package com.mega.common.dialog;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.DialogFragment;
import com.mega.common.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class CommonBaseDialogFragment extends DialogFragment {
    private static final String TAG = "CommonBaseDialogFragment";
    private boolean mHasRegister = false;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.mega.common.dialog.CommonBaseDialogFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String stringExtra = intent.getStringExtra("packageName");
            Log.d(CommonBaseDialogFragment.TAG, "action = " + action + " pkg = " + stringExtra);
            if (context.getPackageName().equals(stringExtra)) {
                return;
            }
            CommonBaseDialogFragment.this.dismiss();
        }
    };

    public boolean isCoexist() {
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mHasRegister = true;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Constants.IFLYTEK_ACTION_CLOSE_DIALOG);
        intentFilter.addAction("mega_action_close_dialog");
        getContext().registerReceiver(this.mReceiver, intentFilter);
        if (isCoexist()) {
            return;
        }
        sendDialogCloseBroadcast();
    }

    private void sendDialogCloseBroadcast() {
        Intent intent = new Intent("mega_action_close_dialog");
        intent.putExtra("packageName", getContext().getPackageName());
        getContext().sendBroadcast(intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (this.mHasRegister) {
            this.mHasRegister = false;
            getContext().unregisterReceiver(this.mReceiver);
        }
    }
}
