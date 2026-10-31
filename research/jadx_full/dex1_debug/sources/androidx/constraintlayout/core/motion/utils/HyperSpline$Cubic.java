package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class HyperSpline$Cubic {
    double mA;
    double mB;
    double mC;
    double mD;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public HyperSpline$Cubic(double d, double d9, double d10, double d11) {
        this.mA = d;
        this.mB = d9;
        this.mC = d10;
        this.mD = d11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double eval(double d) {
        return (((((this.mD * d) + this.mC) * d) + this.mB) * d) + this.mA;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double vel(double d) {
        return (((this.mC * 2.0d) + (this.mD * 3.0d * d)) * d) + this.mB;
    }
}
