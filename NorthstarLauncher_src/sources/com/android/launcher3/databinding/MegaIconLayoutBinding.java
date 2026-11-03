package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;
import com.android.launcher3.activity.view.DownloadProgress;
import com.android.launcher3.views.AppIconView;

/* JADX INFO: loaded from: classes.dex */
public final class MegaIconLayoutBinding implements ViewBinding {
    public final DownloadProgress downloadProgress;
    public final ImageView iconRedHot;
    public final ImageView listIcon;
    public final TextView listText;
    public final AppIconView rootView;
    private final AppIconView rootView_;

    @Override // androidx.viewbinding.ViewBinding
    public AppIconView getRoot() {
        return this.rootView_;
    }

    private MegaIconLayoutBinding(AppIconView rootView_, DownloadProgress downloadProgress, ImageView iconRedHot, ImageView listIcon, TextView listText, AppIconView rootView) {
        this.rootView_ = rootView_;
        this.downloadProgress = downloadProgress;
        this.iconRedHot = iconRedHot;
        this.listIcon = listIcon;
        this.listText = listText;
        this.rootView = rootView;
    }

    public static MegaIconLayoutBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static MegaIconLayoutBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mega_icon_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MegaIconLayoutBinding bind(View rootView) {
        int i = R.id.download_progress;
        DownloadProgress downloadProgress = (DownloadProgress) ViewBindings.findChildViewById(rootView, R.id.download_progress);
        if (downloadProgress != null) {
            i = R.id.icon_red_hot;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon_red_hot);
            if (imageView != null) {
                i = R.id.list_icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.list_icon);
                if (imageView2 != null) {
                    i = R.id.list_text;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.list_text);
                    if (textView != null) {
                        AppIconView appIconView = (AppIconView) rootView;
                        return new MegaIconLayoutBinding(appIconView, downloadProgress, imageView, imageView2, textView, appIconView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
