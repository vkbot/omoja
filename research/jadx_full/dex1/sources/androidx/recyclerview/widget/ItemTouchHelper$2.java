package androidx.recyclerview.widget;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$2 implements RecyclerView$OnItemTouchListener {
    final /* synthetic */ ItemTouchHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$2(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnItemTouchListener
    public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        int iFindPointerIndex;
        ItemTouchHelper$RecoverAnimation itemTouchHelper$RecoverAnimationFindAnimation;
        this.this$0.mGestureDetector.onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.this$0.mActivePointerId = motionEvent.getPointerId(0);
            this.this$0.mInitialTouchX = motionEvent.getX();
            this.this$0.mInitialTouchY = motionEvent.getY();
            this.this$0.obtainVelocityTracker();
            ItemTouchHelper itemTouchHelper = this.this$0;
            if (itemTouchHelper.mSelected == null && (itemTouchHelper$RecoverAnimationFindAnimation = itemTouchHelper.findAnimation(motionEvent)) != null) {
                ItemTouchHelper itemTouchHelper2 = this.this$0;
                itemTouchHelper2.mInitialTouchX -= itemTouchHelper$RecoverAnimationFindAnimation.mX;
                itemTouchHelper2.mInitialTouchY -= itemTouchHelper$RecoverAnimationFindAnimation.mY;
                itemTouchHelper2.endRecoverAnimation(itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder, true);
                if (this.this$0.mPendingCleanup.remove(itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder.itemView)) {
                    ItemTouchHelper itemTouchHelper3 = this.this$0;
                    itemTouchHelper3.mCallback.clearView(itemTouchHelper3.mRecyclerView, itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder);
                }
                this.this$0.select(itemTouchHelper$RecoverAnimationFindAnimation.mViewHolder, itemTouchHelper$RecoverAnimationFindAnimation.mActionState);
                ItemTouchHelper itemTouchHelper4 = this.this$0;
                itemTouchHelper4.updateDxDy(motionEvent, itemTouchHelper4.mSelectedFlags, 0);
            }
        } else if (actionMasked == 3 || actionMasked == 1) {
            ItemTouchHelper itemTouchHelper5 = this.this$0;
            itemTouchHelper5.mActivePointerId = -1;
            itemTouchHelper5.select(null, 0);
        } else {
            int i9 = this.this$0.mActivePointerId;
            if (i9 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i9)) >= 0) {
                this.this$0.checkSelectForSwipe(actionMasked, motionEvent, iFindPointerIndex);
            }
        }
        VelocityTracker velocityTracker = this.this$0.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return this.this$0.mSelected != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean z8) {
        if (z8) {
            this.this$0.select(null, 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.RecyclerView$OnItemTouchListener
    public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
        this.this$0.mGestureDetector.onTouchEvent(motionEvent);
        VelocityTracker velocityTracker = this.this$0.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (this.this$0.mActivePointerId == -1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int iFindPointerIndex = motionEvent.findPointerIndex(this.this$0.mActivePointerId);
        if (iFindPointerIndex >= 0) {
            this.this$0.checkSelectForSwipe(actionMasked, motionEvent, iFindPointerIndex);
        }
        ItemTouchHelper itemTouchHelper = this.this$0;
        RecyclerView$ViewHolder recyclerView$ViewHolder = itemTouchHelper.mSelected;
        if (recyclerView$ViewHolder == null) {
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (iFindPointerIndex >= 0) {
                    itemTouchHelper.updateDxDy(motionEvent, itemTouchHelper.mSelectedFlags, iFindPointerIndex);
                    this.this$0.moveIfNecessary(recyclerView$ViewHolder);
                    ItemTouchHelper itemTouchHelper2 = this.this$0;
                    itemTouchHelper2.mRecyclerView.removeCallbacks(itemTouchHelper2.mScrollRunnable);
                    this.this$0.mScrollRunnable.run();
                    this.this$0.mRecyclerView.invalidate();
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return;
                }
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                ItemTouchHelper itemTouchHelper3 = this.this$0;
                if (pointerId == itemTouchHelper3.mActivePointerId) {
                    itemTouchHelper3.mActivePointerId = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    ItemTouchHelper itemTouchHelper4 = this.this$0;
                    itemTouchHelper4.updateDxDy(motionEvent, itemTouchHelper4.mSelectedFlags, actionIndex);
                    return;
                }
                return;
            }
            VelocityTracker velocityTracker2 = itemTouchHelper.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.clear();
            }
        }
        this.this$0.select(null, 0);
        this.this$0.mActivePointerId = -1;
    }
}
