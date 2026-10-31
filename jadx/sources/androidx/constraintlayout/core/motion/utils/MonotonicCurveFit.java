package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = "MonotonicCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;

    /* JADX INFO: renamed from: mT */
    private double[] f299mT;
    private double[][] mTangent;

    /* JADX INFO: renamed from: mY */
    private double[][] f300mY;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        int i10 = length - 1;
        Class cls = Double.TYPE;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) cls, i10, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) cls, length, length2);
        for (int i11 = 0; i11 < length2; i11++) {
            int i12 = 0;
            while (i12 < i10) {
                int i13 = i12 + 1;
                double d = dArr[i13] - dArr[i12];
                double[] dArr5 = dArr3[i12];
                double d10 = (dArr2[i13][i11] - dArr2[i12][i11]) / d;
                dArr5[i11] = d10;
                if (i12 == 0) {
                    dArr4[i12][i11] = d10;
                } else {
                    dArr4[i12][i11] = (dArr3[i12 - 1][i11] + d10) * 0.5d;
                }
                i12 = i13;
            }
            dArr4[i10][i11] = dArr3[length - 2][i11];
        }
        for (int i14 = 0; i14 < i10; i14++) {
            for (int i15 = 0; i15 < length2; i15++) {
                double d11 = dArr3[i14][i15];
                if (d11 == 0.0d) {
                    dArr4[i14][i15] = 0.0d;
                    dArr4[i14 + 1][i15] = 0.0d;
                } else {
                    double d12 = dArr4[i14][i15] / d11;
                    int i16 = i14 + 1;
                    double d13 = dArr4[i16][i15] / d11;
                    double dHypot = Math.hypot(d12, d13);
                    if (dHypot > 9.0d) {
                        double d14 = 3.0d / dHypot;
                        double[] dArr6 = dArr4[i14];
                        double[] dArr7 = dArr3[i14];
                        dArr6[i15] = d12 * d14 * dArr7[i15];
                        dArr4[i16][i15] = d14 * d13 * dArr7[i15];
                    }
                }
            }
        }
        this.f299mT = dArr;
        this.f300mY = dArr2;
        this.mTangent = dArr4;
    }

    private static MonotonicCurveFit buildWave(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d = 1.0d / ((double) length2);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 1);
        double[] dArr3 = new double[length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            double d10 = dArr[i10];
            int i11 = i10 + length2;
            dArr2[i11][0] = d10;
            double d11 = ((double) i10) * d;
            dArr3[i11] = d11;
            if (i10 > 0) {
                int i12 = (length2 * 2) + i10;
                dArr2[i12][0] = d10 + 1.0d;
                dArr3[i12] = d11 + 1.0d;
                int i13 = i10 - 1;
                dArr2[i13][0] = (d10 - 1.0d) - d;
                dArr3[i13] = (d11 - 1.0d) - d;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
    }

    private static double diff(double d, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d10 * d10;
        double d16 = d10 * 6.0d;
        double d17 = 6.0d * d15 * d11;
        double d18 = (d17 + ((d16 * d12) + (((-6.0d) * d15) * d12))) - (d16 * d11);
        double d19 = 3.0d * d;
        return (d * d13) + (((((d19 * d13) * d15) + (((d19 * d14) * d15) + d18)) - (((2.0d * d) * d14) * d10)) - (((4.0d * d) * d13) * d10));
    }

    private static double interpolate(double d, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d10 * d10;
        double d16 = d15 * d10;
        double d17 = 3.0d * d15;
        double d18 = d16 * 2.0d * d11;
        double d19 = ((d18 + ((d17 * d12) + (((-2.0d) * d16) * d12))) - (d17 * d11)) + d11;
        double d20 = d * d14;
        double d21 = (d20 * d16) + d19;
        double d22 = d * d13;
        return (d22 * d10) + ((((d16 * d22) + d21) - (d20 * d15)) - (((d * 2.0d) * d13) * d15));
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.f299mT;
        int length = dArr.length;
        int i10 = 0;
        int length2 = this.f300mY[0].length;
        if (this.mExtrapolate) {
            double d10 = dArr[0];
            if (d <= d10) {
                getSlope(d10, this.mSlopeTemp);
                for (int i11 = 0; i11 < length2; i11++) {
                    fArr[i11] = (float) (((d - this.f299mT[0]) * this.mSlopeTemp[i11]) + this.f300mY[0][i11]);
                }
                return;
            }
            int i12 = length - 1;
            double d11 = dArr[i12];
            if (d >= d11) {
                getSlope(d11, this.mSlopeTemp);
                while (i10 < length2) {
                    fArr[i10] = (float) (((d - this.f299mT[i12]) * this.mSlopeTemp[i10]) + this.f300mY[i12][i10]);
                    i10++;
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    fArr[i13] = (float) this.f300mY[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d >= dArr[i14]) {
                while (i10 < length2) {
                    fArr[i10] = (float) this.f300mY[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d == this.f299mT[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    fArr[i16] = (float) this.f300mY[i15][i16];
                }
            }
            double[] dArr2 = this.f299mT;
            int i17 = i15 + 1;
            double d12 = dArr2[i17];
            if (d < d12) {
                double d13 = dArr2[i15];
                double d14 = d12 - d13;
                double d15 = (d - d13) / d14;
                while (i10 < length2) {
                    double[][] dArr3 = this.f300mY;
                    double d16 = dArr3[i15][i10];
                    double d17 = dArr3[i17][i10];
                    double[][] dArr4 = this.mTangent;
                    fArr[i10] = (float) interpolate(d14, d15, d16, d17, dArr4[i15][i10], dArr4[i17][i10]);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        double[] dArr2 = this.f299mT;
        int length = dArr2.length;
        int length2 = this.f300mY[0].length;
        double d10 = dArr2[0];
        if (d > d10) {
            d10 = dArr2[length - 1];
            if (d < d10) {
                d10 = d;
            }
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.f299mT;
            int i11 = i10 + 1;
            double d11 = dArr3[i11];
            if (d10 <= d11) {
                double d12 = dArr3[i10];
                double d13 = d11 - d12;
                double d14 = (d10 - d12) / d13;
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.f300mY;
                    double d15 = dArr4[i10][i12];
                    double d16 = dArr4[i11][i12];
                    double[][] dArr5 = this.mTangent;
                    dArr[i12] = diff(d13, d14, d15, d16, dArr5[i10][i12], dArr5[i11][i12]) / d13;
                }
                return;
            }
            i10 = i11;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f299mT;
    }

    public static MonotonicCurveFit buildWave(String str) {
        double[] dArr = new double[str.length() / 2];
        int iIndexOf = str.indexOf(40) + 1;
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        int i10 = 0;
        while (iIndexOf2 != -1) {
            dArr[i10] = Double.parseDouble(str.substring(iIndexOf, iIndexOf2).trim());
            iIndexOf = iIndexOf2 + 1;
            iIndexOf2 = str.indexOf(44, iIndexOf);
            i10++;
        }
        dArr[i10] = Double.parseDouble(str.substring(iIndexOf, str.indexOf(41, iIndexOf)).trim());
        return buildWave(Arrays.copyOf(dArr, i10 + 1));
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i10) {
        double[] dArr = this.f299mT;
        int length = dArr.length;
        int i11 = 0;
        double d10 = dArr[0];
        if (d >= d10) {
            d10 = dArr[length - 1];
            if (d < d10) {
                d10 = d;
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f299mT;
            int i12 = i11 + 1;
            double d11 = dArr2[i12];
            if (d10 <= d11) {
                double d12 = dArr2[i11];
                double d13 = d11 - d12;
                double[][] dArr3 = this.f300mY;
                double d14 = dArr3[i11][i10];
                double d15 = dArr3[i12][i10];
                double[][] dArr4 = this.mTangent;
                return diff(d13, (d10 - d12) / d13, d14, d15, dArr4[i11][i10], dArr4[i12][i10]) / d13;
            }
            i11 = i12;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.f299mT;
        int length = dArr2.length;
        int i10 = 0;
        int length2 = this.f300mY[0].length;
        if (this.mExtrapolate) {
            double d10 = dArr2[0];
            if (d <= d10) {
                getSlope(d10, this.mSlopeTemp);
                for (int i11 = 0; i11 < length2; i11++) {
                    dArr[i11] = ((d - this.f299mT[0]) * this.mSlopeTemp[i11]) + this.f300mY[0][i11];
                }
                return;
            }
            int i12 = length - 1;
            double d11 = dArr2[i12];
            if (d >= d11) {
                getSlope(d11, this.mSlopeTemp);
                while (i10 < length2) {
                    dArr[i10] = ((d - this.f299mT[i12]) * this.mSlopeTemp[i10]) + this.f300mY[i12][i10];
                    i10++;
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    dArr[i13] = this.f300mY[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d >= dArr2[i14]) {
                while (i10 < length2) {
                    dArr[i10] = this.f300mY[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d == this.f299mT[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    dArr[i16] = this.f300mY[i15][i16];
                }
            }
            double[] dArr3 = this.f299mT;
            int i17 = i15 + 1;
            double d12 = dArr3[i17];
            if (d < d12) {
                double d13 = dArr3[i15];
                double d14 = d12 - d13;
                double d15 = (d - d13) / d14;
                while (i10 < length2) {
                    double[][] dArr4 = this.f300mY;
                    double d16 = dArr4[i15][i10];
                    double d17 = dArr4[i17][i10];
                    double[][] dArr5 = this.mTangent;
                    dArr[i10] = interpolate(d14, d15, d16, d17, dArr5[i15][i10], dArr5[i17][i10]);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i10) {
        double[] dArr = this.f299mT;
        int length = dArr.length;
        int i11 = 0;
        if (this.mExtrapolate) {
            double d10 = dArr[0];
            if (d <= d10) {
                return (getSlope(d10, i10) * (d - d10)) + this.f300mY[0][i10];
            }
            int i12 = length - 1;
            double d11 = dArr[i12];
            if (d >= d11) {
                return (getSlope(d11, i10) * (d - d11)) + this.f300mY[i12][i10];
            }
        } else {
            if (d <= dArr[0]) {
                return this.f300mY[0][i10];
            }
            int i13 = length - 1;
            if (d >= dArr[i13]) {
                return this.f300mY[i13][i10];
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f299mT;
            double d12 = dArr2[i11];
            if (d == d12) {
                return this.f300mY[i11][i10];
            }
            int i14 = i11 + 1;
            double d13 = dArr2[i14];
            if (d < d13) {
                double d14 = d13 - d12;
                double d15 = (d - d12) / d14;
                double[][] dArr3 = this.f300mY;
                double d16 = dArr3[i11][i10];
                double d17 = dArr3[i14][i10];
                double[][] dArr4 = this.mTangent;
                return interpolate(d14, d15, d16, d17, dArr4[i11][i10], dArr4[i14][i10]);
            }
            i11 = i14;
        }
        return 0.0d;
    }
}
