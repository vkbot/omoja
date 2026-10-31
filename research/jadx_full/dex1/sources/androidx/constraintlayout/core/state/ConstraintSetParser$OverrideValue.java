package androidx.constraintlayout.core.state;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSetParser$OverrideValue implements ConstraintSetParser$GeneratedValue {
    float mValue;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSetParser$OverrideValue(float f8) {
        this.mValue = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.state.ConstraintSetParser$GeneratedValue
    public float value() {
        return this.mValue;
    }
}
