package com.android.launcher3.anim;

import android.animation.TimeInterpolator;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public interface PropertySetter {
    public static final PropertySetter NO_ANIM_PROPERTY_SETTER = new PropertySetter() { // from class: com.android.launcher3.anim.PropertySetter.1
    };

    default void setViewAlpha(View view, float alpha, TimeInterpolator interpolator) {
        if (view != null) {
            view.setAlpha(alpha);
            AlphaUpdateListener.updateVisibility(view);
        }
    }

    default <T> void setFloat(T target, FloatProperty<T> property, float value, TimeInterpolator interpolator) {
        if (target != null) {
            property.setValue(target, value);
        }
    }

    default <T> void setInt(T target, IntProperty<T> property, int value, TimeInterpolator interpolator) {
        property.setValue(target, value);
    }
}
