package androidx.recyclerview.widget;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface ListUpdateCallback {
    void onChanged(int i10, int i11, @Nullable Object obj);

    void onInserted(int i10, int i11);

    void onMoved(int i10, int i11);

    void onRemoved(int i10, int i11);
}
