package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Schlick extends Easing {
    private static final boolean DEBUG = false;
    double mEps;

    /* JADX INFO: renamed from: mS */
    double f301mS;

    /* JADX INFO: renamed from: mT */
    double f302mT;

    public Schlick(String str) {
        this.mStr = str;
        int iIndexOf = str.indexOf(40);
        int iIndexOf2 = str.indexOf(44, iIndexOf);
        this.f301mS = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
        int i10 = iIndexOf2 + 1;
        this.f302mT = Double.parseDouble(str.substring(i10, str.indexOf(44, i10)).trim());
    }

    private double dfunc(double d) {
        double d10 = this.f302mT;
        double d11 = this.f301mS;
        if (d < d10) {
            return ((d11 * d10) * d10) / ((((d10 - d) * d11) + d) * (((d10 - d) * d11) + d));
        }
        double d12 = d10 - d;
        return ((d10 - 1.0d) * ((d10 - 1.0d) * d11)) / (((((d10 - d) * (-d11)) - d) + 1.0d) * (((d12 * (-d11)) - d) + 1.0d));
    }

    private double func(double d) {
        double d10 = this.f302mT;
        double d11 = this.f301mS;
        if (d < d10) {
            return (d10 * d) / (((d10 - d) * d11) + d);
        }
        return ((d - 1.0d) * (1.0d - d10)) / ((1.0d - d) - ((d10 - d) * d11));
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d) {
        return func(d);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d) {
        return dfunc(d);
    }
}
