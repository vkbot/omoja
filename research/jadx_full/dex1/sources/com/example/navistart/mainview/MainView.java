package com.example.navistart.mainview;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import e0.l2;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MainView extends CardView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f981b;
    public final String c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MainView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        String str;
        super(context, attributeSet);
        this.c = "";
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, l2.e, 0, 0);
            try {
                this.f981b = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                this.c = typedArrayObtainStyledAttributes.getString(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        LayoutInflater.from(context).inflate(this.f981b, this);
        TextView textView = (TextView) findViewById(2131296320);
        if (textView == null || (str = this.c) == null) {
            return;
        }
        textView.setText(str);
    }
}
