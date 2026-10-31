package com.google.protobuf;

import ai.onnxruntime.AbstractC0074a;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: renamed from: com.google.protobuf.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class C1148g implements Iterable, Serializable {

    /* JADX INFO: renamed from: d */
    public static final C1148g f2677d = new C1148g(AbstractC1133b0.f2635b);

    /* JADX INFO: renamed from: e */
    public static final C1142e f2678e;

    /* JADX INFO: renamed from: b */
    public int f2679b = 0;

    /* JADX INFO: renamed from: c */
    public final byte[] f2680c;

    static {
        f2678e = AbstractC1136c.m1910a() ? new C1142e(1) : new C1142e(0);
    }

    public C1148g(byte[] bArr) {
        bArr.getClass();
        this.f2680c = bArr;
    }

    /* JADX INFO: renamed from: d */
    public static int m1955d(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException(AbstractC0074a.m155f(i10, "Beginning index: ", " < 0"));
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException(AbstractC0074a.m156g(i10, "Beginning index larger than ending index: ", ", ", i11));
        }
        throw new IndexOutOfBoundsException(AbstractC0074a.m156g(i11, "End index: ", " >= ", i12));
    }

    /* JADX INFO: renamed from: e */
    public static C1148g m1956e(byte[] bArr, int i10, int i11) {
        byte[] bArrCopyOfRange;
        m1955d(i10, i10 + i11, bArr.length);
        switch (f2678e.f2662a) {
            case 0:
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i10, i11 + i10);
                break;
            default:
                bArrCopyOfRange = new byte[i11];
                System.arraycopy(bArr, i10, bArrCopyOfRange, 0, i11);
                break;
        }
        return new C1148g(bArrCopyOfRange);
    }

    /* JADX INFO: renamed from: a */
    public byte mo1948a(int i10) {
        return this.f2680c[i10];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1148g) || size() != ((C1148g) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof C1148g)) {
            return obj.equals(this);
        }
        C1148g c1148g = (C1148g) obj;
        int i10 = this.f2679b;
        int i11 = c1148g.f2679b;
        if (i10 != 0 && i11 != 0 && i10 != i11) {
            return false;
        }
        int size = size();
        if (size > c1148g.size()) {
            throw new IllegalArgumentException("Length too large: " + size + size());
        }
        if (size > c1148g.size()) {
            StringBuilder sbM166q = AbstractC0074a.m166q(size, "Ran off end of other: 0, ", ", ");
            sbM166q.append(c1148g.size());
            throw new IllegalArgumentException(sbM166q.toString());
        }
        byte[] bArr = c1148g.f2680c;
        int iMo1949f = mo1949f() + size;
        int iMo1949f2 = mo1949f();
        int iMo1949f3 = c1148g.mo1949f();
        while (iMo1949f2 < iMo1949f) {
            if (this.f2680c[iMo1949f2] != bArr[iMo1949f3]) {
                return false;
            }
            iMo1949f2++;
            iMo1949f3++;
        }
        return true;
    }

    /* JADX INFO: renamed from: f */
    public int mo1949f() {
        return 0;
    }

    /* JADX INFO: renamed from: g */
    public byte mo1950g(int i10) {
        return this.f2680c[i10];
    }

    public final int hashCode() {
        int i10 = this.f2679b;
        if (i10 != 0) {
            return i10;
        }
        int size = size();
        int iMo1949f = mo1949f();
        int i11 = size;
        for (int i12 = iMo1949f; i12 < iMo1949f + size; i12++) {
            i11 = (i11 * 31) + this.f2680c[i12];
        }
        if (i11 == 0) {
            i11 = 1;
        }
        this.f2679b = i11;
        return i11;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C1139d(this);
    }

    public int size() {
        return this.f2680c.length;
    }

    public final String toString() {
        String strConcat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        int size = size();
        if (size() <= 50) {
            strConcat = C1189t1.m2154c(this);
        } else {
            int iM1955d = m1955d(0, 47, size());
            strConcat = C1189t1.m2154c(iM1955d == 0 ? f2677d : new C1145f(this.f2680c, mo1949f(), iM1955d)).concat("...");
        }
        StringBuilder sb = new StringBuilder("<ByteString@");
        sb.append(hexString);
        sb.append(" size=");
        sb.append(size);
        sb.append(" contents=\"");
        return AbstractC0074a.m165p(sb, strConcat, "\">");
    }
}
