package androidx.constraintlayout.core.widgets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Flow$WidgetsList {
    private ConstraintAnchor mBottom;
    private ConstraintAnchor mLeft;
    private int mMax;
    private int mOrientation;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private ConstraintAnchor mRight;
    private ConstraintAnchor mTop;
    final /* synthetic */ Flow this$0;
    private ConstraintWidget mBiggest = null;
    int mBiggestDimension = 0;
    private int mWidth = 0;
    private int mHeight = 0;
    private int mStartIndex = 0;
    private int mCount = 0;
    private int mNbMatchConstraintsWidgets = 0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Flow$WidgetsList(Flow flow, int i9, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i10) {
        this.this$0 = flow;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mMax = 0;
        this.mOrientation = i9;
        this.mLeft = constraintAnchor;
        this.mTop = constraintAnchor2;
        this.mRight = constraintAnchor3;
        this.mBottom = constraintAnchor4;
        this.mPaddingLeft = flow.getPaddingLeft();
        this.mPaddingTop = flow.getPaddingTop();
        this.mPaddingRight = flow.getPaddingRight();
        this.mPaddingBottom = flow.getPaddingBottom();
        this.mMax = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ConstraintWidget access$2000(Flow$WidgetsList flow$WidgetsList) {
        return flow$WidgetsList.mBiggest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recomputeDimensions() {
        this.mWidth = 0;
        this.mHeight = 0;
        this.mBiggest = null;
        this.mBiggestDimension = 0;
        int i9 = this.mCount;
        for (int i10 = 0; i10 < i9 && this.mStartIndex + i10 < Flow.access$400(this.this$0); i10++) {
            ConstraintWidget constraintWidget = Flow.access$500(this.this$0)[this.mStartIndex + i10];
            if (this.mOrientation == 0) {
                int width = constraintWidget.getWidth();
                int iAccess$000 = Flow.access$000(this.this$0);
                if (constraintWidget.getVisibility() == 8) {
                    iAccess$000 = 0;
                }
                this.mWidth = width + iAccess$000 + this.mWidth;
                int iAccess$300 = Flow.access$300(this.this$0, constraintWidget, this.mMax);
                if (this.mBiggest == null || this.mBiggestDimension < iAccess$300) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = iAccess$300;
                    this.mHeight = iAccess$300;
                }
            } else {
                int iAccess$200 = Flow.access$200(this.this$0, constraintWidget, this.mMax);
                int iAccess$301 = Flow.access$300(this.this$0, constraintWidget, this.mMax);
                int iAccess$100 = Flow.access$100(this.this$0);
                if (constraintWidget.getVisibility() == 8) {
                    iAccess$100 = 0;
                }
                this.mHeight = iAccess$301 + iAccess$100 + this.mHeight;
                if (this.mBiggest == null || this.mBiggestDimension < iAccess$200) {
                    this.mBiggest = constraintWidget;
                    this.mBiggestDimension = iAccess$200;
                    this.mWidth = iAccess$200;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(ConstraintWidget constraintWidget) {
        int i9 = this.mOrientation;
        Flow flow = this.this$0;
        if (i9 == 0) {
            int iAccess$200 = Flow.access$200(flow, constraintWidget, this.mMax);
            if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                this.mNbMatchConstraintsWidgets++;
                iAccess$200 = 0;
            }
            this.mWidth = iAccess$200 + (constraintWidget.getVisibility() != 8 ? Flow.access$000(this.this$0) : 0) + this.mWidth;
            int iAccess$300 = Flow.access$300(this.this$0, constraintWidget, this.mMax);
            if (this.mBiggest == null || this.mBiggestDimension < iAccess$300) {
                this.mBiggest = constraintWidget;
                this.mBiggestDimension = iAccess$300;
                this.mHeight = iAccess$300;
            }
        } else {
            int iAccess$201 = Flow.access$200(flow, constraintWidget, this.mMax);
            int iAccess$301 = Flow.access$300(this.this$0, constraintWidget, this.mMax);
            if (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT) {
                this.mNbMatchConstraintsWidgets++;
                iAccess$301 = 0;
            }
            this.mHeight = iAccess$301 + (constraintWidget.getVisibility() != 8 ? Flow.access$100(this.this$0) : 0) + this.mHeight;
            if (this.mBiggest == null || this.mBiggestDimension < iAccess$201) {
                this.mBiggest = constraintWidget;
                this.mBiggestDimension = iAccess$201;
                this.mWidth = iAccess$201;
            }
        }
        this.mCount++;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.mBiggestDimension = 0;
        this.mBiggest = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mStartIndex = 0;
        this.mCount = 0;
        this.mNbMatchConstraintsWidgets = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:86:0x0144 A[PHI: r3 r11
  0x0144: PHI (r3v43 int) = (r3v41 int), (r3v45 int) binds: [B:91:0x015d, B:85:0x0142] A[DONT_GENERATE, DONT_INLINE]
  0x0144: PHI (r11v55 float) = (r11v53 float), (r11v58 float) binds: [B:91:0x015d, B:85:0x0142] A[DONT_GENERATE, DONT_INLINE]] */
    public void createConstraints(boolean z8, int i9, boolean z9) {
        ConstraintWidget constraintWidget;
        int i10;
        char c;
        int i11 = this.mCount;
        for (int i12 = 0; i12 < i11 && this.mStartIndex + i12 < Flow.access$400(this.this$0); i12++) {
            ConstraintWidget constraintWidget2 = Flow.access$500(this.this$0)[this.mStartIndex + i12];
            if (constraintWidget2 != null) {
                constraintWidget2.resetAnchors();
            }
        }
        if (i11 == 0 || this.mBiggest == null) {
            return;
        }
        boolean z10 = z9 && i9 == 0;
        int i13 = -1;
        int i14 = -1;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = z8 ? (i11 - 1) - i15 : i15;
            if (this.mStartIndex + i16 >= Flow.access$400(this.this$0)) {
                break;
            }
            ConstraintWidget constraintWidget3 = Flow.access$500(this.this$0)[this.mStartIndex + i16];
            if (constraintWidget3 != null && constraintWidget3.getVisibility() == 0) {
                if (i13 == -1) {
                    i13 = i15;
                }
                i14 = i15;
            }
        }
        int i17 = this.mOrientation;
        ConstraintWidget constraintWidget4 = this.mBiggest;
        ConstraintWidget constraintWidget5 = null;
        if (i17 != 0) {
            constraintWidget4.setHorizontalChainStyle(Flow.access$800(this.this$0));
            int iAccess$000 = this.mPaddingLeft;
            if (i9 > 0) {
                iAccess$000 += Flow.access$000(this.this$0);
            }
            if (z8) {
                constraintWidget4.mRight.connect(this.mRight, iAccess$000);
                if (z9) {
                    constraintWidget4.mLeft.connect(this.mLeft, this.mPaddingRight);
                }
                if (i9 > 0) {
                    this.mRight.mOwner.mLeft.connect(constraintWidget4.mRight, 0);
                }
            } else {
                constraintWidget4.mLeft.connect(this.mLeft, iAccess$000);
                if (z9) {
                    constraintWidget4.mRight.connect(this.mRight, this.mPaddingRight);
                }
                if (i9 > 0) {
                    this.mLeft.mOwner.mRight.connect(constraintWidget4.mLeft, 0);
                }
            }
            for (int i18 = 0; i18 < i11 && this.mStartIndex + i18 < Flow.access$400(this.this$0); i18++) {
                ConstraintWidget constraintWidget6 = Flow.access$500(this.this$0)[this.mStartIndex + i18];
                if (constraintWidget6 != null) {
                    if (i18 == 0) {
                        constraintWidget6.connect(constraintWidget6.mTop, this.mTop, this.mPaddingTop);
                        int iAccess$600 = Flow.access$600(this.this$0);
                        float fAccess$1400 = Flow.access$1400(this.this$0);
                        if (this.mStartIndex == 0 && Flow.access$1500(this.this$0) != -1) {
                            iAccess$600 = Flow.access$1500(this.this$0);
                            fAccess$1400 = Flow.access$1600(this.this$0);
                        } else if (z9 && Flow.access$1700(this.this$0) != -1) {
                            iAccess$600 = Flow.access$1700(this.this$0);
                            fAccess$1400 = Flow.access$1800(this.this$0);
                        }
                        constraintWidget6.setVerticalChainStyle(iAccess$600);
                        constraintWidget6.setVerticalBiasPercent(fAccess$1400);
                    }
                    if (i18 == i11 - 1) {
                        constraintWidget6.connect(constraintWidget6.mBottom, this.mBottom, this.mPaddingBottom);
                    }
                    if (constraintWidget5 != null) {
                        constraintWidget6.mTop.connect(constraintWidget5.mBottom, Flow.access$100(this.this$0));
                        if (i18 == i13) {
                            constraintWidget6.mTop.setGoneMargin(this.mPaddingTop);
                        }
                        constraintWidget5.mBottom.connect(constraintWidget6.mTop, 0);
                        if (i18 == i14 + 1) {
                            constraintWidget5.mBottom.setGoneMargin(this.mPaddingBottom);
                        }
                    }
                    if (constraintWidget6 != constraintWidget4) {
                        Flow flow = this.this$0;
                        if (z8) {
                            int iAccess$1900 = Flow.access$1900(flow);
                            if (iAccess$1900 == 0) {
                                constraintWidget6.mRight.connect(constraintWidget4.mRight, 0);
                            } else if (iAccess$1900 == 1) {
                                constraintWidget6.mLeft.connect(constraintWidget4.mLeft, 0);
                            } else if (iAccess$1900 == 2) {
                                constraintWidget6.mLeft.connect(constraintWidget4.mLeft, 0);
                                constraintWidget6.mRight.connect(constraintWidget4.mRight, 0);
                            }
                        } else {
                            int iAccess$1901 = Flow.access$1900(flow);
                            if (iAccess$1901 == 0) {
                                constraintWidget6.mLeft.connect(constraintWidget4.mLeft, 0);
                            } else if (iAccess$1901 == 1) {
                                constraintWidget6.mRight.connect(constraintWidget4.mRight, 0);
                            } else if (iAccess$1901 == 2) {
                                ConstraintAnchor constraintAnchor = constraintWidget6.mLeft;
                                if (z10) {
                                    constraintAnchor.connect(this.mLeft, this.mPaddingLeft);
                                    constraintWidget6.mRight.connect(this.mRight, this.mPaddingRight);
                                } else {
                                    constraintAnchor.connect(constraintWidget4.mLeft, 0);
                                    constraintWidget6.mRight.connect(constraintWidget4.mRight, 0);
                                }
                            }
                        }
                    }
                    constraintWidget5 = constraintWidget6;
                }
            }
            return;
        }
        constraintWidget4.setVerticalChainStyle(Flow.access$600(this.this$0));
        int iAccess$100 = this.mPaddingTop;
        if (i9 > 0) {
            iAccess$100 += Flow.access$100(this.this$0);
        }
        constraintWidget4.mTop.connect(this.mTop, iAccess$100);
        if (z9) {
            constraintWidget4.mBottom.connect(this.mBottom, this.mPaddingBottom);
        }
        if (i9 > 0) {
            this.mTop.mOwner.mBottom.connect(constraintWidget4.mTop, 0);
        }
        char c9 = 3;
        if (Flow.access$700(this.this$0) != 3 || constraintWidget4.hasBaseline()) {
            constraintWidget = constraintWidget4;
            break;
        }
        int i19 = 0;
        while (true) {
            if (i19 < i11) {
                int i20 = z8 ? (i11 - 1) - i19 : i19;
                if (this.mStartIndex + i20 < Flow.access$400(this.this$0)) {
                    constraintWidget = Flow.access$500(this.this$0)[this.mStartIndex + i20];
                    if (constraintWidget.hasBaseline()) {
                        break;
                    } else {
                        i19++;
                    }
                }
            }
            constraintWidget = constraintWidget4;
            break;
        }
        int i21 = 0;
        while (i21 < i11) {
            int i22 = z8 ? (i11 - 1) - i21 : i21;
            if (this.mStartIndex + i22 >= Flow.access$400(this.this$0)) {
                return;
            }
            ConstraintWidget constraintWidget7 = Flow.access$500(this.this$0)[this.mStartIndex + i22];
            if (constraintWidget7 == null) {
                constraintWidget7 = constraintWidget5;
                c = c9;
            } else {
                if (i21 == 0) {
                    i10 = 1;
                    constraintWidget7.connect(constraintWidget7.mLeft, this.mLeft, this.mPaddingLeft);
                } else {
                    i10 = 1;
                }
                if (i22 == 0) {
                    int iAccess$800 = Flow.access$800(this.this$0);
                    float fAccess$900 = Flow.access$900(this.this$0);
                    if (z8) {
                        fAccess$900 = 1.0f - fAccess$900;
                    }
                    if (this.mStartIndex == 0 && Flow.access$1000(this.this$0) != -1) {
                        iAccess$800 = Flow.access$1000(this.this$0);
                        fAccess$900 = Flow.access$1100(this.this$0);
                        if (z8) {
                            fAccess$900 = 1.0f - fAccess$900;
                        }
                    } else if (z9 && Flow.access$1200(this.this$0) != -1) {
                        iAccess$800 = Flow.access$1200(this.this$0);
                        fAccess$900 = Flow.access$1300(this.this$0);
                        if (z8) {
                            fAccess$900 = 1.0f - fAccess$900;
                        }
                    }
                    constraintWidget7.setHorizontalChainStyle(iAccess$800);
                    constraintWidget7.setHorizontalBiasPercent(fAccess$900);
                }
                if (i21 == i11 - 1) {
                    constraintWidget7.connect(constraintWidget7.mRight, this.mRight, this.mPaddingRight);
                }
                if (constraintWidget5 != null) {
                    constraintWidget7.mLeft.connect(constraintWidget5.mRight, Flow.access$000(this.this$0));
                    if (i21 == i13) {
                        constraintWidget7.mLeft.setGoneMargin(this.mPaddingLeft);
                    }
                    constraintWidget5.mRight.connect(constraintWidget7.mLeft, 0);
                    if (i21 == i14 + 1) {
                        constraintWidget5.mRight.setGoneMargin(this.mPaddingRight);
                    }
                }
                if (constraintWidget7 != constraintWidget4) {
                    c = 3;
                    if (Flow.access$700(this.this$0) == 3 && constraintWidget.hasBaseline() && constraintWidget7 != constraintWidget && constraintWidget7.hasBaseline()) {
                        constraintWidget7.mBaseline.connect(constraintWidget.mBaseline, 0);
                    } else {
                        int iAccess$700 = Flow.access$700(this.this$0);
                        if (iAccess$700 == 0) {
                            constraintWidget7.mTop.connect(constraintWidget4.mTop, 0);
                        } else if (iAccess$700 != i10) {
                            ConstraintAnchor constraintAnchor2 = constraintWidget7.mTop;
                            if (z10) {
                                constraintAnchor2.connect(this.mTop, this.mPaddingTop);
                                constraintWidget7.mBottom.connect(this.mBottom, this.mPaddingBottom);
                            } else {
                                constraintAnchor2.connect(constraintWidget4.mTop, 0);
                                constraintWidget7.mBottom.connect(constraintWidget4.mBottom, 0);
                            }
                        } else {
                            constraintWidget7.mBottom.connect(constraintWidget4.mBottom, 0);
                        }
                    }
                } else {
                    c = 3;
                }
            }
            i21++;
            c9 = c;
            constraintWidget5 = constraintWidget7;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeight() {
        int i9 = this.mOrientation;
        int i10 = this.mHeight;
        return i9 == 1 ? i10 - Flow.access$100(this.this$0) : i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidth() {
        int i9 = this.mOrientation;
        int i10 = this.mWidth;
        return i9 == 0 ? i10 - Flow.access$000(this.this$0) : i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measureMatchConstraints(int i9) {
        int i10 = this.mNbMatchConstraintsWidgets;
        if (i10 == 0) {
            return;
        }
        int i11 = this.mCount;
        int i12 = i9 / i10;
        for (int i13 = 0; i13 < i11 && this.mStartIndex + i13 < Flow.access$400(this.this$0); i13++) {
            ConstraintWidget constraintWidget = Flow.access$500(this.this$0)[this.mStartIndex + i13];
            if (this.mOrientation == 0) {
                if (constraintWidget != null && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultWidth == 0) {
                    this.this$0.measure(constraintWidget, ConstraintWidget$DimensionBehaviour.FIXED, i12, constraintWidget.getVerticalDimensionBehaviour(), constraintWidget.getHeight());
                }
            } else if (constraintWidget != null && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mMatchConstraintDefaultHeight == 0) {
                int i14 = i12;
                this.this$0.measure(constraintWidget, constraintWidget.getHorizontalDimensionBehaviour(), constraintWidget.getWidth(), ConstraintWidget$DimensionBehaviour.FIXED, i14);
                i12 = i14;
            }
        }
        recomputeDimensions();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStartIndex(int i9) {
        this.mStartIndex = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setup(int i9, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, ConstraintAnchor constraintAnchor3, ConstraintAnchor constraintAnchor4, int i10, int i11, int i12, int i13, int i14) {
        this.mOrientation = i9;
        this.mLeft = constraintAnchor;
        this.mTop = constraintAnchor2;
        this.mRight = constraintAnchor3;
        this.mBottom = constraintAnchor4;
        this.mPaddingLeft = i10;
        this.mPaddingTop = i11;
        this.mPaddingRight = i12;
        this.mPaddingBottom = i13;
        this.mMax = i14;
    }
}
