package androidx.core.view.animation;

import ai.onnxruntime.AbstractC0074a;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;

    /* JADX INFO: renamed from: mX */
    private final float[] f388mX;

    /* JADX INFO: renamed from: mY */
    private final float[] f389mY;

    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i10 = (int) (length / 0.002f);
        int i11 = i10 + 1;
        this.f388mX = new float[i11];
        this.f389mY = new float[i11];
        float[] fArr = new float[2];
        for (int i12 = 0; i12 < i11; i12++) {
            pathMeasure.getPosTan((i12 * length) / i10, fArr, null);
            this.f388mX[i12] = fArr[0];
            this.f389mY[i12] = fArr[1];
        }
    }

    private static Path createCubic(float f8, float f10, float f11, float f12) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f8, f10, f11, f12, 1.0f, 1.0f);
        return path;
    }

    private static Path createQuad(float f8, float f10) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f8, f10, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        float[] fArr;
        if (f8 <= 0.0f) {
            return 0.0f;
        }
        if (f8 >= 1.0f) {
            return 1.0f;
        }
        int length = this.f388mX.length - 1;
        int i10 = 0;
        while (true) {
            int i11 = length - i10;
            fArr = this.f388mX;
            if (i11 <= 1) {
                break;
            }
            int i12 = (i10 + length) / 2;
            if (f8 < fArr[i12]) {
                length = i12;
            } else {
                i10 = i12;
            }
        }
        float f10 = fArr[length];
        float f11 = fArr[i10];
        float f12 = f10 - f11;
        float[] fArr2 = this.f389mY;
        if (f12 == 0.0f) {
            return fArr2[i10];
        }
        float f13 = fArr2[i10];
        return AbstractC0074a.m151b(fArr2[length], f13, (f8 - f11) / f12, f13);
    }

    public PathInterpolatorApi14(float f8, float f10) {
        this(createQuad(f8, f10));
    }

    public PathInterpolatorApi14(float f8, float f10, float f11, float f12) {
        this(createCubic(f8, f10, f11, f12));
    }
}
