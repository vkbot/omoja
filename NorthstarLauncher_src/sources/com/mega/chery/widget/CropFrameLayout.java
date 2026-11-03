package com.mega.chery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.mega.chery.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class CropFrameLayout extends FrameLayout {
    private EventListener mEventListener;
    private boolean mHasExecRebound;
    private boolean mIsReboundIng;
    private boolean mIsScrollToBottom;
    private float mLastDownY;
    private float mLastOffsetY;
    private final Path mPath;
    private View mReboundView;
    private final int mReboundViewIndex;

    public interface EventListener {
        void onEvent(MotionEvent motionEvent);
    }

    public void setEventListener(EventListener eventListener) {
        this.mEventListener = eventListener;
    }

    public CropFrameLayout(Context context) {
        this(context, null);
    }

    public CropFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropFrameLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public CropFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mPath = new Path();
        setWillNotDraw(false);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CropFrameLayout, i, i2);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.CropFrameLayout_cropPath1);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.CropFrameLayout_cropPath2);
        String string3 = typedArrayObtainStyledAttributes.getString(R.styleable.CropFrameLayout_cropPath3);
        this.mReboundViewIndex = typedArrayObtainStyledAttributes.getInteger(R.styleable.CropFrameLayout_reboundViewIndex, -1);
        typedArrayObtainStyledAttributes.recycle();
        parsePath(string);
        parsePath(string2);
        parsePath(string3);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.clipPath(this.mPath);
    }

    public void setClipPath(String str) {
        parsePath(str);
        invalidate();
    }

    private void parsePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String[] strArrSplit = str.split(",");
        if (strArrSplit.length != 5) {
            return;
        }
        float value = parseValue(strArrSplit[0]);
        float value2 = parseValue(strArrSplit[1]);
        float value3 = parseValue(strArrSplit[2]);
        float value4 = parseValue(strArrSplit[3]);
        float value5 = parseValue(strArrSplit[4]);
        if (value == value3 || value2 == value4) {
            return;
        }
        this.mPath.addRoundRect(value, value2, value3, value4, value5, value5, Path.Direction.CW);
    }

    private float parseValue(String str) {
        int i;
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException e) {
            MLog.e("Error path" + e);
            i = 0;
        }
        return TypedValue.applyDimension(1, i, getContext().getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findTargetReboundView();
    }

    private void findTargetReboundView() {
        int i = this.mReboundViewIndex;
        if (i != -1 && i < getChildCount()) {
            this.mReboundView = getChildAt(this.mReboundViewIndex);
        }
        View view = this.mReboundView;
        if (view != null && (view instanceof RecyclerView)) {
            ((RecyclerView) view).addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.mega.chery.widget.CropFrameLayout.1
                @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                public void onScrolled(RecyclerView recyclerView, int i2, int i3) {
                    super.onScrolled(recyclerView, i2, i3);
                    CropFrameLayout.this.mIsScrollToBottom = !recyclerView.canScrollVertically(1);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        EventListener eventListener = this.mEventListener;
        if (eventListener != null) {
            eventListener.onEvent(motionEvent);
        }
        if (this.mReboundViewIndex != -1 && this.mReboundView != null) {
            handleReboundTouch(motionEvent);
        }
        if (this.mIsReboundIng) {
            return true;
        }
        if (!this.mHasExecRebound) {
            return super.dispatchTouchEvent(motionEvent);
        }
        this.mHasExecRebound = false;
        return true;
    }

    private void handleReboundTouch(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mLastDownY = motionEvent.getY();
            this.mLastOffsetY = motionEvent.getY();
            return;
        }
        boolean z = false;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                float y = motionEvent.getY();
                if (this.mIsScrollToBottom && y - this.mLastDownY < 0.0f) {
                    z = true;
                }
                this.mIsReboundIng = z;
                float f = y - this.mLastOffsetY;
                this.mLastOffsetY = y;
                if (z) {
                    this.mReboundView.setTranslationY(this.mReboundView.getTranslationY() + (f / 2.0f));
                    return;
                } else {
                    this.mReboundView.setTranslationY(0.0f);
                    return;
                }
            }
            if (actionMasked != 3) {
                return;
            }
        }
        if (this.mIsReboundIng) {
            this.mHasExecRebound = true;
            this.mReboundView.animate().translationY(0.0f).setDuration(200L).start();
        }
        this.mIsReboundIng = false;
    }
}
