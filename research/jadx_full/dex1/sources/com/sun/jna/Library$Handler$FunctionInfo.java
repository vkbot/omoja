package com.sun.jna;

import java.lang.reflect.InvocationHandler;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class Library$Handler$FunctionInfo {
    final Function function;
    final InvocationHandler handler;
    final boolean isVarArgs;
    final Object methodHandle;
    final Map<String, ?> options;
    final Class<?>[] parameterTypes;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Library$Handler$FunctionInfo(Object obj) {
        this.handler = null;
        this.function = null;
        this.isVarArgs = false;
        this.options = null;
        this.parameterTypes = null;
        this.methodHandle = obj;
    }

    public Library$Handler$FunctionInfo(InvocationHandler invocationHandler, Function function, Class<?>[] clsArr, boolean z8, Map<String, ?> map) {
        this.handler = invocationHandler;
        this.function = function;
        this.isVarArgs = z8;
        this.options = map;
        this.parameterTypes = clsArr;
        this.methodHandle = null;
    }
}
