package com.sun.jna;

import androidx.navigation.b;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
abstract class Klass {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Klass() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T> T newInstance(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            b.n(e, cls);
            return null;
        } catch (IllegalArgumentException e6) {
            b.n(e6, cls);
            return null;
        } catch (InstantiationException e9) {
            b.n(e9, cls);
            return null;
        } catch (NoSuchMethodException e10) {
            b.n(e10, cls);
            return null;
        } catch (SecurityException e11) {
            b.n(e11, cls);
            return null;
        } catch (InvocationTargetException e12) {
            if (e12.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e12.getCause());
            }
            b.n(e12, cls);
            return null;
        }
    }
}
