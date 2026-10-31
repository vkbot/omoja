package androidx.appcompat.widget;

import ai.onnxruntime.C0075b;
import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.activity.AbstractC0136k;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0148R;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.GravityCompat;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
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

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface DividerMode {
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {
        private int mBaselineAlignedChildIndexId;
        private int mBaselineAlignedId;
        private int mDividerId;
        private int mDividerPaddingId;
        private int mGravityId;
        private int mMeasureWithLargestChildId;
        private int mOrientationId;
        private boolean mPropertiesMapped = false;
        private int mShowDividersId;
        private int mWeightSumId;

        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.mBaselineAlignedId = propertyMapper.mapBoolean("baselineAligned", R.attr.baselineAligned);
            this.mBaselineAlignedChildIndexId = propertyMapper.mapInt("baselineAlignedChildIndex", R.attr.baselineAlignedChildIndex);
            this.mGravityId = propertyMapper.mapGravity("gravity", R.attr.gravity);
            this.mOrientationId = propertyMapper.mapIntEnum("orientation", R.attr.orientation, new IntFunction<String>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                public String apply(int i10) {
                    if (i10 != 0) {
                        return i10 != 1 ? String.valueOf(i10) : "vertical";
                    }
                    return "horizontal";
                }
            });
            this.mWeightSumId = propertyMapper.mapFloat("weightSum", R.attr.weightSum);
            this.mDividerId = propertyMapper.mapObject("divider", C0148R.attr.divider);
            this.mDividerPaddingId = propertyMapper.mapInt("dividerPadding", C0148R.attr.dividerPadding);
            this.mMeasureWithLargestChildId = propertyMapper.mapBoolean("measureWithLargestChild", C0148R.attr.measureWithLargestChild);
            this.mShowDividersId = propertyMapper.mapIntFlag("showDividers", C0148R.attr.showDividers, new IntFunction<Set<String>>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.2
                @Override // java.util.function.IntFunction
                public Set<String> apply(int i10) {
                    HashSet hashSet = new HashSet();
                    if (i10 == 0) {
                        hashSet.add("none");
                    }
                    if (i10 == 1) {
                        hashSet.add("beginning");
                    }
                    if (i10 == 2) {
                        hashSet.add("middle");
                    }
                    if (i10 == 4) {
                        hashSet.add("end");
                    }
                    return hashSet;
                }
            });
            this.mPropertiesMapped = true;
        }

        public void readProperties(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw AbstractC0136k.m354f();
            }
            propertyReader.readBoolean(this.mBaselineAlignedId, linearLayoutCompat.isBaselineAligned());
            propertyReader.readInt(this.mBaselineAlignedChildIndexId, linearLayoutCompat.getBaselineAlignedChildIndex());
            propertyReader.readGravity(this.mGravityId, linearLayoutCompat.getGravity());
            propertyReader.readIntEnum(this.mOrientationId, linearLayoutCompat.getOrientation());
            propertyReader.readFloat(this.mWeightSumId, linearLayoutCompat.getWeightSum());
            propertyReader.readObject(this.mDividerId, linearLayoutCompat.getDividerDrawable());
            propertyReader.readInt(this.mDividerPaddingId, linearLayoutCompat.getDividerPadding());
            propertyReader.readBoolean(this.mMeasureWithLargestChildId, linearLayoutCompat.isMeasureWithLargestChildEnabled());
            propertyReader.readIntFlag(this.mShowDividersId, linearLayoutCompat.getShowDividers());
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0148R.styleable.LinearLayoutCompat, i10, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0148R.styleable.LinearLayoutCompat, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i10, 0);
        int i11 = tintTypedArrayObtainStyledAttributes.getInt(C0148R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i11 >= 0) {
            setOrientation(i11);
        }
        int i12 = tintTypedArrayObtainStyledAttributes.getInt(C0148R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i12 >= 0) {
            setGravity(i12);
        }
        boolean z9 = tintTypedArrayObtainStyledAttributes.getBoolean(C0148R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z9) {
            setBaselineAligned(z9);
        }
        this.mWeightSum = tintTypedArrayObtainStyledAttributes.getFloat(C0148R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = tintTypedArrayObtainStyledAttributes.getInt(C0148R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = tintTypedArrayObtainStyledAttributes.getBoolean(C0148R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(C0148R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = tintTypedArrayObtainStyledAttributes.getInt(C0148R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(C0148R.styleable.LinearLayoutCompat_dividerPadding, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformHeight(int i10, int i11) {
        int i12;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), BasicMeasure.EXACTLY);
        int i13 = 0;
        while (i13 < i10) {
            View virtualChildAt = getVirtualChildAt(i13);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i14 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = virtualChildAt.getMeasuredWidth();
                    i12 = i11;
                    measureChildWithMargins(virtualChildAt, i12, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i14;
                } else {
                    i12 = i11;
                }
            } else {
                i12 = i11;
            }
            i13++;
            i11 = i12;
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    private void forceUniformWidth(int i10, int i11) {
        int i12;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), BasicMeasure.EXACTLY);
        int i13 = 0;
        while (i13 < i10) {
            View virtualChildAt = getVirtualChildAt(i13);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i14 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = virtualChildAt.getMeasuredHeight();
                    i12 = i11;
                    measureChildWithMargins(virtualChildAt, iMakeMeasureSpec, 0, i12, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i14;
                } else {
                    i12 = i11;
                }
            } else {
                i12 = i11;
            }
            i13++;
            i11 = i12;
        }
    }

    private void setChildFrame(View view, int i10, int i11, int i12, int i13) {
        view.layout(i10, i11, i12 + i10, i13 + i11);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i10;
        int virtualChildCount = getVirtualChildCount();
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i11 = 0; i11 < virtualChildCount; i11++) {
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i11)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                drawVerticalDivider(canvas, zIsLayoutRtl ? virtualChildAt.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin : (virtualChildAt.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.mDividerWidth);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (zIsLayoutRtl) {
                    left = virtualChildAt2.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i10 = this.mDividerWidth;
                    right = left - i10;
                } else {
                    right = virtualChildAt2.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (zIsLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i10 = this.mDividerWidth;
                right = left - i10;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    public void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i10 = 0; i10 < virtualChildCount; i10++) {
            View virtualChildAt = getVirtualChildAt(i10);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i10)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            drawHorizontalDivider(canvas, virtualChildAt2 == null ? (getHeight() - getPaddingBottom()) - this.mDividerHeight : virtualChildAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt2.getLayoutParams())).bottomMargin);
        }
    }

    public void drawHorizontalDivider(Canvas canvas, int i10) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i10, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i10);
        this.mDivider.draw(canvas);
    }

    public void drawVerticalDivider(Canvas canvas, int i10) {
        this.mDivider.setBounds(i10, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i10, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i10 = this.mOrientation;
        if (i10 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i10 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i10;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.mBaselineAlignedChildIndex;
        if (childCount <= i11) {
            C0075b.m183h("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
            return 0;
        }
        View childAt = getChildAt(i11);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            C0075b.m183h("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            return 0;
        }
        int bottom = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i10 = this.mGravity & 112) != 48) {
            if (i10 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
            } else if (i10 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public int getChildrenSkipCount(View view, int i10) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @GravityInt
    public int getGravity() {
        return this.mGravity;
    }

    public int getLocationOffset(View view) {
        return 0;
    }

    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public View getVirtualChildAt(int i10) {
        return getChildAt(i10);
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasDividerBeforeChildAt(int i10) {
        if (i10 == 0) {
            return (this.mShowDividers & 1) != 0;
        }
        int childCount = getChildCount();
        int i11 = this.mShowDividers;
        if (i10 == childCount) {
            return (i11 & 4) != 0;
        }
        if ((i11 & 2) != 0) {
            for (int i12 = i10 - 1; i12 >= 0; i12--) {
                if (getChildAt(i12).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

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
    public void layoutHorizontal(int i10, int i11, int i12, int i13) {
        int paddingLeft;
        int i14;
        int i15;
        char c;
        char c10;
        int i16;
        int childrenSkipCount;
        int i17;
        int baseline;
        int i18;
        int i19;
        int i20;
        int measuredHeight;
        int i21;
        boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i22 = i13 - i11;
        int paddingBottom = i22 - getPaddingBottom();
        int paddingBottom2 = (i22 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i23 = this.mGravity;
        int i24 = i23 & 112;
        boolean z9 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i23, getLayoutDirection());
        char c11 = 2;
        char c12 = 1;
        if (absoluteGravity != 1) {
            paddingLeft = absoluteGravity != 5 ? getPaddingLeft() : ((getPaddingLeft() + i12) - i10) - this.mTotalLength;
        } else {
            paddingLeft = getPaddingLeft() + (((i12 - i10) - this.mTotalLength) / 2);
        }
        if (zIsLayoutRtl) {
            i14 = virtualChildCount - 1;
            i15 = -1;
        } else {
            i14 = 0;
            i15 = 1;
        }
        int i25 = 0;
        while (i25 < virtualChildCount) {
            int i26 = (i15 * i25) + i14;
            int i27 = i25;
            View virtualChildAt = getVirtualChildAt(i26);
            if (virtualChildAt == null) {
                paddingLeft = measureNullChild(i26) + paddingLeft;
                childrenSkipCount = i27;
                i16 = paddingTop;
                c = c11;
                c10 = c12;
            } else {
                c = c11;
                c10 = c12;
                if (virtualChildAt.getVisibility() != 8) {
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    int measuredHeight2 = virtualChildAt.getMeasuredHeight();
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i28 = paddingLeft;
                    if (z9) {
                        i17 = measuredHeight2;
                        baseline = ((LinearLayout.LayoutParams) layoutParams).height != -1 ? virtualChildAt.getBaseline() : -1;
                        i18 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                        if (i18 < 0) {
                            i18 = i24;
                        }
                        i19 = i18 & 112;
                        i16 = paddingTop;
                        if (i19 != 16) {
                            if (i19 != 48) {
                                i20 = i16 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                                if (baseline != -1) {
                                    i20 = (iArr[c10] - baseline) + i20;
                                }
                            } else if (i19 != 80) {
                                i20 = i16;
                            } else {
                                i20 = (paddingBottom - i17) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                                }
                            }
                            if (hasDividerBeforeChildAt(i26)) {
                                i21 = i28 + this.mDividerWidth;
                            } else {
                                i21 = i28;
                            }
                            int i29 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + i21;
                            setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i29, i20, measuredWidth, i17);
                            int nextLocationOffset = getNextLocationOffset(virtualChildAt) + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + i29;
                            childrenSkipCount = getChildrenSkipCount(virtualChildAt, i26) + i27;
                            paddingLeft = nextLocationOffset;
                        } else {
                            i20 = ((paddingBottom2 - i17) / 2) + i16 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                            measuredHeight = ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        }
                        i20 -= measuredHeight;
                        if (hasDividerBeforeChildAt(i26)) {
                            i21 = i28 + this.mDividerWidth;
                        } else {
                            i21 = i28;
                        }
                        int i210 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + i21;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i210, i20, measuredWidth, i17);
                        int nextLocationOffset2 = getNextLocationOffset(virtualChildAt) + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + i210;
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i26) + i27;
                        paddingLeft = nextLocationOffset2;
                    } else {
                        i17 = measuredHeight2;
                    }
                    i18 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i18 < 0) {
                        i18 = i24;
                    }
                    i19 = i18 & 112;
                    i16 = paddingTop;
                    if (i19 != 16) {
                        if (i19 != 48) {
                            i20 = i16 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                            if (baseline != -1) {
                                i20 = (iArr[c10] - baseline) + i20;
                            }
                        } else if (i19 != 80) {
                            i20 = i16;
                        } else {
                            i20 = (paddingBottom - i17) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight = iArr2[c] - (virtualChildAt.getMeasuredHeight() - baseline);
                            }
                        }
                        if (hasDividerBeforeChildAt(i26)) {
                            i21 = i28 + this.mDividerWidth;
                        } else {
                            i21 = i28;
                        }
                        int i211 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + i21;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i211, i20, measuredWidth, i17);
                        int nextLocationOffset3 = getNextLocationOffset(virtualChildAt) + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + i211;
                        childrenSkipCount = getChildrenSkipCount(virtualChildAt, i26) + i27;
                        paddingLeft = nextLocationOffset3;
                    } else {
                        i20 = ((paddingBottom2 - i17) / 2) + i16 + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        measuredHeight = ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    }
                    i20 -= measuredHeight;
                    if (hasDividerBeforeChildAt(i26)) {
                        i21 = i28 + this.mDividerWidth;
                    } else {
                        i21 = i28;
                    }
                    int i212 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + i21;
                    setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i212, i20, measuredWidth, i17);
                    int nextLocationOffset4 = getNextLocationOffset(virtualChildAt) + ((LinearLayout.LayoutParams) layoutParams).rightMargin + measuredWidth + i212;
                    childrenSkipCount = getChildrenSkipCount(virtualChildAt, i26) + i27;
                    paddingLeft = nextLocationOffset4;
                } else {
                    i16 = paddingTop;
                    childrenSkipCount = i27;
                }
            }
            i25 = childrenSkipCount + 1;
            c11 = c;
            c12 = c10;
            paddingTop = i16;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009a  */
    public void layoutVertical(int i10, int i11, int i12, int i13) {
        int paddingTop;
        int i14;
        int i15;
        int i16;
        int paddingLeft = getPaddingLeft();
        int i17 = i12 - i10;
        int paddingRight = i17 - getPaddingRight();
        int paddingRight2 = (i17 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i18 = this.mGravity;
        int i19 = i18 & 112;
        int i20 = i18 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i19 != 16) {
            paddingTop = i19 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - this.mTotalLength;
        } else {
            paddingTop = (((i13 - i11) - this.mTotalLength) / 2) + getPaddingTop();
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
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    int i21 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i21 < 0) {
                        i21 = i20;
                    }
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(i21, getLayoutDirection()) & 7;
                    if (absoluteGravity != 1) {
                        if (absoluteGravity != 5) {
                            i16 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                        } else {
                            i14 = paddingRight - measuredWidth;
                            i15 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        }
                        int i22 = i16;
                        if (hasDividerBeforeChildAt(childrenSkipCount)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i23 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        setChildFrame(virtualChildAt, i22, getLocationOffset(virtualChildAt) + i23, measuredWidth, measuredHeight);
                        int nextLocationOffset = getNextLocationOffset(virtualChildAt) + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i23;
                        childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                        paddingTop = nextLocationOffset;
                    } else {
                        i14 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        i15 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    }
                    i16 = i14 - i15;
                    int i24 = i16;
                    if (hasDividerBeforeChildAt(childrenSkipCount)) {
                        paddingTop += this.mDividerHeight;
                    }
                    int i25 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    setChildFrame(virtualChildAt, i24, getLocationOffset(virtualChildAt) + i25, measuredWidth, measuredHeight);
                    int nextLocationOffset2 = getNextLocationOffset(virtualChildAt) + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i25;
                    childrenSkipCount += getChildrenSkipCount(virtualChildAt, childrenSkipCount);
                    paddingTop = nextLocationOffset2;
                }
                childrenSkipCount++;
            }
            childrenSkipCount++;
        }
    }

    public void measureChildBeforeLayout(View view, int i10, int i11, int i12, int i13, int i14) {
        measureChildWithMargins(view, i11, i12, i13, i14);
    }

    /* JADX WARN: Code duplicated, block: B:204:0x0453  */
    public void measureHorizontal(int i10, int i11) {
        int i12;
        int i13;
        float f8;
        int i14;
        int i15;
        int i16;
        int iMax;
        int i17;
        int baseline;
        int i18;
        int i19;
        byte b10;
        int i20;
        int i21;
        int i22;
        boolean z9;
        View view;
        boolean z10;
        int baseline2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
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
        boolean z11 = this.mBaselineAligned;
        boolean z12 = this.mUseLargestChild;
        int i23 = BasicMeasure.EXACTLY;
        boolean z13 = mode == 1073741824;
        boolean z14 = z12;
        int childrenSkipCount = 0;
        int i24 = 0;
        int iMax2 = 0;
        boolean z15 = false;
        int iCombineMeasuredStates = 0;
        boolean z16 = false;
        boolean z17 = true;
        float f10 = 0.0f;
        int iMax3 = 0;
        int iMax4 = 0;
        while (true) {
            i12 = i24;
            if (childrenSkipCount >= virtualChildCount) {
                break;
            }
            boolean z18 = z11;
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
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    float f11 = ((LinearLayout.LayoutParams) layoutParams).weight;
                    float f12 = f10 + f11;
                    if (mode == i23 && ((LinearLayout.LayoutParams) layoutParams).width == 0 && f11 > 0.0f) {
                        int i25 = this.mTotalLength;
                        if (z13) {
                            this.mTotalLength = ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin + i25;
                        } else {
                            this.mTotalLength = Math.max(i25, ((LinearLayout.LayoutParams) layoutParams).leftMargin + i25 + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                        }
                        if (z18) {
                            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        } else {
                            z15 = true;
                        }
                        i21 = i12;
                        i22 = BasicMeasure.EXACTLY;
                        z9 = z14;
                        view = virtualChildAt;
                    } else {
                        if (((LinearLayout.LayoutParams) layoutParams).width != 0 || f11 <= 0.0f) {
                            b10 = -2;
                            i20 = Integer.MIN_VALUE;
                        } else {
                            b10 = -2;
                            ((LinearLayout.LayoutParams) layoutParams).width = -2;
                            i20 = 0;
                        }
                        int i26 = f12 == 0.0f ? this.mTotalLength : 0;
                        virtualChildCount = virtualChildCount;
                        mode = mode;
                        iArr = iArr;
                        i21 = i12;
                        i22 = BasicMeasure.EXACTLY;
                        z9 = z14;
                        iArr2 = iArr2;
                        int i27 = i20;
                        measureChildBeforeLayout(virtualChildAt, childrenSkipCount, i10, i26, i11, 0);
                        view = virtualChildAt;
                        if (i27 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams).width = i27;
                        }
                        int measuredWidth = view.getMeasuredWidth();
                        int i28 = this.mTotalLength;
                        if (z13) {
                            this.mTotalLength = getNextLocationOffset(view) + ((LinearLayout.LayoutParams) layoutParams).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + i28;
                        } else {
                            this.mTotalLength = Math.max(i28, getNextLocationOffset(view) + i28 + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                        }
                        if (z9) {
                            iMax2 = Math.max(measuredWidth, iMax2);
                        }
                    }
                    if (mode2 == i22 || ((LinearLayout.LayoutParams) layoutParams).height != -1) {
                        z10 = false;
                    } else {
                        z10 = true;
                        z16 = true;
                    }
                    int i29 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                    int measuredHeight = view.getMeasuredHeight() + i29;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z18 && (baseline2 = view.getBaseline()) != -1) {
                        int i30 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                        if (i30 < 0) {
                            i30 = this.mGravity;
                        }
                        int i31 = (((i30 & 112) >> 4) & (-2)) >> 1;
                        iArr[i31] = Math.max(iArr[i31], baseline2);
                        iArr2[i31] = Math.max(iArr2[i31], measuredHeight - baseline2);
                    }
                    int iMax5 = Math.max(i21, measuredHeight);
                    z17 = z17 && ((LinearLayout.LayoutParams) layoutParams).height == -1;
                    if (((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                        if (!z10) {
                            i29 = measuredHeight;
                        }
                        iMax4 = Math.max(iMax4, i29);
                    } else {
                        if (z10 == 0) {
                            i29 = measuredHeight;
                        }
                        iMax3 = Math.max(iMax3, i29);
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    i24 = iMax5;
                    f10 = f12;
                }
                childrenSkipCount++;
                z14 = z9;
                iArr2 = iArr2;
                z11 = z18;
                mode = mode;
                iArr = iArr;
                virtualChildCount = virtualChildCount;
                i23 = BasicMeasure.EXACTLY;
            }
            virtualChildCount = virtualChildCount;
            mode = mode;
            iArr = iArr;
            iArr2 = iArr2;
            i24 = i12;
            z9 = z14;
            childrenSkipCount++;
            z14 = z9;
            iArr2 = iArr2;
            z11 = z18;
            mode = mode;
            iArr = iArr;
            virtualChildCount = virtualChildCount;
            i23 = BasicMeasure.EXACTLY;
        }
        boolean z19 = z11;
        int i32 = virtualChildCount;
        int i33 = mode;
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int iCombineMeasuredStates2 = iCombineMeasuredStates;
        boolean z20 = z14;
        if (this.mTotalLength > 0) {
            i13 = i32;
            if (hasDividerBeforeChildAt(i13)) {
                this.mTotalLength += this.mDividerWidth;
            }
        } else {
            i13 = i32;
        }
        int i34 = iArr3[1];
        int iMax6 = (i34 == -1 && iArr3[0] == -1 && iArr3[2] == -1 && iArr3[3] == -1) ? i12 : Math.max(i12, Math.max(iArr4[3], Math.max(iArr4[0], Math.max(iArr4[1], iArr4[2]))) + Math.max(iArr3[3], Math.max(iArr3[0], Math.max(i34, iArr3[2]))));
        if (z20) {
            i14 = i33;
            if (i14 == Integer.MIN_VALUE || i14 == 0) {
                this.mTotalLength = 0;
                int childrenSkipCount2 = 0;
                while (childrenSkipCount2 < i13) {
                    View virtualChildAt2 = getVirtualChildAt(childrenSkipCount2);
                    if (virtualChildAt2 == null) {
                        this.mTotalLength = measureNullChild(childrenSkipCount2) + this.mTotalLength;
                    } else {
                        if (virtualChildAt2.getVisibility() == 8) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt2, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            int i35 = this.mTotalLength;
                            if (z13) {
                                this.mTotalLength = getNextLocationOffset(virtualChildAt2) + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + iMax2 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + i35;
                            } else {
                                this.mTotalLength = Math.max(i35, getNextLocationOffset(virtualChildAt2) + i35 + iMax2 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin);
                            }
                        }
                        childrenSkipCount2++;
                        f10 = f10;
                    }
                    childrenSkipCount2++;
                    f10 = f10;
                }
            }
            f8 = f10;
        } else {
            f8 = f10;
            i14 = i33;
        }
        int paddingRight = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
        this.mTotalLength = paddingRight;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i10, 0);
        int i36 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
        if (z15 || (i36 != 0 && f8 > 0.0f)) {
            float f13 = this.mWeightSum;
            if (f13 > 0.0f) {
                f8 = f13;
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
            int i37 = 0;
            while (i37 < i13) {
                View virtualChildAt3 = getVirtualChildAt(i37);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    iResolveSizeAndState = iResolveSizeAndState;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f14 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    if (f14 > 0.0f) {
                        int i38 = (int) ((i36 * f14) / f8);
                        f8 -= f14;
                        i36 -= i38;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin, ((LinearLayout.LayoutParams) layoutParams3).height);
                        if (((LinearLayout.LayoutParams) layoutParams3).width == 0) {
                            i19 = BasicMeasure.EXACTLY;
                            if (i14 == 1073741824) {
                                if (i38 <= 0) {
                                    i38 = 0;
                                }
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i38, BasicMeasure.EXACTLY), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        } else {
                            i19 = BasicMeasure.EXACTLY;
                        }
                        int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i38;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i19), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, virtualChildAt3.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    }
                    int i39 = this.mTotalLength;
                    if (z13) {
                        this.mTotalLength = getNextLocationOffset(virtualChildAt3) + virtualChildAt3.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + i39;
                    } else {
                        this.mTotalLength = Math.max(i39, getNextLocationOffset(virtualChildAt3) + virtualChildAt3.getMeasuredWidth() + i39 + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin);
                    }
                    boolean z21 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).height == -1;
                    int i40 = ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin;
                    int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i40;
                    iMax6 = Math.max(iMax6, measuredHeight2);
                    if (!z21) {
                        i40 = measuredHeight2;
                    }
                    int iMax7 = Math.max(iMax3, i40);
                    if (z17) {
                        i17 = -1;
                        boolean z22 = ((LinearLayout.LayoutParams) layoutParams3).height == -1;
                        if (z19 && (baseline = virtualChildAt3.getBaseline()) != i17) {
                            i18 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                            if (i18 < 0) {
                                i18 = this.mGravity;
                            }
                            int i41 = (((i18 & 112) >> 4) & (-2)) >> 1;
                            iArr3[i41] = Math.max(iArr3[i41], baseline);
                            iArr4[i41] = Math.max(iArr4[i41], measuredHeight2 - baseline);
                        }
                        iMax3 = iMax7;
                        z17 = z22;
                    } else {
                        i17 = -1;
                    }
                    if (z19) {
                        i18 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                        if (i18 < 0) {
                            i18 = this.mGravity;
                        }
                        int i42 = (((i18 & 112) >> 4) & (-2)) >> 1;
                        iArr3[i42] = Math.max(iArr3[i42], baseline);
                        iArr4[i42] = Math.max(iArr4[i42], measuredHeight2 - baseline);
                    }
                    iMax3 = iMax7;
                    z17 = z22;
                }
                i37++;
                iResolveSizeAndState = iResolveSizeAndState;
            }
            i15 = iResolveSizeAndState;
            i16 = ViewCompat.MEASURED_STATE_MASK;
            this.mTotalLength = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
            int i43 = iArr3[1];
            if (i43 != -1 || iArr3[0] != -1 || iArr3[2] != -1 || iArr3[3] != -1) {
                iMax6 = Math.max(iMax6, Math.max(iArr4[3], Math.max(iArr4[0], Math.max(iArr4[1], iArr4[2]))) + Math.max(iArr3[3], Math.max(iArr3[0], Math.max(i43, iArr3[2]))));
            }
            iMax = iMax3;
        } else {
            iMax = Math.max(iMax3, iMax4);
            if (z20 && i14 != 1073741824) {
                for (int i44 = 0; i44 < i13; i44++) {
                    View virtualChildAt4 = getVirtualChildAt(i44);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt4.getLayoutParams())).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(iMax2, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), BasicMeasure.EXACTLY));
                    }
                }
            }
            i15 = iResolveSizeAndState;
            i16 = ViewCompat.MEASURED_STATE_MASK;
        }
        int i45 = iCombineMeasuredStates2;
        if (!z17 && mode2 != 1073741824) {
            iMax6 = iMax;
        }
        setMeasuredDimension(i15 | (i45 & i16), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax6, getSuggestedMinimumHeight()), i11, i45 << 16));
        if (z16) {
            forceUniformHeight(i13, i10);
        }
    }

    public int measureNullChild(int i10) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0154 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x0157  */
    /* JADX WARN: Code duplicated, block: B:68:0x015e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x0161  */
    public void measureVertical(int i10, int i11) {
        int i12;
        int iMax;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        View view;
        boolean z9;
        int iMax2;
        boolean z10;
        int iMax3;
        int i22;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int i23 = this.mBaselineAlignedChildIndex;
        boolean z11 = this.mUseLargestChild;
        int childrenSkipCount = 0;
        int i24 = 0;
        int iMax4 = 0;
        int i25 = 0;
        int i26 = 0;
        int iMax5 = 0;
        boolean z12 = false;
        boolean z13 = false;
        float f8 = 0.0f;
        boolean z14 = true;
        while (true) {
            int i27 = 8;
            if (childrenSkipCount >= virtualChildCount) {
                float f10 = f8;
                int i28 = i24;
                int i29 = virtualChildCount;
                int i30 = mode2;
                boolean z15 = z11;
                int i31 = iMax4;
                int iMax6 = i25;
                int iCombineMeasuredStates = i26;
                if (this.mTotalLength > 0) {
                    i12 = i29;
                    if (hasDividerBeforeChildAt(i12)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i12 = i29;
                }
                int i32 = i30;
                if (z15 && (i32 == Integer.MIN_VALUE || i32 == 0)) {
                    this.mTotalLength = 0;
                    int childrenSkipCount2 = 0;
                    while (childrenSkipCount2 < i12) {
                        View virtualChildAt = getVirtualChildAt(childrenSkipCount2);
                        if (virtualChildAt == null) {
                            this.mTotalLength = measureNullChild(childrenSkipCount2) + this.mTotalLength;
                        } else if (virtualChildAt.getVisibility() == i27) {
                            childrenSkipCount2 += getChildrenSkipCount(virtualChildAt, childrenSkipCount2);
                        } else {
                            LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                            int i33 = this.mTotalLength;
                            this.mTotalLength = Math.max(i33, getNextLocationOffset(virtualChildAt) + i33 + i31 + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin);
                        }
                        childrenSkipCount2++;
                        i27 = 8;
                    }
                }
                int paddingBottom = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                this.mTotalLength = paddingBottom;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i11, 0);
                int i34 = (16777215 & iResolveSizeAndState) - this.mTotalLength;
                if (z12 || (i34 != 0 && f10 > 0.0f)) {
                    float f11 = this.mWeightSum;
                    if (f11 <= 0.0f) {
                        f11 = f10;
                    }
                    this.mTotalLength = 0;
                    float f12 = f11;
                    int i35 = i34;
                    int i36 = 0;
                    while (i36 < i12) {
                        View virtualChildAt2 = getVirtualChildAt(i36);
                        if (virtualChildAt2.getVisibility() == 8) {
                            i32 = i32;
                            i36 = i36;
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            float f13 = ((LinearLayout.LayoutParams) layoutParams2).weight;
                            if (f13 > 0.0f) {
                                int i37 = (int) ((i35 * f13) / f12);
                                f12 -= f13;
                                i35 -= i37;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin, ((LinearLayout.LayoutParams) layoutParams2).width);
                                if (((LinearLayout.LayoutParams) layoutParams2).height == 0) {
                                    i14 = BasicMeasure.EXACTLY;
                                    if (i32 == 1073741824) {
                                        virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i37 > 0 ? i37 : 0, BasicMeasure.EXACTLY));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                                } else {
                                    i14 = BasicMeasure.EXACTLY;
                                }
                                int measuredHeight = virtualChildAt2.getMeasuredHeight() + i37;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                virtualChildAt2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i14));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, virtualChildAt2.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                            } else {
                                i32 = i32;
                            }
                            int i38 = ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                            int measuredWidth = virtualChildAt2.getMeasuredWidth() + i38;
                            iMax6 = Math.max(iMax6, measuredWidth);
                            if (mode != 1073741824) {
                                i13 = -1;
                                if (((LinearLayout.LayoutParams) layoutParams2).width == -1) {
                                    measuredWidth = i38;
                                }
                            } else {
                                i13 = -1;
                            }
                            int iMax7 = Math.max(iMax5, measuredWidth);
                            boolean z16 = z14 && ((LinearLayout.LayoutParams) layoutParams2).width == i13;
                            int i39 = this.mTotalLength;
                            this.mTotalLength = Math.max(i39, getNextLocationOffset(virtualChildAt2) + virtualChildAt2.getMeasuredHeight() + i39 + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin);
                            iMax5 = iMax7;
                            z14 = z16;
                        }
                        i36++;
                        i32 = i32;
                    }
                    this.mTotalLength = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                    iMax = iMax5;
                } else {
                    iMax = Math.max(iMax5, i28);
                    if (z15 && i32 != 1073741824) {
                        for (int i40 = 0; i40 < i12; i40++) {
                            View virtualChildAt3 = getVirtualChildAt(i40);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt3.getLayoutParams())).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i31, BasicMeasure.EXACTLY));
                            }
                        }
                    }
                }
                if (!z14 && mode != 1073741824) {
                    iMax6 = iMax;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax6, getSuggestedMinimumWidth()), i10, iCombineMeasuredStates), iResolveSizeAndState);
                if (z13) {
                    forceUniformWidth(i12, i11);
                    return;
                }
                return;
            }
            float f14 = f8;
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
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f15 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    float f16 = f14 + f15;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).height == 0 && f15 > 0.0f) {
                        int i41 = this.mTotalLength;
                        this.mTotalLength = Math.max(i41, ((LinearLayout.LayoutParams) layoutParams3).topMargin + i41 + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin);
                        iMax2 = i24;
                        i18 = virtualChildCount;
                        i19 = mode2;
                        z12 = true;
                        i21 = i25;
                        i20 = i26;
                        z9 = z11;
                    } else {
                        if (((LinearLayout.LayoutParams) layoutParams3).height != 0 || f15 <= 0.0f) {
                            i15 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) layoutParams3).height = -2;
                            i15 = 0;
                        }
                        if (f16 == 0.0f) {
                            int i42 = i26;
                            i17 = this.mTotalLength;
                            i16 = i42;
                        } else {
                            i16 = i26;
                            i17 = 0;
                        }
                        int i43 = iMax4;
                        i18 = virtualChildCount;
                        i19 = mode2;
                        i20 = i16;
                        i21 = i25;
                        view = virtualChildAt4;
                        z9 = z11;
                        iMax2 = i24;
                        measureChildBeforeLayout(view, childrenSkipCount, i10, 0, i11, i17);
                        if (i15 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) layoutParams3).height = i15;
                        }
                        int measuredHeight2 = view.getMeasuredHeight();
                        int i44 = this.mTotalLength;
                        this.mTotalLength = Math.max(i44, getNextLocationOffset(view) + i44 + measuredHeight2 + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin);
                        iMax4 = z9 ? Math.max(measuredHeight2, i43) : i43;
                    }
                    if (i23 >= 0 && i23 == childrenSkipCount + 1) {
                        view = virtualChildAt4;
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if (childrenSkipCount < i23 && ((LinearLayout.LayoutParams) layoutParams3).weight > 0.0f) {
                        C0075b.m183h("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        return;
                    }
                    if (mode == 1073741824 || ((LinearLayout.LayoutParams) layoutParams3).width != -1) {
                        z10 = false;
                    } else {
                        z10 = true;
                        z13 = true;
                    }
                    int i45 = ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i45;
                    iMax3 = Math.max(i21, measuredWidth2);
                    int i46 = iMax4;
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i20, view.getMeasuredState());
                    if (z14) {
                        i22 = iCombineMeasuredStates2;
                        z14 = ((LinearLayout.LayoutParams) layoutParams3).width == -1;
                        if (((LinearLayout.LayoutParams) layoutParams3).weight > 0.0f) {
                            if (!z10) {
                                i45 = measuredWidth2;
                            }
                            iMax2 = Math.max(iMax2, i45);
                        } else {
                            if (!z10) {
                                i45 = measuredWidth2;
                            }
                            iMax5 = Math.max(iMax5, i45);
                        }
                        childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                        f8 = f16;
                        iMax4 = i46;
                        i26 = i22;
                    } else {
                        i22 = iCombineMeasuredStates2;
                    }
                    if (((LinearLayout.LayoutParams) layoutParams3).weight > 0.0f) {
                        if (!z10) {
                            i45 = measuredWidth2;
                        }
                        iMax2 = Math.max(iMax2, i45);
                    } else {
                        if (!z10) {
                            i45 = measuredWidth2;
                        }
                        iMax5 = Math.max(iMax5, i45);
                    }
                    childrenSkipCount += getChildrenSkipCount(view, childrenSkipCount);
                    f8 = f16;
                    iMax4 = i46;
                    i26 = i22;
                }
                childrenSkipCount++;
                i25 = iMax3;
                i24 = iMax2;
                z11 = z9;
                mode2 = i19;
                virtualChildCount = i18;
            }
            iMax2 = i24;
            i18 = virtualChildCount;
            i19 = mode2;
            z9 = z11;
            f8 = f14;
            iMax3 = i25;
            childrenSkipCount++;
            i25 = iMax3;
            i24 = iMax2;
            z11 = z9;
            mode2 = i19;
            virtualChildCount = i18;
        }
    }

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

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        if (this.mOrientation == 1) {
            layoutVertical(i10, i11, i12, i13);
        } else {
            layoutHorizontal(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.mOrientation == 1) {
            measureVertical(i10, i11);
        } else {
            measureHorizontal(i10, i11);
        }
    }

    public void setBaselineAligned(boolean z9) {
        this.mBaselineAligned = z9;
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.mBaselineAlignedChildIndex = i10;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

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

    public void setDividerPadding(int i10) {
        this.mDividerPadding = i10;
    }

    public void setGravity(@GravityInt int i10) {
        if (this.mGravity != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= GravityCompat.START;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.mGravity = i10;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i12 = this.mGravity;
        if ((8388615 & i12) != i11) {
            this.mGravity = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z9) {
        this.mUseLargestChild = z9;
    }

    public void setOrientation(int i10) {
        if (this.mOrientation != i10) {
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.mGravity;
        if ((i12 & 112) != i11) {
            this.mGravity = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f8) {
        this.mWeightSum = Math.max(0.0f, f8);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
        }

        public LayoutParams(int i10, int i11, float f8) {
            super(i10, i11, f8);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }
}
