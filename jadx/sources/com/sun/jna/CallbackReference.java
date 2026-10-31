package com.sun.jna;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.C0674b;
import com.sun.jna.internal.Cleaner;
import com.sun.jna.win32.DLLCallback;
import java.io.Closeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class CallbackReference extends WeakReference<Callback> implements Closeable {
    private static final Class<?> DLL_CALLBACK_CLASS;
    private static final Method PROXY_CALLBACK_METHOD;
    private static final Map<Callback, CallbackThreadInitializer> initializers;
    int callingConvention;
    Pointer cbstruct;
    Cleaner.Cleanable cleanable;
    Method method;
    CallbackProxy proxy;
    Pointer trampoline;
    static final Map<Callback, CallbackReference> callbackMap = new WeakHashMap();
    static final Map<Callback, CallbackReference> directCallbackMap = new WeakHashMap();
    static final Map<Pointer, Reference<Callback>[]> pointerCallbackMap = new WeakHashMap();
    static final Map<Object, Object> allocations = Collections.synchronizedMap(new WeakHashMap());
    private static final Map<Long, Reference<CallbackReference>> allocatedMemory = new ConcurrentHashMap();

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class AttachOptions extends Structure {
        public static final List<String> FIELDS = Structure.createFieldsOrder("daemon", "detach", "name");
        public boolean daemon;
        public boolean detach;
        public String name;

        public AttachOptions() {
            setStringEncoding("utf8");
        }

        @Override // com.sun.jna.Structure
        public List<String> getFieldOrder() {
            return FIELDS;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static final class CallbackReferenceDisposer implements Runnable {
        private Pointer cbstruct;

        public CallbackReferenceDisposer(Pointer pointer) {
            this.cbstruct = pointer;
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                Pointer pointer = this.cbstruct;
                if (pointer != null) {
                    try {
                        Native.freeNativeCallback(pointer.peer);
                        CallbackReference.allocatedMemory.remove(Long.valueOf(this.cbstruct.peer));
                        this.cbstruct.peer = 0L;
                        this.cbstruct = null;
                    } catch (Throwable th) {
                        CallbackReference.allocatedMemory.remove(Long.valueOf(this.cbstruct.peer));
                        this.cbstruct.peer = 0L;
                        this.cbstruct = null;
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class DefaultCallbackProxy implements CallbackProxy {
        private final Method callbackMethod;
        private final String encoding;
        private final FromNativeConverter[] fromNative;
        private ToNativeConverter toNative;

        public DefaultCallbackProxy(Method method, TypeMapper typeMapper, String str) {
            this.callbackMethod = method;
            this.encoding = str;
            Class<?>[] parameterTypes = method.getParameterTypes();
            Class<?> returnType = method.getReturnType();
            this.fromNative = new FromNativeConverter[parameterTypes.length];
            if (NativeMapped.class.isAssignableFrom(returnType)) {
                this.toNative = NativeMappedConverter.getInstance(returnType);
            } else if (typeMapper != null) {
                this.toNative = typeMapper.getToNativeConverter(returnType);
            }
            for (int i10 = 0; i10 < this.fromNative.length; i10++) {
                if (NativeMapped.class.isAssignableFrom(parameterTypes[i10])) {
                    this.fromNative[i10] = new NativeMappedConverter(parameterTypes[i10]);
                } else if (typeMapper != null) {
                    this.fromNative[i10] = typeMapper.getFromNativeConverter(parameterTypes[i10]);
                }
            }
            if (method.isAccessible()) {
                return;
            }
            try {
                method.setAccessible(true);
            } catch (SecurityException unused) {
                C0674b.m853t(method, "Callback method is inaccessible, make sure the interface is public: ");
                throw null;
            }
        }

        private Object convertArgument(Object obj, Class<?> cls) throws IllegalAccessException {
            if (!(obj instanceof Pointer)) {
                if ((Boolean.TYPE == cls || Boolean.class == cls) && (obj instanceof Number)) {
                    return Function.valueOf(((Number) obj).intValue() != 0);
                }
                return obj;
            }
            if (cls == String.class) {
                return ((Pointer) obj).getString(0L, this.encoding);
            }
            if (cls == WString.class) {
                return new WString(((Pointer) obj).getWideString(0L));
            }
            if (cls == String[].class) {
                return ((Pointer) obj).getStringArray(0L, this.encoding);
            }
            if (cls == WString[].class) {
                return ((Pointer) obj).getWideStringArray(0L);
            }
            if (Callback.class.isAssignableFrom(cls)) {
                return CallbackReference.getCallback(cls, (Pointer) obj);
            }
            if (!Structure.class.isAssignableFrom(cls)) {
                return obj;
            }
            if (!Structure.ByValue.class.isAssignableFrom(cls)) {
                Structure structureNewInstance = Structure.newInstance((Class<Structure>) cls, (Pointer) obj);
                structureNewInstance.conditionalAutoRead();
                return structureNewInstance;
            }
            Structure structureNewInstance2 = Structure.newInstance(cls);
            int size = structureNewInstance2.size();
            byte[] bArr = new byte[size];
            ((Pointer) obj).read(0L, bArr, 0, size);
            structureNewInstance2.getPointer().write(0L, bArr, 0, size);
            structureNewInstance2.read();
            return structureNewInstance2;
        }

        private Object convertResult(Object obj) {
            ToNativeConverter toNativeConverter = this.toNative;
            if (toNativeConverter != null) {
                obj = toNativeConverter.toNative(obj, new CallbackResultContext(this.callbackMethod));
            }
            if (obj == null) {
                return null;
            }
            Class<?> cls = obj.getClass();
            if (Structure.class.isAssignableFrom(cls)) {
                return Structure.ByValue.class.isAssignableFrom(cls) ? obj : ((Structure) obj).getPointer();
            }
            if (cls == Boolean.TYPE || cls == Boolean.class) {
                return Boolean.TRUE.equals(obj) ? Function.INTEGER_TRUE : Function.INTEGER_FALSE;
            }
            if (cls == String.class || cls == WString.class) {
                return CallbackReference.getNativeString(obj, cls == WString.class);
            }
            if (cls != String[].class && cls != WString[].class) {
                return Callback.class.isAssignableFrom(cls) ? CallbackReference.getFunctionPointer((Callback) obj) : obj;
            }
            StringArray stringArray = cls == String[].class ? new StringArray((String[]) obj, this.encoding) : new StringArray((WString[]) obj);
            CallbackReference.allocations.put(obj, stringArray);
            return stringArray;
        }

        private Object invokeCallback(Object[] objArr) {
            Object objConvertResult;
            Class<?>[] parameterTypes = this.callbackMethod.getParameterTypes();
            int length = objArr.length;
            Object[] objArr2 = new Object[length];
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Class<?> cls = parameterTypes[i10];
                Object obj = objArr[i10];
                if (this.fromNative[i10] != null) {
                    objArr2[i10] = this.fromNative[i10].fromNative(obj, new CallbackParameterContext(cls, this.callbackMethod, objArr, i10));
                } else {
                    objArr2[i10] = convertArgument(obj, cls);
                }
            }
            Callback callback = getCallback();
            if (callback != null) {
                try {
                    objConvertResult = convertResult(this.callbackMethod.invoke(callback, objArr2));
                } catch (IllegalAccessException e) {
                    Native.getCallbackExceptionHandler().uncaughtException(callback, e);
                    objConvertResult = null;
                } catch (IllegalArgumentException e6) {
                    Native.getCallbackExceptionHandler().uncaughtException(callback, e6);
                    objConvertResult = null;
                } catch (InvocationTargetException e10) {
                    Native.getCallbackExceptionHandler().uncaughtException(callback, e10.getTargetException());
                    objConvertResult = null;
                }
            } else {
                objConvertResult = null;
            }
            for (int i11 = 0; i11 < length; i11++) {
                Object obj2 = objArr2[i11];
                if ((obj2 instanceof Structure) && !(obj2 instanceof Structure.ByValue)) {
                    ((Structure) obj2).autoWrite();
                }
            }
            return objConvertResult;
        }

        @Override // com.sun.jna.CallbackProxy
        public Object callback(Object[] objArr) {
            try {
                return invokeCallback(objArr);
            } catch (Throwable th) {
                Native.getCallbackExceptionHandler().uncaughtException(getCallback(), th);
                return null;
            }
        }

        public Callback getCallback() {
            return CallbackReference.this.getCallback();
        }

        @Override // com.sun.jna.CallbackProxy
        public Class<?>[] getParameterTypes() {
            return this.callbackMethod.getParameterTypes();
        }

        @Override // com.sun.jna.CallbackProxy
        public Class<?> getReturnType() {
            return this.callbackMethod.getReturnType();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class NativeFunctionHandler implements InvocationHandler {
        private final Function function;
        private final Map<String, ?> options;

        public NativeFunctionHandler(Pointer pointer, int i10, Map<String, ?> map) {
            this.options = map;
            this.function = new Function(pointer, i10, (String) map.get(Library.OPTION_STRING_ENCODING));
        }

        public Pointer getPointer() {
            return this.function;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (Library.Handler.OBJECT_TOSTRING.equals(method)) {
                String str = "Proxy interface to " + this.function;
                Class<?> clsFindCallbackClass = CallbackReference.findCallbackClass(((Method) this.options.get("invoking-method")).getDeclaringClass());
                StringBuilder sbM172w = AbstractC0074a.m172w(str, " (");
                sbM172w.append(clsFindCallbackClass.getName());
                sbM172w.append(")");
                return sbM172w.toString();
            }
            if (Library.Handler.OBJECT_HASHCODE.equals(method)) {
                return Integer.valueOf(hashCode());
            }
            if (!Library.Handler.OBJECT_EQUALS.equals(method)) {
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

    static {
        try {
            PROXY_CALLBACK_METHOD = CallbackProxy.class.getMethod(Callback.METHOD_NAME, Object[].class);
            if (Platform.isWindows()) {
                try {
                    DLL_CALLBACK_CLASS = DLLCallback.class;
                } catch (ClassNotFoundException e) {
                    throw new Error("Error loading DLLCallback class", e);
                }
            } else {
                DLL_CALLBACK_CLASS = null;
            }
            initializers = new WeakHashMap();
        } catch (Exception unused) {
            throw new Error("Error looking up CallbackProxy.callback() method");
        }
    }

    private CallbackReference(Callback callback, int i10, boolean z9) {
        long jCreateNativeCallback;
        Class<?> cls;
        super(callback);
        TypeMapper typeMapper = Native.getTypeMapper(callback.getClass());
        this.callingConvention = i10;
        boolean zIsPPC = Platform.isPPC();
        int i11 = 0;
        if (z9) {
            Method callbackMethod = getCallbackMethod(callback);
            Class<?>[] parameterTypes = callbackMethod.getParameterTypes();
            for (int i12 = 0; i12 < parameterTypes.length; i12++) {
                if ((zIsPPC && ((cls = parameterTypes[i12]) == Float.TYPE || cls == Double.TYPE)) || (typeMapper != null && typeMapper.getFromNativeConverter(parameterTypes[i12]) != null)) {
                    z9 = false;
                    break;
                }
            }
            if (typeMapper != null && typeMapper.getToNativeConverter(callbackMethod.getReturnType()) != null) {
                z9 = false;
            }
        }
        String stringEncoding = Native.getStringEncoding(callback.getClass());
        if (z9) {
            Method callbackMethod2 = getCallbackMethod(callback);
            this.method = callbackMethod2;
            Class<?>[] parameterTypes2 = callbackMethod2.getParameterTypes();
            Class<?> returnType = this.method.getReturnType();
            Class<?> cls2 = DLL_CALLBACK_CLASS;
            jCreateNativeCallback = Native.createNativeCallback(callback, this.method, parameterTypes2, returnType, i10, (cls2 == null || !cls2.isInstance(callback)) ? 1 : 3, stringEncoding);
        } else {
            if (callback instanceof CallbackProxy) {
                this.proxy = (CallbackProxy) callback;
            } else {
                this.proxy = new DefaultCallbackProxy(getCallbackMethod(callback), typeMapper, stringEncoding);
            }
            Class<?>[] parameterTypes3 = this.proxy.getParameterTypes();
            Class<?> returnType2 = this.proxy.getReturnType();
            if (typeMapper != null) {
                for (int i13 = 0; i13 < parameterTypes3.length; i13++) {
                    FromNativeConverter fromNativeConverter = typeMapper.getFromNativeConverter(parameterTypes3[i13]);
                    if (fromNativeConverter != null) {
                        parameterTypes3[i13] = fromNativeConverter.nativeType();
                    }
                }
                ToNativeConverter toNativeConverter = typeMapper.getToNativeConverter(returnType2);
                if (toNativeConverter != null) {
                    returnType2 = toNativeConverter.nativeType();
                }
            }
            for (int i14 = 0; i14 < parameterTypes3.length; i14++) {
                Class<?> nativeType = getNativeType(parameterTypes3[i14]);
                parameterTypes3[i14] = nativeType;
                if (!isAllowableNativeType(nativeType)) {
                    C0674b.m857x(parameterTypes3[i14], "Callback argument ", " requires custom type conversion");
                    throw null;
                }
            }
            Class<?> nativeType2 = getNativeType(returnType2);
            if (!isAllowableNativeType(nativeType2)) {
                C0674b.m857x(nativeType2, "Callback return type ", " requires custom type conversion");
                throw null;
            }
            Class<?> cls3 = DLL_CALLBACK_CLASS;
            if (cls3 != null && cls3.isInstance(callback)) {
                i11 = 2;
            }
            jCreateNativeCallback = Native.createNativeCallback(this.proxy, PROXY_CALLBACK_METHOD, parameterTypes3, nativeType2, i10, i11, stringEncoding);
        }
        this.cbstruct = jCreateNativeCallback != 0 ? new Pointer(jCreateNativeCallback) : null;
        if (jCreateNativeCallback != 0) {
            allocatedMemory.put(Long.valueOf(jCreateNativeCallback), new WeakReference(this));
            this.cleanable = Cleaner.getCleaner().register(this, new CallbackReferenceDisposer(this.cbstruct));
        }
    }

    private static Reference<Callback>[] addCallbackToArray(Callback callback, Reference<Callback>[] referenceArr) {
        int i10 = 0;
        int i11 = 1;
        if (referenceArr != null) {
            for (int i12 = 0; i12 < referenceArr.length; i12++) {
                if (referenceArr[i12].get() == null) {
                    referenceArr[i12] = null;
                } else {
                    i11++;
                }
            }
        }
        Reference<Callback>[] referenceArr2 = new Reference[i11];
        if (referenceArr != null) {
            int i13 = 0;
            while (i10 < referenceArr.length) {
                Reference<Callback> reference = referenceArr[i10];
                if (reference != null) {
                    referenceArr2[i13] = reference;
                    i13++;
                }
                i10++;
            }
            i10 = i13;
        }
        referenceArr2[i10] = new WeakReference(callback);
        return referenceArr2;
    }

    private static Method checkMethod(Method method) {
        if (method.getParameterTypes().length <= 256) {
            return method;
        }
        C0674b.m838e(method, "Method signature exceeds the maximum parameter count: ");
        return null;
    }

    private static Callback createCallback(Class<?> cls, Pointer pointer) {
        int i10 = AltCallingConvention.class.isAssignableFrom(cls) ? 63 : 0;
        HashMap map = new HashMap(Native.getLibraryOptions(cls));
        map.put("invoking-method", getCallbackMethod(cls));
        return (Callback) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new NativeFunctionHandler(pointer, i10, map));
    }

    public static void disposeAll() {
        Iterator it = new LinkedList(allocatedMemory.values()).iterator();
        while (it.hasNext()) {
            CallbackReference callbackReference = (CallbackReference) ((Reference) it.next()).get();
            if (callbackReference != null) {
                callbackReference.close();
            }
        }
    }

    public static Class<?> findCallbackClass(Class<?> cls) {
        if (!Callback.class.isAssignableFrom(cls)) {
            C1929i.m3029k(cls.getName().concat(" is not derived from com.sun.jna.Callback"));
            return null;
        }
        if (cls.isInterface()) {
            return cls;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        for (int i10 = 0; i10 < interfaces.length; i10++) {
            if (Callback.class.isAssignableFrom(interfaces[i10])) {
                try {
                    getCallbackMethod(interfaces[i10]);
                    return interfaces[i10];
                } catch (IllegalArgumentException unused) {
                }
            }
        }
        return Callback.class.isAssignableFrom(cls.getSuperclass()) ? findCallbackClass(cls.getSuperclass()) : cls;
    }

    private static Callback getCallback(Class<?> cls, Pointer pointer, boolean z9) {
        if (pointer == null) {
            return null;
        }
        if (!cls.isInterface()) {
            C1929i.m3029k("Callback type must be an interface");
            return null;
        }
        Map<Callback, CallbackReference> map = z9 ? directCallbackMap : callbackMap;
        Map<Pointer, Reference<Callback>[]> map2 = pointerCallbackMap;
        synchronized (map2) {
            try {
                Reference<Callback>[] referenceArr = map2.get(pointer);
                Callback typeAssignableCallback = getTypeAssignableCallback(cls, referenceArr);
                if (typeAssignableCallback != null) {
                    return typeAssignableCallback;
                }
                Callback callbackCreateCallback = createCallback(cls, pointer);
                map2.put(pointer, addCallbackToArray(callbackCreateCallback, referenceArr));
                map.remove(callbackCreateCallback);
                return callbackCreateCallback;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static Method getCallbackMethod(Class<?> cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        Method[] methods = cls.getMethods();
        HashSet hashSet = new HashSet(Arrays.asList(declaredMethods));
        hashSet.retainAll(Arrays.asList(methods));
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (Callback.FORBIDDEN_NAMES.contains(((Method) it.next()).getName())) {
                it.remove();
            }
        }
        Method[] methodArr = (Method[]) hashSet.toArray(new Method[0]);
        if (methodArr.length == 1) {
            return checkMethod(methodArr[0]);
        }
        for (Method method : methodArr) {
            if (Callback.METHOD_NAME.equals(method.getName())) {
                return checkMethod(method);
            }
        }
        C1929i.m3029k("Callback must implement a single public method, or one public method named 'callback'");
        return null;
    }

    private static Pointer getFunctionPointer(Callback callback, boolean z9) {
        int iIntValue;
        Pointer trampoline;
        if (callback == null) {
            return null;
        }
        Pointer nativeFunctionPointer = getNativeFunctionPointer(callback);
        if (nativeFunctionPointer != null) {
            return nativeFunctionPointer;
        }
        Map<String, Object> libraryOptions = Native.getLibraryOptions(callback.getClass());
        if (callback instanceof AltCallingConvention) {
            iIntValue = 63;
        } else {
            iIntValue = (libraryOptions == null || !libraryOptions.containsKey(Library.OPTION_CALLING_CONVENTION)) ? 0 : ((Integer) libraryOptions.get(Library.OPTION_CALLING_CONVENTION)).intValue();
        }
        Map<Callback, CallbackReference> map = z9 ? directCallbackMap : callbackMap;
        Map<Pointer, Reference<Callback>[]> map2 = pointerCallbackMap;
        synchronized (map2) {
            try {
                CallbackReference callbackReference = map.get(callback);
                if (callbackReference == null) {
                    callbackReference = new CallbackReference(callback, iIntValue, z9);
                    map.put(callback, callbackReference);
                    map2.put(callbackReference.getTrampoline(), addCallbackToArray(callback, null));
                    if (initializers.containsKey(callback)) {
                        callbackReference.setCallbackOptions(1);
                    }
                }
                trampoline = callbackReference.getTrampoline();
            } catch (Throwable th) {
                throw th;
            }
        }
        return trampoline;
    }

    private static Pointer getNativeFunctionPointer(Callback callback) {
        if (!Proxy.isProxyClass(callback.getClass())) {
            return null;
        }
        InvocationHandler invocationHandler = Proxy.getInvocationHandler(callback);
        if (invocationHandler instanceof NativeFunctionHandler) {
            return ((NativeFunctionHandler) invocationHandler).getPointer();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Pointer getNativeString(Object obj, boolean z9) {
        if (obj == null) {
            return null;
        }
        NativeString nativeString = new NativeString(obj.toString(), z9);
        allocations.put(obj, nativeString);
        return nativeString.getPointer();
    }

    private Class<?> getNativeType(Class<?> cls) {
        if (Structure.class.isAssignableFrom(cls)) {
            Structure.validate(cls);
            if (!Structure.ByValue.class.isAssignableFrom(cls)) {
                return Pointer.class;
            }
        } else {
            if (NativeMapped.class.isAssignableFrom(cls)) {
                return NativeMappedConverter.getInstance(cls).nativeType();
            }
            if (cls == String.class || cls == WString.class || cls == String[].class || cls == WString[].class || Callback.class.isAssignableFrom(cls)) {
                return Pointer.class;
            }
        }
        return cls;
    }

    private static Callback getTypeAssignableCallback(Class<?> cls, Reference<Callback>[] referenceArr) {
        if (referenceArr == null) {
            return null;
        }
        for (Reference<Callback> reference : referenceArr) {
            Callback callback = reference.get();
            if (callback != null && cls.isAssignableFrom(callback.getClass())) {
                return callback;
            }
        }
        return null;
    }

    private static ThreadGroup initializeThread(Callback callback, AttachOptions attachOptions) {
        CallbackThreadInitializer callbackThreadInitializer;
        if (callback instanceof DefaultCallbackProxy) {
            callback = ((DefaultCallbackProxy) callback).getCallback();
        }
        Map<Callback, CallbackThreadInitializer> map = initializers;
        synchronized (map) {
            callbackThreadInitializer = map.get(callback);
        }
        if (callbackThreadInitializer == null) {
            return null;
        }
        ThreadGroup threadGroup = callbackThreadInitializer.getThreadGroup(callback);
        attachOptions.name = callbackThreadInitializer.getName(callback);
        attachOptions.daemon = callbackThreadInitializer.isDaemon(callback);
        attachOptions.detach = callbackThreadInitializer.detach(callback);
        attachOptions.write();
        return threadGroup;
    }

    private static boolean isAllowableNativeType(Class<?> cls) {
        if (cls == Void.TYPE || cls == Void.class || cls == Boolean.TYPE || cls == Boolean.class || cls == Byte.TYPE || cls == Byte.class || cls == Short.TYPE || cls == Short.class || cls == Character.TYPE || cls == Character.class || cls == Integer.TYPE || cls == Integer.class || cls == Long.TYPE || cls == Long.class || cls == Float.TYPE || cls == Float.class || cls == Double.TYPE || cls == Double.class) {
            return true;
        }
        return (Structure.ByValue.class.isAssignableFrom(cls) && Structure.class.isAssignableFrom(cls)) || Pointer.class.isAssignableFrom(cls);
    }

    private void setCallbackOptions(int i10) {
        this.cbstruct.setInt(Native.POINTER_SIZE, i10);
    }

    public static CallbackThreadInitializer setCallbackThreadInitializer(Callback callback, CallbackThreadInitializer callbackThreadInitializer) {
        Map<Callback, CallbackThreadInitializer> map = initializers;
        synchronized (map) {
            try {
                if (callbackThreadInitializer != null) {
                    return map.put(callback, callbackThreadInitializer);
                }
                return map.remove(callback);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Cleaner.Cleanable cleanable = this.cleanable;
        if (cleanable != null) {
            cleanable.clean();
        }
        this.cbstruct = null;
    }

    @Deprecated
    public void dispose() {
        close();
    }

    public Pointer getTrampoline() {
        if (this.trampoline == null) {
            this.trampoline = this.cbstruct.getPointer(0L);
        }
        return this.trampoline;
    }

    public static Callback getCallback(Class<?> cls, Pointer pointer) {
        return getCallback(cls, pointer, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Callback getCallback() {
        return get();
    }

    private static Method getCallbackMethod(Callback callback) {
        return getCallbackMethod(findCallbackClass(callback.getClass()));
    }

    public static Pointer getFunctionPointer(Callback callback) {
        return getFunctionPointer(callback, false);
    }
}
