package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
abstract class VarArgsChecker {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ VarArgsChecker(VarArgsChecker$1 varArgsChecker$1) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static VarArgsChecker create() {
        try {
            return Method.class.getMethod("isVarArgs", null) != null ? new VarArgsChecker$RealVarArgsChecker(null) : new VarArgsChecker$NoVarArgsChecker(null);
        } catch (NoSuchMethodException unused) {
            return new VarArgsChecker$NoVarArgsChecker(null);
        } catch (SecurityException unused2) {
            return new VarArgsChecker$NoVarArgsChecker(null);
        }
    }

    public abstract int fixedArgs(Method method);

    public abstract boolean isVarArgs(Method method);

    private VarArgsChecker() {
    }
}
