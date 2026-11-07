package com.android.server.wm;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: classes2.dex */
public class UnsupportedDisplaySizeDialog {
    private final AlertDialog mDialog;
    private final String mPackageName;

    public UnsupportedDisplaySizeDialog(final AppWarnings manager, Context context, ApplicationInfo appInfo) {
        this.mPackageName = appInfo.packageName;
        PackageManager pm = context.getPackageManager();
        CharSequence label = appInfo.loadSafeLabel(pm, 500.0f, 5);
        CharSequence message = context.getString(R.string.permlab_accessFineLocation, label);
        AlertDialog alertDialogCreate = new AlertDialog.Builder(context).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).setMessage(message).setView(R.layout.safe_mode).create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.create();
        Window window = this.mDialog.getWindow();
        window.setType(2002);
        window.getAttributes().setTitle("UnsupportedDisplaySizeDialog");
        CheckBox alwaysShow = (CheckBox) this.mDialog.findViewById(R.id.alternate_expand_target);
        alwaysShow.setChecked(true);
        alwaysShow.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.server.wm.-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$new$0$UnsupportedDisplaySizeDialog(manager, compoundButton, z);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$UnsupportedDisplaySizeDialog(AppWarnings manager, CompoundButton buttonView, boolean isChecked) {
        manager.setPackageFlag(this.mPackageName, 1, !isChecked);
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public void show() {
        this.mDialog.show();
    }

    public void dismiss() {
        this.mDialog.dismiss();
    }
}
