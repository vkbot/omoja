package z3;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader$TileMode;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class t extends x {
    public final v c;
    public final float d;
    public final float e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t(v vVar, float f8, float f9) {
        this.c = vVar;
        this.d = f8;
        this.e = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // z3.x
    public final void a(Matrix matrix, y3.a aVar, int i9, Canvas canvas) {
        v vVar = this.c;
        float f8 = vVar.c;
        float f9 = this.e;
        float f10 = vVar.f6281b;
        float f11 = this.d;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f8 - f9, f10 - f11), 0.0f);
        Matrix matrix2 = this.f6284a;
        matrix2.set(matrix);
        matrix2.preTranslate(f11, f9);
        matrix2.preRotate(b());
        aVar.getClass();
        rectF.bottom += i9;
        rectF.offset(0.0f, -i9);
        int i10 = aVar.f6129f;
        int[] iArr = y3.a.f6123i;
        iArr[0] = i10;
        iArr[1] = aVar.e;
        iArr[2] = aVar.d;
        Paint paint = aVar.c;
        float f12 = rectF.left;
        paint.setShader(new LinearGradient(f12, rectF.top, f12, rectF.bottom, iArr, y3.a.f6124j, Shader$TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final float b() {
        v vVar = this.c;
        return (float) Math.toDegrees(Math.atan((vVar.c - this.e) / (vVar.f6281b - this.d)));
    }
}
