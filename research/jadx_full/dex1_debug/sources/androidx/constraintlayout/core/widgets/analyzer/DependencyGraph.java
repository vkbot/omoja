package androidx.constraintlayout.core.widgets.analyzer;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DependencyGraph {
    private static final boolean DEBUG = false;
    private static final boolean USE_GROUPS = true;
    private ConstraintWidgetContainer mContainer;
    private ConstraintWidgetContainer mWidgetcontainer;
    private boolean mNeedBuildGraph = true;
    private boolean mNeedRedoMeasures = true;
    private ArrayList<WidgetRun> mRuns = new ArrayList<>();
    private ArrayList<RunGroup> mRunGroups = new ArrayList<>();
    private BasicMeasure$Measurer mMeasurer = null;
    private BasicMeasure$Measure mMeasure = new BasicMeasure$Measure();
    ArrayList<RunGroup> mGroups = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DependencyGraph(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mWidgetcontainer = constraintWidgetContainer;
        this.mContainer = constraintWidgetContainer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void applyGroup(DependencyNode dependencyNode, int i9, int i10, DependencyNode dependencyNode2, ArrayList<RunGroup> arrayList, RunGroup runGroup) {
        int i11;
        DependencyNode dependencyNode3;
        ArrayList<RunGroup> arrayList2;
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun.mRunGroup == null) {
            ConstraintWidgetContainer constraintWidgetContainer = this.mWidgetcontainer;
            if (widgetRun == constraintWidgetContainer.mHorizontalRun || widgetRun == constraintWidgetContainer.mVerticalRun) {
                return;
            }
            if (runGroup == null) {
                runGroup = new RunGroup(widgetRun, i10);
                arrayList.add(runGroup);
            }
            RunGroup runGroup2 = runGroup;
            widgetRun.mRunGroup = runGroup2;
            runGroup2.add(widgetRun);
            for (Dependency dependency : widgetRun.start.mDependencies) {
                if (dependency instanceof DependencyNode) {
                    i11 = i9;
                    dependencyNode3 = dependencyNode2;
                    arrayList2 = arrayList;
                    applyGroup((DependencyNode) dependency, i11, 0, dependencyNode3, arrayList2, runGroup2);
                } else {
                    i11 = i9;
                    dependencyNode3 = dependencyNode2;
                    arrayList2 = arrayList;
                }
                i9 = i11;
                dependencyNode2 = dependencyNode3;
                arrayList = arrayList2;
            }
            int i12 = i9;
            DependencyNode dependencyNode4 = dependencyNode2;
            ArrayList<RunGroup> arrayList3 = arrayList;
            for (Dependency dependency2 : widgetRun.end.mDependencies) {
                if (dependency2 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency2, i12, 1, dependencyNode4, arrayList3, runGroup2);
                }
            }
            if (i12 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.mDependencies) {
                    if (dependency3 instanceof DependencyNode) {
                        applyGroup((DependencyNode) dependency3, i12, 2, dependencyNode4, arrayList3, runGroup2);
                    }
                }
            }
            for (DependencyNode dependencyNode5 : widgetRun.start.mTargets) {
                if (dependencyNode5 == dependencyNode4) {
                    runGroup2.dual = true;
                }
                applyGroup(dependencyNode5, i12, 0, dependencyNode4, arrayList3, runGroup2);
            }
            for (DependencyNode dependencyNode6 : widgetRun.end.mTargets) {
                if (dependencyNode6 == dependencyNode4) {
                    runGroup2.dual = true;
                }
                applyGroup(dependencyNode6, i12, 1, dependencyNode4, arrayList3, runGroup2);
            }
            if (i12 == 1 && (widgetRun instanceof VerticalWidgetRun)) {
                Iterator<DependencyNode> it = ((VerticalWidgetRun) widgetRun).baseline.mTargets.iterator();
                while (it.hasNext()) {
                    applyGroup(it.next(), i12, 2, dependencyNode4, arrayList3, runGroup2);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r16v0, resolved type: boolean */
    /* JADX WARN: Code duplicated, block: B:117:0x0224 A[PHI: r9
  0x0224: PHI (r9v10 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour) = 
  (r9v8 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
  (r9v11 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
 binds: [B:122:0x0263, B:115:0x0221] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    private boolean basicMeasureWidgets(ConstraintWidgetContainer constraintWidgetContainer) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        int i9;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        float f8;
        float f9;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5;
        ArrayList<ConstraintWidget> arrayList = constraintWidgetContainer.mChildren;
        int size = arrayList.size();
        char c = 0;
        int i10 = 0;
        while (i10 < size) {
            ConstraintWidget constraintWidget = arrayList.get(i10);
            i10++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = constraintWidget2.mListDimensionBehaviors;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = constraintWidget$DimensionBehaviourArr[c];
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = constraintWidget$DimensionBehaviourArr[1];
            if (constraintWidget2.getVisibility() == 8) {
                constraintWidget2.measured = true;
            } else {
                if (constraintWidget2.mMatchConstraintPercentWidth < 1.0f && constraintWidget$DimensionBehaviour6 == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget2.mMatchConstraintDefaultWidth = 2;
                }
                if (constraintWidget2.mMatchConstraintPercentHeight < 1.0f && constraintWidget$DimensionBehaviour7 == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    constraintWidget2.mMatchConstraintDefaultHeight = 2;
                }
                if (constraintWidget2.getDimensionRatio() > 0.0f) {
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour8 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                    if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour8 && (constraintWidget$DimensionBehaviour7 == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT || constraintWidget$DimensionBehaviour7 == ConstraintWidget$DimensionBehaviour.FIXED)) {
                        constraintWidget2.mMatchConstraintDefaultWidth = 3;
                    } else if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour8 && (constraintWidget$DimensionBehaviour6 == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT || constraintWidget$DimensionBehaviour6 == ConstraintWidget$DimensionBehaviour.FIXED)) {
                        constraintWidget2.mMatchConstraintDefaultHeight = 3;
                    } else if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour8 && constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour8) {
                        if (constraintWidget2.mMatchConstraintDefaultWidth == 0) {
                            constraintWidget2.mMatchConstraintDefaultWidth = 3;
                        }
                        if (constraintWidget2.mMatchConstraintDefaultHeight == 0) {
                            constraintWidget2.mMatchConstraintDefaultHeight = 3;
                        }
                    }
                }
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour9 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour9 && constraintWidget2.mMatchConstraintDefaultWidth == 1 && (constraintWidget2.mLeft.mTarget == null || constraintWidget2.mRight.mTarget == null)) {
                    constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                }
                if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour9 && constraintWidget2.mMatchConstraintDefaultHeight == 1 && (constraintWidget2.mTop.mTarget == null || constraintWidget2.mBottom.mTarget == null)) {
                    constraintWidget$DimensionBehaviour7 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                }
                HorizontalWidgetRun horizontalWidgetRun = constraintWidget2.mHorizontalRun;
                horizontalWidgetRun.mDimensionBehavior = constraintWidget$DimensionBehaviour6;
                int i11 = constraintWidget2.mMatchConstraintDefaultWidth;
                horizontalWidgetRun.matchConstraintsType = i11;
                VerticalWidgetRun verticalWidgetRun = constraintWidget2.mVerticalRun;
                verticalWidgetRun.mDimensionBehavior = constraintWidget$DimensionBehaviour7;
                int i12 = constraintWidget2.mMatchConstraintDefaultHeight;
                verticalWidgetRun.matchConstraintsType = i12;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour10 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
                char c9 = c;
                if ((constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour10 || constraintWidget$DimensionBehaviour6 == ConstraintWidget$DimensionBehaviour.FIXED || constraintWidget$DimensionBehaviour6 == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour10 || constraintWidget$DimensionBehaviour7 == ConstraintWidget$DimensionBehaviour.FIXED || constraintWidget$DimensionBehaviour7 == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT)) {
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour11 = constraintWidget$DimensionBehaviour7;
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour12 = constraintWidget$DimensionBehaviour6;
                    int width = constraintWidget2.getWidth();
                    if (constraintWidget$DimensionBehaviour12 == constraintWidget$DimensionBehaviour10) {
                        width = (constraintWidgetContainer.getWidth() - constraintWidget2.mLeft.mMargin) - constraintWidget2.mRight.mMargin;
                        constraintWidget$DimensionBehaviour12 = ConstraintWidget$DimensionBehaviour.FIXED;
                    }
                    int i13 = width;
                    int height = constraintWidget2.getHeight();
                    if (constraintWidget$DimensionBehaviour11 == constraintWidget$DimensionBehaviour10) {
                        height = (constraintWidgetContainer.getHeight() - constraintWidget2.mTop.mMargin) - constraintWidget2.mBottom.mMargin;
                        constraintWidget$DimensionBehaviour11 = ConstraintWidget$DimensionBehaviour.FIXED;
                    }
                    measure(constraintWidget2, constraintWidget$DimensionBehaviour12, i13, constraintWidget$DimensionBehaviour11, height);
                    constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                    constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                    constraintWidget2.measured = true;
                } else {
                    if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour9) {
                        constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour9;
                        f9 = 0.5f;
                        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour13 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                        f8 = 1.0f;
                        if (constraintWidget$DimensionBehaviour7 != constraintWidget$DimensionBehaviour13 && constraintWidget$DimensionBehaviour7 != ConstraintWidget$DimensionBehaviour.FIXED) {
                            constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour7;
                            i9 = 3;
                        } else if (i11 == 3) {
                            if (constraintWidget$DimensionBehaviour7 == constraintWidget$DimensionBehaviour13) {
                                measure(constraintWidget2, constraintWidget$DimensionBehaviour13, 0, constraintWidget$DimensionBehaviour13, 0);
                            }
                            int height2 = constraintWidget2.getHeight();
                            int i14 = (int) ((height2 * constraintWidget2.mDimensionRatio) + 0.5f);
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour14 = ConstraintWidget$DimensionBehaviour.FIXED;
                            measure(constraintWidget2, constraintWidget$DimensionBehaviour14, i14, constraintWidget$DimensionBehaviour14, height2);
                            constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                            constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                            constraintWidget2.measured = true;
                        } else if (i11 == 1) {
                            measure(constraintWidget2, constraintWidget$DimensionBehaviour13, 0, constraintWidget$DimensionBehaviour7, 0);
                            constraintWidget2.mHorizontalRun.mDimension.wrapValue = constraintWidget2.getWidth();
                        } else {
                            constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour7;
                            i9 = 3;
                            if (i11 == 2) {
                                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour15 = constraintWidgetContainer.mListDimensionBehaviors[c9];
                                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour16 = ConstraintWidget$DimensionBehaviour.FIXED;
                                if (constraintWidget$DimensionBehaviour15 == constraintWidget$DimensionBehaviour16 || constraintWidget$DimensionBehaviour15 == constraintWidget$DimensionBehaviour10) {
                                    measure(constraintWidget2, constraintWidget$DimensionBehaviour16, (int) ((constraintWidget2.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + 0.5f), constraintWidget$DimensionBehaviour, constraintWidget2.getHeight());
                                    constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                                    constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                                    constraintWidget2.measured = true;
                                }
                            } else {
                                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                                if (constraintAnchorArr[c9].mTarget == null || constraintAnchorArr[1].mTarget == null) {
                                    measure(constraintWidget2, constraintWidget$DimensionBehaviour13, 0, constraintWidget$DimensionBehaviour, 0);
                                    constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                                    constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                                    constraintWidget2.measured = true;
                                }
                            }
                        }
                    } else {
                        constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour7;
                        i9 = 3;
                        constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviour9;
                        f8 = 1.0f;
                        f9 = 0.5f;
                    }
                    if (constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour2 || (constraintWidget$DimensionBehaviour6 != (constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) && constraintWidget$DimensionBehaviour6 != ConstraintWidget$DimensionBehaviour.FIXED)) {
                        constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviour6;
                    } else if (i12 == i9) {
                        if (constraintWidget$DimensionBehaviour6 == constraintWidget$DimensionBehaviour4) {
                            measure(constraintWidget2, constraintWidget$DimensionBehaviour4, 0, constraintWidget$DimensionBehaviour4, 0);
                        }
                        int width2 = constraintWidget2.getWidth();
                        float f10 = constraintWidget2.mDimensionRatio;
                        if (constraintWidget2.getDimensionRatioSide() == -1) {
                            f10 = f8 / f10;
                        }
                        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour17 = ConstraintWidget$DimensionBehaviour.FIXED;
                        measure(constraintWidget2, constraintWidget$DimensionBehaviour17, width2, constraintWidget$DimensionBehaviour17, (int) ((width2 * f10) + f9));
                        constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                        constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                        constraintWidget2.measured = true;
                    } else if (i12 == 1) {
                        measure(constraintWidget2, constraintWidget$DimensionBehaviour6, 0, constraintWidget$DimensionBehaviour4, 0);
                        constraintWidget2.mVerticalRun.mDimension.wrapValue = constraintWidget2.getHeight();
                    } else {
                        constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviour6;
                        if (i12 == 2) {
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour18 = constraintWidgetContainer.mListDimensionBehaviors[1];
                            constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviour;
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour19 = ConstraintWidget$DimensionBehaviour.FIXED;
                            if (constraintWidget$DimensionBehaviour18 == constraintWidget$DimensionBehaviour19 || constraintWidget$DimensionBehaviour18 == constraintWidget$DimensionBehaviour10) {
                                measure(constraintWidget2, constraintWidget$DimensionBehaviour3, constraintWidget2.getWidth(), constraintWidget$DimensionBehaviour19, (int) ((constraintWidget2.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + f9));
                                constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                                constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                                constraintWidget2.measured = true;
                            } else {
                                constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour5;
                            }
                        } else {
                            constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviour;
                            ConstraintAnchor[] constraintAnchorArr2 = constraintWidget2.mListAnchors;
                            if (constraintAnchorArr2[2].mTarget == null || constraintAnchorArr2[i9].mTarget == null) {
                                measure(constraintWidget2, constraintWidget$DimensionBehaviour4, 0, constraintWidget$DimensionBehaviour5, 0);
                                constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                                constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                                constraintWidget2.measured = true;
                            } else {
                                constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviour5;
                            }
                        }
                    }
                    if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour2 && constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2) {
                        if (i11 == 1 || i12 == 1) {
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour20 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                            measure(constraintWidget2, constraintWidget$DimensionBehaviour20, 0, constraintWidget$DimensionBehaviour20, 0);
                            constraintWidget2.mHorizontalRun.mDimension.wrapValue = constraintWidget2.getWidth();
                            constraintWidget2.mVerticalRun.mDimension.wrapValue = constraintWidget2.getHeight();
                        } else if (i12 == 2 && i11 == 2) {
                            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr2 = constraintWidgetContainer.mListDimensionBehaviors;
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour21 = constraintWidget$DimensionBehaviourArr2[c9];
                            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour22 = ConstraintWidget$DimensionBehaviour.FIXED;
                            if (constraintWidget$DimensionBehaviour21 == constraintWidget$DimensionBehaviour22 && constraintWidget$DimensionBehaviourArr2[1] == constraintWidget$DimensionBehaviour22) {
                                measure(constraintWidget2, constraintWidget$DimensionBehaviour22, (int) ((constraintWidget2.mMatchConstraintPercentWidth * constraintWidgetContainer.getWidth()) + f9), constraintWidget$DimensionBehaviour22, (int) ((constraintWidget2.mMatchConstraintPercentHeight * constraintWidgetContainer.getHeight()) + f9));
                                constraintWidget2.mHorizontalRun.mDimension.resolve(constraintWidget2.getWidth());
                                constraintWidget2.mVerticalRun.mDimension.resolve(constraintWidget2.getHeight());
                                constraintWidget2.measured = true;
                            }
                        }
                    }
                }
                c = c9;
            }
        }
        return c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int computeWrap(ConstraintWidgetContainer constraintWidgetContainer, int i9) {
        int size = this.mGroups.size();
        long jMax = 0;
        for (int i10 = 0; i10 < size; i10++) {
            jMax = Math.max(jMax, this.mGroups.get(i10).computeWrapSize(constraintWidgetContainer, i9));
        }
        return (int) jMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void displayGraph() {
        ArrayList<WidgetRun> arrayList = this.mRuns;
        int size = arrayList.size();
        String strGenerateDisplayGraph = "digraph {\n";
        int i9 = 0;
        while (i9 < size) {
            WidgetRun widgetRun = arrayList.get(i9);
            i9++;
            strGenerateDisplayGraph = generateDisplayGraph(widgetRun, strGenerateDisplayGraph);
        }
        String strC = a.C(strGenerateDisplayGraph, "\n}\n");
        System.out.println("content:<<\n" + strC + "\n>>");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void findGroup(WidgetRun widgetRun, int i9, ArrayList<RunGroup> arrayList) {
        for (Dependency dependency : widgetRun.start.mDependencies) {
            if (dependency instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency, i9, 0, widgetRun.end, arrayList, null);
            } else if (dependency instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency).start, i9, 0, widgetRun.end, arrayList, null);
            }
        }
        for (Dependency dependency2 : widgetRun.end.mDependencies) {
            if (dependency2 instanceof DependencyNode) {
                applyGroup((DependencyNode) dependency2, i9, 1, widgetRun.start, arrayList, null);
            } else if (dependency2 instanceof WidgetRun) {
                applyGroup(((WidgetRun) dependency2).end, i9, 1, widgetRun.start, arrayList, null);
            }
        }
        int i10 = i9;
        if (i10 == 1) {
            for (Dependency dependency3 : ((VerticalWidgetRun) widgetRun).baseline.mDependencies) {
                if (dependency3 instanceof DependencyNode) {
                    applyGroup((DependencyNode) dependency3, i10, 2, null, arrayList, null);
                }
                i10 = i9;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String generateChainDisplayGraph(ChainRun chainRun, String str) {
        int i9 = chainRun.orientation;
        StringBuilder sb = new StringBuilder("subgraph cluster_");
        sb.append(chainRun.mWidget.getDebugName());
        if (i9 == 0) {
            sb.append("_h");
        } else {
            sb.append("_v");
        }
        sb.append(" {\n");
        ArrayList<WidgetRun> arrayList = chainRun.mWidgets;
        int size = arrayList.size();
        String strGenerateDisplayGraph = "";
        int i10 = 0;
        while (i10 < size) {
            WidgetRun widgetRun = arrayList.get(i10);
            i10++;
            WidgetRun widgetRun2 = widgetRun;
            sb.append(widgetRun2.mWidget.getDebugName());
            if (i9 == 0) {
                sb.append("_HORIZONTAL");
            } else {
                sb.append("_VERTICAL");
            }
            sb.append(";\n");
            strGenerateDisplayGraph = generateDisplayGraph(widgetRun2, strGenerateDisplayGraph);
        }
        sb.append("}\n");
        return str + strGenerateDisplayGraph + ((Object) sb);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String generateDisplayGraph(WidgetRun widgetRun, String str) {
        boolean z8;
        DependencyNode dependencyNode = widgetRun.start;
        DependencyNode dependencyNode2 = widgetRun.end;
        StringBuilder sb = new StringBuilder(str);
        if (!(widgetRun instanceof HelperReferences) && dependencyNode.mDependencies.isEmpty() && dependencyNode2.mDependencies.isEmpty() && dependencyNode.mTargets.isEmpty() && dependencyNode2.mTargets.isEmpty()) {
            return str;
        }
        sb.append(nodeDefinition(widgetRun));
        boolean zIsCenteredConnection = isCenteredConnection(dependencyNode, dependencyNode2);
        String strGenerateDisplayNode = generateDisplayNode(dependencyNode2, zIsCenteredConnection, generateDisplayNode(dependencyNode, zIsCenteredConnection, str));
        boolean z9 = widgetRun instanceof VerticalWidgetRun;
        if (z9) {
            strGenerateDisplayNode = generateDisplayNode(((VerticalWidgetRun) widgetRun).baseline, zIsCenteredConnection, strGenerateDisplayNode);
        }
        if ((widgetRun instanceof HorizontalWidgetRun) || (((z8 = widgetRun instanceof ChainRun)) && ((ChainRun) widgetRun).orientation == 0)) {
            ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = widgetRun.mWidget.getHorizontalDimensionBehaviour();
            if (horizontalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.FIXED || horizontalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                if (!dependencyNode.mTargets.isEmpty() && dependencyNode2.mTargets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(" -> ");
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.mTargets.isEmpty() && !dependencyNode2.mTargets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(" -> ");
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            } else if (horizontalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.mWidget.getDimensionRatio() > 0.0f) {
                sb.append("\n");
                sb.append(widgetRun.mWidget.getDebugName());
                sb.append("_HORIZONTAL -> ");
                sb.append(widgetRun.mWidget.getDebugName());
                sb.append("_VERTICAL;\n");
            }
        } else if (z9 || (z8 && ((ChainRun) widgetRun).orientation == 1)) {
            ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour = widgetRun.mWidget.getVerticalDimensionBehaviour();
            if (verticalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.FIXED || verticalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                if (!dependencyNode.mTargets.isEmpty() && dependencyNode2.mTargets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode2.name());
                    sb.append(" -> ");
                    sb.append(dependencyNode.name());
                    sb.append("\n");
                } else if (dependencyNode.mTargets.isEmpty() && !dependencyNode2.mTargets.isEmpty()) {
                    sb.append("\n");
                    sb.append(dependencyNode.name());
                    sb.append(" -> ");
                    sb.append(dependencyNode2.name());
                    sb.append("\n");
                }
            } else if (verticalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && widgetRun.mWidget.getDimensionRatio() > 0.0f) {
                sb.append("\n");
                sb.append(widgetRun.mWidget.getDebugName());
                sb.append("_VERTICAL -> ");
                sb.append(widgetRun.mWidget.getDebugName());
                sb.append("_HORIZONTAL;\n");
            }
        }
        return widgetRun instanceof ChainRun ? generateChainDisplayGraph((ChainRun) widgetRun, strGenerateDisplayNode) : sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String generateDisplayNode(DependencyNode dependencyNode, boolean z8, String str) {
        StringBuilder sb = new StringBuilder(str);
        for (DependencyNode dependencyNode2 : dependencyNode.mTargets) {
            StringBuilder sbW = a.w("\n" + dependencyNode.name(), " -> ");
            sbW.append(dependencyNode2.name());
            String string = sbW.toString();
            if (dependencyNode.mMargin > 0 || z8 || (dependencyNode.mRun instanceof HelperReferences)) {
                String strConcat = string.concat("[");
                if (dependencyNode.mMargin > 0) {
                    strConcat = a.o(a.w(strConcat, "label=\""), "\"", dependencyNode.mMargin);
                    if (z8) {
                        strConcat = strConcat.concat(",");
                    }
                }
                if (z8) {
                    strConcat = strConcat.concat(" style=dashed ");
                }
                if (dependencyNode.mRun instanceof HelperReferences) {
                    strConcat = strConcat.concat(" style=bold,color=gray ");
                }
                string = strConcat.concat("]");
            }
            sb.append(string.concat("\n"));
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isCenteredConnection(DependencyNode dependencyNode, DependencyNode dependencyNode2) {
        Iterator<DependencyNode> it = dependencyNode.mTargets.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            if (it.next() != dependencyNode2) {
                i9++;
            }
        }
        Iterator<DependencyNode> it2 = dependencyNode2.mTargets.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (it2.next() != dependencyNode) {
                i10++;
            }
        }
        return i9 > 0 && i10 > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measure(ConstraintWidget constraintWidget, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, int i9, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, int i10) {
        BasicMeasure$Measure basicMeasure$Measure = this.mMeasure;
        basicMeasure$Measure.horizontalBehavior = constraintWidget$DimensionBehaviour;
        basicMeasure$Measure.verticalBehavior = constraintWidget$DimensionBehaviour2;
        basicMeasure$Measure.horizontalDimension = i9;
        basicMeasure$Measure.verticalDimension = i10;
        this.mMeasurer.measure(constraintWidget, basicMeasure$Measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String nodeDefinition(WidgetRun widgetRun) {
        boolean z8 = widgetRun instanceof VerticalWidgetRun;
        String debugName = widgetRun.mWidget.getDebugName();
        StringBuilder sb = new StringBuilder(debugName);
        ConstraintWidget constraintWidget = widgetRun.mWidget;
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = !z8 ? constraintWidget.getHorizontalDimensionBehaviour() : constraintWidget.getVerticalDimensionBehaviour();
        RunGroup runGroup = widgetRun.mRunGroup;
        if (z8) {
            sb.append("_VERTICAL");
        } else {
            sb.append("_HORIZONTAL");
        }
        sb.append(" [shape=none, label=<<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">  <TR>");
        if (z8) {
            sb.append("    <TD ");
            if (widgetRun.start.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"TOP\" BORDER=\"1\">T</TD>");
        } else {
            sb.append("    <TD ");
            if (widgetRun.start.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"LEFT\" BORDER=\"1\">L</TD>");
        }
        sb.append("    <TD BORDER=\"1\" ");
        boolean z9 = widgetRun.mDimension.resolved;
        if (z9 && !widgetRun.mWidget.measured) {
            sb.append(" BGCOLOR=\"green\" ");
        } else if (z9) {
            sb.append(" BGCOLOR=\"lightgray\" ");
        } else if (widgetRun.mWidget.measured) {
            sb.append(" BGCOLOR=\"yellow\" ");
        }
        if (horizontalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            sb.append("style=\"dashed\"");
        }
        sb.append(">");
        sb.append(debugName);
        if (runGroup != null) {
            sb.append(" [");
            sb.append(runGroup.mGroupIndex + 1);
            sb.append("/");
            sb.append(RunGroup.index);
            sb.append("]");
        }
        sb.append(" </TD>");
        if (z8) {
            sb.append("    <TD ");
            if (((VerticalWidgetRun) widgetRun).baseline.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"BASELINE\" BORDER=\"1\">b</TD>    <TD ");
            if (widgetRun.end.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"BOTTOM\" BORDER=\"1\">B</TD>");
        } else {
            sb.append("    <TD ");
            if (widgetRun.end.resolved) {
                sb.append(" BGCOLOR=\"green\"");
            }
            sb.append(" PORT=\"RIGHT\" BORDER=\"1\">R</TD>");
        }
        sb.append("  </TR></TABLE>>];\n");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void buildGraph(ArrayList<WidgetRun> arrayList) {
        arrayList.clear();
        this.mContainer.mHorizontalRun.clear();
        this.mContainer.mVerticalRun.clear();
        arrayList.add(this.mContainer.mHorizontalRun);
        arrayList.add(this.mContainer.mVerticalRun);
        ArrayList<ConstraintWidget> arrayList2 = this.mContainer.mChildren;
        int size = arrayList2.size();
        HashSet hashSet = null;
        int i9 = 0;
        int i10 = 0;
        while (i10 < size) {
            ConstraintWidget constraintWidget = arrayList2.get(i10);
            i10++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            if (constraintWidget2 instanceof Guideline) {
                arrayList.add(new GuidelineReference(constraintWidget2));
            } else {
                if (constraintWidget2.isInHorizontalChain()) {
                    if (constraintWidget2.horizontalChainRun == null) {
                        constraintWidget2.horizontalChainRun = new ChainRun(constraintWidget2, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget2.horizontalChainRun);
                } else {
                    arrayList.add(constraintWidget2.mHorizontalRun);
                }
                if (constraintWidget2.isInVerticalChain()) {
                    if (constraintWidget2.verticalChainRun == null) {
                        constraintWidget2.verticalChainRun = new ChainRun(constraintWidget2, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(constraintWidget2.verticalChainRun);
                } else {
                    arrayList.add(constraintWidget2.mVerticalRun);
                }
                if (constraintWidget2 instanceof HelperWidget) {
                    arrayList.add(new HelperReferences(constraintWidget2));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        int size2 = arrayList.size();
        int i11 = 0;
        while (i11 < size2) {
            WidgetRun widgetRun = arrayList.get(i11);
            i11++;
            widgetRun.clear();
        }
        int size3 = arrayList.size();
        while (i9 < size3) {
            WidgetRun widgetRun2 = arrayList.get(i9);
            i9++;
            WidgetRun widgetRun3 = widgetRun2;
            if (widgetRun3.mWidget != this.mContainer) {
                widgetRun3.apply();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void defineTerminalWidgets(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2) {
        if (this.mNeedBuildGraph) {
            buildGraph();
            ArrayList<ConstraintWidget> arrayList = this.mWidgetcontainer.mChildren;
            int size = arrayList.size();
            boolean z8 = false;
            int i9 = 0;
            while (i9 < size) {
                ConstraintWidget constraintWidget = arrayList.get(i9);
                i9++;
                ConstraintWidget constraintWidget2 = constraintWidget;
                boolean[] zArr = constraintWidget2.isTerminalWidget;
                zArr[0] = true;
                zArr[1] = true;
                if (constraintWidget2 instanceof Barrier) {
                    z8 = true;
                }
            }
            if (z8) {
                return;
            }
            ArrayList<RunGroup> arrayList2 = this.mGroups;
            int size2 = arrayList2.size();
            int i10 = 0;
            while (i10 < size2) {
                RunGroup runGroup = arrayList2.get(i10);
                i10++;
                RunGroup runGroup2 = runGroup;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                runGroup2.defineTerminalWidgets(constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3, constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean directMeasure(boolean z8) {
        boolean z9;
        boolean z10 = false;
        if (this.mNeedBuildGraph || this.mNeedRedoMeasures) {
            ArrayList<ConstraintWidget> arrayList = this.mWidgetcontainer.mChildren;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                ConstraintWidget constraintWidget = arrayList.get(i9);
                i9++;
                ConstraintWidget constraintWidget2 = constraintWidget;
                constraintWidget2.ensureWidgetRuns();
                constraintWidget2.measured = false;
                constraintWidget2.mHorizontalRun.reset();
                constraintWidget2.mVerticalRun.reset();
            }
            this.mWidgetcontainer.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.mWidgetcontainer;
            constraintWidgetContainer.measured = false;
            constraintWidgetContainer.mHorizontalRun.reset();
            this.mWidgetcontainer.mVerticalRun.reset();
            this.mNeedRedoMeasures = false;
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.mWidgetcontainer.setX(0);
        this.mWidgetcontainer.setY(0);
        ConstraintWidget$DimensionBehaviour dimensionBehaviour = this.mWidgetcontainer.getDimensionBehaviour(0);
        ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = this.mWidgetcontainer.getDimensionBehaviour(1);
        if (this.mNeedBuildGraph) {
            buildGraph();
        }
        int x8 = this.mWidgetcontainer.getX();
        int y8 = this.mWidgetcontainer.getY();
        this.mWidgetcontainer.mHorizontalRun.start.resolve(x8);
        this.mWidgetcontainer.mVerticalRun.start.resolve(y8);
        measureWidgets();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour == constraintWidget$DimensionBehaviour || dimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
            if (z8) {
                ArrayList<WidgetRun> arrayList2 = this.mRuns;
                int size2 = arrayList2.size();
                int i10 = 0;
                while (i10 < size2) {
                    WidgetRun widgetRun = arrayList2.get(i10);
                    i10++;
                    if (!widgetRun.supportsWrapComputation()) {
                        z8 = false;
                        break;
                    }
                }
            }
            if (z8 && dimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                this.mWidgetcontainer.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer2 = this.mWidgetcontainer;
                constraintWidgetContainer2.setWidth(computeWrap(constraintWidgetContainer2, 0));
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mWidgetcontainer;
                constraintWidgetContainer3.mHorizontalRun.mDimension.resolve(constraintWidgetContainer3.getWidth());
            }
            if (z8 && dimensionBehaviour2 == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                this.mWidgetcontainer.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer4 = this.mWidgetcontainer;
                constraintWidgetContainer4.setHeight(computeWrap(constraintWidgetContainer4, 1));
                ConstraintWidgetContainer constraintWidgetContainer5 = this.mWidgetcontainer;
                constraintWidgetContainer5.mVerticalRun.mDimension.resolve(constraintWidgetContainer5.getHeight());
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer6 = this.mWidgetcontainer;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidgetContainer6.mListDimensionBehaviors[0];
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.FIXED;
        if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3 || constraintWidget$DimensionBehaviour2 == ConstraintWidget$DimensionBehaviour.MATCH_PARENT) {
            int width = constraintWidgetContainer6.getWidth() + x8;
            this.mWidgetcontainer.mHorizontalRun.end.resolve(width);
            this.mWidgetcontainer.mHorizontalRun.mDimension.resolve(width - x8);
            measureWidgets();
            ConstraintWidgetContainer constraintWidgetContainer7 = this.mWidgetcontainer;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = constraintWidgetContainer7.mListDimensionBehaviors[1];
            if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour3 || constraintWidget$DimensionBehaviour4 == ConstraintWidget$DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer7.getHeight() + y8;
                this.mWidgetcontainer.mVerticalRun.end.resolve(height);
                this.mWidgetcontainer.mVerticalRun.mDimension.resolve(height - y8);
            }
            measureWidgets();
            z9 = true;
        } else {
            z9 = false;
        }
        ArrayList<WidgetRun> arrayList3 = this.mRuns;
        int size3 = arrayList3.size();
        int i11 = 0;
        while (i11 < size3) {
            WidgetRun widgetRun2 = arrayList3.get(i11);
            i11++;
            WidgetRun widgetRun3 = widgetRun2;
            if (widgetRun3.mWidget != this.mWidgetcontainer || widgetRun3.mResolved) {
                widgetRun3.applyToWidget();
            }
        }
        ArrayList<WidgetRun> arrayList4 = this.mRuns;
        int size4 = arrayList4.size();
        int i12 = 0;
        while (i12 < size4) {
            WidgetRun widgetRun4 = arrayList4.get(i12);
            i12++;
            WidgetRun widgetRun5 = widgetRun4;
            if (z9 || widgetRun5.mWidget != this.mWidgetcontainer) {
                if (!widgetRun5.start.resolved || ((!widgetRun5.end.resolved && !(widgetRun5 instanceof GuidelineReference)) || (!widgetRun5.mDimension.resolved && !(widgetRun5 instanceof ChainRun) && !(widgetRun5 instanceof GuidelineReference)))) {
                    this.mWidgetcontainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mWidgetcontainer.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    return z10;
                }
            }
        }
        z10 = true;
        this.mWidgetcontainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.mWidgetcontainer.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean directMeasureSetup(boolean z8) {
        if (this.mNeedBuildGraph) {
            ArrayList<ConstraintWidget> arrayList = this.mWidgetcontainer.mChildren;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                ConstraintWidget constraintWidget = arrayList.get(i9);
                i9++;
                ConstraintWidget constraintWidget2 = constraintWidget;
                constraintWidget2.ensureWidgetRuns();
                constraintWidget2.measured = false;
                HorizontalWidgetRun horizontalWidgetRun = constraintWidget2.mHorizontalRun;
                horizontalWidgetRun.mDimension.resolved = false;
                horizontalWidgetRun.mResolved = false;
                horizontalWidgetRun.reset();
                VerticalWidgetRun verticalWidgetRun = constraintWidget2.mVerticalRun;
                verticalWidgetRun.mDimension.resolved = false;
                verticalWidgetRun.mResolved = false;
                verticalWidgetRun.reset();
            }
            this.mWidgetcontainer.ensureWidgetRuns();
            ConstraintWidgetContainer constraintWidgetContainer = this.mWidgetcontainer;
            constraintWidgetContainer.measured = false;
            HorizontalWidgetRun horizontalWidgetRun2 = constraintWidgetContainer.mHorizontalRun;
            horizontalWidgetRun2.mDimension.resolved = false;
            horizontalWidgetRun2.mResolved = false;
            horizontalWidgetRun2.reset();
            VerticalWidgetRun verticalWidgetRun2 = this.mWidgetcontainer.mVerticalRun;
            verticalWidgetRun2.mDimension.resolved = false;
            verticalWidgetRun2.mResolved = false;
            verticalWidgetRun2.reset();
            buildGraph();
        }
        if (basicMeasureWidgets(this.mContainer)) {
            return false;
        }
        this.mWidgetcontainer.setX(0);
        this.mWidgetcontainer.setY(0);
        this.mWidgetcontainer.mHorizontalRun.start.resolve(0);
        this.mWidgetcontainer.mVerticalRun.start.resolve(0);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:36:0x00be  */
    public boolean directMeasureWithOrientation(boolean z8, int i9) {
        boolean z9;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        boolean z10 = false;
        ConstraintWidget$DimensionBehaviour dimensionBehaviour = this.mWidgetcontainer.getDimensionBehaviour(0);
        ConstraintWidget$DimensionBehaviour dimensionBehaviour2 = this.mWidgetcontainer.getDimensionBehaviour(1);
        int x8 = this.mWidgetcontainer.getX();
        int y8 = this.mWidgetcontainer.getY();
        if (z8 && (dimensionBehaviour == (constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || dimensionBehaviour2 == constraintWidget$DimensionBehaviour)) {
            ArrayList<WidgetRun> arrayList = this.mRuns;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                WidgetRun widgetRun = arrayList.get(i10);
                i10++;
                WidgetRun widgetRun2 = widgetRun;
                if (widgetRun2.orientation == i9 && !widgetRun2.supportsWrapComputation()) {
                    z8 = false;
                    break;
                }
            }
            if (i9 == 0) {
                if (z8 && dimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                    this.mWidgetcontainer.setHorizontalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                    ConstraintWidgetContainer constraintWidgetContainer = this.mWidgetcontainer;
                    constraintWidgetContainer.setWidth(computeWrap(constraintWidgetContainer, 0));
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.mWidgetcontainer;
                    constraintWidgetContainer2.mHorizontalRun.mDimension.resolve(constraintWidgetContainer2.getWidth());
                }
            } else if (z8 && dimensionBehaviour2 == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) {
                this.mWidgetcontainer.setVerticalDimensionBehaviour(ConstraintWidget$DimensionBehaviour.FIXED);
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mWidgetcontainer;
                constraintWidgetContainer3.setHeight(computeWrap(constraintWidgetContainer3, 1));
                ConstraintWidgetContainer constraintWidgetContainer4 = this.mWidgetcontainer;
                constraintWidgetContainer4.mVerticalRun.mDimension.resolve(constraintWidgetContainer4.getHeight());
            }
        }
        ConstraintWidgetContainer constraintWidgetContainer5 = this.mWidgetcontainer;
        if (i9 == 0) {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidgetContainer5.mListDimensionBehaviors[0];
            if (constraintWidget$DimensionBehaviour2 == ConstraintWidget$DimensionBehaviour.FIXED || constraintWidget$DimensionBehaviour2 == ConstraintWidget$DimensionBehaviour.MATCH_PARENT) {
                int width = constraintWidgetContainer5.getWidth() + x8;
                this.mWidgetcontainer.mHorizontalRun.end.resolve(width);
                this.mWidgetcontainer.mHorizontalRun.mDimension.resolve(width - x8);
                z9 = true;
            } else {
                z9 = false;
            }
        } else {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = constraintWidgetContainer5.mListDimensionBehaviors[1];
            if (constraintWidget$DimensionBehaviour3 == ConstraintWidget$DimensionBehaviour.FIXED || constraintWidget$DimensionBehaviour3 == ConstraintWidget$DimensionBehaviour.MATCH_PARENT) {
                int height = constraintWidgetContainer5.getHeight() + y8;
                this.mWidgetcontainer.mVerticalRun.end.resolve(height);
                this.mWidgetcontainer.mVerticalRun.mDimension.resolve(height - y8);
                z9 = true;
            } else {
                z9 = false;
            }
        }
        measureWidgets();
        ArrayList<WidgetRun> arrayList2 = this.mRuns;
        int size2 = arrayList2.size();
        int i11 = 0;
        while (i11 < size2) {
            WidgetRun widgetRun3 = arrayList2.get(i11);
            i11++;
            WidgetRun widgetRun4 = widgetRun3;
            if (widgetRun4.orientation == i9 && (widgetRun4.mWidget != this.mWidgetcontainer || widgetRun4.mResolved)) {
                widgetRun4.applyToWidget();
            }
        }
        ArrayList<WidgetRun> arrayList3 = this.mRuns;
        int size3 = arrayList3.size();
        int i12 = 0;
        while (i12 < size3) {
            WidgetRun widgetRun5 = arrayList3.get(i12);
            i12++;
            WidgetRun widgetRun6 = widgetRun5;
            if (widgetRun6.orientation == i9 && (z9 || widgetRun6.mWidget != this.mWidgetcontainer)) {
                if (!widgetRun6.start.resolved || !widgetRun6.end.resolved || (!(widgetRun6 instanceof ChainRun) && !widgetRun6.mDimension.resolved)) {
                    this.mWidgetcontainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.mWidgetcontainer.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    return z10;
                }
            }
        }
        z10 = true;
        this.mWidgetcontainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
        this.mWidgetcontainer.setVerticalDimensionBehaviour(dimensionBehaviour2);
        return z10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateGraph() {
        this.mNeedBuildGraph = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invalidateMeasures() {
        this.mNeedRedoMeasures = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measureWidgets() {
        DimensionDependency dimensionDependency;
        ArrayList<ConstraintWidget> arrayList = this.mWidgetcontainer.mChildren;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            ConstraintWidget constraintWidget = arrayList.get(i9);
            i9++;
            ConstraintWidget constraintWidget2 = constraintWidget;
            if (!constraintWidget2.measured) {
                ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = constraintWidget2.mListDimensionBehaviors;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[1];
                int i10 = constraintWidget2.mMatchConstraintDefaultWidth;
                int i11 = constraintWidget2.mMatchConstraintDefaultHeight;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
                boolean z8 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour3 || (constraintWidget$DimensionBehaviour == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && i10 == 1);
                boolean z9 = constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3 || (constraintWidget$DimensionBehaviour2 == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && i11 == 1);
                DimensionDependency dimensionDependency2 = constraintWidget2.mHorizontalRun.mDimension;
                boolean z10 = dimensionDependency2.resolved;
                DimensionDependency dimensionDependency3 = constraintWidget2.mVerticalRun.mDimension;
                boolean z11 = dimensionDependency3.resolved;
                if (z10 && z11) {
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.FIXED;
                    measure(constraintWidget2, constraintWidget$DimensionBehaviour4, dimensionDependency2.value, constraintWidget$DimensionBehaviour4, dimensionDependency3.value);
                    constraintWidget2.measured = true;
                } else if (z10 && z9) {
                    measure(constraintWidget2, ConstraintWidget$DimensionBehaviour.FIXED, dimensionDependency2.value, constraintWidget$DimensionBehaviour3, dimensionDependency3.value);
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                    VerticalWidgetRun verticalWidgetRun = constraintWidget2.mVerticalRun;
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour5) {
                        verticalWidgetRun.mDimension.wrapValue = constraintWidget2.getHeight();
                    } else {
                        verticalWidgetRun.mDimension.resolve(constraintWidget2.getHeight());
                        constraintWidget2.measured = true;
                    }
                } else if (z11 && z8) {
                    measure(constraintWidget2, constraintWidget$DimensionBehaviour3, dimensionDependency2.value, ConstraintWidget$DimensionBehaviour.FIXED, dimensionDependency3.value);
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                    HorizontalWidgetRun horizontalWidgetRun = constraintWidget2.mHorizontalRun;
                    if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour6) {
                        horizontalWidgetRun.mDimension.wrapValue = constraintWidget2.getWidth();
                    } else {
                        horizontalWidgetRun.mDimension.resolve(constraintWidget2.getWidth());
                        constraintWidget2.measured = true;
                    }
                }
                if (constraintWidget2.measured && (dimensionDependency = constraintWidget2.mVerticalRun.mBaselineDimension) != null) {
                    dimensionDependency.resolve(constraintWidget2.getBaselineDistance());
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasurer(BasicMeasure$Measurer basicMeasure$Measurer) {
        this.mMeasurer = basicMeasure$Measurer;
    }

    public void buildGraph() {
        buildGraph(this.mRuns);
        this.mGroups.clear();
        RunGroup.index = 0;
        findGroup(this.mWidgetcontainer.mHorizontalRun, 0, this.mGroups);
        findGroup(this.mWidgetcontainer.mVerticalRun, 1, this.mGroups);
        this.mNeedBuildGraph = false;
    }
}
