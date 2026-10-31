package androidx.constraintlayout.core.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class GridCore extends VirtualLayout {
    private static final int DEFAULT_SIZE = 3;
    public static final int HORIZONTAL = 0;
    private static final int MAX_COLUMNS = 50;
    private static final int MAX_ROWS = 50;
    public static final int SPANS_RESPECT_WIDGET_ORDER = 2;
    public static final int SUB_GRID_BY_COL_ROW = 1;
    public static final int VERTICAL = 1;
    private ConstraintWidget[] mBoxWidgets;
    private String mColumnWeights;
    private int mColumns;
    private int mColumnsSet;
    private int[][] mConstraintMatrix;
    ConstraintWidgetContainer mContainer;
    private int mFlags;
    private float mHorizontalGaps;
    private int mOrientation;
    private boolean[][] mPositionMatrix;
    private String mRowWeights;
    private int mRows;
    private int mRowsSet;
    private String mSkips;
    private int[][] mSpanMatrix;
    private String mSpans;
    private float mVerticalGaps;
    private boolean mExtraSpaceHandled = false;
    private int mNextAvailableIndex = 0;
    Set<String> mSpanIds = new HashSet();
    private int mSpanIndex = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public GridCore(int i9, int i10) {
        this.mRowsSet = i9;
        this.mColumnsSet = i10;
        if (i9 > 50) {
            this.mRowsSet = 3;
        }
        if (i10 > 50) {
            this.mColumnsSet = 3;
        }
        updateActualRowsAndColumns();
        initMatrices();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int a(String str, String str2) {
        return lambda$parseSpans$0(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addConstraints() {
        setBoxWidgetVerticalChains();
        setBoxWidgetHorizontalChains();
        arrangeWidgets();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:23:0x0066  */
    private void arrangeWidgets() {
        int[][] iArr;
        int i9;
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            if (!this.mSpanIds.contains(this.mWidgets[i10].stringId)) {
                int nextPosition = getNextPosition();
                int rowByIndex = getRowByIndex(nextPosition);
                int colByIndex = getColByIndex(nextPosition);
                if (nextPosition == -1) {
                    return;
                }
                if (!isSpansRespectWidgetOrder() || (iArr = this.mSpanMatrix) == null || (i9 = this.mSpanIndex) >= iArr.length) {
                    connectWidget(this.mWidgets[i10], rowByIndex, colByIndex, 1, 1);
                } else {
                    int[] iArr2 = iArr[i9];
                    if (iArr2[0] == nextPosition) {
                        this.mPositionMatrix[rowByIndex][colByIndex] = true;
                        if (invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                            ConstraintWidget constraintWidget = this.mWidgets[i10];
                            int[] iArr3 = this.mSpanMatrix[this.mSpanIndex];
                            connectWidget(constraintWidget, rowByIndex, colByIndex, iArr3[1], iArr3[2]);
                            this.mSpanIndex++;
                        }
                    } else {
                        connectWidget(this.mWidgets[i10], rowByIndex, colByIndex, 1, 1);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void clearHorizontalAttributes(ConstraintWidget constraintWidget) {
        constraintWidget.setHorizontalWeight(-1.0f);
        constraintWidget.mLeft.reset();
        constraintWidget.mRight.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void clearVerticalAttributes(ConstraintWidget constraintWidget) {
        constraintWidget.setVerticalWeight(-1.0f);
        constraintWidget.mTop.reset();
        constraintWidget.mBottom.reset();
        constraintWidget.mBaseline.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void connectWidget(ConstraintWidget constraintWidget, int i9, int i10, int i11, int i12) {
        constraintWidget.mLeft.connect(this.mBoxWidgets[i10].mLeft, 0);
        constraintWidget.mTop.connect(this.mBoxWidgets[i9].mTop, 0);
        constraintWidget.mRight.connect(this.mBoxWidgets[(i10 + i12) - 1].mRight, 0);
        constraintWidget.mBottom.connect(this.mBoxWidgets[(i9 + i11) - 1].mBottom, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createBoxes() {
        int iMax = Math.max(this.mRows, this.mColumns);
        ConstraintWidget[] constraintWidgetArr = this.mBoxWidgets;
        int i9 = 0;
        if (constraintWidgetArr == null) {
            this.mBoxWidgets = new ConstraintWidget[iMax];
            while (true) {
                ConstraintWidget[] constraintWidgetArr2 = this.mBoxWidgets;
                if (i9 >= constraintWidgetArr2.length) {
                    return;
                }
                constraintWidgetArr2[i9] = makeNewWidget();
                i9++;
            }
        } else {
            if (iMax == constraintWidgetArr.length) {
                return;
            }
            ConstraintWidget[] constraintWidgetArr3 = new ConstraintWidget[iMax];
            while (i9 < iMax) {
                ConstraintWidget[] constraintWidgetArr4 = this.mBoxWidgets;
                if (i9 < constraintWidgetArr4.length) {
                    constraintWidgetArr3[i9] = constraintWidgetArr4[i9];
                } else {
                    constraintWidgetArr3[i9] = makeNewWidget();
                }
                i9++;
            }
            while (true) {
                ConstraintWidget[] constraintWidgetArr5 = this.mBoxWidgets;
                if (iMax >= constraintWidgetArr5.length) {
                    this.mBoxWidgets = constraintWidgetArr3;
                    return;
                } else {
                    this.mContainer.remove(constraintWidgetArr5[iMax]);
                    iMax++;
                }
            }
        }
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
        String str = this.mSkips;
        if (str != null && !str.trim().isEmpty() && (spans2 = parseSpans(this.mSkips, false)) != null) {
            handleSkips(spans2);
        }
        String str2 = this.mSpans;
        if (str2 == null || str2.trim().isEmpty() || (spans = parseSpans(this.mSpans, true)) == null) {
            return;
        }
        handleSpans(spans);
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
        for (int[] iArr2 : iArr) {
            if (!invalidatePositions(getRowByIndex(iArr2[0]), getColByIndex(iArr2[0]), iArr2[1], iArr2[2])) {
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void handleSpans(int[][] iArr) {
        if (!isSpansRespectWidgetOrder()) {
            for (int i9 = 0; i9 < iArr.length; i9++) {
                int rowByIndex = getRowByIndex(iArr[i9][0]);
                int colByIndex = getColByIndex(iArr[i9][0]);
                int[] iArr2 = iArr[i9];
                if (!invalidatePositions(rowByIndex, colByIndex, iArr2[1], iArr2[2])) {
                    break;
                }
                ConstraintWidget constraintWidget = this.mWidgets[i9];
                int[] iArr3 = iArr[i9];
                connectWidget(constraintWidget, rowByIndex, colByIndex, iArr3[1], iArr3[2]);
                this.mSpanIds.add(this.mWidgets[i9].stringId);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initMatrices() {
        boolean[][] zArr;
        int[][] iArr = this.mConstraintMatrix;
        boolean z8 = false;
        if (iArr != null && iArr.length == this.mWidgetsCount && (zArr = this.mPositionMatrix) != null && zArr.length == this.mRows && zArr[0].length == this.mColumns) {
            z8 = true;
        }
        if (!z8) {
            initVariables();
        }
        fillConstraintMatrix(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initVariables() {
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, this.mRows, this.mColumns);
        this.mPositionMatrix = zArr;
        for (boolean[] zArr2 : zArr) {
            Arrays.fill(zArr2, true);
        }
        int i9 = this.mWidgetsCount;
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
    private boolean isSpansRespectWidgetOrder() {
        return (this.mFlags & 2) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isSubGridByColRow() {
        return (this.mFlags & 1) > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ int lambda$parseSpans$0(String str, String str2) {
        return Integer.parseInt(str.split(":")[0]) - Integer.parseInt(str2.split(":")[0]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintWidget makeNewWidget() {
        ConstraintWidget constraintWidget = new ConstraintWidget();
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = constraintWidget.mListDimensionBehaviors;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        constraintWidget$DimensionBehaviourArr[0] = constraintWidget$DimensionBehaviour;
        constraintWidget$DimensionBehaviourArr[1] = constraintWidget$DimensionBehaviour;
        constraintWidget.stringId = String.valueOf(constraintWidget.hashCode());
        return constraintWidget;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int[][] parseSpans(String str, boolean z8) {
        try {
            String[] strArrSplit = str.split(",");
            Arrays.sort(strArrSplit, new a(0));
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, strArrSplit.length, 3);
            if (this.mRows != 1 && this.mColumns != 1) {
                for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                    String[] strArrSplit2 = strArrSplit[i9].trim().split(":");
                    String[] strArrSplit3 = strArrSplit2[1].split("x");
                    iArr[i9][0] = Integer.parseInt(strArrSplit2[0]);
                    if (isSubGridByColRow()) {
                        iArr[i9][1] = Integer.parseInt(strArrSplit3[1]);
                        iArr[i9][2] = Integer.parseInt(strArrSplit3[0]);
                    } else {
                        iArr[i9][1] = Integer.parseInt(strArrSplit3[0]);
                        iArr[i9][2] = Integer.parseInt(strArrSplit3[1]);
                    }
                }
                return iArr;
            }
            int i10 = 0;
            int i11 = 0;
            for (int i12 = 0; i12 < strArrSplit.length; i12++) {
                String[] strArrSplit4 = strArrSplit[i12].trim().split(":");
                iArr[i12][0] = Integer.parseInt(strArrSplit4[0]);
                int[] iArr2 = iArr[i12];
                iArr2[1] = 1;
                iArr2[2] = 1;
                if (this.mColumns == 1) {
                    iArr2[1] = Integer.parseInt(strArrSplit4[1]);
                    i10 += iArr[i12][1];
                    if (z8) {
                        i10--;
                    }
                }
                if (this.mRows == 1) {
                    iArr[i12][2] = Integer.parseInt(strArrSplit4[1]);
                    i11 += iArr[i12][2];
                    if (z8) {
                        i11--;
                    }
                }
            }
            if (i10 != 0 && !this.mExtraSpaceHandled) {
                setRows(this.mRows + i10);
            }
            if (i11 != 0 && !this.mExtraSpaceHandled) {
                setColumns(this.mColumns + i11);
            }
            this.mExtraSpaceHandled = true;
            return iArr;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private float[] parseWeights(int i9, String str) {
        if (str == null || str.trim().isEmpty()) {
            return null;
        }
        String[] strArrSplit = str.split(",");
        float[] fArr = new float[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            if (i10 < strArrSplit.length) {
                try {
                    fArr[i10] = Float.parseFloat(strArrSplit[i10]);
                } catch (Exception e) {
                    System.err.println("Error parsing `" + strArrSplit[i10] + "`: " + e.getMessage());
                    fArr[i10] = 1.0f;
                }
            } else {
                fArr[i10] = 1.0f;
            }
        }
        return fArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBoxWidgetHorizontalChains() {
        int i9;
        int iMax = Math.max(this.mRows, this.mColumns);
        ConstraintWidget constraintWidget = this.mBoxWidgets[0];
        float[] weights = parseWeights(this.mColumns, this.mColumnWeights);
        if (this.mColumns == 1) {
            clearHorizontalAttributes(constraintWidget);
            constraintWidget.mLeft.connect(this.mLeft, 0);
            constraintWidget.mRight.connect(this.mRight, 0);
            return;
        }
        int i10 = 0;
        while (true) {
            i9 = this.mColumns;
            if (i10 >= i9) {
                break;
            }
            ConstraintWidget constraintWidget2 = this.mBoxWidgets[i10];
            clearHorizontalAttributes(constraintWidget2);
            if (weights != null) {
                constraintWidget2.setHorizontalWeight(weights[i10]);
            }
            if (i10 > 0) {
                constraintWidget2.mLeft.connect(this.mBoxWidgets[i10 - 1].mRight, 0);
            } else {
                constraintWidget2.mLeft.connect(this.mLeft, 0);
            }
            if (i10 < this.mColumns - 1) {
                constraintWidget2.mRight.connect(this.mBoxWidgets[i10 + 1].mLeft, 0);
            } else {
                constraintWidget2.mRight.connect(this.mRight, 0);
            }
            if (i10 > 0) {
                constraintWidget2.mLeft.mMargin = (int) this.mHorizontalGaps;
            }
            i10++;
        }
        while (i9 < iMax) {
            ConstraintWidget constraintWidget3 = this.mBoxWidgets[i9];
            clearHorizontalAttributes(constraintWidget3);
            constraintWidget3.mLeft.connect(this.mLeft, 0);
            constraintWidget3.mRight.connect(this.mRight, 0);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setBoxWidgetVerticalChains() {
        int i9;
        int iMax = Math.max(this.mRows, this.mColumns);
        ConstraintWidget constraintWidget = this.mBoxWidgets[0];
        float[] weights = parseWeights(this.mRows, this.mRowWeights);
        if (this.mRows == 1) {
            clearVerticalAttributes(constraintWidget);
            constraintWidget.mTop.connect(this.mTop, 0);
            constraintWidget.mBottom.connect(this.mBottom, 0);
            return;
        }
        int i10 = 0;
        while (true) {
            i9 = this.mRows;
            if (i10 >= i9) {
                break;
            }
            ConstraintWidget constraintWidget2 = this.mBoxWidgets[i10];
            clearVerticalAttributes(constraintWidget2);
            if (weights != null) {
                constraintWidget2.setVerticalWeight(weights[i10]);
            }
            if (i10 > 0) {
                constraintWidget2.mTop.connect(this.mBoxWidgets[i10 - 1].mBottom, 0);
            } else {
                constraintWidget2.mTop.connect(this.mTop, 0);
            }
            if (i10 < this.mRows - 1) {
                constraintWidget2.mBottom.connect(this.mBoxWidgets[i10 + 1].mTop, 0);
            } else {
                constraintWidget2.mBottom.connect(this.mBottom, 0);
            }
            if (i10 > 0) {
                constraintWidget2.mTop.mMargin = (int) this.mVerticalGaps;
            }
            i10++;
        }
        while (i9 < iMax) {
            ConstraintWidget constraintWidget3 = this.mBoxWidgets[i9];
            clearVerticalAttributes(constraintWidget3);
            constraintWidget3.mTop.connect(this.mTop, 0);
            constraintWidget3.mBottom.connect(this.mBottom, 0);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setupGrid(boolean z8) {
        int[][] spans;
        if (this.mRows < 1 || this.mColumns < 1) {
            return;
        }
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
            this.mSpanIds.clear();
        }
        this.mNextAvailableIndex = 0;
        String str = this.mSkips;
        if (str != null && !str.trim().isEmpty() && (spans = parseSpans(this.mSkips, false)) != null) {
            handleSkips(spans);
        }
        String str2 = this.mSpans;
        if (str2 != null && !str2.trim().isEmpty()) {
            this.mSpanMatrix = parseSpans(this.mSpans, true);
        }
        createBoxes();
        int[][] iArr = this.mSpanMatrix;
        if (iArr != null) {
            handleSpans(iArr);
        }
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
            this.mRows = ((this.mWidgetsCount + i11) - 1) / i11;
        } else if (i10 > 0) {
            this.mRows = i10;
            this.mColumns = ((this.mWidgetsCount + i10) - 1) / i10;
        } else {
            int iSqrt = (int) (Math.sqrt(this.mWidgetsCount) + 1.5d);
            this.mRows = iSqrt;
            this.mColumns = ((this.mWidgetsCount + iSqrt) - 1) / iSqrt;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(@Nullable LinearSystem linearSystem, boolean z8) {
        super.addToSolver(linearSystem, z8);
        addConstraints();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getColumnWeights() {
        return this.mColumnWeights;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public ConstraintWidgetContainer getContainer() {
        return this.mContainer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFlags() {
        return this.mFlags;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getHorizontalGaps() {
        return this.mHorizontalGaps;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        return this.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getRowWeights() {
        return this.mRowWeights;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getVerticalGaps() {
        return this.mVerticalGaps;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i9, int i10, int i11, int i12) {
        super.measure(i9, i10, i11, i12);
        this.mContainer = (ConstraintWidgetContainer) getParent();
        setupGrid(false);
        this.mContainer.add(this.mBoxWidgets);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColumnWeights(@NonNull String str) {
        String str2 = this.mColumnWeights;
        if (str2 == null || !str2.equals(str)) {
            this.mColumnWeights = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setColumns(int i9) {
        if (i9 <= 50 && this.mColumnsSet != i9) {
            this.mColumnsSet = i9;
            updateActualRowsAndColumns();
            initVariables();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setContainer(@NonNull ConstraintWidgetContainer constraintWidgetContainer) {
        this.mContainer = constraintWidgetContainer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFlags(int i9) {
        this.mFlags = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalGaps(float f8) {
        if (f8 >= 0.0f && this.mHorizontalGaps != f8) {
            this.mHorizontalGaps = f8;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        if ((i9 == 0 || i9 == 1) && this.mOrientation != i9) {
            this.mOrientation = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRowWeights(@NonNull String str) {
        String str2 = this.mRowWeights;
        if (str2 == null || !str2.equals(str)) {
            this.mRowWeights = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRows(int i9) {
        if (i9 <= 50 && this.mRowsSet != i9) {
            this.mRowsSet = i9;
            updateActualRowsAndColumns();
            initVariables();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSkips(@NonNull String str) {
        String str2 = this.mSkips;
        if (str2 == null || !str2.equals(str)) {
            this.mExtraSpaceHandled = false;
            this.mSkips = str;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSpans(@NonNull CharSequence charSequence) {
        String str = this.mSpans;
        if (str == null || !str.equals(charSequence.toString())) {
            this.mExtraSpaceHandled = false;
            this.mSpans = charSequence.toString();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalGaps(float f8) {
        if (f8 >= 0.0f && this.mVerticalGaps != f8) {
            this.mVerticalGaps = f8;
        }
    }

    public GridCore() {
        updateActualRowsAndColumns();
        initMatrices();
    }
}
