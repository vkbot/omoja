package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;
import com.android.launcher3.popup.PopupContainerWithArrow;

/* JADX INFO: loaded from: classes.dex */
public final class PopupContainerBinding implements ViewBinding {
    public final PopupContainerWithArrow deepShortcutsContainer;
    private final PopupContainerWithArrow rootView;

    @Override // androidx.viewbinding.ViewBinding
    public PopupContainerWithArrow getRoot() {
        return this.rootView;
    }

    private PopupContainerBinding(PopupContainerWithArrow rootView, PopupContainerWithArrow deepShortcutsContainer) {
        this.rootView = rootView;
        this.deepShortcutsContainer = deepShortcutsContainer;
    }

    public static PopupContainerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static PopupContainerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.popup_container, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PopupContainerBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        PopupContainerWithArrow popupContainerWithArrow = (PopupContainerWithArrow) rootView;
        return new PopupContainerBinding(popupContainerWithArrow, popupContainerWithArrow);
    }
}
