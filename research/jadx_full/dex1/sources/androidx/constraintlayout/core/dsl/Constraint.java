package androidx.constraintlayout.core.dsl;

import ai.onnxruntime.a;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Constraint {
    public static final Constraint PARENT = new Constraint("parent");
    static int UNSET = Integer.MIN_VALUE;
    static Map<Constraint$ChainMode, String> chainModeMap;
    private float mCircleAngle;
    private String mCircleConstraint;
    private int mCircleRadius;
    private boolean mConstrainedHeight;
    private boolean mConstrainedWidth;
    private String mDimensionRatio;
    private int mEditorAbsoluteX;
    private int mEditorAbsoluteY;
    private int mHeight;
    private Constraint$Behaviour mHeightDefault;
    private int mHeightMax;
    private int mHeightMin;
    private float mHeightPercent;
    private float mHorizontalBias;
    private Constraint$ChainMode mHorizontalChainStyle;
    private float mHorizontalWeight;
    private final String mId;
    private String[] mReferenceIds;
    private float mVerticalBias;
    private Constraint$ChainMode mVerticalChainStyle;
    private float mVerticalWeight;
    private int mWidth;
    private Constraint$Behaviour mWidthDefault;
    private int mWidthMax;
    private int mWidthMin;
    private float mWidthPercent;
    String helperType = null;
    String helperJason = null;
    private Constraint$HAnchor mLeft = new Constraint$HAnchor(this, Constraint$HSide.LEFT);
    private Constraint$HAnchor mRight = new Constraint$HAnchor(this, Constraint$HSide.RIGHT);
    private Constraint$VAnchor mTop = new Constraint$VAnchor(this, Constraint$VSide.TOP);
    private Constraint$VAnchor mBottom = new Constraint$VAnchor(this, Constraint$VSide.BOTTOM);
    private Constraint$HAnchor mStart = new Constraint$HAnchor(this, Constraint$HSide.START);
    private Constraint$HAnchor mEnd = new Constraint$HAnchor(this, Constraint$HSide.END);
    private Constraint$VAnchor mBaseline = new Constraint$VAnchor(this, Constraint$VSide.BASELINE);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap map = new HashMap();
        chainModeMap = map;
        map.put(Constraint$ChainMode.SPREAD, "spread");
        chainModeMap.put(Constraint$ChainMode.SPREAD_INSIDE, "spread_inside");
        chainModeMap.put(Constraint$ChainMode.PACKED, "packed");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint(String str) {
        int i9 = UNSET;
        this.mWidth = i9;
        this.mHeight = i9;
        this.mHorizontalBias = Float.NaN;
        this.mVerticalBias = Float.NaN;
        this.mDimensionRatio = null;
        this.mCircleConstraint = null;
        this.mCircleRadius = Integer.MIN_VALUE;
        this.mCircleAngle = Float.NaN;
        this.mEditorAbsoluteX = Integer.MIN_VALUE;
        this.mEditorAbsoluteY = Integer.MIN_VALUE;
        this.mVerticalWeight = Float.NaN;
        this.mHorizontalWeight = Float.NaN;
        this.mHorizontalChainStyle = null;
        this.mVerticalChainStyle = null;
        this.mWidthDefault = null;
        this.mHeightDefault = null;
        this.mWidthMax = i9;
        this.mHeightMax = i9;
        this.mWidthMin = i9;
        this.mHeightMin = i9;
        this.mWidthPercent = Float.NaN;
        this.mHeightPercent = Float.NaN;
        this.mReferenceIds = null;
        this.mConstrainedWidth = false;
        this.mConstrainedHeight = false;
        this.mId = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$000(Constraint constraint) {
        return constraint.mId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void append(StringBuilder sb, String str, float f8) {
        if (Float.isNaN(f8)) {
            return;
        }
        sb.append(str);
        sb.append(":");
        sb.append(f8);
        sb.append(",\n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String convertStringArrayToString(String[] strArr) {
        StringBuilder sb = new StringBuilder("[");
        int i9 = 0;
        while (i9 < strArr.length) {
            sb.append(i9 == 0 ? "'" : ",'");
            sb.append(strArr[i9]);
            sb.append("'");
            i9++;
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$VAnchor getBaseline() {
        return this.mBaseline;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$VAnchor getBottom() {
        return this.mBottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getCircleAngle() {
        return this.mCircleAngle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getCircleConstraint() {
        return this.mCircleConstraint;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCircleRadius() {
        return this.mCircleRadius;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getDimensionRatio() {
        return this.mDimensionRatio;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEditorAbsoluteX() {
        return this.mEditorAbsoluteX;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getEditorAbsoluteY() {
        return this.mEditorAbsoluteY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$HAnchor getEnd() {
        return this.mEnd;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeight() {
        return this.mHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$Behaviour getHeightDefault() {
        return this.mHeightDefault;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeightMax() {
        return this.mHeightMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHeightMin() {
        return this.mHeightMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getHeightPercent() {
        return this.mHeightPercent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getHorizontalBias() {
        return this.mHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$ChainMode getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getHorizontalWeight() {
        return this.mHorizontalWeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$HAnchor getLeft() {
        return this.mLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String[] getReferenceIds() {
        return this.mReferenceIds;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$HAnchor getRight() {
        return this.mRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$HAnchor getStart() {
        return this.mStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$VAnchor getTop() {
        return this.mTop;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getVerticalBias() {
        return this.mVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$ChainMode getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getVerticalWeight() {
        return this.mVerticalWeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidth() {
        return this.mWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Constraint$Behaviour getWidthDefault() {
        return this.mWidthDefault;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidthMax() {
        return this.mWidthMax;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWidthMin() {
        return this.mWidthMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getWidthPercent() {
        return this.mWidthPercent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isConstrainedHeight() {
        return this.mConstrainedHeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isConstrainedWidth() {
        return this.mConstrainedWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToBaseline(Constraint$VAnchor constraint$VAnchor, int i9, int i10) {
        Constraint$VAnchor constraint$VAnchor2 = this.mBaseline;
        constraint$VAnchor2.mConnection = constraint$VAnchor;
        constraint$VAnchor2.mMargin = i9;
        constraint$VAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToBottom(Constraint$VAnchor constraint$VAnchor, int i9, int i10) {
        Constraint$VAnchor constraint$VAnchor2 = this.mBottom;
        constraint$VAnchor2.mConnection = constraint$VAnchor;
        constraint$VAnchor2.mMargin = i9;
        constraint$VAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToEnd(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        Constraint$HAnchor constraint$HAnchor2 = this.mEnd;
        constraint$HAnchor2.mConnection = constraint$HAnchor;
        constraint$HAnchor2.mMargin = i9;
        constraint$HAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToLeft(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        Constraint$HAnchor constraint$HAnchor2 = this.mLeft;
        constraint$HAnchor2.mConnection = constraint$HAnchor;
        constraint$HAnchor2.mMargin = i9;
        constraint$HAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToRight(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        Constraint$HAnchor constraint$HAnchor2 = this.mRight;
        constraint$HAnchor2.mConnection = constraint$HAnchor;
        constraint$HAnchor2.mMargin = i9;
        constraint$HAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToStart(Constraint$HAnchor constraint$HAnchor, int i9, int i10) {
        Constraint$HAnchor constraint$HAnchor2 = this.mStart;
        constraint$HAnchor2.mConnection = constraint$HAnchor;
        constraint$HAnchor2.mMargin = i9;
        constraint$HAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void linkToTop(Constraint$VAnchor constraint$VAnchor, int i9, int i10) {
        Constraint$VAnchor constraint$VAnchor2 = this.mTop;
        constraint$VAnchor2.mConnection = constraint$VAnchor;
        constraint$VAnchor2.mMargin = i9;
        constraint$VAnchor2.mGoneMargin = i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCircleAngle(float f8) {
        this.mCircleAngle = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCircleConstraint(String str) {
        this.mCircleConstraint = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCircleRadius(int i9) {
        this.mCircleRadius = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setConstrainedHeight(boolean z8) {
        this.mConstrainedHeight = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setConstrainedWidth(boolean z8) {
        this.mConstrainedWidth = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDimensionRatio(String str) {
        this.mDimensionRatio = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEditorAbsoluteX(int i9) {
        this.mEditorAbsoluteX = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEditorAbsoluteY(int i9) {
        this.mEditorAbsoluteY = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeight(int i9) {
        this.mHeight = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeightDefault(Constraint$Behaviour constraint$Behaviour) {
        this.mHeightDefault = constraint$Behaviour;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeightMax(int i9) {
        this.mHeightMax = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeightMin(int i9) {
        this.mHeightMin = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHeightPercent(float f8) {
        this.mHeightPercent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalBias(float f8) {
        this.mHorizontalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalChainStyle(Constraint$ChainMode constraint$ChainMode) {
        this.mHorizontalChainStyle = constraint$ChainMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalWeight(float f8) {
        this.mHorizontalWeight = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setReferenceIds(String[] strArr) {
        this.mReferenceIds = strArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalBias(float f8) {
        this.mVerticalBias = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalChainStyle(Constraint$ChainMode constraint$ChainMode) {
        this.mVerticalChainStyle = constraint$ChainMode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalWeight(float f8) {
        this.mVerticalWeight = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidth(int i9) {
        this.mWidth = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthDefault(Constraint$Behaviour constraint$Behaviour) {
        this.mWidthDefault = constraint$Behaviour;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthMax(int i9) {
        this.mWidthMax = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthMin(int i9) {
        this.mWidthMin = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWidthPercent(float f8) {
        this.mWidthPercent = f8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder(a.p(new StringBuilder(), this.mId, ":{\n"));
        this.mLeft.build(sb);
        this.mRight.build(sb);
        this.mTop.build(sb);
        this.mBottom.build(sb);
        this.mStart.build(sb);
        this.mEnd.build(sb);
        this.mBaseline.build(sb);
        if (this.mWidth != UNSET) {
            sb.append("width:");
            sb.append(this.mWidth);
            sb.append(",\n");
        }
        if (this.mHeight != UNSET) {
            sb.append("height:");
            sb.append(this.mHeight);
            sb.append(",\n");
        }
        append(sb, "horizontalBias", this.mHorizontalBias);
        append(sb, "verticalBias", this.mVerticalBias);
        if (this.mDimensionRatio != null) {
            sb.append("dimensionRatio:'");
            sb.append(this.mDimensionRatio);
            sb.append("',\n");
        }
        if (this.mCircleConstraint != null && (!Float.isNaN(this.mCircleAngle) || this.mCircleRadius != Integer.MIN_VALUE)) {
            sb.append("circular:['");
            sb.append(this.mCircleConstraint);
            sb.append("'");
            if (!Float.isNaN(this.mCircleAngle)) {
                sb.append(",");
                sb.append(this.mCircleAngle);
            }
            if (this.mCircleRadius != Integer.MIN_VALUE) {
                if (Float.isNaN(this.mCircleAngle)) {
                    sb.append(",0,");
                    sb.append(this.mCircleRadius);
                } else {
                    sb.append(",");
                    sb.append(this.mCircleRadius);
                }
            }
            sb.append("],\n");
        }
        append(sb, "verticalWeight", this.mVerticalWeight);
        append(sb, "horizontalWeight", this.mHorizontalWeight);
        if (this.mHorizontalChainStyle != null) {
            sb.append("horizontalChainStyle:'");
            sb.append(chainModeMap.get(this.mHorizontalChainStyle));
            sb.append("',\n");
        }
        if (this.mVerticalChainStyle != null) {
            sb.append("verticalChainStyle:'");
            sb.append(chainModeMap.get(this.mVerticalChainStyle));
            sb.append("',\n");
        }
        if (this.mWidthDefault != null) {
            int i9 = this.mWidthMax;
            int i10 = UNSET;
            if (i9 == i10 && this.mWidthMin == i10) {
                sb.append("width:'");
                sb.append(this.mWidthDefault.toString().toLowerCase());
                sb.append("',\n");
            } else {
                sb.append("width:{value:'");
                sb.append(this.mWidthDefault.toString().toLowerCase());
                sb.append("'");
                if (this.mWidthMax != UNSET) {
                    sb.append(",max:");
                    sb.append(this.mWidthMax);
                }
                if (this.mWidthMin != UNSET) {
                    sb.append(",min:");
                    sb.append(this.mWidthMin);
                }
                sb.append("},\n");
            }
        }
        if (this.mHeightDefault != null) {
            int i11 = this.mHeightMax;
            int i12 = UNSET;
            if (i11 == i12 && this.mHeightMin == i12) {
                sb.append("height:'");
                sb.append(this.mHeightDefault.toString().toLowerCase());
                sb.append("',\n");
            } else {
                sb.append("height:{value:'");
                sb.append(this.mHeightDefault.toString().toLowerCase());
                sb.append("'");
                if (this.mHeightMax != UNSET) {
                    sb.append(",max:");
                    sb.append(this.mHeightMax);
                }
                if (this.mHeightMin != UNSET) {
                    sb.append(",min:");
                    sb.append(this.mHeightMin);
                }
                sb.append("},\n");
            }
        }
        if (!Double.isNaN(this.mWidthPercent)) {
            sb.append("width:'");
            sb.append((int) this.mWidthPercent);
            sb.append("%',\n");
        }
        if (!Double.isNaN(this.mHeightPercent)) {
            sb.append("height:'");
            sb.append((int) this.mHeightPercent);
            sb.append("%',\n");
        }
        if (this.mReferenceIds != null) {
            sb.append("referenceIds:");
            sb.append(convertStringArrayToString(this.mReferenceIds));
            sb.append(",\n");
        }
        if (this.mConstrainedWidth) {
            sb.append("constrainedWidth:");
            sb.append(this.mConstrainedWidth);
            sb.append(",\n");
        }
        if (this.mConstrainedHeight) {
            sb.append("constrainedHeight:");
            sb.append(this.mConstrainedHeight);
            sb.append(",\n");
        }
        sb.append("},\n");
        return sb.toString();
    }

    public void linkToBaseline(Constraint$VAnchor constraint$VAnchor, int i9) {
        linkToBaseline(constraint$VAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToBottom(Constraint$VAnchor constraint$VAnchor, int i9) {
        linkToBottom(constraint$VAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToEnd(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToEnd(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToLeft(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToLeft(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToRight(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToRight(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToStart(Constraint$HAnchor constraint$HAnchor, int i9) {
        linkToStart(constraint$HAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToTop(Constraint$VAnchor constraint$VAnchor, int i9) {
        linkToTop(constraint$VAnchor, i9, Integer.MIN_VALUE);
    }

    public void linkToBaseline(Constraint$VAnchor constraint$VAnchor) {
        linkToBaseline(constraint$VAnchor, 0);
    }

    public void linkToBottom(Constraint$VAnchor constraint$VAnchor) {
        linkToBottom(constraint$VAnchor, 0);
    }

    public void linkToEnd(Constraint$HAnchor constraint$HAnchor) {
        linkToEnd(constraint$HAnchor, 0);
    }

    public void linkToLeft(Constraint$HAnchor constraint$HAnchor) {
        linkToLeft(constraint$HAnchor, 0);
    }

    public void linkToRight(Constraint$HAnchor constraint$HAnchor) {
        linkToRight(constraint$HAnchor, 0);
    }

    public void linkToStart(Constraint$HAnchor constraint$HAnchor) {
        linkToStart(constraint$HAnchor, 0);
    }

    public void linkToTop(Constraint$VAnchor constraint$VAnchor) {
        linkToTop(constraint$VAnchor, 0);
    }
}
