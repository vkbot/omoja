package androidx.core.view;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnLongClickListener;
import android.view.View$OnTouchListener;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DragStartHelper {
    private boolean mDragging;
    private int mLastTouchX;
    private int mLastTouchY;
    private final DragStartHelper$OnDragStartListener mListener;
    private final View$OnLongClickListener mLongClickListener = new c(this);
    private final View$OnTouchListener mTouchListener = new d(this);
    private final View mView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DragStartHelper(@NonNull View view, @NonNull DragStartHelper$OnDragStartListener dragStartHelper$OnDragStartListener) {
        this.mView = view;
        this.mListener = dragStartHelper$OnDragStartListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attach() {
        this.mView.setOnLongClickListener(this.mLongClickListener);
        this.mView.setOnTouchListener(this.mTouchListener);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detach() {
        this.mView.setOnLongClickListener(null);
        this.mView.setOnTouchListener(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void getTouchPosition(@NonNull Point point) {
        point.set(this.mLastTouchX, this.mLastTouchY);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean onLongClick(@NonNull View view) {
        if (this.mDragging) {
            return true;
        }
        boolean zOnDragStart = this.mListener.onDragStart(view, this);
        this.mDragging = zOnDragStart;
        return zOnDragStart;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:26:0x0046  */
    public boolean onTouch(@NonNull View view, @NonNull MotionEvent motionEvent) {
        int x8 = (int) motionEvent.getX();
        int y8 = (int) motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mLastTouchX = x8;
            this.mLastTouchY = y8;
        } else if (action == 1) {
            this.mDragging = false;
        } else if (action != 2) {
            if (action == 3) {
                this.mDragging = false;
            }
        } else if (MotionEventCompat.isFromSource(motionEvent, 8194) && (motionEvent.getButtonState() & 1) != 0 && !this.mDragging && (this.mLastTouchX != x8 || this.mLastTouchY != y8)) {
            this.mLastTouchX = x8;
            this.mLastTouchY = y8;
            boolean zOnDragStart = this.mListener.onDragStart(view, this);
            this.mDragging = zOnDragStart;
            return zOnDragStart;
        }
        return false;
    }
}
