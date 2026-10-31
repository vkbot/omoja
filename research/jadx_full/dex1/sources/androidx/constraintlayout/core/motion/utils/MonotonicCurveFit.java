package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = "MonotonicCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double[][] mTangent;
    private double[][] mY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        int i9 = length - 1;
        Class cls = Double.TYPE;
        double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) cls, i9, length2);
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) cls, length, length2);
        for (int i10 = 0; i10 < length2; i10++) {
            int i11 = 0;
            while (i11 < i9) {
                int i12 = i11 + 1;
                double d = dArr[i12] - dArr[i11];
                double[] dArr5 = dArr3[i11];
                double d9 = (dArr2[i12][i10] - dArr2[i11][i10]) / d;
                dArr5[i10] = d9;
                if (i11 == 0) {
                    dArr4[i11][i10] = d9;
                } else {
                    dArr4[i11][i10] = (dArr3[i11 - 1][i10] + d9) * 0.5d;
                }
                i11 = i12;
            }
            dArr4[i9][i10] = dArr3[length - 2][i10];
        }
        for (int i13 = 0; i13 < i9; i13++) {
            for (int i14 = 0; i14 < length2; i14++) {
                double d10 = dArr3[i13][i14];
                if (d10 == 0.0d) {
                    dArr4[i13][i14] = 0.0d;
                    dArr4[i13 + 1][i14] = 0.0d;
                } else {
                    double d11 = dArr4[i13][i14] / d10;
                    int i15 = i13 + 1;
                    double d12 = dArr4[i15][i14] / d10;
                    double dHypot = Math.hypot(d11, d12);
                    if (dHypot > 9.0d) {
                        double d13 = 3.0d / dHypot;
                        double[] dArr6 = dArr4[i13];
                        double[] dArr7 = dArr3[i13];
                        dArr6[i14] = d11 * d13 * dArr7[i14];
                        dArr4[i15][i14] = d13 * d12 * dArr7[i14];
                    }
                }
            }
        }
        this.mT = dArr;
        this.mY = dArr2;
        this.mTangent = dArr4;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static MonotonicCurveFit buildWave(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d = 1.0d / ((double) length2);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, length, 1);
        double[] dArr3 = new double[length];
        for (int i9 = 0; i9 < dArr.length; i9++) {
            double d9 = dArr[i9];
            int i10 = i9 + length2;
            dArr2[i10][0] = d9;
            double d10 = ((double) i9) * d;
            dArr3[i10] = d10;
            if (i9 > 0) {
                int i11 = (length2 * 2) + i9;
                dArr2[i11][0] = d9 + 1.0d;
                dArr3[i11] = d10 + 1.0d;
                int i12 = i9 - 1;
                dArr2[i12][0] = (d9 - 1.0d) - d;
                dArr3[i12] = (d10 - 1.0d) - d;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static double diff(double d, double d9, double d10, double d11, double d12, double d13) {
        double d14 = d9 * d9;
        double d15 = d9 * 6.0d;
        double d16 = 6.0d * d14 * d10;
        double d17 = (d16 + ((d15 * d11) + (((-6.0d) * d14) * d11))) - (d15 * d10);
        double d18 = 3.0d * d;
        return (d * d12) + (((((d18 * d12) * d14) + (((d18 * d13) * d14) + d17)) - (((2.0d * d) * d13) * d9)) - (((4.0d * d) * d12) * d9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static double interpolate(double d, double d9, double d10, double d11, double d12, double d13) {
        double d14 = d9 * d9;
        double d15 = d14 * d9;
        double d16 = 3.0d * d14;
        double d17 = d15 * 2.0d * d10;
        double d18 = ((d17 + ((d16 * d11) + (((-2.0d) * d15) * d11))) - (d16 * d10)) + d10;
        double d19 = d * d13;
        double d20 = (d19 * d15) + d18;
        double d21 = d * d12;
        return (d21 * d9) + ((((d15 * d21) + d20) - (d19 * d14)) - (((d * 2.0d) * d12) * d14));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i9 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d9 = dArr[0];
            if (d <= d9) {
                getSlope(d9, this.mSlopeTemp);
                for (int i10 = 0; i10 < length2; i10++) {
                    fArr[i10] = (float) (((d - this.mT[0]) * this.mSlopeTemp[i10]) + this.mY[0][i10]);
                }
                return;
            }
            int i11 = length - 1;
            double d10 = dArr[i11];
            if (d >= d10) {
                getSlope(d10, this.mSlopeTemp);
                while (i9 < length2) {
                    fArr[i9] = (float) (((d - this.mT[i11]) * this.mSlopeTemp[i9]) + this.mY[i11][i9]);
                    i9++;
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i12 = 0; i12 < length2; i12++) {
                    fArr[i12] = (float) this.mY[0][i12];
                }
                return;
            }
            int i13 = length - 1;
            if (d >= dArr[i13]) {
                while (i9 < length2) {
                    fArr[i9] = (float) this.mY[i13][i9];
                    i9++;
                }
                return;
            }
        }
        int i14 = 0;
        while (i14 < length - 1) {
            if (d == this.mT[i14]) {
                for (int i15 = 0; i15 < length2; i15++) {
                    fArr[i15] = (float) this.mY[i14][i15];
                }
            }
            double[] dArr2 = this.mT;
            int i16 = i14 + 1;
            double d11 = dArr2[i16];
            if (d < d11) {
                double d12 = dArr2[i14];
                double d13 = d11 - d12;
                double d14 = (d - d12) / d13;
                while (i9 < length2) {
                    double[][] dArr3 = this.mY;
                    double d15 = dArr3[i14][i9];
                    double d16 = dArr3[i16][i9];
                    double[][] dArr4 = this.mTangent;
                    fArr[i9] = (float) interpolate(d13, d14, d15, d16, dArr4[i14][i9], dArr4[i16][i9]);
                    i9++;
                }
                return;
            }
            i14 = i16;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        double d9 = dArr2[0];
        if (d > d9) {
            d9 = dArr2[length - 1];
            if (d < d9) {
                d9 = d;
            }
        }
        int i9 = 0;
        while (i9 < length - 1) {
            double[] dArr3 = this.mT;
            int i10 = i9 + 1;
            double d10 = dArr3[i10];
            if (d9 <= d10) {
                double d11 = dArr3[i9];
                double d12 = d10 - d11;
                double d13 = (d9 - d11) / d12;
                for (int i11 = 0; i11 < length2; i11++) {
                    double[][] dArr4 = this.mY;
                    double d14 = dArr4[i9][i11];
                    double d15 = dArr4[i10][i11];
                    double[][] dArr5 = this.mTangent;
                    dArr[i11] = diff(d12, d13, d14, d15, dArr5[i9][i11], dArr5[i10][i11]) / d12;
                }
                return;
            }
            i9 = i10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }

    public static MonotonicCurveFit buildWave(String str) {
        double[] dArr = new double[str.length() / 2];
        int iIndexOf = str.indexOf(40) + 1;
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        int i9 = 0;
        while (iIndexOf2 != -1) {
            dArr[i9] = Double.parseDouble(str.substring(iIndexOf, iIndexOf2).trim());
            iIndexOf = iIndexOf2 + 1;
            iIndexOf2 = str.indexOf(44, iIndexOf);
            i9++;
        }
        dArr[i9] = Double.parseDouble(str.substring(iIndexOf, str.indexOf(41, iIndexOf)).trim());
        return buildWave(Arrays.copyOf(dArr, i9 + 1));
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i9) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        double d9 = dArr[0];
        if (d >= d9) {
            d9 = dArr[length - 1];
            if (d < d9) {
                d9 = d;
            }
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            int i11 = i10 + 1;
            double d10 = dArr2[i11];
            if (d9 <= d10) {
                double d11 = dArr2[i10];
                double d12 = d10 - d11;
                double[][] dArr3 = this.mY;
                double d13 = dArr3[i10][i9];
                double d14 = dArr3[i11][i9];
                double[][] dArr4 = this.mTangent;
                return diff(d12, (d9 - d11) / d12, d13, d14, dArr4[i10][i9], dArr4[i11][i9]) / d12;
            }
            i10 = i11;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int i9 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            double d9 = dArr2[0];
            if (d <= d9) {
                getSlope(d9, this.mSlopeTemp);
                for (int i10 = 0; i10 < length2; i10++) {
                    dArr[i10] = ((d - this.mT[0]) * this.mSlopeTemp[i10]) + this.mY[0][i10];
                }
                return;
            }
            int i11 = length - 1;
            double d10 = dArr2[i11];
            if (d >= d10) {
                getSlope(d10, this.mSlopeTemp);
                while (i9 < length2) {
                    dArr[i9] = ((d - this.mT[i11]) * this.mSlopeTemp[i9]) + this.mY[i11][i9];
                    i9++;
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i12 = 0; i12 < length2; i12++) {
                    dArr[i12] = this.mY[0][i12];
                }
                return;
            }
            int i13 = length - 1;
            if (d >= dArr2[i13]) {
                while (i9 < length2) {
                    dArr[i9] = this.mY[i13][i9];
                    i9++;
                }
                return;
            }
        }
        int i14 = 0;
        while (i14 < length - 1) {
            if (d == this.mT[i14]) {
                for (int i15 = 0; i15 < length2; i15++) {
                    dArr[i15] = this.mY[i14][i15];
                }
            }
            double[] dArr3 = this.mT;
            int i16 = i14 + 1;
            double d11 = dArr3[i16];
            if (d < d11) {
                double d12 = dArr3[i14];
                double d13 = d11 - d12;
                double d14 = (d - d12) / d13;
                while (i9 < length2) {
                    double[][] dArr4 = this.mY;
                    double d15 = dArr4[i14][i9];
                    double d16 = dArr4[i16][i9];
                    double[][] dArr5 = this.mTangent;
                    dArr[i9] = interpolate(d13, d14, d15, d16, dArr5[i14][i9], dArr5[i16][i9]);
                    i9++;
                }
                return;
            }
            i14 = i16;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i9) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        if (this.mExtrapolate) {
            double d9 = dArr[0];
            if (d <= d9) {
                return (getSlope(d9, i9) * (d - d9)) + this.mY[0][i9];
            }
            int i11 = length - 1;
            double d10 = dArr[i11];
            if (d >= d10) {
                return (getSlope(d10, i9) * (d - d10)) + this.mY[i11][i9];
            }
        } else {
            if (d <= dArr[0]) {
                return this.mY[0][i9];
            }
            int i12 = length - 1;
            if (d >= dArr[i12]) {
                return this.mY[i12][i9];
            }
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            double d11 = dArr2[i10];
            if (d == d11) {
                return this.mY[i10][i9];
            }
            int i13 = i10 + 1;
            double d12 = dArr2[i13];
            if (d < d12) {
                double d13 = d12 - d11;
                double d14 = (d - d11) / d13;
                double[][] dArr3 = this.mY;
                double d15 = dArr3[i10][i9];
                double d16 = dArr3[i13][i9];
                double[][] dArr4 = this.mTangent;
                return interpolate(d13, d14, d15, d16, dArr4[i10][i9], dArr4[i13][i9]);
            }
            i10 = i13;
        }
        return 0.0d;
    }
}
