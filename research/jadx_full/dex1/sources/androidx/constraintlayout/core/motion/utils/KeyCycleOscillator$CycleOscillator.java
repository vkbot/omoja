package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class KeyCycleOscillator$CycleOscillator {
    private static final String TAG = "CycleOscillator";
    static final int UNSET = -1;
    CurveFit mCurveFit;
    float[] mOffsetArr;
    private final int mOffst;
    Oscillator mOscillator;
    float mPathLength;
    float[] mPeriod;
    private final int mPhase;
    float[] mPhaseArr;
    double[] mPosition;
    float[] mScale;
    double[] mSplineSlopeCache;
    double[] mSplineValueCache;
    private final int mValue;
    float[] mValues;
    private final int mVariesBy;
    int mWaveShape;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public KeyCycleOscillator$CycleOscillator(int i9, String str, int i10, int i11) {
        Oscillator oscillator = new Oscillator();
        this.mOscillator = oscillator;
        this.mOffst = 0;
        this.mPhase = 1;
        this.mValue = 2;
        this.mWaveShape = i9;
        this.mVariesBy = i10;
        oscillator.setType(i9, str);
        this.mValues = new float[i11];
        this.mPosition = new double[i11];
        this.mPeriod = new float[i11];
        this.mOffsetArr = new float[i11];
        this.mPhaseArr = new float[i11];
        this.mScale = new float[i11];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getLastPhase() {
        return this.mSplineValueCache[1];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getSlope(float f8) {
        CurveFit curveFit = this.mCurveFit;
        double[] dArr = this.mSplineSlopeCache;
        if (curveFit != null) {
            double d = f8;
            curveFit.getSlope(d, dArr);
            this.mCurveFit.getPos(d, this.mSplineValueCache);
        } else {
            dArr[0] = 0.0d;
            dArr[1] = 0.0d;
            dArr[2] = 0.0d;
        }
        double d9 = f8;
        double value = this.mOscillator.getValue(d9, this.mSplineValueCache[1]);
        double slope = this.mOscillator.getSlope(d9, this.mSplineValueCache[1], this.mSplineSlopeCache[1]);
        double[] dArr2 = this.mSplineSlopeCache;
        return (slope * this.mSplineValueCache[2]) + (value * dArr2[2]) + dArr2[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getValues(float f8) {
        CurveFit curveFit = this.mCurveFit;
        double[] dArr = this.mSplineValueCache;
        if (curveFit != null) {
            curveFit.getPos(f8, dArr);
        } else {
            dArr[0] = this.mOffsetArr[0];
            dArr[1] = this.mPhaseArr[0];
            dArr[2] = this.mValues[0];
        }
        double[] dArr2 = this.mSplineValueCache;
        return (this.mOscillator.getValue(f8, dArr2[1]) * this.mSplineValueCache[2]) + dArr2[0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPoint(int i9, int i10, float f8, float f9, float f10, float f11) {
        this.mPosition[i9] = ((double) i10) / 100.0d;
        this.mPeriod[i9] = f8;
        this.mOffsetArr[i9] = f9;
        this.mPhaseArr[i9] = f10;
        this.mValues[i9] = f11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup(float f8) {
        this.mPathLength = f8;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, this.mPosition.length, 3);
        float[] fArr = this.mValues;
        this.mSplineValueCache = new double[fArr.length + 2];
        this.mSplineSlopeCache = new double[fArr.length + 2];
        if (this.mPosition[0] > 0.0d) {
            this.mOscillator.addPoint(0.0d, this.mPeriod[0]);
        }
        double[] dArr2 = this.mPosition;
        int length = dArr2.length - 1;
        if (dArr2[length] < 1.0d) {
            this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
        }
        for (int i9 = 0; i9 < dArr.length; i9++) {
            double[] dArr3 = dArr[i9];
            dArr3[0] = this.mOffsetArr[i9];
            dArr3[1] = this.mPhaseArr[i9];
            dArr3[2] = this.mValues[i9];
            this.mOscillator.addPoint(this.mPosition[i9], this.mPeriod[i9]);
        }
        this.mOscillator.normalize();
        double[] dArr4 = this.mPosition;
        if (dArr4.length > 1) {
            this.mCurveFit = CurveFit.get(0, dArr4, dArr);
        } else {
            this.mCurveFit = null;
        }
    }
}
