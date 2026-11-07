package com.android.server.wm;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: loaded from: classes2.dex */
public final class LaunchWarningWindow extends Dialog {
    public LaunchWarningWindow(Context context, ActivityRecord cur, ActivityRecord next) {
        super(context, R.style.Theme.Leanback.Dialog);
        requestWindowFeature(3);
        getWindow().setType(2003);
        getWindow().addFlags(24);
        setContentView(R.layout.input_method_navigation_bar);
        setTitle(context.getText(R.string.font_family_body_1_material));
        TypedValue out = new TypedValue();
        getContext().getTheme().resolveAttribute(R.attr.alertDialogIcon, out, true);
        getWindow().setFeatureDrawableResource(3, out.resourceId);
        ImageView icon = (ImageView) findViewById(R.id.nosensor);
        icon.setImageDrawable(next.info.applicationInfo.loadIcon(context.getPackageManager()));
        TextView text = (TextView) findViewById(R.id.notSensitive);
        text.setText(context.getResources().getString(R.string.floating_toolbar_open_overflow_description, next.info.applicationInfo.loadLabel(context.getPackageManager()).toString()));
        ImageView icon2 = (ImageView) findViewById(R.id.marquee);
        icon2.setImageDrawable(cur.info.applicationInfo.loadIcon(context.getPackageManager()));
        TextView text2 = (TextView) findViewById(R.id.marquee_forever);
        text2.setText(context.getResources().getString(R.string.floating_toolbar_close_overflow_description, cur.info.applicationInfo.loadLabel(context.getPackageManager()).toString()));
    }
}
