package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class HyperSpline {
    double[][] mCtl;
    Cubic[][] mCurve;
    double[] mCurveLength;
    int mDimensionality;
    int mPoints;
    double mTotalLength;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Cubic {

        /* JADX INFO: renamed from: mA */
        double f293mA;

        /* JADX INFO: renamed from: mB */
        double f294mB;

        /* JADX INFO: renamed from: mC */
        double f295mC;

        /* JADX INFO: renamed from: mD */
        double f296mD;

        public Cubic(double d, double d10, double d11, double d12) {
            this.f293mA = d;
            this.f294mB = d10;
            this.f295mC = d11;
            this.f296mD = d12;
        }

        public double eval(double d) {
            return (((((this.f296mD * d) + this.f295mC) * d) + this.f294mB) * d) + this.f293mA;
        }

        public double vel(double d) {
            return (((this.f295mC * 2.0d) + (this.f296mD * 3.0d * d)) * d) + this.f294mB;
        }
    }

    public HyperSpline(double[][] dArr) {
        setup(dArr);
    }

    public static Cubic[] calcNaturalCubic(int i10, double[] dArr) {
        double[] dArr2 = new double[i10];
        double[] dArr3 = new double[i10];
        double[] dArr4 = new double[i10];
        int i11 = i10 - 1;
        int i12 = 0;
        dArr2[0] = 0.5d;
        int i13 = 1;
        for (int i14 = 1; i14 < i11; i14++) {
            dArr2[i14] = 1.0d / (4.0d - dArr2[i14 - 1]);
        }
        int i15 = i10 - 2;
        dArr2[i11] = 1.0d / (2.0d - dArr2[i15]);
        dArr3[0] = (dArr[1] - dArr[0]) * 3.0d * dArr2[0];
        while (i13 < i11) {
            int i16 = i13 + 1;
            int i17 = i13 - 1;
            dArr3[i13] = (((dArr[i16] - dArr[i17]) * 3.0d) - dArr3[i17]) * dArr2[i13];
            i13 = i16;
        }
        double d = (((dArr[i11] - dArr[i15]) * 3.0d) - dArr3[i15]) * dArr2[i11];
        dArr3[i11] = d;
        dArr4[i11] = d;
        while (i15 >= 0) {
            dArr4[i15] = dArr3[i15] - (dArr2[i15] * dArr4[i15 + 1]);
            i15--;
        }
        Cubic[] cubicArr = new Cubic[i11];
        while (i12 < i11) {
            double d10 = dArr[i12];
            double d11 = dArr4[i12];
            int i18 = i12 + 1;
            double d12 = dArr[i18];
            double d13 = dArr4[i18];
            cubicArr[i12] = new Cubic((float) d10, d11, (((d12 - d10) * 3.0d) - (d11 * 2.0d)) - d13, ((d10 - d12) * 2.0d) + d11 + d13);
            i12 = i18;
        }
        return cubicArr;
    }

    public double approxLength(Cubic[] cubicArr) {
        int i10;
        int length = cubicArr.length;
        double[] dArr = new double[length];
        double d = 0.0d;
        double d10 = 0.0d;
        double dSqrt = 0.0d;
        while (true) {
            i10 = 0;
            if (d10 >= 1.0d) {
                break;
            }
            double d11 = 0.0d;
            while (i10 < length) {
                double d12 = dArr[i10];
                double dEval = cubicArr[i10].eval(d10);
                dArr[i10] = dEval;
                double d13 = d12 - dEval;
                d11 += d13 * d13;
                i10++;
            }
            if (d10 > 0.0d) {
                dSqrt += Math.sqrt(d11);
            }
            d10 += 0.1d;
        }
        while (i10 < length) {
            double d14 = dArr[i10];
            double dEval2 = cubicArr[i10].eval(1.0d);
            dArr[i10] = dEval2;
            double d15 = d14 - dEval2;
            d += d15 * d15;
            i10++;
        }
        return Math.sqrt(d) + dSqrt;
    }

    public void getPos(double d, float[] fArr) {
        double d10 = d * this.mTotalLength;
        int i10 = 0;
        while (true) {
            double[] dArr = this.mCurveLength;
            if (i10 >= dArr.length - 1) {
                break;
            }
            double d11 = dArr[i10];
            if (d11 >= d10) {
                break;
            }
            d10 -= d11;
            i10++;
        }
        for (int i11 = 0; i11 < fArr.length; i11++) {
            fArr[i11] = (float) this.mCurve[i11][i10].eval(d10 / this.mCurveLength[i10]);
        }
    }

    public void getVelocity(double d, double[] dArr) {
        double d10 = d * this.mTotalLength;
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i10 >= dArr2.length - 1) {
                break;
            }
            double d11 = dArr2[i10];
            if (d11 >= d10) {
                break;
            }
            d10 -= d11;
            i10++;
        }
        for (int i11 = 0; i11 < dArr.length; i11++) {
            dArr[i11] = this.mCurve[i11][i10].vel(d10 / this.mCurveLength[i10]);
        }
    }

    public void setup(double[][] dArr) {
        int i10;
        int length = dArr[0].length;
        this.mDimensionality = length;
        int length2 = dArr.length;
        this.mPoints = length2;
        this.mCtl = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, length2);
        this.mCurve = new Cubic[this.mDimensionality][];
        for (int i11 = 0; i11 < this.mDimensionality; i11++) {
            for (int i12 = 0; i12 < this.mPoints; i12++) {
                this.mCtl[i11][i12] = dArr[i12][i11];
            }
        }
        int i13 = 0;
        while (true) {
            i10 = this.mDimensionality;
            if (i13 >= i10) {
                break;
            }
            Cubic[][] cubicArr = this.mCurve;
            double[] dArr2 = this.mCtl[i13];
            cubicArr[i13] = calcNaturalCubic(dArr2.length, dArr2);
            i13++;
        }
        this.mCurveLength = new double[this.mPoints - 1];
        this.mTotalLength = 0.0d;
        Cubic[] cubicArr2 = new Cubic[i10];
        for (int i14 = 0; i14 < this.mCurveLength.length; i14++) {
            for (int i15 = 0; i15 < this.mDimensionality; i15++) {
                cubicArr2[i15] = this.mCurve[i15][i14];
            }
            double d = this.mTotalLength;
            double[] dArr3 = this.mCurveLength;
            double dApproxLength = approxLength(cubicArr2);
            dArr3[i14] = dApproxLength;
            this.mTotalLength = d + dApproxLength;
        }
    }

    public HyperSpline() {
    }

    public void getPos(double d, double[] dArr) {
        double d10 = d * this.mTotalLength;
        int i10 = 0;
        while (true) {
            double[] dArr2 = this.mCurveLength;
            if (i10 >= dArr2.length - 1) {
                break;
            }
            double d11 = dArr2[i10];
            if (d11 >= d10) {
                break;
            }
            d10 -= d11;
            i10++;
        }
        for (int i11 = 0; i11 < dArr.length; i11++) {
            dArr[i11] = this.mCurve[i11][i10].eval(d10 / this.mCurveLength[i10]);
        }
    }

    public double getPos(double d, int i10) {
        double[] dArr;
        double d10 = d * this.mTotalLength;
        int i11 = 0;
        while (true) {
            dArr = this.mCurveLength;
            if (i11 >= dArr.length - 1) {
                break;
            }
            double d11 = dArr[i11];
            if (d11 >= d10) {
                break;
            }
            d10 -= d11;
            i11++;
        }
        return this.mCurve[i10][i11].eval(d10 / dArr[i11]);
    }
}
