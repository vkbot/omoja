package com.sun.jna.ptr;

import com.sun.jna.Pointer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ShortByReference extends ByReference {
    public ShortByReference(short s5) {
        super(2);
        setValue(s5);
    }

    public short getValue() {
        return getPointer().getShort(0L);
    }

    public void setValue(short s5) {
        getPointer().setShort(0L, s5);
    }

    @Override // com.sun.jna.ptr.ByReference, com.sun.jna.PointerType
    public String toString() {
        return String.format("short@0x%1$x=0x%2$x (%2$d)", Long.valueOf(Pointer.nativeValue(getPointer())), Short.valueOf(getValue()));
    }

    public ShortByReference() {
        this((short) 0);
    }
}
