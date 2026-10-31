package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View$MeasureSpec;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY})
public class ContentFrameLayout extends FrameLayout {
    private ContentFrameLayout$OnAttachListener mAttachListener;
    private final Rect mDecorPadding;
    private TypedValue mFixedHeightMajor;
    private TypedValue mFixedHeightMinor;
    private TypedValue mFixedWidthMajor;
    private TypedValue mFixedWidthMinor;
    private TypedValue mMinWidthMajor;
    private TypedValue mMinWidthMinor;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i9) {
        super(context, attributeSet, i9);
        this.mDecorPadding = new Rect();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue getFixedHeightMajor() {
        if (this.mFixedHeightMajor == null) {
            this.mFixedHeightMajor = new TypedValue();
        }
        return this.mFixedHeightMajor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue getFixedHeightMinor() {
        if (this.mFixedHeightMinor == null) {
            this.mFixedHeightMinor = new TypedValue();
        }
        return this.mFixedHeightMinor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue getFixedWidthMajor() {
        if (this.mFixedWidthMajor == null) {
            this.mFixedWidthMajor = new TypedValue();
        }
        return this.mFixedWidthMajor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue getFixedWidthMinor() {
        if (this.mFixedWidthMinor == null) {
            this.mFixedWidthMinor = new TypedValue();
        }
        return this.mFixedWidthMinor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue getMinWidthMajor() {
        if (this.mMinWidthMajor == null) {
            this.mMinWidthMajor = new TypedValue();
        }
        return this.mMinWidthMajor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypedValue getMinWidthMinor() {
        if (this.mMinWidthMinor == null) {
            this.mMinWidthMinor = new TypedValue();
        }
        return this.mMinWidthMinor;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ContentFrameLayout$OnAttachListener contentFrameLayout$OnAttachListener = this.mAttachListener;
        if (contentFrameLayout$OnAttachListener != null) {
            contentFrameLayout$OnAttachListener.onAttachedFromWindow();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ContentFrameLayout$OnAttachListener contentFrameLayout$OnAttachListener = this.mAttachListener;
        if (contentFrameLayout$OnAttachListener != null) {
            contentFrameLayout$OnAttachListener.onDetachedFromWindow();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:21:0x004a  */
    /* JADX WARN: Code duplicated, block: B:22:0x0060  */
    /* JADX WARN: Code duplicated, block: B:37:0x0086  */
    /* JADX WARN: Code duplicated, block: B:54:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i9, int i10) {
        boolean z8;
        int i11;
        int i12;
        float fraction;
        int i13;
        int i14;
        float fraction2;
        int i15;
        int i16;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z9 = true;
        boolean z10 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View$MeasureSpec.getMode(i9);
        int mode2 = View$MeasureSpec.getMode(i10);
        if (mode != Integer.MIN_VALUE) {
            z8 = false;
        } else {
            TypedValue typedValue = z10 ? this.mFixedWidthMinor : this.mFixedWidthMajor;
            if (typedValue == null || (i15 = typedValue.type) == 0) {
                z8 = false;
            } else {
                if (i15 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i15 == 6) {
                        int i17 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i17, i17);
                    } else {
                        i16 = 0;
                    }
                    if (i16 > 0) {
                        Rect rect = this.mDecorPadding;
                        i9 = View$MeasureSpec.makeMeasureSpec(Math.min(i16 - (rect.left + rect.right), View$MeasureSpec.getSize(i9)), BasicMeasure.EXACTLY);
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                }
                i16 = (int) fraction3;
                if (i16 > 0) {
                    Rect rect2 = this.mDecorPadding;
                    i9 = View$MeasureSpec.makeMeasureSpec(Math.min(i16 - (rect2.left + rect2.right), View$MeasureSpec.getSize(i9)), BasicMeasure.EXACTLY);
                    z8 = true;
                } else {
                    z8 = false;
                }
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z10 ? this.mFixedHeightMajor : this.mFixedHeightMinor;
            if (typedValue2 != null && (i13 = typedValue2.type) != 0) {
                if (i13 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i13 == 6) {
                        int i18 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i18, i18);
                    } else {
                        i14 = 0;
                    }
                    if (i14 > 0) {
                        Rect rect3 = this.mDecorPadding;
                        i10 = View$MeasureSpec.makeMeasureSpec(Math.min(i14 - (rect3.top + rect3.bottom), View$MeasureSpec.getSize(i10)), BasicMeasure.EXACTLY);
                    }
                }
                i14 = (int) fraction2;
                if (i14 > 0) {
                    Rect rect4 = this.mDecorPadding;
                    i10 = View$MeasureSpec.makeMeasureSpec(Math.min(i14 - (rect4.top + rect4.bottom), View$MeasureSpec.getSize(i10)), BasicMeasure.EXACTLY);
                }
            }
        }
        super.onMeasure(i9, i10);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(measuredWidth, BasicMeasure.EXACTLY);
        if (z8 || mode != Integer.MIN_VALUE) {
            z9 = false;
        } else {
            TypedValue typedValue3 = z10 ? this.mMinWidthMinor : this.mMinWidthMajor;
            if (typedValue3 == null || (i11 = typedValue3.type) == 0) {
                z9 = false;
            } else {
                if (i11 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i11 == 6) {
                        int i19 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i19, i19);
                    } else {
                        i12 = 0;
                    }
                    if (i12 > 0) {
                        Rect rect5 = this.mDecorPadding;
                        i12 -= rect5.left + rect5.right;
                    }
                    if (measuredWidth < i12) {
                        iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(i12, BasicMeasure.EXACTLY);
                    } else {
                        z9 = false;
                    }
                }
                i12 = (int) fraction;
                if (i12 > 0) {
                    Rect rect6 = this.mDecorPadding;
                    i12 -= rect6.left + rect6.right;
                }
                if (measuredWidth < i12) {
                    iMakeMeasureSpec = View$MeasureSpec.makeMeasureSpec(i12, BasicMeasure.EXACTLY);
                } else {
                    z9 = false;
                }
            }
        }
        if (z9) {
            super.onMeasure(iMakeMeasureSpec, i10);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAttachListener(ContentFrameLayout$OnAttachListener contentFrameLayout$OnAttachListener) {
        this.mAttachListener = contentFrameLayout$OnAttachListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public void setDecorPadding(int i9, int i10, int i11, int i12) {
        this.mDecorPadding.set(i9, i10, i11, i12);
        if (isLaidOut()) {
            requestLayout();
        }
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }
}
