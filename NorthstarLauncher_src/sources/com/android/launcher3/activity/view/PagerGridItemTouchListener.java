package com.android.launcher3.activity.view;

import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public class PagerGridItemTouchListener extends RecyclerView.SimpleOnItemTouchListener {
    private static final String TAG = "ItemTouchListener";
    private int mInitialTouchX;
    private int mInitialTouchY;
    private final PagerGridLayoutManager mLayoutManager;
    private final RecyclerView mRecyclerView;
    private int mScrollPointerId;

    PagerGridItemTouchListener(PagerGridLayoutManager layoutManager, RecyclerView recyclerView) {
        this.mLayoutManager = layoutManager;
        this.mRecyclerView = recyclerView;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0067  */
    @Override // androidx.recyclerview.widget.RecyclerView.SimpleOnItemTouchListener, androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView rv, MotionEvent e) {
        int actionMasked = e.getActionMasked();
        int actionIndex = e.getActionIndex();
        if (actionMasked == 0) {
            this.mScrollPointerId = e.getPointerId(actionIndex);
            this.mInitialTouchX = (int) (e.getX(actionIndex) + 0.5f);
            this.mInitialTouchY = (int) (e.getY(actionIndex) + 0.5f);
            this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = e.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                return false;
            }
            int x = (int) (e.getX(iFindPointerIndex) + 0.5f);
            int y = (int) (e.getY(iFindPointerIndex) + 0.5f);
            int i = x - this.mInitialTouchX;
            int i2 = y - this.mInitialTouchY;
            if (this.mLayoutManager.canScrollHorizontally()) {
                this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(this.mRecyclerView.canScrollHorizontally(-i));
            }
            if (this.mLayoutManager.canScrollVertically()) {
                this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(this.mRecyclerView.canScrollVertically(-i2));
            }
        } else if (actionMasked == 5) {
            this.mScrollPointerId = e.getPointerId(actionIndex);
            this.mInitialTouchX = (int) (e.getX(actionIndex) + 0.5f);
            this.mInitialTouchY = (int) (e.getY(actionIndex) + 0.5f);
            this.mRecyclerView.getParent().requestDisallowInterceptTouchEvent(true);
        } else if (actionMasked == 6) {
            onPointerUp(e);
        }
        return false;
    }

    private void onPointerUp(MotionEvent e) {
        int actionIndex = e.getActionIndex();
        if (e.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = e.getPointerId(i);
            this.mInitialTouchX = (int) (e.getX(i) + 0.5f);
            this.mInitialTouchY = (int) (e.getY(i) + 0.5f);
        }
    }
}
