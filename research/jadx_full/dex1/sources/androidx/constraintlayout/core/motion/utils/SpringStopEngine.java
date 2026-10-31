package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SpringStopEngine implements StopEngine {
    private static final double UNSET = Double.MAX_VALUE;
    private float mLastTime;
    private double mLastVelocity;
    private float mMass;
    private float mPos;
    private double mStiffness;
    private float mStopThreshold;
    private double mTargetPos;
    private float mV;
    double mDamping = 0.5d;
    private boolean mInitialized = false;
    private int mBoundaryMode = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void compute(double d) {
        if (d <= 0.0d) {
            return;
        }
        double d9 = this.mStiffness;
        double d10 = this.mDamping;
        int iSqrt = (int) ((9.0d / ((Math.sqrt(d9 / ((double) this.mMass)) * d) * 4.0d)) + 1.0d);
        double d11 = d / ((double) iSqrt);
        int i9 = 0;
        while (i9 < iSqrt) {
            float f8 = this.mPos;
            double d12 = this.mTargetPos;
            float f9 = this.mV;
            double d13 = d9;
            double d14 = ((-d9) * (((double) f8) - d12)) - (((double) f9) * d10);
            float f10 = this.mMass;
            double d15 = d10;
            double d16 = (((d14 / ((double) f10)) * d11) / 2.0d) + ((double) f9);
            double d17 = ((((-((((d11 * d16) / 2.0d) + ((double) f8)) - d12)) * d13) - (d16 * d15)) / ((double) f10)) * d11;
            double d18 = (d17 / 2.0d) + ((double) f9);
            float f11 = f9 + ((float) d17);
            this.mV = f11;
            float f12 = f8 + ((float) (d18 * d11));
            this.mPos = f12;
            int i10 = this.mBoundaryMode;
            if (i10 > 0) {
                if (f12 < 0.0f && (i10 & 1) == 1) {
                    this.mPos = -f12;
                    this.mV = -f11;
                }
                float f13 = this.mPos;
                if (f13 > 1.0f && (i10 & 2) == 2) {
                    this.mPos = 2.0f - f13;
                    this.mV = -this.mV;
                }
            }
            i9++;
            d9 = d13;
            d10 = d15;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f8) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getAcceleration() {
        double d = this.mStiffness;
        return ((float) (((-d) * (((double) this.mPos) - this.mTargetPos)) - (this.mDamping * ((double) this.mV)))) / this.mMass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f8) {
        compute(f8 - this.mLastTime);
        this.mLastTime = f8;
        if (isStopped()) {
            this.mPos = (float) this.mTargetPos;
        }
        return this.mPos;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f8) {
        return this.mV;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        double d = ((double) this.mPos) - this.mTargetPos;
        double d9 = this.mStiffness;
        double d10 = this.mV;
        return Math.sqrt((((d9 * d) * d) + ((d10 * d10) * ((double) this.mMass))) / d9) <= ((double) this.mStopThreshold);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "() ";
        System.out.println(str2 + str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void springConfig(float f8, float f9, float f10, float f11, float f12, float f13, float f14, int i9) {
        this.mTargetPos = f9;
        this.mDamping = f13;
        this.mInitialized = false;
        this.mPos = f8;
        this.mLastVelocity = f10;
        this.mStiffness = f12;
        this.mMass = f11;
        this.mStopThreshold = f14;
        this.mBoundaryMode = i9;
        this.mLastTime = 0.0f;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        return 0.0f;
    }
}
