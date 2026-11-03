package com.mega.hicar.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.TextView;
import com.mega.hicar.lib.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CheckDeviceDialog extends BaseDialog {
    private static final String TAG = "CheckDeviceDialog";
    private TextView mContentTV;
    private Context mContext;
    private OnCheckDialogClickListener mListener;

    public interface OnCheckDialogClickListener {
        void onCheckDialogCancelClick();

        void onCheckDialogConfirmClick();
    }

    public void setOnCheckDialogClickListener(OnCheckDialogClickListener onCheckDialogClickListener) {
        this.mListener = onCheckDialogClickListener;
    }

    public CheckDeviceDialog(Context context) {
        super(context);
        this.mContext = new ContextThemeWrapper(context, R.style.AppTheme);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_check_device, null);
        setContentView(viewInflate);
        this.mContentTV = (TextView) viewInflate.findViewById(R.id.content);
        viewInflate.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.CheckDeviceDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m263lambda$onCreate$0$commegahicarviewdialogCheckDeviceDialog(view);
            }
        });
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.CheckDeviceDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m264lambda$onCreate$1$commegahicarviewdialogCheckDeviceDialog(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mega-hicar-view-dialog-CheckDeviceDialog, reason: not valid java name */
    /* synthetic */ void m263lambda$onCreate$0$commegahicarviewdialogCheckDeviceDialog(View view) {
        dismiss();
        this.mListener.onCheckDialogConfirmClick();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mega-hicar-view-dialog-CheckDeviceDialog, reason: not valid java name */
    /* synthetic */ void m264lambda$onCreate$1$commegahicarviewdialogCheckDeviceDialog(View view) {
        dismiss();
        this.mListener.onCheckDialogCancelClick();
    }

    @Override // com.mega.hicar.view.dialog.BaseDialog, android.app.Dialog
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        hideStatusNavigationBar();
    }

    public void setContent(String str) {
        MLog.d(TAG, "setContent: ");
        this.mContentTV.setText(str);
    }

    @Override // com.mega.hicar.view.dialog.BaseDialog
    protected void onOwnerStop() {
        super.onOwnerStop();
        dismiss();
    }

    private void hideStatusNavigationBar() {
        MLog.i(TAG, "hideStatusNavigationBar");
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }
}
