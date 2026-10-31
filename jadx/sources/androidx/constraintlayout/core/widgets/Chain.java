package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    /* JADX WARN: Code duplicated, block: B:101:0x0167  */
    /* JADX WARN: Code duplicated, block: B:103:0x016d  */
    /* JADX WARN: Code duplicated, block: B:105:0x018e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0033 A[PHI: r15 r16
  0x0033: PHI (r15v26 boolean) = (r15v1 boolean), (r15v28 boolean) binds: [B:26:0x0047, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
  0x0033: PHI (r16v5 boolean) = (r16v1 boolean), (r16v7 boolean) binds: [B:26:0x0047, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:17:0x0035 A[PHI: r15 r16
  0x0035: PHI (r15v3 boolean) = (r15v1 boolean), (r15v28 boolean) binds: [B:26:0x0047, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]
  0x0035: PHI (r16v3 boolean) = (r16v1 boolean), (r16v7 boolean) binds: [B:26:0x0047, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:220:0x0384  */
    /* JADX WARN: Code duplicated, block: B:291:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:294:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:295:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:298:0x04c1  */
    /* JADX WARN: Code duplicated, block: B:299:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:301:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:303:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:306:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:319:0x0385 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x0164  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [androidx.constraintlayout.core.LinearSystem] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.constraintlayout.core.LinearSystem] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2, types: [androidx.constraintlayout.core.widgets.ConstraintWidget] */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r5v17, types: [androidx.constraintlayout.core.SolverVariable] */
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i10, int i11, ChainHead chainHead) {
        boolean z9;
        boolean z10;
        boolean z11;
        float f8;
        ?? r1;
        LinearSystem linearSystem2;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i12;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        int i13;
        ConstraintAnchor[] constraintAnchorArr;
        int i14;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable4;
        ConstraintAnchor constraintAnchor5;
        Object obj;
        int size;
        ConstraintAnchor constraintAnchor6;
        int i15;
        int i16 = i10;
        ConstraintWidget constraintWidget = chainHead.mFirst;
        ConstraintWidget constraintWidget2 = chainHead.mLast;
        ConstraintWidget constraintWidget3 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget4 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mHead;
        float f10 = chainHead.mTotalWeight;
        boolean z12 = constraintWidgetContainer.mListDimensionBehaviors[i16] == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (i16 == 0) {
            int i17 = constraintWidget5.mHorizontalChainStyle;
            z9 = i17 == 0;
            z10 = i17 == 1;
            if (i17 == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            int i18 = constraintWidget5.mVerticalChainStyle;
            z9 = i18 == 0;
            z10 = i18 == 1;
            if (i18 == 2) {
                z11 = true;
            } else {
                z11 = false;
            }
        }
        ?? r14 = constraintWidget;
        boolean z13 = false;
        while (true) {
            f8 = f10;
            Object obj2 = null;
            if (z13) {
                break;
            }
            ConstraintAnchor constraintAnchor7 = r14.mListAnchors[i11];
            int i19 = z11 ? 1 : 4;
            int margin = constraintAnchor7.getMargin();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = r14.mListDimensionBehaviors[i16];
            boolean z14 = z12;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z15 = dimensionBehaviour == dimensionBehaviour2 && r14.mResolvedMatchConstraintDefault[i16] == 0;
            boolean z16 = z11;
            ConstraintAnchor constraintAnchor8 = constraintAnchor7.mTarget;
            if (constraintAnchor8 != null && r14 != constraintWidget) {
                margin = constraintAnchor8.getMargin() + margin;
            }
            int i20 = margin;
            if (z16 && r14 != constraintWidget && r14 != constraintWidget3) {
                i19 = 8;
            }
            boolean z17 = z15;
            ConstraintAnchor constraintAnchor9 = constraintAnchor7.mTarget;
            boolean z18 = z13;
            if (constraintAnchor9 != null) {
                SolverVariable solverVariable5 = constraintAnchor7.mSolverVariable;
                if (r14 == constraintWidget3) {
                    linearSystem.addGreaterThan(solverVariable5, constraintAnchor9.mSolverVariable, i20, 6);
                } else {
                    linearSystem.addGreaterThan(solverVariable5, constraintAnchor9.mSolverVariable, i20, 8);
                }
                if (z17 && !z16) {
                    i19 = 5;
                }
                linearSystem.addEquality(constraintAnchor7.mSolverVariable, constraintAnchor7.mTarget.mSolverVariable, i20, (r14 == constraintWidget3 && z16 && r14.isInBarrier(i16)) ? 5 : i19);
            } else {
                z9 = z9;
            }
            if (z14) {
                if (r14.getVisibility() == 8 || r14.mListDimensionBehaviors[i16] != dimensionBehaviour2) {
                    i15 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr2 = r14.mListAnchors;
                    i15 = 0;
                    linearSystem.addGreaterThan(constraintAnchorArr2[i11 + 1].mSolverVariable, constraintAnchorArr2[i11].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r14.mListAnchors[i11].mSolverVariable, constraintWidgetContainer.mListAnchors[i11].mSolverVariable, i15, 8);
            }
            ConstraintAnchor constraintAnchor10 = r14.mListAnchors[i11 + 1].mTarget;
            if (constraintAnchor10 != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor10.mOwner;
                ConstraintAnchor constraintAnchor11 = constraintWidget6.mListAnchors[i11].mTarget;
                if (constraintAnchor11 != null && constraintAnchor11.mOwner == r14) {
                    obj2 = constraintWidget6;
                }
            }
            if (obj2 != null) {
                r14 = obj2;
                z13 = z18;
            } else {
                z13 = true;
            }
            f10 = f8;
            z12 = z14;
            z11 = z16;
            z9 = z9;
            r14 = r14;
        }
        boolean z19 = z12;
        boolean z20 = z11;
        boolean z21 = z9;
        if (constraintWidget4 != null) {
            int i21 = i11 + 1;
            if (constraintWidget2.mListAnchors[i21].mTarget != null) {
                ConstraintAnchor constraintAnchor12 = constraintWidget4.mListAnchors[i21];
                if (constraintWidget4.mListDimensionBehaviors[i16] == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.mResolvedMatchConstraintDefault[i16] == 0 && !z20) {
                    ConstraintAnchor constraintAnchor13 = constraintAnchor12.mTarget;
                    if (constraintAnchor13.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor13.mSolverVariable, -constraintAnchor12.getMargin(), 5);
                    } else if (z20) {
                        constraintAnchor6 = constraintAnchor12.mTarget;
                        if (constraintAnchor6.mOwner == constraintWidgetContainer) {
                            linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor6.mSolverVariable, -constraintAnchor12.getMargin(), 4);
                        }
                    }
                } else if (z20) {
                    constraintAnchor6 = constraintAnchor12.mTarget;
                    if (constraintAnchor6.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor6.mSolverVariable, -constraintAnchor12.getMargin(), 4);
                    }
                }
                linearSystem.addLowerThan(constraintAnchor12.mSolverVariable, constraintWidget2.mListAnchors[i21].mTarget.mSolverVariable, -constraintAnchor12.getMargin(), 6);
            }
        }
        if (z19) {
            int i22 = i11 + 1;
            SolverVariable solverVariable6 = constraintWidgetContainer.mListAnchors[i22].mSolverVariable;
            ConstraintAnchor constraintAnchor14 = constraintWidget2.mListAnchors[i22];
            linearSystem.addGreaterThan(solverVariable6, constraintAnchor14.mSolverVariable, constraintAnchor14.getMargin(), 8);
        }
        ArrayList<ConstraintWidget> arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f11 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f8 : chainHead.mWidgetsMatchCount;
            float f12 = 0.0f;
            float f13 = 0.0f;
            ConstraintWidget constraintWidget7 = null;
            int i23 = 0;
            while (i23 < size) {
                ConstraintWidget constraintWidget8 = arrayList.get(i23);
                float f14 = constraintWidget8.mWeight[i16];
                if (f14 < f12) {
                    if (chainHead.mHasComplexMatchWeights) {
                        ConstraintAnchor[] constraintAnchorArr3 = constraintWidget8.mListAnchors;
                        f12 = f12;
                        linearSystem.addEquality(constraintAnchorArr3[i11 + 1].mSolverVariable, constraintAnchorArr3[i11].mSolverVariable, 0, 4);
                    } else {
                        f14 = 1.0f;
                    }
                    arrayList = arrayList;
                    i23++;
                    f12 = f12;
                    arrayList = arrayList;
                }
                float f15 = f14;
                if (f15 == f12) {
                    ConstraintAnchor[] constraintAnchorArr4 = constraintWidget8.mListAnchors;
                    linearSystem.addEquality(constraintAnchorArr4[i11 + 1].mSolverVariable, constraintAnchorArr4[i11].mSolverVariable, 0, 8);
                    arrayList = arrayList;
                } else {
                    if (constraintWidget7 != null) {
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget7.mListAnchors;
                        SolverVariable solverVariable7 = constraintAnchorArr5[i11].mSolverVariable;
                        int i24 = i11 + 1;
                        SolverVariable solverVariable8 = constraintAnchorArr5[i24].mSolverVariable;
                        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget8.mListAnchors;
                        SolverVariable solverVariable9 = constraintAnchorArr6[i11].mSolverVariable;
                        SolverVariable solverVariable10 = constraintAnchorArr6[i24].mSolverVariable;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f13, f11, f15, solverVariable7, solverVariable8, solverVariable9, solverVariable10);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                    constraintWidget7 = constraintWidget8;
                    f13 = f15;
                }
                i23++;
                f12 = f12;
                arrayList = arrayList;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z20)) {
            ConstraintAnchor constraintAnchor15 = constraintWidget.mListAnchors[i11];
            int i25 = i11 + 1;
            ConstraintAnchor constraintAnchor16 = constraintWidget2.mListAnchors[i25];
            ConstraintAnchor constraintAnchor17 = constraintAnchor15.mTarget;
            SolverVariable solverVariable11 = constraintAnchor17 != null ? constraintAnchor17.mSolverVariable : null;
            ConstraintAnchor constraintAnchor18 = constraintAnchor16.mTarget;
            SolverVariable solverVariable12 = constraintAnchor18 != null ? constraintAnchor18.mSolverVariable : null;
            ConstraintAnchor constraintAnchor19 = constraintWidget3.mListAnchors[i11];
            if (constraintWidget4 != null) {
                constraintAnchor16 = constraintWidget4.mListAnchors[i25];
            }
            if (solverVariable11 != null && solverVariable12 != null) {
                linearSystem.addCentering(constraintAnchor19.mSolverVariable, solverVariable11, constraintAnchor19.getMargin(), i16 == 0 ? constraintWidget5.mHorizontalBiasPercent : constraintWidget5.mVerticalBiasPercent, solverVariable12, constraintAnchor16.mSolverVariable, constraintAnchor16.getMargin(), 7);
            }
        } else {
            if (!z21 || constraintWidget3 == null) {
                if (z10 && constraintWidget3 != null) {
                    int i26 = chainHead.mWidgetsMatchCount;
                    boolean z22 = i26 > 0 && chainHead.mWidgetsCount == i26;
                    ConstraintWidget constraintWidget9 = constraintWidget3;
                    ConstraintWidget constraintWidget10 = constraintWidget9;
                    while (constraintWidget9 != null) {
                        ConstraintWidget constraintWidget11 = constraintWidget9.mNextChainWidget[i10];
                        while (constraintWidget11 != null && constraintWidget11.getVisibility() == 8) {
                            constraintWidget11 = constraintWidget11.mNextChainWidget[i10];
                        }
                        if (constraintWidget9 != constraintWidget3 && constraintWidget9 != constraintWidget4 && constraintWidget11 != null) {
                            if (constraintWidget11 == constraintWidget4) {
                                constraintWidget11 = null;
                            }
                            ConstraintAnchor constraintAnchor20 = constraintWidget9.mListAnchors[i11];
                            SolverVariable solverVariable13 = constraintAnchor20.mSolverVariable;
                            ConstraintAnchor constraintAnchor21 = constraintAnchor20.mTarget;
                            if (constraintAnchor21 != null) {
                                SolverVariable solverVariable14 = constraintAnchor21.mSolverVariable;
                            }
                            int i27 = i11 + 1;
                            SolverVariable solverVariable15 = constraintWidget10.mListAnchors[i27].mSolverVariable;
                            int margin2 = constraintAnchor20.getMargin();
                            int margin3 = constraintWidget9.mListAnchors[i27].getMargin();
                            if (constraintWidget11 != null) {
                                constraintAnchor = constraintWidget11.mListAnchors[i11];
                                solverVariable = constraintAnchor.mSolverVariable;
                                ConstraintAnchor constraintAnchor22 = constraintAnchor.mTarget;
                                solverVariable2 = constraintAnchor22 != null ? constraintAnchor22.mSolverVariable : null;
                            } else {
                                constraintAnchor = constraintWidget4.mListAnchors[i11];
                                solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                                solverVariable2 = constraintWidget9.mListAnchors[i27].mSolverVariable;
                            }
                            if (constraintAnchor != null) {
                                margin3 += constraintAnchor.getMargin();
                            }
                            int margin4 = constraintWidget10.mListAnchors[i27].getMargin() + margin2;
                            SolverVariable solverVariable16 = solverVariable2;
                            int i28 = z22 ? 8 : 4;
                            if (solverVariable13 != null && solverVariable15 != null && solverVariable != null && solverVariable16 != null) {
                                linearSystem.addCentering(solverVariable13, solverVariable15, margin4, 0.5f, solverVariable, solverVariable16, margin3, i28);
                            }
                            constraintWidget11 = constraintWidget11;
                        }
                        if (constraintWidget9.getVisibility() != 8) {
                            constraintWidget10 = constraintWidget9;
                        }
                        constraintWidget9 = constraintWidget11;
                    }
                    ConstraintAnchor constraintAnchor23 = constraintWidget3.mListAnchors[i11];
                    ConstraintAnchor constraintAnchor24 = constraintWidget.mListAnchors[i11].mTarget;
                    int i29 = i11 + 1;
                    ConstraintAnchor constraintAnchor25 = constraintWidget4.mListAnchors[i29];
                    ConstraintAnchor constraintAnchor26 = constraintWidget2.mListAnchors[i29].mTarget;
                    if (constraintAnchor24 == null) {
                        r1 = linearSystem;
                    } else {
                        if (constraintWidget3 != constraintWidget4) {
                            linearSystem.addEquality(constraintAnchor23.mSolverVariable, constraintAnchor24.mSolverVariable, constraintAnchor23.getMargin(), 5);
                        } else if (constraintAnchor26 != null) {
                            linearSystem2 = linearSystem;
                            linearSystem2.addCentering(constraintAnchor23.mSolverVariable, constraintAnchor24.mSolverVariable, constraintAnchor23.getMargin(), 0.5f, constraintAnchor25.mSolverVariable, constraintAnchor26.mSolverVariable, constraintAnchor25.getMargin(), 5);
                        }
                        r1 = linearSystem;
                    }
                    if (constraintAnchor26 != null && constraintWidget3 != constraintWidget4) {
                        r1.addEquality(constraintAnchor25.mSolverVariable, constraintAnchor26.mSolverVariable, -constraintAnchor25.getMargin(), 5);
                    }
                }
                if ((z21 && !z10) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
                    return;
                }
                constraintAnchorArr = constraintWidget3.mListAnchors;
                ConstraintAnchor constraintAnchor27 = constraintAnchorArr[i11];
                if (constraintWidget4 == null) {
                    constraintWidget4 = constraintWidget3;
                }
                i14 = i11 + 1;
                constraintAnchor3 = constraintWidget4.mListAnchors[i14];
                constraintAnchor4 = constraintAnchor27.mTarget;
                if (constraintAnchor4 != null) {
                    solverVariable4 = constraintAnchor4.mSolverVariable;
                } else {
                    solverVariable4 = null;
                }
                constraintAnchor5 = constraintAnchor3.mTarget;
                if (constraintAnchor5 != null) {
                    obj = constraintAnchor5.mSolverVariable;
                } else {
                    obj = null;
                }
                if (constraintWidget2 != constraintWidget4) {
                    ConstraintAnchor constraintAnchor28 = constraintWidget2.mListAnchors[i14].mTarget;
                    obj = constraintAnchor28 != null ? constraintAnchor28.mSolverVariable : null;
                }
                if (constraintWidget3 == constraintWidget4) {
                    constraintAnchor3 = constraintAnchorArr[i14];
                }
                if (solverVariable4 != null || obj == null) {
                }
                r1.addCentering(constraintAnchor27.mSolverVariable, solverVariable4, constraintAnchor27.getMargin(), 0.5f, obj, constraintAnchor3.mSolverVariable, constraintWidget4.mListAnchors[i14].getMargin(), 5);
                return;
            }
            int i30 = chainHead.mWidgetsMatchCount;
            boolean z23 = i30 > 0 && chainHead.mWidgetsCount == i30;
            ConstraintWidget constraintWidget12 = constraintWidget3;
            ConstraintWidget constraintWidget13 = constraintWidget12;
            while (constraintWidget12 != null) {
                ConstraintWidget constraintWidget14 = constraintWidget12.mNextChainWidget[i16];
                while (true) {
                    if (constraintWidget14 == null) {
                        i12 = 8;
                        break;
                    }
                    i12 = 8;
                    if (constraintWidget14.getVisibility() != 8) {
                        break;
                    } else {
                        constraintWidget14 = constraintWidget14.mNextChainWidget[i16];
                    }
                }
                if (constraintWidget14 != null || constraintWidget12 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor29 = constraintWidget12.mListAnchors[i11];
                    SolverVariable solverVariable17 = constraintAnchor29.mSolverVariable;
                    ConstraintAnchor constraintAnchor30 = constraintAnchor29.mTarget;
                    SolverVariable solverVariable18 = constraintAnchor30 != null ? constraintAnchor30.mSolverVariable : null;
                    if (constraintWidget13 != constraintWidget12) {
                        solverVariable18 = constraintWidget13.mListAnchors[i11 + 1].mSolverVariable;
                    } else if (constraintWidget12 == constraintWidget3) {
                        ConstraintAnchor constraintAnchor31 = constraintWidget.mListAnchors[i11].mTarget;
                        solverVariable18 = constraintAnchor31 != null ? constraintAnchor31.mSolverVariable : null;
                    }
                    int margin5 = constraintAnchor29.getMargin();
                    int i31 = i11 + 1;
                    int margin6 = constraintWidget12.mListAnchors[i31].getMargin();
                    if (constraintWidget14 != null) {
                        constraintAnchor2 = constraintWidget14.mListAnchors[i11];
                        solverVariable3 = constraintAnchor2.mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget2.mListAnchors[i31].mTarget;
                        solverVariable3 = constraintAnchor2 != null ? constraintAnchor2.mSolverVariable : null;
                    }
                    SolverVariable solverVariable19 = constraintWidget12.mListAnchors[i31].mSolverVariable;
                    if (constraintAnchor2 != null) {
                        margin6 += constraintAnchor2.getMargin();
                    }
                    int margin7 = constraintWidget13.mListAnchors[i31].getMargin() + margin5;
                    if (solverVariable17 == null || solverVariable18 == null || solverVariable3 == null || solverVariable19 == null) {
                        i13 = 8;
                    } else {
                        if (constraintWidget12 == constraintWidget3) {
                            margin7 = constraintWidget3.mListAnchors[i11].getMargin();
                        }
                        if (constraintWidget12 == constraintWidget4) {
                            margin6 = constraintWidget4.mListAnchors[i31].getMargin();
                        }
                        constraintWidget14 = constraintWidget14;
                        i13 = 8;
                        linearSystem.addCentering(solverVariable17, solverVariable18, margin7, 0.5f, solverVariable3, solverVariable19, margin6, z23 ? 8 : 5);
                    }
                    if (constraintWidget12.getVisibility() != i13) {
                        constraintWidget13 = constraintWidget12;
                    }
                    i16 = i10;
                    constraintWidget12 = constraintWidget14;
                } else {
                    i13 = i12;
                }
                if (constraintWidget12.getVisibility() != i13) {
                    constraintWidget13 = constraintWidget12;
                }
                i16 = i10;
                constraintWidget12 = constraintWidget14;
            }
        }
        r1 = linearSystem;
        if (z21) {
        }
        constraintAnchorArr = constraintWidget3.mListAnchors;
        ConstraintAnchor constraintAnchor210 = constraintAnchorArr[i11];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        i14 = i11 + 1;
        constraintAnchor3 = constraintWidget4.mListAnchors[i14];
        constraintAnchor4 = constraintAnchor210.mTarget;
        if (constraintAnchor4 != null) {
            solverVariable4 = constraintAnchor4.mSolverVariable;
        } else {
            solverVariable4 = null;
        }
        constraintAnchor5 = constraintAnchor3.mTarget;
        if (constraintAnchor5 != null) {
            obj = constraintAnchor5.mSolverVariable;
        } else {
            obj = null;
        }
        if (constraintWidget2 != constraintWidget4) {
            ConstraintAnchor constraintAnchor211 = constraintWidget2.mListAnchors[i14].mTarget;
            obj = constraintAnchor211 != null ? constraintAnchor211.mSolverVariable : null;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor3 = constraintAnchorArr[i14];
        }
        if (solverVariable4 != null) {
        }
    }

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i10) {
        int i11;
        ChainHead[] chainHeadArr;
        int i12;
        if (i10 == 0) {
            i11 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i12 = 0;
        } else {
            i11 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i12 = 2;
        }
        for (int i13 = 0; i13 < i11; i13++) {
            ChainHead chainHead = chainHeadArr[i13];
            chainHead.define();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i10, i12, chainHead);
            }
        }
    }
}
