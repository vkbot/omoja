package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public class WidgetsTable2x1ItemDecoration extends RecyclerView.ItemDecoration {
    private static final String TAG = "WidgetsTable2x1ItemDecoration";
    private final int mBottomSpace;
    private final int mHorizonSpace;
    private final int mTopSpace;

    public WidgetsTable2x1ItemDecoration(Context context) {
        this.mBottomSpace = (int) context.getResources().getDimension(R.dimen.widget_table_recycler_2x1_item_margin_bottom);
        this.mHorizonSpace = (int) context.getResources().getDimension(R.dimen.widget_table_recycler_2x1_item_margin_horizon);
        this.mTopSpace = (int) context.getResources().getDimension(R.dimen.widget_table_recycler_item_margin_top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
        if (parent.getChildAdapterPosition(view) < 3) {
            outRect.top = this.mTopSpace;
        }
        outRect.bottom = this.mBottomSpace;
        outRect.left = this.mHorizonSpace;
        outRect.right = this.mHorizonSpace;
    }
}
