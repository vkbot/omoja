package androidx.constraintlayout.core;

import ai.onnxruntime.a;
import androidx.exifinterface.media.ExifInterface;
import j1.i;
import java.util.Arrays;
import java.util.HashSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SolverVariable implements Comparable<SolverVariable> {
    private static final boolean DO_NOT_USE = false;
    private static final boolean INTERNAL_DEBUG = false;
    static final int MAX_STRENGTH = 9;
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static final boolean VAR_USE_HASH = false;
    private static int sUniqueConstantId = 1;
    private static int sUniqueErrorId = 1;
    private static int sUniqueId = 1;
    private static int sUniqueSlackId = 1;
    private static int sUniqueUnrestrictedId = 1;
    public float computedValue;
    public int id;
    public boolean inGoal;
    public boolean isFinalValue;
    ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    int mDefinitionId;
    float[] mGoalStrengthVector;
    HashSet<ArrayRow> mInRows;
    boolean mIsSynonym;
    private String mName;
    float[] mStrengthVector;
    int mSynonym;
    float mSynonymDelta;
    SolverVariable$Type mType;
    public int strength;
    public int usageInRowCount;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SolverVariable(String str, SolverVariable$Type solverVariable$Type) {
        this.id = -1;
        this.mDefinitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.mStrengthVector = new float[9];
        this.mGoalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mIsSynonym = false;
        this.mSynonym = -1;
        this.mSynonymDelta = 0.0f;
        this.mInRows = null;
        this.mName = str;
        this.mType = solverVariable$Type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String getUniqueName(SolverVariable$Type solverVariable$Type, String str) {
        if (str != null) {
            StringBuilder sbU = a.u(str);
            sbU.append(sUniqueErrorId);
            return sbU.toString();
        }
        int iOrdinal = solverVariable$Type.ordinal();
        if (iOrdinal == 0) {
            StringBuilder sb = new StringBuilder("U");
            int i9 = sUniqueUnrestrictedId + 1;
            sUniqueUnrestrictedId = i9;
            sb.append(i9);
            return sb.toString();
        }
        if (iOrdinal == 1) {
            StringBuilder sb2 = new StringBuilder("C");
            int i10 = sUniqueConstantId + 1;
            sUniqueConstantId = i10;
            sb2.append(i10);
            return sb2.toString();
        }
        if (iOrdinal == 2) {
            StringBuilder sb3 = new StringBuilder(ExifInterface.LATITUDE_SOUTH);
            int i11 = sUniqueSlackId + 1;
            sUniqueSlackId = i11;
            sb3.append(i11);
            return sb3.toString();
        }
        if (iOrdinal == 3) {
            StringBuilder sb4 = new StringBuilder("e");
            int i12 = sUniqueErrorId + 1;
            sUniqueErrorId = i12;
            sb4.append(i12);
            return sb4.toString();
        }
        if (iOrdinal != 4) {
            i.e(solverVariable$Type.name());
            return null;
        }
        StringBuilder sb5 = new StringBuilder(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        int i13 = sUniqueId + 1;
        sUniqueId = i13;
        sb5.append(i13);
        return sb5.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void increaseErrorId() {
        sUniqueErrorId++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void addToRow(ArrayRow arrayRow) {
        int i9 = 0;
        while (true) {
            int i10 = this.mClientEquationsCount;
            ArrayRow[] arrayRowArr = this.mClientEquations;
            if (i9 >= i10) {
                if (i10 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int i11 = this.mClientEquationsCount;
                arrayRowArr2[i11] = arrayRow;
                this.mClientEquationsCount = i11 + 1;
                return;
            }
            if (arrayRowArr[i9] == arrayRow) {
                return;
            } else {
                i9++;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearStrengths() {
        for (int i9 = 0; i9 < 9; i9++) {
            this.mStrengthVector[i9] = 0.0f;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(SolverVariable solverVariable) {
        return compareTo2(solverVariable);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.mName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void removeFromRow(ArrayRow arrayRow) {
        int i9 = this.mClientEquationsCount;
        int i10 = 0;
        while (i10 < i9) {
            if (this.mClientEquations[i10] == arrayRow) {
                while (i10 < i9 - 1) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int i11 = i10 + 1;
                    arrayRowArr[i10] = arrayRowArr[i11];
                    i10 = i11;
                }
                this.mClientEquationsCount--;
                return;
            }
            i10++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void reset() {
        this.mName = null;
        this.mType = SolverVariable$Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.mDefinitionId = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        this.mIsSynonym = false;
        this.mSynonym = -1;
        this.mSynonymDelta = 0.0f;
        int i9 = this.mClientEquationsCount;
        for (int i10 = 0; i10 < i9; i10++) {
            this.mClientEquations[i10] = null;
        }
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.mGoalStrengthVector, 0.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFinalValue(LinearSystem linearSystem, float f8) {
        this.computedValue = f8;
        this.isFinalValue = true;
        this.mIsSynonym = false;
        this.mSynonym = -1;
        this.mSynonymDelta = 0.0f;
        int i9 = this.mClientEquationsCount;
        this.mDefinitionId = -1;
        for (int i10 = 0; i10 < i9; i10++) {
            this.mClientEquations[i10].updateFromFinalVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setName(String str) {
        this.mName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSynonym(LinearSystem linearSystem, SolverVariable solverVariable, float f8) {
        this.mIsSynonym = true;
        this.mSynonym = solverVariable.id;
        this.mSynonymDelta = f8;
        int i9 = this.mClientEquationsCount;
        this.mDefinitionId = -1;
        for (int i10 = 0; i10 < i9; i10++) {
            this.mClientEquations[i10].updateFromSynonymVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
        linearSystem.displayReadableRows();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(SolverVariable$Type solverVariable$Type, String str) {
        this.mType = solverVariable$Type;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String strengthsToString() {
        String strConcat = this + "[";
        int i9 = 0;
        boolean z8 = false;
        boolean z9 = true;
        while (i9 < this.mStrengthVector.length) {
            StringBuilder sbU = a.u(strConcat);
            sbU.append(this.mStrengthVector[i9]);
            String string = sbU.toString();
            float[] fArr = this.mStrengthVector;
            float f8 = fArr[i9];
            if (f8 > 0.0f) {
                z8 = false;
            } else if (f8 < 0.0f) {
                z8 = true;
            }
            if (f8 != 0.0f) {
                z9 = false;
            }
            strConcat = i9 < fArr.length - 1 ? string.concat(", ") : string.concat("] ");
            i9++;
        }
        if (z8) {
            strConcat = strConcat.concat(" (-)");
        }
        return z9 ? strConcat.concat(" (*)") : strConcat;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        if (this.mName != null) {
            return "" + this.mName;
        }
        return "" + this.id;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void updateReferencesWithNewDefinition(LinearSystem linearSystem, ArrayRow arrayRow) {
        int i9 = this.mClientEquationsCount;
        for (int i10 = 0; i10 < i9; i10++) {
            this.mClientEquations[i10].updateFromRow(linearSystem, arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public int compareTo2(SolverVariable solverVariable) {
        return this.id - solverVariable.id;
    }

    public SolverVariable(SolverVariable$Type solverVariable$Type, String str) {
        this.id = -1;
        this.mDefinitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.mStrengthVector = new float[9];
        this.mGoalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mIsSynonym = false;
        this.mSynonym = -1;
        this.mSynonymDelta = 0.0f;
        this.mInRows = null;
        this.mType = solverVariable$Type;
    }
}
