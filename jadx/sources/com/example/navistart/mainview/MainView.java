package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import com.example.navistart.R;
import p047e0.AbstractC1385l2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MainView extends CardView {

    /* JADX INFO: renamed from: b */
    public final int f1836b;

    /* JADX INFO: renamed from: c */
    public final String f1837c;

    public MainView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        String str;
        super(context, attributeSet);
        this.f1837c = "";
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC1385l2.f3307e, 0, 0);
            try {
                this.f1836b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                this.f1837c = typedArrayObtainStyledAttributes.getString(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        LayoutInflater.from(context).inflate(this.f1836b, this);
        TextView textView = (TextView) findViewById(R.id.MainLabel);
        if (textView == null || (str = this.f1837c) == null) {
            return;
        }
        textView.setText(str);
    }
}
