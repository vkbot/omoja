package com.example.navistart.mainview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable$Orientation;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout$LayoutParams;
import android.widget.TextView;
import androidx.annotation.Nullable;
import e4.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DownloadButton extends LinearLayout {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f947f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImageView f948b;
    public TextView c;
    public GradientDrawable d;
    public ValueAnimator e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DownloadButton(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Context context) {
        setOrientation(0);
        setGravity(16);
        setPadding(32, 20, 32, 20);
        setClickable(true);
        setFocusable(true);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable$Orientation.LEFT_RIGHT, new int[]{-16711766, -16733441, -16711766});
        this.d = gradientDrawable;
        gradientDrawable.setUseLevel(true);
        this.d.setCornerRadius(24.0f);
        this.d.setStroke(4, -16711766);
        setBackground(this.d);
        this.f948b = new ImageView(context);
        this.f948b.setLayoutParams(new LinearLayout$LayoutParams(48, 48));
        this.f948b.setImageResource(2131165454);
        this.f948b.setColorFilter(-1);
        this.c = new TextView(context);
        LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-2, -2);
        linearLayout$LayoutParams.leftMargin = 16;
        this.c.setLayoutParams(linearLayout$LayoutParams);
        this.c.setText(context.getString(2131951720));
        this.c.setTextColor(-1);
        this.c.setTextSize(14.0f);
        this.c.setTypeface(null, 1);
        addView(this.f948b);
        addView(this.c);
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(2130903786, typedValue, true) && typedValue.data != 0) {
            setBackgroundResource(2131165574);
            float f8 = getResources().getDisplayMetrics().density;
            float f9 = 16.0f * f8;
            float f10 = 10.0f * f8;
            setPadding(Math.round(f9), Math.round(f10), Math.round(f9), Math.round(f10));
            setMinimumHeight(Math.round(f8 * 48.0f));
            this.c.setTextColor(context.getColor(2131035009));
            this.c.setTextSize(15.0f);
            return;
        }
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 10000);
        this.e = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(3000L);
        this.e.setRepeatCount(-1);
        this.e.setInterpolator(new LinearInterpolator());
        this.e.addUpdateListener(new h(3, this));
        this.e.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }
}
