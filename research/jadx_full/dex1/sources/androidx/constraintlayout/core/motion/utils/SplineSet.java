package androidx.constraintlayout.core.motion.utils;

import ai.onnxruntime.a;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class SplineSet {
    private static final String TAG = "SplineSet";
    private int mCount;
    protected CurveFit mCurveFit;
    private String mType;
    protected int[] mTimePoints = new int[10];
    protected float[] mValues = new float[10];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static SplineSet makeCustomSpline(String str, KeyFrameArray$CustomArray keyFrameArray$CustomArray) {
        return new SplineSet$CustomSet(str, keyFrameArray$CustomArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static SplineSet makeCustomSplineSet(String str, KeyFrameArray$CustomVar keyFrameArray$CustomVar) {
        return new SplineSet$CustomSpline(str, keyFrameArray$CustomVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static SplineSet makeSpline(String str, long j9) {
        return new SplineSet$CoreSpline(str, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float get(float f8) {
        return (float) this.mCurveFit.getPos(f8, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getSlope(float f8) {
        return (float) this.mCurveFit.getSlope(f8, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPoint(int i9, float f8) {
        int[] iArr = this.mTimePoints;
        if (iArr.length < this.mCount + 1) {
            this.mTimePoints = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValues;
            this.mValues = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTimePoints;
        int i10 = this.mCount;
        iArr2[i10] = i9;
        this.mValues[i10] = f8;
        this.mCount = i10 + 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setProperty(TypedValues typedValues, float f8) {
        typedValues.setValue(TypedValues$AttributesType.getId(this.mType), get(f8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(String str) {
        this.mType = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    public void setup(int i9) {
        int i10 = this.mCount;
        if (i10 == 0) {
            return;
        }
        SplineSet$Sort.doubleQuickSort(this.mTimePoints, this.mValues, 0, i10 - 1);
        int i11 = 1;
        for (int i12 = 1; i12 < this.mCount; i12++) {
            int[] iArr = this.mTimePoints;
            if (iArr[i12 - 1] != iArr[i12]) {
                i11++;
            }
        }
        double[] dArr = new double[i11];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i11, 1);
        int i13 = 0;
        for (int i14 = 0; i14 < this.mCount; i14++) {
            if (i14 > 0) {
                int[] iArr2 = this.mTimePoints;
                if (iArr2[i14] != iArr2[i14 - 1]) {
                    dArr[i13] = ((double) this.mTimePoints[i14]) * 0.01d;
                    dArr2[i13][0] = this.mValues[i14];
                    i13++;
                }
            } else {
                dArr[i13] = ((double) this.mTimePoints[i14]) * 0.01d;
                dArr2[i13][0] = this.mValues[i14];
                i13++;
            }
        }
        this.mCurveFit = CurveFit.get(i9, dArr, dArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String string = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i9 = 0; i9 < this.mCount; i9++) {
            StringBuilder sbW = a.w(string, "[");
            sbW.append(this.mTimePoints[i9]);
            sbW.append(" , ");
            sbW.append(decimalFormat.format(this.mValues[i9]));
            sbW.append("] ");
            string = sbW.toString();
        }
        return string;
    }
}
