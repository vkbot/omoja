package com.sun.jna;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CallbackParameterContext extends FromNativeContext {
    private Object[] args;
    private int index;
    private Method method;

    public CallbackParameterContext(Class<?> cls, Method method, Object[] objArr, int i10) {
        super(cls);
        this.method = method;
        this.args = objArr;
        this.index = i10;
    }

    public Object[] getArguments() {
        return this.args;
    }

    public int getIndex() {
        return this.index;
    }

    public Method getMethod() {
        return this.method;
    }
}
