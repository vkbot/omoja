package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup$LayoutParams;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface ChildHelper$Callback {
    void addView(View view, int i9);

    void attachViewToParent(View view, int i9, ViewGroup$LayoutParams viewGroup$LayoutParams);

    void detachViewFromParent(int i9);

    View getChildAt(int i9);

    int getChildCount();

    RecyclerView$ViewHolder getChildViewHolder(View view);

    int indexOfChild(View view);

    void onEnteredHiddenState(View view);

    void onLeftHiddenState(View view);

    void removeAllViews();

    void removeViewAt(int i9);
}
