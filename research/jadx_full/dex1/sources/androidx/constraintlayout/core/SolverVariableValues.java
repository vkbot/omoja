package androidx.constraintlayout.core;

import ai.onnxruntime.a;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SolverVariableValues implements ArrayRow$ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean HASH = true;
    private static float sEpsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    private final int mNone = -1;
    private int mSize = 16;
    private int mHashSize = 16;
    int[] mKeys = new int[16];
    int[] mNextKeys = new int[16];
    int[] mVariables = new int[16];
    float[] mValues = new float[16];
    int[] mPrevious = new int[16];
    int[] mNext = new int[16];
    int mCount = 0;
    int mHead = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariableValues(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
        clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addToHashMap(SolverVariable solverVariable, int i9) {
        int[] iArr;
        int i10 = solverVariable.id % this.mHashSize;
        int[] iArr2 = this.mKeys;
        int i11 = iArr2[i10];
        if (i11 == -1) {
            iArr2[i10] = i9;
        } else {
            while (true) {
                iArr = this.mNextKeys;
                int i12 = iArr[i11];
                if (i12 == -1) {
                    break;
                } else {
                    i11 = i12;
                }
            }
            iArr[i11] = i9;
        }
        this.mNextKeys[i9] = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addVariable(int i9, SolverVariable solverVariable, float f8) {
        this.mVariables[i9] = solverVariable.id;
        this.mValues[i9] = f8;
        this.mPrevious[i9] = -1;
        this.mNext[i9] = -1;
        solverVariable.addToRow(this.mRow);
        solverVariable.usageInRowCount++;
        this.mCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void displayHash() {
        for (int i9 = 0; i9 < this.mHashSize; i9++) {
            if (this.mKeys[i9] != -1) {
                String string = hashCode() + " hash [" + i9 + "] => ";
                int i10 = this.mKeys[i9];
                boolean z8 = false;
                while (!z8) {
                    StringBuilder sbW = a.w(string, " ");
                    sbW.append(this.mVariables[i10]);
                    string = sbW.toString();
                    int i11 = this.mNextKeys[i10];
                    if (i11 != -1) {
                        i10 = i11;
                    } else {
                        z8 = true;
                    }
                }
                System.out.println(string);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int findEmptySlot() {
        for (int i9 = 0; i9 < this.mSize; i9++) {
            if (this.mVariables[i9] == -1) {
                return i9;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void increaseSize() {
        int i9 = this.mSize * 2;
        this.mVariables = Arrays.copyOf(this.mVariables, i9);
        this.mValues = Arrays.copyOf(this.mValues, i9);
        this.mPrevious = Arrays.copyOf(this.mPrevious, i9);
        this.mNext = Arrays.copyOf(this.mNext, i9);
        this.mNextKeys = Arrays.copyOf(this.mNextKeys, i9);
        for (int i10 = this.mSize; i10 < i9; i10++) {
            this.mVariables[i10] = -1;
            this.mNextKeys[i10] = -1;
        }
        this.mSize = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void insertVariable(int i9, SolverVariable solverVariable, float f8) {
        int iFindEmptySlot = findEmptySlot();
        addVariable(iFindEmptySlot, solverVariable, f8);
        int[] iArr = this.mPrevious;
        if (i9 != -1) {
            iArr[iFindEmptySlot] = i9;
            int[] iArr2 = this.mNext;
            iArr2[iFindEmptySlot] = iArr2[i9];
            iArr2[i9] = iFindEmptySlot;
        } else {
            iArr[iFindEmptySlot] = -1;
            int i10 = this.mCount;
            int[] iArr3 = this.mNext;
            if (i10 > 0) {
                iArr3[iFindEmptySlot] = this.mHead;
                this.mHead = iFindEmptySlot;
            } else {
                iArr3[iFindEmptySlot] = -1;
            }
        }
        int i11 = this.mNext[iFindEmptySlot];
        if (i11 != -1) {
            this.mPrevious[i11] = iFindEmptySlot;
        }
        addToHashMap(solverVariable, iFindEmptySlot);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void removeFromHashMap(SolverVariable solverVariable) {
        int[] iArr;
        int i9;
        int i10 = solverVariable.id;
        int i11 = i10 % this.mHashSize;
        int[] iArr2 = this.mKeys;
        int i12 = iArr2[i11];
        if (i12 == -1) {
            return;
        }
        if (this.mVariables[i12] == i10) {
            int[] iArr3 = this.mNextKeys;
            iArr2[i11] = iArr3[i12];
            iArr3[i12] = -1;
            return;
        }
        while (true) {
            iArr = this.mNextKeys;
            i9 = iArr[i12];
            if (i9 == -1 || this.mVariables[i9] == i10) {
                break;
            } else {
                i12 = i9;
            }
        }
        if (i9 == -1 || this.mVariables[i9] != i10) {
            return;
        }
        iArr[i12] = iArr[i9];
        iArr[i9] = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public void add(SolverVariable solverVariable, float f8, boolean z8) {
        float f9 = sEpsilon;
        if (f8 <= (-f9) || f8 >= f9) {
            int iIndexOf = indexOf(solverVariable);
            if (iIndexOf == -1) {
                put(solverVariable, f8);
                return;
            }
            float[] fArr = this.mValues;
            float f10 = fArr[iIndexOf] + f8;
            fArr[iIndexOf] = f10;
            float f11 = sEpsilon;
            if (f10 <= (-f11) || f10 >= f11) {
                return;
            }
            fArr[iIndexOf] = 0.0f;
            remove(solverVariable, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public void clear() {
        int i9 = this.mCount;
        for (int i10 = 0; i10 < i9; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                variable.removeFromRow(this.mRow);
            }
        }
        for (int i11 = 0; i11 < this.mSize; i11++) {
            this.mVariables[i11] = -1;
            this.mNextKeys[i11] = -1;
        }
        for (int i12 = 0; i12 < this.mHashSize; i12++) {
            this.mKeys[i12] = -1;
        }
        this.mCount = 0;
        this.mHead = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        return indexOf(solverVariable) != -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public void display() {
        int i9 = this.mCount;
        System.out.print("{ ");
        for (int i10 = 0; i10 < i9; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(i10) + " ");
            }
        }
        System.out.println(" }");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public void divideByAmount(float f8) {
        int i9 = this.mCount;
        int i10 = this.mHead;
        for (int i11 = 0; i11 < i9; i11++) {
            float[] fArr = this.mValues;
            fArr[i10] = fArr[i10] / f8;
            i10 = this.mNext[i10];
            if (i10 == -1) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public float get(SolverVariable solverVariable) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            return this.mValues[iIndexOf];
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public int getCurrentSize() {
        return this.mCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public SolverVariable getVariable(int i9) {
        int i10 = this.mCount;
        if (i10 == 0) {
            return null;
        }
        int i11 = this.mHead;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == i9 && i11 != -1) {
                return this.mCache.mIndexedVariables[this.mVariables[i11]];
            }
            i11 = this.mNext[i11];
            if (i11 == -1) {
                break;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public float getVariableValue(int i9) {
        int i10 = this.mCount;
        int i11 = this.mHead;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i12 == i9) {
                return this.mValues[i11];
            }
            i11 = this.mNext[i11];
            if (i11 == -1) {
                return 0.0f;
            }
        }
        return 0.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.mCount != 0 && solverVariable != null) {
            int i9 = solverVariable.id;
            int i10 = this.mKeys[i9 % this.mHashSize];
            if (i10 == -1) {
                return -1;
            }
            if (this.mVariables[i10] == i9) {
                return i10;
            }
            do {
                i10 = this.mNextKeys[i10];
                if (i10 == -1) {
                    break;
                }
            } while (this.mVariables[i10] != i9);
            if (i10 != -1 && this.mVariables[i10] == i9) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public void invert() {
        int i9 = this.mCount;
        int i10 = this.mHead;
        for (int i11 = 0; i11 < i9; i11++) {
            float[] fArr = this.mValues;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.mNext[i10];
            if (i10 == -1) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public void put(SolverVariable solverVariable, float f8) {
        float f9 = sEpsilon;
        if (f8 > (-f9) && f8 < f9) {
            remove(solverVariable, true);
            return;
        }
        if (this.mCount == 0) {
            addVariable(0, solverVariable, f8);
            addToHashMap(solverVariable, 0);
            this.mHead = 0;
            return;
        }
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf != -1) {
            this.mValues[iIndexOf] = f8;
            return;
        }
        if (this.mCount + 1 >= this.mSize) {
            increaseSize();
        }
        int i9 = this.mCount;
        int i10 = this.mHead;
        int i11 = -1;
        for (int i12 = 0; i12 < i9; i12++) {
            int i13 = this.mVariables[i10];
            int i14 = solverVariable.id;
            if (i13 == i14) {
                this.mValues[i10] = f8;
                return;
            }
            if (i13 < i14) {
                i11 = i10;
            }
            i10 = this.mNext[i10];
            if (i10 == -1) {
                break;
            }
        }
        insertVariable(i11, solverVariable, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public float remove(SolverVariable solverVariable, boolean z8) {
        int iIndexOf = indexOf(solverVariable);
        if (iIndexOf == -1) {
            return 0.0f;
        }
        removeFromHashMap(solverVariable);
        float f8 = this.mValues[iIndexOf];
        if (this.mHead == iIndexOf) {
            this.mHead = this.mNext[iIndexOf];
        }
        this.mVariables[iIndexOf] = -1;
        int[] iArr = this.mPrevious;
        int i9 = iArr[iIndexOf];
        if (i9 != -1) {
            int[] iArr2 = this.mNext;
            iArr2[i9] = iArr2[iIndexOf];
        }
        int i10 = this.mNext[iIndexOf];
        if (i10 != -1) {
            iArr[i10] = iArr[iIndexOf];
        }
        this.mCount--;
        solverVariable.usageInRowCount--;
        if (z8) {
            solverVariable.removeFromRow(this.mRow);
        }
        return f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public int sizeInBytes() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String strConcat;
        String strConcat2;
        String strConcat3 = hashCode() + " { ";
        int i9 = this.mCount;
        for (int i10 = 0; i10 < i9; i10++) {
            SolverVariable variable = getVariable(i10);
            if (variable != null) {
                String str = strConcat3 + variable + " = " + getVariableValue(i10) + " ";
                int iIndexOf = indexOf(variable);
                String strConcat4 = str.concat("[p: ");
                if (this.mPrevious[iIndexOf] != -1) {
                    StringBuilder sbU = a.u(strConcat4);
                    sbU.append(this.mCache.mIndexedVariables[this.mVariables[this.mPrevious[iIndexOf]]]);
                    strConcat = sbU.toString();
                } else {
                    strConcat = strConcat4.concat("none");
                }
                String strConcat5 = strConcat.concat(", n: ");
                if (this.mNext[iIndexOf] != -1) {
                    StringBuilder sbU2 = a.u(strConcat5);
                    sbU2.append(this.mCache.mIndexedVariables[this.mVariables[this.mNext[iIndexOf]]]);
                    strConcat2 = sbU2.toString();
                } else {
                    strConcat2 = strConcat5.concat("none");
                }
                strConcat3 = strConcat2.concat("]");
            }
        }
        return a.C(strConcat3, " }");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.ArrayRow$ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z8) {
        float f8 = get(arrayRow.mVariable);
        remove(arrayRow.mVariable, z8);
        SolverVariableValues solverVariableValues = (SolverVariableValues) arrayRow.variables;
        int currentSize = solverVariableValues.getCurrentSize();
        int i9 = 0;
        int i10 = 0;
        while (i9 < currentSize) {
            int i11 = solverVariableValues.mVariables[i10];
            if (i11 != -1) {
                add(this.mCache.mIndexedVariables[i11], solverVariableValues.mValues[i10] * f8, z8);
                i9++;
            }
            i10++;
        }
        return f8;
    }
}
