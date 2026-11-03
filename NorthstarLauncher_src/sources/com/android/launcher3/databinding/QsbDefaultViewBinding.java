package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class QsbDefaultViewBinding implements ViewBinding {
    public final TextView btnQsbSearch;
    public final ImageView btnQsbSetup;
    private final FrameLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private QsbDefaultViewBinding(FrameLayout rootView, TextView btnQsbSearch, ImageView btnQsbSetup) {
        this.rootView = rootView;
        this.btnQsbSearch = btnQsbSearch;
        this.btnQsbSetup = btnQsbSetup;
    }

    public static QsbDefaultViewBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static QsbDefaultViewBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.qsb_default_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static QsbDefaultViewBinding bind(View rootView) {
        int i = R.id.btn_qsb_search;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btn_qsb_search);
        if (textView != null) {
            i = R.id.btn_qsb_setup;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.btn_qsb_setup);
            if (imageView != null) {
                return new QsbDefaultViewBinding((FrameLayout) rootView, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
