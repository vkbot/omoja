package com.sun.jna;

import ai.onnxruntime.a;
import j1.i;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Map;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Function extends Pointer {
    public static final int ALT_CONVENTION = 63;
    public static final int C_CONVENTION = 0;
    private static final int MASK_CC = 63;
    public static final int MAX_NARGS = 256;
    static final String OPTION_INVOKING_METHOD = "invoking-method";
    public static final int THROW_LAST_ERROR = 64;
    public static final int USE_VARARGS = 384;
    final int callFlags;
    final String encoding;
    private final String functionName;
    private NativeLibrary library;
    final Map<String, ?> options;
    static final Integer INTEGER_TRUE = -1;
    static final Integer INTEGER_FALSE = 0;
    private static final VarArgsChecker IS_VARARGS = VarArgsChecker.create();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Function(NativeLibrary nativeLibrary, String str, int i9, String str2) {
        checkCallingConvention(i9 & 63);
        if (str == null) {
            b.n("Function name must not be null");
            throw null;
        }
        this.library = nativeLibrary;
        this.functionName = str;
        this.callFlags = i9;
        this.options = nativeLibrary.options;
        this.encoding = str2 == null ? Native.getDefaultStringEncoding() : str2;
        try {
            this.peer = nativeLibrary.getSymbolAddress(str);
        } catch (UnsatisfiedLinkError e) {
            StringBuilder sbX = a.x("Error looking up function '", str, "': ");
            sbX.append(e.getMessage());
            throw new UnsatisfiedLinkError(sbX.toString());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkCallingConvention(int i9) {
        if ((i9 & 63) == i9) {
            return;
        }
        i.k(a.e(i9, "Unrecognized calling convention: "));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Object[] concatenateVarArgs(Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            Object obj = objArr[objArr.length - 1];
            Class<?> cls = obj != null ? obj.getClass() : null;
            if (cls != null && cls.isArray()) {
                Object[] objArr2 = (Object[]) obj;
                for (int i9 = 0; i9 < objArr2.length; i9++) {
                    Object obj2 = objArr2[i9];
                    if (obj2 instanceof Float) {
                        objArr2[i9] = Double.valueOf(((Float) obj2).floatValue());
                    }
                }
                int length = objArr.length + objArr2.length;
                Object[] objArr3 = new Object[length];
                System.arraycopy(objArr, 0, objArr3, 0, objArr.length - 1);
                System.arraycopy(objArr2, 0, objArr3, objArr.length - 1, objArr2.length);
                objArr3[length - 1] = null;
                return objArr3;
            }
        }
        return objArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object convertArgument(Object[] objArr, int i9, Method method, TypeMapper typeMapper, boolean z8, Class<?> cls) {
        Object obj = objArr[i9];
        if (obj != null) {
            Class<?> cls2 = obj.getClass();
            ToNativeConverter nativeMappedConverter = NativeMapped.class.isAssignableFrom(cls2) ? NativeMappedConverter.getInstance(cls2) : typeMapper != null ? typeMapper.getToNativeConverter(cls2) : null;
            if (nativeMappedConverter != null) {
                obj = nativeMappedConverter.toNative(obj, method != null ? new MethodParameterContext(this, objArr, i9, method) : new FunctionParameterContext(this, objArr, i9));
            }
        }
        if (obj == null || isPrimitiveArray(obj.getClass())) {
            return obj;
        }
        Class<?> cls3 = obj.getClass();
        if (obj instanceof Structure) {
            Structure structure = (Structure) obj;
            structure.autoWrite();
            if (structure instanceof Structure$ByValue) {
                Class<?> cls4 = structure.getClass();
                if (method != null) {
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (!IS_VARARGS.isVarArgs(method) || i9 < parameterTypes.length - 1) {
                        cls4 = parameterTypes[i9];
                    } else {
                        Class<?> componentType = parameterTypes[parameterTypes.length - 1].getComponentType();
                        if (componentType != Object.class) {
                            cls4 = componentType;
                        }
                    }
                }
                if (Structure$ByValue.class.isAssignableFrom(cls4)) {
                    return structure;
                }
            }
            return structure.getPointer();
        }
        if (obj instanceof Callback) {
            return CallbackReference.getFunctionPointer((Callback) obj);
        }
        if (obj instanceof String) {
            return new NativeString((String) obj, false).getPointer();
        }
        if (obj instanceof WString) {
            return new NativeString(obj.toString(), true).getPointer();
        }
        if (obj instanceof Boolean) {
            return Boolean.TRUE.equals(obj) ? INTEGER_TRUE : INTEGER_FALSE;
        }
        if (String[].class == cls3) {
            return new StringArray((String[]) obj, this.encoding);
        }
        if (WString[].class == cls3) {
            return new StringArray((WString[]) obj);
        }
        if (Pointer[].class == cls3) {
            return new Function$PointerArray((Pointer[]) obj);
        }
        if (NativeMapped[].class.isAssignableFrom(cls3)) {
            return new Function$NativeMappedArray((NativeMapped[]) obj);
        }
        if (!Structure[].class.isAssignableFrom(cls3)) {
            if (cls3.isArray()) {
                androidx.navigation.b.o(cls3.getComponentType(), "Unsupported array argument type: ");
                return null;
            }
            if (z8 || Native.isSupportedNativeType(obj.getClass())) {
                return obj;
            }
            throw new IllegalArgumentException("Unsupported argument type " + obj.getClass().getName() + " at parameter " + i9 + " of function " + getName());
        }
        Structure[] structureArr = (Structure[]) obj;
        Class<?> componentType2 = cls3.getComponentType();
        boolean zIsAssignableFrom = Structure$ByReference.class.isAssignableFrom(componentType2);
        if (cls != null && !Structure$ByReference[].class.isAssignableFrom(cls)) {
            if (zIsAssignableFrom) {
                throw new IllegalArgumentException("Function " + getName() + " declared Structure[] at parameter " + i9 + " but array of " + componentType2 + " was passed");
            }
            for (int i10 = 0; i10 < structureArr.length; i10++) {
                if (structureArr[i10] instanceof Structure$ByReference) {
                    StringBuilder sb = new StringBuilder("Function ");
                    sb.append(getName());
                    sb.append(" declared Structure[] at parameter ");
                    sb.append(i9);
                    sb.append(" but element ");
                    i.k(a.o(sb, " is of Structure.ByReference type", i10));
                    return null;
                }
            }
        }
        if (zIsAssignableFrom) {
            Structure.autoWrite(structureArr);
            Pointer[] pointerArr = new Pointer[structureArr.length + 1];
            for (int i11 = 0; i11 < structureArr.length; i11++) {
                Structure structure2 = structureArr[i11];
                pointerArr[i11] = structure2 != null ? structure2.getPointer() : null;
            }
            return new Function$PointerArray(pointerArr);
        }
        if (structureArr.length == 0) {
            i.k("Structure array must have non-zero length");
            return null;
        }
        if (structureArr[0] == null) {
            Structure.newInstance(componentType2).toArray(structureArr);
            return structureArr[0].getPointer();
        }
        Structure.autoWrite(structureArr);
        return structureArr[0].getPointer();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int fixedArgs(Method method) {
        return IS_VARARGS.fixedArgs(method);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Function getFunction(String str, String str2, int i9) {
        return NativeLibrary.getInstance(str).getFunction(str2, i9, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Pointer invokePointer(int i9, Object[] objArr) {
        long jInvokePointer = Native.invokePointer(this, this.peer, i9, objArr);
        if (jInvokePointer == 0) {
            return null;
        }
        return new Pointer(jInvokePointer);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String invokeString(int i9, Object[] objArr, boolean z8) {
        Pointer pointerInvokePointer = invokePointer(i9, objArr);
        if (pointerInvokePointer != null) {
            return z8 ? pointerInvokePointer.getWideString(0L) : pointerInvokePointer.getString(0L, this.encoding);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean isPrimitiveArray(Class<?> cls) {
        return cls.isArray() && cls.getComponentType().isPrimitive();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isVarArgs(Method method) {
        return IS_VARARGS.isVarArgs(method);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Boolean valueOf(boolean z8) {
        return z8 ? Boolean.TRUE : Boolean.FALSE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            Function function = (Function) obj;
            if (function.callFlags == this.callFlags && function.options.equals(this.options) && function.peer == this.peer) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCallingConvention() {
        return this.callFlags & 63;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getName() {
        return this.functionName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public int hashCode() {
        return this.options.hashCode() + this.callFlags + super.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object invoke(Object[] objArr, Class<?> cls, boolean z8, int i9) {
        int i10 = this.callFlags | ((i9 & 3) << 7);
        if (cls == null || cls == Void.TYPE || cls == Void.class) {
            Native.invokeVoid(this, this.peer, i10, objArr);
            return null;
        }
        if (cls == Boolean.TYPE || cls == Boolean.class) {
            return valueOf(Native.invokeInt(this, this.peer, i10, objArr) != 0);
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return Byte.valueOf((byte) Native.invokeInt(this, this.peer, i10, objArr));
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return Short.valueOf((short) Native.invokeInt(this, this.peer, i10, objArr));
        }
        if (cls == Character.TYPE || cls == Character.class) {
            return Character.valueOf((char) Native.invokeInt(this, this.peer, i10, objArr));
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return Integer.valueOf(Native.invokeInt(this, this.peer, i10, objArr));
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return Long.valueOf(Native.invokeLong(this, this.peer, i10, objArr));
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return Float.valueOf(Native.invokeFloat(this, this.peer, i10, objArr));
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return Double.valueOf(Native.invokeDouble(this, this.peer, i10, objArr));
        }
        if (cls == String.class) {
            return invokeString(i10, objArr, false);
        }
        if (cls == WString.class) {
            String strInvokeString = invokeString(i10, objArr, true);
            if (strInvokeString != null) {
                return new WString(strInvokeString);
            }
        } else {
            if (Pointer.class.isAssignableFrom(cls)) {
                return invokePointer(i10, objArr);
            }
            if (Structure.class.isAssignableFrom(cls)) {
                if (Structure$ByValue.class.isAssignableFrom(cls)) {
                    Structure structureInvokeStructure = Native.invokeStructure(this, this.peer, i10, objArr, Structure.newInstance(cls));
                    structureInvokeStructure.autoRead();
                    return structureInvokeStructure;
                }
                Pointer pointerInvokePointer = invokePointer(i10, objArr);
                if (pointerInvokePointer == null) {
                    return pointerInvokePointer;
                }
                Structure structureNewInstance = Structure.newInstance((Class<Structure>) cls, pointerInvokePointer);
                structureNewInstance.conditionalAutoRead();
                return structureNewInstance;
            }
            if (Callback.class.isAssignableFrom(cls)) {
                Pointer pointerInvokePointer2 = invokePointer(i10, objArr);
                return pointerInvokePointer2 != null ? CallbackReference.getCallback(cls, pointerInvokePointer2) : pointerInvokePointer2;
            }
            if (cls == String[].class) {
                Pointer pointerInvokePointer3 = invokePointer(i10, objArr);
                if (pointerInvokePointer3 != null) {
                    return pointerInvokePointer3.getStringArray(0L, this.encoding);
                }
            } else if (cls == WString[].class) {
                Pointer pointerInvokePointer4 = invokePointer(i10, objArr);
                if (pointerInvokePointer4 != null) {
                    String[] wideStringArray = pointerInvokePointer4.getWideStringArray(0L);
                    WString[] wStringArr = new WString[wideStringArray.length];
                    for (int i11 = 0; i11 < wideStringArray.length; i11++) {
                        wStringArr[i11] = new WString(wideStringArray[i11]);
                    }
                    return wStringArr;
                }
            } else {
                if (cls != Pointer[].class) {
                    if (!z8) {
                        StringBuilder sb = new StringBuilder("Unsupported return type ");
                        sb.append(cls);
                        androidx.navigation.b.s(sb, " in function ", getName());
                        return null;
                    }
                    Object objInvokeObject = Native.invokeObject(this, this.peer, i10, objArr);
                    if (objInvokeObject == null || cls.isAssignableFrom(objInvokeObject.getClass())) {
                        return objInvokeObject;
                    }
                    StringBuilder sb2 = new StringBuilder("Return type ");
                    sb2.append(cls);
                    Class<?> cls2 = objInvokeObject.getClass();
                    sb2.append(" does not match result ");
                    sb2.append(cls2);
                    throw new ClassCastException(sb2.toString());
                }
                Pointer pointerInvokePointer5 = invokePointer(i10, objArr);
                if (pointerInvokePointer5 != null) {
                    return pointerInvokePointer5.getPointerArray(0L);
                }
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public double invokeDouble(Object[] objArr) {
        return ((Double) invoke(Double.class, objArr)).doubleValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float invokeFloat(Object[] objArr) {
        return ((Float) invoke(Float.class, objArr)).floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int invokeInt(Object[] objArr) {
        return ((Integer) invoke(Integer.class, objArr)).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long invokeLong(Object[] objArr) {
        return ((Long) invoke(Long.class, objArr)).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object invokeObject(Object[] objArr) {
        return invoke(Object.class, objArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void invokeVoid(Object[] objArr) {
        invoke(Void.class, objArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Pointer
    public String toString() {
        if (this.library == null) {
            return "native function@0x" + Long.toHexString(this.peer);
        }
        return "native function " + this.functionName + "(" + this.library.getName() + ")@0x" + Long.toHexString(this.peer);
    }

    public static Function getFunction(String str, String str2) {
        return NativeLibrary.getInstance(str).getFunction(str2);
    }

    public static Function getFunction(String str, String str2, int i9, String str3) {
        return NativeLibrary.getInstance(str).getFunction(str2, i9, str3);
    }

    public static Function getFunction(Pointer pointer) {
        return getFunction(pointer, 0, (String) null);
    }

    public static Function getFunction(Pointer pointer, int i9) {
        return getFunction(pointer, i9, (String) null);
    }

    public static Function getFunction(Pointer pointer, int i9, String str) {
        return new Function(pointer, i9, str);
    }

    public Pointer invokePointer(Object[] objArr) {
        return (Pointer) invoke(Pointer.class, objArr);
    }

    public String invokeString(Object[] objArr, boolean z8) {
        Object objInvoke = invoke(z8 ? WString.class : String.class, objArr);
        if (objInvoke != null) {
            return objInvoke.toString();
        }
        return null;
    }

    public Function(Pointer pointer, int i9, String str) {
        checkCallingConvention(i9 & 63);
        if (pointer != null && pointer.peer != 0) {
            this.functionName = pointer.toString();
            this.callFlags = i9;
            this.peer = pointer.peer;
            this.options = Collections.EMPTY_MAP;
            this.encoding = str == null ? Native.getDefaultStringEncoding() : str;
            return;
        }
        b.n("Function address may not be null");
        throw null;
    }

    public Object invoke(Class<?> cls, Object[] objArr, Map<String, ?> map) {
        Method method = (Method) map.get(OPTION_INVOKING_METHOD);
        return invoke(method, method != null ? method.getParameterTypes() : null, cls, objArr, map);
    }

    public Object invoke(Method method, Class<?>[] clsArr, Class<?> cls, Object[] objArr, Map<String, ?> map) {
        Object[] objArr2;
        FromNativeConverter fromNativeConverter;
        Class<?> clsNativeType;
        FromNativeConverter fromNativeConverter2;
        FromNativeConverter fromNativeConverter3;
        FromNativeContext functionResultContext;
        Object[] objArr3 = new Object[0];
        if (objArr == null) {
            objArr2 = objArr3;
        } else if (objArr.length <= 256) {
            int length = objArr.length;
            objArr2 = new Object[length];
            System.arraycopy(objArr, 0, objArr2, 0, length);
        } else {
            androidx.navigation.b.g("Maximum argument count is 256");
            return null;
        }
        TypeMapper typeMapper = (TypeMapper) map.get(Library.OPTION_TYPE_MAPPER);
        boolean zEquals = Boolean.TRUE.equals(map.get(Library.OPTION_ALLOW_OBJECTS));
        boolean zIsVarArgs = (objArr2.length <= 0 || method == null) ? false : isVarArgs(method);
        int iFixedArgs = (objArr2.length <= 0 || method == null) ? 0 : fixedArgs(method);
        int i9 = 0;
        while (true) {
            fromNativeConverter = null;
            Class<?> componentType = null;
            if (i9 >= objArr2.length) {
                break;
            }
            if (method != null) {
                componentType = (!zIsVarArgs || i9 < clsArr.length + (-1)) ? clsArr[i9] : clsArr[clsArr.length - 1].getComponentType();
            }
            Class<?> cls2 = componentType;
            Method method2 = method;
            Object objConvertArgument = convertArgument(objArr2, i9, method2, typeMapper, zEquals, cls2);
            int i10 = i9;
            Object[] objArr4 = objArr2;
            objArr4[i10] = objConvertArgument;
            i9 = i10 + 1;
            method = method2;
            objArr2 = objArr4;
        }
        Object[] objArr5 = objArr2;
        Method method3 = method;
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            clsNativeType = nativeMappedConverter.nativeType();
            fromNativeConverter3 = nativeMappedConverter;
        } else if (typeMapper == null || (fromNativeConverter2 = typeMapper.getFromNativeConverter(cls)) == null) {
            fromNativeConverter = fromNativeConverter2;
            clsNativeType = cls;
            fromNativeConverter3 = fromNativeConverter;
        } else {
            fromNativeConverter = fromNativeConverter2;
            clsNativeType = fromNativeConverter2.nativeType();
            fromNativeConverter3 = fromNativeConverter2;
        }
        Object objInvoke = invoke(objArr5, clsNativeType, zEquals, iFixedArgs);
        if (fromNativeConverter3 != null) {
            if (method3 != null) {
                functionResultContext = new MethodResultContext(cls, this, objArr, method3);
            } else {
                functionResultContext = new FunctionResultContext(cls, this, objArr);
            }
            objInvoke = fromNativeConverter3.fromNative(objInvoke, functionResultContext);
        }
        if (objArr != null) {
            for (int i11 = 0; i11 < objArr.length; i11++) {
                Object obj = objArr[i11];
                if (obj != null) {
                    if (obj instanceof Structure) {
                        if (!(obj instanceof Structure$ByValue)) {
                            ((Structure) obj).autoRead();
                        }
                    } else {
                        Object obj2 = objArr5[i11];
                        if (obj2 instanceof Function$PostCallRead) {
                            ((Function$PostCallRead) obj2).read();
                            Object obj3 = objArr5[i11];
                            if (obj3 instanceof Function$PointerArray) {
                                Function$PointerArray function$PointerArray = (Function$PointerArray) obj3;
                                if (Structure$ByReference[].class.isAssignableFrom(obj.getClass())) {
                                    Class<?> componentType2 = obj.getClass().getComponentType();
                                    Structure[] structureArr = (Structure[]) obj;
                                    for (int i12 = 0; i12 < structureArr.length; i12++) {
                                        structureArr[i12] = Structure.updateStructureByReference(componentType2, structureArr[i12], function$PointerArray.getPointer(Native.POINTER_SIZE * i12));
                                    }
                                }
                            }
                        } else if (Structure[].class.isAssignableFrom(obj.getClass())) {
                            Structure.autoRead((Structure[]) obj);
                        }
                    }
                }
            }
        }
        return objInvoke;
    }

    public Object invoke(Object[] objArr, Class<?> cls, boolean z8) {
        return invoke(objArr, cls, z8, 0);
    }

    public Object invoke(Class<?> cls, Object[] objArr) {
        return invoke(cls, objArr, this.options);
    }

    public void invoke(Object[] objArr) {
        invoke(Void.class, objArr);
    }
}
