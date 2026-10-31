package com.sun.jna;

import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class NativeString implements CharSequence, Comparable {
    static final String WIDE_STRING = "--WIDE-STRING--";
    private String encoding;
    private Pointer pointer;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public class StringMemory extends Memory {
        public StringMemory(long j10) {
            super(j10);
        }

        @Override // com.sun.jna.Memory, com.sun.jna.Pointer
        public String toString() {
            return NativeString.this.toString();
        }
    }

    public NativeString(String str, String str2) {
        if (str == null) {
            C2467b.m3828n("String must not be null");
            throw null;
        }
        this.encoding = str2;
        if (WIDE_STRING.equals(str2)) {
            StringMemory stringMemory = new StringMemory((str.length() + 1) * Native.WCHAR_SIZE);
            this.pointer = stringMemory;
            stringMemory.setWideString(0L, str);
        } else {
            byte[] bytes = Native.getBytes(str, str2);
            StringMemory stringMemory2 = new StringMemory(bytes.length + 1);
            this.pointer = stringMemory2;
            stringMemory2.write(0L, bytes, 0, bytes.length);
            this.pointer.setByte(bytes.length, (byte) 0);
        }
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return toString().charAt(i10);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null) {
            return 1;
        }
        return toString().compareTo(obj.toString());
    }

    public boolean equals(Object obj) {
        return (obj instanceof CharSequence) && compareTo(obj) == 0;
    }

    public Pointer getPointer() {
        return this.pointer;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @Override // java.lang.CharSequence
    public int length() {
        return toString().length();
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return toString().subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        boolean zEquals = WIDE_STRING.equals(this.encoding);
        Pointer pointer = this.pointer;
        return zEquals ? pointer.getWideString(0L) : pointer.getString(0L, this.encoding);
    }

    public NativeString(String str, boolean z9) {
        this(str, z9 ? WIDE_STRING : Native.getDefaultStringEncoding());
    }

    public NativeString(WString wString) {
        this(wString.toString(), WIDE_STRING);
    }

    public NativeString(String str) {
        this(str, Native.getDefaultStringEncoding());
    }
}
