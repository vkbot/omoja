package androidx.viewpager.widget;

import android.R$attr;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils$TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import j1.i;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@ViewPager$DecorView
public class PagerTitleStrip extends ViewGroup {
    private static final float SIDE_ALPHA = 0.6f;
    private static final int TEXT_SPACING = 16;
    TextView mCurrText;
    private int mGravity;
    private int mLastKnownCurrentPage;
    float mLastKnownPositionOffset;
    TextView mNextText;
    private int mNonPrimaryAlpha;
    private final PagerTitleStrip$PageListener mPageListener;
    ViewPager mPager;
    TextView mPrevText;
    private int mScaledTextSpacing;
    int mTextColor;
    private boolean mUpdatingPositions;
    private boolean mUpdatingText;
    private WeakReference<PagerAdapter> mWatchingAdapter;
    private static final int[] ATTRS = {R$attr.textAppearance, R$attr.textSize, R$attr.textColor, R$attr.gravity};
    private static final int[] TEXT_ATTRS = {R$attr.textAllCaps};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastKnownCurrentPage = -1;
        this.mLastKnownPositionOffset = -1.0f;
        this.mPageListener = new PagerTitleStrip$PageListener(this);
        TextView textView = new TextView(context);
        this.mPrevText = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.mCurrText = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.mNextText = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
        boolean z8 = false;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.setTextAppearance(this.mPrevText, resourceId);
            TextViewCompat.setTextAppearance(this.mCurrText, resourceId);
            TextViewCompat.setTextAppearance(this.mNextText, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.mPrevText.setTextColor(color);
            this.mCurrText.setTextColor(color);
            this.mNextText.setTextColor(color);
        }
        this.mGravity = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.mTextColor = this.mCurrText.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(SIDE_ALPHA);
        TextView textView4 = this.mPrevText;
        TextUtils$TruncateAt textUtils$TruncateAt = TextUtils$TruncateAt.END;
        textView4.setEllipsize(textUtils$TruncateAt);
        this.mCurrText.setEllipsize(textUtils$TruncateAt);
        this.mNextText.setEllipsize(textUtils$TruncateAt);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, TEXT_ATTRS);
            z8 = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        TextView textView5 = this.mPrevText;
        if (z8) {
            setSingleLineAllCaps(textView5);
            setSingleLineAllCaps(this.mCurrText);
            setSingleLineAllCaps(this.mNextText);
        } else {
            textView5.setSingleLine();
            this.mCurrText.setSingleLine();
            this.mNextText.setSingleLine();
        }
        this.mScaledTextSpacing = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new PagerTitleStrip$SingleLineAllCapsTransform(textView.getContext()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTextSpacing() {
        return this.mScaledTextSpacing;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            i.l("PagerTitleStrip must be a direct child of a ViewPager.");
            return;
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.mPageListener);
        viewPager.addOnAdapterChangeListener(this.mPageListener);
        this.mPager = viewPager;
        WeakReference<PagerAdapter> weakReference = this.mWatchingAdapter;
        updateAdapter(weakReference != null ? weakReference.get() : null, adapter);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ViewPager viewPager = this.mPager;
        if (viewPager != null) {
            updateAdapter(viewPager.getAdapter(), null);
            this.mPager.setInternalPageChangeListener(null);
            this.mPager.removeOnAdapterChangeListener(this.mPageListener);
            this.mPager = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z8, int i9, int i10, int i11, int i12) {
        if (this.mPager != null) {
            float f8 = this.mLastKnownPositionOffset;
            if (f8 < 0.0f) {
                f8 = 0.0f;
            }
            updateTextPositions(this.mLastKnownCurrentPage, f8, true);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View
    public void onMeasure(int i9, int i10) {
        int iMax;
        if (View$MeasureSpec.getMode(i9) != 1073741824) {
            i.l("Must measure with an exact width");
            return;
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, paddingBottom, -2);
        int size = View$MeasureSpec.getSize(i9);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i9, (int) (size * 0.2f), -2);
        this.mPrevText.measure(childMeasureSpec2, childMeasureSpec);
        this.mCurrText.measure(childMeasureSpec2, childMeasureSpec);
        this.mNextText.measure(childMeasureSpec2, childMeasureSpec);
        if (View$MeasureSpec.getMode(i10) == 1073741824) {
            iMax = View$MeasureSpec.getSize(i10);
        } else {
            iMax = Math.max(getMinHeight(), this.mCurrText.getMeasuredHeight() + paddingBottom);
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i10, this.mCurrText.getMeasuredState() << 16));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mUpdatingText) {
            return;
        }
        super.requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGravity(int i9) {
        this.mGravity = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f8) {
        int i9 = ((int) (f8 * 255.0f)) & 255;
        this.mNonPrimaryAlpha = i9;
        int i10 = (i9 << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i10);
        this.mNextText.setTextColor(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextColor(@ColorInt int i9) {
        this.mTextColor = i9;
        this.mCurrText.setTextColor(i9);
        int i10 = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i10);
        this.mNextText.setTextColor(i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextSize(int i9, float f8) {
        this.mPrevText.setTextSize(i9, f8);
        this.mCurrText.setTextSize(i9, f8);
        this.mNextText.setTextSize(i9, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTextSpacing(int i9) {
        this.mScaledTextSpacing = i9;
        requestLayout();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateAdapter(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = new WeakReference<>(pagerAdapter2);
        }
        ViewPager viewPager = this.mPager;
        if (viewPager != null) {
            this.mLastKnownCurrentPage = -1;
            this.mLastKnownPositionOffset = -1.0f;
            updateText(viewPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateText(int i9, PagerAdapter pagerAdapter) {
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.mUpdatingText = true;
        CharSequence pageTitle = null;
        this.mPrevText.setText((i9 < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i9 - 1));
        this.mCurrText.setText((pagerAdapter == null || i9 >= count) ? null : pagerAdapter.getPageTitle(i9));
        int i10 = i9 + 1;
        if (i10 < count && pagerAdapter != null) {
            pageTitle = pagerAdapter.getPageTitle(i10);
        }
        this.mNextText.setText(pageTitle);
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View$MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.mPrevText.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mCurrText.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mNextText.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mLastKnownCurrentPage = i9;
        if (!this.mUpdatingPositions) {
            updateTextPositions(i9, this.mLastKnownPositionOffset, false);
        }
        this.mUpdatingText = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void updateTextPositions(int i9, float f8, boolean z8) {
        int i10;
        int i11;
        int i12;
        int i13;
        if (i9 != this.mLastKnownCurrentPage) {
            updateText(i9, this.mPager.getAdapter());
        } else if (!z8 && f8 == this.mLastKnownPositionOffset) {
            return;
        }
        this.mUpdatingPositions = true;
        int measuredWidth = this.mPrevText.getMeasuredWidth();
        int measuredWidth2 = this.mCurrText.getMeasuredWidth();
        int measuredWidth3 = this.mNextText.getMeasuredWidth();
        int i14 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i15 = paddingRight + i14;
        int i16 = (width - (paddingLeft + i14)) - i15;
        float f9 = 0.5f + f8;
        if (f9 > 1.0f) {
            f9 -= 1.0f;
        }
        int i17 = ((width - i15) - ((int) (i16 * f9))) - i14;
        int i18 = measuredWidth2 + i17;
        int baseline = this.mPrevText.getBaseline();
        int baseline2 = this.mCurrText.getBaseline();
        int baseline3 = this.mNextText.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i19 = iMax - baseline;
        int i20 = iMax - baseline2;
        int i21 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(this.mPrevText.getMeasuredHeight() + i19, this.mCurrText.getMeasuredHeight() + i20), this.mNextText.getMeasuredHeight() + i21);
        int i22 = this.mGravity & 112;
        if (i22 != 16) {
            if (i22 != 80) {
                i11 = i19 + paddingTop;
                i12 = i20 + paddingTop;
                i13 = paddingTop + i21;
            } else {
                i10 = (height - paddingBottom) - iMax2;
            }
            TextView textView = this.mCurrText;
            textView.layout(i17, i12, i18, textView.getMeasuredHeight() + i12);
            int iMin = Math.min(paddingLeft, (i17 - this.mScaledTextSpacing) - measuredWidth);
            TextView textView2 = this.mPrevText;
            textView2.layout(iMin, i11, iMin + measuredWidth, textView2.getMeasuredHeight() + i11);
            int iMax3 = Math.max((width - paddingRight) - measuredWidth3, i18 + this.mScaledTextSpacing);
            TextView textView3 = this.mNextText;
            textView3.layout(iMax3, i13, iMax3 + measuredWidth3, textView3.getMeasuredHeight() + i13);
            this.mLastKnownPositionOffset = f8;
            this.mUpdatingPositions = false;
        }
        i10 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
        i11 = i19 + i10;
        i12 = i20 + i10;
        i13 = i10 + i21;
        TextView textView4 = this.mCurrText;
        textView4.layout(i17, i12, i18, textView4.getMeasuredHeight() + i12);
        int iMin2 = Math.min(paddingLeft, (i17 - this.mScaledTextSpacing) - measuredWidth);
        TextView textView5 = this.mPrevText;
        textView5.layout(iMin2, i11, iMin2 + measuredWidth, textView5.getMeasuredHeight() + i11);
        int iMax4 = Math.max((width - paddingRight) - measuredWidth3, i18 + this.mScaledTextSpacing);
        TextView textView6 = this.mNextText;
        textView6.layout(iMax4, i13, iMax4 + measuredWidth3, textView6.getMeasuredHeight() + i13);
        this.mLastKnownPositionOffset = f8;
        this.mUpdatingPositions = false;
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }
}
