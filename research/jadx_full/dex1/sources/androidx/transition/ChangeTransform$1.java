package androidx.transition;

import android.util.Property;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChangeTransform$1 extends Property<ChangeTransform$PathAnimatorMatrix, float[]> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChangeTransform$1(Class cls, String str) {
        super(cls, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ float[] get(ChangeTransform$PathAnimatorMatrix changeTransform$PathAnimatorMatrix) {
        return get2(changeTransform$PathAnimatorMatrix);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ void set(ChangeTransform$PathAnimatorMatrix changeTransform$PathAnimatorMatrix, float[] fArr) {
        set2(changeTransform$PathAnimatorMatrix, fArr);
    }

    /* JADX INFO: renamed from: get, reason: avoid collision after fix types in other method */
    public float[] get2(ChangeTransform$PathAnimatorMatrix changeTransform$PathAnimatorMatrix) {
        return null;
    }

    /* JADX INFO: renamed from: set, reason: avoid collision after fix types in other method */
    public void set2(ChangeTransform$PathAnimatorMatrix changeTransform$PathAnimatorMatrix, float[] fArr) {
        changeTransform$PathAnimatorMatrix.setValues(fArr);
    }
}
