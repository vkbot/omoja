package androidx.constraintlayout.core.widgets.analyzer;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class WidgetGroup {
    private static final boolean DEBUG = false;
    static int sCount;
    int mId;
    int mOrientation;
    ArrayList<ConstraintWidget> mWidgets = new ArrayList<>();
    boolean mAuthoritative = false;
    ArrayList<WidgetGroup$MeasureResult> mResults = null;
    private int mMoveTo = -1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WidgetGroup(int i9) {
        int i10 = sCount;
        sCount = i10 + 1;
        this.mId = i10;
        this.mOrientation = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean contains(ConstraintWidget constraintWidget) {
        return this.mWidgets.contains(constraintWidget);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String getOrientationString() {
        int i9 = this.mOrientation;
        if (i9 == 0) {
            return "Horizontal";
        }
        if (i9 == 1) {
            return "Vertical";
        }
        return i9 == 2 ? "Both" : "Unknown";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int measureWrap(int i9, ConstraintWidget constraintWidget) {
        ConstraintWidget$DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(i9);
        if (dimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT || dimensionBehaviour == ConstraintWidget$DimensionBehaviour.MATCH_PARENT || dimensionBehaviour == ConstraintWidget$DimensionBehaviour.FIXED) {
            return i9 == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight();
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int solverMeasure(LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i9) {
        int objectVariableValue;
        int objectVariableValue2;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) arrayList.get(0).getParent();
        linearSystem.reset();
        constraintWidgetContainer.addToSolver(linearSystem, false);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList.get(i10).addToSolver(linearSystem, false);
        }
        if (i9 == 0 && constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i9 == 1 && constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.minimize();
        } catch (Exception e) {
            System.err.println(e.toString() + "\n" + Arrays.toString(e.getStackTrace()).replace("[", "   at ").replace(",", "\n   at").replace("]", ""));
        }
        this.mResults = new ArrayList<>();
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            this.mResults.add(new WidgetGroup$MeasureResult(arrayList.get(i11), linearSystem, i9));
        }
        if (i9 == 0) {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mLeft);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mRight);
            linearSystem.reset();
        } else {
            objectVariableValue = linearSystem.getObjectVariableValue(constraintWidgetContainer.mTop);
            objectVariableValue2 = linearSystem.getObjectVariableValue(constraintWidgetContainer.mBottom);
            linearSystem.reset();
        }
        return objectVariableValue2 - objectVariableValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean add(ConstraintWidget constraintWidget) {
        if (this.mWidgets.contains(constraintWidget)) {
            return false;
        }
        this.mWidgets.add(constraintWidget);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void apply() {
        if (this.mResults != null && this.mAuthoritative) {
            for (int i9 = 0; i9 < this.mResults.size(); i9++) {
                this.mResults.get(i9).apply();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cleanup(ArrayList<WidgetGroup> arrayList) {
        int size = this.mWidgets.size();
        if (this.mMoveTo != -1 && size > 0) {
            for (int i9 = 0; i9 < arrayList.size(); i9++) {
                WidgetGroup widgetGroup = arrayList.get(i9);
                if (this.mMoveTo == widgetGroup.mId) {
                    moveTo(this.mOrientation, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mWidgets.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getId() {
        return this.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        return this.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean intersectWith(WidgetGroup widgetGroup) {
        for (int i9 = 0; i9 < this.mWidgets.size(); i9++) {
            if (widgetGroup.contains(this.mWidgets.get(i9))) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isAuthoritative() {
        return this.mAuthoritative;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void moveTo(int i9, WidgetGroup widgetGroup) {
        ArrayList<ConstraintWidget> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            ConstraintWidget constraintWidget = arrayList.get(i10);
            i10++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            widgetGroup.add(constraintWidget2);
            if (i9 == 0) {
                constraintWidget2.horizontalGroup = widgetGroup.getId();
            } else {
                constraintWidget2.verticalGroup = widgetGroup.getId();
            }
        }
        this.mMoveTo = widgetGroup.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAuthoritative(boolean z8) {
        this.mAuthoritative = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        this.mOrientation = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.mWidgets.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getOrientationString());
        sb.append(" [");
        String strO = a.o(sb, "] <", this.mId);
        ArrayList<ConstraintWidget> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            ConstraintWidget constraintWidget = arrayList.get(i9);
            i9++;
            StringBuilder sbW = a.w(strO, " ");
            sbW.append(constraintWidget.getDebugName());
            strO = sbW.toString();
        }
        return strO.concat(" >");
    }

    public int measureWrap(LinearSystem linearSystem, int i9) {
        if (this.mWidgets.size() == 0) {
            return 0;
        }
        return solverMeasure(linearSystem, this.mWidgets, i9);
    }
}
