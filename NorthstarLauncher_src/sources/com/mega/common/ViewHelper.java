package com.mega.common;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.VectorDrawable;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.content.ContextCompat;
import java.util.function.Function;

/* JADX INFO: loaded from: classes2.dex */
public class ViewHelper {
    public static void setFullScreen(View view) {
        view.setSystemUiVisibility(5894);
    }

    public static void hideNigation(View view) {
        view.setSystemUiVisibility(514);
    }

    public static boolean isTouchPointInView(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return f2 >= ((float) i2) && f2 <= ((float) (view.getMeasuredHeight() + i2)) && f >= ((float) i) && f <= ((float) (view.getMeasuredWidth() + i));
    }

    public static int sp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static float dp2px(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    public static int px2dp(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void setBtnEnabled(boolean z, View... viewArr) {
        for (View view : viewArr) {
            view.setEnabled(z);
        }
    }

    public static boolean isTouchPointInViews(View[] viewArr, float f, float f2) {
        for (View view : viewArr) {
            if (view != null && isTouchPointInView(view, f, f2)) {
                return true;
            }
        }
        return false;
    }

    public static int isNavigationBarExit(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public static void hideKeyboard(Activity activity) {
        View currentFocus;
        if (activity == null || (currentFocus = activity.getCurrentFocus()) == null) {
            return;
        }
        ((InputMethodManager) activity.getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
    }

    public static boolean isAnimated(View view) {
        Animation animation = view.getAnimation();
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    public static int measureViewHeight(View view, int i) {
        if (view.getLayoutParams().height > 0) {
            return view.getLayoutParams().height;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(i, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(0, 0));
        return view.getMeasuredHeight();
    }

    public static int calculateTextViewHeightByWidth(TextView textView, int i) {
        if (textView.getLayoutParams().height > 0) {
            return textView.getLayoutParams().height;
        }
        textView.measure(View.MeasureSpec.makeMeasureSpec(i, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(0, 0));
        return textView.getMeasuredHeight();
    }

    public static void cancelTouch(View view) {
        if (view == null) {
            return;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
        view.dispatchTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public static void dispatchThemeColor(View view, int i, Function<Integer, Boolean> function) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            setThemeColor(viewGroup, i, function);
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                dispatchThemeColor(viewGroup.getChildAt(i2), i, function);
            }
            return;
        }
        setThemeColor(view, i, function);
    }

    public static void setThemeColor(View view, int i, Function<Integer, Boolean> function) {
        LayerDrawable layerDrawable;
        int numberOfLayers;
        if (function == null || function.apply(Integer.valueOf(view.getId())).booleanValue()) {
            Drawable background = view.getBackground();
            if (background instanceof StateListDrawable) {
                updateStateListDrawable((StateListDrawable) background, i);
            } else if (background instanceof ColorStateListDrawable) {
                ColorStateListDrawable colorStateListDrawable = (ColorStateListDrawable) background;
                colorStateListDrawable.setColorStateList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_selected}, new int[0]}, new int[]{i, colorStateListDrawable.getColorStateList().getDefaultColor()}));
            } else if (background instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) background;
                ColorStateList color = gradientDrawable.getColor();
                if (color != null && color.isStateful()) {
                    gradientDrawable.setColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_selected}, new int[0]}, new int[]{i, color.getDefaultColor()}));
                }
            } else if (view instanceof ImageView) {
                Drawable drawable = ((ImageView) view).getDrawable();
                if (drawable instanceof VectorDrawable) {
                    if (drawable.getState().length > 1) {
                        drawable.setTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_selected}, new int[0]}, new int[]{i, ContextCompat.getColor(view.getContext(), R.color.font_main)}));
                    }
                } else if (drawable instanceof StateListDrawable) {
                    updateStateListDrawable((StateListDrawable) drawable, i);
                }
            } else if (view instanceof TextView) {
                TextView textView = (TextView) view;
                ColorStateList textColors = textView.getTextColors();
                if (textColors.isStateful()) {
                    textView.setTextColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_selected}, new int[0]}, new int[]{i, textColors.getDefaultColor()}));
                }
            }
            if (view instanceof ProgressBar) {
                Drawable progressDrawable = ((ProgressBar) view).getProgressDrawable();
                if (!(progressDrawable instanceof LayerDrawable) || (numberOfLayers = (layerDrawable = (LayerDrawable) progressDrawable).getNumberOfLayers()) == 0) {
                    return;
                }
                layerDrawable.getDrawable(numberOfLayers - 1).setTint(i);
            }
        }
    }

    public static void updateStateListDrawable(StateListDrawable stateListDrawable, int i) {
        Drawable stateDrawable;
        if (stateListDrawable.getStateCount() == 0 || (stateDrawable = stateListDrawable.getStateDrawable(0)) == null) {
            return;
        }
        stateDrawable.setTint(i);
    }
}
