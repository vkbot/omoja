package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;
import com.android.launcher3.views.OptionsPopupView;

/* JADX INFO: loaded from: classes.dex */
public final class LongpressOptionsMenuBinding implements ViewBinding {
    public final OptionsPopupView deepShortcutsContainer;
    private final OptionsPopupView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public OptionsPopupView getRoot() {
        return this.rootView;
    }

    private LongpressOptionsMenuBinding(OptionsPopupView rootView, OptionsPopupView deepShortcutsContainer) {
        this.rootView = rootView;
        this.deepShortcutsContainer = deepShortcutsContainer;
    }

    public static LongpressOptionsMenuBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LongpressOptionsMenuBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.longpress_options_menu, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LongpressOptionsMenuBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        OptionsPopupView optionsPopupView = (OptionsPopupView) rootView;
        return new LongpressOptionsMenuBinding(optionsPopupView, optionsPopupView);
    }
}
