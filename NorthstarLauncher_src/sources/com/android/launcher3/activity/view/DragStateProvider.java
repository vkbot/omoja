package com.android.launcher3.activity.view;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public interface DragStateProvider {
    RecyclerView.ViewHolder getDraggingViewHolder();

    boolean isDragging();

    void setDragging(boolean dragging, RecyclerView.ViewHolder viewHolder);
}
