package androidx.dynamicanimation.animation;

import androidx.annotation.FloatRange;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class SpringForce implements Force {
    public static final float DAMPING_RATIO_HIGH_BOUNCY = 0.2f;
    public static final float DAMPING_RATIO_LOW_BOUNCY = 0.75f;
    public static final float DAMPING_RATIO_MEDIUM_BOUNCY = 0.5f;
    public static final float DAMPING_RATIO_NO_BOUNCY = 1.0f;
    public static final float STIFFNESS_HIGH = 10000.0f;
    public static final float STIFFNESS_LOW = 200.0f;
    public static final float STIFFNESS_MEDIUM = 1500.0f;
    public static final float STIFFNESS_VERY_LOW = 50.0f;
    private static final double UNSET = Double.MAX_VALUE;
    private static final double VELOCITY_THRESHOLD_MULTIPLIER = 62.5d;
    private double mDampedFreq;
    double mDampingRatio;
    private double mFinalPosition;
    private double mGammaMinus;
    private double mGammaPlus;
    private boolean mInitialized;
    private final DynamicAnimation$MassState mMassState;
    double mNaturalFreq;
    private double mValueThreshold;
    private double mVelocityThreshold;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringForce(float f8) {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = Double.MAX_VALUE;
        this.mMassState = new DynamicAnimation$MassState();
        this.mFinalPosition = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void init() {
        if (this.mInitialized) {
            return;
        }
        if (this.mFinalPosition == Double.MAX_VALUE) {
            i.l("Error: Final position of the spring must be set before the animation starts");
            return;
        }
        double d = this.mDampingRatio;
        if (d > 1.0d) {
            double d9 = this.mNaturalFreq;
            this.mGammaPlus = (Math.sqrt((d * d) - 1.0d) * d9) + ((-d) * d9);
            double d10 = this.mDampingRatio;
            double d11 = this.mNaturalFreq;
            this.mGammaMinus = ((-d10) * d11) - (Math.sqrt((d10 * d10) - 1.0d) * d11);
        } else if (d >= 0.0d && d < 1.0d) {
            this.mDampedFreq = Math.sqrt(1.0d - (d * d)) * this.mNaturalFreq;
        }
        this.mInitialized = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public float getAcceleration(float f8, float f9) {
        float finalPosition = f8 - getFinalPosition();
        double d = this.mNaturalFreq;
        return (float) (((-(d * d)) * ((double) finalPosition)) - (((d * 2.0d) * this.mDampingRatio) * ((double) f9)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getDampingRatio() {
        return (float) this.mDampingRatio;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFinalPosition() {
        return (float) this.mFinalPosition;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getStiffness() {
        double d = this.mNaturalFreq;
        return (float) (d * d);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.dynamicanimation.animation.Force
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public boolean isAtEquilibrium(float f8, float f9) {
        return ((double) Math.abs(f9)) < this.mVelocityThreshold && ((double) Math.abs(f8 - getFinalPosition())) < this.mValueThreshold;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringForce setDampingRatio(@FloatRange(from = 0.0d) float f8) {
        if (f8 < 0.0f) {
            i.k("Damping ratio must be non-negative");
            return null;
        }
        this.mDampingRatio = f8;
        this.mInitialized = false;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringForce setFinalPosition(float f8) {
        this.mFinalPosition = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SpringForce setStiffness(@FloatRange(from = 0.0d, fromInclusive = false) float f8) {
        if (f8 <= 0.0f) {
            i.k("Spring stiffness constant must be positive.");
            return null;
        }
        this.mNaturalFreq = Math.sqrt(f8);
        this.mInitialized = false;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setValueThreshold(double d) {
        double dAbs = Math.abs(d);
        this.mValueThreshold = dAbs;
        this.mVelocityThreshold = dAbs * VELOCITY_THRESHOLD_MULTIPLIER;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DynamicAnimation$MassState updateValues(double d, double d9, long j9) {
        double dSin;
        double dCos;
        init();
        double d10 = j9 / 1000.0d;
        double d11 = d - this.mFinalPosition;
        double d12 = this.mDampingRatio;
        if (d12 > 1.0d) {
            double d13 = this.mGammaMinus;
            double d14 = this.mGammaPlus;
            double d15 = d11 - (((d13 * d11) - d9) / (d13 - d14));
            double d16 = ((d11 * d13) - d9) / (d13 - d14);
            dSin = (Math.pow(2.718281828459045d, this.mGammaPlus * d10) * d16) + (Math.pow(2.718281828459045d, d13 * d10) * d15);
            double d17 = this.mGammaMinus;
            double dPow = Math.pow(2.718281828459045d, d17 * d10) * d15 * d17;
            double d18 = this.mGammaPlus;
            dCos = (Math.pow(2.718281828459045d, d18 * d10) * d16 * d18) + dPow;
        } else if (d12 == 1.0d) {
            double d19 = this.mNaturalFreq;
            double d20 = (d19 * d11) + d9;
            double d21 = (d20 * d10) + d11;
            double dPow2 = Math.pow(2.718281828459045d, (-d19) * d10) * d21;
            double dPow3 = Math.pow(2.718281828459045d, (-this.mNaturalFreq) * d10) * d21;
            double d22 = this.mNaturalFreq;
            dCos = (Math.pow(2.718281828459045d, (-d22) * d10) * d20) + (dPow3 * (-d22));
            dSin = dPow2;
        } else {
            double d23 = 1.0d / this.mDampedFreq;
            double d24 = this.mNaturalFreq;
            double d25 = ((d12 * d24 * d11) + d9) * d23;
            dSin = ((Math.sin(this.mDampedFreq * d10) * d25) + (Math.cos(this.mDampedFreq * d10) * d11)) * Math.pow(2.718281828459045d, (-d12) * d24 * d10);
            double d26 = this.mNaturalFreq;
            double d27 = this.mDampingRatio;
            double d28 = (-d26) * dSin * d27;
            double dPow4 = Math.pow(2.718281828459045d, (-d27) * d26 * d10);
            double d29 = this.mDampedFreq;
            double dSin2 = Math.sin(d29 * d10) * (-d29) * d11;
            double d30 = this.mDampedFreq;
            dCos = (((Math.cos(d30 * d10) * d25 * d30) + dSin2) * dPow4) + d28;
        }
        DynamicAnimation$MassState dynamicAnimation$MassState = this.mMassState;
        dynamicAnimation$MassState.mValue = (float) (dSin + this.mFinalPosition);
        dynamicAnimation$MassState.mVelocity = (float) dCos;
        return dynamicAnimation$MassState;
    }

    public SpringForce() {
        this.mNaturalFreq = Math.sqrt(1500.0d);
        this.mDampingRatio = 0.5d;
        this.mInitialized = false;
        this.mFinalPosition = Double.MAX_VALUE;
        this.mMassState = new DynamicAnimation$MassState();
    }
}
