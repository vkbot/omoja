package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Flow extends VirtualLayout {
    public static final int HORIZONTAL_ALIGN_CENTER = 2;
    public static final int HORIZONTAL_ALIGN_END = 1;
    public static final int HORIZONTAL_ALIGN_START = 0;
    public static final int VERTICAL_ALIGN_BASELINE = 3;
    public static final int VERTICAL_ALIGN_BOTTOM = 1;
    public static final int VERTICAL_ALIGN_CENTER = 2;
    public static final int VERTICAL_ALIGN_TOP = 0;
    public static final int WRAP_ALIGNED = 2;
    public static final int WRAP_CHAIN = 1;
    public static final int WRAP_CHAIN_NEW = 3;
    public static final int WRAP_NONE = 0;
    private ConstraintWidget[] mDisplayedWidgets;
    private int mHorizontalStyle = -1;
    private int mVerticalStyle = -1;
    private int mFirstHorizontalStyle = -1;
    private int mFirstVerticalStyle = -1;
    private int mLastHorizontalStyle = -1;
    private int mLastVerticalStyle = -1;
    private float mHorizontalBias = 0.5f;
    private float mVerticalBias = 0.5f;
    private float mFirstHorizontalBias = 0.5f;
    private float mFirstVerticalBias = 0.5f;
    private float mLastHorizontalBias = 0.5f;
    private float mLastVerticalBias = 0.5f;
    private int mHorizontalGap = 0;
    private int mVerticalGap = 0;
    private int mHorizontalAlign = 2;
    private int mVerticalAlign = 2;
    private int mWrapMode = 0;
    private int mMaxElementsWrap = -1;
    private int mOrientation = 0;
    private ArrayList<Flow$WidgetsList> mChainList = new ArrayList<>();
    private ConstraintWidget[] mAlignedBiggestElementsInRows = null;
    private ConstraintWidget[] mAlignedBiggestElementsInCols = null;
    private int[] mAlignedDimensions = null;
    private int mDisplayedWidgetsCount = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$000(Flow flow) {
        return flow.mHorizontalGap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$100(Flow flow) {
        return flow.mVerticalGap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1000(Flow flow) {
        return flow.mFirstHorizontalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$1100(Flow flow) {
        return flow.mFirstHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1200(Flow flow) {
        return flow.mLastHorizontalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$1300(Flow flow) {
        return flow.mLastHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$1400(Flow flow) {
        return flow.mVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1500(Flow flow) {
        return flow.mFirstVerticalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$1600(Flow flow) {
        return flow.mFirstVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1700(Flow flow) {
        return flow.mLastVerticalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$1800(Flow flow) {
        return flow.mLastVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$1900(Flow flow) {
        return flow.mHorizontalAlign;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$200(Flow flow, ConstraintWidget constraintWidget, int i9) {
        return flow.getWidgetWidth(constraintWidget, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$300(Flow flow, ConstraintWidget constraintWidget, int i9) {
        return flow.getWidgetHeight(constraintWidget, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$400(Flow flow) {
        return flow.mDisplayedWidgetsCount;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ConstraintWidget[] access$500(Flow flow) {
        return flow.mDisplayedWidgets;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$600(Flow flow) {
        return flow.mVerticalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$700(Flow flow) {
        return flow.mVerticalAlign;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ int access$800(Flow flow) {
        return flow.mHorizontalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ float access$900(Flow flow) {
        return flow.mHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createAlignedConstraints(boolean z8) {
        ConstraintWidget constraintWidget;
        float f8;
        int i9;
        if (this.mAlignedDimensions == null || this.mAlignedBiggestElementsInCols == null || this.mAlignedBiggestElementsInRows == null) {
            return;
        }
        for (int i10 = 0; i10 < this.mDisplayedWidgetsCount; i10++) {
            this.mDisplayedWidgets[i10].resetAnchors();
        }
        int[] iArr = this.mAlignedDimensions;
        int i11 = iArr[0];
        int i12 = iArr[1];
        float f9 = this.mHorizontalBias;
        ConstraintWidget constraintWidget2 = null;
        int i13 = 0;
        while (i13 < i11) {
            if (z8) {
                i9 = (i11 - i13) - 1;
                f8 = 1.0f - this.mHorizontalBias;
            } else {
                f8 = f9;
                i9 = i13;
            }
            ConstraintWidget constraintWidget3 = this.mAlignedBiggestElementsInCols[i9];
            if (constraintWidget3 != null && constraintWidget3.getVisibility() != 8) {
                if (i13 == 0) {
                    constraintWidget3.connect(constraintWidget3.mLeft, this.mLeft, getPaddingLeft());
                    constraintWidget3.setHorizontalChainStyle(this.mHorizontalStyle);
                    constraintWidget3.setHorizontalBiasPercent(f8);
                }
                if (i13 == i11 - 1) {
                    constraintWidget3.connect(constraintWidget3.mRight, this.mRight, getPaddingRight());
                }
                if (i13 > 0 && constraintWidget2 != null) {
                    constraintWidget3.connect(constraintWidget3.mLeft, constraintWidget2.mRight, this.mHorizontalGap);
                    constraintWidget2.connect(constraintWidget2.mRight, constraintWidget3.mLeft, 0);
                }
                constraintWidget2 = constraintWidget3;
            }
            i13++;
            f9 = f8;
        }
        for (int i14 = 0; i14 < i12; i14++) {
            ConstraintWidget constraintWidget4 = this.mAlignedBiggestElementsInRows[i14];
            if (constraintWidget4 != null && constraintWidget4.getVisibility() != 8) {
                if (i14 == 0) {
                    constraintWidget4.connect(constraintWidget4.mTop, this.mTop, getPaddingTop());
                    constraintWidget4.setVerticalChainStyle(this.mVerticalStyle);
                    constraintWidget4.setVerticalBiasPercent(this.mVerticalBias);
                }
                if (i14 == i12 - 1) {
                    constraintWidget4.connect(constraintWidget4.mBottom, this.mBottom, getPaddingBottom());
                }
                if (i14 > 0 && constraintWidget2 != null) {
                    constraintWidget4.connect(constraintWidget4.mTop, constraintWidget2.mBottom, this.mVerticalGap);
                    constraintWidget2.connect(constraintWidget2.mBottom, constraintWidget4.mTop, 0);
                }
                constraintWidget2 = constraintWidget4;
            }
        }
        for (int i15 = 0; i15 < i11; i15++) {
            for (int i16 = 0; i16 < i12; i16++) {
                int i17 = (i16 * i11) + i15;
                if (this.mOrientation == 1) {
                    i17 = (i15 * i12) + i16;
                }
                ConstraintWidget[] constraintWidgetArr = this.mDisplayedWidgets;
                if (i17 < constraintWidgetArr.length && (constraintWidget = constraintWidgetArr[i17]) != null && constraintWidget.getVisibility() != 8) {
                    ConstraintWidget constraintWidget5 = this.mAlignedBiggestElementsInCols[i15];
                    ConstraintWidget constraintWidget6 = this.mAlignedBiggestElementsInRows[i16];
                    if (constraintWidget != constraintWidget5) {
                        constraintWidget.connect(constraintWidget.mLeft, constraintWidget5.mLeft, 0);
                        constraintWidget.connect(constraintWidget.mRight, constraintWidget5.mRight, 0);
                    }
                    if (constraintWidget != constraintWidget6) {
                        constraintWidget.connect(constraintWidget.mTop, constraintWidget6.mTop, 0);
                        constraintWidget.connect(constraintWidget.mBottom, constraintWidget6.mBottom, 0);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getWidgetHeight(ConstraintWidget constraintWidget, int i9) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            int i10 = constraintWidget.mMatchConstraintDefaultHeight;
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                int i11 = (int) (constraintWidget.mMatchConstraintPercentHeight * i9);
                if (i11 != constraintWidget.getHeight()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget$DimensionBehaviour.FIXED, i11);
                }
                return i11;
            }
            constraintWidget2 = constraintWidget;
            if (i10 == 1) {
                return constraintWidget2.getHeight();
            }
            if (i10 == 3) {
                return (int) ((constraintWidget2.getWidth() * constraintWidget2.mDimensionRatio) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.getHeight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getWidgetWidth(ConstraintWidget constraintWidget, int i9) {
        ConstraintWidget constraintWidget2;
        if (constraintWidget == null) {
            return 0;
        }
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
            int i10 = constraintWidget.mMatchConstraintDefaultWidth;
            if (i10 == 0) {
                return 0;
            }
            if (i10 == 2) {
                int i11 = (int) (constraintWidget.mMatchConstraintPercentWidth * i9);
                if (i11 != constraintWidget.getWidth()) {
                    constraintWidget.setMeasureRequested(true);
                    measure(constraintWidget, ConstraintWidget$DimensionBehaviour.FIXED, i11, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
                return i11;
            }
            constraintWidget2 = constraintWidget;
            if (i10 == 1) {
                return constraintWidget2.getWidth();
            }
            if (i10 == 3) {
                return (int) ((constraintWidget2.getHeight() * constraintWidget2.mDimensionRatio) + 0.5f);
            }
        } else {
            constraintWidget2 = constraintWidget;
        }
        return constraintWidget2.getWidth();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:104:0x010d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:107:0x0115 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:115:0x011b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x0113 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x0057 A[ADDED_TO_REGION, EDGE_INSN: B:117:0x0057->B:40:0x0057 BREAK  A[LOOP:1: B:42:0x005a->B:122:0x005a], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:119:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x0057 A[ADDED_TO_REGION, EDGE_INSN: B:120:0x0057->B:40:0x0057 BREAK  A[LOOP:1: B:42:0x005a->B:122:0x005a], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x00d1 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:137:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x005e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0068  */
    /* JADX WARN: Code duplicated, block: B:48:0x0076  */
    /* JADX WARN: Code duplicated, block: B:52:0x007e  */
    /* JADX WARN: Code duplicated, block: B:55:0x0086  */
    /* JADX WARN: Code duplicated, block: B:59:0x008e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0095  */
    /* JADX WARN: Code duplicated, block: B:64:0x0098  */
    /* JADX WARN: Code duplicated, block: B:66:0x009d  */
    /* JADX WARN: Code duplicated, block: B:70:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:77:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:82:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:87:0x00db  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:95:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:97:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x00fa  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x010b -> B:40:0x0057). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x010d -> B:40:0x0057). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0113 -> B:40:0x0057). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0115 -> B:40:0x0057). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:97:0x00f8
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private void measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[] r11, int r12, int r13, int r14, int[] r15) {
        /*
            r10 = this;
            int r0 = r10.mMaxElementsWrap
            r1 = 0
            if (r13 != 0) goto L26
            if (r0 > 0) goto L23
            r0 = r1
            r2 = r0
            r3 = r2
        La:
            if (r2 >= r12) goto L23
            if (r2 <= 0) goto L11
            int r4 = r10.mHorizontalGap
            int r3 = r3 + r4
        L11:
            r4 = r11[r2]
            if (r4 != 0) goto L16
            goto L20
        L16:
            int r4 = r10.getWidgetWidth(r4, r14)
            int r3 = r3 + r4
            if (r3 <= r14) goto L1e
            goto L23
        L1e:
            int r0 = r0 + 1
        L20:
            int r2 = r2 + 1
            goto La
        L23:
            r2 = r0
            r0 = r1
            goto L45
        L26:
            if (r0 > 0) goto L44
            r0 = r1
            r2 = r0
            r3 = r2
        L2b:
            if (r2 >= r12) goto L44
            if (r2 <= 0) goto L32
            int r4 = r10.mVerticalGap
            int r3 = r3 + r4
        L32:
            r4 = r11[r2]
            if (r4 != 0) goto L37
            goto L41
        L37:
            int r4 = r10.getWidgetHeight(r4, r14)
            int r3 = r3 + r4
            if (r3 <= r14) goto L3f
            goto L44
        L3f:
            int r0 = r0 + 1
        L41:
            int r2 = r2 + 1
            goto L2b
        L44:
            r2 = r1
        L45:
            int[] r3 = r10.mAlignedDimensions
            if (r3 != 0) goto L4e
            r3 = 2
            int[] r3 = new int[r3]
            r10.mAlignedDimensions = r3
        L4e:
            r3 = 1
            if (r0 != 0) goto L53
            if (r13 == r3) goto L57
        L53:
            if (r2 != 0) goto L59
            if (r13 != 0) goto L59
        L57:
            r4 = r3
            goto L5a
        L59:
            r4 = r1
        L5a:
            if (r4 != 0) goto L11b
            if (r13 != 0) goto L68
            float r0 = (float) r12
            float r5 = (float) r2
            float r0 = r0 / r5
            double r5 = (double) r0
            double r5 = java.lang.Math.ceil(r5)
            int r0 = (int) r5
            goto L71
        L68:
            float r2 = (float) r12
            float r5 = (float) r0
            float r2 = r2 / r5
            double r5 = (double) r2
            double r5 = java.lang.Math.ceil(r5)
            int r2 = (int) r5
        L71:
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r5 = r10.mAlignedBiggestElementsInCols
            r6 = 0
            if (r5 == 0) goto L7e
            int r7 = r5.length
            if (r7 >= r2) goto L7a
            goto L7e
        L7a:
            java.util.Arrays.fill(r5, r6)
            goto L82
        L7e:
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r5 = new androidx.constraintlayout.core.widgets.ConstraintWidget[r2]
            r10.mAlignedBiggestElementsInCols = r5
        L82:
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r5 = r10.mAlignedBiggestElementsInRows
            if (r5 == 0) goto L8e
            int r7 = r5.length
            if (r7 >= r0) goto L8a
            goto L8e
        L8a:
            java.util.Arrays.fill(r5, r6)
            goto L92
        L8e:
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r5 = new androidx.constraintlayout.core.widgets.ConstraintWidget[r0]
            r10.mAlignedBiggestElementsInRows = r5
        L92:
            r5 = r1
        L93:
            if (r5 >= r2) goto Ld7
            r6 = r1
        L96:
            if (r6 >= r0) goto Ld4
            int r7 = r6 * r2
            int r7 = r7 + r5
            if (r13 != r3) goto La0
            int r7 = r5 * r0
            int r7 = r7 + r6
        La0:
            int r8 = r11.length
            if (r7 < r8) goto La4
            goto Ld1
        La4:
            r7 = r11[r7]
            if (r7 != 0) goto La9
            goto Ld1
        La9:
            int r8 = r10.getWidgetWidth(r7, r14)
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r9 = r10.mAlignedBiggestElementsInCols
            r9 = r9[r5]
            if (r9 == 0) goto Lb9
            int r9 = r9.getWidth()
            if (r9 >= r8) goto Lbd
        Lb9:
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r8 = r10.mAlignedBiggestElementsInCols
            r8[r5] = r7
        Lbd:
            int r8 = r10.getWidgetHeight(r7, r14)
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r9 = r10.mAlignedBiggestElementsInRows
            r9 = r9[r6]
            if (r9 == 0) goto Lcd
            int r9 = r9.getHeight()
            if (r9 >= r8) goto Ld1
        Lcd:
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r8 = r10.mAlignedBiggestElementsInRows
            r8[r6] = r7
        Ld1:
            int r6 = r6 + 1
            goto L96
        Ld4:
            int r5 = r5 + 1
            goto L93
        Ld7:
            r5 = r1
            r6 = r5
        Ld9:
            if (r5 >= r2) goto Lee
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r7 = r10.mAlignedBiggestElementsInCols
            r7 = r7[r5]
            if (r7 == 0) goto Leb
            if (r5 <= 0) goto Le6
            int r8 = r10.mHorizontalGap
            int r6 = r6 + r8
        Le6:
            int r7 = r10.getWidgetWidth(r7, r14)
            int r6 = r6 + r7
        Leb:
            int r5 = r5 + 1
            goto Ld9
        Lee:
            r5 = r1
            r7 = r5
        Lf0:
            if (r5 >= r0) goto L105
            androidx.constraintlayout.core.widgets.ConstraintWidget[] r8 = r10.mAlignedBiggestElementsInRows
            r8 = r8[r5]
            if (r8 == 0) goto L102
            if (r5 <= 0) goto Lfd
            int r9 = r10.mVerticalGap
            int r7 = r7 + r9
        Lfd:
            int r8 = r10.getWidgetHeight(r8, r14)
            int r7 = r7 + r8
        L102:
            int r5 = r5 + 1
            goto Lf0
        L105:
            r15[r1] = r6
            r15[r3] = r7
            if (r13 != 0) goto L113
            if (r6 <= r14) goto L57
            if (r2 <= r3) goto L57
            int r2 = r2 + (-1)
            goto L5a
        L113:
            if (r7 <= r14) goto L57
            if (r0 <= r3) goto L57
            int r0 = r0 + (-1)
            goto L5a
        L11b:
            int[] r11 = r10.mAlignedDimensions
            r11[r1] = r2
            r11[r3] = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.Flow.measureAligned(androidx.constraintlayout.core.widgets.ConstraintWidget[], int, int, int, int[]):void");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measureChainWrap(ConstraintWidget[] constraintWidgetArr, int i9, int i10, int i11, int[] iArr) {
        int i12;
        Flow flow;
        int i13;
        ConstraintAnchor constraintAnchor;
        int i14;
        Flow flow2 = this;
        if (i9 == 0) {
            return;
        }
        flow2.mChainList.clear();
        int i15 = i11;
        Flow$WidgetsList flow$WidgetsList = new Flow$WidgetsList(flow2, i10, flow2.mLeft, flow2.mTop, flow2.mRight, flow2.mBottom, i15);
        flow2.mChainList.add(flow$WidgetsList);
        if (i10 == 0) {
            i12 = 0;
            int i16 = 0;
            int i17 = 0;
            while (i17 < i9) {
                ConstraintWidget constraintWidget = constraintWidgetArr[i17];
                int widgetWidth = flow2.getWidgetWidth(constraintWidget, i15);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    i12++;
                }
                int i18 = i12;
                boolean z8 = (i16 == i15 || (flow2.mHorizontalGap + i16) + widgetWidth > i15) && Flow$WidgetsList.access$2000(flow$WidgetsList) != null;
                if (!z8 && i17 > 0 && (i14 = flow2.mMaxElementsWrap) > 0 && i17 % i14 == 0) {
                    z8 = true;
                }
                if (z8) {
                    flow$WidgetsList = new Flow$WidgetsList(flow2, i10, flow2.mLeft, flow2.mTop, flow2.mRight, flow2.mBottom, i15);
                    flow$WidgetsList.setStartIndex(i17);
                    flow2.mChainList.add(flow$WidgetsList);
                } else {
                    if (i17 > 0) {
                        i16 = flow2.mHorizontalGap + widgetWidth + i16;
                    }
                    flow$WidgetsList.add(constraintWidget);
                    i17++;
                    i12 = i18;
                }
                i16 = widgetWidth;
                flow$WidgetsList.add(constraintWidget);
                i17++;
                i12 = i18;
            }
        } else {
            i12 = 0;
            int i19 = 0;
            int i20 = 0;
            while (i20 < i9) {
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i20];
                int widgetHeight = flow2.getWidgetHeight(constraintWidget2, i15);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    i12++;
                }
                int i21 = i12;
                boolean z9 = (i19 == i15 || (flow2.mVerticalGap + i19) + widgetHeight > i15) && Flow$WidgetsList.access$2000(flow$WidgetsList) != null;
                if (!z9 && i20 > 0 && (i13 = flow2.mMaxElementsWrap) > 0 && i20 % i13 == 0) {
                    z9 = true;
                }
                if (z9) {
                    flow$WidgetsList = new Flow$WidgetsList(flow2, i10, flow2.mLeft, flow2.mTop, flow2.mRight, flow2.mBottom, i15);
                    flow = flow2;
                    flow$WidgetsList.setStartIndex(i20);
                    flow.mChainList.add(flow$WidgetsList);
                } else {
                    flow = flow2;
                    if (i20 > 0) {
                        i19 = flow.mVerticalGap + widgetHeight + i19;
                    }
                    flow$WidgetsList.add(constraintWidget2);
                    i20++;
                    i15 = i11;
                    i12 = i21;
                    flow2 = flow;
                }
                i19 = widgetHeight;
                flow$WidgetsList.add(constraintWidget2);
                i20++;
                i15 = i11;
                i12 = i21;
                flow2 = flow;
            }
        }
        Flow flow3 = flow2;
        int size = flow3.mChainList.size();
        ConstraintAnchor constraintAnchor2 = flow3.mLeft;
        ConstraintAnchor constraintAnchor3 = flow3.mTop;
        ConstraintAnchor constraintAnchor4 = flow3.mRight;
        ConstraintAnchor constraintAnchor5 = flow3.mBottom;
        int paddingLeft = flow3.getPaddingLeft();
        int paddingTop = flow3.getPaddingTop();
        int paddingRight = flow3.getPaddingRight();
        int paddingBottom = flow3.getPaddingBottom();
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = flow3.getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        boolean z10 = horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour || flow3.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour;
        if (i12 > 0 && z10) {
            for (int i22 = 0; i22 < size; i22++) {
                Flow$WidgetsList flow$WidgetsList2 = flow3.mChainList.get(i22);
                if (i10 == 0) {
                    flow$WidgetsList2.measureMatchConstraints(i11 - flow$WidgetsList2.getWidth());
                } else {
                    flow$WidgetsList2.measureMatchConstraints(i11 - flow$WidgetsList2.getHeight());
                }
            }
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchor2;
        int paddingBottom2 = paddingBottom;
        int i23 = 0;
        int paddingRight2 = paddingRight;
        int i24 = paddingTop;
        int i25 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor5;
        ConstraintAnchor constraintAnchor8 = constraintAnchor4;
        ConstraintAnchor constraintAnchor9 = constraintAnchor3;
        int i26 = 0;
        for (int i27 = 0; i27 < size; i27++) {
            Flow$WidgetsList flow$WidgetsList3 = flow3.mChainList.get(i27);
            if (i10 == 0) {
                if (i27 < size - 1) {
                    constraintAnchor7 = Flow$WidgetsList.access$2000(flow3.mChainList.get(i27 + 1)).mTop;
                    paddingBottom2 = 0;
                } else {
                    constraintAnchor7 = flow3.mBottom;
                    paddingBottom2 = flow3.getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor10 = Flow$WidgetsList.access$2000(flow$WidgetsList3).mBottom;
                int i28 = i26;
                flow$WidgetsList3.setup(i10, constraintAnchor6, constraintAnchor9, constraintAnchor8, constraintAnchor7, i25, i24, paddingRight2, paddingBottom2, i11);
                int iMax = Math.max(i23, flow$WidgetsList3.getWidth());
                int height = flow$WidgetsList3.getHeight() + i28;
                if (i27 > 0) {
                    height += flow3.mVerticalGap;
                }
                i26 = height;
                i23 = iMax;
                constraintAnchor9 = constraintAnchor10;
                i24 = 0;
            } else {
                int i29 = i23;
                int i30 = i26;
                if (i27 < size - 1) {
                    constraintAnchor = Flow$WidgetsList.access$2000(flow3.mChainList.get(i27 + 1)).mLeft;
                    paddingRight2 = 0;
                } else {
                    constraintAnchor = flow3.mRight;
                    paddingRight2 = flow3.getPaddingRight();
                }
                constraintAnchor8 = constraintAnchor;
                ConstraintAnchor constraintAnchor11 = Flow$WidgetsList.access$2000(flow$WidgetsList3).mRight;
                flow$WidgetsList3.setup(i10, constraintAnchor6, constraintAnchor9, constraintAnchor8, constraintAnchor7, i25, i24, paddingRight2, paddingBottom2, i11);
                int width = flow$WidgetsList3.getWidth() + i29;
                int iMax2 = Math.max(i30, flow$WidgetsList3.getHeight());
                if (i27 > 0) {
                    width += flow3.mHorizontalGap;
                }
                int i31 = width;
                i26 = iMax2;
                i23 = i31;
                i25 = 0;
                constraintAnchor6 = constraintAnchor11;
            }
        }
        iArr[0] = i23;
        iArr[1] = i26;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measureChainWrap_new(ConstraintWidget[] constraintWidgetArr, int i9, int i10, int i11, int[] iArr) {
        int i12;
        Flow flow;
        int i13;
        ConstraintAnchor constraintAnchor;
        int i14;
        Flow flow2 = this;
        if (i9 == 0) {
            return;
        }
        flow2.mChainList.clear();
        int i15 = i11;
        Flow$WidgetsList flow$WidgetsList = new Flow$WidgetsList(flow2, i10, flow2.mLeft, flow2.mTop, flow2.mRight, flow2.mBottom, i15);
        flow2.mChainList.add(flow$WidgetsList);
        boolean z8 = true;
        if (i10 == 0) {
            int i16 = 0;
            i12 = 0;
            int i17 = 0;
            int i18 = 0;
            while (i18 < i9) {
                i16++;
                ConstraintWidget constraintWidget = constraintWidgetArr[i18];
                int widgetWidth = flow2.getWidgetWidth(constraintWidget, i15);
                if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    i12++;
                }
                int i19 = i12;
                boolean z9 = (i17 == i15 || (flow2.mHorizontalGap + i17) + widgetWidth > i15) && Flow$WidgetsList.access$2000(flow$WidgetsList) != null;
                if (!z9 && i18 > 0 && (i14 = flow2.mMaxElementsWrap) > 0 && i16 > i14) {
                    z9 = true;
                }
                if (z9) {
                    flow$WidgetsList = new Flow$WidgetsList(flow2, i10, flow2.mLeft, flow2.mTop, flow2.mRight, flow2.mBottom, i15);
                    flow$WidgetsList.setStartIndex(i18);
                    flow2.mChainList.add(flow$WidgetsList);
                    i16 = 1;
                } else {
                    if (i18 > 0) {
                        i17 = flow2.mHorizontalGap + widgetWidth + i17;
                    }
                    flow$WidgetsList.add(constraintWidget);
                    i18++;
                    i12 = i19;
                }
                i17 = widgetWidth;
                flow$WidgetsList.add(constraintWidget);
                i18++;
                i12 = i19;
            }
        } else {
            int i20 = 0;
            i12 = 0;
            int i21 = 0;
            int i22 = 0;
            while (i22 < i9) {
                i20++;
                ConstraintWidget constraintWidget2 = constraintWidgetArr[i22];
                int widgetHeight = flow2.getWidgetHeight(constraintWidget2, i15);
                if (constraintWidget2.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                    i12++;
                }
                int i23 = i12;
                boolean z10 = (i21 == i15 || (flow2.mVerticalGap + i21) + widgetHeight > i15) && Flow$WidgetsList.access$2000(flow$WidgetsList) != null;
                if (!z10 && i22 > 0 && (i13 = flow2.mMaxElementsWrap) > 0 && i20 > i13) {
                    z10 = true;
                }
                if (z10) {
                    flow$WidgetsList = new Flow$WidgetsList(flow2, i10, flow2.mLeft, flow2.mTop, flow2.mRight, flow2.mBottom, i15);
                    flow = flow2;
                    flow$WidgetsList.setStartIndex(i22);
                    flow.mChainList.add(flow$WidgetsList);
                    i20 = 1;
                } else {
                    flow = flow2;
                    if (i22 > 0) {
                        i21 = flow.mVerticalGap + widgetHeight + i21;
                    }
                    flow$WidgetsList.add(constraintWidget2);
                    i22++;
                    i15 = i11;
                    i12 = i23;
                    flow2 = flow;
                }
                i21 = widgetHeight;
                flow$WidgetsList.add(constraintWidget2);
                i22++;
                i15 = i11;
                i12 = i23;
                flow2 = flow;
            }
        }
        Flow flow3 = flow2;
        int size = flow3.mChainList.size();
        ConstraintAnchor constraintAnchor2 = flow3.mLeft;
        ConstraintAnchor constraintAnchor3 = flow3.mTop;
        ConstraintAnchor constraintAnchor4 = flow3.mRight;
        ConstraintAnchor constraintAnchor5 = flow3.mBottom;
        int paddingLeft = flow3.getPaddingLeft();
        int paddingTop = flow3.getPaddingTop();
        int paddingRight = flow3.getPaddingRight();
        int paddingBottom = flow3.getPaddingBottom();
        ConstraintWidget$DimensionBehaviour horizontalDimensionBehaviour = flow3.getHorizontalDimensionBehaviour();
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        boolean z11 = horizontalDimensionBehaviour == constraintWidget$DimensionBehaviour || flow3.getVerticalDimensionBehaviour() == constraintWidget$DimensionBehaviour;
        if (i12 > 0 && z11) {
            for (int i24 = 0; i24 < size; i24++) {
                Flow$WidgetsList flow$WidgetsList2 = flow3.mChainList.get(i24);
                if (i10 == 0) {
                    flow$WidgetsList2.measureMatchConstraints(i11 - flow$WidgetsList2.getWidth());
                } else {
                    flow$WidgetsList2.measureMatchConstraints(i11 - flow$WidgetsList2.getHeight());
                }
            }
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchor3;
        int paddingBottom2 = paddingBottom;
        int i25 = 0;
        int i26 = 0;
        int paddingRight2 = paddingRight;
        int i27 = paddingTop;
        int i28 = paddingLeft;
        ConstraintAnchor constraintAnchor7 = constraintAnchor5;
        ConstraintAnchor constraintAnchor8 = constraintAnchor4;
        ConstraintAnchor constraintAnchor9 = constraintAnchor2;
        int i29 = 0;
        while (i26 < size) {
            Flow$WidgetsList flow$WidgetsList3 = flow3.mChainList.get(i26);
            if (i10 == 0) {
                if (i26 < size - 1) {
                    constraintAnchor7 = Flow$WidgetsList.access$2000(flow3.mChainList.get(i26 + 1)).mTop;
                    paddingBottom2 = 0;
                } else {
                    constraintAnchor7 = flow3.mBottom;
                    paddingBottom2 = flow3.getPaddingBottom();
                }
                ConstraintAnchor constraintAnchor10 = Flow$WidgetsList.access$2000(flow$WidgetsList3).mBottom;
                int i30 = i25;
                flow$WidgetsList3.setup(i10, constraintAnchor9, constraintAnchor6, constraintAnchor8, constraintAnchor7, i28, i27, paddingRight2, paddingBottom2, i11);
                int iMax = Math.max(i29, flow$WidgetsList3.getWidth());
                int height = flow$WidgetsList3.getHeight() + i30;
                if (i26 > 0) {
                    height += flow3.mVerticalGap;
                }
                i25 = height;
                i29 = iMax;
                constraintAnchor6 = constraintAnchor10;
                i27 = 0;
            } else {
                int i31 = i25;
                int i32 = i29;
                if (i26 < size - 1) {
                    constraintAnchor = Flow$WidgetsList.access$2000(flow3.mChainList.get(i26 + 1)).mLeft;
                    paddingRight2 = 0;
                } else {
                    constraintAnchor = flow3.mRight;
                    paddingRight2 = flow3.getPaddingRight();
                }
                constraintAnchor8 = constraintAnchor;
                ConstraintAnchor constraintAnchor11 = Flow$WidgetsList.access$2000(flow$WidgetsList3).mRight;
                flow$WidgetsList3.setup(i10, constraintAnchor9, constraintAnchor6, constraintAnchor8, constraintAnchor7, i28, i27, paddingRight2, paddingBottom2, i11);
                int width = flow$WidgetsList3.getWidth() + i32;
                int iMax2 = Math.max(i31, flow$WidgetsList3.getHeight());
                if (i26 > 0) {
                    width += flow3.mHorizontalGap;
                }
                int i33 = width;
                i25 = iMax2;
                i29 = i33;
                i28 = 0;
                constraintAnchor9 = constraintAnchor11;
            }
            i26++;
            z8 = z8;
        }
        iArr[0] = i29;
        iArr[z8 ? 1 : 0] = i25;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void measureNoWrap(ConstraintWidget[] constraintWidgetArr, int i9, int i10, int i11, int[] iArr) {
        Flow$WidgetsList flow$WidgetsList;
        if (i9 == 0) {
            return;
        }
        if (this.mChainList.size() == 0) {
            flow$WidgetsList = new Flow$WidgetsList(this, i10, this.mLeft, this.mTop, this.mRight, this.mBottom, i11);
            this.mChainList.add(flow$WidgetsList);
        } else {
            Flow$WidgetsList flow$WidgetsList2 = this.mChainList.get(0);
            flow$WidgetsList2.clear();
            flow$WidgetsList2.setup(i10, this.mLeft, this.mTop, this.mRight, this.mBottom, getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom(), i11);
            flow$WidgetsList = flow$WidgetsList2;
        }
        for (int i12 = 0; i12 < i9; i12++) {
            flow$WidgetsList.add(constraintWidgetArr[i12]);
        }
        iArr[0] = flow$WidgetsList.getWidth();
        iArr[1] = flow$WidgetsList.getHeight();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z8) {
        super.addToSolver(linearSystem, z8);
        boolean z9 = getParent() != null && ((ConstraintWidgetContainer) getParent()).isRtl();
        int i9 = this.mWrapMode;
        if (i9 != 0) {
            if (i9 == 1) {
                int size = this.mChainList.size();
                int i10 = 0;
                while (i10 < size) {
                    this.mChainList.get(i10).createConstraints(z9, i10, i10 == size + (-1));
                    i10++;
                }
            } else if (i9 == 2) {
                createAlignedConstraints(z9);
            } else if (i9 == 3) {
                int size2 = this.mChainList.size();
                int i11 = 0;
                while (i11 < size2) {
                    this.mChainList.get(i11).createConstraints(z9, i11, i11 == size2 + (-1));
                    i11++;
                }
            }
        } else if (this.mChainList.size() > 0) {
            this.mChainList.get(0).createConstraints(z9, 0, true);
        }
        needsCallbackFromSolver(false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> map) {
        super.copy(constraintWidget, map);
        Flow flow = (Flow) constraintWidget;
        this.mHorizontalStyle = flow.mHorizontalStyle;
        this.mVerticalStyle = flow.mVerticalStyle;
        this.mFirstHorizontalStyle = flow.mFirstHorizontalStyle;
        this.mFirstVerticalStyle = flow.mFirstVerticalStyle;
        this.mLastHorizontalStyle = flow.mLastHorizontalStyle;
        this.mLastVerticalStyle = flow.mLastVerticalStyle;
        this.mHorizontalBias = flow.mHorizontalBias;
        this.mVerticalBias = flow.mVerticalBias;
        this.mFirstHorizontalBias = flow.mFirstHorizontalBias;
        this.mFirstVerticalBias = flow.mFirstVerticalBias;
        this.mLastHorizontalBias = flow.mLastHorizontalBias;
        this.mLastVerticalBias = flow.mLastVerticalBias;
        this.mHorizontalGap = flow.mHorizontalGap;
        this.mVerticalGap = flow.mVerticalGap;
        this.mHorizontalAlign = flow.mHorizontalAlign;
        this.mVerticalAlign = flow.mVerticalAlign;
        this.mWrapMode = flow.mWrapMode;
        this.mMaxElementsWrap = flow.mMaxElementsWrap;
        this.mOrientation = flow.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getMaxElementsWrap() {
        return this.mMaxElementsWrap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.widgets.VirtualLayout
    public void measure(int i9, int i10, int i11, int i12) {
        int i13;
        if (this.mWidgetsCount > 0 && !measureChildren()) {
            setMeasure(0, 0);
            needsCallbackFromSolver(false);
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int[] iArr = new int[2];
        int i14 = (i10 - paddingLeft) - paddingRight;
        int i15 = this.mOrientation;
        if (i15 == 1) {
            i14 = (i12 - paddingTop) - paddingBottom;
        }
        int i16 = i14;
        int i17 = this.mHorizontalStyle;
        if (i15 == 0) {
            if (i17 == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        } else {
            if (i17 == -1) {
                this.mHorizontalStyle = 0;
            }
            if (this.mVerticalStyle == -1) {
                this.mVerticalStyle = 0;
            }
        }
        ConstraintWidget[] constraintWidgetArr = this.mWidgets;
        int i18 = 0;
        int i19 = 0;
        while (true) {
            i13 = this.mWidgetsCount;
            if (i18 >= i13) {
                break;
            }
            if (this.mWidgets[i18].getVisibility() == 8) {
                i19++;
            }
            i18++;
        }
        if (i19 > 0) {
            constraintWidgetArr = new ConstraintWidget[i13 - i19];
            int i20 = 0;
            i13 = 0;
            while (i20 < this.mWidgetsCount) {
                ConstraintWidget constraintWidget = this.mWidgets[i20];
                ConstraintWidget[] constraintWidgetArr2 = constraintWidgetArr;
                if (constraintWidget.getVisibility() != 8) {
                    constraintWidgetArr2[i13] = constraintWidget;
                    i13++;
                }
                i20++;
                constraintWidgetArr = constraintWidgetArr2;
            }
        }
        int i21 = i13;
        this.mDisplayedWidgets = constraintWidgetArr;
        this.mDisplayedWidgetsCount = i21;
        int i22 = this.mWrapMode;
        if (i22 == 0) {
            measureNoWrap(constraintWidgetArr, i21, this.mOrientation, i16, iArr);
        } else if (i22 == 1) {
            measureChainWrap(constraintWidgetArr, i21, this.mOrientation, i16, iArr);
        } else if (i22 == 2) {
            measureAligned(constraintWidgetArr, i21, this.mOrientation, i16, iArr);
        } else if (i22 == 3) {
            measureChainWrap_new(constraintWidgetArr, i21, this.mOrientation, i16, iArr);
        }
        int iMin = iArr[0] + paddingLeft + paddingRight;
        int iMin2 = iArr[1] + paddingTop + paddingBottom;
        if (i9 == 1073741824) {
            iMin = i10;
        } else if (i9 == Integer.MIN_VALUE) {
            iMin = Math.min(iMin, i10);
        } else if (i9 != 0) {
            iMin = 0;
        }
        if (i11 == 1073741824) {
            iMin2 = i12;
        } else if (i11 == Integer.MIN_VALUE) {
            iMin2 = Math.min(iMin2, i12);
        } else if (i11 != 0) {
            iMin2 = 0;
        }
        setMeasure(iMin, iMin2);
        setWidth(iMin);
        setHeight(iMin2);
        needsCallbackFromSolver(this.mWidgetsCount > 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFirstHorizontalBias(float f8) {
        this.mFirstHorizontalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFirstHorizontalStyle(int i9) {
        this.mFirstHorizontalStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFirstVerticalBias(float f8) {
        this.mFirstVerticalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setFirstVerticalStyle(int i9) {
        this.mFirstVerticalStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalAlign(int i9) {
        this.mHorizontalAlign = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalBias(float f8) {
        this.mHorizontalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalGap(int i9) {
        this.mHorizontalGap = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalStyle(int i9) {
        this.mHorizontalStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastHorizontalBias(float f8) {
        this.mLastHorizontalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastHorizontalStyle(int i9) {
        this.mLastHorizontalStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastVerticalBias(float f8) {
        this.mLastVerticalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLastVerticalStyle(int i9) {
        this.mLastVerticalStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMaxElementsWrap(int i9) {
        this.mMaxElementsWrap = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        this.mOrientation = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalAlign(int i9) {
        this.mVerticalAlign = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalBias(float f8) {
        this.mVerticalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalGap(int i9) {
        this.mVerticalGap = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalStyle(int i9) {
        this.mVerticalStyle = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWrapMode(int i9) {
        this.mWrapMode = i9;
    }
}
