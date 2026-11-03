package com.mega.carlink.view.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.mega.carlink.lib.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CarLinkBluetoothDeviceDialog extends Dialog {
    private static final String TAG = "CarLinkBluetoothDeviceDialog";
    private Context mContext;
    private OnConfirmBluetoothDialogListener mListener;

    public interface OnConfirmBluetoothDialogListener {
        void onBluetoothDialogCancelClick();

        void onBluetoothDialogConfirmClick();
    }

    public void setOnConfirmBluetoothDialogListener(OnConfirmBluetoothDialogListener onConfirmBluetoothDialogListener) {
        this.mListener = onConfirmBluetoothDialogListener;
    }

    public CarLinkBluetoothDeviceDialog(Context context) {
        super(context);
        this.mContext = new ContextThemeWrapper(context, R.style.AppTheme);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_check_bluetooth_carlink, null);
        setContentView(viewInflate);
        viewInflate.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.mega.carlink.view.dialog.CarLinkBluetoothDeviceDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m245xb90866c9(view);
            }
        });
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.mega.carlink.view.dialog.CarLinkBluetoothDeviceDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m246xc9be338a(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mega-carlink-view-dialog-CarLinkBluetoothDeviceDialog, reason: not valid java name */
    /* synthetic */ void m245xb90866c9(View view) {
        dismiss();
        this.mListener.onBluetoothDialogConfirmClick();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mega-carlink-view-dialog-CarLinkBluetoothDeviceDialog, reason: not valid java name */
    /* synthetic */ void m246xc9be338a(View view) {
        dismiss();
        this.mListener.onBluetoothDialogCancelClick();
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
}
