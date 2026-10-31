package androidx.recyclerview.widget;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class BatchingListUpdateCallback implements ListUpdateCallback {
    private static final int TYPE_ADD = 1;
    private static final int TYPE_CHANGE = 3;
    private static final int TYPE_NONE = 0;
    private static final int TYPE_REMOVE = 2;
    final ListUpdateCallback mWrapped;
    int mLastEventType = 0;
    int mLastEventPosition = -1;
    int mLastEventCount = -1;
    Object mLastEventPayload = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.mWrapped = listUpdateCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void dispatchLastEvent() {
        int i9 = this.mLastEventType;
        if (i9 == 0) {
            return;
        }
        if (i9 == 1) {
            this.mWrapped.onInserted(this.mLastEventPosition, this.mLastEventCount);
        } else if (i9 == 2) {
            this.mWrapped.onRemoved(this.mLastEventPosition, this.mLastEventCount);
        } else if (i9 == 3) {
            this.mWrapped.onChanged(this.mLastEventPosition, this.mLastEventCount, this.mLastEventPayload);
        }
        this.mLastEventPayload = null;
        this.mLastEventType = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i9, int i10, Object obj) {
        int i11;
        if (this.mLastEventType == 3) {
            int i12 = this.mLastEventPosition;
            int i13 = this.mLastEventCount;
            if (i9 <= i12 + i13 && (i11 = i9 + i10) >= i12 && this.mLastEventPayload == obj) {
                this.mLastEventPosition = Math.min(i9, i12);
                this.mLastEventCount = Math.max(i13 + i12, i11) - this.mLastEventPosition;
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = i9;
        this.mLastEventCount = i10;
        this.mLastEventPayload = obj;
        this.mLastEventType = 3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i9, int i10) {
        int i11;
        if (this.mLastEventType == 1 && i9 >= (i11 = this.mLastEventPosition)) {
            int i12 = this.mLastEventCount;
            if (i9 <= i11 + i12) {
                this.mLastEventCount = i12 + i10;
                this.mLastEventPosition = Math.min(i9, i11);
                return;
            }
        }
        dispatchLastEvent();
        this.mLastEventPosition = i9;
        this.mLastEventCount = i10;
        this.mLastEventType = 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i9, int i10) {
        dispatchLastEvent();
        this.mWrapped.onMoved(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i9, int i10) {
        int i11;
        if (this.mLastEventType == 2 && (i11 = this.mLastEventPosition) >= i9 && i11 <= i9 + i10) {
            this.mLastEventCount += i10;
            this.mLastEventPosition = i9;
        } else {
            dispatchLastEvent();
            this.mLastEventPosition = i9;
            this.mLastEventCount = i10;
            this.mLastEventType = 2;
        }
    }
}
