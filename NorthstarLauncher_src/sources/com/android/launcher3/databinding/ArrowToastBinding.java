package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class ArrowToastBinding implements ViewBinding {
    public final View arrow;
    public final ImageView dismiss;
    private final View rootView;
    public final TextView text;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private ArrowToastBinding(View rootView, View arrow, ImageView dismiss, TextView text) {
        this.rootView = rootView;
        this.arrow = arrow;
        this.dismiss = dismiss;
        this.text = text;
    }

    public static ArrowToastBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.arrow_toast, parent);
        return bind(parent);
    }

    public static ArrowToastBinding bind(View rootView) {
        int i = R.id.arrow;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.arrow);
        if (viewFindChildViewById != null) {
            i = R.id.dismiss;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dismiss);
            if (imageView != null) {
                i = R.id.text;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.text);
                if (textView != null) {
                    return new ArrowToastBinding(rootView, viewFindChildViewById, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
