package androidx.constraintlayout.core.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GridEngine {
    private static final int DEFAULT_SIZE = 3;
    public static final int HORIZONTAL = 0;
    private static final int MAX_COLUMNS = 50;
    private static final int MAX_ROWS = 50;
    public static final int VERTICAL = 1;
    private int mColumns;
    private int mColumnsSet;
    private int[][] mConstraintMatrix;
    private int mNextAvailableIndex = 0;
    private int mNumWidgets;
    private int mOrientation;
    private boolean[][] mPositionMatrix;
    private int mRows;
    private int mRowsSet;
    private String mStrSkips;
    private String mStrSpans;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GridEngine(int i9, int i10, int i11) {
        this.mRowsSet = i9;
        this.mColumnsSet = i10;
        this.mNumWidgets = i11;
        if (i9 > 50) {
            this.mRowsSet = 3;
        }
        if (i10 > 50) {
            this.mColumnsSet = 3;
        }
        updateActualRowsAndColumns();
        int i12 = this.mRows;
        int i13 = this.mColumns;
        if (i11 > i12 * i13 || i11 < 1) {
            this.mNumWidgets = i12 * i13;
        }
        initVariables();
        fillConstraintMatrix(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addAllConstraintPositions() {
        for (int i9 = 0; i9 < this.mNumWidgets; i9++) {
            if (leftOfWidget(i9) == -1) {
                int nextPosition = getNextPosition();
                int rowByIndex = getRowByIndex(nextPosition);
                int colByIndex = getColByIndex(nextPosition);
                if (nextPosition == -1) {
                    return;
                } else {
                    addConstraintPosition(i9, rowByIndex, colByIndex, 1, 1);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addConstraintPosition(int i9, int i10, int i11, int i12, int i13) {
        int[] iArr = this.mConstraintMatrix[i9];
        iArr[0] = i11;
        iArr[1] = i10;
        iArr[2] = (i11 + i13) - 1;
        iArr[3] = (i10 + i12) - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillConstraintMatrix(boolean z8) {
        int[][] spans;
        int[][] spans2;
        if (z8) {
            for (int i9 = 0; i9 < this.mPositionMatrix.length; i9++) {
                int i10 = 0;
                while (true) {
                    boolean[][] zArr = this.mPositionMatrix;
                    if (i10 < zArr[0].length) {
                        zArr[i9][i10] = true;
                        i10++;
                    }
                }
            }
            for (int i11 = 0; i11 < this.mConstraintMatrix.length; i11++) {
                int i12 = 0;
                while (true) {
                    int[][] iArr = this.mConstraintMatrix;
                    if (i12 < iArr[0].length) {
                        iArr[i11][i12] = -1;
                        i12++;
                    }
                }
            }
        }
        this.mNextAvailableIndex = 0;
        String str = this.mStrSkips;
        if (str != null && !str.trim().isEmpty() && (spans2 = parseSpans(this.mStrSkips)) != null) {
            handleSkips(spans2);
        }
        String str2 = this.mStrSpans;
        if (str2 != null && !str2.trim().isEmpty() && (spans = parseSpans(this.mStrSpans)) != null) {
            handleSpans(spans);
        }
        addAllConstraintPositions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getColByIndex(int i9) {
        return this.mOrientation == 1 ? i9 / this.mRows : i9 % this.mColumns;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getNextPosition() {
        boolean z8 = false;
        int i9 = 0;
        while (!z8) {
            i9 = this.mNextAvailableIndex;
            if (i9 >= this.mRows * this.mColumns) {
                return -1;
            }
            int rowByIndex = getRowByIndex(i9);
            int colByIndex = getColByIndex(this.mNextAvailableIndex);
            boolean[] zArr = this.mPositionMatrix[rowByIndex];
            if (zArr[colByIndex]) {
                zArr[colByIndex] = false;
                z8 = true;
            }
            this.mNextAvailableIndex++;
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getRowByIndex(int i9) {
        return this.mOrientation == 1 ? i9 % this.mRows : i9 / this.mColumns;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleSkips(int[][] iArr) {
        for (int i9 = 0; i9 < iArr.length; i9++) {
            int rowByIndex = getRowByIndex(iArr[i9][0]);
            int colByIndex = getColByIndex(iArr[i9][0]);
            int[] iArr2 = iArr[i9];
            if (!invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleSpans(int[][] iArr) {
        for (int i9 = 0; i9 < iArr.length; i9++) {
            int rowByIndex = getRowByIndex(iArr[i9][0]);
            int colByIndex = getColByIndex(iArr[i9][0]);
            int[] iArr2 = iArr[i9];
            if (!invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                return;
            }
            int[] iArr3 = iArr[i9];
            addConstraintPosition(i9, rowByIndex, colByIndex, iArr3[1], iArr3[2]);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initVariables() {
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mRows, this.mColumns);
        this.mPositionMatrix = zArr;
        for (boolean[] zArr2 : zArr) {
            Arrays.fill(zArr2, true);
        }
        int i9 = this.mNumWidgets;
        if (i9 > 0) {
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i9, 4);
            this.mConstraintMatrix = iArr;
            for (int[] iArr2 : iArr) {
                Arrays.fill(iArr2, -1);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean invalidatePositions(int i9, int i10, int i11, int i12) {
        for (int i13 = i9; i13 < i9 + i11; i13++) {
            for (int i14 = i10; i14 < i10 + i12; i14++) {
                boolean[][] zArr = this.mPositionMatrix;
                if (i13 < zArr.length && i14 < zArr[0].length) {
                    boolean[] zArr2 = zArr[i13];
                    if (zArr2[i14]) {
                        zArr2[i14] = false;
                    }
                }
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isSpansValid(CharSequence charSequence) {
        return charSequence != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int[][] parseSpans(String str) {
        if (!isSpansValid(str)) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, strArrSplit.length, 3);
        for (int i9 = 0; i9 < strArrSplit.length; i9++) {
            String[] strArrSplit2 = strArrSplit[i9].trim().split(":");
            String[] strArrSplit3 = strArrSplit2[1].split("x");
            iArr[i9][0] = Integer.parseInt(strArrSplit2[0]);
            iArr[i9][1] = Integer.parseInt(strArrSplit3[0]);
            iArr[i9][2] = Integer.parseInt(strArrSplit3[1]);
        }
        return iArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void updateActualRowsAndColumns() {
        int i9;
        int i10 = this.mRowsSet;
        if (i10 != 0 && (i9 = this.mColumnsSet) != 0) {
            this.mRows = i10;
            this.mColumns = i9;
            return;
        }
        int i11 = this.mColumnsSet;
        if (i11 > 0) {
            this.mColumns = i11;
            this.mRows = ((this.mNumWidgets + i11) - 1) / i11;
        } else if (i10 > 0) {
            this.mRows = i10;
            this.mColumns = ((this.mNumWidgets + i10) - 1) / i10;
        } else {
            int iSqrt = (int) (Math.sqrt(this.mNumWidgets) + 1.5d);
            this.mRows = iSqrt;
            this.mColumns = ((this.mNumWidgets + iSqrt) - 1) / iSqrt;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int bottomOfWidget(int i9) {
        int[][] iArr = this.mConstraintMatrix;
        if (iArr == null || i9 >= iArr.length) {
            return 0;
        }
        return iArr[i9][3];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int leftOfWidget(int i9) {
        int[][] iArr = this.mConstraintMatrix;
        if (iArr == null || i9 >= iArr.length) {
            return 0;
        }
        return iArr[i9][0];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int rightOfWidget(int i9) {
        int[][] iArr = this.mConstraintMatrix;
        if (iArr == null || i9 >= iArr.length) {
            return 0;
        }
        return iArr[i9][2];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColumns(int i9) {
        if (i9 <= 50 && this.mColumnsSet != i9) {
            this.mColumnsSet = i9;
            updateActualRowsAndColumns();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNumWidgets(int i9) {
        if (i9 > this.mRows * this.mColumns) {
            return;
        }
        this.mNumWidgets = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        if ((i9 == 0 || i9 == 1) && this.mOrientation != i9) {
            this.mOrientation = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRows(int i9) {
        if (i9 <= 50 && this.mRowsSet != i9) {
            this.mRowsSet = i9;
            updateActualRowsAndColumns();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSkips(String str) {
        String str2 = this.mStrSkips;
        if (str2 == null || !str2.equals(str)) {
            this.mStrSkips = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpans(CharSequence charSequence) {
        String str = this.mStrSpans;
        if (str == null || !str.equals(charSequence.toString())) {
            this.mStrSpans = charSequence.toString();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup() {
        boolean[][] zArr;
        int[][] iArr = this.mConstraintMatrix;
        boolean z8 = false;
        if (iArr != null && iArr.length == this.mNumWidgets && (zArr = this.mPositionMatrix) != null && zArr.length == this.mRows && zArr[0].length == this.mColumns) {
            z8 = true;
        }
        if (!z8) {
            initVariables();
        }
        fillConstraintMatrix(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int topOfWidget(int i9) {
        int[][] iArr = this.mConstraintMatrix;
        if (iArr == null || i9 >= iArr.length) {
            return 0;
        }
        return iArr[i9][1];
    }

    public GridEngine(int i9, int i10) {
        this.mRowsSet = i9;
        this.mColumnsSet = i10;
        if (i9 > 50) {
            this.mRowsSet = 3;
        }
        if (i10 > 50) {
            this.mColumnsSet = 3;
        }
        updateActualRowsAndColumns();
        initVariables();
    }

    public GridEngine() {
    }
}
