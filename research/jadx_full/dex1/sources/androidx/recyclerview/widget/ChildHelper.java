package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup$LayoutParams;
import androidx.navigation.b;
import j1.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class ChildHelper {
    private static final boolean DEBUG = false;
    private static final int REMOVE_STATUS_IN_REMOVE = 1;
    private static final int REMOVE_STATUS_IN_REMOVE_IF_HIDDEN = 2;
    private static final int REMOVE_STATUS_NONE = 0;
    private static final String TAG = "ChildrenHelper";
    final ChildHelper$Callback mCallback;
    private View mViewInRemoveView;
    private int mRemoveStatus = 0;
    final ChildHelper$Bucket mBucket = new ChildHelper$Bucket();
    final List<View> mHiddenViews = new ArrayList();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ChildHelper(ChildHelper$Callback childHelper$Callback) {
        this.mCallback = childHelper$Callback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getOffset(int i9) {
        if (i9 < 0) {
            return -1;
        }
        int childCount = this.mCallback.getChildCount();
        int i10 = i9;
        while (i10 < childCount) {
            int iCountOnesBefore = i9 - (i10 - this.mBucket.countOnesBefore(i10));
            if (iCountOnesBefore == 0) {
                while (this.mBucket.get(i10)) {
                    i10++;
                }
                return i10;
            }
            i10 += iCountOnesBefore;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void hideViewInternal(View view) {
        this.mHiddenViews.add(view);
        this.mCallback.onEnteredHiddenState(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean unhideViewInternal(View view) {
        if (!this.mHiddenViews.remove(view)) {
            return false;
        }
        this.mCallback.onLeftHiddenState(view);
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addView(View view, int i9, boolean z8) {
        int childCount = i9 < 0 ? this.mCallback.getChildCount() : getOffset(i9);
        this.mBucket.insert(childCount, z8);
        if (z8) {
            hideViewInternal(view);
        }
        this.mCallback.addView(view, childCount);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void attachViewToParent(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams, boolean z8) {
        int childCount = i9 < 0 ? this.mCallback.getChildCount() : getOffset(i9);
        this.mBucket.insert(childCount, z8);
        if (z8) {
            hideViewInternal(view);
        }
        this.mCallback.attachViewToParent(view, childCount, viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void detachViewFromParent(int i9) {
        int offset = getOffset(i9);
        this.mBucket.remove(offset);
        this.mCallback.detachViewFromParent(offset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View findHiddenNonRemovedView(int i9) {
        int size = this.mHiddenViews.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = this.mHiddenViews.get(i10);
            RecyclerView$ViewHolder childViewHolder = this.mCallback.getChildViewHolder(view);
            if (childViewHolder.getLayoutPosition() == i9 && !childViewHolder.isInvalid() && !childViewHolder.isRemoved()) {
                return view;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getChildAt(int i9) {
        return this.mCallback.getChildAt(getOffset(i9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getChildCount() {
        return this.mCallback.getChildCount() - this.mHiddenViews.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getUnfilteredChildAt(int i9) {
        return this.mCallback.getChildAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getUnfilteredChildCount() {
        return this.mCallback.getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void hide(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild < 0) {
            b.t(view, "view is not a child, cannot hide ");
        } else {
            this.mBucket.set(iIndexOfChild);
            hideViewInternal(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int indexOfChild(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild == -1 || this.mBucket.get(iIndexOfChild)) {
            return -1;
        }
        return iIndexOfChild - this.mBucket.countOnesBefore(iIndexOfChild);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isHidden(View view) {
        return this.mHiddenViews.contains(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Move duplicate insns, count: 1 to block B:3:0x000d */
    public void removeAllViewsUnfiltered() {
        this.mBucket.reset();
        int size = this.mHiddenViews.size();
        while (true) {
            size--;
            ChildHelper$Callback childHelper$Callback = this.mCallback;
            if (size < 0) {
                childHelper$Callback.removeAllViews();
                return;
            } else {
                childHelper$Callback.onLeftHiddenState(this.mHiddenViews.get(size));
                this.mHiddenViews.remove(size);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeView(View view) {
        int i9 = this.mRemoveStatus;
        if (i9 == 1) {
            i.l("Cannot call removeView(At) within removeView(At)");
            return;
        }
        if (i9 == 2) {
            i.l("Cannot call removeView(At) within removeViewIfHidden");
            return;
        }
        try {
            this.mRemoveStatus = 1;
            this.mViewInRemoveView = view;
            int iIndexOfChild = this.mCallback.indexOfChild(view);
            if (iIndexOfChild < 0) {
                return;
            }
            if (this.mBucket.remove(iIndexOfChild)) {
                unhideViewInternal(view);
            }
            this.mCallback.removeViewAt(iIndexOfChild);
        } finally {
            this.mRemoveStatus = 0;
            this.mViewInRemoveView = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeViewAt(int i9) {
        int i10 = this.mRemoveStatus;
        if (i10 == 1) {
            i.l("Cannot call removeView(At) within removeView(At)");
            return;
        }
        if (i10 == 2) {
            i.l("Cannot call removeView(At) within removeViewIfHidden");
            return;
        }
        try {
            int offset = getOffset(i9);
            View childAt = this.mCallback.getChildAt(offset);
            if (childAt == null) {
                return;
            }
            this.mRemoveStatus = 1;
            this.mViewInRemoveView = childAt;
            if (this.mBucket.remove(offset)) {
                unhideViewInternal(childAt);
            }
            this.mCallback.removeViewAt(offset);
        } finally {
            this.mRemoveStatus = 0;
            this.mViewInRemoveView = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean removeViewIfHidden(View view) {
        int i9 = this.mRemoveStatus;
        if (i9 == 1) {
            if (this.mViewInRemoveView == view) {
                return false;
            }
            i.l("Cannot call removeViewIfHidden within removeView(At) for a different view");
            return false;
        }
        if (i9 == 2) {
            i.l("Cannot call removeViewIfHidden within removeViewIfHidden");
            return false;
        }
        try {
            this.mRemoveStatus = 2;
            int iIndexOfChild = this.mCallback.indexOfChild(view);
            if (iIndexOfChild == -1) {
                unhideViewInternal(view);
                return true;
            }
            if (!this.mBucket.get(iIndexOfChild)) {
                return false;
            }
            this.mBucket.remove(iIndexOfChild);
            unhideViewInternal(view);
            this.mCallback.removeViewAt(iIndexOfChild);
            return true;
        } finally {
            this.mRemoveStatus = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unhide(View view) {
        int iIndexOfChild = this.mCallback.indexOfChild(view);
        if (iIndexOfChild < 0) {
            b.t(view, "view is not a child, cannot hide ");
        } else if (this.mBucket.get(iIndexOfChild)) {
            this.mBucket.clear(iIndexOfChild);
            unhideViewInternal(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public void addView(View view, boolean z8) {
        addView(view, -1, z8);
    }
}
