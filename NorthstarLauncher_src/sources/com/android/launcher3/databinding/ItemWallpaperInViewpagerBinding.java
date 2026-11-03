package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class ItemWallpaperInViewpagerBinding implements ViewBinding {
    public final ImageView ivWallpaper;
    private final ImageView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    private ItemWallpaperInViewpagerBinding(ImageView rootView, ImageView ivWallpaper) {
        this.rootView = rootView;
        this.ivWallpaper = ivWallpaper;
    }

    public static ItemWallpaperInViewpagerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemWallpaperInViewpagerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_wallpaper_in_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemWallpaperInViewpagerBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        ImageView imageView = (ImageView) rootView;
        return new ItemWallpaperInViewpagerBinding(imageView, imageView);
    }
}
