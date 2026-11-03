package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;
import com.android.launcher3.qsb.QsbContainerView;

/* JADX INFO: loaded from: classes.dex */
public final class SearchContainerWorkspaceBinding implements ViewBinding {
    private final QsbContainerView rootView;
    public final QsbContainerView searchContainerWorkspace;

    @Override // androidx.viewbinding.ViewBinding
    public QsbContainerView getRoot() {
        return this.rootView;
    }

    private SearchContainerWorkspaceBinding(QsbContainerView rootView, QsbContainerView searchContainerWorkspace) {
        this.rootView = rootView;
        this.searchContainerWorkspace = searchContainerWorkspace;
    }

    public static SearchContainerWorkspaceBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static SearchContainerWorkspaceBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_container_workspace, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SearchContainerWorkspaceBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        QsbContainerView qsbContainerView = (QsbContainerView) rootView;
        return new SearchContainerWorkspaceBinding(qsbContainerView, qsbContainerView);
    }
}
