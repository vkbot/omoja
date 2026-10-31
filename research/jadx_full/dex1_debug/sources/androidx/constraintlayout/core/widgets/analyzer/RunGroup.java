package androidx.constraintlayout.core.widgets.analyzer;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int mDirection;
    WidgetRun mFirstRun;
    int mGroupIndex;
    WidgetRun mLastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> mRuns = new ArrayList<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RunGroup(WidgetRun widgetRun, int i9) {
        this.mFirstRun = null;
        this.mLastRun = null;
        int i10 = index;
        this.mGroupIndex = i10;
        index = i10 + 1;
        this.mFirstRun = widgetRun;
        this.mLastRun = widgetRun;
        this.mDirection = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean defineTerminalWidget(WidgetRun widgetRun, int i9) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (!widgetRun.mWidget.isTerminalWidget[i9]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.mDependencies) {
            if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).mRun) != widgetRun && dependencyNode2 == widgetRun3.start) {
                if (widgetRun instanceof ChainRun) {
                    ArrayList<WidgetRun> arrayList = ((ChainRun) widgetRun).mWidgets;
                    int size = arrayList.size();
                    int i10 = 0;
                    while (i10 < size) {
                        WidgetRun widgetRun4 = arrayList.get(i10);
                        i10++;
                        defineTerminalWidget(widgetRun4, i9);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.mWidget.isTerminalWidget[i9] = false;
                }
                defineTerminalWidget(dependencyNode2.mRun, i9);
            }
        }
        for (Dependency dependency2 : widgetRun.end.mDependencies) {
            if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).mRun) != widgetRun && dependencyNode == widgetRun2.start) {
                if (widgetRun instanceof ChainRun) {
                    ArrayList<WidgetRun> arrayList2 = ((ChainRun) widgetRun).mWidgets;
                    int size2 = arrayList2.size();
                    int i11 = 0;
                    while (i11 < size2) {
                        WidgetRun widgetRun5 = arrayList2.get(i11);
                        i11++;
                        defineTerminalWidget(widgetRun5, i9);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.mWidget.isTerminalWidget[i9] = false;
                }
                defineTerminalWidget(dependencyNode.mRun, i9);
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long traverseEnd(DependencyNode dependencyNode, long j9) {
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun instanceof HelperReferences) {
            return j9;
        }
        int size = dependencyNode.mDependencies.size();
        long jMin = j9;
        for (int i9 = 0; i9 < size; i9++) {
            Dependency dependency = dependencyNode.mDependencies.get(i9);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.mRun != widgetRun) {
                    jMin = Math.min(jMin, traverseEnd(dependencyNode2, ((long) dependencyNode2.mMargin) + j9));
                }
            }
        }
        if (dependencyNode != widgetRun.end) {
            return jMin;
        }
        long wrapDimension = j9 - widgetRun.getWrapDimension();
        return Math.min(Math.min(jMin, traverseEnd(widgetRun.start, wrapDimension)), wrapDimension - ((long) widgetRun.start.mMargin));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private long traverseStart(DependencyNode dependencyNode, long j9) {
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun instanceof HelperReferences) {
            return j9;
        }
        int size = dependencyNode.mDependencies.size();
        long jMax = j9;
        for (int i9 = 0; i9 < size; i9++) {
            Dependency dependency = dependencyNode.mDependencies.get(i9);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.mRun != widgetRun) {
                    jMax = Math.max(jMax, traverseStart(dependencyNode2, ((long) dependencyNode2.mMargin) + j9));
                }
            }
        }
        if (dependencyNode != widgetRun.start) {
            return jMax;
        }
        long wrapDimension = j9 + widgetRun.getWrapDimension();
        return Math.max(Math.max(jMax, traverseStart(widgetRun.end, wrapDimension)), wrapDimension - ((long) widgetRun.end.mMargin));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(WidgetRun widgetRun) {
        this.mRuns.add(widgetRun);
        this.mLastRun = widgetRun;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i9) {
        WidgetRun widgetRun = this.mFirstRun;
        long j9 = 0;
        if (widgetRun instanceof ChainRun) {
            if (((ChainRun) widgetRun).orientation != i9) {
                return 0L;
            }
        } else if (i9 == 0) {
            if (!(widgetRun instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof VerticalWidgetRun)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i9 == 0 ? constraintWidgetContainer.mHorizontalRun : constraintWidgetContainer.mVerticalRun).start;
        DependencyNode dependencyNode2 = (i9 == 0 ? constraintWidgetContainer.mHorizontalRun : constraintWidgetContainer.mVerticalRun).end;
        boolean zContains = widgetRun.start.mTargets.contains(dependencyNode);
        boolean zContains2 = this.mFirstRun.end.mTargets.contains(dependencyNode2);
        long wrapDimension = this.mFirstRun.getWrapDimension();
        if (!zContains || !zContains2) {
            if (zContains) {
                DependencyNode dependencyNode3 = this.mFirstRun.start;
                return Math.max(traverseStart(dependencyNode3, dependencyNode3.mMargin), ((long) this.mFirstRun.start.mMargin) + wrapDimension);
            }
            WidgetRun widgetRun2 = this.mFirstRun;
            if (!zContains2) {
                return (widgetRun2.getWrapDimension() + ((long) widgetRun2.start.mMargin)) - ((long) this.mFirstRun.end.mMargin);
            }
            DependencyNode dependencyNode4 = widgetRun2.end;
            return Math.max(-traverseEnd(dependencyNode4, dependencyNode4.mMargin), ((long) (-this.mFirstRun.end.mMargin)) + wrapDimension);
        }
        long jTraverseStart = traverseStart(this.mFirstRun.start, 0L);
        long jTraverseEnd = traverseEnd(this.mFirstRun.end, 0L);
        long j10 = jTraverseStart - wrapDimension;
        WidgetRun widgetRun3 = this.mFirstRun;
        int i10 = widgetRun3.end.mMargin;
        if (j10 >= (-i10)) {
            j10 += (long) i10;
        }
        int i11 = widgetRun3.start.mMargin;
        long j11 = ((-jTraverseEnd) - wrapDimension) - ((long) i11);
        if (j11 >= i11) {
            j11 -= (long) i11;
        }
        float biasPercent = widgetRun3.mWidget.getBiasPercent(i9);
        if (biasPercent > 0.0f) {
            j9 = (long) ((j10 / (1.0f - biasPercent)) + (j11 / biasPercent));
        }
        float f8 = j9;
        long jB = ((long) ((f8 * biasPercent) + 0.5f)) + wrapDimension + ((long) a.b(1.0f, biasPercent, f8, 0.5f));
        WidgetRun widgetRun4 = this.mFirstRun;
        return (((long) widgetRun4.start.mMargin) + jB) - ((long) widgetRun4.end.mMargin);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void defineTerminalWidgets(boolean z8, boolean z9) {
        if (z8) {
            WidgetRun widgetRun = this.mFirstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z9) {
            WidgetRun widgetRun2 = this.mFirstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
