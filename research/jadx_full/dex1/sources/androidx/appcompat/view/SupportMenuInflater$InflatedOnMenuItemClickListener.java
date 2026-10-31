package androidx.appcompat.view;

import ai.onnxruntime.a;
import android.view.InflateException;
import android.view.MenuItem;
import android.view.MenuItem$OnMenuItemClickListener;
import java.lang.reflect.Method;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SupportMenuInflater$InflatedOnMenuItemClickListener implements MenuItem$OnMenuItemClickListener {
    private static final Class<?>[] PARAM_TYPES = {MenuItem.class};
    private Method mMethod;
    private Object mRealOwner;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SupportMenuInflater$InflatedOnMenuItemClickListener(Object obj, String str) {
        this.mRealOwner = obj;
        Class<?> cls = obj.getClass();
        try {
            this.mMethod = cls.getMethod(str, PARAM_TYPES);
        } catch (Exception e) {
            StringBuilder sbX = a.x("Couldn't resolve menu item onClick handler ", str, " in class ");
            sbX.append(cls.getName());
            InflateException inflateException = new InflateException(sbX.toString());
            inflateException.initCause(e);
            throw inflateException;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.MenuItem$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        try {
            Class<?> returnType = this.mMethod.getReturnType();
            Class<?> cls = Boolean.TYPE;
            Method method = this.mMethod;
            if (returnType == cls) {
                return ((Boolean) method.invoke(this.mRealOwner, menuItem)).booleanValue();
            }
            method.invoke(this.mRealOwner, menuItem);
            return true;
        } catch (Exception e) {
            b.w(e);
            return false;
        }
    }
}
