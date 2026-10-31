package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HyperSpline {
    double[][] mCtl;
    HyperSpline$Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static HyperSpline$Cubic[] calcNaturalCubic(int i9, double[] dArr) {
        double[] dArr2 = new double[i9];
        double[] dArr3 = new double[i9];
        double[] dArr4 = new double[i9];
        int i10 = i9 - 1;
        int i11 = 0;
        dArr2[0] = 0.5d;
        int i12 = 1;
        for (int i13 = 1; i13 < i10; i13++) {
            dArr2[i13] = 1.0d / (4.0d - dArr2[i13 - 1]);
        }
        int i14 = i9 - 2;
        dArr2[i10] = 1.0d / (2.0d - dArr2[i14]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i12 < i10) {
            int i15 = i12 + 1;
            int i16 = i12 - 1;
            dArr3[i12] = (((dArr[i15] - dArr[i16]) * 3.0d) - dArr3[i16]) * dArr2[i12];
            i12 = i15;
        }
        double d = (((dArr[i10] - dArr[i14]) * 3.0d) - dArr3[i14]) * dArr2[i10];
        dArr3[i10] = d;
        dArr4[i10] = d;
        while (i14 >= 0) {
            dArr4[i14] = dArr3[i14] - (dArr2[i14] * dArr4[i14 + 1]);
            i14--;
        }
        HyperSpline$Cubic[] hyperSpline$CubicArr = new HyperSpline$Cubic[i10];
        while (i11 < i10) {
            double d9 = dArr[i11];
            double d10 = dArr4[i11];
            int i17 = i11 + 1;
            double d11 = dArr[i17];
            double d12 = dArr4[i17];
            hyperSpline$CubicArr[i11] = new HyperSpline$Cubic((float) d9, d10, (((d11 - d9) * 3.0d) - (d10 * 2.0d)) - d12, ((d9 - d11) * 2.0d) + d10 + d12);
            i11 = i17;
        }
        return hyperSpline$CubicArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double approxLength(HyperSpline$Cubic[] hyperSpline$CubicArr) {
        int i9;
        int length = hyperSpline$CubicArr.length;
        double[] dArr = new double[length];
        double d = 0.0d;
        double d9 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            i9 = 0;
            if (d9 >= 1.0d) {
                break;
            }
            double d10 = 0.0d;
            while (i9 < length) {
                double d11 = dArr[i9];
                double dEval = hyperSpline$CubicArr[i9].eval(d9);
                dArr[i9] = dEval;
                double d12 = d11 - dEval;
                d10 += d12 * d12;
                i9++;
            }
            if (d9 > 0.0d) {
                dSqrt += Math.sqrt(d10);
            }
            d9 += 0.1d;
        }
        while (i9 < length) {
            double d13 = dArr[i9];
            double dEval2 = hyperSpline$CubicArr[i9].eval(1.0d);
            dArr[i9] = dEval2;
            double d14 = d13 - dEval2;
            d += d14 * d14;
            i9++;
        }
        return Math.sqrt(d) + dSqrt;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getPos(double d, float[] fArr) {
        double d9 = d * this.mTotalLength;
        int i9 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i9 >= dArr.length - 1) {
                break;
            }
            double d10 = dArr[i9];
            if (d10 >= d9) {
                break;
            }
            d9 -= d10;
            i9++;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr[i10] = (float) this.mCurve[i10][i9].eval(d9 / this.mCurveLength[i9]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getVelocity(double d, double[] dArr) {
        double d9 = d * this.mTotalLength;
        int i9 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i9 >= dArr2.length - 1) {
                break;
            }
            double d10 = dArr2[i9];
            if (d10 >= d9) {
                break;
            }
            d9 -= d10;
            i9++;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = this.mCurve[i10][i9].vel(d9 / this.mCurveLength[i9]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup(double[][] dArr) {
        int i9;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.mCurve = new HyperSpline$Cubic[this.mDimensionality][];
        for (int i10 = 0; i10 < this.mDimensionality; i10++) {
            for (int i11 = 0; i11 < this.mPoints; i11++) {
                this.mCtl[i10][i11] = dArr[i11][i10];
            }
        }
        int i12 = 0;
        while (true) {
            i9 = this.mDimensionality;
            if (i12 >= i9) {
                break;
            }
            HyperSpline$Cubic[][] hyperSpline$CubicArr = this.mCurve;
            double[] dArr2 = this.mCtl[i12];
            hyperSpline$CubicArr[i12] = calcNaturalCubic(dArr2.length, dArr2);
            i12++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        HyperSpline$Cubic[] hyperSpline$CubicArr2 = new HyperSpline$Cubic[i9];
        for (int i13 = 0; i13 < this.mCurveLength.length; i13++) {
            for (int i14 = 0; i14 < this.mDimensionality; i14++) {
                hyperSpline$CubicArr2[i14] = this.mCurve[i14][i13];
            }
            double d = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dApproxLength = approxLength(hyperSpline$CubicArr2);
            dArr3[i13] = dApproxLength;
            this.mTotalLength = d + dApproxLength;
        }
    }

    public HyperSpline() {
    }

    public void getPos(double d, double[] dArr) {
        double d9 = d * this.mTotalLength;
        int i9 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i9 >= dArr2.length - 1) {
                break;
            }
            double d10 = dArr2[i9];
            if (d10 >= d9) {
                break;
            }
            d9 -= d10;
            i9++;
        }
        for (int i10 = 0; i10 < dArr.length; i10++) {
            dArr[i10] = this.mCurve[i10][i9].eval(d9 / this.mCurveLength[i9]);
        }
    }

    public double getPos(double d, int i9) {
        double[] dArr;
        double d9 = d * this.mTotalLength;
        int i10 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (i10 >= dArr.length - 1) {
                break;
            }
            double d10 = dArr[i10];
            if (d10 >= d9) {
                break;
            }
            d9 -= d10;
            i10++;
        }
        return this.mCurve[i9][i10].eval(d9 / dArr[i10]);
    }
}
