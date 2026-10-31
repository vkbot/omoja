package androidx.core.view.animation;

import ai.onnxruntime.a;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i9 = (int) (length / 0.002f);
        int i10 = i9 + 1;
        this.mX = new float[i10];
        this.mY = new float[i10];
        float[] fArr = new float[2];
        for (int i11 = 0; i11 < i10; i11++) {
            pathMeasure.getPosTan((i11 * length) / i9, fArr, null);
            this.mX[i11] = fArr[0];
            this.mY[i11] = fArr[1];
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path createCubic(float f8, float f9, float f10, float f11) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f8, f9, f10, f11, 1.0f, 1.0f);
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Path createQuad(float f8, float f9) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f8, f9, 1.0f, 1.0f);
        return path;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f8) {
        float[] fArr;
        if (f8 <= 0.0f) {
            return 0.0f;
        }
        if (f8 >= 1.0f) {
            return 1.0f;
        }
        int length = this.mX.length - 1;
        int i9 = 0;
        while (true) {
            int i10 = length - i9;
            fArr = this.mX;
            if (i10 <= 1) {
                break;
            }
            int i11 = (i9 + length) / 2;
            if (f8 < fArr[i11]) {
                length = i11;
            } else {
                i9 = i11;
            }
        }
        float f9 = fArr[length];
        float f10 = fArr[i9];
        float f11 = f9 - f10;
        float[] fArr2 = this.mY;
        if (f11 == 0.0f) {
            return fArr2[i9];
        }
        float f12 = fArr2[i9];
        return a.b(fArr2[length], f12, (f8 - f10) / f11, f12);
    }

    public PathInterpolatorApi14(float f8, float f9) {
        this(createQuad(f8, f9));
    }

    public PathInterpolatorApi14(float f8, float f9, float f10, float f11) {
        this(createCubic(f8, f9, f10, f11));
    }
}
