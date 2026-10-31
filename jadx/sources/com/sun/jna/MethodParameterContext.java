package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MethodParameterContext extends FunctionParameterContext {
    private Method method;

    public MethodParameterContext(Function function, Object[] objArr, int i10, Method method) {
        super(function, objArr, i10);
        this.method = method;
    }

    public Method getMethod() {
        return this.method;
    }
}
