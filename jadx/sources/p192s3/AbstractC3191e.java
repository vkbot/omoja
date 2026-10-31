package p192s3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.GravityCompat;
import org.apache.commons.net.nntp.NNTP;
import p004a3.AbstractC0007a;

/* JADX INFO: renamed from: s3.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3191e extends LinearLayoutCompat {

    /* JADX INFO: renamed from: b */
    public Drawable f9343b;

    /* JADX INFO: renamed from: c */
    public final Rect f9344c;

    /* JADX INFO: renamed from: d */
    public final Rect f9345d;

    /* JADX INFO: renamed from: e */
    public int f9346e;

    /* JADX INFO: renamed from: f */
    public final boolean f9347f;

    /* JADX INFO: renamed from: g */
    public boolean f9348g;

    public AbstractC3191e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9344c = new Rect();
        this.f9345d = new Rect();
        this.f9346e = NNTP.DEFAULT_PORT;
        this.f9347f = true;
        this.f9348g = false;
        TypedArray typedArrayM5136d = AbstractC3198l.m5136d(context, attributeSet, AbstractC0007a.f33l, 0, 0, new int[0]);
        this.f9346e = typedArrayM5136d.getInt(1, this.f9346e);
        Drawable drawable = typedArrayM5136d.getDrawable(0);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f9347f = typedArrayM5136d.getBoolean(2, true);
        typedArrayM5136d.recycle();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f9343b;
        if (drawable != null) {
            if (this.f9348g) {
                this.f9348g = false;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                boolean z9 = this.f9347f;
                Rect rect = this.f9344c;
                if (z9) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                int i10 = this.f9346e;
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                Rect rect2 = this.f9345d;
                Gravity.apply(i10, intrinsicWidth, intrinsicHeight, rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void drawableHotspotChanged(float f8, float f10) {
        super.drawableHotspotChanged(f8, f10);
        Drawable drawable = this.f9343b;
        if (drawable != null) {
            drawable.setHotspot(f8, f10);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f9343b;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f9343b.setState(getDrawableState());
    }

    @Override // android.view.View
    @Nullable
    public Drawable getForeground() {
        return this.f9343b;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f9346e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f9343b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z9, int i10, int i11, int i12, int i13) {
        super.onLayout(z9, i10, i11, i12, i13);
        this.f9348g = z9 | this.f9348g;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f9348g = true;
    }

    @Override // android.view.View
    public void setForeground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f9343b;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f9343b);
            }
            this.f9343b = drawable;
            this.f9348g = true;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f9346e == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i10) {
        if (this.f9346e != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= GravityCompat.START;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f9346e = i10;
            if (i10 == 119 && this.f9343b != null) {
                this.f9343b.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f9343b;
    }
}
