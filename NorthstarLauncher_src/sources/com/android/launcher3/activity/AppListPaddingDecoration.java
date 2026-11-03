package com.android.launcher3.activity;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class AppListPaddingDecoration extends RecyclerView.ItemDecoration {
    private final int mIconGapVertical;

    public AppListPaddingDecoration(Context context) {
        this.mIconGapVertical = context.getResources().getDimensionPixelSize(R.dimen.icon_gap_vertical);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        float f;
        float f2;
        super.getItemOffsets(outRect, view, parent, state);
        int childAdapterPosition = parent.getChildAdapterPosition(view) % 6;
        float f3 = (760 * 1.0f) / 6;
        if (parent.getLayoutDirection() == 1) {
            f = 230 + (childAdapterPosition * (60 - f3));
            f2 = f3 - f;
        } else {
            float f4 = (childAdapterPosition * (60 - f3)) + 230;
            f = f3 - f4;
            f2 = f4;
        }
        outRect.left = Math.round(f2);
        outRect.right = Math.round(f);
        outRect.top = this.mIconGapVertical;
        outRect.bottom = 0;
    }
}
