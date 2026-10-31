package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class VarArgsChecker$RealVarArgsChecker extends VarArgsChecker {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private VarArgsChecker$RealVarArgsChecker() {
        super(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.VarArgsChecker
    public int fixedArgs(Method method) {
        if (method.isVarArgs()) {
            return method.getParameterTypes().length - 1;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.VarArgsChecker
    public boolean isVarArgs(Method method) {
        return method.isVarArgs();
    }

    public /* synthetic */ VarArgsChecker$RealVarArgsChecker(VarArgsChecker$1 varArgsChecker$1) {
        this();
    }
}
