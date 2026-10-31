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
public class MainBez extends CardView {

    /* JADX INFO: renamed from: b */
    public final int f1830b;

    /* JADX INFO: renamed from: c */
    public final String f1831c;

    public MainBez(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1830b = R.layout.main_bez;
        this.f1831c = "";
        if (context instanceof ModernMainActivity) {
            this.f1830b = R.layout.modern_main_bez;
        }
        LayoutInflater.from(context).inflate(this.f1830b, this);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3304b, 0, 0);
        try {
            this.f1831c = typedArrayObtainStyledAttributes.getString(0);
            typedArrayObtainStyledAttributes.recycle();
            ((TextView) findViewById(R.id.MainLabel)).setText(this.f1831c);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
