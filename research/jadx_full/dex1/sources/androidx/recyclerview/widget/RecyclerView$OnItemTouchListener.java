package androidx.recyclerview.widget;

import android.view.MotionEvent;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface RecyclerView$OnItemTouchListener {
    boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);

    void onRequestDisallowInterceptTouchEvent(boolean z8);

    void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent);
}
