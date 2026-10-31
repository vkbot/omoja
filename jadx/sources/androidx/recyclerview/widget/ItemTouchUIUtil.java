package androidx.recyclerview.widget;

import android.graphics.Canvas;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface ItemTouchUIUtil {
    void clearView(View view);

    void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f8, float f10, int i10, boolean z9);

    void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f8, float f10, int i10, boolean z9);

    void onSelected(View view);
}
