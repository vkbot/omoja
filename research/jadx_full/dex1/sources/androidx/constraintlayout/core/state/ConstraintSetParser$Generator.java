package androidx.constraintlayout.core.state;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSetParser$Generator implements ConstraintSetParser$GeneratedValue {
    float mCurrent;
    float mIncrementBy;
    float mStart;
    boolean mStop = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSetParser$Generator(float f8, float f9) {
        this.mStart = f8;
        this.mIncrementBy = f9;
        this.mCurrent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.state.ConstraintSetParser$GeneratedValue
    public float value() {
        if (!this.mStop) {
            this.mCurrent += this.mIncrementBy;
        }
        return this.mCurrent;
    }
}
