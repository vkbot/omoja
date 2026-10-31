package com.sun.jna;

import ai.onnxruntime.a;
import com.sun.jna.internal.ReflectionUtils;
import j1.i;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Library$Handler implements InvocationHandler {
    static final Method OBJECT_EQUALS;
    static final Method OBJECT_HASHCODE;
    static final Method OBJECT_TOSTRING;
    private final Map<Method, Library$Handler$FunctionInfo> functions = new WeakHashMap();
    private final Class<?> interfaceClass;
    private final InvocationMapper invocationMapper;
    private final NativeLibrary nativeLibrary;
    private final Map<String, Object> options;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OBJECT_TOSTRING = Object.class.getMethod("toString", null);
            OBJECT_HASHCODE = Object.class.getMethod("hashCode", null);
            OBJECT_EQUALS = Object.class.getMethod("equals", Object.class);
        } catch (Exception unused) {
            throw new Error("Error retrieving Object.toString() method");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Library$Handler(String str, Class<?> cls, Map<String, ?> map) {
        if (str != null && "".equals(str.trim())) {
            i.k(a.m("Invalid library name \"", str, "\""));
            throw null;
        }
        if (!cls.isInterface()) {
            StringBuilder sbW = a.w(str, " does not implement an interface: ");
            sbW.append(cls.getName());
            throw new IllegalArgumentException(sbW.toString());
        }
        this.interfaceClass = cls;
        HashMap map2 = new HashMap(map);
        this.options = map2;
        int i9 = AltCallingConvention.class.isAssignableFrom(cls) ? 63 : 0;
        if (map2.get(Library.OPTION_CALLING_CONVENTION) == null) {
            map2.put(Library.OPTION_CALLING_CONVENTION, Integer.valueOf(i9));
        }
        if (map2.get(Library.OPTION_CLASSLOADER) == null) {
            map2.put(Library.OPTION_CLASSLOADER, cls.getClassLoader());
        }
        this.nativeLibrary = NativeLibrary.getInstance(str, map2);
        this.invocationMapper = (InvocationMapper) map2.get(Library.OPTION_INVOCATION_MAPPER);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Class<?> getInterfaceClass() {
        return this.interfaceClass;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getLibraryName() {
        return this.nativeLibrary.getName();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NativeLibrary getNativeLibrary() {
        return this.nativeLibrary;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        Library$Handler$FunctionInfo library$Handler$FunctionInfo;
        Function function;
        Class<?>[] clsArr;
        HashMap map;
        if (OBJECT_TOSTRING.equals(method)) {
            return "Proxy interface to " + this.nativeLibrary;
        }
        if (OBJECT_HASHCODE.equals(method)) {
            return Integer.valueOf(hashCode());
        }
        if (OBJECT_EQUALS.equals(method)) {
            Object obj2 = objArr[0];
            if (obj2 == null || !Proxy.isProxyClass(obj2.getClass())) {
                return Boolean.FALSE;
            }
            return Function.valueOf(Proxy.getInvocationHandler(obj2) == this);
        }
        Library$Handler$FunctionInfo library$Handler$FunctionInfo2 = this.functions.get(method);
        if (library$Handler$FunctionInfo2 == null) {
            synchronized (this.functions) {
                try {
                    library$Handler$FunctionInfo2 = this.functions.get(method);
                    if (library$Handler$FunctionInfo2 == null) {
                        if (ReflectionUtils.isDefault(method)) {
                            library$Handler$FunctionInfo = new Library$Handler$FunctionInfo(ReflectionUtils.getMethodHandle(method));
                        } else {
                            boolean zIsVarArgs = Function.isVarArgs(method);
                            InvocationMapper invocationMapper = this.invocationMapper;
                            InvocationHandler invocationHandler = invocationMapper != null ? invocationMapper.getInvocationHandler(this.nativeLibrary, method) : null;
                            if (invocationHandler == null) {
                                Function function2 = this.nativeLibrary.getFunction(method.getName(), method);
                                Class<?>[] parameterTypes = method.getParameterTypes();
                                HashMap map2 = new HashMap(this.options);
                                map2.put("invoking-method", method);
                                clsArr = parameterTypes;
                                map = map2;
                                function = function2;
                            } else {
                                function = null;
                                clsArr = null;
                                map = null;
                            }
                            library$Handler$FunctionInfo = new Library$Handler$FunctionInfo(invocationHandler, function, clsArr, zIsVarArgs, map);
                        }
                        this.functions.put(method, library$Handler$FunctionInfo);
                        library$Handler$FunctionInfo2 = library$Handler$FunctionInfo;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Object obj3 = library$Handler$FunctionInfo2.methodHandle;
        if (obj3 != null) {
            return ReflectionUtils.invokeDefaultMethod(obj, obj3, objArr);
        }
        if (library$Handler$FunctionInfo2.isVarArgs) {
            objArr = Function.concatenateVarArgs(objArr);
        }
        Object[] objArr2 = objArr;
        InvocationHandler invocationHandler2 = library$Handler$FunctionInfo2.handler;
        return invocationHandler2 != null ? invocationHandler2.invoke(obj, method, objArr2) : library$Handler$FunctionInfo2.function.invoke(method, library$Handler$FunctionInfo2.parameterTypes, method.getReturnType(), objArr2, library$Handler$FunctionInfo2.options);
    }
}
