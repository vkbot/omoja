package com.android.launcher3.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import com.android.launcher3.R;
import com.android.launcher3.views.FloatingSurfaceView;

/* JADX INFO: loaded from: classes.dex */
public final class FloatingSurfaceViewBinding implements ViewBinding {
    private final FloatingSurfaceView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FloatingSurfaceView getRoot() {
        return this.rootView;
    }

    private FloatingSurfaceViewBinding(FloatingSurfaceView rootView) {
        this.rootView = rootView;
    }

    public static FloatingSurfaceViewBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FloatingSurfaceViewBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.floating_surface_view, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FloatingSurfaceViewBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        return new FloatingSurfaceViewBinding((FloatingSurfaceView) rootView);
    }
}
