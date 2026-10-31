package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ArcCurveFit$Arc {
    private static final double EPSILON = 0.001d;
    private static final String TAG = "Arc";
    private static double[] sOurPercent = new double[91];
    double mArcDistance;
    double mArcVelocity;
    double mEllipseA;
    double mEllipseB;
    double mEllipseCenterX;
    double mEllipseCenterY;
    boolean mLinear;
    double[] mLut;
    double mOneOverDeltaTime;
    double mTime1;
    double mTime2;
    double mTmpCosAngle;
    double mTmpSinAngle;
    boolean mVertical;
    double mX1;
    double mX2;
    double mY1;
    double mY2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArcCurveFit$Arc(int i9, double d, double d9, double d10, double d11, double d12, double d13) {
        this.mLinear = false;
        double d14 = d12 - d10;
        double d15 = d13 - d11;
        if (i9 == 1) {
            this.mVertical = true;
        } else if (i9 == 4) {
            this.mVertical = d15 > 0.0d;
        } else if (i9 != 5) {
            this.mVertical = false;
        } else {
            this.mVertical = d15 < 0.0d;
        }
        this.mTime1 = d;
        this.mTime2 = d9;
        this.mOneOverDeltaTime = 1.0d / (d9 - d);
        if (3 == i9) {
            this.mLinear = true;
        }
        if (!this.mLinear && Math.abs(d14) >= EPSILON && Math.abs(d15) >= EPSILON) {
            this.mLut = new double[TypedValues.TYPE_TARGET];
            boolean z8 = this.mVertical;
            this.mEllipseA = d14 * ((double) (z8 ? -1 : 1));
            this.mEllipseB = d15 * ((double) (z8 ? 1 : -1));
            this.mEllipseCenterX = z8 ? d12 : d10;
            this.mEllipseCenterY = z8 ? d11 : d13;
            buildTable(d10, d11, d12, d13);
            this.mArcVelocity = this.mArcDistance * this.mOneOverDeltaTime;
            return;
        }
        this.mLinear = true;
        this.mX1 = d10;
        this.mX2 = d12;
        this.mY1 = d11;
        this.mY2 = d13;
        double dHypot = Math.hypot(d15, d14);
        this.mArcDistance = dHypot;
        this.mArcVelocity = dHypot * this.mOneOverDeltaTime;
        double d16 = this.mTime2;
        double d17 = this.mTime1;
        this.mEllipseCenterX = d14 / (d16 - d17);
        this.mEllipseCenterY = d15 / (d16 - d17);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void buildTable(double d, double d9, double d10, double d11) {
        double d12 = d10 - d;
        double d13 = d9 - d11;
        int i9 = 0;
        double dHypot = 0.0d;
        double d14 = 0.0d;
        double d15 = 0.0d;
        while (true) {
            double[] dArr = sOurPercent;
            if (i9 >= dArr.length) {
                break;
            }
            int i10 = i9;
            double radians = Math.toRadians((((double) i9) * 90.0d) / ((double) (dArr.length - 1)));
            double dSin = Math.sin(radians) * d12;
            double dCos = Math.cos(radians) * d13;
            if (i10 > 0) {
                dHypot += Math.hypot(dSin - d14, dCos - d15);
                sOurPercent[i10] = dHypot;
            }
            i9 = i10 + 1;
            d14 = dSin;
            d15 = dCos;
        }
        this.mArcDistance = dHypot;
        int i11 = 0;
        while (true) {
            double[] dArr2 = sOurPercent;
            if (i11 >= dArr2.length) {
                break;
            }
            dArr2[i11] = dArr2[i11] / dHypot;
            i11++;
        }
        int i12 = 0;
        while (true) {
            double[] dArr3 = this.mLut;
            if (i12 >= dArr3.length) {
                return;
            }
            double length = ((double) i12) / ((double) (dArr3.length - 1));
            int iBinarySearch = Arrays.binarySearch(sOurPercent, length);
            if (iBinarySearch >= 0) {
                this.mLut[i12] = ((double) iBinarySearch) / ((double) (sOurPercent.length - 1));
            } else if (iBinarySearch == -1) {
                this.mLut[i12] = 0.0d;
            } else {
                int i13 = -iBinarySearch;
                int i14 = i13 - 2;
                double[] dArr4 = sOurPercent;
                double d16 = dArr4[i14];
                this.mLut[i12] = (((length - d16) / (dArr4[i13 - 1] - d16)) + ((double) i14)) / ((double) (dArr4.length - 1));
            }
            i12++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getDX() {
        double d = this.mEllipseA * this.mTmpCosAngle;
        double dHypot = this.mArcVelocity / Math.hypot(d, (-this.mEllipseB) * this.mTmpSinAngle);
        return this.mVertical ? (-d) * dHypot : d * dHypot;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getDY() {
        double d = this.mEllipseA * this.mTmpCosAngle;
        double d9 = (-this.mEllipseB) * this.mTmpSinAngle;
        double dHypot = this.mArcVelocity / Math.hypot(d, d9);
        return this.mVertical ? (-d9) * dHypot : d9 * dHypot;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getLinearDX(double d) {
        return this.mEllipseCenterX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getLinearDY(double d) {
        return this.mEllipseCenterY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getLinearX(double d) {
        double d9 = (d - this.mTime1) * this.mOneOverDeltaTime;
        double d10 = this.mX1;
        return ((this.mX2 - d10) * d9) + d10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getLinearY(double d) {
        double d9 = (d - this.mTime1) * this.mOneOverDeltaTime;
        double d10 = this.mY1;
        return ((this.mY2 - d10) * d9) + d10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getX() {
        return (this.mEllipseA * this.mTmpSinAngle) + this.mEllipseCenterX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double getY() {
        return (this.mEllipseB * this.mTmpCosAngle) + this.mEllipseCenterY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double lookup(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        double[] dArr = this.mLut;
        double length = d * ((double) (dArr.length - 1));
        int i9 = (int) length;
        double d9 = length - ((double) i9);
        double d10 = dArr[i9];
        return ((dArr[i9 + 1] - d10) * d9) + d10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPoint(double d) {
        double dLookup = lookup((this.mVertical ? this.mTime2 - d : d - this.mTime1) * this.mOneOverDeltaTime) * 1.5707963267948966d;
        this.mTmpSinAngle = Math.sin(dLookup);
        this.mTmpCosAngle = Math.cos(dLookup);
    }
}
