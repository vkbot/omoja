package androidx.constraintlayout.core.motion.utils;

import ai.onnxruntime.a;
import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class TimeCycleSplineSet {
    protected static final int CURVE_OFFSET = 2;
    protected static final int CURVE_PERIOD = 1;
    protected static final int CURVE_VALUE = 0;
    private static final String TAG = "SplineSet";
    protected static float sVal2PI = 6.2831855f;
    protected int mCount;
    protected CurveFit mCurveFit;
    protected long mLastTime;
    protected String mType;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance((Class<?>) Float.TYPE, 10, 3);
    protected float[] mCache = new float[3];
    protected boolean mContinue = false;
    protected float mLastCycle = Float.NaN;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float calcWave(float f8) {
        float fAbs;
        switch (this.mWaveShape) {
            case 1:
                return Math.signum(f8 * sVal2PI);
            case 2:
                fAbs = Math.abs(f8);
                break;
            case 3:
                return (((f8 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f8 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f8 * sVal2PI);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f8 * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f8 * sVal2PI);
        }
        return 1.0f - fAbs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPoint(int i9, float f8, float f9, int i10, float f10) {
        int[] iArr = this.mTimePoints;
        int i11 = this.mCount;
        iArr[i11] = i9;
        float[] fArr = this.mValues[i11];
        fArr[0] = f8;
        fArr[1] = f9;
        fArr[2] = f10;
        this.mWaveShape = Math.max(this.mWaveShape, i10);
        this.mCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartTime(long j9) {
        this.mLastTime = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(String str) {
        this.mType = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    public void setup(int i9) {
        int i10 = this.mCount;
        if (i10 == 0) {
            System.err.println("Error no points added to " + this.mType);
            return;
        }
        TimeCycleSplineSet$Sort.doubleQuickSort(this.mTimePoints, this.mValues, 0, i10 - 1);
        int i11 = 1;
        int i12 = 0;
        while (true) {
            int[] iArr = this.mTimePoints;
            if (i11 >= iArr.length) {
                break;
            }
            if (iArr[i11] != iArr[i11 - 1]) {
                i12++;
            }
            i11++;
        }
        if (i12 == 0) {
            i12 = 1;
        }
        double[] dArr = new double[i12];
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, i12, 3);
        int i13 = 0;
        for (int i14 = 0; i14 < this.mCount; i14++) {
            if (i14 > 0) {
                int[] iArr2 = this.mTimePoints;
                if (iArr2[i14] != iArr2[i14 - 1]) {
                    dArr[i13] = ((double) this.mTimePoints[i14]) * 0.01d;
                    double[] dArr3 = dArr2[i13];
                    float[] fArr = this.mValues[i14];
                    dArr3[0] = fArr[0];
                    dArr3[1] = fArr[1];
                    dArr3[2] = fArr[2];
                    i13++;
                }
            } else {
                dArr[i13] = ((double) this.mTimePoints[i14]) * 0.01d;
                double[] dArr4 = dArr2[i13];
                float[] fArr2 = this.mValues[i14];
                dArr4[0] = fArr2[0];
                dArr4[1] = fArr2[1];
                dArr4[2] = fArr2[2];
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
