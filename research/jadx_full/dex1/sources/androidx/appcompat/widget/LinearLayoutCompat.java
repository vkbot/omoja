package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout$LayoutParams;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.R$styleable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R$styleable.LinearLayoutCompat, i9, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, R$styleable.LinearLayoutCompat, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i9, 0);
        int i10 = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_orientation, -1);
        if (i10 >= 0) {
            setOrientation(i10);
        }
        int i11 = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_gravity, -1);
        if (i11 >= 0) {
            setGravity(i11);
        }
        boolean z8 = tintTypedArrayObtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z8) {
            setBaselineAligned(z8);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(R$styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(R$styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(R$styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(R$styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformHeight(int i9, int i10) {
        int i11;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY);
        int i12 = 0;
        while (i12 < i9) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt.getVisibility() != 8) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height == -1) {
                    int i13 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width;
                    ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width = virtualChildAt.getMeasuredWidth();
                    i11 = i10;
                    measureChildWithMargins(virtualChildAt, i11, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width = i13;
                } else {
                    i11 = i10;
                }
            } else {
                i11 = i10;
            }
            i12++;
            i10 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformWidth(int i9, int i10) {
        int i11;
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY);
        int i12 = 0;
        while (i12 < i9) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt.getVisibility() != 8) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width == -1) {
                    int i13 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height;
                    ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height = virtualChildAt.getMeasuredHeight();
                    i11 = i10;
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i11, 0);
                    ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height = i13;
                } else {
                    i11 = i10;
                }
            } else {
                i11 = i10;
            }
            i12++;
            i10 = i11;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setChildFrame(View view, int i9, int i10, int i11, int i12) {
        view.layout(i9, i10, i11 + i9, i12 + i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return viewGroup$LayoutParams instanceof LinearLayoutCompat$LayoutParams;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i9;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i10 = 0; i10 < virtualChildCount; i10++) {
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i10)) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? virtualChildAt.getRight() + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin : (virtualChildAt.getLeft() - ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = virtualChildAt2.getLeft() - ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).leftMargin;
                    i9 = this.mDividerWidth;
                    right = left - i9;
                } else {
                    right = virtualChildAt2.getRight() + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).rightMargin;
                }
            } else if (zIsLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i9 = this.mDividerWidth;
                right = left - i9;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i9 = 0; i9 < virtualChildCount; i9++) {
            View virtualChildAt = getVirtualChildAt(i9);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i9)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayout$LayoutParams) ((LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LinearLayout$LayoutParams) ((LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams())).bottomMargin);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void drawHorizontalDivider(Canvas canvas, int i9) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i9, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i9);
        this.mDivider.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void drawVerticalDivider(Canvas canvas, int i9) {
        this.mDivider.setBounds(i9, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i9, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public LinearLayoutCompat$LayoutParams generateDefaultLayoutParams() {
        int i9 = this.mOrientation;
        if (i9 == 0) {
            return new LinearLayoutCompat$LayoutParams(-2, -2);
        }
        if (i9 == 1) {
            return new LinearLayoutCompat$LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public LinearLayoutCompat$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        if (viewGroup$LayoutParams instanceof LinearLayoutCompat$LayoutParams) {
            return new LinearLayoutCompat$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams);
        }
        return viewGroup$LayoutParams instanceof ViewGroup$MarginLayoutParams ? new LinearLayoutCompat$LayoutParams((ViewGroup$MarginLayoutParams) viewGroup$LayoutParams) : new LinearLayoutCompat$LayoutParams(viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public int getBaseline() {
        int i9;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i10 = this.mBaselineAlignedChildIndex;
        if (childCount <= i10) {
            ai.onnxruntime.b.h("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
            return 0;
        }
        View childAt = getChildAt(i10);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            ai.onnxruntime.b.h("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            return 0;
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i9 = this.mGravity & 112) != 48) {
            if (i9 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i9 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LinearLayout$LayoutParams) ((LinearLayoutCompat$LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildrenSkipCount(View view, int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @GravityInt
    public int getGravity() {
        return this.mGravity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLocationOffset(View view) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getNextLocationOffset(View view) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getOrientation() {
        return this.mOrientation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getShowDividers() {
        return this.mShowDividers;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getVirtualChildAt(int i9) {
        return getChildAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getVirtualChildCount() {
        return getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getWeightSum() {
        return this.mWeightSum;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public boolean hasDividerBeforeChildAt(int i9) {
        if (i9 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        int childCount = getChildCount();
        int i10 = this.mShowDividers;
        if (i9 == childCount) {
            return (i10 & 4) != 0;
        }
        if ((i10 & 2) != 0) {
            for (int i11 = i9 - 1; i11 >= 0; i11--) {
                if (getChildAt(i11).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:29:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:47:0x0101  */
    /* JADX WARN: Code duplicated, block: B:48:0x0106  */
    public void layoutHorizontal(int i9, int i10, int i11, int i12) {
        int paddingLeft;
        int i13;
        int i14;
        char c;
        char c9;
        int i15;
        int childrenSkipCount;
        int i16;
        int baseline;
        int i17;
        int i18;
        int i19;
        int measuredHeight;
        int i20;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i21 = i12 - i10;
        int paddingBottom = i21 - getPaddingBottom();
        int paddingBottom2 = (i21 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i22 = this.mGravity;
        int i23 = i22 & 112;
        boolean z8 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i22, getLayoutDirection());
        char c10 = 2;
        char c11 = 1;
        if (absoluteGravity != 1) {
            paddingLeft = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i11) - i9) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft() + (((i11 - i9) - this.mTotalLength) / 2);
        }
        if (zIsLayoutRtl) {
            i13 = virtualChildCount - 1;
            i14 = -1;
        } else {
            i13 = 0;
            i14 = 1;
        }
        int i24 = 0;
        while (i24 < virtualChildCount) {
            int i25 = (i14 * i24) + i13;
            int i26 = i24;
            View virtualChildAt = getVirtualChildAt(i25);
            if (virtualChildAt == null) {
                paddingLeft = measureNullChild(i25) + paddingLeft;
                childrenSkipCount = i26;
                i15 = paddingTop;
                c = c10;
                c9 = c11;
            } else {
                c = c10;
                c9 = c11;
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                    int i27 = paddingLeft;
                    if (z8) {
                        i16 = measuredHeight2;
                        baseline = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height != -1 ? virtualChildAt.getBaseline() : -1;
                        i17 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).gravity;
                        if (i17 < 0) {
                            i17 = i23;
                        }
                        i18 = i17 & 112;
                        i15 = paddingTop;
                        if (i18 != 16) {
                            if (i18 != 48) {
                                i19 = i15 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                                if (baseline != -1) {
                                    i19 = (iArr[c9] - baseline) + i19;
                                }
                            } else if (i18 != 80) {
                                i19 = i15;
                            } else {
                                i19 = (paddingBottom - i16) - ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                            }
                            if (hasDividerBeforeChildAt(i25)) {
                                i20 = i27 + this.mDividerWidth;
                            } else {
                                i20 = i27;
                            }
                            int i28 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + i20;
                            setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i28, i19, measuredWidth, i16);
                            int nextLocationOffset = getNextLocationOffset(virtualChildAt) + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin + measuredWidth + i28;
                            childrenSkipCount = getChildrenSkipCount(virtualChildAt, i25) + i26;
                            paddingLeft = nextLocationOffset;
                        } else {
                            i19 = ((paddingBottom2 - i16) / 2) + i15 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                            measuredHeight = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin;
                        }
                        i19 -= measuredHeight;
                        if (hasDividerBeforeChildAt(i25)) {
                            i20 = i27 + this.mDividerWidth;
                        } else {
                            i20 = i27;
                        }
                        int i29 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + i20;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i29, i19, measuredWidth, i16);
                        int nextLocationOffset2 = getNextLocationOffset(virtualChildAt) + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin + measuredWidth + i29;
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i25) + i26;
                        paddingLeft = nextLocationOffset2;
                    } else {
                        i16 = measuredHeight2;
                    }
                    i17 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).gravity;
                    if (i17 < 0) {
                        i17 = i23;
                    }
                    i18 = i17 & 112;
                    i15 = paddingTop;
                    if (i18 != 16) {
                        if (i18 != 48) {
                            i19 = i15 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                            if (baseline != -1) {
                                i19 = (iArr[c9] - baseline) + i19;
                            }
                        } else if (i18 != 80) {
                            i19 = i15;
                        } else {
                            i19 = (paddingBottom - i16) - ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        if (hasDividerBeforeChildAt(i25)) {
                            i20 = i27 + this.mDividerWidth;
                        } else {
                            i20 = i27;
                        }
                        int i210 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + i20;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i210, i19, measuredWidth, i16);
                        int nextLocationOffset3 = getNextLocationOffset(virtualChildAt) + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin + measuredWidth + i210;
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i25) + i26;
                        paddingLeft = nextLocationOffset3;
                    } else {
                        i19 = ((paddingBottom2 - i16) / 2) + i15 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                        measuredHeight = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin;
                    }
                    i19 -= measuredHeight;
                    if (hasDividerBeforeChildAt(i25)) {
                        i20 = i27 + this.mDividerWidth;
                    } else {
                        i20 = i27;
                    }
                    int i211 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + i20;
                    setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i211, i19, measuredWidth, i16);
                    int nextLocationOffset4 = getNextLocationOffset(virtualChildAt) + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin + measuredWidth + i211;
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt, i25) + i26;
                    paddingLeft = nextLocationOffset4;
                } else {
                    i15 = paddingTop;
                    childrenSkipCount = i26;
                }
            }
            i24 = childrenSkipCount + 1;
            c10 = c;
            c11 = c9;
            paddingTop = i15;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:31:0x009a  */
    public void layoutVertical(int i9, int i10, int i11, int i12) {
        int paddingTop;
        int i13;
        int i14;
        int i15;
        int paddingLeft = getPaddingLeft();
        int i16 = i11 - i9;
        int paddingRight = i16 - getPaddingRight();
        int paddingRight2 = (i16 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i17 = this.mGravity;
        int i18 = i17 & 112;
        int i19 = i17 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i18 != 16) {
            paddingTop = i18 != 80 ? getPaddingTop() : ((getPaddingTop() + i12) - i10) - this.mTotalLength;
        } else {
            paddingTop = (((i12 - i10) - this.mTotalLength) / 2) + getPaddingTop();
        }
        int childrenSkipCount = 0;
        while (childrenSkipCount < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                paddingTop = measureNullChild(childrenSkipCount) + paddingTop;
            } else {
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                    int i20 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).gravity;
                    if (i20 < 0) {
                        i20 = i19;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i20, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i15 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + paddingLeft;
                        } else {
                            i13 = paddingRight - measuredWidth;
                            i14 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin;
                        }
                        int i21 = i15;
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i22 = paddingTop + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                        setChildFrame(virtualChildAt, i21, getLocationOffset(virtualChildAt) + i22, measuredWidth, measuredHeight);
                        int nextLocationOffset = getNextLocationOffset(virtualChildAt) + measuredHeight + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin + i22;
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                        paddingTop = nextLocationOffset;
                    } else {
                        i13 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin;
                        i14 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin;
                    }
                    i15 = i13 - i14;
                    int i23 = i15;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i24 = paddingTop + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin;
                    setChildFrame(virtualChildAt, i23, getLocationOffset(virtualChildAt) + i24, measuredWidth, measuredHeight);
                    int nextLocationOffset2 = getNextLocationOffset(virtualChildAt) + measuredHeight + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin + i24;
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    paddingTop = nextLocationOffset2;
                }
                childrenSkipCount++;
            }
            childrenSkipCount++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void measureChildBeforeLayout(View view, int i9, int i10, int i11, int i12, int i13) {
        measureChildWithMargins(view, i10, i11, i12, i13);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:204:0x0453  */
    public void measureHorizontal(int i9, int i10) {
        int i11;
        int i12;
        float f8;
        int i13;
        int i14;
        int i15;
        int iMax;
        int i16;
        int baseline;
        int i17;
        int i18;
        byte b9;
        int i19;
        int i20;
        int i21;
        boolean z8;
        View view;
        boolean z9;
        int baseline2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z10 = this.mBaselineAligned;
        boolean z11 = this.mUseLargestChild;
        int i22 = BasicMeasure.EXACTLY;
        boolean z12 = mode == 1073741824;
        boolean z13 = z11;
        int childrenSkipCount = 0;
        int i23 = 0;
        int iMax2 = 0;
        boolean z14 = false;
        int iCombineMeasuredStates = 0;
        boolean z15 = false;
        boolean z16 = true;
        float f9 = 0.0f;
        int iMax3 = 0;
        int iMax4 = 0;
        while (true) {
            i11 = i23;
            if (childrenSkipCount >= virtualChildCount) {
                break;
            }
            boolean z17 = z10;
            View virtualChildAt = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt == null) {
                this.mTotalLength = measureNullChild(childrenSkipCount) + this.mTotalLength;
            } else {
                if (virtualChildAt.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerWidth;
                    }
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                    float f10 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).weight;
                    float f11 = f9 + f10;
                    if (mode == i22 && ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width == 0 && f10 > 0.0f) {
                        int i24 = this.mTotalLength;
                        if (z12) {
                            this.mTotalLength = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin + i24;
                        } else {
                            this.mTotalLength = Math.max(i24, ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + i24 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin);
                        }
                        if (z17) {
                            int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        } else {
                            z14 = true;
                        }
                        i20 = i11;
                        i21 = BasicMeasure.EXACTLY;
                        z8 = z13;
                        view = virtualChildAt;
                    } else {
                        if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width != 0 || f10 <= 0.0f) {
                            b9 = -2;
                            i19 = Integer.MIN_VALUE;
                        } else {
                            b9 = -2;
                            ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width = -2;
                            i19 = 0;
                        }
                        int i25 = f11 == 0.0f ? this.mTotalLength : 0;
                        virtualChildCount = virtualChildCount;
                        mode = mode;
                        iArr = iArr;
                        i20 = i11;
                        i21 = BasicMeasure.EXACTLY;
                        z8 = z13;
                        iArr2 = iArr2;
                        int i26 = i19;
                        measureChildBeforeLayout(virtualChildAt, childrenSkipCount, i9, i25, i10, 0);
                        view = virtualChildAt;
                        if (i26 != Integer.MIN_VALUE) {
                            ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).width = i26;
                        }
                        int measuredWidth = view.getMeasuredWidth();
                        int i27 = this.mTotalLength;
                        if (z12) {
                            this.mTotalLength = getNextLocationOffset(view) + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + measuredWidth + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin + i27;
                        } else {
                            this.mTotalLength = Math.max(i27, getNextLocationOffset(view) + i27 + measuredWidth + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).rightMargin);
                        }
                        if (z8) {
                            iMax2 = Math.max(measuredWidth, iMax2);
                        }
                    }
                    if (mode2 == i21 || ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height != -1) {
                        z9 = false;
                    } else {
                        z9 = true;
                        z15 = true;
                    }
                    int i28 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin;
                    int measuredHeight = view.getMeasuredHeight() + i28;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z17 && (baseline2 = view.getBaseline()) != -1) {
                        int i29 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).gravity;
                        if (i29 < 0) {
                            i29 = this.mGravity;
                        }
                        int i30 = (((i29 & 112) >> 4) & (-2)) >> 1;
                        iArr[i30] = Math.max(iArr[i30], baseline2);
                        iArr2[i30] = Math.max(iArr2[i30], measuredHeight - baseline2);
                    }
                    int iMax5 = Math.max(i20, measuredHeight);
                    z16 = z16 && ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).height == -1;
                    if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).weight > 0.0f) {
                        if (!z9) {
                            i28 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i28);
                    } else {
                        if (z9 == 0) {
                            i28 = measuredHeight;
                        }
                        iMax3 = Math.max(iMax3, i28);
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    i23 = iMax5;
                    f9 = f11;
                }
                childrenSkipCount++;
                z13 = z8;
                iArr2 = iArr2;
                z10 = z17;
                mode = mode;
                iArr = iArr;
                virtualChildCount = virtualChildCount;
                i22 = BasicMeasure.EXACTLY;
            }
            virtualChildCount = virtualChildCount;
            mode = mode;
            iArr = iArr;
            iArr2 = iArr2;
            i23 = i11;
            z8 = z13;
            childrenSkipCount++;
            z13 = z8;
            iArr2 = iArr2;
            z10 = z17;
            mode = mode;
            iArr = iArr;
            virtualChildCount = virtualChildCount;
            i22 = BasicMeasure.EXACTLY;
        }
        boolean z18 = z10;
        int i31 = virtualChildCount;
        int i32 = mode;
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int iCombineMeasuredStates2 = iCombineMeasuredStates;
        boolean z19 = z13;
        if (this.mTotalLength > 0) {
            i12 = i31;
            if (hasDividerBeforeChildAt(i12)) {
                this.mTotalLength += this.mDividerWidth;
            }
        } else {
            i12 = i31;
        }
        int i33 = iArr3[1];
        int iMax6 = (i33 == -1 && iArr3[0] == -1 && iArr3[2] == -1 && iArr3[3] == -1) ? i11 : Math.max(i11, Math.max(iArr4[3], Math.max(iArr4[0], Math.max(iArr4[1], iArr4[2]))) + Math.max(iArr3[3], Math.max(iArr3[0], Math.max(i33, iArr3[2]))));
        if (z19) {
            i13 = i32;
            if (i13 == Integer.MIN_VALUE || i13 == 0) {
                this.mTotalLength = 0;
                int childrenSkipCount2 = 0;
                while (childrenSkipCount2 < i12) {
                    View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                    if (virtualChildAt2 == null) {
                        this.mTotalLength = measureNullChild(childrenSkipCount2) + this.mTotalLength;
                    } else {
                        if (virtualChildAt2.getVisibility() == 8) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                        } else {
                            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams();
                            int i34 = this.mTotalLength;
                            if (z12) {
                                this.mTotalLength = getNextLocationOffset(virtualChildAt2) + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).leftMargin + iMax2 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).rightMargin + i34;
                            } else {
                                this.mTotalLength = Math.max(i34, getNextLocationOffset(virtualChildAt2) + i34 + iMax2 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).rightMargin);
                            }
                        }
                        childrenSkipCount2++;
                        f9 = f9;
                    }
                    childrenSkipCount2++;
                    f9 = f9;
                }
            }
            f8 = f9;
        } else {
            f8 = f9;
            i13 = i32;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
        this.mTotalLength = paddingRight;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i9, 0);
        int i35 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z14 || (i35 != 0 && f8 > 0.0f)) {
            float f12 = this.mWeightSum;
            if (f12 > 0.0f) {
                f8 = f12;
            }
            iArr3[3] = -1;
            iArr3[2] = -1;
            iArr3[1] = -1;
            iArr3[0] = -1;
            iArr4[3] = -1;
            iArr4[2] = -1;
            iArr4[1] = -1;
            iArr4[0] = -1;
            this.mTotalLength = 0;
            iMax6 = -1;
            int i36 = 0;
            while (i36 < i12) {
                View virtualChildAt3 = getVirtualChildAt(i36);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    iResolveSizeAndState = iResolveSizeAndState;
                } else {
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams3 = (LinearLayoutCompat$LayoutParams) virtualChildAt3.getLayoutParams();
                    float f13 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).weight;
                    if (f13 > 0.0f) {
                        int i37 = (int) ((i35 * f13) / f8);
                        f8 -= f13;
                        i35 -= i37;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop() + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).topMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).bottomMargin, ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height);
                        if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).width == 0) {
                            i18 = BasicMeasure.EXACTLY;
                            if (i13 == 1073741824) {
                                if (i37 <= 0) {
                                    i37 = 0;
                                }
                                virtualChildAt3.measure(View$MeasureSpec.makeMeasureSpec(i37, BasicMeasure.EXACTLY), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        } else {
                            i18 = BasicMeasure.EXACTLY;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i37;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View$MeasureSpec.makeMeasureSpec(measuredWidth2, i18), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    }
                    int i38 = this.mTotalLength;
                    if (z12) {
                        this.mTotalLength = getNextLocationOffset(virtualChildAt3) + virtualChildAt3.getMeasuredWidth() + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).rightMargin + i38;
                    } else {
                        this.mTotalLength = Math.max(i38, getNextLocationOffset(virtualChildAt3) + virtualChildAt3.getMeasuredWidth() + i38 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).rightMargin);
                    }
                    boolean z20 = mode2 != 1073741824 && ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height == -1;
                    int i39 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).topMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i39;
                    iMax6 = Math.max(iMax6, measuredHeight2);
                    if (!z20) {
                        i39 = measuredHeight2;
                    }
                    int iMax7 = Math.max(iMax3, i39);
                    if (z16) {
                        i16 = -1;
                        boolean z21 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height == -1;
                        if (z18 && (baseline = virtualChildAt3.getBaseline()) != i16) {
                            i17 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).gravity;
                            if (i17 < 0) {
                                i17 = this.mGravity;
                            }
                            int i40 = (((i17 & 112) >> 4) & (-2)) >> 1;
                            iArr3[i40] = Math.max(iArr3[i40], baseline);
                            iArr4[i40] = Math.max(iArr4[i40], measuredHeight2 - baseline);
                        }
                        iMax3 = iMax7;
                        z16 = z21;
                    } else {
                        i16 = -1;
                    }
                    if (z18) {
                        i17 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).gravity;
                        if (i17 < 0) {
                            i17 = this.mGravity;
                        }
                        int i41 = (((i17 & 112) >> 4) & (-2)) >> 1;
                        iArr3[i41] = Math.max(iArr3[i41], baseline);
                        iArr4[i41] = Math.max(iArr4[i41], measuredHeight2 - baseline);
                    }
                    iMax3 = iMax7;
                    z16 = z21;
                }
                i36++;
                iResolveSizeAndState = iResolveSizeAndState;
            }
            i14 = iResolveSizeAndState;
            i15 = ViewCompat.MEASURED_STATE_MASK;
            this.mTotalLength = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
            int i42 = iArr3[1];
            if (i42 != -1 || iArr3[0] != -1 || iArr3[2] != -1 || iArr3[3] != -1) {
                iMax6 = Math.max(iMax6, Math.max(iArr4[3], Math.max(iArr4[0], Math.max(iArr4[1], iArr4[2]))) + Math.max(iArr3[3], Math.max(iArr3[0], Math.max(i42, iArr3[2]))));
            }
            iMax = iMax3;
        } else {
            iMax = Math.max(iMax3, iMax4);
            if (z19 && i13 != 1073741824) {
                for (int i43 = 0; i43 < i12; i43++) {
                    View virtualChildAt4 = getVirtualChildAt(i43);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayout$LayoutParams) ((LinearLayoutCompat$LayoutParams) virtualChildAt4.getLayoutParams())).weight > 0.0f) {
                        virtualChildAt4.measure(View$MeasureSpec.makeMeasureSpec(iMax2, BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), BasicMeasure.EXACTLY));
                    }
                }
            }
            i14 = iResolveSizeAndState;
            i15 = ViewCompat.MEASURED_STATE_MASK;
        }
        int i44 = iCombineMeasuredStates2;
        if (!z16 && mode2 != 1073741824) {
            iMax6 = iMax;
        }
        setMeasuredDimension(i14 | (i44 & i15), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax6, getSuggestedMinimumHeight()), i10, i44 << 16));
        if (z15) {
            forceUniformHeight(i12, i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int measureNullChild(int i9) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:64:0x0154 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x0157  */
    /* JADX WARN: Code duplicated, block: B:68:0x015e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0161  */
    public void measureVertical(int i9, int i10) {
        int i11;
        int iMax;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        View view;
        boolean z8;
        int iMax2;
        boolean z9;
        int iMax3;
        int i21;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        int i22 = this.mBaselineAlignedChildIndex;
        boolean z10 = this.mUseLargestChild;
        int childrenSkipCount = 0;
        int i23 = 0;
        int iMax4 = 0;
        int i24 = 0;
        int i25 = 0;
        int iMax5 = 0;
        boolean z11 = false;
        boolean z12 = false;
        float f8 = 0.0f;
        boolean z13 = true;
        while (true) {
            int i26 = 8;
            if (childrenSkipCount >= virtualChildCount) {
                float f9 = f8;
                int i27 = i23;
                int i28 = virtualChildCount;
                int i29 = mode2;
                boolean z14 = z10;
                int i30 = iMax4;
                int iMax6 = i24;
                int iCombineMeasuredStates = i25;
                if (this.mTotalLength > 0) {
                    i11 = i28;
                    if (hasDividerBeforeChildAt(i11)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i11 = i28;
                }
                int i31 = i29;
                if (z14 && (i31 == Integer.MIN_VALUE || i31 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < i11) {
                        View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt == null) {
                            this.mTotalLength = measureNullChild(childrenSkipCount2) + this.mTotalLength;
                        } else if (virtualChildAt.getVisibility() == i26) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                        } else {
                            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams = (LinearLayoutCompat$LayoutParams) virtualChildAt.getLayoutParams();
                            int i32 = this.mTotalLength;
                            this.mTotalLength = Math.max(i32, getNextLocationOffset(virtualChildAt) + i32 + i30 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).topMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams).bottomMargin);
                        }
                        childrenSkipCount2++;
                        i26 = 8;
                    }
                }
                int paddingBottom = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                this.mTotalLength = paddingBottom;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i10, 0);
                int i33 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z11 || (i33 != 0 && f9 > 0.0f)) {
                    float f10 = this.mWeightSum;
                    if (f10 <= 0.0f) {
                        f10 = f9;
                    }
                    this.mTotalLength = 0;
                    float f11 = f10;
                    int i34 = i33;
                    int i35 = 0;
                    while (i35 < i11) {
                        View virtualChildAt2 = getVirtualChildAt(i35);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i31 = i31;
                            i35 = i35;
                        } else {
                            LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams2 = (LinearLayoutCompat$LayoutParams) virtualChildAt2.getLayoutParams();
                            float f12 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).weight;
                            if (f12 > 0.0f) {
                                int i36 = (int) ((i34 * f12) / f11);
                                f11 -= f12;
                                i34 -= i36;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i9, getPaddingRight() + getPaddingLeft() + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).rightMargin, ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).width);
                                if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).height == 0) {
                                    i13 = BasicMeasure.EXACTLY;
                                    if (i31 == 1073741824) {
                                        virtualChildAt2.measure(childMeasureSpec, View$MeasureSpec.makeMeasureSpec(i36 > 0 ? i36 : 0, BasicMeasure.EXACTLY));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                } else {
                                    i13 = BasicMeasure.EXACTLY;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i36;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View$MeasureSpec.makeMeasureSpec(measuredHeight, i13));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                            } else {
                                i31 = i31;
                            }
                            int i37 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i37;
                            iMax6 = Math.max(iMax6, measuredWidth);
                            if (mode != 1073741824) {
                                i12 = -1;
                                if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).width == -1) {
                                    measuredWidth = i37;
                                }
                            } else {
                                i12 = -1;
                            }
                            int iMax7 = Math.max(iMax5, measuredWidth);
                            boolean z15 = z13 && ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).width == i12;
                            int i38 = this.mTotalLength;
                            this.mTotalLength = Math.max(i38, getNextLocationOffset(virtualChildAt2) + virtualChildAt2.getMeasuredHeight() + i38 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).topMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams2).bottomMargin);
                            iMax5 = iMax7;
                            z13 = z15;
                        }
                        i35++;
                        i31 = i31;
                    }
                    this.mTotalLength = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                    iMax = iMax5;
                } else {
                    iMax = Math.max(iMax5, i27);
                    if (z14 && i31 != 1073741824) {
                        for (int i39 = 0; i39 < i11; i39++) {
                            View virtualChildAt3 = getVirtualChildAt(i39);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout$LayoutParams) ((LinearLayoutCompat$LayoutParams) virtualChildAt3.getLayoutParams())).weight > 0.0f) {
                                virtualChildAt3.measure(View$MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), BasicMeasure.EXACTLY), View$MeasureSpec.makeMeasureSpec(i30, BasicMeasure.EXACTLY));
                            }
                        }
                    }
                }
                if (!z13 && mode != 1073741824) {
                    iMax6 = iMax;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax6, getSuggestedMinimumWidth()), i9, iCombineMeasuredStates), iResolveSizeAndState);
                if (z12) {
                    forceUniformWidth(i11, i10);
                    return;
                }
                return;
            }
            float f13 = f8;
            View virtualChildAt4 = getVirtualChildAt(childrenSkipCount);
            if (virtualChildAt4 == null) {
                this.mTotalLength = measureNullChild(childrenSkipCount) + this.mTotalLength;
            } else {
                if (virtualChildAt4.getVisibility() == 8) {
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt4, childrenSkipCount);
                } else {
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                    LinearLayoutCompat$LayoutParams linearLayoutCompat$LayoutParams3 = (LinearLayoutCompat$LayoutParams) virtualChildAt4.getLayoutParams();
                    float f14 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).weight;
                    float f15 = f13 + f14;
                    if (mode2 == 1073741824 && ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height == 0 && f14 > 0.0f) {
                        int i40 = this.mTotalLength;
                        this.mTotalLength = Math.max(i40, ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).topMargin + i40 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).bottomMargin);
                        iMax2 = i23;
                        i17 = virtualChildCount;
                        i18 = mode2;
                        z11 = true;
                        i20 = i24;
                        i19 = i25;
                        z8 = z10;
                    } else {
                        if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height != 0 || f14 <= 0.0f) {
                            i14 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height = -2;
                            i14 = 0;
                        }
                        if (f15 == 0.0f) {
                            int i41 = i25;
                            i16 = this.mTotalLength;
                            i15 = i41;
                        } else {
                            i15 = i25;
                            i16 = 0;
                        }
                        int i42 = iMax4;
                        i17 = virtualChildCount;
                        i18 = mode2;
                        i19 = i15;
                        i20 = i24;
                        view = virtualChildAt4;
                        z8 = z10;
                        iMax2 = i23;
                        measureChildBeforeLayout(view, childrenSkipCount, i9, 0, i10, i16);
                        if (i14 != Integer.MIN_VALUE) {
                            ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).height = i14;
                        }
                        int measuredHeight2 = view.getMeasuredHeight();
                        int i43 = this.mTotalLength;
                        this.mTotalLength = Math.max(i43, getNextLocationOffset(view) + i43 + measuredHeight2 + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).topMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).bottomMargin);
                        iMax4 = z8 ? Math.max(measuredHeight2, i42) : i42;
                    }
                    if (i22 >= 0 && i22 == childrenSkipCount + 1) {
                        view = virtualChildAt4;
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (childrenSkipCount < i22 && ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).weight > 0.0f) {
                        ai.onnxruntime.b.h("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        return;
                    }
                    if (mode == 1073741824 || ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).width != -1) {
                        z9 = false;
                    } else {
                        z9 = true;
                        z12 = true;
                    }
                    int i44 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).leftMargin + ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i44;
                    iMax3 = Math.max(i20, measuredWidth2);
                    int i45 = iMax4;
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i19, view.getMeasuredState());
                    if (z13) {
                        i21 = iCombineMeasuredStates2;
                        z13 = ((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).width == -1;
                        if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).weight > 0.0f) {
                            if (!z9) {
                                i44 = measuredWidth2;
                            }
                            iMax2 = Math.max(iMax2, i44);
                        } else {
                            if (!z9) {
                                i44 = measuredWidth2;
                            }
                            iMax5 = Math.max(iMax5, i44);
                        }
                        childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                        f8 = f15;
                        iMax4 = i45;
                        i25 = i21;
                    } else {
                        i21 = iCombineMeasuredStates2;
                    }
                    if (((LinearLayout$LayoutParams) linearLayoutCompat$LayoutParams3).weight > 0.0f) {
                        if (!z9) {
                            i44 = measuredWidth2;
                        }
                        iMax2 = Math.max(iMax2, i44);
                    } else {
                        if (!z9) {
                            i44 = measuredWidth2;
                        }
                        iMax5 = Math.max(iMax5, i44);
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    f8 = f15;
                    iMax4 = i45;
                    i25 = i21;
                }
                childrenSkipCount++;
                i24 = iMax3;
                i23 = iMax2;
                z10 = z8;
                mode2 = i18;
                virtualChildCount = i17;
            }
            iMax2 = i23;
            i17 = virtualChildCount;
            i18 = mode2;
            z8 = z10;
            f8 = f13;
            iMax3 = i24;
            childrenSkipCount++;
            i24 = iMax3;
            i23 = iMax2;
            z10 = z8;
            mode2 = i18;
            virtualChildCount = i17;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        if (this.mOrientation == 1) {
            layoutVertical(i9, i10, i11, i12);
        } else {
            layoutHorizontal(i9, i10, i11, i12);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        if (this.mOrientation == 1) {
            measureVertical(i9, i10);
        } else {
            measureHorizontal(i9, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBaselineAligned(boolean z8) {
        this.mBaselineAligned = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setBaselineAlignedChildIndex(int i9) {
        if (i9 >= 0 && i9 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i9;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDividerPadding(int i9) {
        this.mDividerPadding = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGravity(@GravityInt int i9) {
        if (this.mGravity != i9) {
            if ((8388615 & i9) == 0) {
                i9 |= GravityCompat.START;
            }
            if ((i9 & 112) == 0) {
                i9 |= 48;
            }
            this.mGravity = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHorizontalGravity(int i9) {
        int i10 = i9 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i11 = this.mGravity;
        if ((8388615 & i11) != i10) {
            this.mGravity = i10 | ((-8388616) & i11);
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMeasureWithLargestChildEnabled(boolean z8) {
        this.mUseLargestChild = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOrientation(int i9) {
        if (this.mOrientation != i9) {
            this.mOrientation = i9;
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setShowDividers(int i9) {
        if (i9 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setVerticalGravity(int i9) {
        int i10 = i9 & 112;
        int i11 = this.mGravity;
        if ((i11 & 112) != i10) {
            this.mGravity = i10 | (i11 & (-113));
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setWeightSum(float f8) {
        this.mWeightSum = Math.max(0.0f, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateDefaultLayoutParams() {
        return generateDefaultLayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams viewGroup$LayoutParams) {
        return generateLayoutParams(viewGroup$LayoutParams);
    }

    @Override // android.view.ViewGroup
    public LinearLayoutCompat$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayoutCompat$LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup$LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateLayoutParams(attributeSet);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }
}
