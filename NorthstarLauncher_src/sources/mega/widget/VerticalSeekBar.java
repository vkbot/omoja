package mega.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.mega.internal.R;

/* JADX INFO: loaded from: classes2.dex */
public class VerticalSeekBar extends AppCompatSeekBar {
    private static final int DEGREES_90 = 90;
    private boolean mIsMoving;
    private SeekBar.OnSeekBarChangeListener mListener;
    private final boolean mReversible;

    public VerticalSeekBar(Context context) {
        this(context, null);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VerticalSeekBar, i, 0);
        this.mReversible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.VerticalSeekBar_reversible, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i2, i, i4, i3);
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        super.setProgress(i);
        onSizeChanged(getWidth(), getHeight(), 0, 0);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i2, i);
        setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
    }

    @Override // androidx.appcompat.widget.AppCompatSeekBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mReversible) {
            canvas.rotate(-90.0f);
            canvas.translate(-getHeight(), 0.0f);
        } else {
            canvas.rotate(90.0f);
            canvas.translate(0.0f, -getWidth());
        }
        super.onDraw(canvas);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x001e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0022  */
    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    @Override // android.widget.AbsSeekBar, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener;
        if (!isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mIsMoving = false;
            SeekBar.OnSeekBarChangeListener onSeekBarChangeListener2 = this.mListener;
            if (onSeekBarChangeListener2 != null) {
                onSeekBarChangeListener2.onStartTrackingTouch(this);
            }
        } else if (action == 1) {
            if (!this.mIsMoving) {
                changeProgress(motionEvent);
            }
            this.mIsMoving = false;
            onSeekBarChangeListener = this.mListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onStopTrackingTouch(this);
            }
        } else if (action == 2) {
            this.mIsMoving = true;
            changeProgress(motionEvent);
        } else if (action == 3) {
            if (!this.mIsMoving) {
                changeProgress(motionEvent);
            }
            this.mIsMoving = false;
            onSeekBarChangeListener = this.mListener;
            if (onSeekBarChangeListener != null) {
                onSeekBarChangeListener.onStopTrackingTouch(this);
            }
        }
        return true;
    }

    private void changeProgress(MotionEvent motionEvent) {
        if (this.mReversible) {
            setProgress(Math.round((getMax() - getMin()) * (1.0f - (motionEvent.getY() / getHeight()))) + getMin());
        } else {
            setProgress(Math.round(((getMax() - getMin()) * motionEvent.getY()) / getHeight()) + getMin());
        }
        SeekBar.OnSeekBarChangeListener onSeekBarChangeListener = this.mListener;
        if (onSeekBarChangeListener != null) {
            onSeekBarChangeListener.onProgressChanged(this, getProgress(), true);
        }
    }

    @Override // android.widget.SeekBar
    public void setOnSeekBarChangeListener(SeekBar.OnSeekBarChangeListener onSeekBarChangeListener) {
        super.setOnSeekBarChangeListener(onSeekBarChangeListener);
        this.mListener = onSeekBarChangeListener;
    }
}
