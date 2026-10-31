package com.sun.jna;

import ai.onnxruntime.a;
import androidx.navigation.b;
import j1.i;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class Structure {
    public static final int ALIGN_DEFAULT = 0;
    public static final int ALIGN_GNUC = 2;
    public static final int ALIGN_MSVC = 3;
    public static final int ALIGN_NONE = 1;
    protected static final int CALCULATE_SIZE = -1;
    private int actualAlignType;
    private int alignType;
    private Structure[] array;
    private boolean autoRead;
    private boolean autoWrite;
    private String encoding;
    private Pointer memory;
    private final Map<String, Structure$NativeStringTracking> nativeStrings;
    private boolean readCalled;
    private int size;
    private int structAlignment;
    private Map<String, Structure$StructField> structFields;
    private long typeInfo;
    private TypeMapper typeMapper;
    private static final Logger LOG = Logger.getLogger(Structure.class.getName());
    static final Map<Class<?>, Structure$LayoutInfo> layoutInfo = new WeakHashMap();
    static final Map<Class<?>, List<String>> fieldOrder = new WeakHashMap();
    private static final ThreadLocal<Map<Pointer, Structure>> reads = new Structure$1();
    private static final ThreadLocal<Set<Structure>> busy = new Structure$2();
    private static final Pointer PLACEHOLDER_MEMORY = new Structure$3(0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Structure(Pointer pointer, int i9, TypeMapper typeMapper) {
        this.size = -1;
        this.nativeStrings = new HashMap(8);
        this.autoRead = true;
        this.autoWrite = true;
        setAlignType(i9);
        setStringEncoding(Native.getStringEncoding(getClass()));
        initializeTypeMapper(typeMapper);
        validateFields();
        if (pointer != null) {
            useMemory(pointer, 0, true);
        } else {
            allocateMemory(-1);
        }
        initializeFields();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ void access$2300(Structure structure, boolean z8) {
        structure.ensureAllocated(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Pointer access$2400() {
        return PLACEHOLDER_MEMORY;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int addPadding(int i9, int i10) {
        int i11;
        return (this.actualAlignType == 1 || (i11 = i9 % i10) == 0) ? i9 : (i10 - i11) + i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void autoRead(Structure[] structureArr) {
        structureArrayCheck(structureArr);
        Structure structure = structureArr[0];
        if (structure.array == structureArr) {
            structure.autoRead();
            return;
        }
        for (Structure structure2 : structureArr) {
            if (structure2 != null) {
                structure2.autoRead();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void autoWrite(Structure[] structureArr) {
        structureArrayCheck(structureArr);
        Structure structure = structureArr[0];
        if (structure.array == structureArr) {
            structure.autoWrite();
            return;
        }
        for (Structure structure2 : structureArr) {
            if (structure2 != null) {
                structure2.autoWrite();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Class<?> baseClass() {
        return (((this instanceof Structure$ByReference) || (this instanceof Structure$ByValue)) && Structure.class.isAssignableFrom(getClass().getSuperclass())) ? getClass().getSuperclass() : getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Set<Structure> busy() {
        return busy.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static List<String> createFieldsOrder(List<String> list, List<String> list2) {
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Structure$LayoutInfo deriveLayout(boolean z8, boolean z9) {
        Class<?> clsNativeType;
        List<Field> fields = getFields(z8);
        Structure$LayoutInfo structure$LayoutInfo = null;
        if (fields == null) {
            return null;
        }
        Structure$LayoutInfo structure$LayoutInfo2 = new Structure$LayoutInfo(null);
        Structure$LayoutInfo.access$402(structure$LayoutInfo2, this.alignType);
        Structure$LayoutInfo.access$502(structure$LayoutInfo2, this.typeMapper);
        boolean z10 = true;
        int iMax = 0;
        for (Field field : fields) {
            int modifiers = field.getModifiers();
            Class<?> type = field.getType();
            if (type.isArray()) {
                Structure$LayoutInfo.access$202(structure$LayoutInfo2, true);
            }
            Structure$StructField structure$StructField = new Structure$StructField();
            structure$StructField.isVolatile = Modifier.isVolatile(modifiers);
            boolean zIsFinal = Modifier.isFinal(modifiers);
            structure$StructField.isReadOnly = zIsFinal;
            if (zIsFinal) {
                if (!Platform.RO_FIELDS) {
                    b.w("This VM does not support read-only fields (field '", field.getName(), "' within ", getClass(), ")");
                    return null;
                }
                field.setAccessible(true);
            }
            structure$StructField.field = field;
            structure$StructField.name = field.getName();
            structure$StructField.type = type;
            if (Callback.class.isAssignableFrom(type) && !type.isInterface()) {
                b.x(field.getName(), "Structure Callback field '", "' must be an interface");
                return null;
            }
            if (type.isArray() && Structure.class.equals(type.getComponentType())) {
                i.k("Nested Structure arrays must use a derived Structure type so that the size of the elements can be determined");
                return null;
            }
            if (Modifier.isPublic(field.getModifiers())) {
                Object fieldValue = getFieldValue(structure$StructField.field);
                if (fieldValue == null && type.isArray()) {
                    if (!z8) {
                        return structure$LayoutInfo;
                    }
                    i.l("Array fields must be initialized");
                    return null;
                }
                if (NativeMapped.class.isAssignableFrom(type)) {
                    NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(type);
                    clsNativeType = nativeMappedConverter.nativeType();
                    structure$StructField.writeConverter = nativeMappedConverter;
                    structure$StructField.readConverter = nativeMappedConverter;
                    structure$StructField.context = new StructureReadContext(this, field);
                    structure$LayoutInfo = structure$LayoutInfo;
                } else {
                    TypeMapper typeMapper = this.typeMapper;
                    if (typeMapper != null) {
                        ToNativeConverter toNativeConverter = typeMapper.getToNativeConverter(type);
                        FromNativeConverter fromNativeConverter = this.typeMapper.getFromNativeConverter(type);
                        if (toNativeConverter != null && fromNativeConverter != null) {
                            structure$LayoutInfo = structure$LayoutInfo;
                            fieldValue = toNativeConverter.toNative(fieldValue, new StructureWriteContext(this, structure$StructField.field));
                            Class<?> cls = fieldValue != null ? fieldValue.getClass() : Pointer.class;
                            structure$StructField.writeConverter = toNativeConverter;
                            structure$StructField.readConverter = fromNativeConverter;
                            structure$StructField.context = new StructureReadContext(this, field);
                            clsNativeType = cls;
                        } else if (toNativeConverter != null || fromNativeConverter != null) {
                            i.k(a.j(type, "Structures require bidirectional type conversion for "));
                            return null;
                        }
                    }
                    clsNativeType = type;
                }
                if (fieldValue == null) {
                    fieldValue = initializeField(structure$StructField.field, type);
                }
                try {
                    structure$StructField.size = getNativeSize(clsNativeType, fieldValue);
                    int nativeAlignment = getNativeAlignment(clsNativeType, fieldValue, z10);
                    if (nativeAlignment == 0) {
                        throw new Error("Field alignment is zero for field '" + structure$StructField.name + "' within " + getClass());
                    }
                    Structure$LayoutInfo.access$602(structure$LayoutInfo2, Math.max(Structure$LayoutInfo.access$600(structure$LayoutInfo2), nativeAlignment));
                    int i9 = iMax % nativeAlignment;
                    if (i9 != 0) {
                        iMax += nativeAlignment - i9;
                    }
                    if (this instanceof Union) {
                        structure$StructField.offset = 0;
                        iMax = Math.max(iMax, structure$StructField.size);
                    } else {
                        structure$StructField.offset = iMax;
                        iMax += structure$StructField.size;
                    }
                    Structure$LayoutInfo.access$700(structure$LayoutInfo2).put(structure$StructField.name, structure$StructField);
                } catch (IllegalArgumentException e) {
                    if (!z8 && this.typeMapper == null) {
                        return structure$LayoutInfo;
                    }
                    StringBuilder sb = new StringBuilder("Invalid Structure field in ");
                    sb.append(getClass());
                    sb.append(", field name '");
                    sb.append(structure$StructField.name);
                    sb.append("' (");
                    sb.append(structure$StructField.type);
                    String message = e.getMessage();
                    sb.append("): ");
                    sb.append(message);
                    throw new IllegalArgumentException(sb.toString(), e);
                }
            } else {
                structure$LayoutInfo = structure$LayoutInfo;
            }
            z10 = false;
            structure$LayoutInfo = structure$LayoutInfo;
        }
        if (iMax <= 0) {
            b.x(getClass(), "Structure ", " has unknown or zero size (ensure all fields are public)");
            return null;
        }
        int iAddPadding = addPadding(iMax, Structure$LayoutInfo.access$600(structure$LayoutInfo2));
        if ((this instanceof Structure$ByValue) && !z9) {
            getTypeInfo();
        }
        Structure$LayoutInfo.access$302(structure$LayoutInfo2, iAddPadding);
        return structure$LayoutInfo2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void ensureAllocated(boolean z8) {
        if (this.memory == null) {
            allocateMemory(z8);
            return;
        }
        if (this.size == -1) {
            int iCalculateSize = calculateSize(true, z8);
            this.size = iCalculateSize;
            Pointer pointer = this.memory;
            if (pointer instanceof Structure$AutoAllocated) {
                return;
            }
            try {
                this.memory = pointer.share(0L, iCalculateSize);
            } catch (IndexOutOfBoundsException e) {
                throw new IllegalArgumentException("Structure exceeds provided memory bounds", e);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private List<String> fieldOrder() {
        List<String> fieldOrder2;
        Class<?> cls = getClass();
        Map<Class<?>, List<String>> map = fieldOrder;
        synchronized (map) {
            try {
                fieldOrder2 = map.get(cls);
                if (fieldOrder2 == null) {
                    fieldOrder2 = getFieldOrder();
                    map.put(cls, fieldOrder2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return fieldOrder2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String format(Class<?> cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(".") + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T> Constructor<T> getPointerConstructor(Class<T> cls) {
        for (Object obj : cls.getConstructors()) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(Pointer.class)) {
                return constructor;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object initializeField(Field field, Class<?> cls) {
        if (!Structure.class.isAssignableFrom(cls) || Structure$ByReference.class.isAssignableFrom(cls)) {
            if (!NativeMapped.class.isAssignableFrom(cls)) {
                return null;
            }
            NativeMapped nativeMappedDefaultValue = NativeMappedConverter.getInstance(cls).defaultValue();
            setFieldValue(field, nativeMappedDefaultValue);
            return nativeMappedDefaultValue;
        }
        try {
            Structure structureNewInstance = newInstance((Class<Structure>) cls, PLACEHOLDER_MEMORY);
            setFieldValue(field, structureNewInstance);
            return structureNewInstance;
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Can't determine size of nested structure", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initializeFields() {
        for (Field field : getFieldList()) {
            try {
                if (field.get(this) == null) {
                    initializeField(field, field.getType());
                }
            } catch (Exception e) {
                b.k("Exception reading field '", field.getName(), "' in ", getClass(), e);
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void initializeTypeMapper(TypeMapper typeMapper) {
        if (typeMapper == null) {
            typeMapper = Native.getTypeMapper(getClass());
        }
        this.typeMapper = typeMapper;
        layoutChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void layoutChanged() {
        if (this.size != -1) {
            this.size = -1;
            if (this.memory instanceof Structure$AutoAllocated) {
                this.memory = null;
            }
            ensureAllocated();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Structure> T newInstance(Class<T> cls, Pointer pointer) {
        try {
            Constructor pointerConstructor = getPointerConstructor(cls);
            if (pointerConstructor != null) {
                return (T) pointerConstructor.newInstance(pointer);
            }
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Instantiation of " + cls + " (Pointer) not allowed, is it public?", e);
        } catch (InstantiationException e6) {
            throw new IllegalArgumentException(a.j(cls, "Can't instantiate "), e6);
        } catch (SecurityException unused) {
        } catch (InvocationTargetException e9) {
            throw new IllegalArgumentException(a.j(cls, "Exception thrown while instantiating an instance of "), e9);
        }
        T t = (T) newInstance(cls);
        if (pointer != PLACEHOLDER_MEMORY) {
            t.useMemory(pointer);
        }
        return t;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static Map<Pointer, Structure> reading() {
        return reads.get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void setFieldValue(Field field, Object obj, boolean z8) {
        try {
            field.set(this, obj);
        } catch (IllegalAccessException e) {
            if (!Modifier.isFinal(field.getModifiers())) {
                b.k("Unexpectedly unable to write to field '", field.getName(), "' within ", getClass(), e);
                return;
            }
            if (!z8) {
                throw new UnsupportedOperationException("Attempt to write to read-only field '" + field.getName() + "' within " + getClass(), e);
            }
            throw new UnsupportedOperationException("This VM does not support Structures with final fields (field '" + field.getName() + "' within " + getClass() + ")", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Structure> int size(Class<T> cls, T t) {
        Structure$LayoutInfo structure$LayoutInfo;
        Map<Class<?>, Structure$LayoutInfo> map = layoutInfo;
        synchronized (map) {
            structure$LayoutInfo = map.get(cls);
        }
        int iAccess$300 = (structure$LayoutInfo == null || Structure$LayoutInfo.access$200(structure$LayoutInfo)) ? -1 : Structure$LayoutInfo.access$300(structure$LayoutInfo);
        if (iAccess$300 != -1) {
            return iAccess$300;
        }
        if (t == null) {
            t = (T) newInstance(cls, PLACEHOLDER_MEMORY);
        }
        return t.size();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static <T extends Comparable<T>> List<T> sort(Collection<? extends T> collection) {
        ArrayList arrayList = new ArrayList(collection);
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void structureArrayCheck(Structure[] structureArr) {
        if (Structure$ByReference[].class.isAssignableFrom(structureArr.getClass())) {
            return;
        }
        Pointer pointer = structureArr[0].getPointer();
        int size = structureArr[0].size();
        for (int i9 = 1; i9 < structureArr.length; i9++) {
            if (structureArr[i9].getPointer().peer != pointer.peer + ((long) (size * i9))) {
                i.k(a.f(i9, "Structure array elements must use contiguous memory (bad backing address at Structure array index ", ")"));
                return;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String toString(int i9, boolean z8, boolean z9) {
        String strConcat;
        String str;
        String string;
        ensureAllocated();
        String property = System.getProperty("line.separator");
        String string2 = format(getClass()) + "(" + getPointer() + ")";
        if (!(getPointer() instanceof Memory)) {
            StringBuilder sbW = a.w(string2, " (");
            sbW.append(size());
            sbW.append(" bytes)");
            string2 = sbW.toString();
        }
        String strConcat2 = "";
        for (int i10 = 0; i10 < i9; i10++) {
            strConcat2 = strConcat2.concat("  ");
        }
        if (z8) {
            Iterator<Structure$StructField> it = fields().values().iterator();
            String str2 = property;
            while (it.hasNext()) {
                Structure$StructField next = it.next();
                Object fieldValue = getFieldValue(next.field);
                String str3 = format(next.type);
                String strC = a.C(str2, strConcat2);
                if (!next.type.isArray() || fieldValue == null) {
                    str = "";
                } else {
                    str3 = format(next.type.getComponentType());
                    str = "[" + Array.getLength(fieldValue) + "]";
                }
                String strConcat3 = strC.concat(String.format("  %s %s%s@0x%X", str3, next.name, str, Integer.valueOf(next.offset)));
                if (fieldValue instanceof Structure) {
                    fieldValue = ((Structure) fieldValue).toString(i9 + 1, !(fieldValue instanceof Structure$ByReference), z9);
                }
                String strConcat4 = strConcat3.concat("=");
                if (fieldValue instanceof Long) {
                    string = strConcat4.concat(String.format("0x%08X", (Long) fieldValue));
                } else if (fieldValue instanceof Integer) {
                    string = strConcat4.concat(String.format("0x%04X", (Integer) fieldValue));
                } else if (fieldValue instanceof Short) {
                    string = strConcat4.concat(String.format("0x%02X", (Short) fieldValue));
                } else if (fieldValue instanceof Byte) {
                    string = strConcat4.concat(String.format("0x%01X", (Byte) fieldValue));
                } else {
                    StringBuilder sbU = a.u(strConcat4);
                    sbU.append(String.valueOf(fieldValue).trim());
                    string = sbU.toString();
                }
                String strC2 = a.C(string, property);
                if (!it.hasNext()) {
                    strC2 = a.D(strC2, strConcat2, "}");
                }
                str2 = strC2;
            }
            strConcat = str2;
        } else {
            strConcat = "...}";
        }
        if (i9 == 0 && z9) {
            String string3 = strConcat + property + "memory dump" + property;
            byte[] byteArray = getPointer().getByteArray(0L, size());
            for (int i11 = 0; i11 < byteArray.length; i11++) {
                int i12 = i11 % 4;
                if (i12 == 0) {
                    string3 = string3.concat("[");
                }
                byte b9 = byteArray[i11];
                if (b9 >= 0 && b9 < 16) {
                    string3 = string3.concat("0");
                }
                StringBuilder sbU2 = a.u(string3);
                sbU2.append(Integer.toHexString(byteArray[i11] & UByte.MAX_VALUE));
                string3 = sbU2.toString();
                if (i12 == 3 && i11 < byteArray.length - 1) {
                    string3 = a.D(string3, "]", property);
                }
            }
            strConcat = string3.concat("]");
        }
        return a.D(string2, " {", strConcat);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static <T extends Structure> T updateStructureByReference(Class<T> cls, T t, Pointer pointer) {
        if (pointer == null) {
            return null;
        }
        if (t != null && pointer.equals(t.getPointer())) {
            t.autoRead();
            return t;
        }
        T t3 = (T) reading().get(pointer);
        if (t3 != null && cls.equals(t3.getClass())) {
            t3.autoRead();
            return t3;
        }
        T t9 = (T) newInstance(cls, pointer);
        t9.conditionalAutoRead();
        return t9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void validate(Class<? extends Structure> cls) {
        try {
            cls.getConstructor(null);
        } catch (NoSuchMethodException | SecurityException unused) {
            i.k("No suitable constructor found for class: ".concat(cls.getName()));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void validateField(String str, Class<?> cls) {
        ToNativeConverter toNativeConverter;
        TypeMapper typeMapper = this.typeMapper;
        if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(cls)) != null) {
            validateField(str, toNativeConverter.nativeType());
            return;
        }
        if (cls.isArray()) {
            validateField(str, cls.getComponentType());
            return;
        }
        try {
            getNativeSize(cls);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("Invalid Structure field in ");
            sb.append(getClass());
            sb.append(", field name '");
            sb.append(str);
            sb.append("' (");
            sb.append(cls);
            String message = e.getMessage();
            sb.append("): ");
            sb.append(message);
            throw new IllegalArgumentException(sb.toString(), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void validateFields() {
        for (Field field : getFieldList()) {
            validateField(field.getName(), field.getType());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeField(Structure$StructField structure$StructField, Object obj) {
        String str;
        int i9 = structure$StructField.offset;
        Class<?> clsNativeType = structure$StructField.type;
        ToNativeConverter toNativeConverter = structure$StructField.writeConverter;
        if (toNativeConverter != null) {
            obj = toNativeConverter.toNative(obj, new StructureWriteContext(this, structure$StructField.field));
            clsNativeType = toNativeConverter.nativeType();
        }
        if (String.class == clsNativeType || WString.class == clsNativeType) {
            if (obj != null) {
                Structure$NativeStringTracking structure$NativeStringTracking = new Structure$NativeStringTracking(obj);
                Structure$NativeStringTracking structure$NativeStringTrackingPut = this.nativeStrings.put(structure$StructField.name, structure$NativeStringTracking);
                if (structure$NativeStringTrackingPut != null && obj.equals(Structure$NativeStringTracking.access$100(structure$NativeStringTrackingPut))) {
                    Structure$NativeStringTracking.access$002(structure$NativeStringTracking, Structure$NativeStringTracking.access$000(structure$NativeStringTrackingPut));
                    return;
                } else {
                    NativeString nativeString = clsNativeType == WString.class ? new NativeString(obj.toString(), true) : new NativeString(obj.toString(), this.encoding);
                    Structure$NativeStringTracking.access$002(structure$NativeStringTracking, nativeString);
                    obj = nativeString.getPointer();
                }
            } else {
                this.nativeStrings.remove(structure$StructField.name);
            }
        }
        try {
            this.memory.setValue(i9, obj, clsNativeType);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("Structure field \"");
            sb.append(structure$StructField.name);
            sb.append("\" was declared as ");
            sb.append(structure$StructField.type);
            if (structure$StructField.type == clsNativeType) {
                str = "";
            } else {
                str = " (native type " + clsNativeType + ")";
            }
            throw new IllegalArgumentException(a.p(sb, str, ", which is not supported within a Structure"), e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void allocateMemory(int i9) {
        if (i9 == -1) {
            i9 = calculateSize(false);
        } else if (i9 <= 0) {
            i.k(a.e(i9, "Structure size must be greater than zero: "));
            return;
        }
        if (i9 != -1) {
            Pointer pointer = this.memory;
            if (pointer == null || (pointer instanceof Structure$AutoAllocated)) {
                this.memory = autoAllocate(i9);
            }
            this.size = i9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Memory autoAllocate(int i9) {
        return new Structure$AutoAllocated(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void cacheTypeInfo(Pointer pointer) {
        this.typeInfo = pointer.peer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int calculateSize(boolean z8, boolean z9) {
        Structure$LayoutInfo structure$LayoutInfoDeriveLayout;
        Class<?> cls = getClass();
        Map<Class<?>, Structure$LayoutInfo> map = layoutInfo;
        synchronized (map) {
            structure$LayoutInfoDeriveLayout = map.get(cls);
        }
        if (structure$LayoutInfoDeriveLayout == null || this.alignType != Structure$LayoutInfo.access$400(structure$LayoutInfoDeriveLayout) || this.typeMapper != Structure$LayoutInfo.access$500(structure$LayoutInfoDeriveLayout)) {
            structure$LayoutInfoDeriveLayout = deriveLayout(z8, z9);
        }
        if (structure$LayoutInfoDeriveLayout == null) {
            return -1;
        }
        this.structAlignment = Structure$LayoutInfo.access$600(structure$LayoutInfoDeriveLayout);
        this.structFields = Structure$LayoutInfo.access$700(structure$LayoutInfoDeriveLayout);
        if (!Structure$LayoutInfo.access$200(structure$LayoutInfoDeriveLayout)) {
            synchronized (map) {
                try {
                    if (!map.containsKey(cls) || this.alignType != 0 || this.typeMapper != null) {
                        map.put(cls, structure$LayoutInfoDeriveLayout);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return Structure$LayoutInfo.access$300(structure$LayoutInfoDeriveLayout);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        ensureAllocated();
        this.nativeStrings.clear();
        this.memory.clear(size());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void conditionalAutoRead() {
        if (this.readCalled) {
            return;
        }
        autoRead();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean dataEquals(Structure structure, boolean z8) {
        if (z8) {
            structure.getPointer().clear(structure.size());
            structure.write();
            getPointer().clear(size());
            write();
        }
        byte[] byteArray = structure.getPointer().getByteArray(0L, structure.size());
        byte[] byteArray2 = getPointer().getByteArray(0L, size());
        if (byteArray.length != byteArray2.length) {
            return false;
        }
        for (int i9 = 0; i9 < byteArray.length; i9++) {
            if (byteArray[i9] != byteArray2[i9]) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        return (obj instanceof Structure) && obj.getClass() == getClass() && ((Structure) obj).getPointer().equals(getPointer());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int fieldOffset(String str) {
        ensureAllocated();
        Structure$StructField structure$StructField = fields().get(str);
        if (structure$StructField != null) {
            return structure$StructField.offset;
        }
        i.k(a.l("No such field: ", str));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, Structure$StructField> fields() {
        return this.structFields;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getAutoRead() {
        return this.autoRead;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getAutoWrite() {
        return this.autoWrite;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<Field> getFieldList() {
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = getClass(); !superclass.equals(Structure.class); superclass = superclass.getSuperclass()) {
            ArrayList arrayList2 = new ArrayList();
            Field[] declaredFields = superclass.getDeclaredFields();
            for (int i9 = 0; i9 < declaredFields.length; i9++) {
                int modifiers = declaredFields[i9].getModifiers();
                if (!Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers)) {
                    arrayList2.add(declaredFields[i9]);
                }
            }
            arrayList.addAll(0, arrayList2);
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<String> getFieldOrder() {
        LinkedList linkedList = new LinkedList();
        for (Class<?> superclass = getClass(); superclass != Structure.class; superclass = superclass.getSuperclass()) {
            Structure$FieldOrder structure$FieldOrder = (Structure$FieldOrder) superclass.getAnnotation(Structure$FieldOrder.class);
            if (structure$FieldOrder != null) {
                linkedList.addAll(0, Arrays.asList(structure$FieldOrder.value()));
            }
        }
        return Collections.unmodifiableList(linkedList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Structure$FFIType getFieldTypeInfo(Structure$StructField structure$StructField) {
        ToNativeConverter toNativeConverter;
        Class<?> clsNativeType = structure$StructField.type;
        Object fieldValue = getFieldValue(structure$StructField.field);
        TypeMapper typeMapper = this.typeMapper;
        if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(clsNativeType)) != null) {
            clsNativeType = toNativeConverter.nativeType();
            fieldValue = toNativeConverter.toNative(fieldValue, new ToNativeContext());
        }
        return Structure$FFIType.access$900(fieldValue, clsNativeType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getFieldValue(Field field) {
        try {
            return field.get(this);
        } catch (Exception e) {
            b.k("Exception reading field '", field.getName(), "' in ", getClass(), e);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<Field> getFields(boolean z8) {
        List<Field> fieldList = getFieldList();
        HashSet hashSet = new HashSet();
        Iterator<Field> it = fieldList.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getName());
        }
        List<String> listFieldOrder = fieldOrder();
        if (listFieldOrder.size() == fieldList.size() || fieldList.size() <= 1) {
            if (new HashSet(listFieldOrder).equals(hashSet)) {
                sortFields(fieldList, listFieldOrder);
                return fieldList;
            }
            StringBuilder sb = new StringBuilder("Structure.getFieldOrder() on ");
            sb.append(getClass());
            sb.append(" returns names (");
            sb.append(sort(listFieldOrder));
            List listSort = sort(hashSet);
            sb.append(") which do not match declared field names (");
            sb.append(listSort);
            sb.append(")");
            throw new Error(sb.toString());
        }
        if (!z8) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder("Structure.getFieldOrder() on ");
        sb2.append(getClass());
        sb2.append(listFieldOrder.size() < fieldList.size() ? " does not provide enough" : " provides too many");
        sb2.append(" names [");
        sb2.append(listFieldOrder.size());
        sb2.append("] (");
        sb2.append(sort(listFieldOrder));
        sb2.append(") to match declared fields [");
        sb2.append(fieldList.size());
        sb2.append("] (");
        sb2.append(sort(hashSet));
        sb2.append(")");
        throw new Error(sb2.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getNativeAlignment(Class<?> cls, Object obj, boolean z8) {
        if (NativeMapped.class.isAssignableFrom(cls)) {
            NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
            Class<?> clsNativeType = nativeMappedConverter.nativeType();
            obj = nativeMappedConverter.toNative(obj, new ToNativeContext());
            cls = clsNativeType;
        }
        int nativeSize = Native.getNativeSize(cls, obj);
        if (!cls.isPrimitive() && Long.class != cls && Integer.class != cls && Short.class != cls && Character.class != cls && Byte.class != cls && Boolean.class != cls && Float.class != cls && Double.class != cls) {
            if ((Pointer.class.isAssignableFrom(cls) && !Function.class.isAssignableFrom(cls)) || ((Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) || Callback.class.isAssignableFrom(cls) || WString.class == cls || String.class == cls)) {
                nativeSize = Native.POINTER_SIZE;
            } else if (Structure.class.isAssignableFrom(cls)) {
                if (Structure$ByReference.class.isAssignableFrom(cls)) {
                    nativeSize = Native.POINTER_SIZE;
                } else {
                    if (obj == null) {
                        obj = newInstance(cls, PLACEHOLDER_MEMORY);
                    }
                    nativeSize = ((Structure) obj).getStructAlignment();
                }
            } else {
                if (!cls.isArray()) {
                    b.p(cls, "Type ", " has unknown native alignment");
                    return 0;
                }
                nativeSize = getNativeAlignment(cls.getComponentType(), null, z8);
            }
        }
        int i9 = this.actualAlignType;
        if (i9 == 1) {
            return 1;
        }
        if (i9 == 3) {
            return Math.min(8, nativeSize);
        }
        if (i9 == 2) {
            if (!z8 || !Platform.isMac() || !Platform.isPPC()) {
                nativeSize = Math.min(Native.MAX_ALIGNMENT, nativeSize);
            }
            if (!z8 && Platform.isAIX() && (cls == Double.TYPE || cls == Double.class)) {
                return 4;
            }
        }
        return nativeSize;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getNativeSize(Class<?> cls) {
        return getNativeSize(cls, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer getPointer() {
        ensureAllocated();
        return this.memory;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getStringEncoding() {
        return this.encoding;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStructAlignment() {
        if (this.size == -1) {
            calculateSize(true);
        }
        return this.structAlignment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer getTypeInfo() {
        Pointer pointer = getTypeInfo(this).getPointer();
        cacheTypeInfo(pointer);
        return pointer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypeMapper getTypeMapper() {
        return this.typeMapper;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return getPointer() != null ? getPointer().hashCode() : getClass().hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void read() {
        if (this.memory == PLACEHOLDER_MEMORY) {
            return;
        }
        this.readCalled = true;
        ensureAllocated();
        if (busy().add(this)) {
            boolean z8 = this instanceof Structure$ByReference;
            if (z8) {
                reading().put(getPointer(), this);
            }
            try {
                Iterator<Structure$StructField> it = fields().values().iterator();
                while (it.hasNext()) {
                    readField(it.next());
                }
                busy().remove(this);
                if (z8 && reading().get(getPointer()) == this) {
                    reading().remove(getPointer());
                }
            } catch (Throwable th) {
                busy().remove(this);
                if (z8 && reading().get(getPointer()) == this) {
                    reading().remove(getPointer());
                }
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object readField(Structure$StructField structure$StructField) {
        int i9 = structure$StructField.offset;
        Class<?> clsNativeType = structure$StructField.type;
        FromNativeConverter fromNativeConverter = structure$StructField.readConverter;
        if (fromNativeConverter != null) {
            clsNativeType = fromNativeConverter.nativeType();
        }
        Object value = null;
        Object fieldValue = (Structure.class.isAssignableFrom(clsNativeType) || Callback.class.isAssignableFrom(clsNativeType) || (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(clsNativeType)) || Pointer.class.isAssignableFrom(clsNativeType) || NativeMapped.class.isAssignableFrom(clsNativeType) || clsNativeType.isArray()) ? getFieldValue(structure$StructField.field) : null;
        Pointer pointer = this.memory;
        if (clsNativeType == String.class) {
            Pointer pointer2 = pointer.getPointer(i9);
            if (pointer2 != null) {
                value = pointer2.getString(0L, this.encoding);
            }
        } else {
            value = pointer.getValue(i9, clsNativeType, fieldValue);
        }
        if (fromNativeConverter != null) {
            Object objFromNative = fromNativeConverter.fromNative(value, structure$StructField.context);
            if (fieldValue == null || !fieldValue.equals(objFromNative)) {
                fieldValue = objFromNative;
            }
        } else {
            fieldValue = value;
        }
        if (clsNativeType.equals(String.class) || clsNativeType.equals(WString.class)) {
            if (fieldValue != null) {
                Structure$NativeStringTracking structure$NativeStringTracking = new Structure$NativeStringTracking(fieldValue);
                Structure$NativeStringTracking structure$NativeStringTrackingPut = this.nativeStrings.put(structure$StructField.name, structure$NativeStringTracking);
                if (structure$NativeStringTrackingPut != null) {
                    Structure$NativeStringTracking.access$002(structure$NativeStringTracking, Structure$NativeStringTracking.access$000(structure$NativeStringTrackingPut));
                }
            } else {
                this.nativeStrings.remove(structure$StructField.name);
            }
        }
        setFieldValue(structure$StructField.field, fieldValue, true);
        return fieldValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAlignType(int i9) {
        this.alignType = i9;
        if (i9 == 0 && (i9 = Native.getStructureAlignment(getClass())) == 0) {
            i9 = Platform.isWindows() ? 3 : 2;
        }
        this.actualAlignType = i9;
        layoutChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutoRead(boolean z8) {
        this.autoRead = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutoSynch(boolean z8) {
        setAutoRead(z8);
        setAutoWrite(z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setAutoWrite(boolean z8) {
        this.autoWrite = z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setStringEncoding(String str) {
        this.encoding = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void sortFields(List<Field> list, List<String> list2) {
        for (int i9 = 0; i9 < list2.size(); i9++) {
            String str = list2.get(i9);
            for (int i10 = 0; i10 < list.size(); i10++) {
                if (str.equals(list.get(i10).getName())) {
                    Collections.swap(list, i9, i10);
                    break;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Structure[] toArray(Structure[] structureArr) {
        ensureAllocated();
        Pointer pointer = this.memory;
        if (pointer instanceof Structure$AutoAllocated) {
            int size = size() * structureArr.length;
            if (((Memory) pointer).size() < size) {
                useMemory(autoAllocate(size));
            }
        }
        structureArr[0] = this;
        int size2 = size();
        for (int i9 = 1; i9 < structureArr.length; i9++) {
            Structure structureNewInstance = newInstance((Class<Structure>) getClass(), this.memory.share(i9 * size2, size2));
            structureArr[i9] = structureNewInstance;
            structureNewInstance.conditionalAutoRead();
        }
        if (!(this instanceof Structure$ByValue)) {
            this.array = structureArr;
        }
        return structureArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void useMemory(Pointer pointer, int i9, boolean z8) {
        try {
            this.nativeStrings.clear();
            if (!(this instanceof Structure$ByValue) || z8) {
                if (this.size == -1) {
                    this.size = calculateSize(false);
                }
                int i10 = this.size;
                if (i10 != -1) {
                    this.memory = pointer.share(i9, i10);
                } else {
                    this.memory = pointer.share(i9);
                }
            } else {
                int size = size();
                byte[] bArr = new byte[size];
                pointer.read(0L, bArr, 0, size);
                this.memory.write(0L, bArr, 0, size);
            }
            this.array = null;
            this.readCalled = false;
        } catch (IndexOutOfBoundsException e) {
            throw new IllegalArgumentException("Structure exceeds provided memory bounds", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void write() {
        if (this.memory == PLACEHOLDER_MEMORY) {
            return;
        }
        ensureAllocated();
        if (this instanceof Structure$ByValue) {
            getTypeInfo();
        }
        if (busy().add(this)) {
            try {
                for (Structure$StructField structure$StructField : fields().values()) {
                    if (!structure$StructField.isVolatile) {
                        writeField(structure$StructField);
                    }
                }
                busy().remove(this);
            } catch (Throwable th) {
                busy().remove(this);
                throw th;
            }
        }
    }

    public int getNativeSize(Class<?> cls, Object obj) {
        return Native.getNativeSize(cls, obj);
    }

    public static Structure$FFIType getTypeInfo(Object obj) {
        return Structure$FFIType.get(obj);
    }

    private int addPadding(int i9) {
        return addPadding(i9, this.structAlignment);
    }

    public static List<String> createFieldsOrder(List<String> list, String... strArr) {
        return createFieldsOrder(list, (List<String>) Arrays.asList(strArr));
    }

    public static List<String> createFieldsOrder(String str) {
        return Collections.unmodifiableList(Collections.singletonList(str));
    }

    public static List<String> createFieldsOrder(String... strArr) {
        return Collections.unmodifiableList(Arrays.asList(strArr));
    }

    public void autoRead() {
        if (!getAutoRead()) {
            return;
        }
        read();
        if (this.array == null) {
            return;
        }
        int i9 = 1;
        while (true) {
            Structure[] structureArr = this.array;
            if (i9 >= structureArr.length) {
                return;
            }
            structureArr[i9].autoRead();
            i9++;
        }
    }

    public void autoWrite() {
        if (!getAutoWrite()) {
            return;
        }
        write();
        if (this.array == null) {
            return;
        }
        int i9 = 1;
        while (true) {
            Structure[] structureArr = this.array;
            if (i9 >= structureArr.length) {
                return;
            }
            structureArr[i9].autoWrite();
            i9++;
        }
    }

    private void allocateMemory(boolean z8) {
        allocateMemory(calculateSize(true, z8));
    }

    public void allocateMemory() {
        allocateMemory(false);
    }

    public static int size(Class<? extends Structure> cls) {
        return size(cls, null);
    }

    public int size() {
        ensureAllocated();
        return this.size;
    }

    public void ensureAllocated() {
        ensureAllocated(false);
    }

    public Structure(TypeMapper typeMapper) {
        this(null, 0, typeMapper);
    }

    public Structure(int i9) {
        this((Pointer) null, i9);
    }

    public Structure(int i9, TypeMapper typeMapper) {
        this(null, i9, typeMapper);
    }

    public Structure(Pointer pointer) {
        this(pointer, 0);
    }

    public Structure(Pointer pointer, int i9) {
        this(pointer, i9, null);
    }

    public Structure() {
        this(0);
    }

    public Structure[] toArray(int i9) {
        return toArray((Structure[]) Array.newInstance(getClass(), i9));
    }

    public boolean dataEquals(Structure structure) {
        return dataEquals(structure, false);
    }

    public void useMemory(Pointer pointer, int i9) {
        useMemory(pointer, i9, false);
    }

    private static <T extends Structure> T newInstance(Class<T> cls, long j9) {
        try {
            T t = (T) newInstance(cls, j9 == 0 ? PLACEHOLDER_MEMORY : new Pointer(j9));
            if (j9 != 0) {
                t.conditionalAutoRead();
            }
            return t;
        } catch (Throwable th) {
            LOG.log(Level.WARNING, "JNA: Error creating structure", th);
            return null;
        }
    }

    public void useMemory(Pointer pointer) {
        useMemory(pointer, 0);
    }

    public static <T extends Structure> T newInstance(Class<T> cls) {
        T t = (T) Klass.newInstance(cls);
        if (t instanceof Structure$ByValue) {
            t.allocateMemory();
        }
        return t;
    }

    public int calculateSize(boolean z8) {
        return calculateSize(z8, false);
    }

    public void setFieldValue(Field field, Object obj) {
        setFieldValue(field, obj, false);
    }

    public Object readField(String str) {
        ensureAllocated();
        Structure$StructField structure$StructField = fields().get(str);
        if (structure$StructField != null) {
            return readField(structure$StructField);
        }
        i.k(a.l("No such field: ", str));
        return null;
    }

    public void writeField(String str, Object obj) {
        ensureAllocated();
        Structure$StructField structure$StructField = fields().get(str);
        if (structure$StructField != null) {
            setFieldValue(structure$StructField.field, obj);
            writeField(structure$StructField, obj);
        } else {
            i.k(a.l("No such field: ", str));
        }
    }

    public void writeField(Structure$StructField structure$StructField) {
        if (structure$StructField.isReadOnly) {
            return;
        }
        writeField(structure$StructField, getFieldValue(structure$StructField.field));
    }

    public void writeField(String str) {
        ensureAllocated();
        Structure$StructField structure$StructField = fields().get(str);
        if (structure$StructField != null) {
            writeField(structure$StructField);
        } else {
            i.k(a.l("No such field: ", str));
        }
    }

    public String toString(boolean z8) {
        return toString(0, true, z8);
    }

    public String toString() {
        return toString(Boolean.getBoolean("jna.dump_memory"));
    }
}
