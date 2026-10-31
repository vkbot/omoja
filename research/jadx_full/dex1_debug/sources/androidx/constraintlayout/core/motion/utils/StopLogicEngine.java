package androidx.constraintlayout.core.motion.utils;

import ai.onnxruntime.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StopLogicEngine implements StopEngine {
    private static final float EPSILON = 1.0E-5f;
    private boolean mBackwards = false;
    private boolean mDone = false;
    private float mLastPosition;
    private float mLastTime;
    private int mNumberOfStages;
    private float mStage1Duration;
    private float mStage1EndPosition;
    private float mStage1Velocity;
    private float mStage2Duration;
    private float mStage2EndPosition;
    private float mStage2Velocity;
    private float mStage3Duration;
    private float mStage3EndPosition;
    private float mStage3Velocity;
    private float mStartPosition;
    private String mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float calcY(float f8) {
        this.mDone = false;
        float f9 = this.mStage1Duration;
        if (f8 <= f9) {
            float f10 = this.mStage1Velocity;
            return ((((this.mStage2Velocity - f10) * f8) * f8) / (f9 * 2.0f)) + (f10 * f8);
        }
        int i9 = this.mNumberOfStages;
        if (i9 == 1) {
            return this.mStage1EndPosition;
        }
        float f11 = f8 - f9;
        float f12 = this.mStage2Duration;
        if (f11 < f12) {
            float f13 = this.mStage1EndPosition;
            float f14 = this.mStage2Velocity;
            return ((((this.mStage3Velocity - f14) * f11) * f11) / (f12 * 2.0f)) + (f14 * f11) + f13;
        }
        if (i9 == 2) {
            return this.mStage2EndPosition;
        }
        float f15 = f11 - f12;
        float f16 = this.mStage3Duration;
        if (f15 > f16) {
            this.mDone = true;
            return this.mStage3EndPosition;
        }
        float f17 = this.mStage2EndPosition;
        float f18 = this.mStage3Velocity;
        return ((f18 * f15) + f17) - (((f18 * f15) * f15) / (f16 * 2.0f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setup(float f8, float f9, float f10, float f11, float f12) {
        this.mDone = false;
        this.mStage3EndPosition = f9;
        if (f8 == 0.0f) {
            f8 = 1.0E-4f;
        }
        float f13 = f8 / f10;
        float f14 = (f13 * f8) / 2.0f;
        if (f8 < 0.0f) {
            float fSqrt = (float) Math.sqrt((f9 - ((((-f8) / f10) * f8) / 2.0f)) * f10);
            if (fSqrt < f11) {
                this.mType = "backward accelerate, decelerate";
                this.mNumberOfStages = 2;
                this.mStage1Velocity = f8;
                this.mStage2Velocity = fSqrt;
                this.mStage3Velocity = 0.0f;
                float f15 = (fSqrt - f8) / f10;
                this.mStage1Duration = f15;
                this.mStage2Duration = fSqrt / f10;
                this.mStage1EndPosition = ((f8 + fSqrt) * f15) / 2.0f;
                this.mStage2EndPosition = f9;
                this.mStage3EndPosition = f9;
                return;
            }
            this.mType = "backward accelerate cruse decelerate";
            this.mNumberOfStages = 3;
            this.mStage1Velocity = f8;
            this.mStage2Velocity = f11;
            this.mStage3Velocity = f11;
            float f16 = (f11 - f8) / f10;
            this.mStage1Duration = f16;
            float f17 = f11 / f10;
            this.mStage3Duration = f17;
            float f18 = ((f8 + f11) * f16) / 2.0f;
            float f19 = (f17 * f11) / 2.0f;
            this.mStage2Duration = ((f9 - f18) - f19) / f11;
            this.mStage1EndPosition = f18;
            this.mStage2EndPosition = f9 - f19;
            this.mStage3EndPosition = f9;
            return;
        }
        if (f14 >= f9) {
            this.mType = "hard stop";
            this.mNumberOfStages = 1;
            this.mStage1Velocity = f8;
            this.mStage2Velocity = 0.0f;
            this.mStage1EndPosition = f9;
            this.mStage1Duration = (2.0f * f9) / f8;
            return;
        }
        float f20 = f9 - f14;
        float f21 = f20 / f8;
        if (f21 + f13 < f12) {
            this.mType = "cruse decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f8;
            this.mStage2Velocity = f8;
            this.mStage3Velocity = 0.0f;
            this.mStage1EndPosition = f20;
            this.mStage2EndPosition = f9;
            this.mStage1Duration = f21;
            this.mStage2Duration = f13;
            return;
        }
        float fSqrt2 = (float) Math.sqrt(((f8 * f8) / 2.0f) + (f10 * f9));
        float f22 = (fSqrt2 - f8) / f10;
        this.mStage1Duration = f22;
        float f23 = fSqrt2 / f10;
        this.mStage2Duration = f23;
        if (fSqrt2 < f11) {
            this.mType = "accelerate decelerate";
            this.mNumberOfStages = 2;
            this.mStage1Velocity = f8;
            this.mStage2Velocity = fSqrt2;
            this.mStage3Velocity = 0.0f;
            this.mStage1Duration = f22;
            this.mStage2Duration = f23;
            this.mStage1EndPosition = ((f8 + fSqrt2) * f22) / 2.0f;
            this.mStage2EndPosition = f9;
            return;
        }
        this.mType = "accelerate cruse decelerate";
        this.mNumberOfStages = 3;
        this.mStage1Velocity = f8;
        this.mStage2Velocity = f11;
        this.mStage3Velocity = f11;
        float f24 = (f11 - f8) / f10;
        this.mStage1Duration = f24;
        float f25 = f11 / f10;
        this.mStage3Duration = f25;
        float f26 = ((f8 + f11) * f24) / 2.0f;
        float f27 = (f25 * f11) / 2.0f;
        this.mStage2Duration = ((f9 - f26) - f27) / f11;
        this.mStage1EndPosition = f26;
        this.mStage2EndPosition = f9 - f27;
        this.mStage3EndPosition = f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void config(float f8, float f9, float f10, float f11, float f12, float f13) {
        this.mDone = false;
        this.mStartPosition = f8;
        boolean z8 = f8 > f9;
        this.mBackwards = z8;
        if (z8) {
            setup(-f10, f8 - f9, f12, f13, f11);
        } else {
            setup(f10, f9 - f8, f12, f13, f11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public String debug(String str, float f8) {
        StringBuilder sbW = a.w(a.p(a.w(str, " ===== "), this.mType, "\n"), str);
        sbW.append(this.mBackwards ? "backwards" : "forward ");
        sbW.append(" time = ");
        sbW.append(f8);
        sbW.append("  stages ");
        String str2 = a.o(sbW, "\n", this.mNumberOfStages) + str + " dur " + this.mStage1Duration + " vel " + this.mStage1Velocity + " pos " + this.mStage1EndPosition + "\n";
        if (this.mNumberOfStages > 1) {
            str2 = str2 + str + " dur " + this.mStage2Duration + " vel " + this.mStage2Velocity + " pos " + this.mStage2EndPosition + "\n";
        }
        if (this.mNumberOfStages > 2) {
            str2 = str2 + str + " dur " + this.mStage3Duration + " vel " + this.mStage3Velocity + " pos " + this.mStage3EndPosition + "\n";
        }
        float f9 = this.mStage1Duration;
        if (f8 <= f9) {
            return a.D(str2, str, "stage 0\n");
        }
        int i9 = this.mNumberOfStages;
        if (i9 == 1) {
            return a.D(str2, str, "end stage 0\n");
        }
        float f10 = f8 - f9;
        float f11 = this.mStage2Duration;
        if (f10 < f11) {
            return a.D(str2, str, " stage 1\n");
        }
        if (i9 == 2) {
            return a.D(str2, str, "end stage 1\n");
        }
        return f10 - f11 < this.mStage3Duration ? a.D(str2, str, " stage 2\n") : a.D(str2, str, " end stage 2\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getInterpolation(float f8) {
        float fCalcY = calcY(f8);
        this.mLastPosition = fCalcY;
        this.mLastTime = f8;
        boolean z8 = this.mBackwards;
        float f9 = this.mStartPosition;
        return z8 ? f9 - fCalcY : f9 + fCalcY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity(float f8) {
        float f9;
        float f10;
        float f11 = this.mStage1Duration;
        if (f8 <= f11) {
            f9 = this.mStage1Velocity;
            f10 = this.mStage2Velocity;
        } else {
            int i9 = this.mNumberOfStages;
            if (i9 == 1) {
                return 0.0f;
            }
            f8 -= f11;
            f11 = this.mStage2Duration;
            if (f8 >= f11) {
                if (i9 == 2) {
                    return 0.0f;
                }
                float f12 = f8 - f11;
                float f13 = this.mStage3Duration;
                if (f12 >= f13) {
                    return 0.0f;
                }
                float f14 = this.mStage3Velocity;
                return f14 - ((f12 * f14) / f13);
            }
            f9 = this.mStage2Velocity;
            f10 = this.mStage3Velocity;
        }
        return (((f10 - f9) * f8) / f11) + f9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public boolean isStopped() {
        return getVelocity() < EPSILON && Math.abs(this.mStage3EndPosition - this.mLastPosition) < EPSILON;
    }

    @Override // androidx.constraintlayout.core.motion.utils.StopEngine
    public float getVelocity() {
        boolean z8 = this.mBackwards;
        float f8 = this.mLastTime;
        return z8 ? -getVelocity(f8) : getVelocity(f8);
    }
}
