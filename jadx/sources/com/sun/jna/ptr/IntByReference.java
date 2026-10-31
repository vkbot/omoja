package com.sun.jna.ptr;

import com.sun.jna.Pointer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class IntByReference extends ByReference {
    public IntByReference(int i10) {
        super(4);
        setValue(i10);
    }

    public int getValue() {
        return getPointer().getInt(0L);
    }

    public void setValue(int i10) {
        getPointer().setInt(0L, i10);
    }

    @Override // com.sun.jna.ptr.ByReference, com.sun.jna.PointerType
    public String toString() {
        return String.format("int@0x%1$x=0x%2$x (%2$d)", Long.valueOf(Pointer.nativeValue(getPointer())), Integer.valueOf(getValue()));
    }

    public IntByReference() {
        this(0);
    }
}
