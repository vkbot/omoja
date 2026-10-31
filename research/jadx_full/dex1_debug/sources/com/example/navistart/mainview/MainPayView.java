package com.example.navistart.mainview;

import android.content.Context;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import e0.l2;
import e0.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MainPayView extends CardView {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MainPayView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        String str;
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(2131493019, this);
        context.getTheme().obtainStyledAttributes(attributeSet, l2.f1885b, 0, 0);
        TextView textView = (TextView) findViewById(2131296321);
        try {
            str = getContext().getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager$NameNotFoundException unused) {
            str = "";
        }
        textView.setText(getContext().getApplicationInfo().loadLabel(getContext().getPackageManager()).toString() + m.h(new byte[]{-66, 24}, new byte[]{-124, 56, 109, -81, -39, 16, -13, 68}) + str);
    }
}
