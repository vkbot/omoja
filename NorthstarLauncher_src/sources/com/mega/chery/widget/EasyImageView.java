package com.mega.chery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.text.TextUtilsCompat;
import com.mega.chery.R;
import com.mega.chery.utils.OnEventListener;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class EasyImageView extends AppCompatImageView implements View.OnClickListener {
    private static final String TAG = "EasyImageView";
    private boolean mCanDisabled;
    private int mClickInterval;
    private boolean mInterceptOnClick;
    private long mLastClick;
    private View.OnClickListener mListener;
    private OnEventListener<Boolean> mOnEventListener;
    private boolean mShowClickAnim;
    private boolean mShowDisable;
    private boolean mUseAlphaAnimation;

    public void setCanDisabled(boolean z) {
        this.mCanDisabled = z;
    }

    public void setOnSetEnabledListener(OnEventListener<Boolean> onEventListener) {
        this.mOnEventListener = onEventListener;
    }

    public EasyImageView(Context context) {
        super(context);
        this.mCanDisabled = true;
    }

    public EasyImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EasyImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCanDisabled = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EasyImageView, i, 0);
        this.mUseAlphaAnimation = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyImageView_animation_alpha, false);
        this.mShowDisable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyImageView_show_disable, false);
        this.mShowClickAnim = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyImageView_click_anim, false);
        this.mClickInterval = typedArrayObtainStyledAttributes.getInt(R.styleable.EasyImageView_click_interval, 0);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyImageView_android_autoMirrored, false);
        typedArrayObtainStyledAttributes.recycle();
        boolean z2 = this.mClickInterval > 0;
        this.mInterceptOnClick = z2;
        if (z2) {
            super.setOnClickListener(this);
        }
        if (z) {
            if (TextUtilsCompat.getLayoutDirectionFromLocale(context.getResources().getConfiguration().getLocales().get(0)) == 1) {
                setScaleX(-1.0f);
            } else {
                setScaleX(1.0f);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mCanDisabled && !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            playAlphaAnim(0.7f);
            playClickAnim(true);
        } else if (action == 1 || action == 3) {
            playAlphaAnim(1.0f);
            playClickAnim(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void playClickAnim(boolean z) {
        if (this.mShowClickAnim) {
            if (z) {
                animate().scaleX(1.3f).setDuration(300L).start();
                animate().scaleY(1.3f).setDuration(300L).start();
            } else {
                animate().scaleX(1.0f).start();
                animate().scaleY(1.0f).start();
            }
        }
    }

    public void playAlphaAnim(float f) {
        if (isClickable() && this.mUseAlphaAnimation) {
            setAlpha(f);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        boolean zIsEnabled = isEnabled();
        if (z) {
            super.setEnabled(true);
        } else if (this.mCanDisabled) {
            super.setEnabled(false);
        }
        OnEventListener<Boolean> onEventListener = this.mOnEventListener;
        if (onEventListener != null && zIsEnabled != z) {
            onEventListener.onCallBack(Boolean.valueOf(z));
        }
        if (this.mShowDisable) {
            if (!z) {
                setImageAlpha(76);
            } else {
                setImageAlpha(255);
            }
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        if (!isEnabled()) {
            MLog.e(TAG, "is disabled,can not perform click");
            return false;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        if (this.mInterceptOnClick) {
            this.mListener = onClickListener;
        } else {
            super.setOnClickListener(onClickListener);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - this.mLastClick < this.mClickInterval) {
            MLog.d(TAG, "fast click return");
            return;
        }
        View.OnClickListener onClickListener = this.mListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
        this.mLastClick = jElapsedRealtime;
    }

    public boolean isNormal() {
        return getImageAlpha() == 255;
    }
}
