package mega.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.mega.internal.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class ImageSwitch extends AppCompatImageView {
    public static final float DEFAULT_DISABLE_ALPHA = 0.3f;
    public static final float DEFAULT_NORMAL_ALPHA = 1.0f;
    private static final String TAG = "ImageSwitch";
    private View.OnClickListener mClickListener;
    private String mContentDescriptionOff;
    private String mContentDescriptionOn;
    private int mDefaultSwitchResId;
    private float mDisableAlpha;
    private float mNormalAlpha;
    private OnStatusChangeListener mStateChangeLister;
    private int mSwitchOffImageResId;
    private int mSwitchOnImageResId;

    public interface OnStatusChangeListener {
        void onStatusChange(boolean z);
    }

    public void setStateChangeLister(OnStatusChangeListener onStatusChangeListener) {
        this.mStateChangeLister = onStatusChangeListener;
    }

    public ImageSwitch(Context context) {
        this(context, null);
    }

    public ImageSwitch(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: mega.widget.ImageSwitch$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m1799lambda$new$0$megawidgetImageSwitch(view);
            }
        };
        this.mClickListener = onClickListener;
        setOnClickListener(onClickListener);
        initAttrs(attributeSet);
    }

    /* JADX INFO: renamed from: lambda$new$0$mega-widget-ImageSwitch, reason: not valid java name */
    /* synthetic */ void m1799lambda$new$0$megawidgetImageSwitch(View view) {
        setSelected(!isSelected());
    }

    private void initAttrs(AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ImageSwitch);
        this.mContentDescriptionOn = typedArrayObtainStyledAttributes.getString(R.styleable.ImageSwitch_content_description_on);
        this.mContentDescriptionOff = typedArrayObtainStyledAttributes.getString(R.styleable.ImageSwitch_content_description_off);
        this.mDisableAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.ImageSwitch_disable_alpha, 0.3f);
        this.mNormalAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.ImageSwitch_normal_alpha, 1.0f);
        this.mDefaultSwitchResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ImageSwitch_android_src, 0);
        this.mSwitchOnImageResId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ImageSwitch_switch_on_icon, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ImageSwitch_switch_off_icon, 0);
        this.mSwitchOffImageResId = resourceId;
        if (this.mDefaultSwitchResId == 0 && resourceId != 0) {
            setImageResource(resourceId);
        }
        setContentDescription(this.mContentDescriptionOff);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.ImageView, android.view.View
    public void setSelected(boolean z) {
        super.setSelected(z);
        OnStatusChangeListener onStatusChangeListener = this.mStateChangeLister;
        if (onStatusChangeListener != null) {
            onStatusChangeListener.onStatusChange(z);
        }
        if (z) {
            if (!TextUtils.isEmpty(this.mContentDescriptionOff)) {
                setContentDescription(this.mContentDescriptionOff);
            }
            int i = this.mSwitchOnImageResId;
            if (i != 0) {
                setImageResource(i);
            }
        } else {
            if (!TextUtils.isEmpty(this.mContentDescriptionOn)) {
                setContentDescription(this.mContentDescriptionOn);
            }
            int i2 = this.mSwitchOffImageResId;
            if (i2 != 0) {
                setImageResource(i2);
            }
        }
        MLog.d(TAG, "setSelected=" + z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        setAlpha(z ? this.mNormalAlpha : this.mDisableAlpha);
    }
}
