package com.sun.jna;

import java.lang.reflect.Array;
import java.nio.Buffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@Structure$FieldOrder({"size", "alignment", "type", "elements"})
public class Structure$FFIType extends Structure {
    private static final int FFI_TYPE_STRUCT = 13;
    private static final Map<Pointer, Structure$FFIType> ffiTypeInfo;
    private static final Map<Class, Map<Integer, Structure$FFIType>> typeInfoMap = new WeakHashMap();
    private static final Map<Class, Structure$FFIType> unionHelper = new WeakHashMap();
    public short alignment;
    public Pointer elements;
    public Structure$FFIType$size_t size;
    public short type;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        HashMap map = new HashMap();
        ffiTypeInfo = map;
        if (Native.POINTER_SIZE == 0) {
            throw new Error("Native library not initialized");
        }
        if (Structure$FFIType$FFITypes.access$2100() == null) {
            throw new Error("FFI types not initialized");
        }
        map.put(Structure$FFIType$FFITypes.access$2100(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$2100()));
        map.put(Structure$FFIType$FFITypes.access$1900(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1900()));
        map.put(Structure$FFIType$FFITypes.access$2000(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$2000()));
        map.put(Structure$FFIType$FFITypes.access$2200(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$2200()));
        map.put(Structure$FFIType$FFITypes.access$1000(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1000()));
        map.put(Structure$FFIType$FFITypes.access$1100(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1100()));
        map.put(Structure$FFIType$FFITypes.access$1200(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1200()));
        map.put(Structure$FFIType$FFITypes.access$1300(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1300()));
        map.put(Structure$FFIType$FFITypes.access$1400(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1400()));
        map.put(Structure$FFIType$FFITypes.access$1500(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1500()));
        map.put(Structure$FFIType$FFITypes.access$1600(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1600()));
        map.put(Structure$FFIType$FFITypes.access$1700(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1700()));
        map.put(Structure$FFIType$FFITypes.access$1800(), Structure.newInstance(Structure$FFIType.class, Structure$FFIType$FFITypes.access$1800()));
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            ((Structure$FFIType) it.next()).read();
        }
        Map<Pointer, Structure$FFIType> map2 = ffiTypeInfo;
        storeTypeInfo(Void.TYPE, map2.get(Structure$FFIType$FFITypes.access$2100()));
        storeTypeInfo(Void.class, map2.get(Structure$FFIType$FFITypes.access$2100()));
        storeTypeInfo(Float.TYPE, map2.get(Structure$FFIType$FFITypes.access$1900()));
        storeTypeInfo(Float.class, map2.get(Structure$FFIType$FFITypes.access$1900()));
        storeTypeInfo(Double.TYPE, map2.get(Structure$FFIType$FFITypes.access$2000()));
        storeTypeInfo(Double.class, map2.get(Structure$FFIType$FFITypes.access$2000()));
        storeTypeInfo(Long.TYPE, map2.get(Structure$FFIType$FFITypes.access$1700()));
        storeTypeInfo(Long.class, map2.get(Structure$FFIType$FFITypes.access$1700()));
        storeTypeInfo(Integer.TYPE, map2.get(Structure$FFIType$FFITypes.access$1500()));
        storeTypeInfo(Integer.class, map2.get(Structure$FFIType$FFITypes.access$1500()));
        storeTypeInfo(Short.TYPE, map2.get(Structure$FFIType$FFITypes.access$1300()));
        storeTypeInfo(Short.class, map2.get(Structure$FFIType$FFITypes.access$1300()));
        Structure$FFIType structure$FFIType = map2.get(Native.WCHAR_SIZE == 2 ? Structure$FFIType$FFITypes.access$1200() : Structure$FFIType$FFITypes.access$1400());
        storeTypeInfo(Character.TYPE, structure$FFIType);
        storeTypeInfo(Character.class, structure$FFIType);
        storeTypeInfo(Byte.TYPE, map2.get(Structure$FFIType$FFITypes.access$1100()));
        storeTypeInfo(Byte.class, map2.get(Structure$FFIType$FFITypes.access$1100()));
        storeTypeInfo(Pointer.class, map2.get(Structure$FFIType$FFITypes.access$1800()));
        storeTypeInfo(String.class, map2.get(Structure$FFIType$FFITypes.access$1800()));
        storeTypeInfo(WString.class, map2.get(Structure$FFIType$FFITypes.access$1800()));
        storeTypeInfo(Boolean.TYPE, map2.get(Structure$FFIType$FFITypes.access$1400()));
        storeTypeInfo(Boolean.class, map2.get(Structure$FFIType$FFITypes.access$1400()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Structure$FFIType(Structure structure) {
        Pointer[] pointerArr;
        int i9;
        this.type = (short) 13;
        Structure.access$2300(structure, true);
        int i10 = 0;
        if (structure instanceof Union) {
            int i11 = 0;
            boolean z8 = false;
            Structure$FFIType structure$FFIType = null;
            for (Structure$StructField structure$StructField : structure.fields().values()) {
                Structure$FFIType fieldTypeInfo = structure.getFieldTypeInfo(structure$StructField);
                z8 = isIntegerType(fieldTypeInfo) ? true : z8;
                if (structure$FFIType == null || i11 < (i9 = structure$StructField.size) || (i11 == i9 && Structure.class.isAssignableFrom(structure$StructField.type))) {
                    i11 = structure$StructField.size;
                    structure$FFIType = fieldTypeInfo;
                }
            }
            if (((Platform.isIntel() && Platform.is64Bit() && !Platform.isWindows()) || Platform.isARM() || Platform.isLoongArch()) && z8 && isFloatType(structure$FFIType)) {
                Structure$FFIType structure$FFIType2 = new Structure$FFIType(structure$FFIType);
                if (structure$FFIType2.size.intValue() == 4) {
                    structure$FFIType2.type = ffiTypeInfo.get(Structure$FFIType$FFITypes.access$1400()).type;
                } else if (structure$FFIType2.size.intValue() == 8) {
                    structure$FFIType2.type = ffiTypeInfo.get(Structure$FFIType$FFITypes.access$1600()).type;
                }
                structure$FFIType2.write();
                structure$FFIType = structure$FFIType2;
            }
            pointerArr = new Pointer[]{structure$FFIType.getPointer(), null};
            unionHelper.put(structure.getClass(), structure$FFIType);
        } else {
            pointerArr = new Pointer[structure.fields().size() + 1];
            Iterator<Structure$StructField> it = structure.fields().values().iterator();
            while (it.hasNext()) {
                pointerArr[i10] = structure.getFieldTypeInfo(it.next()).getPointer();
                i10++;
            }
        }
        init(pointerArr);
        write();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Structure$FFIType access$900(Object obj, Class cls) {
        return get(obj, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Structure$FFIType get(Object obj, Class<?> cls) {
        ToNativeConverter toNativeConverter;
        TypeMapper typeMapper = Native.getTypeMapper(cls);
        if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(cls)) != null) {
            cls = toNativeConverter.nativeType();
        }
        Map<Class, Map<Integer, Structure$FFIType>> map = typeInfoMap;
        synchronized (map) {
            try {
                Structure$FFIType typeInfo = getTypeInfo(cls, cls.isArray() ? Array.getLength(obj) : 0);
                if (typeInfo != null) {
                    return typeInfo;
                }
                if ((Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) || Callback.class.isAssignableFrom(cls)) {
                    map.put(cls, map.get(Pointer.class));
                    return map.get(Pointer.class).get(0);
                }
                if (Structure.class.isAssignableFrom(cls)) {
                    if (obj == null) {
                        obj = Structure.newInstance(cls, Structure.access$2400());
                    }
                    if (Structure$ByReference.class.isAssignableFrom(cls)) {
                        map.put(cls, map.get(Pointer.class));
                        return map.get(Pointer.class).get(0);
                    }
                    Structure$FFIType structure$FFIType = new Structure$FFIType((Structure) obj);
                    storeTypeInfo(cls, structure$FFIType);
                    return structure$FFIType;
                }
                if (NativeMapped.class.isAssignableFrom(cls)) {
                    NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
                    return get(nativeMappedConverter.toNative(obj, new ToNativeContext()), nativeMappedConverter.nativeType());
                }
                if (cls.isArray()) {
                    Structure$FFIType structure$FFIType2 = new Structure$FFIType(obj, cls);
                    storeTypeInfo(cls, Array.getLength(obj), structure$FFIType2);
                    return structure$FFIType2;
                }
                throw new IllegalArgumentException("Unsupported type " + cls);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Structure$FFIType getTypeInfo(Class cls, int i9) {
        Map<Integer, Structure$FFIType> map = typeInfoMap.get(cls);
        if (map != null) {
            return map.get(Integer.valueOf(i9));
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void init(Pointer[] pointerArr) {
        Memory memory = new Memory(Native.POINTER_SIZE * pointerArr.length);
        this.elements = memory;
        memory.write(0L, pointerArr, 0, pointerArr.length);
        write();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isFloatType(Structure$FFIType structure$FFIType) {
        Pointer pointer = structure$FFIType.getPointer();
        return pointer.equals(Structure$FFIType$FFITypes.access$1900()) || pointer.equals(Structure$FFIType$FFITypes.access$2000());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isIntegerType(Structure$FFIType structure$FFIType) {
        Pointer pointer = structure$FFIType.getPointer();
        return pointer.equals(Structure$FFIType$FFITypes.access$1000()) || pointer.equals(Structure$FFIType$FFITypes.access$1100()) || pointer.equals(Structure$FFIType$FFITypes.access$1200()) || pointer.equals(Structure$FFIType$FFITypes.access$1300()) || pointer.equals(Structure$FFIType$FFITypes.access$1400()) || pointer.equals(Structure$FFIType$FFITypes.access$1500()) || pointer.equals(Structure$FFIType$FFITypes.access$1600()) || pointer.equals(Structure$FFIType$FFITypes.access$1700()) || pointer.equals(Structure$FFIType$FFITypes.access$1800());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void storeTypeInfo(Class cls, int i9, Structure$FFIType structure$FFIType) {
        Map<Class, Map<Integer, Structure$FFIType>> map = typeInfoMap;
        synchronized (map) {
            try {
                Map<Integer, Structure$FFIType> map2 = map.get(cls);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(cls, map2);
                }
                map2.put(Integer.valueOf(i9), structure$FFIType);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static void storeTypeInfo(Class cls, Structure$FFIType structure$FFIType) {
        storeTypeInfo(cls, 0, structure$FFIType);
    }

    public static Structure$FFIType get(Object obj) {
        Structure$FFIType typeInfo;
        if (obj == null) {
            synchronized (typeInfoMap) {
                typeInfo = getTypeInfo(Pointer.class, 0);
            }
            return typeInfo;
        }
        if (obj instanceof Class) {
            return get(null, (Class) obj);
        }
        return get(obj, obj.getClass());
    }

    public Structure$FFIType() {
        this.type = (short) 13;
    }

    public Structure$FFIType(Structure$FFIType structure$FFIType) {
        this.type = (short) 13;
        this.size = structure$FFIType.size;
        this.alignment = structure$FFIType.alignment;
        this.type = structure$FFIType.type;
        this.elements = structure$FFIType.elements;
    }

    public Structure$FFIType(Object obj, Class<?> cls) {
        this.type = (short) 13;
        int length = Array.getLength(obj);
        Pointer[] pointerArr = new Pointer[length + 1];
        Pointer pointer = get(null, cls.getComponentType()).getPointer();
        for (int i9 = 0; i9 < length; i9++) {
            pointerArr[i9] = pointer;
        }
        init(pointerArr);
        write();
    }
}
