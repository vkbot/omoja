package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Easing {
    private static final String ACCELERATE = "cubic(0.4, 0.05, 0.8, 0.7)";
    private static final String ANTICIPATE = "cubic(0.36, 0, 0.66, -0.56)";
    private static final String ANTICIPATE_NAME = "anticipate";
    private static final String DECELERATE = "cubic(0.0, 0.0, 0.2, 0.95)";
    private static final String LINEAR = "cubic(1, 1, 0, 0)";
    private static final String OVERSHOOT = "cubic(0.34, 1.56, 0.64, 1)";
    private static final String OVERSHOOT_NAME = "overshoot";
    private static final String STANDARD = "cubic(0.4, 0.0, 0.2, 1)";
    String mStr = "identity";
    static Easing sDefault = new Easing();
    private static final String STANDARD_NAME = "standard";
    private static final String ACCELERATE_NAME = "accelerate";
    private static final String DECELERATE_NAME = "decelerate";
    private static final String LINEAR_NAME = "linear";
    public static String[] NAMED_EASING = {STANDARD_NAME, ACCELERATE_NAME, DECELERATE_NAME, LINEAR_NAME};

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        if (str.startsWith("spline")) {
            return new StepCurve(str);
        }
        if (str.startsWith("Schlick")) {
            return new Schlick(str);
        }
        switch (str) {
            case "accelerate":
                return new CubicEasing(ACCELERATE);
            case "decelerate":
                return new CubicEasing(DECELERATE);
            case "anticipate":
                return new CubicEasing(ANTICIPATE);
            case "linear":
                return new CubicEasing(LINEAR);
            case "overshoot":
                return new CubicEasing(OVERSHOOT);
            case "standard":
                return new CubicEasing(STANDARD);
            default:
                System.err.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return sDefault;
        }
    }

    public double getDiff(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.mStr;
    }

    public double get(double d) {
        return d;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class CubicEasing extends Easing {
        private static double sDError = 1.0E-4d;
        private static double sError = 0.01d;
        double mX1;
        double mX2;
        double mY1;
        double mY2;

        public CubicEasing(String str) {
            this.mStr = str;
            int iIndexOf = str.indexOf(40);
            int iIndexOf2 = str.indexOf(44, iIndexOf);
            this.mX1 = Double.parseDouble(str.substring(iIndexOf + 1, iIndexOf2).trim());
            int i10 = iIndexOf2 + 1;
            int iIndexOf3 = str.indexOf(44, i10);
            this.mY1 = Double.parseDouble(str.substring(i10, iIndexOf3).trim());
            int i11 = iIndexOf3 + 1;
            int iIndexOf4 = str.indexOf(44, i11);
            this.mX2 = Double.parseDouble(str.substring(i11, iIndexOf4).trim());
            int i12 = iIndexOf4 + 1;
            this.mY2 = Double.parseDouble(str.substring(i12, str.indexOf(41, i12)).trim());
        }

        private double getDiffX(double d) {
            double d10 = 1.0d - d;
            double d11 = this.mX1;
            double d12 = d10 * 3.0d * d10 * d11;
            double d13 = this.mX2;
            return ((1.0d - d13) * 3.0d * d * d) + ((d13 - d11) * d10 * 6.0d * d) + d12;
        }

        private double getDiffY(double d) {
            double d10 = 1.0d - d;
            double d11 = this.mY1;
            double d12 = d10 * 3.0d * d10 * d11;
            double d13 = this.mY2;
            return ((1.0d - d13) * 3.0d * d * d) + ((d13 - d11) * d10 * 6.0d * d) + d12;
        }

        private double getX(double d) {
            double d10 = 1.0d - d;
            double d11 = 3.0d * d10;
            double d12 = d10 * d11 * d;
            double d13 = d11 * d * d;
            return (this.mX2 * d13) + (this.mX1 * d12) + (d * d * d);
        }

        private double getY(double d) {
            double d10 = 1.0d - d;
            double d11 = 3.0d * d10;
            double d12 = d10 * d11 * d;
            double d13 = d11 * d * d;
            return (this.mY2 * d13) + (this.mY1 * d12) + (d * d * d);
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double get(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double d10 = 0.5d;
            double d11 = 0.5d;
            while (d10 > sError) {
                d10 *= 0.5d;
                d11 = getX(d11) < d ? d11 + d10 : d11 - d10;
            }
            double d12 = d11 - d10;
            double x9 = getX(d12);
            double d13 = d11 + d10;
            double x10 = getX(d13);
            double y9 = getY(d12);
            return (((d - x9) * (getY(d13) - y9)) / (x10 - x9)) + y9;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double getDiff(double d) {
            double d10 = 0.5d;
            double d11 = 0.5d;
            while (d10 > sDError) {
                d10 *= 0.5d;
                d11 = getX(d11) < d ? d11 + d10 : d11 - d10;
            }
            double d12 = d11 - d10;
            double d13 = d11 + d10;
            return (getY(d13) - getY(d12)) / (getX(d13) - getX(d12));
        }

        public void setup(double d, double d10, double d11, double d12) {
            this.mX1 = d;
            this.mY1 = d10;
            this.mX2 = d11;
            this.mY2 = d12;
        }

        public CubicEasing(double d, double d10, double d11, double d12) {
            setup(d, d10, d11, d12);
        }
    }
}
