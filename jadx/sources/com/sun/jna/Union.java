package com.sun.jna;

import androidx.navigation.C0674b;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Union extends Structure {
    private Structure.StructField activeField;

    public Union() {
    }

    private Structure.StructField findField(Class<?> cls) throws IllegalAccessException {
        ensureAllocated();
        for (Structure.StructField structField : fields().values()) {
            if (structField.type.isAssignableFrom(cls)) {
                return structField;
            }
        }
        return null;
    }

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

    @Override // com.sun.jna.Structure
    public int getNativeAlignment(Class<?> cls, Object obj, boolean z9) {
        return super.getNativeAlignment(cls, obj, true);
    }

    public Object getTypedValue(Class<?> cls) throws IllegalAccessException {
        ensureAllocated();
        for (Structure.StructField structField : fields().values()) {
            if (structField.type == cls) {
                this.activeField = structField;
                read();
                return getFieldValue(this.activeField.field);
            }
        }
        C0674b.m855v("No field of type ", cls, " in ", this);
        return null;
    }

    @Override // com.sun.jna.Structure
    public Object readField(Structure.StructField structField) {
        if (structField == this.activeField || !(Structure.class.isAssignableFrom(structField.type) || String.class.isAssignableFrom(structField.type) || WString.class.isAssignableFrom(structField.type))) {
            return super.readField(structField);
        }
        return null;
    }

    public void setType(Class<?> cls) throws IllegalAccessException {
        ensureAllocated();
        for (Structure.StructField structField : fields().values()) {
            if (structField.type == cls) {
                this.activeField = structField;
                return;
            }
        }
        C0674b.m855v("No field of type ", cls, " in ", this);
    }

    public Object setTypedValue(Object obj) throws IllegalAccessException {
        Structure.StructField structFieldFindField = findField(obj.getClass());
        if (structFieldFindField == null) {
            C0674b.m858y("No field of type ", obj.getClass(), " in ", this);
            return null;
        }
        this.activeField = structFieldFindField;
        setFieldValue(structFieldFindField.field, obj);
        return this;
    }

    @Override // com.sun.jna.Structure
    public void writeField(String str) throws IllegalAccessException {
        ensureAllocated();
        setType(str);
        super.writeField(str);
    }

    public Union(Pointer pointer) {
        super(pointer);
    }

    public Union(Pointer pointer, int i10) {
        super(pointer, i10);
    }

    public Union(TypeMapper typeMapper) {
        super(typeMapper);
    }

    public Union(Pointer pointer, int i10, TypeMapper typeMapper) {
        super(pointer, i10, typeMapper);
    }

    @Override // com.sun.jna.Structure
    public void writeField(String str, Object obj) throws IllegalAccessException {
        ensureAllocated();
        setType(str);
        super.writeField(str, obj);
    }

    @Override // com.sun.jna.Structure
    public void writeField(Structure.StructField structField) throws IllegalAccessException {
        if (structField == this.activeField) {
            super.writeField(structField);
        }
    }

    @Override // com.sun.jna.Structure
    public Object readField(String str) throws IllegalAccessException {
        ensureAllocated();
        setType(str);
        return super.readField(str);
    }

    public void setType(String str) throws IllegalAccessException {
        ensureAllocated();
        Structure.StructField structField = fields().get(str);
        if (structField != null) {
            this.activeField = structField;
        } else {
            C0674b.m855v("No field named ", str, " in ", this);
        }
    }
}
