package com.sun.jna;

import androidx.navigation.b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CallbackReference$DefaultCallbackProxy implements CallbackProxy {
    private final Method callbackMethod;
    private final String encoding;
    private final FromNativeConverter[] fromNative;
    final /* synthetic */ CallbackReference this$0;
    private ToNativeConverter toNative;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CallbackReference$DefaultCallbackProxy(CallbackReference callbackReference, Method method, TypeMapper typeMapper, String str) {
        this.this$0 = callbackReference;
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
        for (int i9 = 0; i9 < this.fromNative.length; i9++) {
            if (NativeMapped.class.isAssignableFrom(parameterTypes[i9])) {
                this.fromNative[i9] = new NativeMappedConverter(parameterTypes[i9]);
            } else if (typeMapper != null) {
                this.fromNative[i9] = typeMapper.getFromNativeConverter(parameterTypes[i9]);
            }
        }
        if (method.isAccessible()) {
            return;
        }
        try {
            method.setAccessible(true);
        } catch (SecurityException unused) {
            b.t(method, "Callback method is inaccessible, make sure the interface is public: ");
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object convertArgument(Object obj, Class<?> cls) {
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
        if (!Structure$ByValue.class.isAssignableFrom(cls)) {
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
            return Structure$ByValue.class.isAssignableFrom(cls) ? obj : ((Structure) obj).getPointer();
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return Boolean.TRUE.equals(obj) ? Function.INTEGER_TRUE : Function.INTEGER_FALSE;
        }
        if (cls == String.class || cls == WString.class) {
            return CallbackReference.access$100(obj, cls == WString.class);
        }
        if (cls != String[].class && cls != WString[].class) {
            return Callback.class.isAssignableFrom(cls) ? CallbackReference.getFunctionPointer((Callback) obj) : obj;
        }
        StringArray stringArray = cls == String[].class ? new StringArray((String[]) obj, this.encoding) : new StringArray((WString[]) obj);
        CallbackReference.allocations.put(obj, stringArray);
        return stringArray;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object invokeCallback(Object[] objArr) {
        Object objConvertResult;
        Class<?>[] parameterTypes = this.callbackMethod.getParameterTypes();
        int length = objArr.length;
        Object[] objArr2 = new Object[length];
        for (int i9 = 0; i9 < objArr.length; i9++) {
            Class<?> cls = parameterTypes[i9];
            Object obj = objArr[i9];
            if (this.fromNative[i9] != null) {
                objArr2[i9] = this.fromNative[i9].fromNative(obj, new CallbackParameterContext(cls, this.callbackMethod, objArr, i9));
            } else {
                objArr2[i9] = convertArgument(obj, cls);
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
            } catch (InvocationTargetException e9) {
                Native.getCallbackExceptionHandler().uncaughtException(callback, e9.getTargetException());
                objConvertResult = null;
            }
        } else {
            objConvertResult = null;
        }
        for (int i10 = 0; i10 < length; i10++) {
            Object obj2 = objArr2[i10];
            if ((obj2 instanceof Structure) && !(obj2 instanceof Structure$ByValue)) {
                ((Structure) obj2).autoWrite();
            }
        }
        return objConvertResult;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.CallbackProxy
    public Object callback(Object[] objArr) {
        try {
            return invokeCallback(objArr);
        } catch (Throwable th) {
            Native.getCallbackExceptionHandler().uncaughtException(getCallback(), th);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Callback getCallback() {
        return CallbackReference.access$000(this.this$0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.CallbackProxy
    public Class<?>[] getParameterTypes() {
        return this.callbackMethod.getParameterTypes();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.CallbackProxy
    public Class<?> getReturnType() {
        return this.callbackMethod.getReturnType();
    }
}
