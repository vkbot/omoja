package p258z3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import p248y3.C3644a;

/* JADX INFO: renamed from: z3.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3733s extends AbstractC3738x {

    /* JADX INFO: renamed from: c */
    public final C3735u f11113c;

    public C3733s(C3735u c3735u) {
        this.f11113c = c3735u;
    }

    @Override // p258z3.AbstractC3738x
    /* JADX INFO: renamed from: a */
    public final void mo5966a(Matrix matrix, C3644a c3644a, int i10, Canvas canvas) {
        C3735u c3735u = this.f11113c;
        float f8 = c3735u.f11122f;
        float f10 = c3735u.f11123g;
        RectF rectF = new RectF(c3735u.f11118b, c3735u.f11119c, c3735u.f11120d, c3735u.f11121e);
        Paint paint = c3644a.f10830b;
        boolean z9 = f10 < 0.0f;
        Path path = c3644a.f10835g;
        int[] iArr = C3644a.f10827k;
        if (z9) {
            iArr[0] = 0;
            iArr[1] = c3644a.f10834f;
            iArr[2] = c3644a.f10833e;
            iArr[3] = c3644a.f10832d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f8, f10);
            path.close();
            float f11 = -i10;
            rectF.inset(f11, f11);
            iArr[0] = 0;
            iArr[1] = c3644a.f10832d;
            iArr[2] = c3644a.f10833e;
            iArr[3] = c3644a.f10834f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0) {
            return;
        }
        float f12 = 1.0f - (i10 / fWidth);
        float[] fArr = C3644a.f10828l;
        fArr[1] = f12;
        fArr[2] = ((1.0f - f12) / 2.0f) + f12;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z9) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, c3644a.f10836h);
        }
        canvas.drawArc(rectF, f8, f10, true, paint);
        canvas.restore();
    }
}
