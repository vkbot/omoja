package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class SnackbarBinding implements ViewBinding {
    public final TextView action;
    public final TextView label;
    private final View rootView;

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return this.rootView;
    }

    private SnackbarBinding(View rootView, TextView action, TextView label) {
        this.rootView = rootView;
        this.action = action;
        this.label = label;
    }

    public static SnackbarBinding inflate(LayoutInflater inflater, ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.snackbar, parent);
        return bind(parent);
    }

    public static SnackbarBinding bind(View rootView) {
        int i = R.id.action;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.action);
        if (textView != null) {
            i = R.id.label;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.label);
            if (textView2 != null) {
                return new SnackbarBinding(rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
