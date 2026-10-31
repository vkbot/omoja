package androidx.constraintlayout.widget;

import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measure;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintLayout$Measurer implements BasicMeasure$Measurer {
    ConstraintLayout mLayout;
    int mLayoutHeightSpec;
    int mLayoutWidthSpec;
    int mPaddingBottom;
    int mPaddingHeight;
    int mPaddingTop;
    int mPaddingWidth;
    final /* synthetic */ ConstraintLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintLayout$Measurer(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.this$0 = constraintLayout;
        this.mLayout = constraintLayout2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isSimilarSpec(int i9, int i10, int i11) {
        if (i9 == i10) {
            return true;
        }
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int size = View$MeasureSpec.getSize(i10);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i11 == size;
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void captureLayoutInfo(int i9, int i10, int i11, int i12, int i13, int i14) {
        this.mPaddingTop = i11;
        this.mPaddingBottom = i12;
        this.mPaddingWidth = i13;
        this.mPaddingHeight = i14;
        this.mLayoutWidthSpec = i9;
        this.mLayoutHeightSpec = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer
    public final void didMeasures() {
        ConstraintLayout constraintLayout;
        int childCount = this.mLayout.getChildCount();
        int i9 = 0;
        while (true) {
            constraintLayout = this.mLayout;
            if (i9 >= childCount) {
                break;
            }
            View childAt = constraintLayout.getChildAt(i9);
            if (childAt instanceof Placeholder) {
                ((Placeholder) childAt).updatePostMeasure(this.mLayout);
            }
            i9++;
        }
        int size = ConstraintLayout.access$200(constraintLayout).size();
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                ((ConstraintHelper) ConstraintLayout.access$200(this.mLayout).get(i10)).updatePostMeasure(this.mLayout);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:111:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:112:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:114:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:115:0x01d6  */
    /* JADX WARN: Code duplicated, block: B:122:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:128:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:134:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:139:0x0203  */
    /* JADX WARN: Code duplicated, block: B:142:0x0208  */
    /* JADX WARN: Code duplicated, block: B:154:0x022f  */
    /* JADX WARN: Code duplicated, block: B:156:0x0233  */
    /* JADX WARN: Code duplicated, block: B:159:0x0241  */
    /* JADX WARN: Code duplicated, block: B:162:0x0257  */
    /* JADX WARN: Code duplicated, block: B:164:0x025e  */
    /* JADX WARN: Code duplicated, block: B:167:0x0264  */
    /* JADX WARN: Code duplicated, block: B:170:0x026c  */
    /* JADX WARN: Code duplicated, block: B:172:0x0273  */
    /* JADX WARN: Code duplicated, block: B:175:0x0279  */
    /* JADX WARN: Code duplicated, block: B:178:0x028c  */
    /* JADX WARN: Code duplicated, block: B:180:0x0290 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:182:0x0299 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:183:0x029b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:186:0x02a5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:189:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:191:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:192:0x02b3  */
    /* JADX WARN: Code duplicated, block: B:194:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:195:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:198:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:199:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:206:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:209:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:218:0x0307  */
    /* JADX WARN: Code duplicated, block: B:220:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00de  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:70:0x0101  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b  */
    /* JADX WARN: Code duplicated, block: B:73:0x010d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0114 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:83:0x0124  */
    /* JADX WARN: Code duplicated, block: B:84:0x012f  */
    /* JADX WARN: Code duplicated, block: B:85:0x013e  */
    /* JADX WARN: Code duplicated, block: B:86:0x0148  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer
    public final void measure(ConstraintWidget constraintWidget, BasicMeasure$Measure basicMeasure$Measure) {
        long jNanoTime;
        int iMakeMeasureSpec;
        int childMeasureSpec;
        int i9;
        int iMakeMeasureSpec2;
        ConstraintWidgetContainer constraintWidgetContainer;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        boolean z8;
        boolean z9;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        ConstraintLayout$LayoutParams constraintLayout$LayoutParams;
        int i10;
        int measuredWidth;
        int measuredHeight;
        int baseline;
        int i11;
        int measuredWidth2;
        int i12;
        int i13;
        int i14;
        int measuredHeight2;
        int i15;
        int i16;
        int iMakeMeasureSpec3;
        int iMakeMeasureSpec4;
        int i17;
        boolean z14;
        boolean z15;
        boolean z16;
        int i18;
        boolean z17;
        if (constraintWidget == null) {
            return;
        }
        if (constraintWidget.getVisibility() == 8 && !constraintWidget.isInPlaceholder()) {
            basicMeasure$Measure.measuredWidth = 0;
            basicMeasure$Measure.measuredHeight = 0;
            basicMeasure$Measure.measuredBaseline = 0;
            return;
        }
        if (constraintWidget.getParent() == null) {
            return;
        }
        if (ConstraintLayout.access$000(this.this$0) != null) {
            ConstraintLayout.access$000(this.this$0).mNumberOfMeasures++;
            jNanoTime = System.nanoTime();
        } else {
            jNanoTime = 0;
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = basicMeasure$Measure.horizontalBehavior;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = basicMeasure$Measure.verticalBehavior;
        int i19 = basicMeasure$Measure.horizontalDimension;
        int i20 = basicMeasure$Measure.verticalDimension;
        int i21 = this.mPaddingTop + this.mPaddingBottom;
        int i22 = this.mPaddingWidth;
        View view = (View) constraintWidget.getCompanionWidget();
        int[] iArr = ConstraintLayout$1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour;
        int i23 = iArr[constraintWidget$DimensionBehaviour3.ordinal()];
        if (i23 == 1) {
            iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(i19, BasicMeasure.EXACTLY);
        } else if (i23 == 2) {
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, i22, -2);
        } else {
            if (i23 != 3) {
                if (i23 != 4) {
                    childMeasureSpec = 0;
                } else {
                    childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, i22, -2);
                    boolean z18 = constraintWidget.mMatchConstraintDefaultWidth == 1;
                    int i24 = basicMeasure$Measure.measureStrategy;
                    if (i24 == BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS || i24 == BasicMeasure$Measure.USE_GIVEN_DIMENSIONS) {
                        boolean z19 = view.getMeasuredHeight() == constraintWidget.getHeight();
                        if (basicMeasure$Measure.measureStrategy == BasicMeasure$Measure.USE_GIVEN_DIMENSIONS || !z18 || ((z18 && z19) || (view instanceof Placeholder) || constraintWidget.isResolvedHorizontally())) {
                            iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(constraintWidget.getWidth(), BasicMeasure.EXACTLY);
                        }
                    }
                }
                i9 = iArr[constraintWidget$DimensionBehaviour4.ordinal()];
                if (i9 != 1) {
                    iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(i20, BasicMeasure.EXACTLY);
                } else if (i9 != 2) {
                    iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i21, -2);
                } else if (i9 != 3) {
                    iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, constraintWidget.getVerticalMargin() + i21, -1);
                } else if (i9 != 4) {
                    iMakeMeasureSpec2 = 0;
                } else {
                    iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i21, -2);
                    if (constraintWidget.mMatchConstraintDefaultHeight == 1) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    i18 = basicMeasure$Measure.measureStrategy;
                    if (i18 != BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS || i18 == BasicMeasure$Measure.USE_GIVEN_DIMENSIONS) {
                        if (view.getMeasuredWidth() == constraintWidget.getWidth()) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        if (basicMeasure$Measure.measureStrategy != BasicMeasure$Measure.USE_GIVEN_DIMENSIONS || !z16 || ((z16 && z17) || (view instanceof Placeholder) || constraintWidget.isResolvedVertically())) {
                            iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), BasicMeasure.EXACTLY);
                        }
                    }
                }
                constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.getParent();
                if (constraintWidgetContainer == null && Optimizer.enabled(ConstraintLayout.access$100(this.this$0), 256) && view.getMeasuredWidth() == constraintWidget.getWidth() && view.getMeasuredWidth() < constraintWidgetContainer.getWidth() && view.getMeasuredHeight() == constraintWidget.getHeight() && view.getMeasuredHeight() < constraintWidgetContainer.getHeight() && view.getBaseline() == constraintWidget.getBaselineDistance() && !constraintWidget.isMeasureRequested() && isSimilarSpec(constraintWidget.getLastHorizontalMeasureSpec(), childMeasureSpec, constraintWidget.getWidth()) && isSimilarSpec(constraintWidget.getLastVerticalMeasureSpec(), iMakeMeasureSpec2, constraintWidget.getHeight())) {
                    basicMeasure$Measure.measuredWidth = constraintWidget.getWidth();
                    basicMeasure$Measure.measuredHeight = constraintWidget.getHeight();
                    basicMeasure$Measure.measuredBaseline = constraintWidget.getBaselineDistance();
                    return;
                }
                constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
                if (constraintWidget$DimensionBehaviour4 != constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour4 == ConstraintWidget$DimensionBehaviour.FIXED) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour3 == ConstraintWidget$DimensionBehaviour.FIXED) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z8 || constraintWidget.mDimensionRatio <= 0.0f) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (z9 || constraintWidget.mDimensionRatio <= 0.0f) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                if (view == null) {
                    return;
                }
                constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) view.getLayoutParams();
                i10 = basicMeasure$Measure.measureStrategy;
                boolean z20 = z11;
                if (i10 == BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS && i10 != BasicMeasure$Measure.USE_GIVEN_DIMENSIONS && z8 && constraintWidget.mMatchConstraintDefaultWidth == 0 && z9 && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                    measuredHeight2 = 0;
                    baseline = 0;
                    i17 = -1;
                    measuredWidth2 = 0;
                } else {
                    if ((view instanceof VirtualLayout) || !(constraintWidget instanceof androidx.constraintlayout.core.widgets.VirtualLayout)) {
                        view.measure(childMeasureSpec, iMakeMeasureSpec2);
                    } else {
                        ((VirtualLayout) view).onMeasure((androidx.constraintlayout.core.widgets.VirtualLayout) constraintWidget, childMeasureSpec, iMakeMeasureSpec2);
                    }
                    constraintWidget.setLastMeasureSpec(childMeasureSpec, iMakeMeasureSpec2);
                    measuredWidth = view.getMeasuredWidth();
                    measuredHeight = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    i11 = constraintWidget.mMatchConstraintMinWidth;
                    if (i11 > 0) {
                        measuredWidth2 = Math.max(i11, measuredWidth);
                    } else {
                        measuredWidth2 = measuredWidth;
                    }
                    i12 = iMakeMeasureSpec2;
                    i13 = constraintWidget.mMatchConstraintMaxWidth;
                    if (i13 > 0) {
                        measuredWidth2 = Math.min(i13, measuredWidth2);
                    }
                    i14 = constraintWidget.mMatchConstraintMinHeight;
                    if (i14 > 0) {
                        measuredHeight2 = Math.max(i14, measuredHeight);
                    } else {
                        measuredHeight2 = measuredHeight;
                    }
                    i15 = childMeasureSpec;
                    i16 = constraintWidget.mMatchConstraintMaxHeight;
                    if (i16 > 0) {
                        measuredHeight2 = Math.min(i16, measuredHeight2);
                    }
                    if (!Optimizer.enabled(ConstraintLayout.access$100(this.this$0), 1)) {
                        if (!z12 && z10) {
                            measuredWidth2 = (int) ((measuredHeight2 * constraintWidget.mDimensionRatio) + 0.5f);
                        } else if (z13 && z20) {
                            measuredHeight2 = (int) ((measuredWidth2 / constraintWidget.mDimensionRatio) + 0.5f);
                        }
                    }
                    if (measuredWidth == measuredWidth2 || measuredHeight != measuredHeight2) {
                        if (measuredWidth != measuredWidth2) {
                            iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(measuredWidth2, BasicMeasure.EXACTLY);
                        } else {
                            iMakeMeasureSpec3 = i15;
                        }
                        if (measuredHeight != measuredHeight2) {
                            iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(measuredHeight2, BasicMeasure.EXACTLY);
                        } else {
                            iMakeMeasureSpec4 = i12;
                        }
                        view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                        constraintWidget.setLastMeasureSpec(iMakeMeasureSpec3, iMakeMeasureSpec4);
                        measuredWidth2 = view.getMeasuredWidth();
                        measuredHeight2 = view.getMeasuredHeight();
                        baseline = view.getBaseline();
                    }
                    i17 = -1;
                }
                if (baseline != i17) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (measuredWidth2 == basicMeasure$Measure.horizontalDimension || measuredHeight2 != basicMeasure$Measure.verticalDimension) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                basicMeasure$Measure.measuredNeedsSolverPass = z15;
                if (constraintLayout$LayoutParams.mNeedsBaseline) {
                    z14 = true;
                }
                if (z14 && baseline != -1 && constraintWidget.getBaselineDistance() != baseline) {
                    basicMeasure$Measure.measuredNeedsSolverPass = true;
                }
                basicMeasure$Measure.measuredWidth = measuredWidth2;
                basicMeasure$Measure.measuredHeight = measuredHeight2;
                basicMeasure$Measure.measuredHasBaseline = z14;
                basicMeasure$Measure.measuredBaseline = baseline;
                if (ConstraintLayout.access$000(this.this$0) != null) {
                    long jNanoTime2 = System.nanoTime();
                    Metrics metricsAccess$000 = ConstraintLayout.access$000(this.this$0);
                    metricsAccess$000.measuresWidgetsDuration = (jNanoTime2 - jNanoTime) + metricsAccess$000.measuresWidgetsDuration;
                }
            }
            iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.mLayoutWidthSpec, constraintWidget.getHorizontalMargin() + i22, -1);
        }
        childMeasureSpec = iMakeMeasureSpec;
        i9 = iArr[constraintWidget$DimensionBehaviour4.ordinal()];
        if (i9 != 1) {
            iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(i20, BasicMeasure.EXACTLY);
        } else if (i9 != 2) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i21, -2);
        } else if (i9 != 3) {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, constraintWidget.getVerticalMargin() + i21, -1);
        } else if (i9 != 4) {
            iMakeMeasureSpec2 = 0;
        } else {
            iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.mLayoutHeightSpec, i21, -2);
            if (constraintWidget.mMatchConstraintDefaultHeight == 1) {
                z16 = true;
            } else {
                z16 = false;
            }
            i18 = basicMeasure$Measure.measureStrategy;
            if (i18 != BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS) {
                if (view.getMeasuredWidth() == constraintWidget.getWidth()) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if (basicMeasure$Measure.measureStrategy != BasicMeasure$Measure.USE_GIVEN_DIMENSIONS) {
                    iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), BasicMeasure.EXACTLY);
                }
            } else {
                if (view.getMeasuredWidth() == constraintWidget.getWidth()) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if (basicMeasure$Measure.measureStrategy != BasicMeasure$Measure.USE_GIVEN_DIMENSIONS) {
                    iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(constraintWidget.getHeight(), BasicMeasure.EXACTLY);
                }
            }
        }
        constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.getParent();
        if (constraintWidgetContainer == null) {
        }
        constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour) {
            z8 = true;
        } else {
            z8 = false;
        }
        if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour) {
            z9 = true;
        } else {
            z9 = false;
        }
        constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        if (constraintWidget$DimensionBehaviour4 != constraintWidget$DimensionBehaviour2) {
            z10 = true;
        } else {
            z10 = true;
        }
        if (constraintWidget$DimensionBehaviour3 != constraintWidget$DimensionBehaviour2) {
            z11 = true;
        } else {
            z11 = true;
        }
        if (z8) {
            z12 = false;
        } else {
            z12 = false;
        }
        if (z9) {
            z13 = false;
        } else {
            z13 = false;
        }
        if (view == null) {
            return;
        }
        constraintLayout$LayoutParams = (ConstraintLayout$LayoutParams) view.getLayoutParams();
        i10 = basicMeasure$Measure.measureStrategy;
        boolean z21 = z11;
        if (i10 == BasicMeasure$Measure.TRY_GIVEN_DIMENSIONS) {
            if (view instanceof VirtualLayout) {
                view.measure(childMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(childMeasureSpec, iMakeMeasureSpec2);
            }
            constraintWidget.setLastMeasureSpec(childMeasureSpec, iMakeMeasureSpec2);
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            baseline = view.getBaseline();
            i11 = constraintWidget.mMatchConstraintMinWidth;
            if (i11 > 0) {
                measuredWidth2 = Math.max(i11, measuredWidth);
            } else {
                measuredWidth2 = measuredWidth;
            }
            i12 = iMakeMeasureSpec2;
            i13 = constraintWidget.mMatchConstraintMaxWidth;
            if (i13 > 0) {
                measuredWidth2 = Math.min(i13, measuredWidth2);
            }
            i14 = constraintWidget.mMatchConstraintMinHeight;
            if (i14 > 0) {
                measuredHeight2 = Math.max(i14, measuredHeight);
            } else {
                measuredHeight2 = measuredHeight;
            }
            i15 = childMeasureSpec;
            i16 = constraintWidget.mMatchConstraintMaxHeight;
            if (i16 > 0) {
                measuredHeight2 = Math.min(i16, measuredHeight2);
            }
            if (!Optimizer.enabled(ConstraintLayout.access$100(this.this$0), 1)) {
                if (!z12) {
                    if (z13) {
                        measuredHeight2 = (int) ((measuredWidth2 / constraintWidget.mDimensionRatio) + 0.5f);
                    }
                } else if (z13) {
                    measuredHeight2 = (int) ((measuredWidth2 / constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
            if (measuredWidth == measuredWidth2) {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(measuredWidth2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec3 = i15;
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(measuredHeight2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec4 = i12;
                }
                view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                constraintWidget.setLastMeasureSpec(iMakeMeasureSpec3, iMakeMeasureSpec4);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            } else {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(measuredWidth2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec3 = i15;
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(measuredHeight2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec4 = i12;
                }
                view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                constraintWidget.setLastMeasureSpec(iMakeMeasureSpec3, iMakeMeasureSpec4);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            }
            i17 = -1;
        } else {
            if (view instanceof VirtualLayout) {
                view.measure(childMeasureSpec, iMakeMeasureSpec2);
            } else {
                view.measure(childMeasureSpec, iMakeMeasureSpec2);
            }
            constraintWidget.setLastMeasureSpec(childMeasureSpec, iMakeMeasureSpec2);
            measuredWidth = view.getMeasuredWidth();
            measuredHeight = view.getMeasuredHeight();
            baseline = view.getBaseline();
            i11 = constraintWidget.mMatchConstraintMinWidth;
            if (i11 > 0) {
                measuredWidth2 = Math.max(i11, measuredWidth);
            } else {
                measuredWidth2 = measuredWidth;
            }
            i12 = iMakeMeasureSpec2;
            i13 = constraintWidget.mMatchConstraintMaxWidth;
            if (i13 > 0) {
                measuredWidth2 = Math.min(i13, measuredWidth2);
            }
            i14 = constraintWidget.mMatchConstraintMinHeight;
            if (i14 > 0) {
                measuredHeight2 = Math.max(i14, measuredHeight);
            } else {
                measuredHeight2 = measuredHeight;
            }
            i15 = childMeasureSpec;
            i16 = constraintWidget.mMatchConstraintMaxHeight;
            if (i16 > 0) {
                measuredHeight2 = Math.min(i16, measuredHeight2);
            }
            if (!Optimizer.enabled(ConstraintLayout.access$100(this.this$0), 1)) {
                if (!z12) {
                    if (z13) {
                        measuredHeight2 = (int) ((measuredWidth2 / constraintWidget.mDimensionRatio) + 0.5f);
                    }
                } else if (z13) {
                    measuredHeight2 = (int) ((measuredWidth2 / constraintWidget.mDimensionRatio) + 0.5f);
                }
            }
            if (measuredWidth == measuredWidth2) {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(measuredWidth2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec3 = i15;
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(measuredHeight2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec4 = i12;
                }
                view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                constraintWidget.setLastMeasureSpec(iMakeMeasureSpec3, iMakeMeasureSpec4);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            } else {
                if (measuredWidth != measuredWidth2) {
                    iMakeMeasureSpec3 = View$MeasureSpec.makeMeasureSpec(measuredWidth2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec3 = i15;
                }
                if (measuredHeight != measuredHeight2) {
                    iMakeMeasureSpec4 = View$MeasureSpec.makeMeasureSpec(measuredHeight2, BasicMeasure.EXACTLY);
                } else {
                    iMakeMeasureSpec4 = i12;
                }
                view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
                constraintWidget.setLastMeasureSpec(iMakeMeasureSpec3, iMakeMeasureSpec4);
                measuredWidth2 = view.getMeasuredWidth();
                measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
            }
            i17 = -1;
        }
        if (baseline != i17) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (measuredWidth2 == basicMeasure$Measure.horizontalDimension) {
            z15 = true;
        } else {
            z15 = true;
        }
        basicMeasure$Measure.measuredNeedsSolverPass = z15;
        if (constraintLayout$LayoutParams.mNeedsBaseline) {
            z14 = true;
        }
        if (z14) {
            basicMeasure$Measure.measuredNeedsSolverPass = true;
        }
        basicMeasure$Measure.measuredWidth = measuredWidth2;
        basicMeasure$Measure.measuredHeight = measuredHeight2;
        basicMeasure$Measure.measuredHasBaseline = z14;
        basicMeasure$Measure.measuredBaseline = baseline;
        if (ConstraintLayout.access$000(this.this$0) != null) {
            long jNanoTime3 = System.nanoTime();
            Metrics metricsAccess$001 = ConstraintLayout.access$000(this.this$0);
            metricsAccess$001.measuresWidgetsDuration = (jNanoTime3 - jNanoTime) + metricsAccess$001.measuresWidgetsDuration;
        }
    }
}
