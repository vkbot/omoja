package com.sun.jna;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.C0674b;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.nio.Buffer;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.UByte;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
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
    private final Map<String, NativeStringTracking> nativeStrings;
    private boolean readCalled;
    private int size;
    private int structAlignment;
    private Map<String, StructField> structFields;
    private long typeInfo;
    private TypeMapper typeMapper;
    private static final Logger LOG = Logger.getLogger(Structure.class.getName());
    static final Map<Class<?>, LayoutInfo> layoutInfo = new WeakHashMap();
    static final Map<Class<?>, List<String>> fieldOrder = new WeakHashMap();
    private static final ThreadLocal<Map<Pointer, Structure>> reads = new ThreadLocal<Map<Pointer, Structure>>() { // from class: com.sun.jna.Structure.1
        @Override // java.lang.ThreadLocal
        public synchronized Map<Pointer, Structure> initialValue() {
            return new HashMap();
        }
    };
    private static final ThreadLocal<Set<Structure>> busy = new ThreadLocal<Set<Structure>>() { // from class: com.sun.jna.Structure.2
        @Override // java.lang.ThreadLocal
        public synchronized Set<Structure> initialValue() {
            return new StructureSet();
        }
    };
    private static final Pointer PLACEHOLDER_MEMORY = new Pointer(0) { // from class: com.sun.jna.Structure.3
        @Override // com.sun.jna.Pointer
        public Pointer share(long j10, long j11) {
            return this;
        }
    };

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class AutoAllocated extends Memory {
        public AutoAllocated(int i10) {
            super(i10);
            super.clear();
        }

        @Override // com.sun.jna.Memory, com.sun.jna.Pointer
        public String toString() {
            return "auto-" + super.toString();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface ByReference {
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public interface ByValue {
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @Target({ElementType.TYPE})
    @Documented
    @Retention(RetentionPolicy.RUNTIME)
    public @interface FieldOrder {
        String[] value();
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class LayoutInfo {
        private int alignType;
        private int alignment;
        private final Map<String, StructField> fields;
        private int size;
        private TypeMapper typeMapper;
        private boolean variable;

        private LayoutInfo() {
            this.size = -1;
            this.alignment = 1;
            this.fields = Collections.synchronizedMap(new LinkedHashMap());
            this.alignType = 0;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class NativeStringTracking {
        private NativeString peer;
        private final Object value;

        public NativeStringTracking(Object obj) {
            this.value = obj;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class StructField {
        public FromNativeContext context;
        public Field field;
        public boolean isReadOnly;
        public boolean isVolatile;
        public String name;
        public FromNativeConverter readConverter;
        public Class<?> type;
        public ToNativeConverter writeConverter;
        public int size = -1;
        public int offset = -1;

        public String toString() {
            return this.name + "@" + this.offset + "[" + this.size + "] (" + this.type + ")";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class StructureSet extends AbstractCollection<Structure> implements Set<Structure> {
        private int count;
        Structure[] elements;

        private void ensureCapacity(int i10) {
            Structure[] structureArr = this.elements;
            if (structureArr == null) {
                this.elements = new Structure[(i10 * 3) / 2];
            } else if (structureArr.length < i10) {
                Structure[] structureArr2 = new Structure[(i10 * 3) / 2];
                System.arraycopy(structureArr, 0, structureArr2, 0, structureArr.length);
                this.elements = structureArr2;
            }
        }

        private int indexOf(Structure structure) {
            for (int i10 = 0; i10 < this.count; i10++) {
                Structure structure2 = this.elements[i10];
                if (structure == structure2 || (structure.getClass() == structure2.getClass() && structure.size() == structure2.size() && structure.getPointer().equals(structure2.getPointer()))) {
                    return i10;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Structure structure) {
            if (contains(structure)) {
                return false;
            }
            ensureCapacity(this.count + 1);
            Structure[] structureArr = this.elements;
            int i10 = this.count;
            this.count = i10 + 1;
            structureArr[i10] = structure;
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return indexOf((Structure) obj) != -1;
        }

        public Structure[] getElements() {
            return this.elements;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Structure> iterator() {
            int i10 = this.count;
            Structure[] structureArr = new Structure[i10];
            if (i10 > 0) {
                System.arraycopy(this.elements, 0, structureArr, 0, i10);
            }
            return Arrays.asList(structureArr).iterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iIndexOf = indexOf((Structure) obj);
            if (iIndexOf == -1) {
                return false;
            }
            int i10 = this.count - 1;
            this.count = i10;
            if (i10 >= 0) {
                Structure[] structureArr = this.elements;
                structureArr[iIndexOf] = structureArr[i10];
                structureArr[i10] = null;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.count;
        }
    }

    public Structure(Pointer pointer, int i10, TypeMapper typeMapper) throws IllegalAccessException {
        this.size = -1;
        this.nativeStrings = new HashMap(8);
        this.autoRead = true;
        this.autoWrite = true;
        setAlignType(i10);
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

    private int addPadding(int i10, int i11) {
        int i12;
        return (this.actualAlignType == 1 || (i12 = i10 % i11) == 0) ? i10 : (i11 - i12) + i10;
    }

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

    private Class<?> baseClass() {
        return (((this instanceof ByReference) || (this instanceof ByValue)) && Structure.class.isAssignableFrom(getClass().getSuperclass())) ? getClass().getSuperclass() : getClass();
    }

    public static Set<Structure> busy() {
        return busy.get();
    }

    public static List<String> createFieldsOrder(List<String> list, List<String> list2) {
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return Collections.unmodifiableList(arrayList);
    }

    private LayoutInfo deriveLayout(boolean z9, boolean z10) throws IllegalAccessException {
        Class<?> clsNativeType;
        List<Field> fields = getFields(z9);
        LayoutInfo layoutInfo2 = null;
        byte b10 = 0;
        if (fields == null) {
            return null;
        }
        LayoutInfo layoutInfo3 = new LayoutInfo();
        layoutInfo3.alignType = this.alignType;
        layoutInfo3.typeMapper = this.typeMapper;
        boolean z11 = true;
        int iMax = 0;
        for (Field field : fields) {
            int modifiers = field.getModifiers();
            Class<?> type = field.getType();
            if (type.isArray()) {
                layoutInfo3.variable = true;
            }
            StructField structField = new StructField();
            structField.isVolatile = Modifier.isVolatile(modifiers);
            boolean zIsFinal = Modifier.isFinal(modifiers);
            structField.isReadOnly = zIsFinal;
            if (zIsFinal) {
                if (!Platform.RO_FIELDS) {
                    C0674b.m856w("This VM does not support read-only fields (field '", field.getName(), "' within ", getClass(), ")");
                    return null;
                }
                field.setAccessible(true);
            }
            structField.field = field;
            structField.name = field.getName();
            structField.type = type;
            if (Callback.class.isAssignableFrom(type) && !type.isInterface()) {
                C0674b.m857x(field.getName(), "Structure Callback field '", "' must be an interface");
                return null;
            }
            if (type.isArray() && Structure.class.equals(type.getComponentType())) {
                C1929i.m3029k("Nested Structure arrays must use a derived Structure type so that the size of the elements can be determined");
                return null;
            }
            if (Modifier.isPublic(field.getModifiers())) {
                Object fieldValue = getFieldValue(structField.field);
                if (fieldValue == null && type.isArray()) {
                    if (!z9) {
                        return layoutInfo2;
                    }
                    C1929i.m3030l("Array fields must be initialized");
                    return null;
                }
                if (NativeMapped.class.isAssignableFrom(type)) {
                    NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(type);
                    clsNativeType = nativeMappedConverter.nativeType();
                    structField.writeConverter = nativeMappedConverter;
                    structField.readConverter = nativeMappedConverter;
                    structField.context = new StructureReadContext(this, field);
                    layoutInfo2 = layoutInfo2;
                } else {
                    TypeMapper typeMapper = this.typeMapper;
                    if (typeMapper != null) {
                        ToNativeConverter toNativeConverter = typeMapper.getToNativeConverter(type);
                        FromNativeConverter fromNativeConverter = this.typeMapper.getFromNativeConverter(type);
                        if (toNativeConverter != null && fromNativeConverter != null) {
                            layoutInfo2 = layoutInfo2;
                            fieldValue = toNativeConverter.toNative(fieldValue, new StructureWriteContext(this, structField.field));
                            Class<?> cls = fieldValue != null ? fieldValue.getClass() : Pointer.class;
                            structField.writeConverter = toNativeConverter;
                            structField.readConverter = fromNativeConverter;
                            structField.context = new StructureReadContext(this, field);
                            clsNativeType = cls;
                        } else if (toNativeConverter != null || fromNativeConverter != null) {
                            C1929i.m3029k(AbstractC0074a.m159j(type, "Structures require bidirectional type conversion for "));
                            return null;
                        }
                    }
                    clsNativeType = type;
                }
                if (fieldValue == null) {
                    fieldValue = initializeField(structField.field, type);
                }
                try {
                    structField.size = getNativeSize(clsNativeType, fieldValue);
                    int nativeAlignment = getNativeAlignment(clsNativeType, fieldValue, z11);
                    if (nativeAlignment == 0) {
                        throw new Error("Field alignment is zero for field '" + structField.name + "' within " + getClass());
                    }
                    layoutInfo3.alignment = Math.max(layoutInfo3.alignment, nativeAlignment);
                    int i10 = iMax % nativeAlignment;
                    if (i10 != 0) {
                        iMax += nativeAlignment - i10;
                    }
                    if (this instanceof Union) {
                        structField.offset = 0;
                        iMax = Math.max(iMax, structField.size);
                    } else {
                        structField.offset = iMax;
                        iMax += structField.size;
                    }
                    layoutInfo3.fields.put(structField.name, structField);
                } catch (IllegalArgumentException e) {
                    if (!z9 && this.typeMapper == null) {
                        return layoutInfo2;
                    }
                    StringBuilder sb = new StringBuilder("Invalid Structure field in ");
                    sb.append(getClass());
                    sb.append(", field name '");
                    sb.append(structField.name);
                    sb.append("' (");
                    sb.append(structField.type);
                    String message = e.getMessage();
                    sb.append("): ");
                    sb.append(message);
                    throw new IllegalArgumentException(sb.toString(), e);
                }
            } else {
                layoutInfo2 = layoutInfo2;
            }
            z11 = false;
            layoutInfo2 = layoutInfo2;
        }
        if (iMax <= 0) {
            C0674b.m857x(getClass(), "Structure ", " has unknown or zero size (ensure all fields are public)");
            return null;
        }
        int iAddPadding = addPadding(iMax, layoutInfo3.alignment);
        if ((this instanceof ByValue) && !z10) {
            getTypeInfo();
        }
        layoutInfo3.size = iAddPadding;
        return layoutInfo3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureAllocated(boolean z9) throws IllegalAccessException {
        if (this.memory == null) {
            allocateMemory(z9);
            return;
        }
        if (this.size == -1) {
            int iCalculateSize = calculateSize(true, z9);
            this.size = iCalculateSize;
            Pointer pointer = this.memory;
            if (pointer instanceof AutoAllocated) {
                return;
            }
            try {
                this.memory = pointer.share(0L, iCalculateSize);
            } catch (IndexOutOfBoundsException e) {
                throw new IllegalArgumentException("Structure exceeds provided memory bounds", e);
            }
        }
    }

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

    private String format(Class<?> cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(".") + 1);
    }

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

    private Object initializeField(Field field, Class<?> cls) throws IllegalAccessException {
        if (!Structure.class.isAssignableFrom(cls) || ByReference.class.isAssignableFrom(cls)) {
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

    private void initializeFields() {
        for (Field field : getFieldList()) {
            try {
                if (field.get(this) == null) {
                    initializeField(field, field.getType());
                }
            } catch (Exception e) {
                C0674b.m844k("Exception reading field '", field.getName(), "' in ", getClass(), e);
                return;
            }
        }
    }

    private void initializeTypeMapper(TypeMapper typeMapper) throws IllegalAccessException {
        if (typeMapper == null) {
            typeMapper = Native.getTypeMapper(getClass());
        }
        this.typeMapper = typeMapper;
        layoutChanged();
    }

    private void layoutChanged() throws IllegalAccessException {
        if (this.size != -1) {
            this.size = -1;
            if (this.memory instanceof AutoAllocated) {
                this.memory = null;
            }
            ensureAllocated();
        }
    }

    public static <T extends Structure> T newInstance(Class<T> cls, Pointer pointer) {
        try {
            Constructor pointerConstructor = getPointerConstructor(cls);
            if (pointerConstructor != null) {
                return (T) pointerConstructor.newInstance(pointer);
            }
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("Instantiation of " + cls + " (Pointer) not allowed, is it public?", e);
        } catch (InstantiationException e6) {
            throw new IllegalArgumentException(AbstractC0074a.m159j(cls, "Can't instantiate "), e6);
        } catch (SecurityException unused) {
        } catch (InvocationTargetException e10) {
            throw new IllegalArgumentException(AbstractC0074a.m159j(cls, "Exception thrown while instantiating an instance of "), e10);
        }
        T t = (T) newInstance(cls);
        if (pointer != PLACEHOLDER_MEMORY) {
            t.useMemory(pointer);
        }
        return t;
    }

    public static Map<Pointer, Structure> reading() {
        return reads.get();
    }

    private void setFieldValue(Field field, Object obj, boolean z9) throws IllegalAccessException {
        try {
            field.set(this, obj);
        } catch (IllegalAccessException e) {
            if (!Modifier.isFinal(field.getModifiers())) {
                C0674b.m844k("Unexpectedly unable to write to field '", field.getName(), "' within ", getClass(), e);
                return;
            }
            if (!z9) {
                throw new UnsupportedOperationException("Attempt to write to read-only field '" + field.getName() + "' within " + getClass(), e);
            }
            throw new UnsupportedOperationException("This VM does not support Structures with final fields (field '" + field.getName() + "' within " + getClass() + ")", e);
        }
    }

    public static <T extends Structure> int size(Class<T> cls, T t) {
        LayoutInfo layoutInfo2;
        Map<Class<?>, LayoutInfo> map = layoutInfo;
        synchronized (map) {
            layoutInfo2 = map.get(cls);
        }
        int i10 = (layoutInfo2 == null || layoutInfo2.variable) ? -1 : layoutInfo2.size;
        if (i10 != -1) {
            return i10;
        }
        if (t == null) {
            t = (T) newInstance(cls, PLACEHOLDER_MEMORY);
        }
        return t.size();
    }

    private static <T extends Comparable<T>> List<T> sort(Collection<? extends T> collection) {
        ArrayList arrayList = new ArrayList(collection);
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void structureArrayCheck(Structure[] structureArr) throws IllegalAccessException {
        if (ByReference[].class.isAssignableFrom(structureArr.getClass())) {
            return;
        }
        Pointer pointer = structureArr[0].getPointer();
        int size = structureArr[0].size();
        for (int i10 = 1; i10 < structureArr.length; i10++) {
            if (structureArr[i10].getPointer().peer != pointer.peer + ((long) (size * i10))) {
                C1929i.m3029k(AbstractC0074a.m155f(i10, "Structure array elements must use contiguous memory (bad backing address at Structure array index ", ")"));
                return;
            }
        }
    }

    private String toString(int i10, boolean z9, boolean z10) throws IllegalAccessException {
        String strConcat;
        String str;
        String string;
        ensureAllocated();
        String property = System.getProperty("line.separator");
        String string2 = format(getClass()) + "(" + getPointer() + ")";
        if (!(getPointer() instanceof Memory)) {
            StringBuilder sbM172w = AbstractC0074a.m172w(string2, " (");
            sbM172w.append(size());
            sbM172w.append(" bytes)");
            string2 = sbM172w.toString();
        }
        String strConcat2 = "";
        for (int i11 = 0; i11 < i10; i11++) {
            strConcat2 = strConcat2.concat("  ");
        }
        if (z9) {
            Iterator<StructField> it = fields().values().iterator();
            String str2 = property;
            while (it.hasNext()) {
                StructField next = it.next();
                Object fieldValue = getFieldValue(next.field);
                String str3 = format(next.type);
                String strM148C = AbstractC0074a.m148C(str2, strConcat2);
                if (!next.type.isArray() || fieldValue == null) {
                    str = "";
                } else {
                    str3 = format(next.type.getComponentType());
                    str = "[" + Array.getLength(fieldValue) + "]";
                }
                String strConcat3 = strM148C.concat(String.format("  %s %s%s@0x%X", str3, next.name, str, Integer.valueOf(next.offset)));
                if (fieldValue instanceof Structure) {
                    fieldValue = ((Structure) fieldValue).toString(i10 + 1, !(fieldValue instanceof ByReference), z10);
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
                    StringBuilder sbM170u = AbstractC0074a.m170u(strConcat4);
                    sbM170u.append(String.valueOf(fieldValue).trim());
                    string = sbM170u.toString();
                }
                String strM148C2 = AbstractC0074a.m148C(string, property);
                if (!it.hasNext()) {
                    strM148C2 = AbstractC0074a.m149D(strM148C2, strConcat2, "}");
                }
                str2 = strM148C2;
            }
            strConcat = str2;
        } else {
            strConcat = "...}";
        }
        if (i10 == 0 && z10) {
            String string3 = strConcat + property + "memory dump" + property;
            byte[] byteArray = getPointer().getByteArray(0L, size());
            for (int i12 = 0; i12 < byteArray.length; i12++) {
                int i13 = i12 % 4;
                if (i13 == 0) {
                    string3 = string3.concat("[");
                }
                byte b10 = byteArray[i12];
                if (b10 >= 0 && b10 < 16) {
                    string3 = string3.concat("0");
                }
                StringBuilder sbM170u2 = AbstractC0074a.m170u(string3);
                sbM170u2.append(Integer.toHexString(byteArray[i12] & UByte.MAX_VALUE));
                string3 = sbM170u2.toString();
                if (i13 == 3 && i12 < byteArray.length - 1) {
                    string3 = AbstractC0074a.m149D(string3, "]", property);
                }
            }
            strConcat = string3.concat("]");
        }
        return AbstractC0074a.m149D(string2, " {", strConcat);
    }

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

    public static void validate(Class<? extends Structure> cls) {
        try {
            cls.getConstructor(null);
        } catch (NoSuchMethodException | SecurityException unused) {
            C1929i.m3029k("No suitable constructor found for class: ".concat(cls.getName()));
        }
    }

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

    private void validateFields() {
        for (Field field : getFieldList()) {
            validateField(field.getName(), field.getType());
        }
    }

    private void writeField(StructField structField, Object obj) {
        String str;
        int i10 = structField.offset;
        Class<?> clsNativeType = structField.type;
        ToNativeConverter toNativeConverter = structField.writeConverter;
        if (toNativeConverter != null) {
            obj = toNativeConverter.toNative(obj, new StructureWriteContext(this, structField.field));
            clsNativeType = toNativeConverter.nativeType();
        }
        if (String.class == clsNativeType || WString.class == clsNativeType) {
            if (obj != null) {
                NativeStringTracking nativeStringTracking = new NativeStringTracking(obj);
                NativeStringTracking nativeStringTrackingPut = this.nativeStrings.put(structField.name, nativeStringTracking);
                if (nativeStringTrackingPut != null && obj.equals(nativeStringTrackingPut.value)) {
                    nativeStringTracking.peer = nativeStringTrackingPut.peer;
                    return;
                } else {
                    NativeString nativeString = clsNativeType == WString.class ? new NativeString(obj.toString(), true) : new NativeString(obj.toString(), this.encoding);
                    nativeStringTracking.peer = nativeString;
                    obj = nativeString.getPointer();
                }
            } else {
                this.nativeStrings.remove(structField.name);
            }
        }
        try {
            this.memory.setValue(i10, obj, clsNativeType);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder("Structure field \"");
            sb.append(structField.name);
            sb.append("\" was declared as ");
            sb.append(structField.type);
            if (structField.type == clsNativeType) {
                str = "";
            } else {
                str = " (native type " + clsNativeType + ")";
            }
            throw new IllegalArgumentException(AbstractC0074a.m165p(sb, str, ", which is not supported within a Structure"), e);
        }
    }

    public void allocateMemory(int i10) {
        if (i10 == -1) {
            i10 = calculateSize(false);
        } else if (i10 <= 0) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Structure size must be greater than zero: "));
            return;
        }
        if (i10 != -1) {
            Pointer pointer = this.memory;
            if (pointer == null || (pointer instanceof AutoAllocated)) {
                this.memory = autoAllocate(i10);
            }
            this.size = i10;
        }
    }

    public Memory autoAllocate(int i10) {
        return new AutoAllocated(i10);
    }

    public void cacheTypeInfo(Pointer pointer) {
        this.typeInfo = pointer.peer;
    }

    public int calculateSize(boolean z9, boolean z10) throws IllegalAccessException {
        LayoutInfo layoutInfoDeriveLayout;
        Class<?> cls = getClass();
        Map<Class<?>, LayoutInfo> map = layoutInfo;
        synchronized (map) {
            layoutInfoDeriveLayout = map.get(cls);
        }
        if (layoutInfoDeriveLayout == null || this.alignType != layoutInfoDeriveLayout.alignType || this.typeMapper != layoutInfoDeriveLayout.typeMapper) {
            layoutInfoDeriveLayout = deriveLayout(z9, z10);
        }
        if (layoutInfoDeriveLayout == null) {
            return -1;
        }
        this.structAlignment = layoutInfoDeriveLayout.alignment;
        this.structFields = layoutInfoDeriveLayout.fields;
        if (!layoutInfoDeriveLayout.variable) {
            synchronized (map) {
                try {
                    if (!map.containsKey(cls) || this.alignType != 0 || this.typeMapper != null) {
                        map.put(cls, layoutInfoDeriveLayout);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return layoutInfoDeriveLayout.size;
    }

    public void clear() throws IllegalAccessException {
        ensureAllocated();
        this.nativeStrings.clear();
        this.memory.clear(size());
    }

    public void conditionalAutoRead() {
        if (this.readCalled) {
            return;
        }
        autoRead();
    }

    public boolean dataEquals(Structure structure, boolean z9) {
        if (z9) {
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
        for (int i10 = 0; i10 < byteArray.length; i10++) {
            if (byteArray[i10] != byteArray2[i10]) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Structure) && obj.getClass() == getClass() && ((Structure) obj).getPointer().equals(getPointer());
    }

    public int fieldOffset(String str) throws IllegalAccessException {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField != null) {
            return structField.offset;
        }
        C1929i.m3029k(AbstractC0074a.m161l("No such field: ", str));
        return 0;
    }

    public Map<String, StructField> fields() {
        return this.structFields;
    }

    public boolean getAutoRead() {
        return this.autoRead;
    }

    public boolean getAutoWrite() {
        return this.autoWrite;
    }

    public List<Field> getFieldList() {
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = getClass(); !superclass.equals(Structure.class); superclass = superclass.getSuperclass()) {
            ArrayList arrayList2 = new ArrayList();
            Field[] declaredFields = superclass.getDeclaredFields();
            for (int i10 = 0; i10 < declaredFields.length; i10++) {
                int modifiers = declaredFields[i10].getModifiers();
                if (!Modifier.isStatic(modifiers) && Modifier.isPublic(modifiers)) {
                    arrayList2.add(declaredFields[i10]);
                }
            }
            arrayList.addAll(0, arrayList2);
        }
        return arrayList;
    }

    public List<String> getFieldOrder() {
        LinkedList linkedList = new LinkedList();
        for (Class<?> superclass = getClass(); superclass != Structure.class; superclass = superclass.getSuperclass()) {
            FieldOrder fieldOrder2 = (FieldOrder) superclass.getAnnotation(FieldOrder.class);
            if (fieldOrder2 != null) {
                linkedList.addAll(0, Arrays.asList(fieldOrder2.value()));
            }
        }
        return Collections.unmodifiableList(linkedList);
    }

    public FFIType getFieldTypeInfo(StructField structField) throws IllegalAccessException {
        ToNativeConverter toNativeConverter;
        Class<?> clsNativeType = structField.type;
        Object fieldValue = getFieldValue(structField.field);
        TypeMapper typeMapper = this.typeMapper;
        if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(clsNativeType)) != null) {
            clsNativeType = toNativeConverter.nativeType();
            fieldValue = toNativeConverter.toNative(fieldValue, new ToNativeContext());
        }
        return FFIType.get(fieldValue, clsNativeType);
    }

    public Object getFieldValue(Field field) throws IllegalAccessException {
        try {
            return field.get(this);
        } catch (Exception e) {
            C0674b.m844k("Exception reading field '", field.getName(), "' in ", getClass(), e);
            return null;
        }
    }

    public List<Field> getFields(boolean z9) {
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
        if (!z9) {
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

    public int getNativeAlignment(Class<?> cls, Object obj, boolean z9) {
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
                if (ByReference.class.isAssignableFrom(cls)) {
                    nativeSize = Native.POINTER_SIZE;
                } else {
                    if (obj == null) {
                        obj = newInstance(cls, PLACEHOLDER_MEMORY);
                    }
                    nativeSize = ((Structure) obj).getStructAlignment();
                }
            } else {
                if (!cls.isArray()) {
                    C0674b.m849p(cls, "Type ", " has unknown native alignment");
                    return 0;
                }
                nativeSize = getNativeAlignment(cls.getComponentType(), null, z9);
            }
        }
        int i10 = this.actualAlignType;
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 3) {
            return Math.min(8, nativeSize);
        }
        if (i10 == 2) {
            if (!z9 || !Platform.isMac() || !Platform.isPPC()) {
                nativeSize = Math.min(Native.MAX_ALIGNMENT, nativeSize);
            }
            if (!z9 && Platform.isAIX() && (cls == Double.TYPE || cls == Double.class)) {
                return 4;
            }
        }
        return nativeSize;
    }

    public int getNativeSize(Class<?> cls) {
        return getNativeSize(cls, null);
    }

    public Pointer getPointer() {
        ensureAllocated();
        return this.memory;
    }

    public String getStringEncoding() {
        return this.encoding;
    }

    public int getStructAlignment() {
        if (this.size == -1) {
            calculateSize(true);
        }
        return this.structAlignment;
    }

    public Pointer getTypeInfo() {
        Pointer pointer = getTypeInfo(this).getPointer();
        cacheTypeInfo(pointer);
        return pointer;
    }

    public TypeMapper getTypeMapper() {
        return this.typeMapper;
    }

    public int hashCode() {
        return getPointer() != null ? getPointer().hashCode() : getClass().hashCode();
    }

    public void read() {
        if (this.memory == PLACEHOLDER_MEMORY) {
            return;
        }
        this.readCalled = true;
        ensureAllocated();
        if (busy().add(this)) {
            boolean z9 = this instanceof ByReference;
            if (z9) {
                reading().put(getPointer(), this);
            }
            try {
                Iterator<StructField> it = fields().values().iterator();
                while (it.hasNext()) {
                    readField(it.next());
                }
                busy().remove(this);
                if (z9 && reading().get(getPointer()) == this) {
                    reading().remove(getPointer());
                }
            } catch (Throwable th) {
                busy().remove(this);
                if (z9 && reading().get(getPointer()) == this) {
                    reading().remove(getPointer());
                }
                throw th;
            }
        }
    }

    public Object readField(StructField structField) throws IllegalAccessException {
        int i10 = structField.offset;
        Class<?> clsNativeType = structField.type;
        FromNativeConverter fromNativeConverter = structField.readConverter;
        if (fromNativeConverter != null) {
            clsNativeType = fromNativeConverter.nativeType();
        }
        Object value = null;
        Object fieldValue = (Structure.class.isAssignableFrom(clsNativeType) || Callback.class.isAssignableFrom(clsNativeType) || (Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(clsNativeType)) || Pointer.class.isAssignableFrom(clsNativeType) || NativeMapped.class.isAssignableFrom(clsNativeType) || clsNativeType.isArray()) ? getFieldValue(structField.field) : null;
        Pointer pointer = this.memory;
        if (clsNativeType == String.class) {
            Pointer pointer2 = pointer.getPointer(i10);
            if (pointer2 != null) {
                value = pointer2.getString(0L, this.encoding);
            }
        } else {
            value = pointer.getValue(i10, clsNativeType, fieldValue);
        }
        if (fromNativeConverter != null) {
            Object objFromNative = fromNativeConverter.fromNative(value, structField.context);
            if (fieldValue == null || !fieldValue.equals(objFromNative)) {
                fieldValue = objFromNative;
            }
        } else {
            fieldValue = value;
        }
        if (clsNativeType.equals(String.class) || clsNativeType.equals(WString.class)) {
            if (fieldValue != null) {
                NativeStringTracking nativeStringTracking = new NativeStringTracking(fieldValue);
                NativeStringTracking nativeStringTrackingPut = this.nativeStrings.put(structField.name, nativeStringTracking);
                if (nativeStringTrackingPut != null) {
                    nativeStringTracking.peer = nativeStringTrackingPut.peer;
                }
            } else {
                this.nativeStrings.remove(structField.name);
            }
        }
        setFieldValue(structField.field, fieldValue, true);
        return fieldValue;
    }

    public void setAlignType(int i10) throws IllegalAccessException {
        this.alignType = i10;
        if (i10 == 0 && (i10 = Native.getStructureAlignment(getClass())) == 0) {
            i10 = Platform.isWindows() ? 3 : 2;
        }
        this.actualAlignType = i10;
        layoutChanged();
    }

    public void setAutoRead(boolean z9) {
        this.autoRead = z9;
    }

    public void setAutoSynch(boolean z9) {
        setAutoRead(z9);
        setAutoWrite(z9);
    }

    public void setAutoWrite(boolean z9) {
        this.autoWrite = z9;
    }

    public void setStringEncoding(String str) {
        this.encoding = str;
    }

    public void sortFields(List<Field> list, List<String> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            String str = list2.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                if (str.equals(list.get(i11).getName())) {
                    Collections.swap(list, i10, i11);
                    break;
                }
            }
        }
    }

    public Structure[] toArray(Structure[] structureArr) {
        ensureAllocated();
        Pointer pointer = this.memory;
        if (pointer instanceof AutoAllocated) {
            int size = size() * structureArr.length;
            if (((Memory) pointer).size() < size) {
                useMemory(autoAllocate(size));
            }
        }
        structureArr[0] = this;
        int size2 = size();
        for (int i10 = 1; i10 < structureArr.length; i10++) {
            Structure structureNewInstance = newInstance((Class<Structure>) getClass(), this.memory.share(i10 * size2, size2));
            structureArr[i10] = structureNewInstance;
            structureNewInstance.conditionalAutoRead();
        }
        if (!(this instanceof ByValue)) {
            this.array = structureArr;
        }
        return structureArr;
    }

    public void useMemory(Pointer pointer, int i10, boolean z9) {
        try {
            this.nativeStrings.clear();
            if (!(this instanceof ByValue) || z9) {
                if (this.size == -1) {
                    this.size = calculateSize(false);
                }
                int i11 = this.size;
                if (i11 != -1) {
                    this.memory = pointer.share(i10, i11);
                } else {
                    this.memory = pointer.share(i10);
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

    public void write() {
        if (this.memory == PLACEHOLDER_MEMORY) {
            return;
        }
        ensureAllocated();
        if (this instanceof ByValue) {
            getTypeInfo();
        }
        if (busy().add(this)) {
            try {
                for (StructField structField : fields().values()) {
                    if (!structField.isVolatile) {
                        writeField(structField);
                    }
                }
                busy().remove(this);
            } catch (Throwable th) {
                busy().remove(this);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    @FieldOrder({"size", "alignment", "type", "elements"})
    public static class FFIType extends Structure {
        private static final int FFI_TYPE_STRUCT = 13;
        private static final Map<Pointer, FFIType> ffiTypeInfo;
        private static final Map<Class, Map<Integer, FFIType>> typeInfoMap = new WeakHashMap();
        private static final Map<Class, FFIType> unionHelper = new WeakHashMap();
        public short alignment;
        public Pointer elements;
        public size_t size;
        public short type;

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        public static class FFITypes {
            private static Pointer ffi_type_double;
            private static Pointer ffi_type_float;
            private static Pointer ffi_type_longdouble;
            private static Pointer ffi_type_pointer;
            private static Pointer ffi_type_sint16;
            private static Pointer ffi_type_sint32;
            private static Pointer ffi_type_sint64;
            private static Pointer ffi_type_sint8;
            private static Pointer ffi_type_uint16;
            private static Pointer ffi_type_uint32;
            private static Pointer ffi_type_uint64;
            private static Pointer ffi_type_uint8;
            private static Pointer ffi_type_void;

            private FFITypes() {
            }
        }

        static {
            HashMap map = new HashMap();
            ffiTypeInfo = map;
            if (Native.POINTER_SIZE == 0) {
                throw new Error("Native library not initialized");
            }
            if (FFITypes.ffi_type_void == null) {
                throw new Error("FFI types not initialized");
            }
            map.put(FFITypes.ffi_type_void, Structure.newInstance(FFIType.class, FFITypes.ffi_type_void));
            map.put(FFITypes.ffi_type_float, Structure.newInstance(FFIType.class, FFITypes.ffi_type_float));
            map.put(FFITypes.ffi_type_double, Structure.newInstance(FFIType.class, FFITypes.ffi_type_double));
            map.put(FFITypes.ffi_type_longdouble, Structure.newInstance(FFIType.class, FFITypes.ffi_type_longdouble));
            map.put(FFITypes.ffi_type_uint8, Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint8));
            map.put(FFITypes.ffi_type_sint8, Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint8));
            map.put(FFITypes.ffi_type_uint16, Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint16));
            map.put(FFITypes.ffi_type_sint16, Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint16));
            map.put(FFITypes.ffi_type_uint32, Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint32));
            map.put(FFITypes.ffi_type_sint32, Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint32));
            map.put(FFITypes.ffi_type_uint64, Structure.newInstance(FFIType.class, FFITypes.ffi_type_uint64));
            map.put(FFITypes.ffi_type_sint64, Structure.newInstance(FFIType.class, FFITypes.ffi_type_sint64));
            map.put(FFITypes.ffi_type_pointer, Structure.newInstance(FFIType.class, FFITypes.ffi_type_pointer));
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((FFIType) it.next()).read();
            }
            Map<Pointer, FFIType> map2 = ffiTypeInfo;
            storeTypeInfo(Void.TYPE, map2.get(FFITypes.ffi_type_void));
            storeTypeInfo(Void.class, map2.get(FFITypes.ffi_type_void));
            storeTypeInfo(Float.TYPE, map2.get(FFITypes.ffi_type_float));
            storeTypeInfo(Float.class, map2.get(FFITypes.ffi_type_float));
            storeTypeInfo(Double.TYPE, map2.get(FFITypes.ffi_type_double));
            storeTypeInfo(Double.class, map2.get(FFITypes.ffi_type_double));
            storeTypeInfo(Long.TYPE, map2.get(FFITypes.ffi_type_sint64));
            storeTypeInfo(Long.class, map2.get(FFITypes.ffi_type_sint64));
            storeTypeInfo(Integer.TYPE, map2.get(FFITypes.ffi_type_sint32));
            storeTypeInfo(Integer.class, map2.get(FFITypes.ffi_type_sint32));
            storeTypeInfo(Short.TYPE, map2.get(FFITypes.ffi_type_sint16));
            storeTypeInfo(Short.class, map2.get(FFITypes.ffi_type_sint16));
            FFIType fFIType = map2.get(Native.WCHAR_SIZE == 2 ? FFITypes.ffi_type_uint16 : FFITypes.ffi_type_uint32);
            storeTypeInfo(Character.TYPE, fFIType);
            storeTypeInfo(Character.class, fFIType);
            storeTypeInfo(Byte.TYPE, map2.get(FFITypes.ffi_type_sint8));
            storeTypeInfo(Byte.class, map2.get(FFITypes.ffi_type_sint8));
            storeTypeInfo(Pointer.class, map2.get(FFITypes.ffi_type_pointer));
            storeTypeInfo(String.class, map2.get(FFITypes.ffi_type_pointer));
            storeTypeInfo(WString.class, map2.get(FFITypes.ffi_type_pointer));
            storeTypeInfo(Boolean.TYPE, map2.get(FFITypes.ffi_type_uint32));
            storeTypeInfo(Boolean.class, map2.get(FFITypes.ffi_type_uint32));
        }

        public FFIType(Structure structure) throws IllegalAccessException {
            Pointer[] pointerArr;
            int i10;
            this.type = (short) 13;
            structure.ensureAllocated(true);
            int i11 = 0;
            if (structure instanceof Union) {
                int i12 = 0;
                boolean z9 = false;
                FFIType fFIType = null;
                for (StructField structField : structure.fields().values()) {
                    FFIType fieldTypeInfo = structure.getFieldTypeInfo(structField);
                    z9 = isIntegerType(fieldTypeInfo) ? true : z9;
                    if (fFIType == null || i12 < (i10 = structField.size) || (i12 == i10 && Structure.class.isAssignableFrom(structField.type))) {
                        i12 = structField.size;
                        fFIType = fieldTypeInfo;
                    }
                }
                if (((Platform.isIntel() && Platform.is64Bit() && !Platform.isWindows()) || Platform.isARM() || Platform.isLoongArch()) && z9 && isFloatType(fFIType)) {
                    FFIType fFIType2 = new FFIType(fFIType);
                    if (fFIType2.size.intValue() == 4) {
                        fFIType2.type = ffiTypeInfo.get(FFITypes.ffi_type_uint32).type;
                    } else if (fFIType2.size.intValue() == 8) {
                        fFIType2.type = ffiTypeInfo.get(FFITypes.ffi_type_uint64).type;
                    }
                    fFIType2.write();
                    fFIType = fFIType2;
                }
                pointerArr = new Pointer[]{fFIType.getPointer(), null};
                unionHelper.put(structure.getClass(), fFIType);
            } else {
                pointerArr = new Pointer[structure.fields().size() + 1];
                Iterator<StructField> it = structure.fields().values().iterator();
                while (it.hasNext()) {
                    pointerArr[i11] = structure.getFieldTypeInfo(it.next()).getPointer();
                    i11++;
                }
            }
            init(pointerArr);
            write();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static FFIType get(Object obj, Class<?> cls) {
            ToNativeConverter toNativeConverter;
            TypeMapper typeMapper = Native.getTypeMapper(cls);
            if (typeMapper != null && (toNativeConverter = typeMapper.getToNativeConverter(cls)) != null) {
                cls = toNativeConverter.nativeType();
            }
            Map<Class, Map<Integer, FFIType>> map = typeInfoMap;
            synchronized (map) {
                try {
                    FFIType typeInfo = getTypeInfo(cls, cls.isArray() ? Array.getLength(obj) : 0);
                    if (typeInfo != null) {
                        return typeInfo;
                    }
                    if ((Platform.HAS_BUFFERS && Buffer.class.isAssignableFrom(cls)) || Callback.class.isAssignableFrom(cls)) {
                        map.put(cls, map.get(Pointer.class));
                        return map.get(Pointer.class).get(0);
                    }
                    if (Structure.class.isAssignableFrom(cls)) {
                        if (obj == null) {
                            obj = Structure.newInstance(cls, Structure.PLACEHOLDER_MEMORY);
                        }
                        if (ByReference.class.isAssignableFrom(cls)) {
                            map.put(cls, map.get(Pointer.class));
                            return map.get(Pointer.class).get(0);
                        }
                        FFIType fFIType = new FFIType((Structure) obj);
                        storeTypeInfo(cls, fFIType);
                        return fFIType;
                    }
                    if (NativeMapped.class.isAssignableFrom(cls)) {
                        NativeMappedConverter nativeMappedConverter = NativeMappedConverter.getInstance(cls);
                        return get(nativeMappedConverter.toNative(obj, new ToNativeContext()), nativeMappedConverter.nativeType());
                    }
                    if (cls.isArray()) {
                        FFIType fFIType2 = new FFIType(obj, cls);
                        storeTypeInfo(cls, Array.getLength(obj), fFIType2);
                        return fFIType2;
                    }
                    throw new IllegalArgumentException("Unsupported type " + cls);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private static FFIType getTypeInfo(Class cls, int i10) {
            Map<Integer, FFIType> map = typeInfoMap.get(cls);
            if (map != null) {
                return map.get(Integer.valueOf(i10));
            }
            return null;
        }

        private void init(Pointer[] pointerArr) {
            Memory memory = new Memory(Native.POINTER_SIZE * pointerArr.length);
            this.elements = memory;
            memory.write(0L, pointerArr, 0, pointerArr.length);
            write();
        }

        private static boolean isFloatType(FFIType fFIType) {
            Pointer pointer = fFIType.getPointer();
            return pointer.equals(FFITypes.ffi_type_float) || pointer.equals(FFITypes.ffi_type_double);
        }

        private static boolean isIntegerType(FFIType fFIType) {
            Pointer pointer = fFIType.getPointer();
            return pointer.equals(FFITypes.ffi_type_uint8) || pointer.equals(FFITypes.ffi_type_sint8) || pointer.equals(FFITypes.ffi_type_uint16) || pointer.equals(FFITypes.ffi_type_sint16) || pointer.equals(FFITypes.ffi_type_uint32) || pointer.equals(FFITypes.ffi_type_sint32) || pointer.equals(FFITypes.ffi_type_uint64) || pointer.equals(FFITypes.ffi_type_sint64) || pointer.equals(FFITypes.ffi_type_pointer);
        }

        private static void storeTypeInfo(Class cls, int i10, FFIType fFIType) {
            Map<Class, Map<Integer, FFIType>> map = typeInfoMap;
            synchronized (map) {
                try {
                    Map<Integer, FFIType> map2 = map.get(cls);
                    if (map2 == null) {
                        map2 = new HashMap<>();
                        map.put(cls, map2);
                    }
                    map2.put(Integer.valueOf(i10), fFIType);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
        public static class size_t extends IntegerType {
            private static final long serialVersionUID = 1;

            public size_t() {
                this(0L);
            }

            public size_t(long j10) {
                super(Native.SIZE_T_SIZE, j10);
            }
        }

        private static void storeTypeInfo(Class cls, FFIType fFIType) {
            storeTypeInfo(cls, 0, fFIType);
        }

        public static FFIType get(Object obj) {
            FFIType typeInfo;
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

        public FFIType() {
            this.type = (short) 13;
        }

        public FFIType(FFIType fFIType) {
            this.type = (short) 13;
            this.size = fFIType.size;
            this.alignment = fFIType.alignment;
            this.type = fFIType.type;
            this.elements = fFIType.elements;
        }

        public FFIType(Object obj, Class<?> cls) {
            this.type = (short) 13;
            int length = Array.getLength(obj);
            Pointer[] pointerArr = new Pointer[length + 1];
            Pointer pointer = get(null, cls.getComponentType()).getPointer();
            for (int i10 = 0; i10 < length; i10++) {
                pointerArr[i10] = pointer;
            }
            init(pointerArr);
            write();
        }
    }

    public int getNativeSize(Class<?> cls, Object obj) {
        return Native.getNativeSize(cls, obj);
    }

    public static FFIType getTypeInfo(Object obj) {
        return FFIType.get(obj);
    }

    private int addPadding(int i10) {
        return addPadding(i10, this.structAlignment);
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
        int i10 = 1;
        while (true) {
            Structure[] structureArr = this.array;
            if (i10 >= structureArr.length) {
                return;
            }
            structureArr[i10].autoRead();
            i10++;
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
        int i10 = 1;
        while (true) {
            Structure[] structureArr = this.array;
            if (i10 >= structureArr.length) {
                return;
            }
            structureArr[i10].autoWrite();
            i10++;
        }
    }

    private void allocateMemory(boolean z9) throws IllegalAccessException {
        allocateMemory(calculateSize(true, z9));
    }

    public void allocateMemory() throws IllegalAccessException {
        allocateMemory(false);
    }

    public static int size(Class<? extends Structure> cls) {
        return size(cls, null);
    }

    public int size() throws IllegalAccessException {
        ensureAllocated();
        return this.size;
    }

    public void ensureAllocated() throws IllegalAccessException {
        ensureAllocated(false);
    }

    public Structure(TypeMapper typeMapper) {
        this(null, 0, typeMapper);
    }

    public Structure(int i10) {
        this((Pointer) null, i10);
    }

    public Structure(int i10, TypeMapper typeMapper) {
        this(null, i10, typeMapper);
    }

    public Structure(Pointer pointer) {
        this(pointer, 0);
    }

    public Structure(Pointer pointer, int i10) {
        this(pointer, i10, null);
    }

    public Structure() {
        this(0);
    }

    public Structure[] toArray(int i10) {
        return toArray((Structure[]) Array.newInstance(getClass(), i10));
    }

    public boolean dataEquals(Structure structure) {
        return dataEquals(structure, false);
    }

    public void useMemory(Pointer pointer, int i10) {
        useMemory(pointer, i10, false);
    }

    private static <T extends Structure> T newInstance(Class<T> cls, long j10) {
        try {
            T t = (T) newInstance(cls, j10 == 0 ? PLACEHOLDER_MEMORY : new Pointer(j10));
            if (j10 != 0) {
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

    public static <T extends Structure> T newInstance(Class<T> cls) throws IllegalAccessException {
        T t = (T) Klass.newInstance(cls);
        if (t instanceof ByValue) {
            t.allocateMemory();
        }
        return t;
    }

    public int calculateSize(boolean z9) {
        return calculateSize(z9, false);
    }

    public void setFieldValue(Field field, Object obj) throws IllegalAccessException {
        setFieldValue(field, obj, false);
    }

    public Object readField(String str) throws IllegalAccessException {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField != null) {
            return readField(structField);
        }
        C1929i.m3029k(AbstractC0074a.m161l("No such field: ", str));
        return null;
    }

    public void writeField(String str, Object obj) throws IllegalAccessException {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField != null) {
            setFieldValue(structField.field, obj);
            writeField(structField, obj);
        } else {
            C1929i.m3029k(AbstractC0074a.m161l("No such field: ", str));
        }
    }

    public void writeField(StructField structField) throws IllegalAccessException {
        if (structField.isReadOnly) {
            return;
        }
        writeField(structField, getFieldValue(structField.field));
    }

    public void writeField(String str) throws IllegalAccessException {
        ensureAllocated();
        StructField structField = fields().get(str);
        if (structField != null) {
            writeField(structField);
        } else {
            C1929i.m3029k(AbstractC0074a.m161l("No such field: ", str));
        }
    }

    public String toString(boolean z9) {
        return toString(0, true, z9);
    }

    public String toString() {
        return toString(Boolean.getBoolean("jna.dump_memory"));
    }
}
