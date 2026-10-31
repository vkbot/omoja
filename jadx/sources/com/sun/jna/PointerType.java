package com.sun.jna;

import ai.onnxruntime.AbstractC0074a;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class PointerType implements NativeMapped {
    private Pointer pointer;

    public PointerType() {
        this.pointer = Pointer.NULL;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PointerType)) {
            return false;
        }
        Pointer pointer = ((PointerType) obj).getPointer();
        Pointer pointer2 = this.pointer;
        if (pointer2 == null) {
            return pointer == null;
        }
        return pointer2.equals(pointer);
    }

    @Override // com.sun.jna.NativeMapped
    public Object fromNative(Object obj, FromNativeContext fromNativeContext) {
        if (obj == null) {
            return null;
        }
        PointerType pointerType = (PointerType) Klass.newInstance(getClass());
        pointerType.pointer = (Pointer) obj;
        return pointerType;
    }

    public Pointer getPointer() {
        return this.pointer;
    }

    public int hashCode() {
        Pointer pointer = this.pointer;
        if (pointer != null) {
            return pointer.hashCode();
        }
        return 0;
    }

    @Override // com.sun.jna.NativeMapped
    public Class<?> nativeType() {
        return Pointer.class;
    }

    public void setPointer(Pointer pointer) {
        this.pointer = pointer;
    }

    @Override // com.sun.jna.NativeMapped
    public Object toNative() {
        return getPointer();
    }

    public String toString() {
        if (this.pointer == null) {
            return "NULL";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.pointer.toString());
        sb.append(" (");
        return AbstractC0074a.m165p(sb, super.toString(), ")");
    }

    public PointerType(Pointer pointer) {
        this.pointer = pointer;
    }
}
