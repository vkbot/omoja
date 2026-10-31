package androidx.recyclerview.widget;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListDiffer$1$1 extends DiffUtil$Callback {
    final /* synthetic */ AsyncListDiffer$1 this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AsyncListDiffer$1$1(AsyncListDiffer$1 asyncListDiffer$1) {
        this.this$1 = asyncListDiffer$1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.DiffUtil$Callback
    public boolean areContentsTheSame(int i9, int i10) {
        Object obj = this.this$1.val$oldList.get(i9);
        Object obj2 = this.this$1.val$newList.get(i10);
        if (obj != null && obj2 != null) {
            return this.this$1.this$0.mConfig.getDiffCallback().areContentsTheSame(obj, obj2);
        }
        if (obj == null && obj2 == null) {
            return true;
        }
        throw new AssertionError();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.DiffUtil$Callback
    public boolean areItemsTheSame(int i9, int i10) {
        Object obj = this.this$1.val$oldList.get(i9);
        Object obj2 = this.this$1.val$newList.get(i10);
        if (obj == null || obj2 == null) {
            return obj == null && obj2 == null;
        }
        return this.this$1.this$0.mConfig.getDiffCallback().areItemsTheSame(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.DiffUtil$Callback
    @Nullable
    public Object getChangePayload(int i9, int i10) {
        Object obj = this.this$1.val$oldList.get(i9);
        Object obj2 = this.this$1.val$newList.get(i10);
        if (obj == null || obj2 == null) {
            throw new AssertionError();
        }
        return this.this$1.this$0.mConfig.getDiffCallback().getChangePayload(obj, obj2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.DiffUtil$Callback
    public int getNewListSize() {
        return this.this$1.val$newList.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.DiffUtil$Callback
    public int getOldListSize() {
        return this.this$1.val$oldList.size();
    }
}
