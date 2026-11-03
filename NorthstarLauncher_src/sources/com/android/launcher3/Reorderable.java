package com.android.launcher3;

import android.graphics.PointF;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface Reorderable {
    void getReorderBounceOffset(PointF offset);

    float getReorderBounceScale();

    void getReorderPreviewOffset(PointF offset);

    View getView();

    void setReorderBounceOffset(float x, float y);

    void setReorderBounceScale(float scale);

    void setReorderPreviewOffset(float x, float y);
}
