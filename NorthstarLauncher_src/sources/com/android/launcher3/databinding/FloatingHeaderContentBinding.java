package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class FloatingHeaderContentBinding implements ViewBinding {
    private final View rootView;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private FloatingHeaderContentBinding(View rootView) {
        this.rootView = rootView;
    }

    public static FloatingHeaderContentBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.floating_header_content, parent);
        return bind(parent);
    }

    public static FloatingHeaderContentBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new FloatingHeaderContentBinding(rootView);
    }
}
