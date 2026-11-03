package com.mega.carlink.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.mega.carlink.lib.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CheckDeviceDialog extends Dialog {
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
        MLog.d(TAG, "onCreate: ");
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_check_device, null);
        setContentView(viewInflate);
        this.mContentTV = (TextView) viewInflate.findViewById(R.id.content);
        viewInflate.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.mega.carlink.view.dialog.CheckDeviceDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m247lambda$onCreate$0$commegacarlinkviewdialogCheckDeviceDialog(view);
            }
        });
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.mega.carlink.view.dialog.CheckDeviceDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m248lambda$onCreate$1$commegacarlinkviewdialogCheckDeviceDialog(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mega-carlink-view-dialog-CheckDeviceDialog, reason: not valid java name */
    /* synthetic */ void m247lambda$onCreate$0$commegacarlinkviewdialogCheckDeviceDialog(View view) {
        dismiss();
        this.mListener.onCheckDialogConfirmClick();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mega-carlink-view-dialog-CheckDeviceDialog, reason: not valid java name */
    /* synthetic */ void m248lambda$onCreate$1$commegacarlinkviewdialogCheckDeviceDialog(View view) {
        dismiss();
        this.mListener.onCheckDialogCancelClick();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        Window window = getWindow();
        layoutParams.copyFrom(window.getAttributes());
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.gravity = 17;
        layoutParams.windowAnimations = R.style.AnimDialog;
        window.setAttributes(layoutParams);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    private void hideStatusNavigationBar() {
        MLog.i(TAG, "hideStatusNavigationBar");
        getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    public void setContent(String str) {
        MLog.d(TAG, "setContent: ");
        this.mContentTV.setText(str);
    }
}
