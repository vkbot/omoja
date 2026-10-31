package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SplineSet$CoreSpline extends SplineSet {
    long mStart;
    String mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SplineSet$CoreSpline(String str, long j9) {
        this.mType = str;
        this.mStart = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.motion.utils.SplineSet
    public void setProperty(TypedValues typedValues, float f8) {
        typedValues.setValue(typedValues.getId(this.mType), get(f8));
    }
}
