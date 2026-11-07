package com.android.server.wm;

import android.R;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import com.android.server.am.BaseErrorDialog;

/* JADX INFO: loaded from: classes2.dex */
final class FactoryErrorDialog extends BaseErrorDialog {
    private final Handler mHandler;

    public FactoryErrorDialog(Context context, CharSequence msg) {
        super(context);
        this.mHandler = new Handler() { // from class: com.android.server.wm.FactoryErrorDialog.1
            @Override // android.os.Handler
            public void handleMessage(Message msg2) {
                throw new RuntimeException("Rebooting from failed factory test");
            }
        };
        setCancelable(false);
        setTitle(context.getText(R.string.duration_hours_medium_future));
        setMessage(msg);
        setButton(-1, context.getText(R.string.duration_hours_relative_future), this.mHandler.obtainMessage(0));
        WindowManager.LayoutParams attrs = getWindow().getAttributes();
        attrs.setTitle("Factory Error");
        getWindow().setAttributes(attrs);
    }

    @Override // android.app.Dialog
    public void onStop() {
    }
}
