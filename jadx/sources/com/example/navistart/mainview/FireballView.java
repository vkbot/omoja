package com.example.navistart.mainview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import p051e4.C1475h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class FireballView extends View {

    /* JADX INFO: renamed from: g */
    public static final /* synthetic */ int f1792g = 0;

    /* JADX INFO: renamed from: b */
    public final ValueAnimator f1793b;

    /* JADX INFO: renamed from: c */
    public final Paint f1794c;

    /* JADX INFO: renamed from: d */
    public int f1795d;

    /* JADX INFO: renamed from: e */
    public int f1796e;

    /* JADX INFO: renamed from: f */
    public float f1797f;

    public FireballView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1797f = 0.0f;
        this.f1794c = new Paint(1);
        this.f1795d = -16711681;
        this.f1796e = -16776961;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f1793b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(10000);
        this.f1793b.setRepeatCount(-1);
        this.f1793b.setRepeatMode(2);
        this.f1793b.addUpdateListener(new C1475h(4, this));
        this.f1793b.start();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        int iMin = Math.min(width, height) / 2;
        int i10 = this.f1795d;
        int i11 = this.f1796e;
        float f8 = this.f1797f;
        float f10 = 1.0f - f8;
        int i12 = ((int) ((f8 * (i11 & 255)) + (f10 * (i10 & 255)))) | (((int) ((((i11 >> 24) & 255) * f8) + (((i10 >> 24) & 255) * f10))) << 24) | (((int) ((((i11 >> 16) & 255) * f8) + (((i10 >> 16) & 255) * f10))) << 16) | (((int) ((((i11 >> 8) & 255) * f8) + (((i10 >> 8) & 255) * f10))) << 8);
        float f11 = width / 2.0f;
        float f12 = height / 2.0f;
        float f13 = iMin;
        RadialGradient radialGradient = new RadialGradient(f11, f12, f13, new int[]{i12, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.4f, 1.0f}, Shader.TileMode.CLAMP);
        Paint paint = this.f1794c;
        paint.setShader(radialGradient);
        canvas.drawCircle(f11, f12, f13, paint);
    }
}
