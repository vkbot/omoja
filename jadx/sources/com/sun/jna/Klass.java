package com.sun.jna;

import androidx.navigation.C0674b;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
abstract class Klass {
    private Klass() {
    }

    public static <T> T newInstance(Class<T> cls) {
        try {
            return cls.getDeclaredConstructor(null).newInstance(null);
        } catch (IllegalAccessException e) {
            C0674b.m847n(e, cls);
            return null;
        } catch (IllegalArgumentException e6) {
            C0674b.m847n(e6, cls);
            return null;
        } catch (InstantiationException e10) {
            C0674b.m847n(e10, cls);
            return null;
        } catch (NoSuchMethodException e11) {
            C0674b.m847n(e11, cls);
            return null;
        } catch (SecurityException e12) {
            C0674b.m847n(e12, cls);
            return null;
        } catch (InvocationTargetException e13) {
            if (e13.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e13.getCause());
            }
            C0674b.m847n(e13, cls);
            return null;
        }
    }
}
