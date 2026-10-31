package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double mPI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addPoint(double d, float f8) {
        int length = this.mPeriod.length + 1;
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, iBinarySearch, dArr, iBinarySearch + 1, (length - iBinarySearch) - 1);
        this.mPosition[iBinarySearch] = d;
        this.mPeriod[iBinarySearch] = f8;
        this.mNormalized = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getDP(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        float[] fArr = this.mPeriod;
        float f8 = fArr[iBinarySearch];
        int i9 = iBinarySearch - 1;
        float f9 = fArr[i9];
        double d9 = f8 - f9;
        double[] dArr = this.mPosition;
        double d10 = dArr[iBinarySearch];
        double d11 = dArr[i9];
        double d12 = d9 / (d10 - d11);
        return (((double) f9) - (d12 * d11)) + (d * d12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getP(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        int iBinarySearch = Arrays.binarySearch(this.mPosition, d);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        float[] fArr = this.mPeriod;
        float f8 = fArr[iBinarySearch];
        int i9 = iBinarySearch - 1;
        float f9 = fArr[i9];
        double d9 = f8 - f9;
        double[] dArr = this.mPosition;
        double d10 = dArr[iBinarySearch];
        double d11 = dArr[i9];
        double d12 = d9 / (d10 - d11);
        return ((((d * d) - (d11 * d11)) * d12) / 2.0d) + ((d - d11) * (((double) f9) - (d12 * d11))) + this.mArea[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getSlope(double d, double d9, double d10) {
        double d11;
        double dSignum;
        double p9 = getP(d) + d9;
        double dp = getDP(d) + d10;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                d11 = dp * 4.0d;
                dSignum = Math.signum((((p9 * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return dp * 2.0d;
            case 4:
                return (-dp) * 2.0d;
            case 5:
                double d12 = this.mPI2;
                return Math.sin(d12 * p9) * (-d12) * dp;
            case 6:
                return ((((p9 * 4.0d) + 2.0d) % 4.0d) - 2.0d) * dp * 4.0d;
            case 7:
                return this.mCustomCurve.getSlope(p9 % 1.0d, 0);
            default:
                double d13 = this.mPI2;
                d11 = dp * d13;
                dSignum = Math.cos(d13 * p9);
                break;
        }
        return dSignum * d11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getValue(double d, double d9) {
        double dAbs;
        double p9 = getP(d) + d9;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (p9 % 1.0d));
            case 2:
                dAbs = Math.abs((((p9 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((p9 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                dAbs = ((p9 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos((d9 + p9) * this.mPI2);
            case 6:
                double dAbs2 = 1.0d - Math.abs(((p9 * 4.0d) % 4.0d) - 2.0d);
                dAbs = dAbs2 * dAbs2;
                break;
            case 7:
                return this.mCustomCurve.getPos(p9 % 1.0d, 0);
            default:
                return Math.sin(this.mPI2 * p9);
        }
        return 1.0d - dAbs;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void normalize() {
        double d = 0.0d;
        int i9 = 0;
        while (true) {
            float[] fArr = this.mPeriod;
            if (i9 >= fArr.length) {
                break;
            }
            d += (double) fArr[i9];
            i9++;
        }
        double d9 = 0.0d;
        int i10 = 1;
        while (true) {
            float[] fArr2 = this.mPeriod;
            if (i10 >= fArr2.length) {
                break;
            }
            int i11 = i10 - 1;
            float f8 = (fArr2[i11] + fArr2[i10]) / 2.0f;
            double[] dArr = this.mPosition;
            d9 += (dArr[i10] - dArr[i11]) * ((double) f8);
            i10++;
        }
        int i12 = 0;
        while (true) {
            float[] fArr3 = this.mPeriod;
            if (i12 >= fArr3.length) {
                break;
            }
            fArr3[i12] = fArr3[i12] * ((float) (d / d9));
            i12++;
        }
        this.mArea[0] = 0.0d;
        int i13 = 1;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i13 >= fArr4.length) {
                this.mNormalized = true;
                return;
            }
            int i14 = i13 - 1;
            float f9 = (fArr4[i14] + fArr4[i13]) / 2.0f;
            double[] dArr2 = this.mPosition;
            double d10 = dArr2[i13] - dArr2[i14];
            double[] dArr3 = this.mArea;
            dArr3[i13] = (d10 * ((double) f9)) + dArr3[i14];
            i13++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(int i9, String str) {
        this.mType = i9;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.buildWave(str);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }
}
