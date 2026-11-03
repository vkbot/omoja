package com.android.launcher3.views.dragableviews;

import android.content.Context;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class DraggableAdapter<T extends RecyclerView.ViewHolder, E> extends RecyclerView.Adapter<T> implements ItemMoveListener {
    private static final String TAG = "DraggableAdapter";
    protected List<E> mAdapterItems = new LinkedList();
    protected Context mContext;

    public void setItems(List<E> items) {
        this.mAdapterItems = items;
    }

    public DraggableAdapter(Context context) {
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mAdapterItems.size();
    }

    @Override // com.android.launcher3.views.dragableviews.ItemMoveListener
    public void onItemMove(int fromPosition, int toPosition) {
        Log.i(TAG, "onItemMove: " + fromPosition + " " + toPosition);
        E e = this.mAdapterItems.get(fromPosition);
        this.mAdapterItems.remove(fromPosition);
        this.mAdapterItems.add(toPosition, e);
        notifyItemMoved(fromPosition, toPosition);
    }
}
