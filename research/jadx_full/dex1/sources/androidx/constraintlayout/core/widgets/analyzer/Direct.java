package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ChainHead;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintAnchor$Type;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Direct {
    private static final boolean APPLY_MATCH_PARENT = false;
    private static final boolean DEBUG = false;
    private static final boolean EARLY_TERMINATION = true;
    private static BasicMeasure$Measure sMeasure = new BasicMeasure$Measure();
    private static int sHcount = 0;
    private static int sVcount = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean canMeasure(int i9, ConstraintWidget constraintWidget) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2;
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour = constraintWidget.getVerticalDimensionBehaviour();
        ConstraintWidgetContainer constraintWidgetContainer = constraintWidget.getParent() != null ? (ConstraintWidgetContainer) constraintWidget.getParent() : null;
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.getHorizontalDimensionBehaviour();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.FIXED;
        }
        if (constraintWidgetContainer != null) {
            constraintWidgetContainer.getVerticalDimensionBehaviour();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.FIXED;
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.FIXED;
        boolean z8 = horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour5 || constraintWidget.isResolvedHorizontally() || horizontalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT || (horizontalDimensionBehaviour == (constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.mMatchConstraintDefaultWidth == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(0)) || (horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour2 && constraintWidget.mMatchConstraintDefaultWidth == 1 && constraintWidget.hasResolvedTargets(0, constraintWidget.getWidth()));
        boolean z9 = verticalDimensionBehaviour == constraintWidget$DimensionBehaviour5 || constraintWidget.isResolvedVertically() || verticalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT || (verticalDimensionBehaviour == (constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) && constraintWidget.mMatchConstraintDefaultHeight == 0 && constraintWidget.mDimensionRatio == 0.0f && constraintWidget.hasDanglingDimension(1)) || (verticalDimensionBehaviour == constraintWidget$DimensionBehaviour && constraintWidget.mMatchConstraintDefaultHeight == 1 && constraintWidget.hasResolvedTargets(1, constraintWidget.getHeight()));
        if (constraintWidget.mDimensionRatio <= 0.0f || !(z8 || z9)) {
            return z8 && z9;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void horizontalSolvingPass(int i9, ConstraintWidget constraintWidget, BasicMeasure$Measurer basicMeasure$Measurer, boolean z8) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.isHorizontalSolvingPassDone()) {
            return;
        }
        boolean z9 = true;
        sHcount++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested()) {
            int i10 = i9 + 1;
            if (canMeasure(i10, constraintWidget)) {
                ConstraintWidgetContainer.measure(i10, constraintWidget, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor$Type.LEFT);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(ConstraintAnchor$Type.RIGHT);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        if (anchor.getDependents() != null && anchor.hasFinalValue()) {
            Iterator<ConstraintAnchor> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int i11 = i9 + 1;
                boolean zCanMeasure = canMeasure(i11, constraintWidget2);
                if (constraintWidget2.isMeasureRequested() && zCanMeasure) {
                    ConstraintWidgetContainer.measure(i11, constraintWidget2, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
                }
                boolean z10 = ((next == constraintWidget2.mLeft && (constraintAnchor4 = constraintWidget2.mRight.mTarget) != null && constraintAnchor4.hasFinalValue()) || (next == constraintWidget2.mRight && (constraintAnchor3 = constraintWidget2.mLeft.mTarget) != null && constraintAnchor3.hasFinalValue())) ? z9 : false;
                ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = constraintWidget2.getHorizontalDimensionBehaviour();
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour != constraintWidget$DimensionBehaviour || zCanMeasure) {
                    if (!constraintWidget2.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget2.mLeft;
                        if (next == constraintAnchor5 && constraintWidget2.mRight.mTarget == null) {
                            int margin = constraintAnchor5.getMargin() + finalValue;
                            constraintWidget2.setFinalHorizontal(margin, constraintWidget2.getWidth() + margin);
                            horizontalSolvingPass(i11, constraintWidget2, basicMeasure$Measurer, z8);
                        } else {
                            ConstraintAnchor constraintAnchor6 = constraintWidget2.mRight;
                            if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                                int margin2 = finalValue - constraintAnchor6.getMargin();
                                constraintWidget2.setFinalHorizontal(margin2 - constraintWidget2.getWidth(), margin2);
                                horizontalSolvingPass(i11, constraintWidget2, basicMeasure$Measurer, z8);
                            } else if (z10 && !constraintWidget2.isInHorizontalChain()) {
                                solveHorizontalCenterConstraints(i11, basicMeasure$Measurer, constraintWidget2, z8);
                            }
                        }
                    }
                } else if (constraintWidget2.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour && constraintWidget2.mMatchConstraintMaxWidth >= 0 && constraintWidget2.mMatchConstraintMinWidth >= 0 && ((constraintWidget2.getVisibility() == 8 || (constraintWidget2.mMatchConstraintDefaultWidth == 0 && constraintWidget2.getDimensionRatio() == 0.0f)) && !constraintWidget2.isInHorizontalChain() && !constraintWidget2.isInVirtualLayout() && z10 && !constraintWidget2.isInHorizontalChain())) {
                    solveHorizontalMatchConstraint(i11, constraintWidget, basicMeasure$Measurer, constraintWidget2, z8);
                }
                z9 = z9;
            }
        }
        boolean z11 = z9;
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<ConstraintAnchor> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int i12 = i9 + 1;
                boolean zCanMeasure2 = canMeasure(i12, constraintWidget3);
                if (constraintWidget3.isMeasureRequested() && zCanMeasure2) {
                    ConstraintWidgetContainer.measure(i12, constraintWidget3, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
                }
                boolean z12 = ((next2 == constraintWidget3.mLeft && (constraintAnchor2 = constraintWidget3.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) || (next2 == constraintWidget3.mRight && (constraintAnchor = constraintWidget3.mLeft.mTarget) != null && constraintAnchor.hasFinalValue())) ? z11 : false;
                ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidget3.getHorizontalDimensionBehaviour();
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour2 != constraintWidget$DimensionBehaviour2 || zCanMeasure2) {
                    if (!constraintWidget3.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor7 = constraintWidget3.mLeft;
                        if (next2 == constraintAnchor7 && constraintWidget3.mRight.mTarget == null) {
                            int margin3 = constraintAnchor7.getMargin() + finalValue2;
                            constraintWidget3.setFinalHorizontal(margin3, constraintWidget3.getWidth() + margin3);
                            horizontalSolvingPass(i12, constraintWidget3, basicMeasure$Measurer, z8);
                        } else {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.mRight;
                            if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                                int margin4 = finalValue2 - constraintAnchor8.getMargin();
                                constraintWidget3.setFinalHorizontal(margin4 - constraintWidget3.getWidth(), margin4);
                                horizontalSolvingPass(i12, constraintWidget3, basicMeasure$Measurer, z8);
                            } else if (z12 && !constraintWidget3.isInHorizontalChain()) {
                                solveHorizontalCenterConstraints(i12, basicMeasure$Measurer, constraintWidget3, z8);
                            }
                        }
                    }
                } else if (constraintWidget3.getHorizontalDimensionBehaviour() == constraintWidget$DimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxWidth >= 0 && constraintWidget3.mMatchConstraintMinWidth >= 0 && (constraintWidget3.getVisibility() == 8 || (constraintWidget3.mMatchConstraintDefaultWidth == 0 && constraintWidget3.getDimensionRatio() == 0.0f))) {
                    if (!constraintWidget3.isInHorizontalChain() && !constraintWidget3.isInVirtualLayout() && z12 && !constraintWidget3.isInHorizontalChain()) {
                        solveHorizontalMatchConstraint(i12, constraintWidget, basicMeasure$Measurer, constraintWidget3, z8);
                    }
                }
            }
        }
        constraintWidget.markHorizontalSolvingPassDone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String ls(int i9) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < i9; i10++) {
            sb.append("  ");
        }
        sb.append("+-(" + i9 + ") ");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void solveBarrier(int i9, Barrier barrier, BasicMeasure$Measurer basicMeasure$Measurer, int i10, boolean z8) {
        if (barrier.allSolved()) {
            if (i10 == 0) {
                horizontalSolvingPass(i9 + 1, barrier, basicMeasure$Measurer, z8);
            } else {
                verticalSolvingPass(i9 + 1, barrier, basicMeasure$Measurer);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:102:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:106:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:108:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:109:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ec A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x01ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x01f0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:115:0x0213  */
    /* JADX WARN: Code duplicated, block: B:117:0x0234 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:119:0x0237 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:76:0x0126 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:77:0x0128  */
    /* JADX WARN: Code duplicated, block: B:78:0x012d  */
    /* JADX WARN: Code duplicated, block: B:81:0x013b  */
    /* JADX WARN: Code duplicated, block: B:82:0x0144  */
    /* JADX WARN: Code duplicated, block: B:85:0x0155 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x0157  */
    /* JADX WARN: Code duplicated, block: B:88:0x015e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0166 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0168  */
    /* JADX WARN: Code duplicated, block: B:92:0x0173  */
    /* JADX WARN: Code duplicated, block: B:94:0x0182  */
    /* JADX WARN: Code duplicated, block: B:96:0x018d  */
    /* JADX WARN: Code duplicated, block: B:98:0x01a3  */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v7, types: [boolean, int] */
    public static boolean solveChain(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i9, int i10, ChainHead chainHead, boolean z8, boolean z9, boolean z10) {
        int i11;
        int margin;
        boolean z11;
        ConstraintWidget constraintWidget;
        ?? r9;
        int margin2;
        int height;
        ConstraintAnchor constraintAnchor;
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor2;
        float verticalBiasPercent;
        int i12;
        if (z10) {
            return false;
        }
        if (i9 == 0) {
            if (!constraintWidgetContainer.isResolvedHorizontally()) {
                return false;
            }
        } else if (!constraintWidgetContainer.isResolvedVertically()) {
            return false;
        }
        boolean zIsRtl = constraintWidgetContainer.isRtl();
        ConstraintWidget first = chainHead.getFirst();
        ConstraintWidget last = chainHead.getLast();
        ConstraintWidget firstVisibleWidget = chainHead.getFirstVisibleWidget();
        ConstraintWidget lastVisibleWidget = chainHead.getLastVisibleWidget();
        ConstraintWidget head = chainHead.getHead();
        ConstraintAnchor constraintAnchor3 = first.mListAnchors[i10];
        int i13 = i10 + 1;
        ConstraintAnchor constraintAnchor4 = last.mListAnchors[i13];
        ConstraintAnchor constraintAnchor5 = constraintAnchor3.mTarget;
        if (constraintAnchor5 == null || constraintAnchor4.mTarget == null) {
            return false;
        }
        if (!constraintAnchor5.hasFinalValue() || !constraintAnchor4.mTarget.hasFinalValue()) {
            return false;
        }
        if (firstVisibleWidget == null || lastVisibleWidget == null) {
            return false;
        }
        int margin3 = firstVisibleWidget.mListAnchors[i10].getMargin() + constraintAnchor3.mTarget.getFinalValue();
        int finalValue = constraintAnchor4.mTarget.getFinalValue() - lastVisibleWidget.mListAnchors[i13].getMargin();
        int i14 = finalValue - margin3;
        if (i14 <= 0) {
            return false;
        }
        BasicMeasure$Measure basicMeasure$Measure = new BasicMeasure$Measure();
        boolean z12 = false;
        int i15 = 0;
        int i16 = 0;
        int margin4 = 0;
        boolean z13 = false;
        ConstraintWidget constraintWidget3 = first;
        while (true) {
            ConstraintWidget constraintWidget4 = null;
            if (z12) {
                ConstraintWidget constraintWidget5 = first;
                ConstraintWidget constraintWidget6 = head;
                if (i15 == 0 || i15 != i16 || i14 < margin4) {
                    return false;
                }
                int i17 = i14 - margin4;
                if (!z8) {
                    if (z9 && i15 > 2) {
                        i11 = 1;
                        i17 = (i17 / i15) - 1;
                    }
                    if (i15 == i11) {
                        if (i9 == 0) {
                            verticalBiasPercent = constraintWidget6.getHorizontalBiasPercent();
                        } else {
                            verticalBiasPercent = constraintWidget6.getVerticalBiasPercent();
                        }
                        i12 = (int) ((i17 * verticalBiasPercent) + margin3 + 0.5f);
                        if (i9 == 0) {
                            firstVisibleWidget.setFinalHorizontal(i12, firstVisibleWidget.getWidth() + i12);
                        } else {
                            firstVisibleWidget.setFinalVertical(i12, firstVisibleWidget.getHeight() + i12);
                        }
                        horizontalSolvingPass(1, firstVisibleWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                        return true;
                    }
                    if (z8) {
                        if (z9) {
                            return true;
                        }
                        if (i15 == 2) {
                            return false;
                        }
                        if (i9 == 0) {
                            firstVisibleWidget.setFinalHorizontal(margin3, firstVisibleWidget.getWidth() + margin3);
                            lastVisibleWidget.setFinalHorizontal(finalValue - lastVisibleWidget.getWidth(), finalValue);
                            horizontalSolvingPass(1, firstVisibleWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                            horizontalSolvingPass(1, lastVisibleWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                            return true;
                        }
                        firstVisibleWidget.setFinalVertical(margin3, firstVisibleWidget.getHeight() + margin3);
                        lastVisibleWidget.setFinalVertical(finalValue - lastVisibleWidget.getHeight(), finalValue);
                        verticalSolvingPass(1, firstVisibleWidget, constraintWidgetContainer.getMeasurer());
                        verticalSolvingPass(1, lastVisibleWidget, constraintWidgetContainer.getMeasurer());
                        return true;
                    }
                    margin = margin3 + i17;
                    z11 = false;
                    constraintWidget = constraintWidget5;
                    while (!z11) {
                        if (constraintWidget.getVisibility() == 8) {
                            margin2 = constraintWidget.mListAnchors[i10].getMargin() + margin;
                            if (i9 == 0) {
                                r9 = i11;
                                constraintWidget.setFinalHorizontal(margin2, constraintWidget.getWidth() + margin2);
                                horizontalSolvingPass(1, constraintWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                                height = constraintWidget.getWidth();
                            } else {
                                r9 = i11;
                                constraintWidget.setFinalVertical(margin2, constraintWidget.getHeight() + margin2);
                                verticalSolvingPass(1, constraintWidget, constraintWidgetContainer.getMeasurer());
                                height = constraintWidget.getHeight();
                            }
                            margin = constraintWidget.mListAnchors[i13].getMargin() + height + margin2 + i17;
                        } else if (i9 == 0) {
                            constraintWidget.setFinalHorizontal(margin, margin);
                            horizontalSolvingPass(r9, constraintWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                        } else {
                            constraintWidget.setFinalVertical(margin, margin);
                            verticalSolvingPass(r9, constraintWidget, constraintWidgetContainer.getMeasurer());
                        }
                        constraintWidget.addToSolver(linearSystem, z13);
                        constraintAnchor = constraintWidget.mListAnchors[i13].mTarget;
                        if (constraintAnchor != null) {
                            constraintWidget2 = constraintAnchor.mOwner;
                            constraintAnchor2 = constraintWidget2.mListAnchors[i10].mTarget;
                            if (constraintAnchor2 != null || constraintAnchor2.mOwner != constraintWidget) {
                                constraintWidget2 = null;
                            }
                        } else {
                            constraintWidget2 = null;
                        }
                        if (constraintWidget2 != null) {
                            constraintWidget = constraintWidget2;
                        } else {
                            z11 = true;
                        }
                        r9 = 1;
                        z13 = false;
                    }
                    r9 = i11;
                    return r9;
                }
                i17 /= i15 + 1;
                i11 = 1;
                if (i15 == i11) {
                    if (i9 == 0) {
                        verticalBiasPercent = constraintWidget6.getHorizontalBiasPercent();
                    } else {
                        verticalBiasPercent = constraintWidget6.getVerticalBiasPercent();
                    }
                    i12 = (int) ((i17 * verticalBiasPercent) + margin3 + 0.5f);
                    if (i9 == 0) {
                        firstVisibleWidget.setFinalHorizontal(i12, firstVisibleWidget.getWidth() + i12);
                    } else {
                        firstVisibleWidget.setFinalVertical(i12, firstVisibleWidget.getHeight() + i12);
                    }
                    horizontalSolvingPass(1, firstVisibleWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                    return true;
                }
                if (z8) {
                    if (z9) {
                        return true;
                    }
                    if (i15 == 2) {
                        return false;
                    }
                    if (i9 == 0) {
                        firstVisibleWidget.setFinalHorizontal(margin3, firstVisibleWidget.getWidth() + margin3);
                        lastVisibleWidget.setFinalHorizontal(finalValue - lastVisibleWidget.getWidth(), finalValue);
                        horizontalSolvingPass(1, firstVisibleWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                        horizontalSolvingPass(1, lastVisibleWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                        return true;
                    }
                    firstVisibleWidget.setFinalVertical(margin3, firstVisibleWidget.getHeight() + margin3);
                    lastVisibleWidget.setFinalVertical(finalValue - lastVisibleWidget.getHeight(), finalValue);
                    verticalSolvingPass(1, firstVisibleWidget, constraintWidgetContainer.getMeasurer());
                    verticalSolvingPass(1, lastVisibleWidget, constraintWidgetContainer.getMeasurer());
                    return true;
                }
                margin = margin3 + i17;
                z11 = false;
                constraintWidget = constraintWidget5;
                while (!z11) {
                    if (constraintWidget.getVisibility() == 8) {
                        margin2 = constraintWidget.mListAnchors[i10].getMargin() + margin;
                        if (i9 == 0) {
                            r9 = i11;
                            constraintWidget.setFinalHorizontal(margin2, constraintWidget.getWidth() + margin2);
                            horizontalSolvingPass(1, constraintWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                            height = constraintWidget.getWidth();
                        } else {
                            r9 = i11;
                            constraintWidget.setFinalVertical(margin2, constraintWidget.getHeight() + margin2);
                            verticalSolvingPass(1, constraintWidget, constraintWidgetContainer.getMeasurer());
                            height = constraintWidget.getHeight();
                        }
                        margin = constraintWidget.mListAnchors[i13].getMargin() + height + margin2 + i17;
                    } else if (i9 == 0) {
                        constraintWidget.setFinalHorizontal(margin, margin);
                        horizontalSolvingPass(r9, constraintWidget, constraintWidgetContainer.getMeasurer(), zIsRtl);
                    } else {
                        constraintWidget.setFinalVertical(margin, margin);
                        verticalSolvingPass(r9, constraintWidget, constraintWidgetContainer.getMeasurer());
                    }
                    constraintWidget.addToSolver(linearSystem, z13);
                    constraintAnchor = constraintWidget.mListAnchors[i13].mTarget;
                    if (constraintAnchor != null) {
                        constraintWidget2 = constraintAnchor.mOwner;
                        constraintAnchor2 = constraintWidget2.mListAnchors[i10].mTarget;
                        if (constraintAnchor2 != null) {
                            constraintWidget2 = null;
                        } else {
                            constraintWidget2 = null;
                        }
                    } else {
                        constraintWidget2 = null;
                    }
                    if (constraintWidget2 != null) {
                        constraintWidget = constraintWidget2;
                    } else {
                        z11 = true;
                    }
                    r9 = 1;
                    z13 = false;
                }
                r9 = i11;
                return r9;
            }
            if (!canMeasure(1, constraintWidget3)) {
                return false;
            }
            ConstraintWidget constraintWidget7 = first;
            if (constraintWidget3.mListDimensionBehaviors[i9] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                return false;
            }
            if (constraintWidget3.isMeasureRequested()) {
                ConstraintWidgetContainer.measure(1, constraintWidget3, constraintWidgetContainer.getMeasurer(), basicMeasure$Measure, BasicMeasure$Measure.SELF_DIMENSIONS);
            }
            margin4 = constraintWidget3.mListAnchors[i13].getMargin() + (i9 == 0 ? constraintWidget3.getWidth() : constraintWidget3.getHeight()) + constraintWidget3.mListAnchors[i10].getMargin() + margin4;
            i16++;
            if (constraintWidget3.getVisibility() != 8) {
                i15++;
            }
            ConstraintAnchor constraintAnchor6 = constraintWidget3.mListAnchors[i13].mTarget;
            if (constraintAnchor6 != null) {
                ConstraintWidget constraintWidget8 = constraintAnchor6.mOwner;
                ConstraintAnchor constraintAnchor7 = constraintWidget8.mListAnchors[i10].mTarget;
                if (constraintAnchor7 != null && constraintAnchor7.mOwner == constraintWidget3) {
                    constraintWidget4 = constraintWidget8;
                }
            }
            if (constraintWidget4 != null) {
                constraintWidget3 = constraintWidget4;
            } else {
                z12 = true;
            }
            first = constraintWidget7;
            head = head;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void solveHorizontalCenterConstraints(int i9, BasicMeasure$Measurer basicMeasure$Measurer, ConstraintWidget constraintWidget, boolean z8) {
        float horizontalBiasPercent = constraintWidget.getHorizontalBiasPercent();
        int finalValue = constraintWidget.mLeft.mTarget.getFinalValue();
        int finalValue2 = constraintWidget.mRight.mTarget.getFinalValue();
        int margin = constraintWidget.mLeft.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintWidget.mRight.getMargin();
        if (finalValue == finalValue2) {
            horizontalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int width = constraintWidget.getWidth();
        int i10 = (finalValue2 - finalValue) - width;
        if (finalValue > finalValue2) {
            i10 = (finalValue - finalValue2) - width;
        }
        int i11 = ((int) (i10 > 0 ? (horizontalBiasPercent * i10) + 0.5f : horizontalBiasPercent * i10)) + finalValue;
        int i12 = i11 + width;
        if (finalValue > finalValue2) {
            i12 = i11 - width;
        }
        constraintWidget.setFinalHorizontal(i11, i12);
        horizontalSolvingPass(i9 + 1, constraintWidget, basicMeasure$Measurer, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void solveHorizontalMatchConstraint(int i9, ConstraintWidget constraintWidget, BasicMeasure$Measurer basicMeasure$Measurer, ConstraintWidget constraintWidget2, boolean z8) {
        float horizontalBiasPercent = constraintWidget2.getHorizontalBiasPercent();
        int margin = constraintWidget2.mLeft.getMargin() + constraintWidget2.mLeft.mTarget.getFinalValue();
        int finalValue = constraintWidget2.mRight.mTarget.getFinalValue() - constraintWidget2.mRight.getMargin();
        if (finalValue >= margin) {
            int width = constraintWidget2.getWidth();
            if (constraintWidget2.getVisibility() != 8) {
                int i10 = constraintWidget2.mMatchConstraintDefaultWidth;
                if (i10 == 2) {
                    width = (int) (constraintWidget2.getHorizontalBiasPercent() * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.getWidth() : constraintWidget.getParent().getWidth()));
                } else if (i10 == 0) {
                    width = finalValue - margin;
                }
                width = Math.max(constraintWidget2.mMatchConstraintMinWidth, width);
                int i11 = constraintWidget2.mMatchConstraintMaxWidth;
                if (i11 > 0) {
                    width = Math.min(i11, width);
                }
            }
            int i12 = margin + ((int) ((horizontalBiasPercent * ((finalValue - margin) - width)) + 0.5f));
            constraintWidget2.setFinalHorizontal(i12, width + i12);
            horizontalSolvingPass(i9 + 1, constraintWidget2, basicMeasure$Measurer, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void solveVerticalCenterConstraints(int i9, BasicMeasure$Measurer basicMeasure$Measurer, ConstraintWidget constraintWidget) {
        float verticalBiasPercent = constraintWidget.getVerticalBiasPercent();
        int finalValue = constraintWidget.mTop.mTarget.getFinalValue();
        int finalValue2 = constraintWidget.mBottom.mTarget.getFinalValue();
        int margin = constraintWidget.mTop.getMargin() + finalValue;
        int margin2 = finalValue2 - constraintWidget.mBottom.getMargin();
        if (finalValue == finalValue2) {
            verticalBiasPercent = 0.5f;
        } else {
            finalValue = margin;
            finalValue2 = margin2;
        }
        int height = constraintWidget.getHeight();
        int i10 = (finalValue2 - finalValue) - height;
        if (finalValue > finalValue2) {
            i10 = (finalValue - finalValue2) - height;
        }
        int i11 = (int) (i10 > 0 ? (verticalBiasPercent * i10) + 0.5f : verticalBiasPercent * i10);
        int i12 = finalValue + i11;
        int i13 = i12 + height;
        if (finalValue > finalValue2) {
            i12 = finalValue - i11;
            i13 = i12 - height;
        }
        constraintWidget.setFinalVertical(i12, i13);
        verticalSolvingPass(i9 + 1, constraintWidget, basicMeasure$Measurer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void solveVerticalMatchConstraint(int i9, ConstraintWidget constraintWidget, BasicMeasure$Measurer basicMeasure$Measurer, ConstraintWidget constraintWidget2) {
        float verticalBiasPercent = constraintWidget2.getVerticalBiasPercent();
        int margin = constraintWidget2.mTop.getMargin() + constraintWidget2.mTop.mTarget.getFinalValue();
        int finalValue = constraintWidget2.mBottom.mTarget.getFinalValue() - constraintWidget2.mBottom.getMargin();
        if (finalValue >= margin) {
            int height = constraintWidget2.getHeight();
            if (constraintWidget2.getVisibility() != 8) {
                int i10 = constraintWidget2.mMatchConstraintDefaultHeight;
                if (i10 == 2) {
                    height = (int) (verticalBiasPercent * 0.5f * (constraintWidget instanceof ConstraintWidgetContainer ? constraintWidget.getHeight() : constraintWidget.getParent().getHeight()));
                } else if (i10 == 0) {
                    height = finalValue - margin;
                }
                height = Math.max(constraintWidget2.mMatchConstraintMinHeight, height);
                int i11 = constraintWidget2.mMatchConstraintMaxHeight;
                if (i11 > 0) {
                    height = Math.min(i11, height);
                }
            }
            int i12 = margin + ((int) ((verticalBiasPercent * ((finalValue - margin) - height)) + 0.5f));
            constraintWidget2.setFinalVertical(i12, height + i12);
            verticalSolvingPass(i9 + 1, constraintWidget2, basicMeasure$Measurer);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void solvingPass(ConstraintWidgetContainer constraintWidgetContainer, BasicMeasure$Measurer basicMeasure$Measurer) {
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = constraintWidgetContainer.getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour = constraintWidgetContainer.getVerticalDimensionBehaviour();
        sHcount = 0;
        sVcount = 0;
        constraintWidgetContainer.resetFinalResolution();
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i9 = 0; i9 < size; i9++) {
            children.get(i9).resetFinalResolution();
        }
        boolean zIsRtl = constraintWidgetContainer.isRtl();
        if (horizontalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.FIXED) {
            constraintWidgetContainer.setFinalHorizontal(0, constraintWidgetContainer.getWidth());
        } else {
            constraintWidgetContainer.setFinalLeft(0);
        }
        boolean z8 = false;
        boolean z9 = false;
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = children.get(i10);
            if (constraintWidget instanceof Guideline) {
                Guideline guideline = (Guideline) constraintWidget;
                if (guideline.getOrientation() == 1) {
                    if (guideline.getRelativeBegin() != -1) {
                        guideline.setFinalValue(guideline.getRelativeBegin());
                    } else if (guideline.getRelativeEnd() != -1 && constraintWidgetContainer.isResolvedHorizontally()) {
                        guideline.setFinalValue(constraintWidgetContainer.getWidth() - guideline.getRelativeEnd());
                    } else if (constraintWidgetContainer.isResolvedHorizontally()) {
                        guideline.setFinalValue((int) ((guideline.getRelativePercent() * constraintWidgetContainer.getWidth()) + 0.5f));
                    }
                    z8 = true;
                }
            } else if ((constraintWidget instanceof Barrier) && ((Barrier) constraintWidget).getOrientation() == 0) {
                z9 = true;
            }
        }
        if (z8) {
            for (int i11 = 0; i11 < size; i11++) {
                ConstraintWidget constraintWidget2 = children.get(i11);
                if (constraintWidget2 instanceof Guideline) {
                    Guideline guideline2 = (Guideline) constraintWidget2;
                    if (guideline2.getOrientation() == 1) {
                        horizontalSolvingPass(0, guideline2, basicMeasure$Measurer, zIsRtl);
                    }
                }
            }
        }
        horizontalSolvingPass(0, constraintWidgetContainer, basicMeasure$Measurer, zIsRtl);
        if (z9) {
            for (int i12 = 0; i12 < size; i12++) {
                ConstraintWidget constraintWidget3 = children.get(i12);
                if (constraintWidget3 instanceof Barrier) {
                    Barrier barrier = (Barrier) constraintWidget3;
                    if (barrier.getOrientation() == 0) {
                        solveBarrier(0, barrier, basicMeasure$Measurer, 0, zIsRtl);
                    }
                }
            }
        }
        if (verticalDimensionBehaviour == ConstraintWidget$DimensionBehaviour.FIXED) {
            constraintWidgetContainer.setFinalVertical(0, constraintWidgetContainer.getHeight());
        } else {
            constraintWidgetContainer.setFinalTop(0);
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i13 = 0; i13 < size; i13++) {
            ConstraintWidget constraintWidget4 = children.get(i13);
            if (constraintWidget4 instanceof Guideline) {
                Guideline guideline3 = (Guideline) constraintWidget4;
                if (guideline3.getOrientation() == 0) {
                    if (guideline3.getRelativeBegin() != -1) {
                        guideline3.setFinalValue(guideline3.getRelativeBegin());
                    } else if (guideline3.getRelativeEnd() != -1 && constraintWidgetContainer.isResolvedVertically()) {
                        guideline3.setFinalValue(constraintWidgetContainer.getHeight() - guideline3.getRelativeEnd());
                    } else if (constraintWidgetContainer.isResolvedVertically()) {
                        guideline3.setFinalValue((int) ((guideline3.getRelativePercent() * constraintWidgetContainer.getHeight()) + 0.5f));
                    }
                    z10 = true;
                }
            } else if ((constraintWidget4 instanceof Barrier) && ((Barrier) constraintWidget4).getOrientation() == 1) {
                z11 = true;
            }
        }
        if (z10) {
            for (int i14 = 0; i14 < size; i14++) {
                ConstraintWidget constraintWidget5 = children.get(i14);
                if (constraintWidget5 instanceof Guideline) {
                    Guideline guideline4 = (Guideline) constraintWidget5;
                    if (guideline4.getOrientation() == 0) {
                        verticalSolvingPass(1, guideline4, basicMeasure$Measurer);
                    }
                }
            }
        }
        verticalSolvingPass(0, constraintWidgetContainer, basicMeasure$Measurer);
        if (z11) {
            for (int i15 = 0; i15 < size; i15++) {
                ConstraintWidget constraintWidget6 = children.get(i15);
                if (constraintWidget6 instanceof Barrier) {
                    Barrier barrier2 = (Barrier) constraintWidget6;
                    if (barrier2.getOrientation() == 1) {
                        solveBarrier(0, barrier2, basicMeasure$Measurer, 1, zIsRtl);
                    }
                }
            }
        }
        for (int i16 = 0; i16 < size; i16++) {
            ConstraintWidget constraintWidget7 = children.get(i16);
            if (constraintWidget7.isMeasureRequested() && canMeasure(0, constraintWidget7)) {
                ConstraintWidgetContainer.measure(0, constraintWidget7, basicMeasure$Measurer, sMeasure, BasicMeasure$Measure.SELF_DIMENSIONS);
                if (!(constraintWidget7 instanceof Guideline)) {
                    horizontalSolvingPass(0, constraintWidget7, basicMeasure$Measurer, zIsRtl);
                    verticalSolvingPass(0, constraintWidget7, basicMeasure$Measurer);
                } else if (((Guideline) constraintWidget7).getOrientation() == 0) {
                    verticalSolvingPass(0, constraintWidget7, basicMeasure$Measurer);
                } else {
                    horizontalSolvingPass(0, constraintWidget7, basicMeasure$Measurer, zIsRtl);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void verticalSolvingPass(int i9, ConstraintWidget constraintWidget, BasicMeasure$Measurer basicMeasure$Measurer) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        if (constraintWidget.isVerticalSolvingPassDone()) {
            return;
        }
        boolean z8 = true;
        sVcount++;
        if (!(constraintWidget instanceof ConstraintWidgetContainer) && constraintWidget.isMeasureRequested()) {
            int i10 = i9 + 1;
            if (canMeasure(i10, constraintWidget)) {
                ConstraintWidgetContainer.measure(i10, constraintWidget, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
            }
        }
        ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor$Type.TOP);
        ConstraintAnchor anchor2 = constraintWidget.getAnchor(ConstraintAnchor$Type.BOTTOM);
        int finalValue = anchor.getFinalValue();
        int finalValue2 = anchor2.getFinalValue();
        if (anchor.getDependents() != null && anchor.hasFinalValue()) {
            Iterator<ConstraintAnchor> it = anchor.getDependents().iterator();
            while (it.hasNext()) {
                ConstraintAnchor next = it.next();
                ConstraintWidget constraintWidget2 = next.mOwner;
                int i11 = i9 + 1;
                boolean zCanMeasure = canMeasure(i11, constraintWidget2);
                if (constraintWidget2.isMeasureRequested() && zCanMeasure) {
                    ConstraintWidgetContainer.measure(i11, constraintWidget2, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
                }
                boolean z9 = ((next == constraintWidget2.mTop && (constraintAnchor4 = constraintWidget2.mBottom.mTarget) != null && constraintAnchor4.hasFinalValue()) || (next == constraintWidget2.mBottom && (constraintAnchor3 = constraintWidget2.mTop.mTarget) != null && constraintAnchor3.hasFinalValue())) ? z8 : false;
                ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour = constraintWidget2.getVerticalDimensionBehaviour();
                boolean z10 = z8;
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (verticalDimensionBehaviour != constraintWidget$DimensionBehaviour || zCanMeasure) {
                    if (!constraintWidget2.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor5 = constraintWidget2.mTop;
                        if (next == constraintAnchor5 && constraintWidget2.mBottom.mTarget == null) {
                            int margin = constraintAnchor5.getMargin() + finalValue;
                            constraintWidget2.setFinalVertical(margin, constraintWidget2.getHeight() + margin);
                            verticalSolvingPass(i11, constraintWidget2, basicMeasure$Measurer);
                        } else {
                            ConstraintAnchor constraintAnchor6 = constraintWidget2.mBottom;
                            if (next == constraintAnchor6 && constraintAnchor5.mTarget == null) {
                                int margin2 = finalValue - constraintAnchor6.getMargin();
                                constraintWidget2.setFinalVertical(margin2 - constraintWidget2.getHeight(), margin2);
                                verticalSolvingPass(i11, constraintWidget2, basicMeasure$Measurer);
                            } else if (z9 && !constraintWidget2.isInVerticalChain()) {
                                solveVerticalCenterConstraints(i11, basicMeasure$Measurer, constraintWidget2);
                            }
                        }
                    }
                } else if (constraintWidget2.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour && constraintWidget2.mMatchConstraintMaxHeight >= 0 && constraintWidget2.mMatchConstraintMinHeight >= 0 && ((constraintWidget2.getVisibility() == 8 || (constraintWidget2.mMatchConstraintDefaultHeight == 0 && constraintWidget2.getDimensionRatio() == 0.0f)) && !constraintWidget2.isInVerticalChain() && !constraintWidget2.isInVirtualLayout() && z9 && !constraintWidget2.isInVerticalChain())) {
                    solveVerticalMatchConstraint(i11, constraintWidget, basicMeasure$Measurer, constraintWidget2);
                }
                z8 = z10;
            }
        }
        boolean z11 = z8;
        if (constraintWidget instanceof Guideline) {
            return;
        }
        if (anchor2.getDependents() != null && anchor2.hasFinalValue()) {
            Iterator<ConstraintAnchor> it2 = anchor2.getDependents().iterator();
            while (it2.hasNext()) {
                ConstraintAnchor next2 = it2.next();
                ConstraintWidget constraintWidget3 = next2.mOwner;
                int i12 = i9 + 1;
                boolean zCanMeasure2 = canMeasure(i12, constraintWidget3);
                if (constraintWidget3.isMeasureRequested() && zCanMeasure2) {
                    ConstraintWidgetContainer.measure(i12, constraintWidget3, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
                }
                boolean z12 = ((next2 == constraintWidget3.mTop && (constraintAnchor2 = constraintWidget3.mBottom.mTarget) != null && constraintAnchor2.hasFinalValue()) || (next2 == constraintWidget3.mBottom && (constraintAnchor = constraintWidget3.mTop.mTarget) != null && constraintAnchor.hasFinalValue())) ? z11 : false;
                ConstraintWidget$DimensionBehaviour verticalDimensionBehaviour2 = constraintWidget3.getVerticalDimensionBehaviour();
                ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
                if (verticalDimensionBehaviour2 != constraintWidget$DimensionBehaviour2 || zCanMeasure2) {
                    if (!constraintWidget3.isMeasureRequested()) {
                        ConstraintAnchor constraintAnchor7 = constraintWidget3.mTop;
                        if (next2 == constraintAnchor7 && constraintWidget3.mBottom.mTarget == null) {
                            int margin3 = constraintAnchor7.getMargin() + finalValue2;
                            constraintWidget3.setFinalVertical(margin3, constraintWidget3.getHeight() + margin3);
                            verticalSolvingPass(i12, constraintWidget3, basicMeasure$Measurer);
                        } else {
                            ConstraintAnchor constraintAnchor8 = constraintWidget3.mBottom;
                            if (next2 == constraintAnchor8 && constraintAnchor7.mTarget == null) {
                                int margin4 = finalValue2 - constraintAnchor8.getMargin();
                                constraintWidget3.setFinalVertical(margin4 - constraintWidget3.getHeight(), margin4);
                                verticalSolvingPass(i12, constraintWidget3, basicMeasure$Measurer);
                            } else if (z12 && !constraintWidget3.isInVerticalChain()) {
                                solveVerticalCenterConstraints(i12, basicMeasure$Measurer, constraintWidget3);
                            }
                        }
                    }
                } else if (constraintWidget3.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour2 && constraintWidget3.mMatchConstraintMaxHeight >= 0 && constraintWidget3.mMatchConstraintMinHeight >= 0 && (constraintWidget3.getVisibility() == 8 || (constraintWidget3.mMatchConstraintDefaultHeight == 0 && constraintWidget3.getDimensionRatio() == 0.0f))) {
                    if (!constraintWidget3.isInVerticalChain() && !constraintWidget3.isInVirtualLayout() && z12 && !constraintWidget3.isInVerticalChain()) {
                        solveVerticalMatchConstraint(i12, constraintWidget, basicMeasure$Measurer, constraintWidget3);
                    }
                }
            }
        }
        ConstraintAnchor anchor3 = constraintWidget.getAnchor(ConstraintAnchor$Type.BASELINE);
        if (anchor3.getDependents() != null && anchor3.hasFinalValue()) {
            int finalValue3 = anchor3.getFinalValue();
            for (ConstraintAnchor constraintAnchor9 : anchor3.getDependents()) {
                ConstraintWidget constraintWidget4 = constraintAnchor9.mOwner;
                int i13 = i9 + 1;
                boolean zCanMeasure3 = canMeasure(i13, constraintWidget4);
                if (constraintWidget4.isMeasureRequested() && zCanMeasure3) {
                    ConstraintWidgetContainer.measure(i13, constraintWidget4, basicMeasure$Measurer, new BasicMeasure$Measure(), BasicMeasure$Measure.SELF_DIMENSIONS);
                }
                if (constraintWidget4.getVerticalDimensionBehaviour() != ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT || zCanMeasure3) {
                    if (!constraintWidget4.isMeasureRequested() && constraintAnchor9 == constraintWidget4.mBaseline) {
                        constraintWidget4.setFinalBaseline(constraintAnchor9.getMargin() + finalValue3);
                        verticalSolvingPass(i13, constraintWidget4, basicMeasure$Measurer);
                    }
                }
            }
        }
        constraintWidget.markVerticalSolvingPassDone();
    }
}
