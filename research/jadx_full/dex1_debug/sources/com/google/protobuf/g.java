package com.google.protobuf;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class g implements Iterable, Serializable {
    public static final g d = new g(b0.f1474b);
    public static final e e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1503b = 0;
    public final byte[] c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        e = c.a() ? new e(1) : new e(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(byte[] bArr) {
        bArr.getClass();
        this.c = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int d(int i9, int i10, int i11) {
        int i12 = i10 - i9;
        if ((i9 | i10 | i12 | (i11 - i10)) >= 0) {
            return i12;
        }
        if (i9 < 0) {
            throw new IndexOutOfBoundsException(ai.onnxruntime.a.f(i9, "Beginning index: ", " < 0"));
        }
        if (i10 < i9) {
            throw new IndexOutOfBoundsException(ai.onnxruntime.a.g(i9, "Beginning index larger than ending index: ", ", ", i10));
        }
        throw new IndexOutOfBoundsException(ai.onnxruntime.a.g(i10, "End index: ", " >= ", i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g e(byte[] bArr, int i9, int i10) {
        byte[] bArrCopyOfRange;
        d(i9, i9 + i10, bArr.length);
        switch (e.f1492a) {
            case 0:
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i9, i10 + i9);
                break;
            default:
                bArrCopyOfRange = new byte[i10];
                System.arraycopy(bArr, i9, bArrCopyOfRange, 0, i10);
                break;
        }
        return new g(bArrCopyOfRange);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte a(int i9) {
        return this.c[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g) || size() != ((g) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof g)) {
            return obj.equals(this);
        }
        g gVar = (g) obj;
        int i9 = this.f1503b;
        int i10 = gVar.f1503b;
        if (i9 != 0 && i10 != 0 && i9 != i10) {
            return false;
        }
        int size = size();
        if (size > gVar.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > gVar.size()) {
            StringBuilder sbQ = ai.onnxruntime.a.q(size, "Ran off end of other: 0, ", ", ");
            sbQ.append(gVar.size());
            throw new IllegalArgumentException(sbQ.toString());
        }
        byte[] bArr = gVar.c;
        int iF = f() + size;
        int iF2 = f();
        int iF3 = gVar.f();
        while (iF2 < iF) {
            if (this.c[iF2] != bArr[iF3]) {
                return false;
            }
            iF2++;
            iF3++;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int f() {
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte g(int i9) {
        return this.c[i9];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int i9 = this.f1503b;
        if (i9 != 0) {
            return i9;
        }
        int size = size();
        int iF = f();
        int i10 = size;
        for (int i11 = iF; i11 < iF + size; i11++) {
            i10 = (i10 * 31) + this.c[i11];
        }
        if (i10 == 0) {
            i10 = 1;
        }
        this.f1503b = i10;
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new d(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.c.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            strConcat = t1.c(this);
        } else {
            int iD = d(0, 47, size());
            strConcat = t1.c(iD == 0 ? d : new f(this.c, f(), iD)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(size);
        sb.append(" contents=\"");
        return ai.onnxruntime.a.p(sb, strConcat, "\">");
    }
}
