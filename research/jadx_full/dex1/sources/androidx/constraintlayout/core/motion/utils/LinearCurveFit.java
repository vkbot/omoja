package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double mTotalLength;
    private double[][] mY;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr2[0].length;
        this.mSlopeTemp = new double[length];
        this.mT = dArr;
        this.mY = dArr2;
        if (length <= 2) {
            return;
        }
        int i9 = 0;
        double d = 0.0d;
        while (true) {
            double d9 = d;
            if (i9 >= dArr.length) {
                this.mTotalLength = 0.0d;
                return;
            }
            double d10 = dArr2[i9][0];
            if (i9 > 0) {
                Math.hypot(d10 - d, d10 - d9);
            }
            i9++;
            d = d10;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double getLength2D(double d) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.mT;
        int length = dArr.length;
        if (d <= dArr[0]) {
            return 0.0d;
        }
        int i9 = length - 1;
        if (d >= dArr[i9]) {
            return this.mTotalLength;
        }
        double dHypot = 0.0d;
        double d9 = 0.0d;
        double d10 = 0.0d;
        int i10 = 0;
        while (i10 < i9) {
            double[] dArr2 = this.mY[i10];
            double d11 = dArr2[0];
            double d12 = dArr2[1];
            if (i10 > 0) {
                dHypot += Math.hypot(d11 - d9, d12 - d10);
            }
            double[] dArr3 = this.mT;
            double d13 = dArr3[i10];
            if (d == d13) {
                return dHypot;
            }
            int i11 = i10 + 1;
            double d14 = dArr3[i11];
            if (d < d14) {
                double d15 = (d - d13) / (d14 - d13);
                double[][] dArr4 = this.mY;
                double[] dArr5 = dArr4[i10];
                double d16 = dArr5[0];
                double[] dArr6 = dArr4[i11];
                double d17 = dArr6[0];
                double d18 = 1.0d - d15;
                return Math.hypot(d12 - ((dArr6[1] * d15) + (dArr5[1] * d18)), d11 - ((d17 * d15) + (d16 * d18))) + dHypot;
            }
            i10 = i11;
            d9 = d11;
            d10 = d12;
        }
        return 0.0d;
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
                double d13 = (d - d12) / (d11 - d12);
                while (i9 < length2) {
                    double[][] dArr3 = this.mY;
                    fArr[i9] = (float) ((dArr3[i16][i9] * d13) + ((1.0d - d13) * dArr3[i14][i9]));
                    i9++;
                }
                return;
            }
            i14 = i16;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:4:0x000f A[PHI: r4
  0x000f: PHI (r4v5 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        double d9 = dArr2[0];
        if (d <= d9) {
            d = d9;
        } else {
            d9 = dArr2[length - 1];
            if (d >= d9) {
                d = d9;
            }
        }
        int i9 = 0;
        while (i9 < length - 1) {
            double[] dArr3 = this.mT;
            int i10 = i9 + 1;
            double d10 = dArr3[i10];
            if (d <= d10) {
                double d11 = d10 - dArr3[i9];
                for (int i11 = 0; i11 < length2; i11++) {
                    double[][] dArr4 = this.mY;
                    dArr[i11] = (dArr4[i10][i11] - dArr4[i9][i11]) / d11;
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

    /* JADX WARN: Code duplicated, block: B:4:0x000a A[PHI: r3
  0x000a: PHI (r3v4 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i9) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        double d9 = dArr[0];
        if (d < d9) {
            d = d9;
        } else {
            d9 = dArr[length - 1];
            if (d >= d9) {
                d = d9;
            }
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            int i11 = i10 + 1;
            double d10 = dArr2[i11];
            if (d <= d10) {
                double d11 = d10 - dArr2[i10];
                double[][] dArr3 = this.mY;
                return (dArr3[i11][i9] - dArr3[i10][i9]) / d11;
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
                double d13 = (d - d12) / (d11 - d12);
                while (i9 < length2) {
                    double[][] dArr4 = this.mY;
                    dArr[i9] = (dArr4[i16][i9] * d13) + ((1.0d - d13) * dArr4[i14][i9]);
                    i9++;
                }
                return;
            }
            i14 = i16;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i9) {
        double d9;
        double d10;
        double slope;
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        if (this.mExtrapolate) {
            double d11 = dArr[0];
            if (d <= d11) {
                d9 = this.mY[0][i9];
                d10 = d - d11;
                slope = getSlope(d11, i9);
            } else {
                int i11 = length - 1;
                double d12 = dArr[i11];
                if (d >= d12) {
                    d9 = this.mY[i11][i9];
                    d10 = d - d12;
                    slope = getSlope(d12, i9);
                }
            }
            return (slope * d10) + d9;
        }
        if (d <= dArr[0]) {
            return this.mY[0][i9];
        }
        int i12 = length - 1;
        if (d >= dArr[i12]) {
            return this.mY[i12][i9];
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            double d13 = dArr2[i10];
            if (d == d13) {
                return this.mY[i10][i9];
            }
            int i13 = i10 + 1;
            double d14 = dArr2[i13];
            if (d < d14) {
                double d15 = (d - d13) / (d14 - d13);
                double[][] dArr3 = this.mY;
                return (dArr3[i13][i9] * d15) + ((1.0d - d15) * dArr3[i10][i9]);
            }
            i10 = i13;
        }
        return 0.0d;
    }
}
