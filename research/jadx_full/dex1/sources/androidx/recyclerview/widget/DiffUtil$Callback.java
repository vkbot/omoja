package androidx.recyclerview.widget;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class DiffUtil$Callback {
    public abstract boolean areContentsTheSame(int i9, int i10);

    public abstract boolean areItemsTheSame(int i9, int i10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Object getChangePayload(int i9, int i10) {
        return null;
    }

    public abstract int getNewListSize();

    public abstract int getOldListSize();
}
