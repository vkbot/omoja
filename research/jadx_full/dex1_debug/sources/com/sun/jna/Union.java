package com.sun.jna;

import androidx.navigation.b;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class Union extends Structure {
    private Structure$StructField activeField;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Union() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Structure$StructField findField(Class<?> cls) {
        ensureAllocated();
        for (Structure$StructField structure$StructField : fields().values()) {
            if (structure$StructField.type.isAssignableFrom(cls)) {
                return structure$StructField;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Structure
    public List<String> getFieldOrder() {
        List<Field> fieldList = getFieldList();
        ArrayList arrayList = new ArrayList(fieldList.size());
        Iterator<Field> it = fieldList.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Structure
    public int getNativeAlignment(Class<?> cls, Object obj, boolean z8) {
        return super.getNativeAlignment(cls, obj, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object getTypedValue(Class<?> cls) {
        ensureAllocated();
        for (Structure$StructField structure$StructField : fields().values()) {
            if (structure$StructField.type == cls) {
                this.activeField = structure$StructField;
                read();
                return getFieldValue(this.activeField.field);
            }
        }
        b.v("No field of type ", cls, " in ", this);
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Structure
    public Object readField(Structure$StructField structure$StructField) {
        if (structure$StructField == this.activeField || !(Structure.class.isAssignableFrom(structure$StructField.type) || String.class.isAssignableFrom(structure$StructField.type) || WString.class.isAssignableFrom(structure$StructField.type))) {
            return super.readField(structure$StructField);
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setType(Class<?> cls) {
        ensureAllocated();
        for (Structure$StructField structure$StructField : fields().values()) {
            if (structure$StructField.type == cls) {
                this.activeField = structure$StructField;
                return;
            }
        }
        b.v("No field of type ", cls, " in ", this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object setTypedValue(Object obj) {
        Structure$StructField structure$StructFieldFindField = findField(obj.getClass());
        if (structure$StructFieldFindField == null) {
            b.y("No field of type ", obj.getClass(), " in ", this);
            return null;
        }
        this.activeField = structure$StructFieldFindField;
        setFieldValue(structure$StructFieldFindField.field, obj);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Structure
    public void writeField(String str) {
        ensureAllocated();
        setType(str);
        super.writeField(str);
    }

    public Union(Pointer pointer) {
        super(pointer);
    }

    public Union(Pointer pointer, int i9) {
        super(pointer, i9);
    }

    public Union(TypeMapper typeMapper) {
        super(typeMapper);
    }

    public Union(Pointer pointer, int i9, TypeMapper typeMapper) {
        super(pointer, i9, typeMapper);
    }

    @Override // com.sun.jna.Structure
    public void writeField(String str, Object obj) {
        ensureAllocated();
        setType(str);
        super.writeField(str, obj);
    }

    @Override // com.sun.jna.Structure
    public void writeField(Structure$StructField structure$StructField) {
        if (structure$StructField == this.activeField) {
            super.writeField(structure$StructField);
        }
    }

    @Override // com.sun.jna.Structure
    public Object readField(String str) {
        ensureAllocated();
        setType(str);
        return super.readField(str);
    }

    public void setType(String str) {
        ensureAllocated();
        Structure$StructField structure$StructField = fields().get(str);
        if (structure$StructField != null) {
            this.activeField = structure$StructField;
        } else {
            b.v("No field named ", str, " in ", this);
        }
    }
}
