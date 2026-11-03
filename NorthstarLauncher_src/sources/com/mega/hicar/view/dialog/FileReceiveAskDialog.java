package com.mega.hicar.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.mega.hicar.lib.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class FileReceiveAskDialog extends BaseDialog {
    private static final String TAG = "FileReceiveAskDialog";
    private TextView mContentTV;
    private final OnAskDialogClickListener mListener;

    public interface OnAskDialogClickListener {
        void onAskDialogCancelClick();

        void onAskDialogConfirmClick();
    }

    public FileReceiveAskDialog(Context context, OnAskDialogClickListener onAskDialogClickListener) {
        super(context);
        this.mContext = context;
        this.mListener = onAskDialogClickListener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_check_device, null);
        setContentView(viewInflate);
        this.mContentTV = (TextView) viewInflate.findViewById(R.id.content);
        viewInflate.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.FileReceiveAskDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m265xf7f4b420(view);
            }
        });
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.FileReceiveAskDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m266xf77e4e21(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mega-hicar-view-dialog-FileReceiveAskDialog, reason: not valid java name */
    /* synthetic */ void m265xf7f4b420(View view) {
        dismiss();
        this.mListener.onAskDialogConfirmClick();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mega-hicar-view-dialog-FileReceiveAskDialog, reason: not valid java name */
    /* synthetic */ void m266xf77e4e21(View view) {
        dismiss();
        this.mListener.onAskDialogCancelClick();
    }

    public void setContent(String str) {
        MLog.d(TAG, "setContent: ");
        this.mContentTV.setText(str);
    }
}
