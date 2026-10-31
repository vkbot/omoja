package androidx.constraintlayout.widget;

import ai.onnxruntime.a;
import ai.onnxruntime.b;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;
    ConstraintLayout$LayoutParams mParams;
    View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties(View view) {
        ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout$LayoutParams)) {
            b.h("Only children of ConstraintLayout.LayoutParams supported");
            throw null;
        }
        this.mParams = (ConstraintLayout$LayoutParams) layoutParams;
        this.mView = view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String sideToString(int i9) {
        switch (i9) {
            case 1:
                return "left";
            case 2:
                return "right";
            case 3:
                return "top";
            case 4:
                return "bottom";
            case 5:
                return "baseline";
            case 6:
                return "start";
            case 7:
                return "end";
            default:
                return "undefined";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties addToHorizontalChain(int i9, int i10) {
        connect(1, i9, i9 == 0 ? 1 : 2, 0);
        connect(2, i10, i10 == 0 ? 2 : 1, 0);
        if (i9 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9)).connect(2, this.mView.getId(), 1, 0);
        }
        if (i10 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10)).connect(1, this.mView.getId(), 2, 0);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties addToHorizontalChainRTL(int i9, int i10) {
        connect(6, i9, i9 == 0 ? 6 : 7, 0);
        connect(7, i10, i10 == 0 ? 7 : 6, 0);
        if (i9 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9)).connect(7, this.mView.getId(), 6, 0);
        }
        if (i10 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10)).connect(6, this.mView.getId(), 7, 0);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties addToVerticalChain(int i9, int i10) {
        connect(3, i9, i9 == 0 ? 3 : 4, 0);
        connect(4, i10, i10 == 0 ? 4 : 3, 0);
        if (i9 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9)).connect(4, this.mView.getId(), 3, 0);
        }
        if (i10 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10)).connect(3, this.mView.getId(), 4, 0);
        }
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties alpha(float f8) {
        this.mView.setAlpha(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties center(int i9, int i10, int i11, int i12, int i13, int i14, float f8) {
        if (i11 < 0) {
            i.k("margin must be > 0");
            return null;
        }
        if (i14 < 0) {
            i.k("margin must be > 0");
            return null;
        }
        if (f8 <= 0.0f || f8 > 1.0f) {
            i.k("bias must be between 0 and 1 inclusive");
            return null;
        }
        if (i10 == 1 || i10 == 2) {
            connect(1, i9, i10, i11);
            connect(2, i12, i13, i14);
            this.mParams.horizontalBias = f8;
            return this;
        }
        if (i10 == 6 || i10 == 7) {
            connect(6, i9, i10, i11);
            connect(7, i12, i13, i14);
            this.mParams.horizontalBias = f8;
            return this;
        }
        connect(3, i9, i10, i11);
        connect(4, i12, i13, i14);
        this.mParams.verticalBias = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties centerHorizontally(int i9) {
        if (i9 == 0) {
            center(0, 1, 0, 0, 2, 0, 0.5f);
            return this;
        }
        center(i9, 2, 0, i9, 1, 0, 0.5f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties centerHorizontallyRtl(int i9) {
        if (i9 == 0) {
            center(0, 6, 0, 0, 7, 0, 0.5f);
            return this;
        }
        center(i9, 7, 0, i9, 6, 0, 0.5f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties centerVertically(int i9) {
        if (i9 == 0) {
            center(0, 3, 0, 0, 4, 0, 0.5f);
            return this;
        }
        center(i9, 4, 0, i9, 3, 0, 0.5f);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties connect(int i9, int i10, int i11, int i12) {
        switch (i9) {
            case 1:
                if (i11 == 1) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams = this.mParams;
                    constraintLayout$LayoutParams.leftToLeft = i10;
                    constraintLayout$LayoutParams.leftToRight = -1;
                } else {
                    if (i11 != 2) {
                        i.k(a.p(new StringBuilder("Left to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams2 = this.mParams;
                    constraintLayout$LayoutParams2.leftToRight = i10;
                    constraintLayout$LayoutParams2.leftToLeft = -1;
                }
                ((ViewGroup$MarginLayoutParams) this.mParams).leftMargin = i12;
                return this;
            case 2:
                if (i11 == 1) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams3 = this.mParams;
                    constraintLayout$LayoutParams3.rightToLeft = i10;
                    constraintLayout$LayoutParams3.rightToRight = -1;
                } else {
                    if (i11 != 2) {
                        i.k(a.p(new StringBuilder("right to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams4 = this.mParams;
                    constraintLayout$LayoutParams4.rightToRight = i10;
                    constraintLayout$LayoutParams4.rightToLeft = -1;
                }
                ((ViewGroup$MarginLayoutParams) this.mParams).rightMargin = i12;
                return this;
            case 3:
                if (i11 == 3) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams5 = this.mParams;
                    constraintLayout$LayoutParams5.topToTop = i10;
                    constraintLayout$LayoutParams5.topToBottom = -1;
                    constraintLayout$LayoutParams5.baselineToBaseline = -1;
                    constraintLayout$LayoutParams5.baselineToTop = -1;
                    constraintLayout$LayoutParams5.baselineToBottom = -1;
                } else {
                    if (i11 != 4) {
                        i.k(a.p(new StringBuilder("right to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams6 = this.mParams;
                    constraintLayout$LayoutParams6.topToBottom = i10;
                    constraintLayout$LayoutParams6.topToTop = -1;
                    constraintLayout$LayoutParams6.baselineToBaseline = -1;
                    constraintLayout$LayoutParams6.baselineToTop = -1;
                    constraintLayout$LayoutParams6.baselineToBottom = -1;
                }
                ((ViewGroup$MarginLayoutParams) this.mParams).topMargin = i12;
                return this;
            case 4:
                if (i11 == 4) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams7 = this.mParams;
                    constraintLayout$LayoutParams7.bottomToBottom = i10;
                    constraintLayout$LayoutParams7.bottomToTop = -1;
                    constraintLayout$LayoutParams7.baselineToBaseline = -1;
                    constraintLayout$LayoutParams7.baselineToTop = -1;
                    constraintLayout$LayoutParams7.baselineToBottom = -1;
                } else {
                    if (i11 != 3) {
                        i.k(a.p(new StringBuilder("right to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams8 = this.mParams;
                    constraintLayout$LayoutParams8.bottomToTop = i10;
                    constraintLayout$LayoutParams8.bottomToBottom = -1;
                    constraintLayout$LayoutParams8.baselineToBaseline = -1;
                    constraintLayout$LayoutParams8.baselineToTop = -1;
                    constraintLayout$LayoutParams8.baselineToBottom = -1;
                }
                ((ViewGroup$MarginLayoutParams) this.mParams).bottomMargin = i12;
                return this;
            case 5:
                if (i11 == 5) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams9 = this.mParams;
                    constraintLayout$LayoutParams9.baselineToBaseline = i10;
                    constraintLayout$LayoutParams9.bottomToBottom = -1;
                    constraintLayout$LayoutParams9.bottomToTop = -1;
                    constraintLayout$LayoutParams9.topToTop = -1;
                    constraintLayout$LayoutParams9.topToBottom = -1;
                } else if (i11 == 3) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams10 = this.mParams;
                    constraintLayout$LayoutParams10.baselineToTop = i10;
                    constraintLayout$LayoutParams10.bottomToBottom = -1;
                    constraintLayout$LayoutParams10.bottomToTop = -1;
                    constraintLayout$LayoutParams10.topToTop = -1;
                    constraintLayout$LayoutParams10.topToBottom = -1;
                } else {
                    if (i11 != 4) {
                        i.k(a.p(new StringBuilder("right to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams11 = this.mParams;
                    constraintLayout$LayoutParams11.baselineToBottom = i10;
                    constraintLayout$LayoutParams11.bottomToBottom = -1;
                    constraintLayout$LayoutParams11.bottomToTop = -1;
                    constraintLayout$LayoutParams11.topToTop = -1;
                    constraintLayout$LayoutParams11.topToBottom = -1;
                }
                this.mParams.baselineMargin = i12;
                return this;
            case 6:
                if (i11 == 6) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams12 = this.mParams;
                    constraintLayout$LayoutParams12.startToStart = i10;
                    constraintLayout$LayoutParams12.startToEnd = -1;
                } else {
                    if (i11 != 7) {
                        i.k(a.p(new StringBuilder("right to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams13 = this.mParams;
                    constraintLayout$LayoutParams13.startToEnd = i10;
                    constraintLayout$LayoutParams13.startToStart = -1;
                }
                this.mParams.setMarginStart(i12);
                return this;
            case 7:
                if (i11 == 7) {
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams14 = this.mParams;
                    constraintLayout$LayoutParams14.endToEnd = i10;
                    constraintLayout$LayoutParams14.endToStart = -1;
                } else {
                    if (i11 != 6) {
                        i.k(a.p(new StringBuilder("right to "), sideToString(i11), " undefined"));
                        return null;
                    }
                    ConstraintLayout$LayoutParams constraintLayout$LayoutParams15 = this.mParams;
                    constraintLayout$LayoutParams15.endToStart = i10;
                    constraintLayout$LayoutParams15.endToEnd = -1;
                }
                this.mParams.setMarginEnd(i12);
                return this;
            default:
                StringBuilder sb = new StringBuilder();
                sb.append(sideToString(i9));
                sb.append(" to ");
                i.k(a.p(sb, sideToString(i11), " unknown"));
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainDefaultHeight(int i9) {
        this.mParams.matchConstraintDefaultHeight = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainDefaultWidth(int i9) {
        this.mParams.matchConstraintDefaultWidth = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainHeight(int i9) {
        ((ViewGroup$MarginLayoutParams) this.mParams).height = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainMaxHeight(int i9) {
        this.mParams.matchConstraintMaxHeight = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainMaxWidth(int i9) {
        this.mParams.matchConstraintMaxWidth = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainMinHeight(int i9) {
        this.mParams.matchConstraintMinHeight = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainMinWidth(int i9) {
        this.mParams.matchConstraintMinWidth = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties constrainWidth(int i9) {
        ((ViewGroup$MarginLayoutParams) this.mParams).width = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties dimensionRatio(String str) {
        this.mParams.dimensionRatio = str;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties elevation(float f8) {
        this.mView.setElevation(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties goneMargin(int i9, int i10) {
        switch (i9) {
            case 1:
                this.mParams.goneLeftMargin = i10;
                return this;
            case 2:
                this.mParams.goneRightMargin = i10;
                return this;
            case 3:
                this.mParams.goneTopMargin = i10;
                return this;
            case 4:
                this.mParams.goneBottomMargin = i10;
                return this;
            case 5:
                i.k("baseline does not support margins");
                return null;
            case 6:
                this.mParams.goneStartMargin = i10;
                return this;
            case 7:
                this.mParams.goneEndMargin = i10;
                return this;
            default:
                i.k("unknown constraint");
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties horizontalBias(float f8) {
        this.mParams.horizontalBias = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties horizontalChainStyle(int i9) {
        this.mParams.horizontalChainStyle = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties horizontalWeight(float f8) {
        this.mParams.horizontalWeight = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties margin(int i9, int i10) {
        switch (i9) {
            case 1:
                ((ViewGroup$MarginLayoutParams) this.mParams).leftMargin = i10;
                return this;
            case 2:
                ((ViewGroup$MarginLayoutParams) this.mParams).rightMargin = i10;
                return this;
            case 3:
                ((ViewGroup$MarginLayoutParams) this.mParams).topMargin = i10;
                return this;
            case 4:
                ((ViewGroup$MarginLayoutParams) this.mParams).bottomMargin = i10;
                return this;
            case 5:
                i.k("baseline does not support margins");
                return null;
            case 6:
                this.mParams.setMarginStart(i10);
                return this;
            case 7:
                this.mParams.setMarginEnd(i10);
                return this;
            default:
                i.k("unknown constraint");
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties removeConstraints(int i9) {
        switch (i9) {
            case 1:
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams = this.mParams;
                constraintLayout$LayoutParams.leftToRight = -1;
                constraintLayout$LayoutParams.leftToLeft = -1;
                ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams).leftMargin = -1;
                constraintLayout$LayoutParams.goneLeftMargin = Integer.MIN_VALUE;
                return this;
            case 2:
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams2 = this.mParams;
                constraintLayout$LayoutParams2.rightToRight = -1;
                constraintLayout$LayoutParams2.rightToLeft = -1;
                ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams2).rightMargin = -1;
                constraintLayout$LayoutParams2.goneRightMargin = Integer.MIN_VALUE;
                return this;
            case 3:
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams3 = this.mParams;
                constraintLayout$LayoutParams3.topToBottom = -1;
                constraintLayout$LayoutParams3.topToTop = -1;
                ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams3).topMargin = -1;
                constraintLayout$LayoutParams3.goneTopMargin = Integer.MIN_VALUE;
                return this;
            case 4:
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams4 = this.mParams;
                constraintLayout$LayoutParams4.bottomToTop = -1;
                constraintLayout$LayoutParams4.bottomToBottom = -1;
                ((ViewGroup$MarginLayoutParams) constraintLayout$LayoutParams4).bottomMargin = -1;
                constraintLayout$LayoutParams4.goneBottomMargin = Integer.MIN_VALUE;
                return this;
            case 5:
                this.mParams.baselineToBaseline = -1;
                return this;
            case 6:
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams5 = this.mParams;
                constraintLayout$LayoutParams5.startToEnd = -1;
                constraintLayout$LayoutParams5.startToStart = -1;
                constraintLayout$LayoutParams5.setMarginStart(-1);
                this.mParams.goneStartMargin = Integer.MIN_VALUE;
                return this;
            case 7:
                ConstraintLayout$LayoutParams constraintLayout$LayoutParams6 = this.mParams;
                constraintLayout$LayoutParams6.endToStart = -1;
                constraintLayout$LayoutParams6.endToEnd = -1;
                constraintLayout$LayoutParams6.setMarginEnd(-1);
                this.mParams.goneEndMargin = Integer.MIN_VALUE;
                return this;
            default:
                i.k("unknown constraint");
                return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties removeFromHorizontalChain() {
        ConstraintLayout$LayoutParams constraintLayout$LayoutParams = this.mParams;
        int i9 = constraintLayout$LayoutParams.leftToRight;
        int i10 = constraintLayout$LayoutParams.rightToLeft;
        if (i9 != -1 || i10 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10));
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams2 = this.mParams;
            if (i9 != -1 && i10 != -1) {
                constraintProperties.connect(2, i10, 1, 0);
                constraintProperties2.connect(1, i9, 2, 0);
            } else if (i9 != -1 || i10 != -1) {
                int i11 = constraintLayout$LayoutParams2.rightToRight;
                if (i11 != -1) {
                    constraintProperties.connect(2, i11, 2, 0);
                } else {
                    int i12 = constraintLayout$LayoutParams2.leftToLeft;
                    if (i12 != -1) {
                        constraintProperties2.connect(1, i12, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
            return this;
        }
        int i13 = constraintLayout$LayoutParams.startToEnd;
        int i14 = constraintLayout$LayoutParams.endToStart;
        if (i13 != -1 || i14 != -1) {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i13));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i14));
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams3 = this.mParams;
            if (i13 != -1 && i14 != -1) {
                constraintProperties3.connect(7, i14, 6, 0);
                constraintProperties4.connect(6, i9, 7, 0);
            } else if (i9 != -1 || i14 != -1) {
                int i15 = constraintLayout$LayoutParams3.rightToRight;
                if (i15 != -1) {
                    constraintProperties3.connect(7, i15, 7, 0);
                } else {
                    int i16 = constraintLayout$LayoutParams3.leftToLeft;
                    if (i16 != -1) {
                        constraintProperties4.connect(6, i16, 6, 0);
                    }
                }
            }
        }
        removeConstraints(6);
        removeConstraints(7);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties removeFromVerticalChain() {
        ConstraintLayout$LayoutParams constraintLayout$LayoutParams = this.mParams;
        int i9 = constraintLayout$LayoutParams.topToBottom;
        int i10 = constraintLayout$LayoutParams.bottomToTop;
        if (i9 != -1 || i10 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i9));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i10));
            ConstraintLayout$LayoutParams constraintLayout$LayoutParams2 = this.mParams;
            if (i9 != -1 && i10 != -1) {
                constraintProperties.connect(4, i10, 3, 0);
                constraintProperties2.connect(3, i9, 4, 0);
            } else if (i9 != -1 || i10 != -1) {
                int i11 = constraintLayout$LayoutParams2.bottomToBottom;
                if (i11 != -1) {
                    constraintProperties.connect(4, i11, 4, 0);
                } else {
                    int i12 = constraintLayout$LayoutParams2.topToTop;
                    if (i12 != -1) {
                        constraintProperties2.connect(3, i12, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties rotation(float f8) {
        this.mView.setRotation(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties rotationX(float f8) {
        this.mView.setRotationX(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties rotationY(float f8) {
        this.mView.setRotationY(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties scaleX(float f8) {
        this.mView.setScaleY(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties transformPivot(float f8, float f9) {
        this.mView.setPivotX(f8);
        this.mView.setPivotY(f9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties transformPivotX(float f8) {
        this.mView.setPivotX(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties transformPivotY(float f8) {
        this.mView.setPivotY(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties translation(float f8, float f9) {
        this.mView.setTranslationX(f8);
        this.mView.setTranslationY(f9);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties translationX(float f8) {
        this.mView.setTranslationX(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties translationY(float f8) {
        this.mView.setTranslationY(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties translationZ(float f8) {
        this.mView.setTranslationZ(f8);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties verticalBias(float f8) {
        this.mParams.verticalBias = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties verticalChainStyle(int i9) {
        this.mParams.verticalChainStyle = i9;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties verticalWeight(float f8) {
        this.mParams.verticalWeight = f8;
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ConstraintProperties visibility(int i9) {
        this.mView.setVisibility(i9);
        return this;
    }

    public void apply() {
    }

    public ConstraintProperties scaleY(float f8) {
        return this;
    }

    public ConstraintProperties centerHorizontally(int i9, int i10, int i11, int i12, int i13, int i14, float f8) {
        connect(1, i9, i10, i11);
        connect(2, i12, i13, i14);
        this.mParams.horizontalBias = f8;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i9, int i10, int i11, int i12, int i13, int i14, float f8) {
        connect(6, i9, i10, i11);
        connect(7, i12, i13, i14);
        this.mParams.horizontalBias = f8;
        return this;
    }

    public ConstraintProperties centerVertically(int i9, int i10, int i11, int i12, int i13, int i14, float f8) {
        connect(3, i9, i10, i11);
        connect(4, i12, i13, i14);
        this.mParams.verticalBias = f8;
        return this;
    }
}
