package com.h6ah4i.android.widget.verticalseekbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewParent;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.view.ViewCompat;
import j1.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import z6.a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class VerticalSeekBar extends AppCompatSeekBar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1585b;
    public Method c;
    public int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = 90;
        ViewCompat.setLayoutDirection(this, 0);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f6341a, 0, 0);
            int integer = typedArrayObtainStyledAttributes.getInteger(0, 0);
            if (integer == 90 || integer == 270) {
                this.d = integer;
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private VerticalSeekBarWrapper getWrapper() {
        ViewParent parent = getParent();
        if (parent instanceof VerticalSeekBarWrapper) {
            return (VerticalSeekBarWrapper) parent;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void a(int i9) {
        if (this.c == null) {
            try {
                Method declaredMethod = ProgressBar.class.getDeclaredMethod("setProgress", Integer.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                this.c = declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        Method method = this.c;
        if (method != null) {
            try {
                method.invoke(this, Integer.valueOf(i9), Boolean.TRUE);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
            }
        } else {
            super.setProgress(i9);
        }
        onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(MotionEvent motionEvent) {
        float f8;
        int paddingLeft = super.getPaddingLeft();
        int paddingRight = super.getPaddingRight();
        int height = getHeight() - paddingLeft;
        int i9 = height - paddingRight;
        int y8 = (int) motionEvent.getY();
        int i10 = this.d;
        float f9 = 0.0f;
        if (i10 != 90) {
            f8 = i10 != 270 ? 0.0f : height - y8;
        } else {
            f8 = y8 - paddingLeft;
        }
        if (f8 >= 0.0f && i9 != 0) {
            float f10 = i9;
            f9 = f8 > f10 ? 1.0f : f8 / f10;
        }
        a((int) (f9 * getMax()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean c() {
        return !isInEditMode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getRotationAngle() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            if (!c()) {
                int i9 = this.d;
                if (i9 == 90) {
                    canvas.rotate(90.0f);
                    canvas.translate(0.0f, -super.getWidth());
                } else if (i9 == 270) {
                    canvas.rotate(-90.0f);
                    canvas.translate(-super.getHeight(), 0.0f);
                }
            }
            super.onDraw(canvas);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002d  */
    @Override // android.widget.AbsSeekBar, android.view.View, android.view.KeyEvent$Callback
    public final boolean onKeyDown(int i9, KeyEvent keyEvent) {
        int keyProgressIncrement;
        if (isEnabled()) {
            int i10 = -1;
            boolean z8 = false;
            switch (i9) {
                case 19:
                    if (this.d == 270) {
                        i10 = 1;
                    }
                    z8 = true;
                    if (z8) {
                        keyProgressIncrement = (i10 * getKeyProgressIncrement()) + getProgress();
                        if (keyProgressIncrement >= 0 && keyProgressIncrement <= getMax()) {
                            a(keyProgressIncrement);
                        }
                        return true;
                    }
                    break;
                case 20:
                    if (this.d == 90) {
                        i10 = 1;
                    }
                    z8 = true;
                    if (z8) {
                        keyProgressIncrement = (i10 * getKeyProgressIncrement()) + getProgress();
                        if (keyProgressIncrement >= 0) {
                            a(keyProgressIncrement);
                        }
                        return true;
                    }
                    break;
                case 21:
                case 22:
                    return false;
                default:
                    i10 = 0;
                    if (z8) {
                        keyProgressIncrement = (i10 * getKeyProgressIncrement()) + getProgress();
                        if (keyProgressIncrement >= 0) {
                            a(keyProgressIncrement);
                        }
                        return true;
                    }
                    break;
            }
        }
        return super.onKeyDown(i9, keyEvent);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final synchronized void onMeasure(int i9, int i10) {
        try {
            if (c()) {
                super.onMeasure(i9, i10);
            } else {
                super.onMeasure(i10, i9);
                ViewGroup$LayoutParams layoutParams = getLayoutParams();
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i9, int i10, int i11, int i12) {
        if (c()) {
            super.onSizeChanged(i9, i10, i11, i12);
        } else {
            super.onSizeChanged(i10, i9, i12, i11);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AbsSeekBar, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (c()) {
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
            this.f1585b = true;
            b(motionEvent);
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
                    if (this.f1585b) {
                        this.f1585b = false;
                        setPressed(false);
                    }
                    invalidate();
                    return true;
                }
            } else if (this.f1585b) {
                b(motionEvent);
            }
            return true;
        }
        if (this.f1585b) {
            b(motionEvent);
            this.f1585b = false;
            setPressed(false);
        } else {
            this.f1585b = true;
            b(motionEvent);
            this.f1585b = false;
            ViewParent parent4 = getParent();
            if (parent4 != null) {
                parent4.requestDisallowInterceptTouchEvent(false);
            }
        }
        invalidate();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i9) {
        super.setProgress(i9);
        if (!c()) {
            onSizeChanged(super.getWidth(), super.getHeight(), 0, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRotationAngle(int i9) {
        if (i9 != 90 && i9 != 270) {
            i.k(ai.onnxruntime.a.e(i9, "Invalid angle specified :"));
            return;
        }
        if (this.d == i9) {
            return;
        }
        this.d = i9;
        if (!c()) {
            requestLayout();
            return;
        }
        VerticalSeekBarWrapper wrapper = getWrapper();
        if (wrapper != null) {
            wrapper.a(wrapper.getWidth(), wrapper.getHeight());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AbsSeekBar
    public void setThumb(Drawable drawable) {
        super.setThumb(drawable);
    }
}
