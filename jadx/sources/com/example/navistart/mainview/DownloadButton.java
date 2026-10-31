package com.example.navistart.mainview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.example.navistart.R;
import p051e4.C1475h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class DownloadButton extends LinearLayout {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f1787f = 0;

    /* JADX INFO: renamed from: b */
    public ImageView f1788b;

    /* JADX INFO: renamed from: c */
    public TextView f1789c;

    /* JADX INFO: renamed from: d */
    public GradientDrawable f1790d;

    /* JADX INFO: renamed from: e */
    public ValueAnimator f1791e;

    public DownloadButton(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m1665a(context);
    }

    /* JADX INFO: renamed from: a */
    public final void m1665a(Context context) {
        setOrientation(0);
        setGravity(16);
        setPadding(32, 20, 32, 20);
        setClickable(true);
        setFocusable(true);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, new int[]{-16711766, -16733441, -16711766});
        this.f1790d = gradientDrawable;
        gradientDrawable.setUseLevel(true);
        this.f1790d.setCornerRadius(24.0f);
        this.f1790d.setStroke(4, -16711766);
        setBackground(this.f1790d);
        this.f1788b = new ImageView(context);
        this.f1788b.setLayoutParams(new LinearLayout.LayoutParams(48, 48));
        this.f1788b.setImageResource(R.drawable.ic_download);
        this.f1788b.setColorFilter(-1);
        this.f1789c = new TextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = 16;
        this.f1789c.setLayoutParams(layoutParams);
        this.f1789c.setText(context.getString(R.string.Run_Store_Mod));
        this.f1789c.setTextColor(-1);
        this.f1789c.setTextSize(14.0f);
        this.f1789c.setTypeface(null, 1);
        addView(this.f1788b);
        addView(this.f1789c);
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.jctModernUi, typedValue, true) && typedValue.data != 0) {
            setBackgroundResource(R.drawable.modern_button_primary);
            float f8 = getResources().getDisplayMetrics().density;
            float f10 = 16.0f * f8;
            float f11 = 10.0f * f8;
            setPadding(Math.round(f10), Math.round(f11), Math.round(f10), Math.round(f11));
            setMinimumHeight(Math.round(f8 * 48.0f));
            this.f1789c.setTextColor(context.getColor(R.color.modern_text));
            this.f1789c.setTextSize(15.0f);
            return;
        }
        ValueAnimator valueAnimator = this.f1791e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 10000);
        this.f1791e = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(3000L);
        this.f1791e.setRepeatCount(-1);
        this.f1791e.setInterpolator(new LinearInterpolator());
        this.f1791e.addUpdateListener(new C1475h(3, this));
        this.f1791e.start();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f1791e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }
}
