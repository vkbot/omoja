package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(ConstraintWidget constraintWidget, int i10) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i10;
        build();
    }

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
        int i10 = 0;
        while (i10 < size) {
            WidgetRun widgetRun = arrayList.get(i10);
            i10++;
            WidgetRun widgetRun2 = widgetRun;
            int i11 = this.orientation;
            if (i11 == 0) {
                widgetRun2.mWidget.horizontalChainRun = this;
            } else if (i11 == 1) {
                widgetRun2.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList2 = this.mWidgets;
            this.mWidget = arrayList2.get(arrayList2.size() - 1).mWidget;
        }
        int i12 = this.orientation;
        ConstraintWidget constraintWidget4 = this.mWidget;
        this.mChainStyle = i12 == 0 ? constraintWidget4.getHorizontalChainStyle() : constraintWidget4.getVerticalChainStyle();
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i10 = 0; i10 < this.mWidgets.size(); i10++) {
            WidgetRun widgetRun = this.mWidgets.get(i10);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            WidgetRun widgetRun = arrayList.get(i10);
            i10++;
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

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i10 = 0; i10 < this.mWidgets.size(); i10++) {
            this.mWidgets.get(i10).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            WidgetRun widgetRun = arrayList.get(i10);
            i10++;
            widgetRun.clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long wrapDimension = 0;
        for (int i10 = 0; i10 < size; i10++) {
            WidgetRun widgetRun = this.mWidgets.get(i10);
            wrapDimension = ((long) widgetRun.end.mMargin) + widgetRun.getWrapDimension() + wrapDimension + ((long) widgetRun.start.mMargin);
        }
        return wrapDimension;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.mWidgets.get(i10).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.orientation == 0 ? "horizontal : " : "vertical : ");
        ArrayList<WidgetRun> arrayList = this.mWidgets;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            WidgetRun widgetRun = arrayList.get(i10);
            i10++;
            sb.append("<");
            sb.append(widgetRun);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:90:0x0160  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        int i10;
        int i11;
        boolean z9;
        float f8;
        float f10;
        int i12;
        int i13;
        int i14;
        int i15;
        float f11;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z10;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            boolean zIsRtl = parent instanceof ConstraintWidgetContainer ? ((ConstraintWidgetContainer) parent).isRtl() : false;
            int i20 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i21 = 0;
            while (true) {
                i10 = -1;
                i11 = 8;
                if (i21 >= size) {
                    i21 = -1;
                    break;
                } else if (this.mWidgets.get(i21).mWidget.getVisibility() != 8) {
                    break;
                } else {
                    i21++;
                }
            }
            int i22 = size - 1;
            for (int i23 = i22; i23 >= 0; i23--) {
                if (this.mWidgets.get(i23).mWidget.getVisibility() != 8) {
                    i10 = i23;
                    break;
                }
            }
            int i24 = 0;
            while (true) {
                if (i24 >= 2) {
                    z9 = zIsRtl;
                    f8 = 0.0f;
                    f10 = 0.0f;
                    i12 = 0;
                    i13 = 0;
                    i14 = 0;
                    break;
                }
                int i25 = 0;
                i13 = 0;
                i14 = 0;
                int i26 = 0;
                f10 = 0.0f;
                while (i25 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i25);
                    if (widgetRun.mWidget.getVisibility() == i11) {
                        z10 = zIsRtl;
                    } else {
                        i26++;
                        if (i25 > 0 && i25 >= i21) {
                            i13 += widgetRun.start.mMargin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.mDimension;
                        int i27 = dimensionDependency.value;
                        boolean z11 = widgetRun.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (z11) {
                            int i28 = this.orientation;
                            if (i28 == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (i28 == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            } else {
                                z10 = zIsRtl;
                            }
                        } else {
                            z10 = zIsRtl;
                            if (widgetRun.matchConstraintsType == 1 && i24 == 0) {
                                i27 = dimensionDependency.wrapValue;
                                i14++;
                            } else if (dimensionDependency.resolved) {
                            }
                            z11 = true;
                        }
                        if (z11) {
                            i13 += i27;
                        } else {
                            i14++;
                            float f12 = widgetRun.mWidget.mWeight[this.orientation];
                            if (f12 >= 0.0f) {
                                f10 += f12;
                            }
                        }
                        if (i25 < i22 && i25 < i10) {
                            i13 += -widgetRun.end.mMargin;
                        }
                    }
                    i25++;
                    zIsRtl = z10;
                    i11 = 8;
                }
                z9 = zIsRtl;
                f8 = 0.0f;
                if (i13 < i20 || i14 == 0) {
                    i12 = i26;
                    break;
                } else {
                    i24++;
                    zIsRtl = z9;
                    i11 = 8;
                }
            }
            int i29 = this.start.value;
            if (z9) {
                i29 = this.end.value;
            }
            float f13 = 0.5f;
            if (i13 > i20) {
                i29 = z9 ? i29 + ((int) (((i13 - i20) / 2.0f) + 0.5f)) : i29 - ((int) (((i13 - i20) / 2.0f) + 0.5f));
            }
            if (i14 > 0) {
                float f14 = i20 - i13;
                int i30 = (int) ((f14 / i14) + 0.5f);
                int i31 = 0;
                int i32 = 0;
                while (i31 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i31);
                    float f15 = f13;
                    int i33 = i29;
                    if (widgetRun2.mWidget.getVisibility() != 8 && widgetRun2.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.mDimension;
                        if (dimensionDependency2.resolved) {
                            i30 = i30;
                            i32 = i32;
                        } else {
                            int i34 = f10 > f8 ? (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f14) / f10) + f15) : i30;
                            int i35 = this.orientation;
                            ConstraintWidget constraintWidget = widgetRun2.mWidget;
                            if (i35 == 0) {
                                i18 = constraintWidget.mMatchConstraintMaxWidth;
                                i19 = constraintWidget.mMatchConstraintMinWidth;
                            } else {
                                i18 = constraintWidget.mMatchConstraintMaxHeight;
                                i19 = constraintWidget.mMatchConstraintMinHeight;
                            }
                            int i36 = i32;
                            int iMax = Math.max(i19, widgetRun2.matchConstraintsType == 1 ? Math.min(i34, dimensionDependency2.wrapValue) : i34);
                            if (i18 > 0) {
                                iMax = Math.min(i18, iMax);
                            }
                            if (iMax != i34) {
                                i32 = i36 + 1;
                                i34 = iMax;
                            } else {
                                i32 = i36;
                            }
                            widgetRun2.mDimension.resolve(i34);
                        }
                    } else {
                        i30 = i30;
                        i32 = i32;
                    }
                    i31++;
                    f13 = f15;
                    i29 = i33;
                    f14 = f14;
                    i30 = i30;
                }
                i15 = i29;
                f11 = f13;
                int i37 = i32;
                if (i37 > 0) {
                    i14 -= i37;
                    i13 = 0;
                    for (int i38 = 0; i38 < size; i38++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i38);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i38 > 0 && i38 >= i21) {
                                i13 += widgetRun3.start.mMargin;
                            }
                            i13 += widgetRun3.mDimension.value;
                            if (i38 < i22 && i38 < i10) {
                                i13 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                }
                i17 = 2;
                if (this.mChainStyle == 2 && i37 == 0) {
                    i16 = 0;
                    this.mChainStyle = 0;
                } else {
                    i16 = 0;
                }
            } else {
                i15 = i29;
                f11 = 0.5f;
                i16 = 0;
                i17 = 2;
            }
            if (i13 > i20) {
                this.mChainStyle = i17;
            }
            if (i12 > 0 && i14 == 0 && i21 == i10) {
                this.mChainStyle = i17;
            }
            int i39 = this.mChainStyle;
            if (i39 == 1) {
                int i40 = i12 > 1 ? (i20 - i13) / (i12 - 1) : i12 == 1 ? (i20 - i13) / 2 : i16;
                if (i14 > 0) {
                    i40 = i16;
                }
                int i41 = i15;
                while (i16 < size) {
                    WidgetRun widgetRun4 = this.mWidgets.get(z9 ? size - (i16 + 1) : i16);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i41);
                        widgetRun4.end.resolve(i41);
                    } else {
                        if (i16 > 0) {
                            i41 = z9 ? i41 - i40 : i41 + i40;
                        }
                        if (i16 > 0 && i16 >= i21) {
                            DependencyNode dependencyNode = widgetRun4.start;
                            i41 = z9 ? i41 - dependencyNode.mMargin : i41 + dependencyNode.mMargin;
                        }
                        if (z9) {
                            widgetRun4.end.resolve(i41);
                        } else {
                            widgetRun4.start.resolve(i41);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.mDimension;
                        int i42 = dimensionDependency3.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i42 = dimensionDependency3.wrapValue;
                        }
                        i41 = z9 ? i41 - i42 : i41 + i42;
                        if (z9) {
                            widgetRun4.start.resolve(i41);
                        } else {
                            widgetRun4.end.resolve(i41);
                        }
                        widgetRun4.mResolved = true;
                        if (i16 < i22 && i16 < i10) {
                            DependencyNode dependencyNode2 = widgetRun4.end;
                            i41 = z9 ? i41 - (-dependencyNode2.mMargin) : i41 + (-dependencyNode2.mMargin);
                        }
                    }
                    i16++;
                }
                return;
            }
            if (i39 == 0) {
                int i43 = (i20 - i13) / (i12 + 1);
                if (i14 > 0) {
                    i43 = i16;
                }
                int i44 = i15;
                while (i16 < size) {
                    WidgetRun widgetRun5 = this.mWidgets.get(z9 ? size - (i16 + 1) : i16);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i44);
                        widgetRun5.end.resolve(i44);
                    } else {
                        int i45 = z9 ? i44 - i43 : i44 + i43;
                        if (i16 > 0 && i16 >= i21) {
                            DependencyNode dependencyNode3 = widgetRun5.start;
                            i45 = z9 ? i45 - dependencyNode3.mMargin : i45 + dependencyNode3.mMargin;
                        }
                        if (z9) {
                            widgetRun5.end.resolve(i45);
                        } else {
                            widgetRun5.start.resolve(i45);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.mDimension;
                        int iMin = dimensionDependency4.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            iMin = Math.min(iMin, dimensionDependency4.wrapValue);
                        }
                        i44 = z9 ? i45 - iMin : i45 + iMin;
                        if (z9) {
                            widgetRun5.start.resolve(i44);
                        } else {
                            widgetRun5.end.resolve(i44);
                        }
                        if (i16 < i22 && i16 < i10) {
                            DependencyNode dependencyNode4 = widgetRun5.end;
                            i44 = z9 ? i44 - (-dependencyNode4.mMargin) : i44 + (-dependencyNode4.mMargin);
                        }
                    }
                    i16++;
                }
                return;
            }
            if (i39 == 2) {
                int i46 = this.orientation;
                ConstraintWidget constraintWidget2 = this.mWidget;
                float horizontalBiasPercent = i46 == 0 ? constraintWidget2.getHorizontalBiasPercent() : constraintWidget2.getVerticalBiasPercent();
                if (z9) {
                    horizontalBiasPercent = 1.0f - horizontalBiasPercent;
                }
                int i47 = (int) (((i20 - i13) * horizontalBiasPercent) + f11);
                if (i47 < 0 || i14 > 0) {
                    i47 = i16;
                }
                int i48 = z9 ? i15 - i47 : i15 + i47;
                while (i16 < size) {
                    WidgetRun widgetRun6 = this.mWidgets.get(z9 ? size - (i16 + 1) : i16);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i48);
                        widgetRun6.end.resolve(i48);
                    } else {
                        if (i16 > 0 && i16 >= i21) {
                            DependencyNode dependencyNode5 = widgetRun6.start;
                            i48 = z9 ? i48 - dependencyNode5.mMargin : i48 + dependencyNode5.mMargin;
                        }
                        if (z9) {
                            widgetRun6.end.resolve(i48);
                        } else {
                            widgetRun6.start.resolve(i48);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.mDimension;
                        int i49 = dimensionDependency5.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i49 = dimensionDependency5.wrapValue;
                        }
                        i48 = z9 ? i48 - i49 : i48 + i49;
                        if (z9) {
                            widgetRun6.start.resolve(i48);
                        } else {
                            widgetRun6.end.resolve(i48);
                        }
                        if (i16 < i22 && i16 < i10) {
                            DependencyNode dependencyNode6 = widgetRun6.end;
                            i48 = z9 ? i48 - (-dependencyNode6.mMargin) : i48 + (-dependencyNode6.mMargin);
                        }
                    }
                    i16++;
                }
            }
        }
    }
}
