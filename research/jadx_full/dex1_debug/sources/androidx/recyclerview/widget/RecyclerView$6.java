package androidx.recyclerview.widget;

import ai.onnxruntime.a;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup$LayoutParams;
import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class RecyclerView$6 implements ChildHelper$Callback {
    final /* synthetic */ RecyclerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RecyclerView$6(RecyclerView recyclerView) {
        this.this$0 = recyclerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void addView(View view, int i9) {
        this.this$0.addView(view, i9);
        this.this$0.dispatchChildAttached(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void attachViewToParent(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                i.k(a.i(this.this$0, sb));
                return;
            } else {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "reAttach " + childViewHolderInt);
                }
                childViewHolderInt.clearTmpDetachFlag();
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(i9);
            i.k(a.i(this.this$0, sb2));
            return;
        }
        RecyclerView.access$000(this.this$0, view, i9, viewGroup$LayoutParams);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void detachViewFromParent(int i9) {
        View childAt = getChildAt(i9);
        if (childAt != null) {
            RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    i.k(a.i(this.this$0, sb));
                    return;
                } else {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        Log.d("RecyclerView", "tmpDetach " + childViewHolderInt);
                    }
                    childViewHolderInt.addFlags(256);
                }
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(i9);
            i.k(a.i(this.this$0, sb2));
            return;
        }
        RecyclerView.access$100(this.this$0, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public View getChildAt(int i9) {
        return this.this$0.getChildAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public int getChildCount() {
        return this.this$0.getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public RecyclerView$ViewHolder getChildViewHolder(View view) {
        return RecyclerView.getChildViewHolderInt(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public int indexOfChild(View view) {
        return this.this$0.indexOfChild(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void onEnteredHiddenState(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(this.this$0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void onLeftHiddenState(View view) {
        RecyclerView$ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onLeftHiddenState(this.this$0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            this.this$0.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        this.this$0.removeAllViews();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.ChildHelper$Callback
    public void removeViewAt(int i9) {
        View childAt = this.this$0.getChildAt(i9);
        if (childAt != null) {
            this.this$0.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        this.this$0.removeViewAt(i9);
    }
}
