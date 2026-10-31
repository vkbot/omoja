package com.h6ah4i.android.widget.verticalseekbar;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p099j1.C1929i;
import p261z6.AbstractC3761a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class VerticalSeekBar extends AppCompatSeekBar {

    /* JADX INFO: renamed from: b */
    public boolean f2801b;

    /* JADX INFO: renamed from: c */
    public Method f2802c;

    /* JADX INFO: renamed from: d */
    public int f2803d;

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2803d = 90;
        ViewCompat.setLayoutDirection(this, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3761a.f11216a, 0, 0);
            int integer = typedArrayObtainStyledAttributes.getInteger(0, 0);
            if (integer == 90 || integer == 270) {
                this.f2803d = integer;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private VerticalSeekBarWrapper getWrapper() {
        ViewParent parent = getParent();
        if (parent instanceof VerticalSeekBarWrapper) {
            return (VerticalSeekBarWrapper) parent;
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2182a(int i10) {
        if (this.f2802c == null) {
            try {
                Method declaredMethod = ProgressBar.class.getDeclaredMethod("setProgress", Integer.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                this.f2802c = declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        Method method = this.f2802c;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(i10), Boolean.TRUE);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        } else {
            super.setProgress(i10);
        }
        onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
    }

    /* JADX INFO: renamed from: b */
    public final void m2183b(MotionEvent motionEvent) {
        float f8;
        int paddingLeft = super.getPaddingLeft();
        int paddingRight = super.getPaddingRight();
        int height = getHeight() - paddingLeft;
        int i10 = height - paddingRight;
        int y9 = (int) motionEvent.getY();
        int i11 = this.f2803d;
        float f10 = 0.0f;
        if (i11 != 90) {
            f8 = i11 != 270 ? 0.0f : height - y9;
        } else {
            f8 = y9 - paddingLeft;
        }
        if (f8 >= 0.0f && i10 != 0) {
            float f11 = i10;
            f10 = f8 > f11 ? 1.0f : f8 / f11;
        }
        m2182a((int) (f10 * getMax()));
    }

    /* JADX INFO: renamed from: c */
    public final boolean m2184c() {
        return !isInEditMode();
    }

    public int getRotationAngle() {
        return this.f2803d;
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            if (!m2184c()) {
                int i10 = this.f2803d;
                if (i10 == 90) {
                    canvas.rotate(90.0f);
                    canvas.translate(0.0f, -super.getWidth());
                } else if (i10 == 270) {
                    canvas.rotate(-90.0f);
                    canvas.translate(-super.getHeight(), 0.0f);
                }
            }
            super.onDraw(canvas);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    @Override // android.widget.AbsSeekBar, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        int keyProgressIncrement;
        if (isEnabled()) {
            int i11 = -1;
            boolean z9 = false;
            switch (i10) {
                case 19:
                    if (this.f2803d == 270) {
                        i11 = 1;
                    }
                    z9 = true;
                    if (z9) {
                        keyProgressIncrement = (i11 * getKeyProgressIncrement()) + getProgress();
                        if (keyProgressIncrement >= 0 && keyProgressIncrement <= getMax()) {
                            m2182a(keyProgressIncrement);
                        }
                        return true;
                    }
                    break;
                case 20:
                    if (this.f2803d == 90) {
                        i11 = 1;
                    }
                    z9 = true;
                    if (z9) {
                        keyProgressIncrement = (i11 * getKeyProgressIncrement()) + getProgress();
                        if (keyProgressIncrement >= 0) {
                            m2182a(keyProgressIncrement);
                        }
                        return true;
                    }
                    break;
                case 21:
                case 22:
                    return false;
                default:
                    i11 = 0;
                    if (z9) {
                        keyProgressIncrement = (i11 * getKeyProgressIncrement()) + getProgress();
                        if (keyProgressIncrement >= 0) {
                            m2182a(keyProgressIncrement);
                        }
                        return true;
                    }
                    break;
            }
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i10, int i11) {
        try {
            if (m2184c()) {
                super.onMeasure(i10, i11);
            } else {
                super.onMeasure(i11, i10);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (!isInEditMode() || layoutParams == null || layoutParams.height < 0) {
                    setMeasuredDimension(super.getMeasuredHeight(), super.getMeasuredWidth());
                } else {
                    setMeasuredDimension(super.getMeasuredHeight(), layoutParams.height);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        if (m2184c()) {
            super.onSizeChanged(i10, i11, i12, i13);
        } else {
            super.onSizeChanged(i11, i10, i13, i12);
        }
    }

    @Override // android.widget.AbsSeekBar, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (m2184c()) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (zOnTouchEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                } else if ((action == 1 || action == 3) && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    return zOnTouchEvent;
                }
            }
            return zOnTouchEvent;
        }
        if (!isEnabled()) {
            return false;
        }
        int action2 = motionEvent.getAction();
        if (action2 == 0) {
            setPressed(true);
            this.f2801b = true;
            m2183b(motionEvent);
            ViewParent parent3 = getParent();
            if (parent3 != null) {
                parent3.requestDisallowInterceptTouchEvent(true);
            }
            invalidate();
            return true;
        }
        if (action2 != 1) {
            if (action2 != 2) {
                if (action2 == 3) {
                    if (this.f2801b) {
                        this.f2801b = false;
                        setPressed(false);
                    }
                    invalidate();
                    return true;
                }
            } else if (this.f2801b) {
                m2183b(motionEvent);
            }
            return true;
        }
        if (this.f2801b) {
            m2183b(motionEvent);
            this.f2801b = false;
            setPressed(false);
        } else {
            this.f2801b = true;
            m2183b(motionEvent);
            this.f2801b = false;
            ViewParent parent4 = getParent();
            if (parent4 != null) {
                parent4.requestDisallowInterceptTouchEvent(false);
            }
        }
        invalidate();
        return true;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i10) {
        super.setProgress(i10);
        if (!m2184c()) {
            onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
        }
    }

    public void setRotationAngle(int i10) {
        if (i10 != 90 && i10 != 270) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Invalid angle specified :"));
            return;
        }
        if (this.f2803d == i10) {
            return;
        }
        this.f2803d = i10;
        if (!m2184c()) {
            requestLayout();
            return;
        }
        VerticalSeekBarWrapper wrapper = getWrapper();
        if (wrapper != null) {
            wrapper.m2185a(wrapper.getWidth(), wrapper.getHeight());
        }
    }

    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        super.setThumb(drawable);
    }
}
