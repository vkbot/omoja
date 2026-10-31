package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.state.State$Helper;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlowReference extends HelperReference {
    protected float mFirstHorizontalBias;
    protected int mFirstHorizontalStyle;
    protected float mFirstVerticalBias;
    protected int mFirstVerticalStyle;
    protected Flow mFlow;
    protected int mHorizontalAlign;
    protected int mHorizontalGap;
    protected int mHorizontalStyle;
    protected float mLastHorizontalBias;
    protected int mLastHorizontalStyle;
    protected float mLastVerticalBias;
    protected int mLastVerticalStyle;
    protected HashMap<String, Float> mMapPostMargin;
    protected HashMap<String, Float> mMapPreMargin;
    protected HashMap<String, Float> mMapWeights;
    protected int mMaxElementsWrap;
    protected int mOrientation;
    protected int mPaddingBottom;
    protected int mPaddingLeft;
    protected int mPaddingRight;
    protected int mPaddingTop;
    protected int mVerticalAlign;
    protected int mVerticalGap;
    protected int mVerticalStyle;
    protected int mWrapMode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FlowReference(State state, State$Helper state$Helper) {
        super(state, state$Helper);
        this.mWrapMode = 0;
        this.mVerticalStyle = -1;
        this.mFirstVerticalStyle = -1;
        this.mLastVerticalStyle = -1;
        this.mHorizontalStyle = -1;
        this.mFirstHorizontalStyle = -1;
        this.mLastHorizontalStyle = -1;
        this.mVerticalAlign = 2;
        this.mHorizontalAlign = 2;
        this.mVerticalGap = 0;
        this.mHorizontalGap = 0;
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        this.mMaxElementsWrap = -1;
        this.mOrientation = 0;
        this.mFirstVerticalBias = 0.5f;
        this.mLastVerticalBias = 0.5f;
        this.mFirstHorizontalBias = 0.5f;
        this.mLastHorizontalBias = 0.5f;
        if (state$Helper == State$Helper.VERTICAL_FLOW) {
            this.mOrientation = 1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addFlowElement(String str, float f8, float f9, float f10) {
        super.add(str);
        if (!Float.isNaN(f8)) {
            if (this.mMapWeights == null) {
                this.mMapWeights = new HashMap<>();
            }
            this.mMapWeights.put(str, Float.valueOf(f8));
        }
        if (!Float.isNaN(f9)) {
            if (this.mMapPreMargin == null) {
                this.mMapPreMargin = new HashMap<>();
            }
            this.mMapPreMargin.put(str, Float.valueOf(f9));
        }
        if (Float.isNaN(f10)) {
            return;
        }
        if (this.mMapPostMargin == null) {
            this.mMapPostMargin = new HashMap<>();
        }
        this.mMapPostMargin.put(str, Float.valueOf(f10));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public void apply() {
        getHelperWidget();
        setConstraintWidget(this.mFlow);
        this.mFlow.setOrientation(this.mOrientation);
        this.mFlow.setWrapMode(this.mWrapMode);
        int i9 = this.mMaxElementsWrap;
        if (i9 != -1) {
            this.mFlow.setMaxElementsWrap(i9);
        }
        int i10 = this.mPaddingLeft;
        if (i10 != 0) {
            this.mFlow.setPaddingLeft(i10);
        }
        int i11 = this.mPaddingTop;
        if (i11 != 0) {
            this.mFlow.setPaddingTop(i11);
        }
        int i12 = this.mPaddingRight;
        if (i12 != 0) {
            this.mFlow.setPaddingRight(i12);
        }
        int i13 = this.mPaddingBottom;
        if (i13 != 0) {
            this.mFlow.setPaddingBottom(i13);
        }
        int i14 = this.mHorizontalGap;
        if (i14 != 0) {
            this.mFlow.setHorizontalGap(i14);
        }
        int i15 = this.mVerticalGap;
        if (i15 != 0) {
            this.mFlow.setVerticalGap(i15);
        }
        float f8 = this.mHorizontalBias;
        if (f8 != 0.5f) {
            this.mFlow.setHorizontalBias(f8);
        }
        float f9 = this.mFirstHorizontalBias;
        if (f9 != 0.5f) {
            this.mFlow.setFirstHorizontalBias(f9);
        }
        float f10 = this.mLastHorizontalBias;
        if (f10 != 0.5f) {
            this.mFlow.setLastHorizontalBias(f10);
        }
        float f11 = this.mVerticalBias;
        if (f11 != 0.5f) {
            this.mFlow.setVerticalBias(f11);
        }
        float f12 = this.mFirstVerticalBias;
        if (f12 != 0.5f) {
            this.mFlow.setFirstVerticalBias(f12);
        }
        float f13 = this.mLastVerticalBias;
        if (f13 != 0.5f) {
            this.mFlow.setLastVerticalBias(f13);
        }
        int i16 = this.mHorizontalAlign;
        if (i16 != 2) {
            this.mFlow.setHorizontalAlign(i16);
        }
        int i17 = this.mVerticalAlign;
        if (i17 != 2) {
            this.mFlow.setVerticalAlign(i17);
        }
        int i18 = this.mVerticalStyle;
        if (i18 != -1) {
            this.mFlow.setVerticalStyle(i18);
        }
        int i19 = this.mFirstVerticalStyle;
        if (i19 != -1) {
            this.mFlow.setFirstVerticalStyle(i19);
        }
        int i20 = this.mLastVerticalStyle;
        if (i20 != -1) {
            this.mFlow.setLastVerticalStyle(i20);
        }
        int i21 = this.mHorizontalStyle;
        if (i21 != -1) {
            this.mFlow.setHorizontalStyle(i21);
        }
        int i22 = this.mFirstHorizontalStyle;
        if (i22 != -1) {
            this.mFlow.setFirstHorizontalStyle(i22);
        }
        int i23 = this.mLastHorizontalStyle;
        if (i23 != -1) {
            this.mFlow.setLastHorizontalStyle(i23);
        }
        applyBase();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFirstHorizontalBias() {
        return this.mFirstHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFirstHorizontalStyle() {
        return this.mFirstHorizontalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFirstVerticalBias() {
        return this.mFirstVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFirstVerticalStyle() {
        return this.mFirstVerticalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.core.state.HelperReference
    public HelperWidget getHelperWidget() {
        if (this.mFlow == null) {
            this.mFlow = new Flow();
        }
        return this.mFlow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHorizontalAlign() {
        return this.mHorizontalAlign;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getHorizontalBias() {
        return this.mHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHorizontalGap() {
        return this.mHorizontalGap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHorizontalStyle() {
        return this.mHorizontalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getLastHorizontalBias() {
        return this.mLastHorizontalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLastHorizontalStyle() {
        return this.mLastHorizontalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getLastVerticalBias() {
        return this.mLastVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLastVerticalStyle() {
        return this.mLastVerticalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMaxElementsWrap() {
        return this.mMaxElementsWrap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        return this.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingRight() {
        return this.mPaddingRight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPostMargin(String str) {
        HashMap<String, Float> map = this.mMapPreMargin;
        if (map == null || !map.containsKey(str)) {
            return 0.0f;
        }
        return this.mMapPreMargin.get(str).floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getPreMargin(String str) {
        HashMap<String, Float> map = this.mMapPostMargin;
        if (map == null || !map.containsKey(str)) {
            return 0.0f;
        }
        return this.mMapPostMargin.get(str).floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVerticalAlign() {
        return this.mVerticalAlign;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getVerticalBias() {
        return this.mVerticalBias;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVerticalGap() {
        return this.mVerticalGap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVerticalStyle() {
        return this.mVerticalStyle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getWeight(String str) {
        HashMap<String, Float> map = this.mMapWeights;
        if (map != null && map.containsKey(str)) {
            return this.mMapWeights.get(str).floatValue();
        }
        return -1.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWrapMode() {
        return this.mWrapMode;
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
    @Override // androidx.constraintlayout.core.state.HelperReference
    public void setHelperWidget(HelperWidget helperWidget) {
        if (helperWidget instanceof Flow) {
            this.mFlow = (Flow) helperWidget;
        } else {
            this.mFlow = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalAlign(int i9) {
        this.mHorizontalAlign = i9;
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
    public void setPaddingBottom(int i9) {
        this.mPaddingBottom = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingLeft(int i9) {
        this.mPaddingLeft = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingRight(int i9) {
        this.mPaddingRight = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setPaddingTop(int i9) {
        this.mPaddingTop = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalAlign(int i9) {
        this.mVerticalAlign = i9;
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
