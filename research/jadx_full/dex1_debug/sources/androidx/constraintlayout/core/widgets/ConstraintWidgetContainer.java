package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import androidx.constraintlayout.core.widgets.analyzer.Direct;
import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintWidgetContainer extends WidgetContainer {
    private static final boolean DEBUG = false;
    static final boolean DEBUG_GRAPH = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final int MAX_ITERATIONS = 8;
    static int sMyCounter;
    BasicMeasure mBasicMeasureSolver;
    int mDebugSolverPassCount;
    public DependencyGraph mDependencyGraph;
    public boolean mGroupsWrapOptimized;
    private boolean mHeightMeasuredTooSmall;
    ChainHead[] mHorizontalChainsArray;
    public int mHorizontalChainsSize;
    private WeakReference<ConstraintAnchor> mHorizontalWrapMax;
    private WeakReference<ConstraintAnchor> mHorizontalWrapMin;
    public boolean mHorizontalWrapOptimized;
    private boolean mIsRtl;
    public BasicMeasure$Measure mMeasure;
    protected BasicMeasure$Measurer mMeasurer;
    public Metrics mMetrics;
    private int mOptimizationLevel;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private int mPass;
    public boolean mSkipSolver;
    protected LinearSystem mSystem;
    ChainHead[] mVerticalChainsArray;
    public int mVerticalChainsSize;
    private WeakReference<ConstraintAnchor> mVerticalWrapMax;
    private WeakReference<ConstraintAnchor> mVerticalWrapMin;
    public boolean mVerticalWrapOptimized;
    HashSet<ConstraintWidget> mWidgetsToAdd;
    private boolean mWidthMeasuredTooSmall;
    public int mWrapFixedHeight;
    public int mWrapFixedWidth;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintWidgetContainer(String str, int i9, int i10) {
        super(i9, i10);
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.mVerticalWrapMin = null;
        this.mHorizontalWrapMin = null;
        this.mVerticalWrapMax = null;
        this.mHorizontalWrapMax = null;
        this.mWidgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure$Measure();
        setDebugName(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addHorizontalChain(ConstraintWidget constraintWidget) {
        int i9 = this.mHorizontalChainsSize + 1;
        ChainHead[] chainHeadArr = this.mHorizontalChainsArray;
        if (i9 >= chainHeadArr.length) {
            this.mHorizontalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.mHorizontalChainsArray[this.mHorizontalChainsSize] = new ChainHead(constraintWidget, 0, isRtl());
        this.mHorizontalChainsSize++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addMaxWrap(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.mSystem.addGreaterThan(solverVariable, this.mSystem.createObjectVariable(constraintAnchor), 0, 5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addMinWrap(ConstraintAnchor constraintAnchor, SolverVariable solverVariable) {
        this.mSystem.addGreaterThan(this.mSystem.createObjectVariable(constraintAnchor), solverVariable, 0, 5);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void addVerticalChain(ConstraintWidget constraintWidget) {
        int i9 = this.mVerticalChainsSize + 1;
        ChainHead[] chainHeadArr = this.mVerticalChainsArray;
        if (i9 >= chainHeadArr.length) {
            this.mVerticalChainsArray = (ChainHead[]) Arrays.copyOf(chainHeadArr, chainHeadArr.length * 2);
        }
        this.mVerticalChainsArray[this.mVerticalChainsSize] = new ChainHead(constraintWidget, 1, isRtl());
        this.mVerticalChainsSize++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean measure(int i9, ConstraintWidget constraintWidget, BasicMeasure$Measurer basicMeasure$Measurer, BasicMeasure$Measure basicMeasure$Measure, int i10) {
        int i11;
        int i12;
        if (basicMeasure$Measurer == null) {
            return false;
        }
        if (constraintWidget.getVisibility() == 8 || (constraintWidget instanceof Guideline) || (constraintWidget instanceof Barrier)) {
            basicMeasure$Measure.measuredWidth = 0;
            basicMeasure$Measure.measuredHeight = 0;
            return false;
        }
        basicMeasure$Measure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        basicMeasure$Measure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        basicMeasure$Measure.horizontalDimension = constraintWidget.getWidth();
        basicMeasure$Measure.verticalDimension = constraintWidget.getHeight();
        basicMeasure$Measure.measuredNeedsSolverPass = false;
        basicMeasure$Measure.measureStrategy = i10;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = basicMeasure$Measure.horizontalBehavior;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z8 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2;
        boolean z9 = basicMeasure$Measure.verticalBehavior == constraintWidget$DimensionBehaviour2;
        boolean z10 = z8 && constraintWidget.mDimensionRatio > 0.0f;
        boolean z11 = z9 && constraintWidget.mDimensionRatio > 0.0f;
        if (z8 && constraintWidget.hasDanglingDimension(0) && constraintWidget.mMatchConstraintDefaultWidth == 0 && !z10) {
            basicMeasure$Measure.horizontalBehavior = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (z9 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                basicMeasure$Measure.horizontalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
            }
            z8 = false;
        }
        if (z9 && constraintWidget.hasDanglingDimension(1) && constraintWidget.mMatchConstraintDefaultHeight == 0 && !z11) {
            basicMeasure$Measure.verticalBehavior = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
            if (z8 && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                basicMeasure$Measure.verticalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
            }
            z9 = false;
        }
        if (constraintWidget.isResolvedHorizontally()) {
            basicMeasure$Measure.horizontalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
            z8 = false;
        }
        if (constraintWidget.isResolvedVertically()) {
            basicMeasure$Measure.verticalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
            z9 = false;
        }
        if (z10) {
            if (constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
                basicMeasure$Measure.horizontalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
            } else if (!z9) {
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = basicMeasure$Measure.verticalBehavior;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.FIXED;
                if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour4) {
                    i12 = basicMeasure$Measure.verticalDimension;
                } else {
                    basicMeasure$Measure.horizontalBehavior = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    basicMeasure$Measurer.measure(constraintWidget, basicMeasure$Measure);
                    i12 = basicMeasure$Measure.measuredHeight;
                }
                basicMeasure$Measure.horizontalBehavior = constraintWidget$DimensionBehaviour4;
                basicMeasure$Measure.horizontalDimension = (int) (constraintWidget.getDimensionRatio() * i12);
            }
        }
        if (z11) {
            if (constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
                basicMeasure$Measure.verticalBehavior = ConstraintWidget$DimensionBehaviour.FIXED;
            } else if (!z8) {
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = basicMeasure$Measure.horizontalBehavior;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.FIXED;
                if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour6) {
                    i11 = basicMeasure$Measure.horizontalDimension;
                } else {
                    basicMeasure$Measure.verticalBehavior = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    basicMeasure$Measurer.measure(constraintWidget, basicMeasure$Measure);
                    i11 = basicMeasure$Measure.measuredWidth;
                }
                basicMeasure$Measure.verticalBehavior = constraintWidget$DimensionBehaviour6;
                if (constraintWidget.getDimensionRatioSide() == -1) {
                    basicMeasure$Measure.verticalDimension = (int) (i11 / constraintWidget.getDimensionRatio());
                } else {
                    basicMeasure$Measure.verticalDimension = (int) (constraintWidget.getDimensionRatio() * i11);
                }
            }
        }
        basicMeasure$Measurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(basicMeasure$Measure.measuredWidth);
        constraintWidget.setHeight(basicMeasure$Measure.measuredHeight);
        constraintWidget.setHasBaseline(basicMeasure$Measure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(basicMeasure$Measure.measuredBaseline);
        basicMeasure$Measure.measureStrategy = BasicMeasure$Measure.SELF_DIMENSIONS;
        return basicMeasure$Measure.measuredNeedsSolverPass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void resetChains() {
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addChain(ConstraintWidget constraintWidget, int i9) {
        if (i9 == 0) {
            addHorizontalChain(constraintWidget);
        } else if (i9 == 1) {
            addVerticalChain(constraintWidget);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean addChildrenToSolver(LinearSystem linearSystem) {
        ConstraintWidgetContainer constraintWidgetContainer;
        LinearSystem linearSystem2;
        boolean zOptimizeFor = optimizeFor(64);
        addToSolver(linearSystem, zOptimizeFor);
        int size = this.mChildren.size();
        boolean z8 = false;
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i9);
            constraintWidget.setInBarrier(0, false);
            constraintWidget.setInBarrier(1, false);
            if (constraintWidget instanceof Barrier) {
                z8 = true;
            }
        }
        if (z8) {
            for (int i10 = 0; i10 < size; i10++) {
                ConstraintWidget constraintWidget2 = this.mChildren.get(i10);
                if (constraintWidget2 instanceof Barrier) {
                    ((Barrier) constraintWidget2).markWidgets();
                }
            }
        }
        this.mWidgetsToAdd.clear();
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget3 = this.mChildren.get(i11);
            if (constraintWidget3.addFirst()) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    this.mWidgetsToAdd.add(constraintWidget3);
                } else {
                    constraintWidget3.addToSolver(linearSystem, zOptimizeFor);
                }
            }
        }
        while (this.mWidgetsToAdd.size() > 0) {
            int size2 = this.mWidgetsToAdd.size();
            Iterator<ConstraintWidget> it = this.mWidgetsToAdd.iterator();
            while (it.hasNext()) {
                VirtualLayout virtualLayout = (VirtualLayout) it.next();
                if (virtualLayout.contains(this.mWidgetsToAdd)) {
                    virtualLayout.addToSolver(linearSystem, zOptimizeFor);
                    this.mWidgetsToAdd.remove(virtualLayout);
                    break;
                }
            }
            if (size2 == this.mWidgetsToAdd.size()) {
                Iterator<ConstraintWidget> it2 = this.mWidgetsToAdd.iterator();
                while (it2.hasNext()) {
                    it2.next().addToSolver(linearSystem, zOptimizeFor);
                }
                this.mWidgetsToAdd.clear();
            }
        }
        if (LinearSystem.USE_DEPENDENCY_ORDERING) {
            HashSet<ConstraintWidget> hashSet = new HashSet<>();
            for (int i12 = 0; i12 < size; i12++) {
                ConstraintWidget constraintWidget4 = this.mChildren.get(i12);
                if (!constraintWidget4.addFirst()) {
                    hashSet.add(constraintWidget4);
                }
            }
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            constraintWidgetContainer.addChildrenToSolverByDependency(this, linearSystem2, hashSet, getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT ? 0 : 1, false);
            for (ConstraintWidget constraintWidget5 : hashSet) {
                Optimizer.checkMatchParent(this, linearSystem2, constraintWidget5);
                constraintWidget5.addToSolver(linearSystem2, zOptimizeFor);
            }
        } else {
            constraintWidgetContainer = this;
            linearSystem2 = linearSystem;
            for (int i13 = 0; i13 < size; i13++) {
                ConstraintWidget constraintWidget6 = constraintWidgetContainer.mChildren.get(i13);
                if (constraintWidget6 instanceof ConstraintWidgetContainer) {
                    ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = constraintWidget6.mListDimensionBehaviors;
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[1];
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3) {
                        constraintWidget6.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                    }
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3) {
                        constraintWidget6.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                    }
                    constraintWidget6.addToSolver(linearSystem2, zOptimizeFor);
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3) {
                        constraintWidget6.setHorizontalDimensionBehaviour(constraintWidget$DimensionBehaviour);
                    }
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3) {
                        constraintWidget6.setVerticalDimensionBehaviour(constraintWidget$DimensionBehaviour2);
                    }
                } else {
                    Optimizer.checkMatchParent(this, linearSystem2, constraintWidget6);
                    if (!constraintWidget6.addFirst()) {
                        constraintWidget6.addToSolver(linearSystem2, zOptimizeFor);
                    }
                }
            }
        }
        if (constraintWidgetContainer.mHorizontalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem2, null, 0);
        }
        if (constraintWidgetContainer.mVerticalChainsSize > 0) {
            Chain.applyChainConstraints(this, linearSystem2, null, 1);
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addHorizontalWrapMaxVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mHorizontalWrapMax;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mHorizontalWrapMax.get().getFinalValue()) {
            this.mHorizontalWrapMax = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addHorizontalWrapMinVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mHorizontalWrapMin;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mHorizontalWrapMin.get().getFinalValue()) {
            this.mHorizontalWrapMin = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addVerticalWrapMaxVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mVerticalWrapMax;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mVerticalWrapMax.get().getFinalValue()) {
            this.mVerticalWrapMax = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addVerticalWrapMinVariable(ConstraintAnchor constraintAnchor) {
        WeakReference<ConstraintAnchor> weakReference = this.mVerticalWrapMin;
        if (weakReference == null || weakReference.get() == null || constraintAnchor.getFinalValue() > this.mVerticalWrapMin.get().getFinalValue()) {
            this.mVerticalWrapMin = new WeakReference<>(constraintAnchor);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void defineTerminalWidgets() {
        this.mDependencyGraph.defineTerminalWidgets(getHorizontalDimensionBehaviour(), getVerticalDimensionBehaviour());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean directMeasure(boolean z8) {
        return this.mDependencyGraph.directMeasure(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean directMeasureSetup(boolean z8) {
        return this.mDependencyGraph.directMeasureSetup(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean directMeasureWithOrientation(boolean z8, int i9) {
        return this.mDependencyGraph.directMeasureWithOrientation(z8, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fillMetrics(Metrics metrics) {
        this.mMetrics = metrics;
        this.mSystem.fillMetrics(metrics);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<Guideline> getHorizontalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i9);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 0) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BasicMeasure$Measurer getMeasurer() {
        return this.mMeasurer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOptimizationLevel() {
        return this.mOptimizationLevel;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void getSceneString(StringBuilder sb) {
        sb.append(this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.mHeight);
        sb.append("\n");
        ArrayList<ConstraintWidget> children = getChildren();
        int size = children.size();
        int i9 = 0;
        while (i9 < size) {
            ConstraintWidget constraintWidget = children.get(i9);
            i9++;
            constraintWidget.getSceneString(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearSystem getSystem() {
        return this.mSystem;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String getType() {
        return "ConstraintLayout";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ArrayList<Guideline> getVerticalGuidelines() {
        ArrayList<Guideline> arrayList = new ArrayList<>();
        int size = this.mChildren.size();
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i9);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    arrayList.add(guideline);
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean handlesInternalConstraints() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateGraph() {
        this.mDependencyGraph.invalidateGraph();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateMeasures() {
        this.mDependencyGraph.invalidateMeasures();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isRtl() {
        return this.mIsRtl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:117:0x01f5 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:143:0x029b */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:154:0x02eb */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:198:0x0338 */
    /* JADX WARN: Code duplicated, block: B:125:0x021e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0225  */
    /* JADX WARN: Code duplicated, block: B:128:0x022c A[LOOP:5: B:127:0x022a->B:128:0x022c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:147:0x02af  */
    /* JADX WARN: Code duplicated, block: B:150:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:153:0x02de  */
    /* JADX WARN: Code duplicated, block: B:155:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:161:0x030e  */
    /* JADX WARN: Code duplicated, block: B:168:0x032f A[PHI: r13 r19
  0x032f: PHI (r13v9 ??) = (r13v8 ??), (r13v11 ??), (r13v11 ??), (r13v11 ??) binds: [B:154:0x02eb, B:163:0x0314, B:164:0x0316, B:166:0x031c] A[DONT_GENERATE, DONT_INLINE]
  0x032f: PHI (r19v4 ??) = (r19v3 ??), (r19v6 ??), (r19v6 ??), (r19v6 ??) binds: [B:154:0x02eb, B:163:0x0314, B:164:0x0316, B:166:0x031c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:170:0x0333  */
    /* JADX WARN: Code duplicated, block: B:171:0x0336  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v25 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v28 */
    /* JADX WARN: Type inference failed for: r13v29 */
    /* JADX WARN: Type inference failed for: r13v30 */
    /* JADX WARN: Type inference failed for: r13v31 */
    /* JADX WARN: Type inference failed for: r13v32 */
    /* JADX WARN: Type inference failed for: r13v33 */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v35 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r18v5 */
    /* JADX WARN: Type inference failed for: r18v7 */
    /* JADX WARN: Type inference failed for: r18v8 */
    /* JADX WARN: Type inference failed for: r18v9 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v10 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r19v15 */
    /* JADX WARN: Type inference failed for: r19v17 */
    /* JADX WARN: Type inference failed for: r19v18 */
    /* JADX WARN: Type inference failed for: r19v19 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v20 */
    /* JADX WARN: Type inference failed for: r19v21 */
    /* JADX WARN: Type inference failed for: r19v22 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6, types: [boolean] */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer
    public void layout() {
        int i9;
        int i10;
        boolean z8;
        int i11;
        ?? r18;
        char c;
        ?? AddChildrenToSolver;
        LinearSystem linearSystem;
        int i12;
        ?? UpdateChildrenFromSolver;
        ?? r19;
        int iMax;
        ?? r110;
        ?? r13;
        int iMax2;
        ?? r111;
        ?? r14;
        int i13;
        ?? r112;
        ?? r15;
        ?? r16;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        ?? r9;
        ?? r17;
        ?? r1;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3;
        int i14 = 0;
        this.mX = 0;
        this.mY = 0;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        int size = this.mChildren.size();
        int iMax3 = Math.max(0, getWidth());
        int iMax4 = Math.max(0, getHeight());
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = this.mListDimensionBehaviors;
        boolean z9 = true;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = constraintWidget$DimensionBehaviourArr[1];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviourArr[0];
        Metrics metrics = this.mMetrics;
        if (metrics != null) {
            metrics.layouts++;
        }
        if (this.mPass == 0 && Optimizer.enabled(this.mOptimizationLevel, 1)) {
            Direct.solvingPass(this, getMeasurer());
            for (int i15 = 0; i15 < size; i15++) {
                ConstraintWidget constraintWidget = this.mChildren.get(i15);
                if (constraintWidget.isMeasureRequested() && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Barrier) && !(constraintWidget instanceof VirtualLayout) && !constraintWidget.isInVirtualLayout()) {
                    ConstraintWidget$DimensionBehaviour dimensionBehaviour = constraintWidget.getDimensionBehaviour(0);
                    ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = constraintWidget.getDimensionBehaviour(1);
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour != constraintWidget$DimensionBehaviour6 || constraintWidget.mMatchConstraintDefaultWidth == 1 || dimensionBehaviour2 != constraintWidget$DimensionBehaviour6 || constraintWidget.mMatchConstraintDefaultHeight == 1) {
                        measure(0, constraintWidget, this.mMeasurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
                    }
                }
            }
        }
        char c9 = 2;
        if (size <= 2 || !((constraintWidget$DimensionBehaviour5 == (constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour3) && Optimizer.enabled(this.mOptimizationLevel, 1024) && Grouping.simpleSolvingPass(this, getMeasurer()))) {
            i9 = iMax4;
            i10 = iMax3;
            z8 = false;
        } else {
            if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour3) {
                if (iMax3 >= getWidth() || iMax3 <= 0) {
                    iMax3 = getWidth();
                } else {
                    setWidth(iMax3);
                    this.mWidthMeasuredTooSmall = true;
                }
            }
            if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour3) {
                if (iMax4 >= getHeight() || iMax4 <= 0) {
                    iMax4 = getHeight();
                } else {
                    setHeight(iMax4);
                    this.mHeightMeasuredTooSmall = true;
                }
            }
            i9 = iMax4;
            i10 = iMax3;
            z8 = true;
        }
        boolean z10 = optimizeFor(64) || optimizeFor(128);
        LinearSystem linearSystem2 = this.mSystem;
        linearSystem2.graphOptimizer = false;
        linearSystem2.newgraphOptimizer = false;
        if (this.mOptimizationLevel != 0 && z10) {
            linearSystem2.newgraphOptimizer = true;
        }
        ArrayList<ConstraintWidget> arrayList = this.mChildren;
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        boolean z11 = horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour7 || getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour7;
        resetChains();
        for (int i16 = 0; i16 < size; i16++) {
            ConstraintWidget constraintWidget2 = this.mChildren.get(i16);
            if (constraintWidget2 instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget2).layout();
            }
        }
        boolean zOptimizeFor = optimizeFor(64);
        ?? r113 = z8;
        int i17 = 0;
        ?? r114 = 1;
        while (r114 != 0) {
            int i18 = i17 + 1;
            try {
                this.mSystem.reset();
                resetChains();
                createObjectVariables(this.mSystem);
                int i19 = i14;
                while (i19 < size) {
                    i11 = i14;
                    try {
                        c = c9;
                        try {
                            this.mChildren.get(i19).createObjectVariables(this.mSystem);
                            i19++;
                            i14 = i11;
                            c9 = c;
                        } catch (Exception e) {
                            e = e;
                            r18 = z9;
                            AddChildrenToSolver = r114;
                            e.printStackTrace();
                            System.out.println("EXCEPTION : " + e);
                            linearSystem = this.mSystem;
                            if (AddChildrenToSolver != 0) {
                                UpdateChildrenFromSolver = updateChildrenFromSolver(linearSystem, Optimizer.sFlags);
                            } else {
                                updateFromSolver(linearSystem, zOptimizeFor);
                                for (i12 = i11; i12 < size; i12++) {
                                    this.mChildren.get(i12).updateFromSolver(this.mSystem, zOptimizeFor);
                                }
                                UpdateChildrenFromSolver = i11;
                            }
                            if (z11) {
                                r19 = UpdateChildrenFromSolver == true ? 1 : 0;
                            } else {
                                r19 = UpdateChildrenFromSolver == true ? 1 : 0;
                            }
                            iMax = Math.max(this.mMinWidth, getWidth());
                            r13 = r113;
                            r110 = r19;
                            if (iMax > getWidth()) {
                                setWidth(iMax);
                                this.mListDimensionBehaviors[i11] = ConstraintWidget$DimensionBehaviour.FIXED;
                                ?? r115 = r18;
                                r110 = r115 == true ? 1 : 0;
                                r13 = r115;
                            }
                            iMax2 = Math.max(this.mMinHeight, getHeight());
                            r14 = r13;
                            r111 = r110;
                            if (iMax2 > getHeight()) {
                                setHeight(iMax2);
                                this.mListDimensionBehaviors[r18] = ConstraintWidget$DimensionBehaviour.FIXED;
                                r17 = r18;
                                r111 = r17 == true ? 1 : 0;
                            }
                            if (r14 == 0) {
                                constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[i11];
                                constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                                if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                                    r14 = r17;
                                    r9 = r18;
                                    r14 = r14;
                                    r111 = r111;
                                } else {
                                    r14 = r17;
                                    r9 = r18;
                                    r14 = r14;
                                    r111 = r111;
                                }
                                if (this.mListDimensionBehaviors[r9] == constraintWidget$DimensionBehaviour2) {
                                    r14 = r17;
                                    i13 = 8;
                                    r15 = r14;
                                    r112 = r111;
                                } else {
                                    r14 = r17;
                                    i13 = 8;
                                    r15 = r14;
                                    r112 = r111;
                                }
                            } else {
                                r14 = r17;
                                i13 = 8;
                                r15 = r14;
                                r112 = r111;
                            }
                            if (i18 > i13) {
                                r16 = i11;
                            } else {
                                r16 = r112;
                            }
                            i17 = i18;
                            i14 = i11;
                            c9 = c;
                            z9 = true;
                            r113 = r15;
                            r114 = r16;
                        }
                    } catch (Exception e6) {
                        e = e6;
                        c = c9;
                    }
                }
                i11 = i14;
                c = c9;
                AddChildrenToSolver = addChildrenToSolver(this.mSystem);
                WeakReference<ConstraintAnchor> weakReference = this.mVerticalWrapMin;
                if (weakReference == null || weakReference.get() == null) {
                    r18 = z9;
                } else {
                    boolean z12 = z9;
                    try {
                        addMinWrap(this.mVerticalWrapMin.get(), this.mSystem.createObjectVariable(this.mTop));
                        this.mVerticalWrapMin = null;
                        r18 = z12;
                    } catch (Exception e9) {
                        e = e9;
                        AddChildrenToSolver = AddChildrenToSolver;
                        r18 = z12;
                        e.printStackTrace();
                        System.out.println("EXCEPTION : " + e);
                    }
                }
                WeakReference<ConstraintAnchor> weakReference2 = this.mVerticalWrapMax;
                if (weakReference2 != null && weakReference2.get() != null) {
                    addMaxWrap(this.mVerticalWrapMax.get(), this.mSystem.createObjectVariable(this.mBottom));
                    this.mVerticalWrapMax = null;
                }
                WeakReference<ConstraintAnchor> weakReference3 = this.mHorizontalWrapMin;
                if (weakReference3 != null && weakReference3.get() != null) {
                    addMinWrap(this.mHorizontalWrapMin.get(), this.mSystem.createObjectVariable(this.mLeft));
                    this.mHorizontalWrapMin = null;
                }
                WeakReference<ConstraintAnchor> weakReference4 = this.mHorizontalWrapMax;
                if (weakReference4 != null && weakReference4.get() != null) {
                    addMaxWrap(this.mHorizontalWrapMax.get(), this.mSystem.createObjectVariable(this.mRight));
                    this.mHorizontalWrapMax = null;
                }
                if (AddChildrenToSolver != 0) {
                    this.mSystem.minimize();
                }
            } catch (Exception e10) {
                e = e10;
                i11 = i14;
                r18 = z9;
                c = c9;
                AddChildrenToSolver = r114;
            }
            linearSystem = this.mSystem;
            if (AddChildrenToSolver != 0) {
                UpdateChildrenFromSolver = updateChildrenFromSolver(linearSystem, Optimizer.sFlags);
            } else {
                updateFromSolver(linearSystem, zOptimizeFor);
                while (i12 < size) {
                    this.mChildren.get(i12).updateFromSolver(this.mSystem, zOptimizeFor);
                }
                UpdateChildrenFromSolver = i11;
            }
            if (z11 || i18 >= 8 || !Optimizer.sFlags[c]) {
                r19 = UpdateChildrenFromSolver == true ? 1 : 0;
            } else {
                int i20 = i11;
                int iMax5 = i20;
                int iMax6 = iMax5;
                while (i20 < size) {
                    r1 = UpdateChildrenFromSolver;
                    ConstraintWidget constraintWidget3 = this.mChildren.get(i20);
                    iMax5 = Math.max(iMax5, constraintWidget3.getWidth() + constraintWidget3.mX);
                    iMax6 = Math.max(iMax6, constraintWidget3.getHeight() + constraintWidget3.mY);
                    i20++;
                    r1 = r1 == true ? 1 : 0;
                }
                r1 = UpdateChildrenFromSolver;
                ?? r116 = r1;
                int iMax7 = Math.max(this.mMinWidth, iMax5);
                int iMax8 = Math.max(this.mMinHeight, iMax6);
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour8 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                r113 = r113;
                r19 = r116;
                if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour8 && getWidth() < iMax7) {
                    r113 = r113;
                    r19 = r116;
                    setWidth(iMax7);
                    this.mListDimensionBehaviors[i11] = constraintWidget$DimensionBehaviour8;
                    ?? r117 = r18;
                    r19 = r117 == true ? 1 : 0;
                    r113 = r117;
                }
                if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour8 && getHeight() < iMax8) {
                    setHeight(iMax8);
                    this.mListDimensionBehaviors[r18] = constraintWidget$DimensionBehaviour8;
                    r113 = r18;
                    r19 = r113 == true ? 1 : 0;
                }
            }
            iMax = Math.max(this.mMinWidth, getWidth());
            r13 = r113;
            r110 = r19;
            if (iMax > getWidth()) {
                setWidth(iMax);
                this.mListDimensionBehaviors[i11] = ConstraintWidget$DimensionBehaviour.FIXED;
                ?? r118 = r18;
                r110 = r118 == true ? 1 : 0;
                r13 = r118;
            }
            iMax2 = Math.max(this.mMinHeight, getHeight());
            r14 = r13;
            r111 = r110;
            if (iMax2 > getHeight()) {
                setHeight(iMax2);
                this.mListDimensionBehaviors[r18] = ConstraintWidget$DimensionBehaviour.FIXED;
                r17 = r18;
                r111 = r17 == true ? 1 : 0;
            }
            if (r14 == 0) {
                constraintWidget$DimensionBehaviour = this.mListDimensionBehaviors[i11];
                constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 || i10 <= 0 || getWidth() <= i10) {
                    r14 = r17;
                    r9 = r18;
                    r14 = r14;
                    r111 = r111;
                } else {
                    ?? r10 = r18;
                    this.mWidthMeasuredTooSmall = r10;
                    this.mListDimensionBehaviors[i11] = ConstraintWidget$DimensionBehaviour.FIXED;
                    setWidth(i10);
                    boolean z13 = r10 == true ? 1 : 0;
                    r111 = z13 ? 1 : 0;
                    r9 = r10;
                    r14 = z13;
                }
                if (this.mListDimensionBehaviors[r9] == constraintWidget$DimensionBehaviour2 || i9 <= 0 || getHeight() <= i9) {
                    r14 = r17;
                    i13 = 8;
                    r15 = r14;
                    r112 = r111;
                } else {
                    this.mHeightMeasuredTooSmall = r9;
                    this.mListDimensionBehaviors[r9] = ConstraintWidget$DimensionBehaviour.FIXED;
                    setHeight(i9);
                    i13 = 8;
                    r15 = 1;
                    r112 = 1;
                }
            } else {
                r14 = r17;
                i13 = 8;
                r15 = r14;
                r112 = r111;
            }
            if (i18 > i13) {
                r16 = i11;
            } else {
                r16 = r112;
            }
            i17 = i18;
            i14 = i11;
            c9 = c;
            z9 = true;
            r113 = r15;
            r114 = r16;
        }
        int i21 = i14;
        this.mChildren = arrayList;
        if (r113 != 0) {
            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr2 = this.mListDimensionBehaviors;
            constraintWidget$DimensionBehaviourArr2[i21] = constraintWidget$DimensionBehaviour5;
            constraintWidget$DimensionBehaviourArr2[1] = constraintWidget$DimensionBehaviour4;
        }
        resetSolverVariables(this.mSystem.getCache());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean optimizeFor(int i9) {
        return (this.mOptimizationLevel & i9) == i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.WidgetContainer, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        this.mSkipSolver = false;
        super.reset();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasurer(BasicMeasure$Measurer basicMeasure$Measurer) {
        this.mMeasurer = basicMeasure$Measurer;
        this.mDependencyGraph.setMeasurer(basicMeasure$Measurer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOptimizationLevel(int i9) {
        this.mOptimizationLevel = i9;
        LinearSystem.USE_DEPENDENCY_ORDERING = optimizeFor(512);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPadding(int i9, int i10, int i11, int i12) {
        this.mPaddingLeft = i9;
        this.mPaddingTop = i10;
        this.mPaddingRight = i11;
        this.mPaddingBottom = i12;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPass(int i9) {
        this.mPass = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRtl(boolean z8) {
        this.mIsRtl = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean updateChildrenFromSolver(LinearSystem linearSystem, boolean[] zArr) {
        zArr[2] = false;
        boolean zOptimizeFor = optimizeFor(64);
        updateFromSolver(linearSystem, zOptimizeFor);
        int size = this.mChildren.size();
        boolean z8 = false;
        for (int i9 = 0; i9 < size; i9++) {
            ConstraintWidget constraintWidget = this.mChildren.get(i9);
            constraintWidget.updateFromSolver(linearSystem, zOptimizeFor);
            if (constraintWidget.hasDimensionOverride()) {
                z8 = true;
            }
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void updateFromRuns(boolean z8, boolean z9) {
        super.updateFromRuns(z8, z9);
        int size = this.mChildren.size();
        for (int i9 = 0; i9 < size; i9++) {
            this.mChildren.get(i9).updateFromRuns(z8, z9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateHierarchy() {
        this.mBasicMeasureSolver.updateHierarchy(this);
    }

    public ConstraintWidgetContainer(int i9, int i10, int i11, int i12) {
        super(i9, i10, i11, i12);
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.mVerticalWrapMin = null;
        this.mHorizontalWrapMin = null;
        this.mVerticalWrapMax = null;
        this.mHorizontalWrapMax = null;
        this.mWidgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure$Measure();
    }

    public ConstraintWidgetContainer(int i9, int i10) {
        super(i9, i10);
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.mVerticalWrapMin = null;
        this.mHorizontalWrapMin = null;
        this.mVerticalWrapMax = null;
        this.mHorizontalWrapMax = null;
        this.mWidgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure$Measure();
    }

    public ConstraintWidgetContainer() {
        this.mBasicMeasureSolver = new BasicMeasure(this);
        this.mDependencyGraph = new DependencyGraph(this);
        this.mMeasurer = null;
        this.mIsRtl = false;
        this.mSystem = new LinearSystem();
        this.mHorizontalChainsSize = 0;
        this.mVerticalChainsSize = 0;
        this.mVerticalChainsArray = new ChainHead[4];
        this.mHorizontalChainsArray = new ChainHead[4];
        this.mGroupsWrapOptimized = false;
        this.mHorizontalWrapOptimized = false;
        this.mVerticalWrapOptimized = false;
        this.mWrapFixedWidth = 0;
        this.mWrapFixedHeight = 0;
        this.mOptimizationLevel = 257;
        this.mSkipSolver = false;
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        this.mDebugSolverPassCount = 0;
        this.mVerticalWrapMin = null;
        this.mHorizontalWrapMin = null;
        this.mVerticalWrapMax = null;
        this.mHorizontalWrapMax = null;
        this.mWidgetsToAdd = new HashSet<>();
        this.mMeasure = new BasicMeasure$Measure();
    }

    public long measure(int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        this.mPaddingLeft = i16;
        this.mPaddingTop = i17;
        return this.mBasicMeasureSolver.solverMeasure(this, i9, i16, i17, i10, i11, i12, i13, i14, i15);
    }
}
