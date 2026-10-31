package com.sun.jna;

import java.lang.reflect.Method;
import java.security.PrivilegedAction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Native$4 implements PrivilegedAction<Method> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.security.PrivilegedAction
    /* JADX INFO: renamed from: run, reason: avoid collision after fix types in other method */
    public Method run2() {
        try {
            Method declaredMethod = ClassLoader.class.getDeclaredMethod("findLibrary", String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.security.PrivilegedAction
    public /* bridge */ /* synthetic */ Method run() {
        return run2();
    }
}
