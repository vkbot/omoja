package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChainRun(ConstraintWidget constraintWidget, int i9) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i9;
        build();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void build() {
        ConstraintWidget constraintWidget;
        ArrayList<WidgetRun> arrayList;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.mWidget = constraintWidget;
        this.mWidgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (true) {
            arrayList = this.mWidgets;
            if (nextChainMember == null) {
                break;
            }
            arrayList.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            WidgetRun widgetRun = arrayList.get(i9);
            i9++;
            WidgetRun widgetRun2 = widgetRun;
            int i10 = this.orientation;
            if (i10 == 0) {
                widgetRun2.mWidget.horizontalChainRun = this;
            } else if (i10 == 1) {
                widgetRun2.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList2 = this.mWidgets;
            this.mWidget = arrayList2.get(arrayList2.size() - 1).mWidget;
        }
        int i11 = this.orientation;
        ConstraintWidget constraintWidget4 = this.mWidget;
        this.mChainStyle = i11 == 0 ? constraintWidget4.getHorizontalChainStyle() : constraintWidget4.getVerticalChainStyle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintWidget getFirstVisibleWidget() {
        for (int i9 = 0; i9 < this.mWidgets.size(); i9++) {
            WidgetRun widgetRun = this.mWidgets.get(i9);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            WidgetRun widgetRun = arrayList.get(i9);
            i9++;
            widgetRun.apply();
        }
        int size2 = this.mWidgets.size();
        if (size2 < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size2 - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i9 = 0; i9 < this.mWidgets.size(); i9++) {
            this.mWidgets.get(i9).applyToWidget();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            WidgetRun widgetRun = arrayList.get(i9);
            i9++;
            widgetRun.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long wrapDimension = 0;
        for (int i9 = 0; i9 < size; i9++) {
            WidgetRun widgetRun = this.mWidgets.get(i9);
            wrapDimension = ((long) widgetRun.end.mMargin) + widgetRun.getWrapDimension() + wrapDimension + ((long) widgetRun.start.mMargin);
        }
        return wrapDimension;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (!this.mWidgets.get(i9).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            WidgetRun widgetRun = arrayList.get(i9);
            i9++;
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:90:0x0160  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i9;
        int i10;
        boolean z8;
        float f8;
        float f9;
        int i11;
        int i12;
        int i13;
        int i14;
        float f10;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z9;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i19 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i20 = 0;
            while (true) {
                i9 = -1;
                i10 = 8;
                if (i20 >= size) {
                    i20 = -1;
                    break;
                } else if (this.mWidgets.get(i20).mWidget.getVisibility() != 8) {
                    break;
                } else {
                    i20++;
                }
            }
            int i21 = size - 1;
            for (int i22 = i21; i22 >= 0; i22--) {
                if (this.mWidgets.get(i22).mWidget.getVisibility() != 8) {
                    i9 = i22;
                    break;
                }
            }
            int i23 = 0;
            while (true) {
                if (i23 >= 2) {
                    z8 = zIsRtl;
                    f8 = 0.0f;
                    f9 = 0.0f;
                    i11 = 0;
                    i12 = 0;
                    i13 = 0;
                    break;
                }
                int i24 = 0;
                i12 = 0;
                i13 = 0;
                int i25 = 0;
                f9 = 0.0f;
                while (i24 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i24);
                    if (widgetRun.mWidget.getVisibility() == i10) {
                        z9 = zIsRtl;
                    } else {
                        i25++;
                        if (i24 > 0 && i24 >= i20) {
                            i12 += widgetRun.start.mMargin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.mDimension;
                        int i26 = dimensionDependency.value;
                        boolean z10 = widgetRun.mDimensionBehavior != ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z10) {
                            int i27 = this.orientation;
                            if (i27 == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (i27 == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            } else {
                                z9 = zIsRtl;
                            }
                        } else {
                            z9 = zIsRtl;
                            if (widgetRun.matchConstraintsType == 1 && i23 == 0) {
                                i26 = dimensionDependency.wrapValue;
                                i13++;
                            } else if (dimensionDependency.resolved) {
                            }
                            z10 = true;
                        }
                        if (z10) {
                            i12 += i26;
                        } else {
                            i13++;
                            float f11 = widgetRun.mWidget.mWeight[this.orientation];
                            if (f11 >= 0.0f) {
                                f9 += f11;
                            }
                        }
                        if (i24 < i21 && i24 < i9) {
                            i12 += -widgetRun.end.mMargin;
                        }
                    }
                    i24++;
                    zIsRtl = z9;
                    i10 = 8;
                }
                z8 = zIsRtl;
                f8 = 0.0f;
                if (i12 < i19 || i13 == 0) {
                    i11 = i25;
                    break;
                } else {
                    i23++;
                    zIsRtl = z8;
                    i10 = 8;
                }
            }
            int i28 = this.start.value;
            if (z8) {
                i28 = this.end.value;
            }
            float f12 = 0.5f;
            if (i12 > i19) {
                i28 = z8 ? i28 + ((int) (((i12 - i19) / 2.0f) + 0.5f)) : i28 - ((int) (((i12 - i19) / 2.0f) + 0.5f));
            }
            if (i13 > 0) {
                float f13 = i19 - i12;
                int i29 = (int) ((f13 / i13) + 0.5f);
                int i30 = 0;
                int i31 = 0;
                while (i30 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i30);
                    float f14 = f12;
                    int i32 = i28;
                    if (widgetRun2.mWidget.getVisibility() != 8 && widgetRun2.mDimensionBehavior == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.mDimension;
                        if (dimensionDependency2.resolved) {
                            i29 = i29;
                            i31 = i31;
                        } else {
                            int i33 = f9 > f8 ? (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f13) / f9) + f14) : i29;
                            int i34 = this.orientation;
                            ConstraintWidget constraintWidget = widgetRun2.mWidget;
                            if (i34 == 0) {
                                i17 = constraintWidget.mMatchConstraintMaxWidth;
                                i18 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                i17 = constraintWidget.mMatchConstraintMaxHeight;
                                i18 = constraintWidget.mMatchConstraintMinHeight;
                            }
                            int i35 = i31;
                            int iMax = Math.max(i18, widgetRun2.matchConstraintsType == 1 ? Math.min(i33, dimensionDependency2.wrapValue) : i33);
                            if (i17 > 0) {
                                iMax = Math.min(i17, iMax);
                            }
                            if (iMax != i33) {
                                i31 = i35 + 1;
                                i33 = iMax;
                            } else {
                                i31 = i35;
                            }
                            widgetRun2.mDimension.resolve(i33);
                        }
                    } else {
                        i29 = i29;
                        i31 = i31;
                    }
                    i30++;
                    f12 = f14;
                    i28 = i32;
                    f13 = f13;
                    i29 = i29;
                }
                i14 = i28;
                f10 = f12;
                int i36 = i31;
                if (i36 > 0) {
                    i13 -= i36;
                    i12 = 0;
                    for (int i37 = 0; i37 < size; i37++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i37);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i37 > 0 && i37 >= i20) {
                                i12 += widgetRun3.start.mMargin;
                            }
                            i12 += widgetRun3.mDimension.value;
                            if (i37 < i21 && i37 < i9) {
                                i12 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                }
                i16 = 2;
                if (this.mChainStyle == 2 && i36 == 0) {
                    i15 = 0;
                    this.mChainStyle = 0;
                } else {
                    i15 = 0;
                }
            } else {
                i14 = i28;
                f10 = 0.5f;
                i15 = 0;
                i16 = 2;
            }
            if (i12 > i19) {
                this.mChainStyle = i16;
            }
            if (i11 > 0 && i13 == 0 && i20 == i9) {
                this.mChainStyle = i16;
            }
            int i38 = this.mChainStyle;
            if (i38 == 1) {
                int i39 = i11 > 1 ? (i19 - i12) / (i11 - 1) : i11 == 1 ? (i19 - i12) / 2 : i15;
                if (i13 > 0) {
                    i39 = i15;
                }
                int i40 = i14;
                while (i15 < size) {
                    WidgetRun widgetRun4 = this.mWidgets.get(z8 ? size - (i15 + 1) : i15);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i40);
                        widgetRun4.end.resolve(i40);
                    } else {
                        if (i15 > 0) {
                            i40 = z8 ? i40 - i39 : i40 + i39;
                        }
                        if (i15 > 0 && i15 >= i20) {
                            DependencyNode dependencyNode = widgetRun4.start;
                            i40 = z8 ? i40 - dependencyNode.mMargin : i40 + dependencyNode.mMargin;
                        }
                        if (z8) {
                            widgetRun4.end.resolve(i40);
                        } else {
                            widgetRun4.start.resolve(i40);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.mDimension;
                        int i41 = dimensionDependency3.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i41 = dimensionDependency3.wrapValue;
                        }
                        i40 = z8 ? i40 - i41 : i40 + i41;
                        if (z8) {
                            widgetRun4.start.resolve(i40);
                        } else {
                            widgetRun4.end.resolve(i40);
                        }
                        widgetRun4.mResolved = true;
                        if (i15 < i21 && i15 < i9) {
                            DependencyNode dependencyNode2 = widgetRun4.end;
                            i40 = z8 ? i40 - (-dependencyNode2.mMargin) : i40 + (-dependencyNode2.mMargin);
                        }
                    }
                    i15++;
                }
                return;
            }
            if (i38 == 0) {
                int i42 = (i19 - i12) / (i11 + 1);
                if (i13 > 0) {
                    i42 = i15;
                }
                int i43 = i14;
                while (i15 < size) {
                    WidgetRun widgetRun5 = this.mWidgets.get(z8 ? size - (i15 + 1) : i15);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i43);
                        widgetRun5.end.resolve(i43);
                    } else {
                        int i44 = z8 ? i43 - i42 : i43 + i42;
                        if (i15 > 0 && i15 >= i20) {
                            DependencyNode dependencyNode3 = widgetRun5.start;
                            i44 = z8 ? i44 - dependencyNode3.mMargin : i44 + dependencyNode3.mMargin;
                        }
                        if (z8) {
                            widgetRun5.end.resolve(i44);
                        } else {
                            widgetRun5.start.resolve(i44);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.mDimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i43 = z8 ? i44 - iMin : i44 + iMin;
                        if (z8) {
                            widgetRun5.start.resolve(i43);
                        } else {
                            widgetRun5.end.resolve(i43);
                        }
                        if (i15 < i21 && i15 < i9) {
                            DependencyNode dependencyNode4 = widgetRun5.end;
                            i43 = z8 ? i43 - (-dependencyNode4.mMargin) : i43 + (-dependencyNode4.mMargin);
                        }
                    }
                    i15++;
                }
                return;
            }
            if (i38 == 2) {
                int i45 = this.orientation;
                ConstraintWidget constraintWidget2 = this.mWidget;
                float horizontalBiasPercent = i45 == 0 ? constraintWidget2.getHorizontalBiasPercent() : constraintWidget2.getVerticalBiasPercent();
                if (z8) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i46 = (int) (((i19 - i12) * horizontalBiasPercent) + f10);
                if (i46 < 0 || i13 > 0) {
                    i46 = i15;
                }
                int i47 = z8 ? i14 - i46 : i14 + i46;
                while (i15 < size) {
                    WidgetRun widgetRun6 = this.mWidgets.get(z8 ? size - (i15 + 1) : i15);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i47);
                        widgetRun6.end.resolve(i47);
                    } else {
                        if (i15 > 0 && i15 >= i20) {
                            DependencyNode dependencyNode5 = widgetRun6.start;
                            i47 = z8 ? i47 - dependencyNode5.mMargin : i47 + dependencyNode5.mMargin;
                        }
                        if (z8) {
                            widgetRun6.end.resolve(i47);
                        } else {
                            widgetRun6.start.resolve(i47);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.mDimension;
                        int i48 = dimensionDependency5.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i48 = dimensionDependency5.wrapValue;
                        }
                        i47 = z8 ? i47 - i48 : i47 + i48;
                        if (z8) {
                            widgetRun6.start.resolve(i47);
                        } else {
                            widgetRun6.end.resolve(i47);
                        }
                        if (i15 < i21 && i15 < i9) {
                            DependencyNode dependencyNode6 = widgetRun6.end;
                            i47 = z8 ? i47 - (-dependencyNode6.mMargin) : i47 + (-dependencyNode6.mMargin);
                        }
                    }
                    i15++;
                }
            }
        }
    }
}
