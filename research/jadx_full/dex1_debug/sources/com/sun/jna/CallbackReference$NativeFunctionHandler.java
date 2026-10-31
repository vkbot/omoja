package com.sun.jna;

import ai.onnxruntime.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackReference$NativeFunctionHandler implements InvocationHandler {
    private final Function function;
    private final Map<String, ?> options;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackReference$NativeFunctionHandler(Pointer pointer, int i9, Map<String, ?> map) {
        this.options = map;
        this.function = new Function(pointer, i9, (String) map.get(Library.OPTION_STRING_ENCODING));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer getPointer() {
        return this.function;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (Library$Handler.OBJECT_TOSTRING.equals(method)) {
            String str = "Proxy interface to " + this.function;
            Class<?> clsFindCallbackClass = CallbackReference.findCallbackClass(((Method) this.options.get("invoking-method")).getDeclaringClass());
            StringBuilder sbW = a.w(str, " (");
            sbW.append(clsFindCallbackClass.getName());
            sbW.append(")");
            return sbW.toString();
        }
        if (Library$Handler.OBJECT_HASHCODE.equals(method)) {
            return Integer.valueOf(hashCode());
        }
        if (!Library$Handler.OBJECT_EQUALS.equals(method)) {
            if (Function.isVarArgs(method)) {
                objArr = Function.concatenateVarArgs(objArr);
            }
            return this.function.invoke(method.getReturnType(), objArr, this.options);
        }
        Object obj2 = objArr[0];
        if (obj2 == null || !Proxy.isProxyClass(obj2.getClass())) {
            return Boolean.FALSE;
        }
        return Function.valueOf(Proxy.getInvocationHandler(obj2) == this);
    }
}
