package androidx.constraintlayout.core;

import ai.onnxruntime.a;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ArrayRow implements LinearSystem$Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRow$ArrayRowVariables variables;
    SolverVariable mVariable = null;
    float mConstantValue = 0.0f;
    boolean mUsed = false;
    ArrayList<SolverVariable> mVariablesToUpdate = new ArrayList<>();
    boolean mIsSimpleDefinition = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable$Type solverVariable$Type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f8 = 0.0f;
        for (int i9 = 0; i9 < currentSize; i9++) {
            float variableValue = this.variables.getVariableValue(i9);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i9);
                if ((zArr == null || !zArr[variable.id]) && variable != solverVariable && (((solverVariable$Type = variable.mType) == SolverVariable$Type.SLACK || solverVariable$Type == SolverVariable$Type.ERROR) && variableValue < f8)) {
                    f8 = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public void addError(SolverVariable solverVariable) {
        int i9 = solverVariable.strength;
        float f8 = 1.0f;
        if (i9 != 1) {
            if (i9 == 2) {
                f8 = 1000.0f;
            } else if (i9 == 3) {
                f8 = 1000000.0f;
            } else if (i9 == 4) {
                f8 = 1.0E9f;
            } else if (i9 == 5) {
                f8 = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow addSingleError(SolverVariable solverVariable, int i9) {
        this.variables.put(solverVariable, i9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z8;
        SolverVariable solverVariableChooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (solverVariableChooseSubjectInVariables == null) {
            z8 = true;
        } else {
            pivot(solverVariableChooseSubjectInVariables);
            z8 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        float f8 = 0.0f;
        float f9 = 0.0f;
        boolean z8 = false;
        boolean z9 = false;
        SolverVariable solverVariable2 = null;
        for (int i9 = 0; i9 < currentSize; i9++) {
            float variableValue = this.variables.getVariableValue(i9);
            SolverVariable variable = this.variables.getVariable(i9);
            if (variable.mType == SolverVariable$Type.UNRESTRICTED) {
                if (solverVariable == null || f8 > variableValue) {
                    boolean zIsNew = isNew(variable, linearSystem);
                    z8 = zIsNew;
                    f8 = variableValue;
                    solverVariable = variable;
                } else if (!z8 && isNew(variable, linearSystem)) {
                    f8 = variableValue;
                    solverVariable = variable;
                    z8 = true;
                }
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null || f9 > variableValue) {
                    boolean zIsNew2 = isNew(variable, linearSystem);
                    z9 = zIsNew2;
                    f9 = variableValue;
                    solverVariable2 = variable;
                } else if (!z9 && isNew(variable, linearSystem)) {
                    f9 = variableValue;
                    solverVariable2 = variable;
                    z9 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public void clear() {
        this.variables.clear();
        this.mVariable = null;
        this.mConstantValue = 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, float f8, SolverVariable solverVariable3, SolverVariable solverVariable4, int i10) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
            return this;
        }
        if (f8 == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i9 > 0 || i10 > 0) {
                this.mConstantValue = (-i9) + i10;
                return this;
            }
        } else {
            if (f8 <= 0.0f) {
                this.variables.put(solverVariable, -1.0f);
                this.variables.put(solverVariable2, 1.0f);
                this.mConstantValue = i9;
                return this;
            }
            ArrayRow$ArrayRowVariables arrayRow$ArrayRowVariables = this.variables;
            if (f8 >= 1.0f) {
                arrayRow$ArrayRowVariables.put(solverVariable4, -1.0f);
                this.variables.put(solverVariable3, 1.0f);
                this.mConstantValue = -i10;
                return this;
            }
            float f9 = 1.0f - f8;
            arrayRow$ArrayRowVariables.put(solverVariable, f9 * 1.0f);
            this.variables.put(solverVariable2, f9 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f8);
            this.variables.put(solverVariable4, 1.0f * f8);
            if (i9 > 0 || i10 > 0) {
                this.mConstantValue = (i10 * f8) + ((-i9) * f9);
                return this;
            }
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i9) {
        this.mVariable = solverVariable;
        float f8 = i9;
        solverVariable.computedValue = f8;
        this.mConstantValue = f8;
        this.mIsSimpleDefinition = true;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f8) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f8) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f8);
        this.variables.put(solverVariable4, -f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowEqualDimension(float f8, float f9, float f10, SolverVariable solverVariable, int i9, SolverVariable solverVariable2, int i10, SolverVariable solverVariable3, int i11, SolverVariable solverVariable4, int i12) {
        if (f9 == 0.0f || f8 == f10) {
            this.mConstantValue = ((-i9) - i10) + i11 + i12;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
            return this;
        }
        float f11 = (f8 / f9) / (f10 / f9);
        this.mConstantValue = (i12 * f11) + (i11 * f11) + ((-i9) - i10);
        this.variables.put(solverVariable, 1.0f);
        this.variables.put(solverVariable2, -1.0f);
        this.variables.put(solverVariable4, f11);
        this.variables.put(solverVariable3, -f11);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowEqualMatchDimensions(float f8, float f9, float f10, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.mConstantValue = 0.0f;
        if (f9 == 0.0f || f8 == f10) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
            return this;
        }
        if (f8 == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            return this;
        }
        ArrayRow$ArrayRowVariables arrayRow$ArrayRowVariables = this.variables;
        if (f10 == 0.0f) {
            arrayRow$ArrayRowVariables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
            return this;
        }
        float f11 = (f8 / f9) / (f10 / f9);
        arrayRow$ArrayRowVariables.put(solverVariable, 1.0f);
        this.variables.put(solverVariable2, -1.0f);
        this.variables.put(solverVariable4, f11);
        this.variables.put(solverVariable3, -f11);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i9) {
        boolean z8 = false;
        if (i9 != 0) {
            if (i9 < 0) {
                i9 *= -1;
                z8 = true;
            }
            this.mConstantValue = i9;
        }
        ArrayRow$ArrayRowVariables arrayRow$ArrayRowVariables = this.variables;
        if (z8) {
            arrayRow$ArrayRowVariables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            return this;
        }
        arrayRow$ArrayRowVariables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i9) {
        boolean z8 = false;
        if (i9 != 0) {
            if (i9 < 0) {
                i9 *= -1;
                z8 = true;
            }
            this.mConstantValue = i9;
        }
        ArrayRow$ArrayRowVariables arrayRow$ArrayRowVariables = this.variables;
        if (z8) {
            arrayRow$ArrayRowVariables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            return this;
        }
        arrayRow$ArrayRowVariables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, 1.0f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i9) {
        boolean z8 = false;
        if (i9 != 0) {
            if (i9 < 0) {
                i9 *= -1;
                z8 = true;
            }
            this.mConstantValue = i9;
        }
        ArrayRow$ArrayRowVariables arrayRow$ArrayRowVariables = this.variables;
        if (z8) {
            arrayRow$ArrayRowVariables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            return this;
        }
        arrayRow$ArrayRowVariables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, -1.0f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f8) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.mConstantValue = -f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensurePositiveConstant() {
        float f8 = this.mConstantValue;
        if (f8 < 0.0f) {
            this.mConstantValue = f8 * (-1.0f);
            this.variables.invert();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public SolverVariable getKey() {
        return this.mVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.mVariable;
        if (solverVariable != null) {
            return solverVariable.mType == SolverVariable$Type.UNRESTRICTED || this.mConstantValue >= 0.0f;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public void initFromRow(LinearSystem$Row linearSystem$Row) {
        if (linearSystem$Row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) linearSystem$Row;
            this.mVariable = null;
            this.variables.clear();
            for (int i9 = 0; i9 < arrayRow.variables.getCurrentSize(); i9++) {
                this.variables.add(arrayRow.variables.getVariable(i9), arrayRow.variables.getVariableValue(i9), true);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public boolean isEmpty() {
        return this.mVariable == null && this.mConstantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.mVariable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.mVariable.mDefinitionId = -1;
            this.mVariable = null;
        }
        float fRemove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.mVariable = solverVariable;
        if (fRemove == 1.0f) {
            return;
        }
        this.mConstantValue /= fRemove;
        this.variables.divideByAmount(fRemove);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        this.mVariable = null;
        this.variables.clear();
        this.mConstantValue = 0.0f;
        this.mIsSimpleDefinition = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int sizeInBytes() {
        return this.variables.sizeInBytes() + (this.mVariable != null ? 4 : 0) + 8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toReadableString() {
        boolean z8;
        String strConcat = (this.mVariable == null ? "0" : "" + this.mVariable).concat(" = ");
        if (this.mConstantValue != 0.0f) {
            StringBuilder sbU = a.u(strConcat);
            sbU.append(this.mConstantValue);
            strConcat = sbU.toString();
            z8 = true;
        } else {
            z8 = false;
        }
        int currentSize = this.variables.getCurrentSize();
        for (int i9 = 0; i9 < currentSize; i9++) {
            SolverVariable variable = this.variables.getVariable(i9);
            if (variable != null) {
                float variableValue = this.variables.getVariableValue(i9);
                if (variableValue != 0.0f) {
                    String string = variable.toString();
                    if (z8) {
                        if (variableValue > 0.0f) {
                            strConcat = a.C(strConcat, " + ");
                        } else {
                            strConcat = a.C(strConcat, " - ");
                            variableValue *= -1.0f;
                        }
                    } else if (variableValue < 0.0f) {
                        strConcat = a.C(strConcat, "- ");
                        variableValue *= -1.0f;
                    }
                    strConcat = variableValue == 1.0f ? a.C(strConcat, string) : strConcat + variableValue + " " + string;
                    z8 = true;
                }
            }
        }
        return !z8 ? a.C(strConcat, "0.0") : strConcat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return toReadableString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z8) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        float f8 = this.variables.get(solverVariable);
        this.mConstantValue = (solverVariable.computedValue * f8) + this.mConstantValue;
        this.variables.remove(solverVariable, z8);
        if (z8) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z8) {
        float fUse = this.variables.use(arrayRow, z8);
        this.mConstantValue = (arrayRow.mConstantValue * fUse) + this.mConstantValue;
        if (z8) {
            arrayRow.mVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.mVariable != null && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z8) {
        if (solverVariable == null || !solverVariable.mIsSynonym) {
            return;
        }
        float f8 = this.variables.get(solverVariable);
        this.mConstantValue = (solverVariable.mSynonymDelta * f8) + this.mConstantValue;
        this.variables.remove(solverVariable, z8);
        if (z8) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.mSynonym], f8, z8);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.LinearSystem$Row
    public void updateFromSystem(LinearSystem linearSystem) {
        ArrayList<SolverVariable> arrayList;
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z8 = false;
        while (!z8) {
            int currentSize = this.variables.getCurrentSize();
            for (int i9 = 0; i9 < currentSize; i9++) {
                SolverVariable variable = this.variables.getVariable(i9);
                if (variable.mDefinitionId != -1 || variable.isFinalValue || variable.mIsSynonym) {
                    this.mVariablesToUpdate.add(variable);
                }
            }
            int size = this.mVariablesToUpdate.size();
            if (size > 0) {
                int i10 = 0;
                while (true) {
                    arrayList = this.mVariablesToUpdate;
                    if (i10 >= size) {
                        break;
                    }
                    SolverVariable solverVariable = arrayList.get(i10);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.mIsSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.mDefinitionId], true);
                    }
                    i10++;
                }
                arrayList.clear();
            } else {
                z8 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.mVariable != null && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public ArrayRow() {
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i9) {
        if (i9 < 0) {
            this.mConstantValue = i9 * (-1);
            this.variables.put(solverVariable, 1.0f);
            return this;
        }
        this.mConstantValue = i9;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i9) {
        this.variables.put(linearSystem.createErrorVariable(i9, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i9, "em"), -1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i9, SolverVariable solverVariable2) {
        this.mConstantValue = i9;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
