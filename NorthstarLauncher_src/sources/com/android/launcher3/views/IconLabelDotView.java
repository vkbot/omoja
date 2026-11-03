package com.android.launcher3.views;

import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface IconLabelDotView {
    void setForceHideDot(boolean hide);

    void setIconVisible(boolean visible);

    /* JADX WARN: Multi-variable type inference failed */
    static void setIconAndDotVisible(View view, boolean visible) {
        if (view instanceof IconLabelDotView) {
            IconLabelDotView iconLabelDotView = (IconLabelDotView) view;
            iconLabelDotView.setIconVisible(visible);
            iconLabelDotView.setForceHideDot(!visible);
            return;
        }
        view.setVisibility(visible ? 0 : 4);
    }
}
