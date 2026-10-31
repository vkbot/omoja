package androidx.recyclerview.widget;

import android.view.GestureDetector$SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ItemTouchHelper$ItemTouchHelperGestureListener extends GestureDetector$SimpleOnGestureListener {
    private boolean mShouldReactToLongPress = true;
    final /* synthetic */ ItemTouchHelper this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ItemTouchHelper$ItemTouchHelperGestureListener(ItemTouchHelper itemTouchHelper) {
        this.this$0 = itemTouchHelper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void doNotReactToLongPress() {
        this.mShouldReactToLongPress = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.GestureDetector$SimpleOnGestureListener, android.view.GestureDetector$OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.GestureDetector$SimpleOnGestureListener, android.view.GestureDetector$OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        View viewFindChildView;
        RecyclerView$ViewHolder childViewHolder;
        if (!this.mShouldReactToLongPress || (viewFindChildView = this.this$0.findChildView(motionEvent)) == null || (childViewHolder = this.this$0.mRecyclerView.getChildViewHolder(viewFindChildView)) == null) {
            return;
        }
        ItemTouchHelper itemTouchHelper = this.this$0;
        if (itemTouchHelper.mCallback.hasDragFlag(itemTouchHelper.mRecyclerView, childViewHolder)) {
            int pointerId = motionEvent.getPointerId(0);
            int i9 = this.this$0.mActivePointerId;
            if (pointerId == i9) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i9);
                float x8 = motionEvent.getX(iFindPointerIndex);
                float y8 = motionEvent.getY(iFindPointerIndex);
                ItemTouchHelper itemTouchHelper2 = this.this$0;
                itemTouchHelper2.mInitialTouchX = x8;
                itemTouchHelper2.mInitialTouchY = y8;
                itemTouchHelper2.mDy = 0.0f;
                itemTouchHelper2.mDx = 0.0f;
                if (itemTouchHelper2.mCallback.isLongPressDragEnabled()) {
                    this.this$0.select(childViewHolder, 2);
                }
            }
        }
    }
}
