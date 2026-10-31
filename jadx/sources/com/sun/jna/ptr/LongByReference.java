package com.sun.jna.ptr;

import com.sun.jna.Pointer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class LongByReference extends ByReference {
    public LongByReference(long j10) {
        super(8);
        setValue(j10);
    }

    public long getValue() {
        return getPointer().getLong(0L);
    }

    public void setValue(long j10) {
        getPointer().setLong(0L, j10);
    }

    @Override // com.sun.jna.ptr.ByReference, com.sun.jna.PointerType
    public String toString() {
        return String.format("long@0x%1$x=0x%2$x (%2$d)", Long.valueOf(Pointer.nativeValue(getPointer())), Long.valueOf(getValue()));
    }

    public LongByReference() {
        this(0L);
    }
}
