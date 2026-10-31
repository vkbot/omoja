package p258z3;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import p248y3.C3644a;

/* JADX INFO: renamed from: z3.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3734t extends AbstractC3738x {

    /* JADX INFO: renamed from: c */
    public final C3736v f11114c;

    /* JADX INFO: renamed from: d */
    public final float f11115d;

    /* JADX INFO: renamed from: e */
    public final float f11116e;

    public C3734t(C3736v c3736v, float f8, float f10) {
        this.f11114c = c3736v;
        this.f11115d = f8;
        this.f11116e = f10;
    }

    @Override // p258z3.AbstractC3738x
    /* JADX INFO: renamed from: a */
    public final void mo5966a(Matrix matrix, C3644a c3644a, int i10, Canvas canvas) {
        C3736v c3736v = this.f11114c;
        float f8 = c3736v.f11125c;
        float f10 = this.f11116e;
        float f11 = c3736v.f11124b;
        float f12 = this.f11115d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f8 - f10, f11 - f12), 0.0f);
        Matrix matrix2 = this.f11128a;
        matrix2.set(matrix);
        matrix2.preTranslate(f12, f10);
        matrix2.preRotate(m5967b());
        c3644a.getClass();
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int i11 = c3644a.f10834f;
        int[] iArr = C3644a.f10825i;
        iArr[0] = i11;
        iArr[1] = c3644a.f10833e;
        iArr[2] = c3644a.f10832d;
        Paint paint = c3644a.f10831c;
        float f13 = rectF.left;
        paint.setShader(new LinearGradient(f13, rectF.top, f13, rectF.bottom, iArr, C3644a.f10826j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    /* JADX INFO: renamed from: b */
    public final float m5967b() {
        C3736v c3736v = this.f11114c;
        return (float) Math.toDegrees(Math.atan((c3736v.f11125c - this.f11116e) / (c3736v.f11124b - this.f11115d)));
    }
}
