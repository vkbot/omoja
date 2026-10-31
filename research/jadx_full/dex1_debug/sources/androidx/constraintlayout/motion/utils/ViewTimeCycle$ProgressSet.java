package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewTimeCycle$ProgressSet extends ViewTimeCycle {
    boolean mNoMethod = false;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
    public boolean setProperty(View view, float f8, long j9, KeyCache keyCache) {
        ViewTimeCycle$ProgressSet viewTimeCycle$ProgressSet;
        Method method;
        if (view instanceof MotionLayout) {
            viewTimeCycle$ProgressSet = this;
            ((MotionLayout) view).setProgress(get(f8, j9, view, keyCache));
        } else {
            viewTimeCycle$ProgressSet = this;
            if (viewTimeCycle$ProgressSet.mNoMethod) {
                return false;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                viewTimeCycle$ProgressSet.mNoMethod = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(viewTimeCycle$ProgressSet.get(f8, j9, view, keyCache)));
                } catch (IllegalAccessException e) {
                    Log.e("ViewTimeCycle", "unable to setProgress", e);
                } catch (InvocationTargetException e6) {
                    Log.e("ViewTimeCycle", "unable to setProgress", e6);
                }
            }
        }
        return viewTimeCycle$ProgressSet.mContinue;
    }
}
