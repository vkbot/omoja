package p102j4;

import com.bumptech.glide.AbstractC1030c;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlin.UByte;
import kotlin.UShort;
import org.apache.commons.p161io.FileUtils;
import p016b1.AbstractC0880u;

/* JADX INFO: renamed from: j4.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1975n implements Map, Serializable {

    /* JADX INFO: renamed from: h */
    public static final C1975n f5374h = new C1975n(new Object[0], 0, null);

    /* JADX INFO: renamed from: b */
    public transient C1972k f5375b;

    /* JADX INFO: renamed from: c */
    public transient C1973l f5376c;

    /* JADX INFO: renamed from: d */
    public transient C1974m f5377d;

    /* JADX INFO: renamed from: e */
    public final transient Object f5378e;

    /* JADX INFO: renamed from: f */
    public final transient Object[] f5379f;

    /* JADX INFO: renamed from: g */
    public final transient int f5380g;

    public C1975n(Object[] objArr, int i10, Object obj) {
        this.f5378e = obj;
        this.f5379f = objArr;
        this.f5380g = i10;
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [short[], byte[]], vars: [r5v4 ??, r5v9 ??, r5v5 ??, r5v13 ??, r5v6 ??, r5v7 ??, r5v8 ??, r5v16 ??, r5v10 ??, r5v12 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.rerun(InitCodeVariables.java:36)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryToFixIncompatiblePrimitives(FixTypesVisitor.java:818)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        */
    /* JADX INFO: renamed from: a */
    public static p102j4.C1975n m3073a(java.util.HashMap r18) {
        /*
            Method dump skipped, instruction units count: 595
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p102j4.C1975n.m3073a(java.util.HashMap):j4.n");
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        C1974m c1974m = this.f5377d;
        if (c1974m == null) {
            c1974m = new C1974m(1, this.f5380g, this.f5379f);
            this.f5377d = c1974m;
        }
        return c1974m.contains(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C1972k c1972k = this.f5375b;
        if (c1972k != null) {
            return c1972k;
        }
        C1972k c1972k2 = new C1972k(this, this.f5379f, this.f5380g);
        this.f5375b = c1972k2;
        return c1972k2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return ((AbstractC1968g) entrySet()).equals(((Map) obj).entrySet());
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.f5379f;
            if (this.f5380g == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.f5378e;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iM1262s = AbstractC1030c.m1262s(obj.hashCode());
                    while (true) {
                        int i10 = iM1262s & length;
                        int i11 = bArr[i10] & UByte.MAX_VALUE;
                        if (i11 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i11])) {
                            obj2 = objArr[i11 ^ 1];
                        } else {
                            iM1262s = i10 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iM1262s2 = AbstractC1030c.m1262s(obj.hashCode());
                    while (true) {
                        int i12 = iM1262s2 & length2;
                        int i13 = sArr[i12] & UShort.MAX_VALUE;
                        if (i13 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iM1262s2 = i12 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iM1262s3 = AbstractC1030c.m1262s(obj.hashCode());
                    while (true) {
                        int i14 = iM1262s3 & length3;
                        int i15 = iArr[i14];
                        if (i15 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i15])) {
                            obj2 = objArr[i15 ^ 1];
                        } else {
                            iM1262s3 = i14 + 1;
                        }
                    }
                    obj2 = null;
                }
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        C1972k c1972k = this.f5375b;
        if (c1972k == null) {
            c1972k = new C1972k(this, this.f5379f, this.f5380g);
            this.f5375b = c1972k;
        }
        Iterator it = c1972k.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i10 = ~(~(i10 + (next != null ? next.hashCode() : 0)));
        }
        return i10;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        C1973l c1973l = this.f5376c;
        if (c1973l != null) {
            return c1973l;
        }
        C1973l c1973l2 = new C1973l(this, new C1974m(0, this.f5380g, this.f5379f));
        this.f5376c = c1973l2;
        return c1973l2;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final int size() {
        return this.f5380g;
    }

    public final String toString() {
        int i10 = this.f5380g;
        AbstractC0880u.m996c(i10, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) i10) * 8, FileUtils.ONE_GB));
        sb.append('{');
        boolean z9 = true;
        for (Map.Entry entry : (C1972k) entrySet()) {
            if (!z9) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z9 = false;
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        C1974m c1974m = this.f5377d;
        if (c1974m != null) {
            return c1974m;
        }
        C1974m c1974m2 = new C1974m(1, this.f5380g, this.f5379f);
        this.f5377d = c1974m2;
        return c1974m2;
    }
}
