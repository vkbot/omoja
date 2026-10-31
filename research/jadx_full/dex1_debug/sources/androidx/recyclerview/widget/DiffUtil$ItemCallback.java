package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class DiffUtil$ItemCallback<T> {
    public abstract boolean areContentsTheSame(@NonNull T t, @NonNull T t3);

    public abstract boolean areItemsTheSame(@NonNull T t, @NonNull T t3);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public Object getChangePayload(@NonNull T t, @NonNull T t3) {
        return null;
    }
}
