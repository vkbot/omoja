package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.ArrayRow;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Chain {
    private static final boolean DEBUG = false;
    public static final boolean USE_CHAIN_OPTIMIZATION = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:282:0x048d */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:312:0x0120 */
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
    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, int i9, int i10, ChainHead chainHead) {
        boolean z8;
        boolean z9;
        boolean z10;
        float f8;
        ?? r1;
        LinearSystem linearSystem2;
        ConstraintAnchor constraintAnchor;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        int i11;
        ConstraintAnchor constraintAnchor2;
        SolverVariable solverVariable3;
        int i12;
        ConstraintAnchor[] constraintAnchorArr;
        int i13;
        ConstraintAnchor constraintAnchor3;
        ConstraintAnchor constraintAnchor4;
        SolverVariable solverVariable4;
        ConstraintAnchor constraintAnchor5;
        Object obj;
        int size;
        ConstraintAnchor constraintAnchor6;
        int i14;
        int i15 = i9;
        ConstraintWidget constraintWidget = chainHead.mFirst;
        ConstraintWidget constraintWidget2 = chainHead.mLast;
        ConstraintWidget constraintWidget3 = chainHead.mFirstVisibleWidget;
        ConstraintWidget constraintWidget4 = chainHead.mLastVisibleWidget;
        ConstraintWidget constraintWidget5 = chainHead.mHead;
        float f9 = chainHead.mTotalWeight;
        boolean z11 = constraintWidgetContainer.mListDimensionBehaviors[i15] == ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        if (i15 == 0) {
            int i16 = constraintWidget5.mHorizontalChainStyle;
            z8 = i16 == 0;
            z9 = i16 == 1;
            if (i16 == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            int i17 = constraintWidget5.mVerticalChainStyle;
            z8 = i17 == 0;
            z9 = i17 == 1;
            if (i17 == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        ?? r14 = constraintWidget;
        boolean z12 = false;
        while (true) {
            f8 = f9;
            Object obj2 = null;
            if (z12) {
                break;
            }
            ConstraintAnchor constraintAnchor7 = r14.mListAnchors[i10];
            int i18 = z10 ? 1 : 4;
            int margin = constraintAnchor7.getMargin();
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = r14.mListDimensionBehaviors[i15];
            boolean z13 = z11;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z14 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 && r14.mResolvedMatchConstraintDefault[i15] == 0;
            boolean z15 = z10;
            ConstraintAnchor constraintAnchor8 = constraintAnchor7.mTarget;
            if (constraintAnchor8 != null && r14 != constraintWidget) {
                margin = constraintAnchor8.getMargin() + margin;
            }
            int i19 = margin;
            if (z15 && r14 != constraintWidget && r14 != constraintWidget3) {
                i18 = 8;
            }
            boolean z16 = z14;
            ConstraintAnchor constraintAnchor9 = constraintAnchor7.mTarget;
            boolean z17 = z12;
            if (constraintAnchor9 != null) {
                SolverVariable solverVariable5 = constraintAnchor7.mSolverVariable;
                if (r14 == constraintWidget3) {
                    linearSystem.addGreaterThan(solverVariable5, constraintAnchor9.mSolverVariable, i19, 6);
                } else {
                    linearSystem.addGreaterThan(solverVariable5, constraintAnchor9.mSolverVariable, i19, 8);
                }
                if (z16 && !z15) {
                    i18 = 5;
                }
                linearSystem.addEquality(constraintAnchor7.mSolverVariable, constraintAnchor7.mTarget.mSolverVariable, i19, (r14 == constraintWidget3 && z15 && r14.isInBarrier(i15)) ? 5 : i18);
            } else {
                z8 = z8;
            }
            if (z13) {
                if (r14.getVisibility() == 8 || r14.mListDimensionBehaviors[i15] != constraintWidget$DimensionBehaviour2) {
                    i14 = 0;
                } else {
                    ConstraintAnchor[] constraintAnchorArr2 = r14.mListAnchors;
                    i14 = 0;
                    linearSystem.addGreaterThan(constraintAnchorArr2[i10 + 1].mSolverVariable, constraintAnchorArr2[i10].mSolverVariable, 0, 5);
                }
                linearSystem.addGreaterThan(r14.mListAnchors[i10].mSolverVariable, constraintWidgetContainer.mListAnchors[i10].mSolverVariable, i14, 8);
            }
            ConstraintAnchor constraintAnchor10 = r14.mListAnchors[i10 + 1].mTarget;
            if (constraintAnchor10 != null) {
                ConstraintWidget constraintWidget6 = constraintAnchor10.mOwner;
                ConstraintAnchor constraintAnchor11 = constraintWidget6.mListAnchors[i10].mTarget;
                if (constraintAnchor11 != null && constraintAnchor11.mOwner == r14) {
                    obj2 = constraintWidget6;
                }
            }
            if (obj2 != null) {
                r14 = obj2;
                z12 = z17;
            } else {
                z12 = true;
            }
            f9 = f8;
            z11 = z13;
            z10 = z15;
            z8 = z8;
            r14 = r14;
        }
        boolean z18 = z11;
        boolean z19 = z10;
        boolean z20 = z8;
        if (constraintWidget4 != null) {
            int i20 = i10 + 1;
            if (constraintWidget2.mListAnchors[i20].mTarget != null) {
                ConstraintAnchor constraintAnchor12 = constraintWidget4.mListAnchors[i20];
                if (constraintWidget4.mListDimensionBehaviors[i15] == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget4.mResolvedMatchConstraintDefault[i15] == 0 && !z19) {
                    ConstraintAnchor constraintAnchor13 = constraintAnchor12.mTarget;
                    if (constraintAnchor13.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor13.mSolverVariable, -constraintAnchor12.getMargin(), 5);
                    } else if (z19) {
                        constraintAnchor6 = constraintAnchor12.mTarget;
                        if (constraintAnchor6.mOwner == constraintWidgetContainer) {
                            linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor6.mSolverVariable, -constraintAnchor12.getMargin(), 4);
                        }
                    }
                } else if (z19) {
                    constraintAnchor6 = constraintAnchor12.mTarget;
                    if (constraintAnchor6.mOwner == constraintWidgetContainer) {
                        linearSystem.addEquality(constraintAnchor12.mSolverVariable, constraintAnchor6.mSolverVariable, -constraintAnchor12.getMargin(), 4);
                    }
                }
                linearSystem.addLowerThan(constraintAnchor12.mSolverVariable, constraintWidget2.mListAnchors[i20].mTarget.mSolverVariable, -constraintAnchor12.getMargin(), 6);
            }
        }
        if (z18) {
            int i21 = i10 + 1;
            SolverVariable solverVariable6 = constraintWidgetContainer.mListAnchors[i21].mSolverVariable;
            ConstraintAnchor constraintAnchor14 = constraintWidget2.mListAnchors[i21];
            linearSystem.addGreaterThan(solverVariable6, constraintAnchor14.mSolverVariable, constraintAnchor14.getMargin(), 8);
        }
        ArrayList<ConstraintWidget> arrayList = chainHead.mWeightedMatchConstraintsWidgets;
        if (arrayList != null && (size = arrayList.size()) > 1) {
            float f10 = (!chainHead.mHasUndefinedWeights || chainHead.mHasComplexMatchWeights) ? f8 : chainHead.mWidgetsMatchCount;
            float f11 = 0.0f;
            float f12 = 0.0f;
            ConstraintWidget constraintWidget7 = null;
            int i22 = 0;
            while (i22 < size) {
                ConstraintWidget constraintWidget8 = arrayList.get(i22);
                float f13 = constraintWidget8.mWeight[i15];
                if (f13 < f11) {
                    if (chainHead.mHasComplexMatchWeights) {
                        ConstraintAnchor[] constraintAnchorArr3 = constraintWidget8.mListAnchors;
                        f11 = f11;
                        linearSystem.addEquality(constraintAnchorArr3[i10 + 1].mSolverVariable, constraintAnchorArr3[i10].mSolverVariable, 0, 4);
                    } else {
                        f13 = 1.0f;
                    }
                    arrayList = arrayList;
                    i22++;
                    f11 = f11;
                    arrayList = arrayList;
                }
                float f14 = f13;
                if (f14 == f11) {
                    ConstraintAnchor[] constraintAnchorArr4 = constraintWidget8.mListAnchors;
                    linearSystem.addEquality(constraintAnchorArr4[i10 + 1].mSolverVariable, constraintAnchorArr4[i10].mSolverVariable, 0, 8);
                    arrayList = arrayList;
                } else {
                    if (constraintWidget7 != null) {
                        ConstraintAnchor[] constraintAnchorArr5 = constraintWidget7.mListAnchors;
                        SolverVariable solverVariable7 = constraintAnchorArr5[i10].mSolverVariable;
                        int i23 = i10 + 1;
                        SolverVariable solverVariable8 = constraintAnchorArr5[i23].mSolverVariable;
                        ConstraintAnchor[] constraintAnchorArr6 = constraintWidget8.mListAnchors;
                        SolverVariable solverVariable9 = constraintAnchorArr6[i10].mSolverVariable;
                        SolverVariable solverVariable10 = constraintAnchorArr6[i23].mSolverVariable;
                        ArrayRow arrayRowCreateRow = linearSystem.createRow();
                        arrayRowCreateRow.createRowEqualMatchDimensions(f12, f10, f14, solverVariable7, solverVariable8, solverVariable9, solverVariable10);
                        linearSystem.addConstraint(arrayRowCreateRow);
                    }
                    constraintWidget7 = constraintWidget8;
                    f12 = f14;
                }
                i22++;
                f11 = f11;
                arrayList = arrayList;
            }
        }
        if (constraintWidget3 != null && (constraintWidget3 == constraintWidget4 || z19)) {
            ConstraintAnchor constraintAnchor15 = constraintWidget.mListAnchors[i10];
            int i24 = i10 + 1;
            ConstraintAnchor constraintAnchor16 = constraintWidget2.mListAnchors[i24];
            ConstraintAnchor constraintAnchor17 = constraintAnchor15.mTarget;
            SolverVariable solverVariable11 = constraintAnchor17 != null ? constraintAnchor17.mSolverVariable : null;
            ConstraintAnchor constraintAnchor18 = constraintAnchor16.mTarget;
            SolverVariable solverVariable12 = constraintAnchor18 != null ? constraintAnchor18.mSolverVariable : null;
            ConstraintAnchor constraintAnchor19 = constraintWidget3.mListAnchors[i10];
            if (constraintWidget4 != null) {
                constraintAnchor16 = constraintWidget4.mListAnchors[i24];
            }
            if (solverVariable11 != null && solverVariable12 != null) {
                linearSystem.addCentering(constraintAnchor19.mSolverVariable, solverVariable11, constraintAnchor19.getMargin(), i15 == 0 ? constraintWidget5.mHorizontalBiasPercent : constraintWidget5.mVerticalBiasPercent, solverVariable12, constraintAnchor16.mSolverVariable, constraintAnchor16.getMargin(), 7);
            }
        } else {
            if (!z20 || constraintWidget3 == null) {
                if (z9 && constraintWidget3 != null) {
                    int i25 = chainHead.mWidgetsMatchCount;
                    boolean z21 = i25 > 0 && chainHead.mWidgetsCount == i25;
                    ConstraintWidget constraintWidget9 = constraintWidget3;
                    ConstraintWidget constraintWidget10 = constraintWidget9;
                    while (constraintWidget9 != null) {
                        ConstraintWidget constraintWidget11 = constraintWidget9.mNextChainWidget[i9];
                        while (constraintWidget11 != null && constraintWidget11.getVisibility() == 8) {
                            constraintWidget11 = constraintWidget11.mNextChainWidget[i9];
                        }
                        if (constraintWidget9 != constraintWidget3 && constraintWidget9 != constraintWidget4 && constraintWidget11 != null) {
                            if (constraintWidget11 == constraintWidget4) {
                                constraintWidget11 = null;
                            }
                            ConstraintAnchor constraintAnchor20 = constraintWidget9.mListAnchors[i10];
                            SolverVariable solverVariable13 = constraintAnchor20.mSolverVariable;
                            ConstraintAnchor constraintAnchor21 = constraintAnchor20.mTarget;
                            if (constraintAnchor21 != null) {
                                SolverVariable solverVariable14 = constraintAnchor21.mSolverVariable;
                            }
                            int i26 = i10 + 1;
                            SolverVariable solverVariable15 = constraintWidget10.mListAnchors[i26].mSolverVariable;
                            int margin2 = constraintAnchor20.getMargin();
                            int margin3 = constraintWidget9.mListAnchors[i26].getMargin();
                            if (constraintWidget11 != null) {
                                constraintAnchor = constraintWidget11.mListAnchors[i10];
                                solverVariable = constraintAnchor.mSolverVariable;
                                ConstraintAnchor constraintAnchor22 = constraintAnchor.mTarget;
                                solverVariable2 = constraintAnchor22 != null ? constraintAnchor22.mSolverVariable : null;
                            } else {
                                constraintAnchor = constraintWidget4.mListAnchors[i10];
                                solverVariable = constraintAnchor != null ? constraintAnchor.mSolverVariable : null;
                                solverVariable2 = constraintWidget9.mListAnchors[i26].mSolverVariable;
                            }
                            if (constraintAnchor != null) {
                                margin3 += constraintAnchor.getMargin();
                            }
                            int margin4 = constraintWidget10.mListAnchors[i26].getMargin() + margin2;
                            SolverVariable solverVariable16 = solverVariable2;
                            int i27 = z21 ? 8 : 4;
                            if (solverVariable13 != null && solverVariable15 != null && solverVariable != null && solverVariable16 != null) {
                                linearSystem.addCentering(solverVariable13, solverVariable15, margin4, 0.5f, solverVariable, solverVariable16, margin3, i27);
                            }
                            constraintWidget11 = constraintWidget11;
                        }
                        if (constraintWidget9.getVisibility() != 8) {
                            constraintWidget10 = constraintWidget9;
                        }
                        constraintWidget9 = constraintWidget11;
                    }
                    ConstraintAnchor constraintAnchor23 = constraintWidget3.mListAnchors[i10];
                    ConstraintAnchor constraintAnchor24 = constraintWidget.mListAnchors[i10].mTarget;
                    int i28 = i10 + 1;
                    ConstraintAnchor constraintAnchor25 = constraintWidget4.mListAnchors[i28];
                    ConstraintAnchor constraintAnchor26 = constraintWidget2.mListAnchors[i28].mTarget;
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
                if ((z20 && !z9) || constraintWidget3 == null || constraintWidget3 == constraintWidget4) {
                    return;
                }
                constraintAnchorArr = constraintWidget3.mListAnchors;
                ConstraintAnchor constraintAnchor27 = constraintAnchorArr[i10];
                if (constraintWidget4 == null) {
                    constraintWidget4 = constraintWidget3;
                }
                i13 = i10 + 1;
                constraintAnchor3 = constraintWidget4.mListAnchors[i13];
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
                    ConstraintAnchor constraintAnchor28 = constraintWidget2.mListAnchors[i13].mTarget;
                    obj = constraintAnchor28 != null ? constraintAnchor28.mSolverVariable : null;
                }
                if (constraintWidget3 == constraintWidget4) {
                    constraintAnchor3 = constraintAnchorArr[i13];
                }
                if (solverVariable4 != null || obj == null) {
                }
                r1.addCentering(constraintAnchor27.mSolverVariable, solverVariable4, constraintAnchor27.getMargin(), 0.5f, obj, constraintAnchor3.mSolverVariable, constraintWidget4.mListAnchors[i13].getMargin(), 5);
                return;
            }
            int i29 = chainHead.mWidgetsMatchCount;
            boolean z22 = i29 > 0 && chainHead.mWidgetsCount == i29;
            ConstraintWidget constraintWidget12 = constraintWidget3;
            ConstraintWidget constraintWidget13 = constraintWidget12;
            while (constraintWidget12 != null) {
                ConstraintWidget constraintWidget14 = constraintWidget12.mNextChainWidget[i15];
                while (true) {
                    if (constraintWidget14 == null) {
                        i11 = 8;
                        break;
                    }
                    i11 = 8;
                    if (constraintWidget14.getVisibility() != 8) {
                        break;
                    } else {
                        constraintWidget14 = constraintWidget14.mNextChainWidget[i15];
                    }
                }
                if (constraintWidget14 != null || constraintWidget12 == constraintWidget4) {
                    ConstraintAnchor constraintAnchor29 = constraintWidget12.mListAnchors[i10];
                    SolverVariable solverVariable17 = constraintAnchor29.mSolverVariable;
                    ConstraintAnchor constraintAnchor30 = constraintAnchor29.mTarget;
                    SolverVariable solverVariable18 = constraintAnchor30 != null ? constraintAnchor30.mSolverVariable : null;
                    if (constraintWidget13 != constraintWidget12) {
                        solverVariable18 = constraintWidget13.mListAnchors[i10 + 1].mSolverVariable;
                    } else if (constraintWidget12 == constraintWidget3) {
                        ConstraintAnchor constraintAnchor31 = constraintWidget.mListAnchors[i10].mTarget;
                        solverVariable18 = constraintAnchor31 != null ? constraintAnchor31.mSolverVariable : null;
                    }
                    int margin5 = constraintAnchor29.getMargin();
                    int i30 = i10 + 1;
                    int margin6 = constraintWidget12.mListAnchors[i30].getMargin();
                    if (constraintWidget14 != null) {
                        constraintAnchor2 = constraintWidget14.mListAnchors[i10];
                        solverVariable3 = constraintAnchor2.mSolverVariable;
                    } else {
                        constraintAnchor2 = constraintWidget2.mListAnchors[i30].mTarget;
                        solverVariable3 = constraintAnchor2 != null ? constraintAnchor2.mSolverVariable : null;
                    }
                    SolverVariable solverVariable19 = constraintWidget12.mListAnchors[i30].mSolverVariable;
                    if (constraintAnchor2 != null) {
                        margin6 += constraintAnchor2.getMargin();
                    }
                    int margin7 = constraintWidget13.mListAnchors[i30].getMargin() + margin5;
                    if (solverVariable17 == null || solverVariable18 == null || solverVariable3 == null || solverVariable19 == null) {
                        i12 = 8;
                    } else {
                        if (constraintWidget12 == constraintWidget3) {
                            margin7 = constraintWidget3.mListAnchors[i10].getMargin();
                        }
                        if (constraintWidget12 == constraintWidget4) {
                            margin6 = constraintWidget4.mListAnchors[i30].getMargin();
                        }
                        constraintWidget14 = constraintWidget14;
                        i12 = 8;
                        linearSystem.addCentering(solverVariable17, solverVariable18, margin7, 0.5f, solverVariable3, solverVariable19, margin6, z22 ? 8 : 5);
                    }
                    if (constraintWidget12.getVisibility() != i12) {
                        constraintWidget13 = constraintWidget12;
                    }
                    i15 = i9;
                    constraintWidget12 = constraintWidget14;
                } else {
                    i12 = i11;
                }
                if (constraintWidget12.getVisibility() != i12) {
                    constraintWidget13 = constraintWidget12;
                }
                i15 = i9;
                constraintWidget12 = constraintWidget14;
            }
        }
        r1 = linearSystem;
        if (z20) {
        }
        constraintAnchorArr = constraintWidget3.mListAnchors;
        ConstraintAnchor constraintAnchor210 = constraintAnchorArr[i10];
        if (constraintWidget4 == null) {
            constraintWidget4 = constraintWidget3;
        }
        i13 = i10 + 1;
        constraintAnchor3 = constraintWidget4.mListAnchors[i13];
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
            ConstraintAnchor constraintAnchor211 = constraintWidget2.mListAnchors[i13].mTarget;
            obj = constraintAnchor211 != null ? constraintAnchor211.mSolverVariable : null;
        }
        if (constraintWidget3 == constraintWidget4) {
            constraintAnchor3 = constraintAnchorArr[i13];
        }
        if (solverVariable4 != null) {
        }
    }

    public static void applyChainConstraints(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ArrayList<ConstraintWidget> arrayList, int i9) {
        int i10;
        ChainHead[] chainHeadArr;
        int i11;
        if (i9 == 0) {
            i10 = constraintWidgetContainer.mHorizontalChainsSize;
            chainHeadArr = constraintWidgetContainer.mHorizontalChainsArray;
            i11 = 0;
        } else {
            i10 = constraintWidgetContainer.mVerticalChainsSize;
            chainHeadArr = constraintWidgetContainer.mVerticalChainsArray;
            i11 = 2;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            ChainHead chainHead = chainHeadArr[i12];
            chainHead.define();
            if (arrayList == null || arrayList.contains(chainHead.mFirst)) {
                applyChainConstraints(constraintWidgetContainer, linearSystem, i9, i11, chainHead);
            }
        }
    }
}
