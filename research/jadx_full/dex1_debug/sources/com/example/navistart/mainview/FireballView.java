package com.example.navistart.mainview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader$TileMode;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import e4.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FireballView extends View {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f949g = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ValueAnimator f950b;
    public final Paint c;
    public int d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f951f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FireballView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f951f = 0.0f;
        this.c = new Paint(1);
        this.d = -16711681;
        this.e = -16776961;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f950b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(10000);
        this.f950b.setRepeatCount(-1);
        this.f950b.setRepeatMode(2);
        this.f950b.addUpdateListener(new h(4, this));
        this.f950b.start();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int iMin = Math.min(width, height) / 2;
        int i9 = this.d;
        int i10 = this.e;
        float f8 = this.f951f;
        float f9 = 1.0f - f8;
        int i11 = ((int) ((f8 * (i10 & 255)) + (f9 * (i9 & 255)))) | (((int) ((((i10 >> 24) & 255) * f8) + (((i9 >> 24) & 255) * f9))) << 24) | (((int) ((((i10 >> 16) & 255) * f8) + (((i9 >> 16) & 255) * f9))) << 16) | (((int) ((((i10 >> 8) & 255) * f8) + (((i9 >> 8) & 255) * f9))) << 8);
        float f10 = width / 2.0f;
        float f11 = height / 2.0f;
        float f12 = iMin;
        RadialGradient radialGradient = new RadialGradient(f10, f11, f12, new int[]{i11, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.4f, 1.0f}, Shader$TileMode.CLAMP);
        Paint paint = this.c;
        paint.setShader(radialGradient);
        canvas.drawCircle(f10, f11, f12, paint);
    }
}
