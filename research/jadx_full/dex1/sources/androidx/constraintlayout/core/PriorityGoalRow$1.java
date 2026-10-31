package androidx.constraintlayout.core;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PriorityGoalRow$1 implements Comparator<SolverVariable> {
    final /* synthetic */ PriorityGoalRow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PriorityGoalRow$1(PriorityGoalRow priorityGoalRow) {
        this.this$0 = priorityGoalRow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // java.util.Comparator
    public /* bridge */ /* synthetic */ int compare(SolverVariable solverVariable, SolverVariable solverVariable2) {
        return compare2(solverVariable, solverVariable2);
    }

    /* JADX INFO: renamed from: compare, reason: avoid collision after fix types in other method */
    public int compare2(SolverVariable solverVariable, SolverVariable solverVariable2) {
        return solverVariable.id - solverVariable2.id;
    }
}
