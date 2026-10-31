package androidx.constraintlayout.core;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearSystem {
    public static long ARRAY_ROW_CREATION = 0;
    public static final boolean DEBUG = false;
    private static final boolean DEBUG_CONSTRAINTS = false;
    private static final boolean DO_NOT_USE = false;
    public static final boolean FULL_DEBUG = false;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public static boolean OPTIMIZED_ENGINE = false;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_SYNONYMS = true;
    public static Metrics sMetrics;
    final Cache mCache;
    private LinearSystem$Row mGoal;
    private LinearSystem$Row mTempGoal;
    private int mPoolSize = 1000;
    public boolean hasSimpleDefinition = false;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int mTableSize = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    int mNumColumns = 1;
    int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[1000];
    private int mPoolVariablesCount = 0;
    ArrayRow[] mRows = new ArrayRow[32];

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearSystem() {
        releaseRows();
        Cache cache = new Cache();
        this.mCache = cache;
        this.mGoal = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new LinearSystem$ValuesRow(cache);
        } else {
            this.mTempGoal = new ArrayRow(cache);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SolverVariable acquireSolverVariable(SolverVariable$Type solverVariable$Type, String str) {
        SolverVariable solverVariableAcquire = this.mCache.mSolverVariablePool.acquire();
        if (solverVariableAcquire == null) {
            solverVariableAcquire = new SolverVariable(solverVariable$Type, str);
            solverVariableAcquire.setType(solverVariable$Type, str);
        } else {
            solverVariableAcquire.reset();
            solverVariableAcquire.setType(solverVariable$Type, str);
        }
        int i9 = this.mPoolVariablesCount;
        int i10 = this.mPoolSize;
        if (i9 >= i10) {
            int i11 = i10 * 2;
            this.mPoolSize = i11;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, i11);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i12 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i12 + 1;
        solverVariableArr[i12] = solverVariableAcquire;
        return solverVariableAcquire;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addRow(ArrayRow arrayRow) {
        int i9;
        if (SIMPLIFY_SYNONYMS && arrayRow.mIsSimpleDefinition) {
            arrayRow.mVariable.setFinalValue(this, arrayRow.mConstantValue);
        } else {
            ArrayRow[] arrayRowArr = this.mRows;
            int i10 = this.mNumRows;
            arrayRowArr[i10] = arrayRow;
            SolverVariable solverVariable = arrayRow.mVariable;
            solverVariable.mDefinitionId = i10;
            this.mNumRows = i10 + 1;
            solverVariable.updateReferencesWithNewDefinition(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int i11 = 0;
            while (i11 < this.mNumRows) {
                if (this.mRows[i11] == null) {
                    System.out.println("WTF");
                }
                ArrayRow arrayRow2 = this.mRows[i11];
                if (arrayRow2 != null && arrayRow2.mIsSimpleDefinition) {
                    arrayRow2.mVariable.setFinalValue(this, arrayRow2.mConstantValue);
                    boolean z8 = OPTIMIZED_ENGINE;
                    Cache cache = this.mCache;
                    if (z8) {
                        cache.mOptimizedArrayRowPool.release(arrayRow2);
                    } else {
                        cache.mArrayRowPool.release(arrayRow2);
                    }
                    this.mRows[i11] = null;
                    int i12 = i11 + 1;
                    int i13 = i12;
                    while (true) {
                        i9 = this.mNumRows;
                        if (i12 >= i9) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.mRows;
                        int i14 = i12 - 1;
                        ArrayRow arrayRow3 = arrayRowArr2[i12];
                        arrayRowArr2[i14] = arrayRow3;
                        SolverVariable solverVariable2 = arrayRow3.mVariable;
                        if (solverVariable2.mDefinitionId == i12) {
                            solverVariable2.mDefinitionId = i14;
                        }
                        i13 = i12;
                        i12++;
                    }
                    if (i13 < i9) {
                        this.mRows[i13] = null;
                    }
                    this.mNumRows = i9 - 1;
                    i11--;
                }
                i11++;
            }
            this.hasSimpleDefinition = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void computeValues() {
        for (int i9 = 0; i9 < this.mNumRows; i9++) {
            ArrayRow arrayRow = this.mRows[i9];
            arrayRow.mVariable.computedValue = arrayRow.mConstantValue;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f8) {
        return linearSystem.createRow().createRowDimensionPercent(solverVariable, solverVariable2, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SolverVariable createVariable(String str, SolverVariable$Type solverVariable$Type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(solverVariable$Type, null);
        solverVariableAcquireSolverVariable.setName(str);
        int i9 = this.mVariablesID + 1;
        this.mVariablesID = i9;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i9;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, solverVariableAcquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void displayRows() {
        displaySolverVariables();
        String strConcat = "";
        for (int i9 = 0; i9 < this.mNumRows; i9++) {
            StringBuilder sbU = a.u(strConcat);
            sbU.append(this.mRows[i9]);
            strConcat = sbU.toString().concat("\n");
        }
        StringBuilder sbU2 = a.u(strConcat);
        sbU2.append(this.mGoal);
        sbU2.append("\n");
        System.out.println(sbU2.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void displaySolverVariables() {
        StringBuilder sb = new StringBuilder("Display Rows (");
        sb.append(this.mNumRows);
        sb.append("x");
        System.out.println(a.o(sb, ")\n", this.mNumColumns));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int enforceBFS(LinearSystem$Row linearSystem$Row) {
        float f8;
        long j9;
        for (int i9 = 0; i9 < this.mNumRows; i9++) {
            ArrayRow arrayRow = this.mRows[i9];
            if (arrayRow.mVariable.mType != SolverVariable$Type.UNRESTRICTED) {
                float f9 = 0.0f;
                if (arrayRow.mConstantValue < 0.0f) {
                    boolean z8 = false;
                    int i10 = 0;
                    while (!z8) {
                        Metrics metrics = sMetrics;
                        long j10 = 1;
                        if (metrics != null) {
                            metrics.bfs++;
                        }
                        i10++;
                        float f10 = Float.MAX_VALUE;
                        int i11 = 0;
                        int i12 = -1;
                        int i13 = -1;
                        int i14 = 0;
                        while (true) {
                            if (i11 >= this.mNumRows) {
                                break;
                            }
                            ArrayRow arrayRow2 = this.mRows[i11];
                            if (arrayRow2.mVariable.mType == SolverVariable$Type.UNRESTRICTED || arrayRow2.mIsSimpleDefinition || arrayRow2.mConstantValue >= f9) {
                                f8 = f9;
                                j9 = j10;
                            } else if (SKIP_COLUMNS) {
                                int currentSize = arrayRow2.variables.getCurrentSize();
                                int i15 = 0;
                                while (i15 < currentSize) {
                                    float f11 = f9;
                                    SolverVariable variable = arrayRow2.variables.getVariable(i15);
                                    long j11 = j10;
                                    float f12 = arrayRow2.variables.get(variable);
                                    if (f12 > f11) {
                                        for (int i16 = 0; i16 < 9; i16++) {
                                            float f13 = variable.mStrengthVector[i16] / f12;
                                            if ((f13 < f10 && i16 == i14) || i16 > i14) {
                                                i14 = i16;
                                                i13 = variable.id;
                                                i12 = i11;
                                                f10 = f13;
                                            }
                                        }
                                    }
                                    i15++;
                                    f9 = f11;
                                    j10 = j11;
                                }
                                f8 = f9;
                                j9 = j10;
                            } else {
                                f8 = f9;
                                j9 = j10;
                                for (int i17 = 1; i17 < this.mNumColumns; i17++) {
                                    SolverVariable solverVariable = this.mCache.mIndexedVariables[i17];
                                    float f14 = arrayRow2.variables.get(solverVariable);
                                    if (f14 > f8) {
                                        for (int i18 = 0; i18 < 9; i18++) {
                                            float f15 = solverVariable.mStrengthVector[i18] / f14;
                                            if ((f15 < f10 && i18 == i14) || i18 > i14) {
                                                i14 = i18;
                                                f10 = f15;
                                                i12 = i11;
                                                i13 = i17;
                                            }
                                        }
                                    }
                                }
                            }
                            i11++;
                            f9 = f8;
                            j10 = j9;
                        }
                        float f16 = f9;
                        long j12 = j10;
                        if (i12 != -1) {
                            ArrayRow arrayRow3 = this.mRows[i12];
                            arrayRow3.mVariable.mDefinitionId = -1;
                            Metrics metrics2 = sMetrics;
                            if (metrics2 != null) {
                                metrics2.pivots += j12;
                            }
                            arrayRow3.pivot(this.mCache.mIndexedVariables[i13]);
                            SolverVariable solverVariable2 = arrayRow3.mVariable;
                            solverVariable2.mDefinitionId = i12;
                            solverVariable2.updateReferencesWithNewDefinition(this, arrayRow3);
                        } else {
                            z8 = true;
                        }
                        if (i10 > this.mNumColumns / 2) {
                            z8 = true;
                        }
                        f9 = f16;
                    }
                    return i10;
                }
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getDisplaySize(int i9) {
        int i10 = i9 * 4;
        int i11 = i10 / 1024;
        int i12 = i11 / 1024;
        if (i12 > 0) {
            return a.f(i12, "", " Mb");
        }
        return i11 > 0 ? a.f(i11, "", " Kb") : a.f(i10, "", " bytes");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getDisplayStrength(int i9) {
        if (i9 == 1) {
            return "LOW";
        }
        if (i9 == 2) {
            return "MEDIUM";
        }
        if (i9 == 3) {
            return "HIGH";
        }
        if (i9 == 4) {
            return "HIGHEST";
        }
        if (i9 == 5) {
            return "EQUALITY";
        }
        if (i9 == 8) {
            return "FIXED";
        }
        return i9 == 6 ? "BARRIER" : "NONE";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Metrics getMetrics() {
        return sMetrics;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void increaseTableSize() {
        int i9 = this.mTableSize * 2;
        this.mTableSize = i9;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, i9);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.mTableSize);
        int i10 = this.mTableSize;
        this.mAlreadyTestedCandidates = new boolean[i10];
        this.mMaxColumns = i10;
        this.mMaxRows = i10;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            metrics.maxTableSize = Math.max(metrics.maxTableSize, i10);
            Metrics metrics2 = sMetrics;
            metrics2.lastTableSize = metrics2.maxTableSize;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int optimize(LinearSystem$Row linearSystem$Row, boolean z8) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int i9 = 0; i9 < this.mNumColumns; i9++) {
            this.mAlreadyTestedCandidates[i9] = false;
        }
        boolean z9 = false;
        int i10 = 0;
        while (!z9) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            i10++;
            if (i10 < this.mNumColumns * 2) {
                if (linearSystem$Row.getKey() != null) {
                    this.mAlreadyTestedCandidates[linearSystem$Row.getKey().id] = true;
                }
                SolverVariable pivotCandidate = linearSystem$Row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
                if (pivotCandidate != null) {
                    boolean[] zArr = this.mAlreadyTestedCandidates;
                    int i11 = pivotCandidate.id;
                    if (!zArr[i11]) {
                        zArr[i11] = true;
                    }
                }
                if (pivotCandidate != null) {
                    float f8 = Float.MAX_VALUE;
                    int i12 = -1;
                    for (int i13 = 0; i13 < this.mNumRows; i13++) {
                        ArrayRow arrayRow = this.mRows[i13];
                        if (arrayRow.mVariable.mType != SolverVariable$Type.UNRESTRICTED && !arrayRow.mIsSimpleDefinition && arrayRow.hasVariable(pivotCandidate)) {
                            float f9 = arrayRow.variables.get(pivotCandidate);
                            if (f9 < 0.0f) {
                                float f10 = (-arrayRow.mConstantValue) / f9;
                                if (f10 < f8) {
                                    i12 = i13;
                                    f8 = f10;
                                }
                            }
                        }
                    }
                    if (i12 > -1) {
                        ArrayRow arrayRow2 = this.mRows[i12];
                        arrayRow2.mVariable.mDefinitionId = -1;
                        Metrics metrics3 = sMetrics;
                        if (metrics3 != null) {
                            metrics3.pivots++;
                        }
                        arrayRow2.pivot(pivotCandidate);
                        SolverVariable solverVariable = arrayRow2.mVariable;
                        solverVariable.mDefinitionId = i12;
                        solverVariable.updateReferencesWithNewDefinition(this, arrayRow2);
                    }
                } else {
                    z9 = true;
                }
            }
            return i10;
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void releaseRows() {
        int i9 = 0;
        if (OPTIMIZED_ENGINE) {
            while (i9 < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[i9];
                if (arrayRow != null) {
                    this.mCache.mOptimizedArrayRowPool.release(arrayRow);
                }
                this.mRows[i9] = null;
                i9++;
            }
            return;
        }
        while (i9 < this.mNumRows) {
            ArrayRow arrayRow2 = this.mRows[i9];
            if (arrayRow2 != null) {
                this.mCache.mArrayRowPool.release(arrayRow2);
            }
            this.mRows[i9] = null;
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f8, int i9) {
        ConstraintAnchor$Type constraintAnchor$Type = ConstraintAnchor$Type.LEFT;
        SolverVariable solverVariableCreateObjectVariable = createObjectVariable(constraintWidget.getAnchor(constraintAnchor$Type));
        ConstraintAnchor$Type constraintAnchor$Type2 = ConstraintAnchor$Type.TOP;
        SolverVariable solverVariableCreateObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(constraintAnchor$Type2));
        ConstraintAnchor$Type constraintAnchor$Type3 = ConstraintAnchor$Type.RIGHT;
        SolverVariable solverVariableCreateObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(constraintAnchor$Type3));
        ConstraintAnchor$Type constraintAnchor$Type4 = ConstraintAnchor$Type.BOTTOM;
        SolverVariable solverVariableCreateObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(constraintAnchor$Type4));
        SolverVariable solverVariableCreateObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(constraintAnchor$Type));
        SolverVariable solverVariableCreateObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(constraintAnchor$Type2));
        SolverVariable solverVariableCreateObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(constraintAnchor$Type3));
        SolverVariable solverVariableCreateObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(constraintAnchor$Type4));
        ArrayRow arrayRowCreateRow = createRow();
        double d = f8;
        double d9 = i9;
        arrayRowCreateRow.createRowWithAngle(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable8, (float) (Math.sin(d) * d9));
        addConstraint(arrayRowCreateRow);
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowWithAngle(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, solverVariableCreateObjectVariable7, (float) (Math.cos(d) * d9));
        addConstraint(arrayRowCreateRow2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, float f8, SolverVariable solverVariable3, SolverVariable solverVariable4, int i10, int i11) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, i9, f8, solverVariable3, solverVariable4, i10);
        if (i11 != 8) {
            arrayRowCreateRow.addError(this, i11);
        }
        addConstraint(arrayRowCreateRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:41:0x0098  */
    public void addConstraint(ArrayRow arrayRow) {
        SolverVariable solverVariablePickPivot;
        if (arrayRow == null) {
            return;
        }
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.constraints++;
            if (arrayRow.mIsSimpleDefinition) {
                metrics.simpleconstraints++;
            }
        }
        boolean z8 = true;
        if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        boolean z9 = false;
        if (!arrayRow.mIsSimpleDefinition) {
            arrayRow.updateFromSystem(this);
            if (arrayRow.isEmpty()) {
                return;
            }
            arrayRow.ensurePositiveConstant();
            if (arrayRow.chooseSubject(this)) {
                SolverVariable solverVariableCreateExtraVariable = createExtraVariable();
                arrayRow.mVariable = solverVariableCreateExtraVariable;
                int i9 = this.mNumRows;
                addRow(arrayRow);
                if (this.mNumRows == i9 + 1) {
                    this.mTempGoal.initFromRow(arrayRow);
                    optimize(this.mTempGoal, true);
                    if (solverVariableCreateExtraVariable.mDefinitionId == -1) {
                        if (arrayRow.mVariable == solverVariableCreateExtraVariable && (solverVariablePickPivot = arrayRow.pickPivot(solverVariableCreateExtraVariable)) != null) {
                            Metrics metrics2 = sMetrics;
                            if (metrics2 != null) {
                                metrics2.pivots++;
                            }
                            arrayRow.pivot(solverVariablePickPivot);
                        }
                        if (!arrayRow.mIsSimpleDefinition) {
                            arrayRow.mVariable.updateReferencesWithNewDefinition(this, arrayRow);
                        }
                        boolean z10 = OPTIMIZED_ENGINE;
                        Cache cache = this.mCache;
                        if (z10) {
                            cache.mOptimizedArrayRowPool.release(arrayRow);
                        } else {
                            cache.mArrayRowPool.release(arrayRow);
                        }
                        this.mNumRows--;
                    }
                } else {
                    z8 = false;
                }
            } else {
                z8 = false;
            }
            if (!arrayRow.hasKeyVariable()) {
                return;
            } else {
                z9 = z8;
            }
        }
        if (z9) {
            return;
        }
        addRow(arrayRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addEquality(SolverVariable solverVariable, int i9) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.mSimpleEquations++;
        }
        if (USE_BASIC_SYNONYMS && solverVariable.mDefinitionId == -1) {
            float f8 = i9;
            solverVariable.setFinalValue(this, f8);
            for (int i10 = 0; i10 < this.mVariablesID + 1; i10++) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[i10];
                if (solverVariable2 != null && solverVariable2.mIsSynonym && solverVariable2.mSynonym == solverVariable.id) {
                    solverVariable2.setFinalValue(this, solverVariable2.mSynonymDelta + f8);
                }
            }
            return;
        }
        int i11 = solverVariable.mDefinitionId;
        if (i11 == -1) {
            ArrayRow arrayRowCreateRow = createRow();
            arrayRowCreateRow.createRowDefinition(solverVariable, i9);
            addConstraint(arrayRowCreateRow);
            return;
        }
        ArrayRow arrayRow = this.mRows[i11];
        if (arrayRow.mIsSimpleDefinition) {
            arrayRow.mConstantValue = i9;
            return;
        }
        if (arrayRow.variables.getCurrentSize() == 0) {
            arrayRow.mIsSimpleDefinition = true;
            arrayRow.mConstantValue = i9;
        } else {
            ArrayRow arrayRowCreateRow2 = createRow();
            arrayRowCreateRow2.createRowEquals(solverVariable, i9);
            addConstraint(arrayRowCreateRow2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, boolean z8) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i9);
        addConstraint(arrayRowCreateRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, int i10) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i9);
        if (i10 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), i10);
        }
        addConstraint(arrayRowCreateRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, boolean z8) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i9);
        addConstraint(arrayRowCreateRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, int i10) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i9);
        if (i10 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), i10);
        }
        addConstraint(arrayRowCreateRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f8, int i9) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f8);
        if (i9 != 8) {
            arrayRowCreateRow.addError(this, i9);
        }
        addConstraint(arrayRowCreateRow);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addSingleError(ArrayRow arrayRow, int i9, int i10) {
        arrayRow.addSingleError(createErrorVariable(i10, null), i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addSynonym(SolverVariable solverVariable, SolverVariable solverVariable2, int i9) {
        if (solverVariable.mDefinitionId != -1 || i9 != 0) {
            addEquality(solverVariable, solverVariable2, i9, 8);
            return;
        }
        if (solverVariable2.mIsSynonym) {
            solverVariable2 = this.mCache.mIndexedVariables[solverVariable2.mSynonym];
        }
        if (solverVariable.mIsSynonym) {
            SolverVariable solverVariable3 = this.mCache.mIndexedVariables[solverVariable.mSynonym];
        } else {
            solverVariable.setSynonym(this, solverVariable2, 0.0f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void cleanupRows() {
        int i9;
        ArrayRow[] arrayRowArr;
        int i10 = 0;
        while (i10 < this.mNumRows) {
            ArrayRow arrayRow = this.mRows[i10];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.mIsSimpleDefinition = true;
            }
            if (arrayRow.mIsSimpleDefinition) {
                SolverVariable solverVariable = arrayRow.mVariable;
                solverVariable.computedValue = arrayRow.mConstantValue;
                solverVariable.removeFromRow(arrayRow);
                int i11 = i10;
                while (true) {
                    i9 = this.mNumRows;
                    int i12 = i9 - 1;
                    arrayRowArr = this.mRows;
                    if (i11 >= i12) {
                        break;
                    }
                    int i13 = i11 + 1;
                    arrayRowArr[i11] = arrayRowArr[i13];
                    i11 = i13;
                }
                arrayRowArr[i9 - 1] = null;
                this.mNumRows = i9 - 1;
                i10--;
                boolean z8 = OPTIMIZED_ENGINE;
                Cache cache = this.mCache;
                if (z8) {
                    cache.mOptimizedArrayRowPool.release(arrayRow);
                } else {
                    cache.mArrayRowPool.release(arrayRow);
                }
            }
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable createErrorVariable(int i9, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable$Type.ERROR, str);
        int i10 = this.mVariablesID + 1;
        this.mVariablesID = i10;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i10;
        solverVariableAcquireSolverVariable.strength = i9;
        this.mCache.mIndexedVariables[i10] = solverVariableAcquireSolverVariable;
        this.mGoal.addError(solverVariableAcquireSolverVariable);
        return solverVariableAcquireSolverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable$Type.SLACK, null);
        int i9 = this.mVariablesID + 1;
        this.mVariablesID = i9;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i9;
        this.mCache.mIndexedVariables[i9] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.mCache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            int i9 = solverVariable.id;
            if (i9 != -1 && i9 <= this.mVariablesID && this.mCache.mIndexedVariables[i9] != null) {
                return solverVariable;
            }
            if (i9 != -1) {
                solverVariable.reset();
            }
            int i10 = this.mVariablesID + 1;
            this.mVariablesID = i10;
            this.mNumColumns++;
            solverVariable.id = i10;
            solverVariable.mType = SolverVariable$Type.UNRESTRICTED;
            this.mCache.mIndexedVariables[i10] = solverVariable;
        }
        return solverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow createRow() {
        ArrayRow arrayRowAcquire;
        boolean z8 = OPTIMIZED_ENGINE;
        Cache cache = this.mCache;
        if (z8) {
            arrayRowAcquire = cache.mOptimizedArrayRowPool.acquire();
            if (arrayRowAcquire == null) {
                arrayRowAcquire = new LinearSystem$ValuesRow(this.mCache);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                arrayRowAcquire.reset();
            }
        } else {
            arrayRowAcquire = cache.mArrayRowPool.acquire();
            if (arrayRowAcquire == null) {
                arrayRowAcquire = new ArrayRow(this.mCache);
                ARRAY_ROW_CREATION++;
            } else {
                arrayRowAcquire.reset();
            }
        }
        SolverVariable.increaseErrorId();
        return arrayRowAcquire;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable$Type.SLACK, null);
        int i9 = this.mVariablesID + 1;
        this.mVariablesID = i9;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i9;
        this.mCache.mIndexedVariables[i9] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void displayReadableRows() {
        displaySolverVariables();
        String strO = a.o(new StringBuilder(" num vars "), "\n", this.mVariablesID);
        for (int i9 = 0; i9 < this.mVariablesID + 1; i9++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i9];
            if (solverVariable != null && solverVariable.isFinalValue) {
                strO = strO + " $[" + i9 + "] => " + solverVariable + " = " + solverVariable.computedValue + "\n";
            }
        }
        String strC = a.C(strO, "\n");
        for (int i10 = 0; i10 < this.mVariablesID + 1; i10++) {
            SolverVariable[] solverVariableArr = this.mCache.mIndexedVariables;
            SolverVariable solverVariable2 = solverVariableArr[i10];
            if (solverVariable2 != null && solverVariable2.mIsSynonym) {
                strC = strC + " ~[" + i10 + "] => " + solverVariable2 + " = " + solverVariableArr[solverVariable2.mSynonym] + " + " + solverVariable2.mSynonymDelta + "\n";
            }
        }
        String strC2 = a.C(strC, "\n\n #  ");
        for (int i11 = 0; i11 < this.mNumRows; i11++) {
            StringBuilder sbU = a.u(strC2);
            sbU.append(this.mRows[i11].toReadableString());
            strC2 = sbU.toString().concat("\n #  ");
        }
        if (this.mGoal != null) {
            StringBuilder sbW = a.w(strC2, "Goal: ");
            sbW.append(this.mGoal);
            sbW.append("\n");
            strC2 = sbW.toString();
        }
        System.out.println(strC2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void displaySystemInformation() {
        int iSizeInBytes = 0;
        for (int i9 = 0; i9 < this.mTableSize; i9++) {
            ArrayRow arrayRow = this.mRows[i9];
            if (arrayRow != null) {
                iSizeInBytes += arrayRow.sizeInBytes();
            }
        }
        int iSizeInBytes2 = 0;
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            ArrayRow arrayRow2 = this.mRows[i10];
            if (arrayRow2 != null) {
                iSizeInBytes2 += arrayRow2.sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder("Linear System -> Table size: ");
        sb.append(this.mTableSize);
        sb.append(" (");
        int i11 = this.mTableSize;
        sb.append(getDisplaySize(i11 * i11));
        sb.append(") -- row sizes: ");
        sb.append(getDisplaySize(iSizeInBytes));
        sb.append(", actual size: ");
        sb.append(getDisplaySize(iSizeInBytes2));
        sb.append(" rows: ");
        sb.append(this.mNumRows);
        sb.append("/");
        sb.append(this.mMaxRows);
        sb.append(" cols: ");
        sb.append(this.mNumColumns);
        sb.append("/");
        sb.append(this.mMaxColumns);
        sb.append(" 0 occupied cells, ");
        sb.append(getDisplaySize(0));
        printStream.println(sb.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String strConcat = "";
        for (int i9 = 0; i9 < this.mNumRows; i9++) {
            if (this.mRows[i9].mVariable.mType == SolverVariable$Type.UNRESTRICTED) {
                StringBuilder sbU = a.u(strConcat);
                sbU.append(this.mRows[i9].toReadableString());
                strConcat = sbU.toString().concat("\n");
            }
        }
        StringBuilder sbU2 = a.u(strConcat);
        sbU2.append(this.mGoal);
        sbU2.append("\n");
        System.out.println(sbU2.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Cache getCache() {
        return this.mCache;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearSystem$Row getGoal() {
        return this.mGoal;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMemoryUsed() {
        int iSizeInBytes = 0;
        for (int i9 = 0; i9 < this.mNumRows; i9++) {
            ArrayRow arrayRow = this.mRows[i9];
            if (arrayRow != null) {
                iSizeInBytes = arrayRow.sizeInBytes() + iSizeInBytes;
            }
        }
        return iSizeInBytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getNumEquations() {
        return this.mNumRows;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getNumVariables() {
        return this.mVariablesID;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayRow getRow(int i9) {
        return this.mRows[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable$Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable getVariable(String str, SolverVariable$Type solverVariable$Type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, solverVariable$Type) : solverVariable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void minimize() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.mGoal.isEmpty()) {
            computeValues();
            return;
        }
        if (!this.graphOptimizer && !this.newgraphOptimizer) {
            minimizeGoal(this.mGoal);
            return;
        }
        Metrics metrics2 = sMetrics;
        if (metrics2 != null) {
            metrics2.graphOptimizer++;
        }
        for (int i9 = 0; i9 < this.mNumRows; i9++) {
            if (!this.mRows[i9].mIsSimpleDefinition) {
                minimizeGoal(this.mGoal);
                return;
            }
        }
        Metrics metrics3 = sMetrics;
        if (metrics3 != null) {
            metrics3.fullySolved++;
        }
        computeValues();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void minimizeGoal(LinearSystem$Row linearSystem$Row) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            metrics.maxVariables = Math.max(metrics.maxVariables, this.mNumColumns);
            Metrics metrics2 = sMetrics;
            metrics2.maxRows = Math.max(metrics2.maxRows, this.mNumRows);
        }
        enforceBFS(linearSystem$Row);
        optimize(linearSystem$Row, false);
        computeValues();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeRow(ArrayRow arrayRow) {
        SolverVariable solverVariable;
        int i9;
        if (!arrayRow.mIsSimpleDefinition || (solverVariable = arrayRow.mVariable) == null) {
            return;
        }
        int i10 = solverVariable.mDefinitionId;
        if (i10 != -1) {
            while (true) {
                i9 = this.mNumRows;
                if (i10 >= i9 - 1) {
                    break;
                }
                ArrayRow[] arrayRowArr = this.mRows;
                int i11 = i10 + 1;
                ArrayRow arrayRow2 = arrayRowArr[i11];
                SolverVariable solverVariable2 = arrayRow2.mVariable;
                if (solverVariable2.mDefinitionId == i11) {
                    solverVariable2.mDefinitionId = i10;
                }
                arrayRowArr[i10] = arrayRow2;
                i10 = i11;
            }
            this.mNumRows = i9 - 1;
        }
        SolverVariable solverVariable3 = arrayRow.mVariable;
        if (!solverVariable3.isFinalValue) {
            solverVariable3.setFinalValue(this, arrayRow.mConstantValue);
        }
        boolean z8 = OPTIMIZED_ENGINE;
        Cache cache = this.mCache;
        if (z8) {
            cache.mOptimizedArrayRowPool.release(arrayRow);
        } else {
            cache.mArrayRowPool.release(arrayRow);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        Cache cache;
        int i9 = 0;
        while (true) {
            cache = this.mCache;
            SolverVariable[] solverVariableArr = cache.mIndexedVariables;
            if (i9 >= solverVariableArr.length) {
                break;
            }
            SolverVariable solverVariable = solverVariableArr[i9];
            if (solverVariable != null) {
                solverVariable.reset();
            }
            i9++;
        }
        cache.mSolverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> map = this.mVariables;
        if (map != null) {
            map.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int i10 = 0; i10 < this.mNumRows; i10++) {
            ArrayRow arrayRow = this.mRows[i10];
            if (arrayRow != null) {
                arrayRow.mUsed = false;
            }
        }
        releaseRows();
        this.mNumRows = 0;
        boolean z8 = OPTIMIZED_ENGINE;
        Cache cache2 = this.mCache;
        if (z8) {
            this.mTempGoal = new LinearSystem$ValuesRow(cache2);
        } else {
            this.mTempGoal = new ArrayRow(cache2);
        }
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i9, int i10) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.mSimpleEquations++;
        }
        if (USE_BASIC_SYNONYMS && i10 == 8 && solverVariable2.isFinalValue && solverVariable.mDefinitionId == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i9);
            return null;
        }
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, i9);
        if (i10 != 8) {
            arrayRowCreateRow.addError(this, i10);
        }
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }
}
