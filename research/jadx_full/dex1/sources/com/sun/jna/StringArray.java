package com.sun.jna;

import ai.onnxruntime.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class StringArray extends Memory implements Function$PostCallRead {
    private String encoding;
    private List<NativeString> natives;
    private Object[] original;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private StringArray(Object[] objArr, String str) {
        super((objArr.length + 1) * Native.POINTER_SIZE);
        this.natives = new ArrayList();
        this.original = objArr;
        this.encoding = str;
        int i9 = 0;
        while (true) {
            Pointer pointer = null;
            if (i9 >= objArr.length) {
                setPointer(Native.POINTER_SIZE * objArr.length, null);
                return;
            }
            Object obj = objArr[i9];
            if (obj != null) {
                NativeString nativeString = new NativeString(obj.toString(), str);
                this.natives.add(nativeString);
                pointer = nativeString.getPointer();
            }
            setPointer(Native.POINTER_SIZE * i9, pointer);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:17:0x0035 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object[]] */
    @Override // com.sun.jna.Function$PostCallRead
    public void read() {
        ?? wString;
        String string;
        String wideString;
        boolean z8 = this.original instanceof WString[];
        boolean zEquals = "--WIDE-STRING--".equals(this.encoding);
        for (int i9 = 0; i9 < this.original.length; i9++) {
            Pointer pointer = getPointer(Native.POINTER_SIZE * i9);
            if (pointer != null) {
                if (zEquals) {
                    wideString = pointer.getWideString(0L);
                } else {
                    string = pointer.getString(0L, this.encoding);
                }
                if (z8) {
                    wString = string;
                    wString = wideString;
                    wString = new WString(wString);
                } else {
                    wString = string;
                    wString = wideString;
                }
            } else {
                wString = 0;
            }
            this.original[i9] = wString;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.sun.jna.Memory, com.sun.jna.Pointer
    public String toString() {
        StringBuilder sbU = a.u("--WIDE-STRING--".equals(this.encoding) ? "const wchar_t*[]" : "const char*[]");
        sbU.append(Arrays.asList(this.original));
        return sbU.toString();
    }

    public StringArray(String[] strArr, boolean z8) {
        this((Object[]) strArr, z8 ? "--WIDE-STRING--" : Native.getDefaultStringEncoding());
    }

    public StringArray(String[] strArr, String str) {
        this((Object[]) strArr, str);
    }

    public StringArray(WString[] wStringArr) {
        this(wStringArr, "--WIDE-STRING--");
    }

    public StringArray(String[] strArr) {
        this(strArr, false);
    }
}
