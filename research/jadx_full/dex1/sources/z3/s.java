package z3;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region$Op;
import android.graphics.Shader$TileMode;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s extends x {
    public final u c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(u uVar) {
        this.c = uVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.x
    public final void a(Matrix matrix, y3.a aVar, int i9, Canvas canvas) {
        u uVar = this.c;
        float f8 = uVar.f6279f;
        float f9 = uVar.f6280g;
        RectF rectF = new RectF(uVar.f6278b, uVar.c, uVar.d, uVar.e);
        Paint paint = aVar.f6128b;
        boolean z8 = f9 < 0.0f;
        Path path = aVar.f6130g;
        int[] iArr = y3.a.f6125k;
        if (z8) {
            iArr[0] = 0;
            iArr[1] = aVar.f6129f;
            iArr[2] = aVar.e;
            iArr[3] = aVar.d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f8, f9);
            path.close();
            float f10 = -i9;
            rectF.inset(f10, f10);
            iArr[0] = 0;
            iArr[1] = aVar.d;
            iArr[2] = aVar.e;
            iArr[3] = aVar.f6129f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0) {
            return;
        }
        float f11 = 1.0f - (i9 / fWidth);
        float[] fArr = y3.a.f6126l;
        fArr[1] = f11;
        fArr[2] = ((1.0f - f11) / 2.0f) + f11;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, iArr, fArr, Shader$TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z8) {
            canvas.clipPath(path, Region$Op.DIFFERENCE);
            canvas.drawPath(path, aVar.f6131h);
        }
        canvas.drawArc(rectF, f8, f9, true, paint);
        canvas.restore();
    }
}
