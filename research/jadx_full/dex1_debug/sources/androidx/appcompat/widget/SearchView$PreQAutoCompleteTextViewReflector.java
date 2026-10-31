package androidx.appcompat.widget;

import android.os.Build$VERSION;
import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$PreQAutoCompleteTextViewReflector {
    private Method mDoAfterTextChanged;
    private Method mDoBeforeTextChanged;
    private Method mEnsureImeVisible;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$PreQAutoCompleteTextViewReflector() {
        this.mDoBeforeTextChanged = null;
        this.mDoAfterTextChanged = null;
        this.mEnsureImeVisible = null;
        preApi29Check();
        try {
            Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null);
            this.mDoBeforeTextChanged = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        try {
            Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null);
            this.mDoAfterTextChanged = declaredMethod2;
            declaredMethod2.setAccessible(true);
        } catch (NoSuchMethodException unused2) {
        }
        try {
            Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
            this.mEnsureImeVisible = method;
            method.setAccessible(true);
        } catch (NoSuchMethodException unused3) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void preApi29Check() {
        if (Build$VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void doAfterTextChanged(AutoCompleteTextView autoCompleteTextView) {
        preApi29Check();
        Method method = this.mDoAfterTextChanged;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, null);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void doBeforeTextChanged(AutoCompleteTextView autoCompleteTextView) {
        preApi29Check();
        Method method = this.mDoBeforeTextChanged;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, null);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void ensureImeVisible(AutoCompleteTextView autoCompleteTextView) {
        preApi29Check();
        Method method = this.mEnsureImeVisible;
        if (method != null) {
            try {
                method.invoke(autoCompleteTextView, Boolean.TRUE);
            } catch (Exception unused) {
            }
        }
    }
}
