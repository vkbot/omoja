package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class LinearCurveFit extends CurveFit {
    private static final String TAG = "LinearCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;

    /* JADX INFO: renamed from: mT */
    private double[] f297mT;
    private double mTotalLength;

    /* JADX INFO: renamed from: mY */
    private double[][] f298mY;

    public LinearCurveFit(double[] dArr, double[][] dArr2) {
        this.mTotalLength = Double.NaN;
        int length = dArr2[0].length;
        this.mSlopeTemp = new double[length];
        this.f297mT = dArr;
        this.f298mY = dArr2;
        if (length <= 2) {
            return;
        }
        int i10 = 0;
        double d = 0.0d;
        while (true) {
            double d10 = d;
            if (i10 >= dArr.length) {
                this.mTotalLength = 0.0d;
                return;
            }
            double d11 = dArr2[i10][0];
            if (i10 > 0) {
                Math.hypot(d11 - d, d11 - d10);
            }
            i10++;
            d = d11;
        }
    }

    private double getLength2D(double d) {
        if (Double.isNaN(this.mTotalLength)) {
            return 0.0d;
        }
        double[] dArr = this.f297mT;
        int length = dArr.length;
        if (d <= dArr[0]) {
            return 0.0d;
        }
        int i10 = length - 1;
        if (d >= dArr[i10]) {
            return this.mTotalLength;
        }
        double dHypot = 0.0d;
        double d10 = 0.0d;
        double d11 = 0.0d;
        int i11 = 0;
        while (i11 < i10) {
            double[] dArr2 = this.f298mY[i11];
            double d12 = dArr2[0];
            double d13 = dArr2[1];
            if (i11 > 0) {
                dHypot += Math.hypot(d12 - d10, d13 - d11);
            }
            double[] dArr3 = this.f297mT;
            double d14 = dArr3[i11];
            if (d == d14) {
                return dHypot;
            }
            int i12 = i11 + 1;
            double d15 = dArr3[i12];
            if (d < d15) {
                double d16 = (d - d14) / (d15 - d14);
                double[][] dArr4 = this.f298mY;
                double[] dArr5 = dArr4[i11];
                double d17 = dArr5[0];
                double[] dArr6 = dArr4[i12];
                double d18 = dArr6[0];
                double d19 = 1.0d - d16;
                return Math.hypot(d13 - ((dArr6[1] * d16) + (dArr5[1] * d19)), d12 - ((d18 * d16) + (d17 * d19))) + dHypot;
            }
            i11 = i12;
            d10 = d12;
            d11 = d13;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, float[] fArr) {
        double[] dArr = this.f297mT;
        int length = dArr.length;
        int i10 = 0;
        int length2 = this.f298mY[0].length;
        if (this.mExtrapolate) {
            double d10 = dArr[0];
            if (d <= d10) {
                getSlope(d10, this.mSlopeTemp);
                for (int i11 = 0; i11 < length2; i11++) {
                    fArr[i11] = (float) (((d - this.f297mT[0]) * this.mSlopeTemp[i11]) + this.f298mY[0][i11]);
                }
                return;
            }
            int i12 = length - 1;
            double d11 = dArr[i12];
            if (d >= d11) {
                getSlope(d11, this.mSlopeTemp);
                while (i10 < length2) {
                    fArr[i10] = (float) (((d - this.f297mT[i12]) * this.mSlopeTemp[i10]) + this.f298mY[i12][i10]);
                    i10++;
                }
                return;
            }
        } else {
            if (d <= dArr[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    fArr[i13] = (float) this.f298mY[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d >= dArr[i14]) {
                while (i10 < length2) {
                    fArr[i10] = (float) this.f298mY[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d == this.f297mT[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    fArr[i16] = (float) this.f298mY[i15][i16];
                }
            }
            double[] dArr2 = this.f297mT;
            int i17 = i15 + 1;
            double d12 = dArr2[i17];
            if (d < d12) {
                double d13 = dArr2[i15];
                double d14 = (d - d13) / (d12 - d13);
                while (i10 < length2) {
                    double[][] dArr3 = this.f298mY;
                    fArr[i10] = (float) ((dArr3[i17][i10] * d14) + ((1.0d - d14) * dArr3[i15][i10]));
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000f A[PHI: r4
  0x000f: PHI (r4v5 double) = (r4v0 double), (r4v2 double) binds: [B:3:0x000d, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d, double[] dArr) {
        double[] dArr2 = this.f297mT;
        int length = dArr2.length;
        int length2 = this.f298mY[0].length;
        double d10 = dArr2[0];
        if (d <= d10) {
            d = d10;
        } else {
            d10 = dArr2[length - 1];
            if (d >= d10) {
                d = d10;
            }
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.f297mT;
            int i11 = i10 + 1;
            double d11 = dArr3[i11];
            if (d <= d11) {
                double d12 = d11 - dArr3[i10];
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.f298mY;
                    dArr[i12] = (dArr4[i11][i12] - dArr4[i10][i12]) / d12;
                }
                return;
            }
            i10 = i11;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.f297mT;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x000a A[PHI: r3
  0x000a: PHI (r3v4 double) = (r3v0 double), (r3v2 double) binds: [B:3:0x0008, B:6:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d, int i10) {
        double[] dArr = this.f297mT;
        int length = dArr.length;
        int i11 = 0;
        double d10 = dArr[0];
        if (d < d10) {
            d = d10;
        } else {
            d10 = dArr[length - 1];
            if (d >= d10) {
                d = d10;
            }
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f297mT;
            int i12 = i11 + 1;
            double d11 = dArr2[i12];
            if (d <= d11) {
                double d12 = d11 - dArr2[i11];
                double[][] dArr3 = this.f298mY;
                return (dArr3[i12][i10] - dArr3[i11][i10]) / d12;
            }
            i11 = i12;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d, double[] dArr) {
        double[] dArr2 = this.f297mT;
        int length = dArr2.length;
        int i10 = 0;
        int length2 = this.f298mY[0].length;
        if (this.mExtrapolate) {
            double d10 = dArr2[0];
            if (d <= d10) {
                getSlope(d10, this.mSlopeTemp);
                for (int i11 = 0; i11 < length2; i11++) {
                    dArr[i11] = ((d - this.f297mT[0]) * this.mSlopeTemp[i11]) + this.f298mY[0][i11];
                }
                return;
            }
            int i12 = length - 1;
            double d11 = dArr2[i12];
            if (d >= d11) {
                getSlope(d11, this.mSlopeTemp);
                while (i10 < length2) {
                    dArr[i10] = ((d - this.f297mT[i12]) * this.mSlopeTemp[i10]) + this.f298mY[i12][i10];
                    i10++;
                }
                return;
            }
        } else {
            if (d <= dArr2[0]) {
                for (int i13 = 0; i13 < length2; i13++) {
                    dArr[i13] = this.f298mY[0][i13];
                }
                return;
            }
            int i14 = length - 1;
            if (d >= dArr2[i14]) {
                while (i10 < length2) {
                    dArr[i10] = this.f298mY[i14][i10];
                    i10++;
                }
                return;
            }
        }
        int i15 = 0;
        while (i15 < length - 1) {
            if (d == this.f297mT[i15]) {
                for (int i16 = 0; i16 < length2; i16++) {
                    dArr[i16] = this.f298mY[i15][i16];
                }
            }
            double[] dArr3 = this.f297mT;
            int i17 = i15 + 1;
            double d12 = dArr3[i17];
            if (d < d12) {
                double d13 = dArr3[i15];
                double d14 = (d - d13) / (d12 - d13);
                while (i10 < length2) {
                    double[][] dArr4 = this.f298mY;
                    dArr[i10] = (dArr4[i17][i10] * d14) + ((1.0d - d14) * dArr4[i15][i10]);
                    i10++;
                }
                return;
            }
            i15 = i17;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d, int i10) {
        double d10;
        double d11;
        double slope;
        double[] dArr = this.f297mT;
        int length = dArr.length;
        int i11 = 0;
        if (this.mExtrapolate) {
            double d12 = dArr[0];
            if (d <= d12) {
                d10 = this.f298mY[0][i10];
                d11 = d - d12;
                slope = getSlope(d12, i10);
            } else {
                int i12 = length - 1;
                double d13 = dArr[i12];
                if (d >= d13) {
                    d10 = this.f298mY[i12][i10];
                    d11 = d - d13;
                    slope = getSlope(d13, i10);
                }
            }
            return (slope * d11) + d10;
        }
        if (d <= dArr[0]) {
            return this.f298mY[0][i10];
        }
        int i13 = length - 1;
        if (d >= dArr[i13]) {
            return this.f298mY[i13][i10];
        }
        while (i11 < length - 1) {
            double[] dArr2 = this.f297mT;
            double d14 = dArr2[i11];
            if (d == d14) {
                return this.f298mY[i11][i10];
            }
            int i14 = i11 + 1;
            double d15 = dArr2[i14];
            if (d < d15) {
                double d16 = (d - d14) / (d15 - d14);
                double[][] dArr3 = this.f298mY;
                return (dArr3[i14][i10] * d16) + ((1.0d - d16) * dArr3[i11][i10]);
            }
            i11 = i14;
        }
        return 0.0d;
    }
}
