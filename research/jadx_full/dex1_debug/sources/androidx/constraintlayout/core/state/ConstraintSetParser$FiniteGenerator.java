package androidx.constraintlayout.core.state;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintSetParser$FiniteGenerator implements ConstraintSetParser$GeneratedValue {
    float mFrom;
    float mInitial;
    float mMax;
    String mPostfix;
    String mPrefix;
    float mStep;
    float mTo;
    boolean mStop = false;
    float mCurrent = 0.0f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintSetParser$FiniteGenerator(float f8, float f9, float f10, String str, String str2) {
        this.mFrom = f8;
        this.mTo = f9;
        this.mStep = f10;
        this.mPrefix = str == null ? "" : str;
        this.mPostfix = str2 == null ? "" : str2;
        this.mMax = f9;
        this.mInitial = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<String> array() {
        ArrayList<String> arrayList = new ArrayList<>();
        int i9 = (int) this.mInitial;
        int i10 = (int) this.mMax;
        int i11 = i9;
        while (i9 <= i10) {
            arrayList.add(this.mPrefix + i11 + this.mPostfix);
            i11 += (int) this.mStep;
            i9++;
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.state.ConstraintSetParser$GeneratedValue
    public float value() {
        float f8 = this.mCurrent;
        if (f8 >= this.mMax) {
            this.mStop = true;
        }
        if (!this.mStop) {
            this.mCurrent = f8 + this.mStep;
        }
        return this.mCurrent;
    }
}
