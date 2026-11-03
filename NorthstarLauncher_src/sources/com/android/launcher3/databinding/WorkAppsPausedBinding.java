package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class WorkAppsPausedBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView workAppsPausedContent;
    public final TextView workAppsPausedTitle;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private WorkAppsPausedBinding(LinearLayout rootView, TextView workAppsPausedContent, TextView workAppsPausedTitle) {
        this.rootView = rootView;
        this.workAppsPausedContent = workAppsPausedContent;
        this.workAppsPausedTitle = workAppsPausedTitle;
    }

    public static WorkAppsPausedBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static WorkAppsPausedBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.work_apps_paused, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WorkAppsPausedBinding bind(View rootView) {
        int i = R.id.work_apps_paused_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.work_apps_paused_content);
        if (textView != null) {
            i = R.id.work_apps_paused_title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.work_apps_paused_title);
            if (textView2 != null) {
                return new WorkAppsPausedBinding((LinearLayout) rootView, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
