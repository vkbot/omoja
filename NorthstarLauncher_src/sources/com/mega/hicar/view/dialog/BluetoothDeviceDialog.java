package com.mega.hicar.view.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.View;
import com.mega.hicar.lib.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class BluetoothDeviceDialog extends BaseDialog {
    private static final String TAG = "BluetoothDeviceDialog";
    private final Context mContext;
    private OnConfirmBluetoothDialogListener mListener;

    public interface OnConfirmBluetoothDialogListener {
        void onBluetoothDialogCancelClick();

        void onBluetoothDialogConfirmClick();
    }

    public void setOnConfirmBluetoothDialogListener(OnConfirmBluetoothDialogListener onConfirmBluetoothDialogListener) {
        this.mListener = onConfirmBluetoothDialogListener;
    }

    public BluetoothDeviceDialog(Context context) {
        super(context);
        this.mContext = new ContextThemeWrapper(context, R.style.AppTheme);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        View viewInflate = View.inflate(this.mContext, R.layout.dialog_check_bluetooth, null);
        setContentView(viewInflate);
        viewInflate.findViewById(R.id.confirm).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.BluetoothDeviceDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m261x6bea40c6(view);
            }
        });
        viewInflate.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.mega.hicar.view.dialog.BluetoothDeviceDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m262x5d93e6e5(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-mega-hicar-view-dialog-BluetoothDeviceDialog, reason: not valid java name */
    /* synthetic */ void m261x6bea40c6(View view) {
        dismiss();
        this.mListener.onBluetoothDialogConfirmClick();
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-mega-hicar-view-dialog-BluetoothDeviceDialog, reason: not valid java name */
    /* synthetic */ void m262x5d93e6e5(View view) {
        dismiss();
        this.mListener.onBluetoothDialogCancelClick();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
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
