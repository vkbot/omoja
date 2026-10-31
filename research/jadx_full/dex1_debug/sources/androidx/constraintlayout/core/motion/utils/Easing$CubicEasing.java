package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Easing$CubicEasing extends Easing {
    private static double sDError = 1.0E-4d;
    private static double sError = 0.01d;
    double mX1;
    double mX2;
    double mY1;
    double mY2;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Easing$CubicEasing(String str) {
        this.mStr = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.mX1 = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i9 = iIndexOf2 + 1;
        int iIndexOf3 = str.indexOf(44, i9);
        this.mY1 = Double.parseDouble(str.substring(i9, iIndexOf3).trim());
        int i10 = iIndexOf3 + 1;
        int iIndexOf4 = str.indexOf(44, i10);
        this.mX2 = Double.parseDouble(str.substring(i10, iIndexOf4).trim());
        int i11 = iIndexOf4 + 1;
        this.mY2 = Double.parseDouble(str.substring(i11, str.indexOf(41, i11)).trim());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double getDiffX(double d) {
        double d9 = 1.0d - d;
        double d10 = this.mX1;
        double d11 = d9 * 3.0d * d9 * d10;
        double d12 = this.mX2;
        return ((1.0d - d12) * 3.0d * d * d) + ((d12 - d10) * d9 * 6.0d * d) + d11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double getDiffY(double d) {
        double d9 = 1.0d - d;
        double d10 = this.mY1;
        double d11 = d9 * 3.0d * d9 * d10;
        double d12 = this.mY2;
        return ((1.0d - d12) * 3.0d * d * d) + ((d12 - d10) * d9 * 6.0d * d) + d11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double getX(double d) {
        double d9 = 1.0d - d;
        double d10 = 3.0d * d9;
        double d11 = d9 * d10 * d;
        double d12 = d10 * d * d;
        return (this.mX2 * d12) + (this.mX1 * d11) + (d * d * d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double getY(double d) {
        double d9 = 1.0d - d;
        double d10 = 3.0d * d9;
        double d11 = d9 * d10 * d;
        double d12 = d10 * d * d;
        return (this.mY2 * d12) + (this.mY1 * d11) + (d * d * d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d) {
        if (d <= 0.0d) {
            return 0.0d;
        }
        if (d >= 1.0d) {
            return 1.0d;
        }
        double d9 = 0.5d;
        double d10 = 0.5d;
        while (d9 > sError) {
            d9 *= 0.5d;
            d10 = getX(d10) < d ? d10 + d9 : d10 - d9;
        }
        double d11 = d10 - d9;
        double x8 = getX(d11);
        double d12 = d10 + d9;
        double x9 = getX(d12);
        double y8 = getY(d11);
        return (((d - x8) * (getY(d12) - y8)) / (x9 - x8)) + y8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d) {
        double d9 = 0.5d;
        double d10 = 0.5d;
        while (d9 > sDError) {
            d9 *= 0.5d;
            d10 = getX(d10) < d ? d10 + d9 : d10 - d9;
        }
        double d11 = d10 - d9;
        double d12 = d10 + d9;
        return (getY(d12) - getY(d11)) / (getX(d12) - getX(d11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup(double d, double d9, double d10, double d11) {
        this.mX1 = d;
        this.mY1 = d9;
        this.mX2 = d10;
        this.mY2 = d11;
    }

    public Easing$CubicEasing(double d, double d9, double d10, double d11) {
        setup(d, d9, d10, d11);
    }
}
