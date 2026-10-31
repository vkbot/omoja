package androidx.constraintlayout.core;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface LinearSystem$Row {
    void addError(SolverVariable solverVariable);

    void clear();

    SolverVariable getKey();

    SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

    void initFromRow(LinearSystem$Row linearSystem$Row);

    boolean isEmpty();

    void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z8);

    void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z8);

    void updateFromSystem(LinearSystem linearSystem);
}
