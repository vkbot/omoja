package com.android.launcher3;

import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAnimUtils {
    public static final float MIN_PROGRESS_TO_ALL_APPS = 0.5f;
    public static final int SPRING_LOADED_EXIT_DELAY = 500;
    public static final FloatProperty<View> VIEW_ALPHA;
    public static final FloatProperty<View> VIEW_TRANSLATE_X;
    public static final FloatProperty<View> VIEW_TRANSLATE_Y;
    public static final IntProperty<Drawable> DRAWABLE_ALPHA = new IntProperty<Drawable>("drawableAlpha") { // from class: com.android.launcher3.LauncherAnimUtils.1
        @Override // android.util.Property
        public Integer get(Drawable drawable) {
            return Integer.valueOf(drawable.getAlpha());
        }

        @Override // android.util.IntProperty
        public void setValue(Drawable drawable, int alpha) {
            drawable.setAlpha(alpha);
        }
    };
    public static final FloatProperty<View> SCALE_PROPERTY = new FloatProperty<View>("scale") { // from class: com.android.launcher3.LauncherAnimUtils.2
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf(view.getScaleX());
        }

        @Override // android.util.FloatProperty
        public void setValue(View view, float scale) {
            view.setScaleX(scale);
            view.setScaleY(scale);
        }
    };
    public static final IntProperty<ViewGroup.LayoutParams> LAYOUT_WIDTH = new IntProperty<ViewGroup.LayoutParams>("width") { // from class: com.android.launcher3.LauncherAnimUtils.3
        @Override // android.util.Property
        public Integer get(ViewGroup.LayoutParams lp) {
            return Integer.valueOf(lp.width);
        }

        @Override // android.util.IntProperty
        public void setValue(ViewGroup.LayoutParams lp, int width) {
            lp.width = width;
        }
    };
    public static final IntProperty<ViewGroup.LayoutParams> LAYOUT_HEIGHT = new IntProperty<ViewGroup.LayoutParams>("height") { // from class: com.android.launcher3.LauncherAnimUtils.4
        @Override // android.util.Property
        public Integer get(ViewGroup.LayoutParams lp) {
            return Integer.valueOf(lp.height);
        }

        @Override // android.util.IntProperty
        public void setValue(ViewGroup.LayoutParams lp, int height) {
            lp.height = height;
        }
    };

    static {
        VIEW_TRANSLATE_X = View.TRANSLATION_X instanceof FloatProperty ? (FloatProperty) View.TRANSLATION_X : new FloatProperty<View>("translateX") { // from class: com.android.launcher3.LauncherAnimUtils.5
            @Override // android.util.FloatProperty
            public void setValue(View view, float v) {
                view.setTranslationX(v);
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(view.getTranslationX());
            }
        };
        VIEW_TRANSLATE_Y = View.TRANSLATION_Y instanceof FloatProperty ? (FloatProperty) View.TRANSLATION_Y : new FloatProperty<View>("translateY") { // from class: com.android.launcher3.LauncherAnimUtils.6
            @Override // android.util.FloatProperty
            public void setValue(View view, float v) {
                view.setTranslationY(v);
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(view.getTranslationY());
            }
        };
        VIEW_ALPHA = View.ALPHA instanceof FloatProperty ? (FloatProperty) View.ALPHA : new FloatProperty<View>("alpha") { // from class: com.android.launcher3.LauncherAnimUtils.7
            @Override // android.util.FloatProperty
            public void setValue(View view, float v) {
                view.setAlpha(v);
            }

            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(view.getAlpha());
            }
        };
    }

    public static int blockedFlingDurationFactor(float velocity) {
        return (int) Utilities.boundToRange(Math.abs(velocity) / 2.0f, 2.0f, 6.0f);
    }
}
