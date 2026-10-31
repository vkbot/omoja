package androidx.recyclerview.widget;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface RecyclerView$OnChildAttachStateChangeListener {
    void onChildViewAttachedToWindow(@NonNull View view);

    void onChildViewDetachedFromWindow(@NonNull View view);
}
