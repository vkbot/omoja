package androidx.constraintlayout.core;

import ai.onnxruntime.a;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PriorityGoalRow$GoalVariableAccessor {
    PriorityGoalRow mRow;
    SolverVariable mVariable;
    final /* synthetic */ PriorityGoalRow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PriorityGoalRow$GoalVariableAccessor(PriorityGoalRow priorityGoalRow, PriorityGoalRow priorityGoalRow2) {
        this.this$0 = priorityGoalRow;
        this.mRow = priorityGoalRow2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(SolverVariable solverVariable) {
        for (int i9 = 0; i9 < 9; i9++) {
            float[] fArr = this.mVariable.mGoalStrengthVector;
            float f8 = fArr[i9] + solverVariable.mGoalStrengthVector[i9];
            fArr[i9] = f8;
            if (Math.abs(f8) < 1.0E-4f) {
                this.mVariable.mGoalStrengthVector[i9] = 0.0f;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean addToGoal(SolverVariable solverVariable, float f8) {
        boolean z8 = true;
        if (!this.mVariable.inGoal) {
            for (int i9 = 0; i9 < 9; i9++) {
                float f9 = solverVariable.mGoalStrengthVector[i9];
                if (f9 != 0.0f) {
                    float f10 = f9 * f8;
                    if (Math.abs(f10) < 1.0E-4f) {
                        f10 = 0.0f;
                    }
                    this.mVariable.mGoalStrengthVector[i9] = f10;
                } else {
                    this.mVariable.mGoalStrengthVector[i9] = 0.0f;
                }
            }
            return true;
        }
        for (int i10 = 0; i10 < 9; i10++) {
            float[] fArr = this.mVariable.mGoalStrengthVector;
            float f11 = (solverVariable.mGoalStrengthVector[i10] * f8) + fArr[i10];
            fArr[i10] = f11;
            if (Math.abs(f11) < 1.0E-4f) {
                this.mVariable.mGoalStrengthVector[i10] = 0.0f;
            } else {
                z8 = false;
            }
        }
        if (z8) {
            PriorityGoalRow.access$000(this.this$0, this.mVariable);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void init(SolverVariable solverVariable) {
        this.mVariable = solverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isNegative() {
        for (int i9 = 8; i9 >= 0; i9--) {
            float f8 = this.mVariable.mGoalStrengthVector[i9];
            if (f8 > 0.0f) {
                return false;
            }
            if (f8 < 0.0f) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isNull() {
        for (int i9 = 0; i9 < 9; i9++) {
            if (this.mVariable.mGoalStrengthVector[i9] != 0.0f) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean isSmallerThan(SolverVariable solverVariable) {
        for (int i9 = 8; i9 >= 0; i9--) {
            float f8 = solverVariable.mGoalStrengthVector[i9];
            float f9 = this.mVariable.mGoalStrengthVector[i9];
            if (f9 != f8) {
                if (f9 < f8) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        Arrays.fill(this.mVariable.mGoalStrengthVector, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String string = "[ ";
        if (this.mVariable != null) {
            for (int i9 = 0; i9 < 9; i9++) {
                StringBuilder sbU = a.u(string);
                sbU.append(this.mVariable.mGoalStrengthVector[i9]);
                sbU.append(" ");
                string = sbU.toString();
            }
        }
        StringBuilder sbW = a.w(string, "] ");
        sbW.append(this.mVariable);
        return sbW.toString();
    }
}
