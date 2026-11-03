package com.mega.chery.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.mega.chery.R;
import mega.log.MLog;

/* JADX INFO: loaded from: classes2.dex */
public class SlideUpdownView extends RelativeLayout {
    public static final int DURATION_LIST = 300;
    private static final String TAG = "SlideUpdownView";
    private View mLeftScrollView;
    private TextView mLeftTxtSlideDown;
    private TextView mLeftTxtSlideUp;
    private BoundaryListener mListener;
    private View mScrollView;
    private TextView mTxtSlideDown;
    private TextView mTxtSlideUp;
    public int slideDistance;

    public interface BoundaryListener {
        void lowerBoundaryTts();

        void upperBoundaryTts();
    }

    public void setBoundaryListener(BoundaryListener boundaryListener) {
        this.mListener = boundaryListener;
    }

    public void setLeftSrollView(View view) {
        this.mLeftScrollView = view;
    }

    public void setSlideDistance(int i) {
        this.slideDistance = i;
    }

    public void setSrollView(View view) {
        this.mScrollView = view;
    }

    public SlideUpdownView(Context context) {
        super(context);
        this.slideDistance = 100;
        init(context);
    }

    public SlideUpdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.slideDistance = 100;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlideUpdownView);
        this.slideDistance = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.SlideUpdownView_slide_distance, 100.0f);
        typedArrayObtainStyledAttributes.recycle();
        init(context);
    }

    public SlideUpdownView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.slideDistance = 100;
        init(context);
    }

    private void init(Context context) {
        View viewInflate = View.inflate(context, R.layout.layout_slied_updown_view, this);
        this.mTxtSlideUp = (TextView) viewInflate.findViewById(R.id.txtSlideUp);
        this.mTxtSlideDown = (TextView) viewInflate.findViewById(R.id.txtSlideDown);
        this.mLeftTxtSlideUp = (TextView) viewInflate.findViewById(R.id.txtLeftSlideUp);
        this.mLeftTxtSlideDown = (TextView) viewInflate.findViewById(R.id.txtLeftSlideDown);
        this.mTxtSlideUp.setOnClickListener(new View.OnClickListener() { // from class: com.mega.chery.widget.SlideUpdownView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MLog.d(SlideUpdownView.TAG, "mTxtSlideUp = " + SlideUpdownView.this.mTxtSlideUp);
                SlideUpdownView slideUpdownView = SlideUpdownView.this;
                slideUpdownView.onSlide(slideUpdownView.mScrollView, true);
            }
        });
        this.mTxtSlideDown.setOnClickListener(new View.OnClickListener() { // from class: com.mega.chery.widget.SlideUpdownView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MLog.d(SlideUpdownView.TAG, "mTxtSlideDown = " + SlideUpdownView.this.mTxtSlideDown);
                SlideUpdownView slideUpdownView = SlideUpdownView.this;
                slideUpdownView.onSlide(slideUpdownView.mScrollView, false);
            }
        });
        this.mLeftTxtSlideUp.setOnClickListener(new View.OnClickListener() { // from class: com.mega.chery.widget.SlideUpdownView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MLog.d(SlideUpdownView.TAG, "left up");
                if (SlideUpdownView.this.mListener != null) {
                    SlideUpdownView slideUpdownView = SlideUpdownView.this;
                    if (slideUpdownView.checkBoundary(slideUpdownView.mLeftScrollView, true)) {
                        SlideUpdownView.this.mListener.upperBoundaryTts();
                        return;
                    } else {
                        SlideUpdownView slideUpdownView2 = SlideUpdownView.this;
                        slideUpdownView2.onSlide(slideUpdownView2.mLeftScrollView, true);
                        return;
                    }
                }
                SlideUpdownView slideUpdownView3 = SlideUpdownView.this;
                slideUpdownView3.onSlide(slideUpdownView3.mLeftScrollView, true);
            }
        });
        this.mLeftTxtSlideDown.setOnClickListener(new View.OnClickListener() { // from class: com.mega.chery.widget.SlideUpdownView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MLog.d(SlideUpdownView.TAG, "left down");
                if (SlideUpdownView.this.mListener != null) {
                    SlideUpdownView slideUpdownView = SlideUpdownView.this;
                    if (slideUpdownView.checkBoundary(slideUpdownView.mLeftScrollView, false)) {
                        SlideUpdownView.this.mListener.lowerBoundaryTts();
                        return;
                    } else {
                        SlideUpdownView slideUpdownView2 = SlideUpdownView.this;
                        slideUpdownView2.onSlide(slideUpdownView2.mLeftScrollView, false);
                        return;
                    }
                }
                SlideUpdownView slideUpdownView3 = SlideUpdownView.this;
                slideUpdownView3.onSlide(slideUpdownView3.mLeftScrollView, false);
            }
        });
    }

    public int dp2px(Context context, float f) {
        float f2 = context.getResources().getDisplayMetrics().density;
        MLog.d(TAG, "densityScale = " + f2);
        return (int) ((f * f2) + 0.5f);
    }

    public void onSlide(View view, Boolean bool) {
        int iDp2px;
        if (view == null) {
            return;
        }
        if (bool.booleanValue()) {
            iDp2px = dp2px(getContext(), this.slideDistance);
        } else {
            iDp2px = -dp2px(getContext(), this.slideDistance);
        }
        if (view instanceof ScrollView) {
            ((ScrollView) view).smoothScrollBy(0, iDp2px);
        } else if (view instanceof NestedScrollView) {
            ((NestedScrollView) view).smoothScrollBy(0, iDp2px);
        } else if (view instanceof RecyclerView) {
            ((RecyclerView) view).smoothScrollBy(0, iDp2px);
        } else if (view instanceof ListView) {
            ((ListView) view).smoothScrollBy(iDp2px, 300);
        }
        MLog.d(TAG, "scrollView = " + view + " distance = " + iDp2px);
    }

    public boolean checkBoundary(View view, Boolean bool) {
        if (view instanceof ScrollView) {
            ScrollView scrollView = (ScrollView) view;
            int measuredHeight = scrollView.getChildAt(0).getMeasuredHeight() - scrollView.getHeight();
            if (bool.booleanValue()) {
                if (scrollView.getScrollY() <= 0) {
                    return true;
                }
            } else if (scrollView.getScrollY() >= measuredHeight) {
                return true;
            }
            return false;
        }
        if (!(view instanceof NestedScrollView)) {
            return false;
        }
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        int measuredHeight2 = nestedScrollView.getChildAt(0).getMeasuredHeight() - nestedScrollView.getHeight();
        int scrollY = nestedScrollView.getScrollY();
        MLog.i(TAG, "maxScrollY = " + measuredHeight2 + "; scrollY = " + scrollY);
        if (bool.booleanValue()) {
            if (scrollY <= 0) {
                return true;
            }
        } else if (scrollY >= measuredHeight2) {
            return true;
        }
        return false;
    }
}
