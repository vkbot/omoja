package com.mega.chery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.GravityCompat;
import com.mega.chery.R;
import com.mega.chery.utils.CarConfigUtils;
import com.mega.chery.utils.OnEventListener;

/* JADX INFO: loaded from: classes2.dex */
public class EasyTextView extends AppCompatTextView {
    private static final String TAG = "EasyTextView";
    private boolean mAdaptChinese;
    private boolean mAdaptMultiLine;
    private boolean mCanDisabled;
    private float mChineseTextSize;
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

    public EasyTextView(Context context) {
        super(context);
        this.mCanDisabled = true;
    }

    public EasyTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCanDisabled = true;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EasyTextView);
        this.mUseAlphaAnimation = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyTextView_ani_alpha, false);
        this.mShowDisable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyTextView_disable, false);
        this.mAdaptChinese = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyTextView_adapt_chinese, false);
        this.mShowClickAnim = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyTextView_click_anim, false);
        this.mAdaptMultiLine = typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyTextView_adapt_multi_line, false);
        if (typedArrayObtainStyledAttributes.getBoolean(R.styleable.EasyTextView_keep_start, false)) {
            if (CarConfigUtils.isRtl(getContext())) {
                setTextDirection(5);
            }
            setGravity(GravityCompat.START);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mCanDisabled && !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            executeAlphaAnimation(0.7f);
            playClickAnim(true);
        } else if (action == 1 || action == 3) {
            executeAlphaAnimation(1.0f);
            playClickAnim(false);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void executeAlphaAnimation(float f) {
        if (this.mUseAlphaAnimation && isClickable()) {
            setAlpha(f);
        }
    }

    @Override // android.widget.TextView, android.view.View
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
            setTextColor(getTextColors().withAlpha((int) ((z ? 1.0f : 0.3f) * 255.0f)));
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        if (this.mAdaptChinese) {
            String string = charSequence.toString();
            if (!TextUtils.isEmpty(string) && string.matches("^[a-z0-9A-Z]+$")) {
                if (this.mChineseTextSize == 0.0f) {
                    this.mChineseTextSize = getTextSize() + 2.0f;
                }
                setTextSize(0, this.mChineseTextSize);
            } else {
                float textSize = getTextSize();
                float f = this.mChineseTextSize;
                if (textSize == f) {
                    setTextSize(0, f - 2.0f);
                }
            }
        }
    }

    private void playClickAnim(boolean z) {
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

    @Override // android.widget.TextView, android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        if (this.mAdaptMultiLine) {
            setMarqueeIfNeed(this, z);
        }
    }

    public static boolean isTextViewEllipsized(TextView textView) {
        Layout layout = textView.getLayout();
        if (layout == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (layout.getEllipsisCount(i) > 0) {
                return true;
            }
        }
        return false;
    }

    public static void setMarqueeIfNeed(TextView textView, boolean z) {
        setMarqueeIfNeed(textView, z, 2);
    }

    public static void setMarqueeIfNeed(TextView textView, boolean z, int i) {
        if (z) {
            if (isTextViewEllipsized(textView)) {
                textView.setSingleLine(true);
                textView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
                return;
            }
            return;
        }
        if (textView.getEllipsize() == TextUtils.TruncateAt.MARQUEE) {
            textView.setSingleLine(false);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setMaxLines(i);
        }
    }
}
