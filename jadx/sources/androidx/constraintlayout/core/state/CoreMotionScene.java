package androidx.constraintlayout.core.state;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface CoreMotionScene {
    String getConstraintSet(int i10);

    String getConstraintSet(String str);

    String getTransition(String str);

    void setConstraintSetContent(String str, String str2);

    void setDebugName(String str);

    void setTransitionContent(String str, String str2);
}
