package com.sun.jna;

import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class NativeString implements CharSequence, Comparable {
    static final String WIDE_STRING = "--WIDE-STRING--";
    private String encoding;
    private Pointer pointer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public NativeString(String str, String str2) {
        if (str == null) {
            b.n("String must not be null");
            throw null;
        }
        this.encoding = str2;
        if (WIDE_STRING.equals(str2)) {
            NativeString$StringMemory nativeString$StringMemory = new NativeString$StringMemory(this, (str.length() + 1) * Native.WCHAR_SIZE);
            this.pointer = nativeString$StringMemory;
            nativeString$StringMemory.setWideString(0L, str);
        } else {
            byte[] bytes = Native.getBytes(str, str2);
            NativeString$StringMemory nativeString$StringMemory2 = new NativeString$StringMemory(this, bytes.length + 1);
            this.pointer = nativeString$StringMemory2;
            nativeString$StringMemory2.write(0L, bytes, 0, bytes.length);
            this.pointer.setByte(bytes.length, (byte) 0);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public char charAt(int i9) {
        return toString().charAt(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj == null) {
            return 1;
        }
        return toString().compareTo(obj.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        return (obj instanceof CharSequence) && compareTo(obj) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Pointer getPointer() {
        return this.pointer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return toString().hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public int length() {
        return toString().length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i9, int i10) {
        return toString().subSequence(i9, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.CharSequence
    public String toString() {
        boolean zEquals = WIDE_STRING.equals(this.encoding);
        Pointer pointer = this.pointer;
        return zEquals ? pointer.getWideString(0L) : pointer.getString(0L, this.encoding);
    }

    public NativeString(String str, boolean z8) {
        this(str, z8 ? WIDE_STRING : Native.getDefaultStringEncoding());
    }

    public NativeString(WString wString) {
        this(wString.toString(), WIDE_STRING);
    }

    public NativeString(String str) {
        this(str, Native.getDefaultStringEncoding());
    }
}
