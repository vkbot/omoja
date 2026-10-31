package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class VarArgsChecker$NoVarArgsChecker extends VarArgsChecker {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private VarArgsChecker$NoVarArgsChecker() {
        super(null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.VarArgsChecker
    public int fixedArgs(Method method) {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.VarArgsChecker
    public boolean isVarArgs(Method method) {
        return false;
    }

    public /* synthetic */ VarArgsChecker$NoVarArgsChecker(VarArgsChecker$1 varArgsChecker$1) {
        this();
    }
}
