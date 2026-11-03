package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.views.blur.BlurView;
import com.android.launcher3.views.dragableviews.TouchListenerFrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableRecyclerviewItemLayoutBinding implements ViewBinding {
    public final BlurView blurView;
    public final TouchListenerFrameLayout draggableContentView;
    public final ImageView ivDelete;
    private final TouchListenerFrameLayout rootView;
    public final FrameLayout widgetContainer;

    @Override // androidx.viewbinding.ViewBinding
    public TouchListenerFrameLayout getRoot() {
        return this.rootView;
    }

    private DraggableRecyclerviewItemLayoutBinding(TouchListenerFrameLayout rootView, BlurView blurView, TouchListenerFrameLayout draggableContentView, ImageView ivDelete, FrameLayout widgetContainer) {
        this.rootView = rootView;
        this.blurView = blurView;
        this.draggableContentView = draggableContentView;
        this.ivDelete = ivDelete;
        this.widgetContainer = widgetContainer;
    }

    public static DraggableRecyclerviewItemLayoutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DraggableRecyclerviewItemLayoutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.draggable_recyclerview_item_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DraggableRecyclerviewItemLayoutBinding bind(View rootView) {
        int i = R.id.blur_view;
        BlurView blurView = (BlurView) ViewBindings.findChildViewById(rootView, R.id.blur_view);
        if (blurView != null) {
            TouchListenerFrameLayout touchListenerFrameLayout = (TouchListenerFrameLayout) rootView;
            i = R.id.iv_delete;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_delete);
            if (imageView != null) {
                i = R.id.widget_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.widget_container);
                if (frameLayout != null) {
                    return new DraggableRecyclerviewItemLayoutBinding(touchListenerFrameLayout, blurView, touchListenerFrameLayout, imageView, frameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
