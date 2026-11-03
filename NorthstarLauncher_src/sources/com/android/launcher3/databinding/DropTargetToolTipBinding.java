package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class DropTargetToolTipBinding implements ViewBinding {
    public final TextView message;
    private final TextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    private DropTargetToolTipBinding(TextView rootView, TextView message) {
        this.rootView = rootView;
        this.message = message;
    }

    public static DropTargetToolTipBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DropTargetToolTipBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.drop_target_tool_tip, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DropTargetToolTipBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) rootView;
        return new DropTargetToolTipBinding(textView, textView);
    }
}
