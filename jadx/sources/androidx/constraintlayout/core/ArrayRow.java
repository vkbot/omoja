package androidx.constraintlayout.core;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable mVariable = null;
    float mConstantValue = 0.0f;
    boolean mUsed = false;
    ArrayList<SolverVariable> mVariablesToUpdate = new ArrayList<>();
    boolean mIsSimpleDefinition = false;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f8, boolean z9);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f8);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i10);

        float getVariableValue(int i10);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f8);

        float remove(SolverVariable solverVariable, boolean z9);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z9);
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    private SolverVariable pickPivotInVariables(boolean[] zArr, SolverVariable solverVariable) {
        SolverVariable.Type type;
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable2 = null;
        float f8 = 0.0f;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float variableValue = this.variables.getVariableValue(i10);
            if (variableValue < 0.0f) {
                SolverVariable variable = this.variables.getVariable(i10);
                if ((zArr == null || !zArr[variable.f286id]) && variable != solverVariable && (((type = variable.mType) == SolverVariable.Type.SLACK || type == SolverVariable.Type.ERROR) && variableValue < f8)) {
                    f8 = variableValue;
                    solverVariable2 = variable;
                }
            }
        }
        return solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        int i10 = solverVariable.strength;
        float f8 = 1.0f;
        if (i10 != 1) {
            if (i10 == 2) {
                f8 = 1000.0f;
            } else if (i10 == 3) {
                f8 = 1000000.0f;
            } else if (i10 == 4) {
                f8 = 1.0E9f;
            } else if (i10 == 5) {
                f8 = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f8);
    }

    public ArrayRow addSingleError(SolverVariable solverVariable, int i10) {
        this.variables.put(solverVariable, i10);
        return this;
    }

    public boolean chooseSubject(LinearSystem linearSystem) {
        boolean z9;
        SolverVariable solverVariableChooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (solverVariableChooseSubjectInVariables == null) {
            z9 = true;
        } else {
            pivot(solverVariableChooseSubjectInVariables);
            z9 = false;
        }
        if (this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
        }
        return z9;
    }

    public SolverVariable chooseSubjectInVariables(LinearSystem linearSystem) {
        int currentSize = this.variables.getCurrentSize();
        SolverVariable solverVariable = null;
        float f8 = 0.0f;
        float f10 = 0.0f;
        boolean z9 = false;
        boolean z10 = false;
        SolverVariable solverVariable2 = null;
        for (int i10 = 0; i10 < currentSize; i10++) {
            float variableValue = this.variables.getVariableValue(i10);
            SolverVariable variable = this.variables.getVariable(i10);
            if (variable.mType == SolverVariable.Type.UNRESTRICTED) {
                if (solverVariable == null || f8 > variableValue) {
                    boolean zIsNew = isNew(variable, linearSystem);
                    z9 = zIsNew;
                    f8 = variableValue;
                    solverVariable = variable;
                } else if (!z9 && isNew(variable, linearSystem)) {
                    f8 = variableValue;
                    solverVariable = variable;
                    z9 = true;
                }
            } else if (solverVariable == null && variableValue < 0.0f) {
                if (solverVariable2 == null || f10 > variableValue) {
                    boolean zIsNew2 = isNew(variable, linearSystem);
                    z10 = zIsNew2;
                    f10 = variableValue;
                    solverVariable2 = variable;
                } else if (!z10 && isNew(variable, linearSystem)) {
                    f10 = variableValue;
                    solverVariable2 = variable;
                    z10 = true;
                }
            }
        }
        return solverVariable != null ? solverVariable : solverVariable2;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.mVariable = null;
        this.mConstantValue = 0.0f;
    }

    public ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i10, float f8, SolverVariable solverVariable3, SolverVariable solverVariable4, int i11) {
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
            if (i10 > 0 || i11 > 0) {
                this.mConstantValue = (-i10) + i11;
                return this;
            }
        } else {
            if (f8 <= 0.0f) {
                this.variables.put(solverVariable, -1.0f);
                this.variables.put(solverVariable2, 1.0f);
                this.mConstantValue = i10;
                return this;
            }
            ArrayRowVariables arrayRowVariables = this.variables;
            if (f8 >= 1.0f) {
                arrayRowVariables.put(solverVariable4, -1.0f);
                this.variables.put(solverVariable3, 1.0f);
                this.mConstantValue = -i11;
                return this;
            }
            float f10 = 1.0f - f8;
            arrayRowVariables.put(solverVariable, f10 * 1.0f);
            this.variables.put(solverVariable2, f10 * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f8);
            this.variables.put(solverVariable4, 1.0f * f8);
            if (i10 > 0 || i11 > 0) {
                this.mConstantValue = (i11 * f8) + ((-i10) * f10);
                return this;
            }
        }
        return this;
    }

    public ArrayRow createRowDefinition(SolverVariable solverVariable, int i10) {
        this.mVariable = solverVariable;
        float f8 = i10;
        solverVariable.computedValue = f8;
        this.mConstantValue = f8;
        this.mIsSimpleDefinition = true;
        return this;
    }

    public ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f8) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f8);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f8) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f8);
        this.variables.put(solverVariable4, -f8);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f8, float f10, float f11, SolverVariable solverVariable, int i10, SolverVariable solverVariable2, int i11, SolverVariable solverVariable3, int i12, SolverVariable solverVariable4, int i13) {
        if (f10 == 0.0f || f8 == f11) {
            this.mConstantValue = ((-i10) - i11) + i12 + i13;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
            return this;
        }
        float f12 = (f8 / f10) / (f11 / f10);
        this.mConstantValue = (i13 * f12) + (i12 * f12) + ((-i10) - i11);
        this.variables.put(solverVariable, 1.0f);
        this.variables.put(solverVariable2, -1.0f);
        this.variables.put(solverVariable4, f12);
        this.variables.put(solverVariable3, -f12);
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f8, float f10, float f11, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.mConstantValue = 0.0f;
        if (f10 == 0.0f || f8 == f11) {
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
        ArrayRowVariables arrayRowVariables = this.variables;
        if (f11 == 0.0f) {
            arrayRowVariables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
            return this;
        }
        float f12 = (f8 / f10) / (f11 / f10);
        arrayRowVariables.put(solverVariable, 1.0f);
        this.variables.put(solverVariable2, -1.0f);
        this.variables.put(solverVariable4, f12);
        this.variables.put(solverVariable3, -f12);
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i10) {
        boolean z9 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z9 = true;
            }
            this.mConstantValue = i10;
        }
        ArrayRowVariables arrayRowVariables = this.variables;
        if (z9) {
            arrayRowVariables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            return this;
        }
        arrayRowVariables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z9 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z9 = true;
            }
            this.mConstantValue = i10;
        }
        ArrayRowVariables arrayRowVariables = this.variables;
        if (z9) {
            arrayRowVariables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            return this;
        }
        arrayRowVariables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, 1.0f);
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i10) {
        boolean z9 = false;
        if (i10 != 0) {
            if (i10 < 0) {
                i10 *= -1;
                z9 = true;
            }
            this.mConstantValue = i10;
        }
        ArrayRowVariables arrayRowVariables = this.variables;
        if (z9) {
            arrayRowVariables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            return this;
        }
        arrayRowVariables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, -1.0f);
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f8) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.mConstantValue = -f8;
        return this;
    }

    public void ensurePositiveConstant() {
        float f8 = this.mConstantValue;
        if (f8 < 0.0f) {
            this.mConstantValue = f8 * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.mVariable;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    public boolean hasKeyVariable() {
        SolverVariable solverVariable = this.mVariable;
        if (solverVariable != null) {
            return solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.mConstantValue >= 0.0f;
        }
        return false;
    }

    public boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.mVariable = null;
            this.variables.clear();
            for (int i10 = 0; i10 < arrayRow.variables.getCurrentSize(); i10++) {
                this.variables.add(arrayRow.variables.getVariable(i10), arrayRow.variables.getVariableValue(i10), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.mVariable == null && this.mConstantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

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

    public void reset() {
        this.mVariable = null;
        this.variables.clear();
        this.mConstantValue = 0.0f;
        this.mIsSimpleDefinition = false;
    }

    public int sizeInBytes() {
        return this.variables.sizeInBytes() + (this.mVariable != null ? 4 : 0) + 8;
    }

    public String toReadableString() {
        boolean z9;
        String strConcat = (this.mVariable == null ? "0" : "" + this.mVariable).concat(" = ");
        if (this.mConstantValue != 0.0f) {
            StringBuilder sbM170u = AbstractC0074a.m170u(strConcat);
            sbM170u.append(this.mConstantValue);
            strConcat = sbM170u.toString();
            z9 = true;
        } else {
            z9 = false;
        }
        int currentSize = this.variables.getCurrentSize();
        for (int i10 = 0; i10 < currentSize; i10++) {
            SolverVariable variable = this.variables.getVariable(i10);
            if (variable != null) {
                float variableValue = this.variables.getVariableValue(i10);
                if (variableValue != 0.0f) {
                    String string = variable.toString();
                    if (z9) {
                        if (variableValue > 0.0f) {
                            strConcat = AbstractC0074a.m148C(strConcat, " + ");
                        } else {
                            strConcat = AbstractC0074a.m148C(strConcat, " - ");
                            variableValue *= -1.0f;
                        }
                    } else if (variableValue < 0.0f) {
                        strConcat = AbstractC0074a.m148C(strConcat, "- ");
                        variableValue *= -1.0f;
                    }
                    strConcat = variableValue == 1.0f ? AbstractC0074a.m148C(strConcat, string) : strConcat + variableValue + " " + string;
                    z9 = true;
                }
            }
        }
        return !z9 ? AbstractC0074a.m148C(strConcat, "0.0") : strConcat;
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z9) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        float f8 = this.variables.get(solverVariable);
        this.mConstantValue = (solverVariable.computedValue * f8) + this.mConstantValue;
        this.variables.remove(solverVariable, z9);
        if (z9) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z9) {
        float fUse = this.variables.use(arrayRow, z9);
        this.mConstantValue = (arrayRow.mConstantValue * fUse) + this.mConstantValue;
        if (z9) {
            arrayRow.mVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.mVariable != null && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z9) {
        if (solverVariable == null || !solverVariable.mIsSynonym) {
            return;
        }
        float f8 = this.variables.get(solverVariable);
        this.mConstantValue = (solverVariable.mSynonymDelta * f8) + this.mConstantValue;
        this.variables.remove(solverVariable, z9);
        if (z9) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.mSynonym], f8, z9);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        ArrayList<SolverVariable> arrayList;
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z9 = false;
        while (!z9) {
            int currentSize = this.variables.getCurrentSize();
            for (int i10 = 0; i10 < currentSize; i10++) {
                SolverVariable variable = this.variables.getVariable(i10);
                if (variable.mDefinitionId != -1 || variable.isFinalValue || variable.mIsSynonym) {
                    this.mVariablesToUpdate.add(variable);
                }
            }
            int size = this.mVariablesToUpdate.size();
            if (size > 0) {
                int i11 = 0;
                while (true) {
                    arrayList = this.mVariablesToUpdate;
                    if (i11 >= size) {
                        break;
                    }
                    SolverVariable solverVariable = arrayList.get(i11);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.mIsSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.mDefinitionId], true);
                    }
                    i11++;
                }
                arrayList.clear();
            } else {
                z9 = true;
            }
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.mVariable != null && this.variables.getCurrentSize() == 0) {
            this.mIsSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public ArrayRow() {
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i10) {
        if (i10 < 0) {
            this.mConstantValue = i10 * (-1);
            this.variables.put(solverVariable, 1.0f);
            return this;
        }
        this.mConstantValue = i10;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }

    public ArrayRow addError(LinearSystem linearSystem, int i10) {
        this.variables.put(linearSystem.createErrorVariable(i10, "ep"), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i10, "em"), -1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i10, SolverVariable solverVariable2) {
        this.mConstantValue = i10;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }
}
