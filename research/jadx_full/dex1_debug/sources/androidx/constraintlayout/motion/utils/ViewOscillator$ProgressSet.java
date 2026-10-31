package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewOscillator$ProgressSet extends ViewOscillator {
    boolean mNoMethod = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.utils.ViewOscillator
    public void setProperty(View view, float f8) {
        Method method;
        if (view instanceof MotionLayout) {
            ((MotionLayout) view).setProgress(get(f8));
            return;
        }
        if (this.mNoMethod) {
            return;
        }
        try {
            method = view.getClass().getMethod("setProgress", Float.TYPE);
        } catch (NoSuchMethodException unused) {
            this.mNoMethod = true;
            method = null;
        }
        if (method != null) {
            try {
                method.invoke(view, Float.valueOf(get(f8)));
            } catch (IllegalAccessException e) {
                Log.e("ViewOscillator", "unable to setProgress", e);
            } catch (InvocationTargetException e6) {
                Log.e("ViewOscillator", "unable to setProgress", e6);
            }
        }
    }
}
