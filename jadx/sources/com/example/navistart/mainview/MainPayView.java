package com.example.navistart.mainview;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import com.example.navistart.R;
import p047e0.AbstractC1385l2;
import p047e0.AbstractC1387m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MainPayView extends CardView {
    public MainPayView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        String str;
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.main_pay, this);
        context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3304b, 0, 0);
        TextView textView = (TextView) findViewById(R.id.MainPayViewLabel);
        try {
            str = getContext().getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "";
        }
        textView.setText(getContext().getApplicationInfo().loadLabel(getContext().getPackageManager()).toString() + AbstractC1387m.m2421h(new byte[]{-66, 24}, new byte[]{-124, 56, 109, -81, -39, 16, -13, 68}) + str);
    }
}
