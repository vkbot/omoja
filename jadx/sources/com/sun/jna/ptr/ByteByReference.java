package com.sun.jna.ptr;

import com.sun.jna.Pointer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class ByteByReference extends ByReference {
    public ByteByReference(byte b10) {
        super(1);
        setValue(b10);
    }

    public byte getValue() {
        return getPointer().getByte(0L);
    }

    public void setValue(byte b10) {
        getPointer().setByte(0L, b10);
    }

    @Override // com.sun.jna.ptr.ByReference, com.sun.jna.PointerType
    public String toString() {
        return String.format("byte@0x%1$x=0x%2$x (%2$d)", Long.valueOf(Pointer.nativeValue(getPointer())), Byte.valueOf(getValue()));
    }

    public ByteByReference() {
        this((byte) 0);
    }
}
