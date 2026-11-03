package com.android.launcher3;

import android.view.View;
import com.android.launcher3.logging.StatsLogUtils;

/* JADX INFO: loaded from: classes.dex */
public interface DragSource extends StatsLogUtils.LogContainerProvider {
    void onDropCompleted(View target, DropTarget.DragObject d, boolean success);
}
