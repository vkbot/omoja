package androidx.constraintlayout.core;

import ai.onnxruntime.a;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class PriorityGoalRow extends ArrayRow {
    private static final boolean DEBUG = false;
    private static final float EPSILON = 1.0E-4f;
    static final int NOT_FOUND = -1;
    PriorityGoalRow$GoalVariableAccessor mAccessor;
    private SolverVariable[] mArrayGoals;
    Cache mCache;
    private int mNumGoals;
    private SolverVariable[] mSortArray;
    private int mTableSize;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PriorityGoalRow(Cache cache) {
        super(cache);
        this.mTableSize = 128;
        this.mArrayGoals = new SolverVariable[128];
        this.mSortArray = new SolverVariable[128];
        this.mNumGoals = 0;
        this.mAccessor = new PriorityGoalRow$GoalVariableAccessor(this, this);
        this.mCache = cache;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$000(PriorityGoalRow priorityGoalRow, SolverVariable solverVariable) {
        priorityGoalRow.removeGoal(solverVariable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addToGoal(SolverVariable solverVariable) {
        int i9;
        SolverVariable[] solverVariableArr;
        int i10 = this.mNumGoals + 1;
        SolverVariable[] solverVariableArr2 = this.mArrayGoals;
        if (i10 > solverVariableArr2.length) {
            SolverVariable[] solverVariableArr3 = (SolverVariable[]) Arrays.copyOf(solverVariableArr2, solverVariableArr2.length * 2);
            this.mArrayGoals = solverVariableArr3;
            this.mSortArray = (SolverVariable[]) Arrays.copyOf(solverVariableArr3, solverVariableArr3.length * 2);
        }
        SolverVariable[] solverVariableArr4 = this.mArrayGoals;
        int i11 = this.mNumGoals;
        solverVariableArr4[i11] = solverVariable;
        int i12 = i11 + 1;
        this.mNumGoals = i12;
        if (i12 > 1 && solverVariableArr4[i11].id > solverVariable.id) {
            int i13 = 0;
            while (true) {
                i9 = this.mNumGoals;
                solverVariableArr = this.mSortArray;
                if (i13 >= i9) {
                    break;
                }
                solverVariableArr[i13] = this.mArrayGoals[i13];
                i13++;
            }
            Arrays.sort(solverVariableArr, 0, i9, new PriorityGoalRow$1(this));
            for (int i14 = 0; i14 < this.mNumGoals; i14++) {
                this.mArrayGoals[i14] = this.mSortArray[i14];
            }
        }
        solverVariable.inGoal = true;
        solverVariable.addToRow(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeGoal(SolverVariable solverVariable) {
        int i9 = 0;
        while (i9 < this.mNumGoals) {
            if (this.mArrayGoals[i9] == solverVariable) {
                while (true) {
                    int i10 = this.mNumGoals;
                    if (i9 >= i10 - 1) {
                        this.mNumGoals = i10 - 1;
                        solverVariable.inGoal = false;
                        return;
                    } else {
                        SolverVariable[] solverVariableArr = this.mArrayGoals;
                        int i11 = i9 + 1;
                        solverVariableArr[i9] = solverVariableArr[i11];
                        i9 = i11;
                    }
                }
            } else {
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem$Row
    public void addError(SolverVariable solverVariable) {
        this.mAccessor.init(solverVariable);
        this.mAccessor.reset();
        solverVariable.mGoalStrengthVector[solverVariable.strength] = 1.0f;
        addToGoal(solverVariable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem$Row
    public void clear() {
        this.mNumGoals = 0;
        this.mConstantValue = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem$Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        int i9 = -1;
        for (int i10 = 0; i10 < this.mNumGoals; i10++) {
            SolverVariable solverVariable = this.mArrayGoals[i10];
            if (!zArr[solverVariable.id]) {
                this.mAccessor.init(solverVariable);
                PriorityGoalRow$GoalVariableAccessor priorityGoalRow$GoalVariableAccessor = this.mAccessor;
                if (i9 == -1) {
                    if (priorityGoalRow$GoalVariableAccessor.isNegative()) {
                        i9 = i10;
                    }
                } else if (priorityGoalRow$GoalVariableAccessor.isSmallerThan(this.mArrayGoals[i9])) {
                    i9 = i10;
                }
            }
        }
        if (i9 == -1) {
            return null;
        }
        return this.mArrayGoals[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem$Row
    public boolean isEmpty() {
        return this.mNumGoals == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow
    public String toString() {
        String string = " goal -> (" + this.mConstantValue + ") : ";
        for (int i9 = 0; i9 < this.mNumGoals; i9++) {
            this.mAccessor.init(this.mArrayGoals[i9]);
            StringBuilder sbU = a.u(string);
            sbU.append(this.mAccessor);
            sbU.append(" ");
            string = sbU.toString();
        }
        return string;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow, androidx.constraintlayout.core.LinearSystem$Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z8) {
        SolverVariable solverVariable = arrayRow.mVariable;
        if (solverVariable == null) {
            return;
        }
        ArrayRow$ArrayRowVariables arrayRow$ArrayRowVariables = arrayRow.variables;
        int currentSize = arrayRow$ArrayRowVariables.getCurrentSize();
        for (int i9 = 0; i9 < currentSize; i9++) {
            SolverVariable variable = arrayRow$ArrayRowVariables.getVariable(i9);
            float variableValue = arrayRow$ArrayRowVariables.getVariableValue(i9);
            this.mAccessor.init(variable);
            if (this.mAccessor.addToGoal(solverVariable, variableValue)) {
                addToGoal(variable);
            }
            this.mConstantValue = (arrayRow.mConstantValue * variableValue) + this.mConstantValue;
        }
        removeGoal(solverVariable);
    }
}
