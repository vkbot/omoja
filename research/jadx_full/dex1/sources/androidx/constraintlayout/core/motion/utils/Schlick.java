package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Schlick extends Easing {
    private static final boolean DEBUG = false;
    double mEps;
    double mS;
    double mT;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Schlick(String str) {
        this.mStr = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.mS = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i9 = iIndexOf2 + 1;
        this.mT = Double.parseDouble(str.substring(i9, str.indexOf(44, i9)).trim());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double dfunc(double d) {
        double d9 = this.mT;
        double d10 = this.mS;
        if (d < d9) {
            return ((d10 * d9) * d9) / ((((d9 - d) * d10) + d) * (((d9 - d) * d10) + d));
        }
        double d11 = d9 - d;
        return ((d9 - 1.0d) * ((d9 - 1.0d) * d10)) / (((((d9 - d) * (-d10)) - d) + 1.0d) * (((d11 * (-d10)) - d) + 1.0d));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private double func(double d) {
        double d9 = this.mT;
        double d10 = this.mS;
        if (d < d9) {
            return (d9 * d) / (((d9 - d) * d10) + d);
        }
        return ((d - 1.0d) * (1.0d - d9)) / ((1.0d - d) - ((d9 - d) * d10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d) {
        return func(d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d) {
        return dfunc(d);
    }
}
