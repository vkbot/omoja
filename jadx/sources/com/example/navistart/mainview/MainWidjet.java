package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import com.example.navistart.ModernMainActivity;
import com.example.navistart.R;
import p047e0.AbstractC1385l2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MainWidjet extends CardView {

    /* JADX INFO: renamed from: b */
    public final int f1838b;

    /* JADX INFO: renamed from: c */
    public final String f1839c;

    public MainWidjet(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1838b = R.layout.main_widjet;
        this.f1839c = "";
        if (context instanceof ModernMainActivity) {
            this.f1838b = R.layout.modern_main_widgets;
        }
        LayoutInflater.from(context).inflate(this.f1838b, this);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3304b, 0, 0);
        try {
            this.f1839c = typedArrayObtainStyledAttributes.getString(0);
            typedArrayObtainStyledAttributes.recycle();
            ((TextView) findViewById(R.id.MainLabel)).setText(this.f1839c);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
