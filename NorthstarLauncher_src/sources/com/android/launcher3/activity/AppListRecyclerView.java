package com.android.launcher3.activity;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.ViewUtils;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R;
import com.android.launcher3.activity.view.DragStateProvider;
import com.android.launcher3.activity.view.PagerGridLayoutManager;
import com.mega.chery.widget.CheryRecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class AppListRecyclerView extends CheryRecyclerView implements DragStateProvider {
    private static final int MSG_SCROLL_TIMEOUT = 100;
    private static final long SCROLL_PAGE_DELAY = 2000;
    private static final int SCROLL_TO_LEFT = -1;
    private static final int SCROLL_TO_RIGHT = 1;
    private RecyclerView.ViewHolder mDraggedViewHolder;
    private final Handler mHandler;
    private boolean mIsDragging;
    private final int mScrollZone;

    @Override // com.android.launcher3.activity.view.DragStateProvider
    public RecyclerView.ViewHolder getDraggingViewHolder() {
        return this.mDraggedViewHolder;
    }

    @Override // com.android.launcher3.activity.view.DragStateProvider
    public boolean isDragging() {
        return this.mIsDragging;
    }

    public AppListRecyclerView(Context context) {
        this(context, null);
    }

    public AppListRecyclerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.launcher3.activity.AppListRecyclerView.1
            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                if (msg.what == 100) {
                    RecyclerView.LayoutManager layoutManager = AppListRecyclerView.this.getLayoutManager();
                    if (layoutManager instanceof PagerGridLayoutManager) {
                        if (msg.arg1 == -1) {
                            if (ViewUtils.isLayoutRtl(AppListRecyclerView.this)) {
                                ((PagerGridLayoutManager) layoutManager).smoothScrollToNextPager();
                                return;
                            } else {
                                ((PagerGridLayoutManager) layoutManager).smoothScrollToPrePager();
                                return;
                            }
                        }
                        if (msg.arg1 == 1) {
                            if (ViewUtils.isLayoutRtl(AppListRecyclerView.this)) {
                                ((PagerGridLayoutManager) layoutManager).smoothScrollToPrePager();
                            } else {
                                ((PagerGridLayoutManager) layoutManager).smoothScrollToNextPager();
                            }
                        }
                    }
                }
            }
        };
        this.mScrollZone = context.getResources().getDimensionPixelSize(R.dimen.app_list_scroll_zone);
    }

    @Override // com.mega.chery.widget.CheryRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.View
    public boolean onTouchEvent(MotionEvent e) {
        if (this.mIsDragging) {
            float x = e.getX();
            if (x < this.mScrollZone || x > getWidth() - this.mScrollZone) {
                if (!this.mHandler.hasMessages(100)) {
                    Message messageObtain = Message.obtain(this.mHandler, 100);
                    messageObtain.arg1 = x < ((float) this.mScrollZone) ? -1 : 1;
                    this.mHandler.sendMessageDelayed(messageObtain, 2000L);
                }
            } else {
                this.mHandler.removeMessages(100);
            }
            int scrollState = getScrollState();
            if (e.getAction() == 2 && (scrollState == 1 || scrollState == 2)) {
                return true;
            }
        }
        return super.onTouchEvent(e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    @Override // com.android.launcher3.activity.view.DragStateProvider
    public void setDragging(boolean dragging, RecyclerView.ViewHolder viewHolder) {
        this.mIsDragging = dragging;
        this.mDraggedViewHolder = viewHolder;
        if (!dragging || viewHolder == null) {
            this.mHandler.removeMessages(100);
        }
    }
}
