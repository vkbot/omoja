package com.android.server.wm;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.android.server.utils.AppInstallerUtil;

/* JADX INFO: loaded from: classes2.dex */
public class UnsupportedCompileSdkDialog {
    private final AlertDialog mDialog;
    private final String mPackageName;

    public UnsupportedCompileSdkDialog(final AppWarnings manager, final Context context, ApplicationInfo appInfo) {
        this.mPackageName = appInfo.packageName;
        PackageManager pm = context.getPackageManager();
        CharSequence label = appInfo.loadSafeLabel(pm, 500.0f, 5);
        CharSequence message = context.getString(R.string.permlab_accessCoarseLocation, label);
        AlertDialog.Builder builder = new AlertDialog.Builder(context).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).setMessage(message).setView(R.layout.restrictions_pin_setup);
        final Intent installerIntent = AppInstallerUtil.createIntent(context, appInfo.packageName);
        if (installerIntent != null) {
            builder.setNeutralButton(R.string.permlab_accessBackgroundLocation, new DialogInterface.OnClickListener() { // from class: com.android.server.wm.-$$Lambda$UnsupportedCompileSdkDialog$s08IFWLhWLXfzf3tlanuXzZZzN8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    context.startActivity(installerIntent);
                }
            });
        }
        AlertDialog alertDialogCreate = builder.create();
        this.mDialog = alertDialogCreate;
        alertDialogCreate.create();
        Window window = this.mDialog.getWindow();
        window.setType(2002);
        window.getAttributes().setTitle("UnsupportedCompileSdkDialog");
        CheckBox alwaysShow = (CheckBox) this.mDialog.findViewById(R.id.alternate_expand_target);
        alwaysShow.setChecked(true);
        alwaysShow.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.android.server.wm.-$$Lambda$UnsupportedCompileSdkDialog$UMRp9pktAbDwIyCxd4tnMBne_so
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                this.f$0.lambda$new$1$UnsupportedCompileSdkDialog(manager, compoundButton, z);
            }
        });
    }

    public /* synthetic */ void lambda$new$1$UnsupportedCompileSdkDialog(AppWarnings manager, CompoundButton buttonView, boolean isChecked) {
        manager.setPackageFlag(this.mPackageName, 2, !isChecked);
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
