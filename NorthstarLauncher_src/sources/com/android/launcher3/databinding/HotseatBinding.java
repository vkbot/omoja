package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.Hotseat;
import com.android.launcher3.R;

/* JADX INFO: loaded from: classes.dex */
public final class HotseatBinding implements ViewBinding {
    public final Hotseat hotseat;
    private final Hotseat rootView;

    @Override // androidx.viewbinding.ViewBinding
    public Hotseat getRoot() {
        return this.rootView;
    }

    private HotseatBinding(Hotseat rootView, Hotseat hotseat) {
        this.rootView = rootView;
        this.hotseat = hotseat;
    }

    public static HotseatBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static HotseatBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.hotseat, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HotseatBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        Hotseat hotseat = (Hotseat) rootView;
        return new HotseatBinding(hotseat, hotseat);
    }
}
