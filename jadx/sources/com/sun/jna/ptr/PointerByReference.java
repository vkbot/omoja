package com.sun.jna.ptr;

import com.sun.jna.Native;
import com.sun.jna.Pointer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class PointerByReference extends ByReference {
    public PointerByReference(Pointer pointer) {
        super(Native.POINTER_SIZE);
        setValue(pointer);
    }

    public Pointer getValue() {
        return getPointer().getPointer(0L);
    }

    public void setValue(Pointer pointer) {
        getPointer().setPointer(0L, pointer);
    }

    public PointerByReference() {
        this(null);
    }
}
