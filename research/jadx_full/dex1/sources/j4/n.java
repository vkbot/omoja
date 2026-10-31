package j4;

import b1.u;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Objects;
import java.util.Set;
import kotlin.UByte;
import kotlin.UShort;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n implements Map, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n f3057h = new n(new Object[0], 0, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient k f3058b;
    public transient l c;
    public transient m d;
    public final transient Object e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final transient Object[] f3059f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final transient int f3060g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public n(Object[] objArr, int i9, Object obj) {
        this.e = obj;
        this.f3059f = objArr;
        this.f3060g = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public static j4.n a(java.util.HashMap r18) {
        /*
            java.util.Set r0 = r18.entrySet()
            if (r0 == 0) goto Lb
            int r1 = r0.size()
            goto Lc
        Lb:
            r1 = 4
        Lc:
            r2 = 2
            int r1 = r1 * r2
            java.lang.Object[] r3 = new java.lang.Object[r1]
            if (r0 == 0) goto L21
            int r4 = r0.size()
            int r4 = r4 * r2
            if (r4 <= r1) goto L21
            int r1 = j4.b.b(r1, r4)
            java.lang.Object[] r3 = java.util.Arrays.copyOf(r3, r1)
        L21:
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r4 = r1
        L27:
            boolean r5 = r0.hasNext()
            r6 = 1
            if (r5 == 0) goto L86
            java.lang.Object r5 = r0.next()
            java.util.Map$Entry r5 = (java.util.Map$Entry) r5
            java.lang.Object r7 = r5.getKey()
            java.lang.Object r5 = r5.getValue()
            int r8 = r4 + 1
            int r9 = r8 * 2
            int r10 = r3.length
            if (r9 <= r10) goto L4c
            int r10 = r3.length
            int r9 = j4.b.b(r10, r9)
            java.lang.Object[] r3 = java.util.Arrays.copyOf(r3, r9)
        L4c:
            if (r7 == 0) goto L72
            if (r5 == 0) goto L59
            int r4 = r4 * 2
            r3[r4] = r7
            int r4 = r4 + r6
            r3[r4] = r5
            r4 = r8
            goto L27
        L59:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "null value in entry: "
            r1.<init>(r2)
            r1.append(r7)
            java.lang.String r2 = "=null"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L72:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "null key in entry: null="
            r1.<init>(r2)
            r1.append(r5)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L86:
            r0 = 0
            if (r4 != 0) goto L8d
            j4.n r1 = j4.n.f3057h
            goto L22b
        L8d:
            if (r4 != r6) goto La0
            r1 = r3[r1]
            java.util.Objects.requireNonNull(r1)
            r1 = r3[r6]
            java.util.Objects.requireNonNull(r1)
            j4.n r1 = new j4.n
            r1.<init>(r3, r6, r0)
            goto L22b
        La0:
            int r5 = r3.length
            int r5 = r5 >> r6
            o4.b.j(r4, r5)
            int r5 = j4.g.i(r4)
            if (r4 != r6) goto Lbc
            r5 = r3[r1]
            java.util.Objects.requireNonNull(r5)
            r5 = r3[r6]
            java.util.Objects.requireNonNull(r5)
            r5 = r0
            r16 = r1
        Lb8:
            r17 = r2
            goto L208
        Lbc:
            int r7 = r5 + (-1)
            r8 = 128(0x80, float:1.794E-43)
            r9 = 3
            r10 = -1
            if (r5 > r8) goto L132
            byte[] r5 = new byte[r5]
            java.util.Arrays.fill(r5, r10)
            r11 = r0
            r8 = r1
            r10 = r8
        Lcc:
            if (r8 >= r4) goto L11f
            int r12 = r8 * 2
            int r13 = r10 * 2
            r14 = r3[r12]
            java.util.Objects.requireNonNull(r14)
            r12 = r12 ^ r6
            r12 = r3[r12]
            java.util.Objects.requireNonNull(r12)
            int r15 = r14.hashCode()
            int r15 = com.bumptech.glide.c.s(r15)
        Le5:
            r15 = r15 & r7
            r0 = r5[r15]
            r16 = r1
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            if (r0 != r1) goto Lfd
            byte r0 = (byte) r13
            r5[r15] = r0
            if (r10 >= r8) goto Lfa
            r3[r13] = r14
            r0 = r13 ^ 1
            r3[r0] = r12
        Lfa:
            int r10 = r10 + 1
            goto L113
        Lfd:
            r1 = r3[r0]
            boolean r1 = r14.equals(r1)
            if (r1 == 0) goto L119
            j4.f r11 = new j4.f
            r0 = r0 ^ 1
            r1 = r3[r0]
            java.util.Objects.requireNonNull(r1)
            r11.<init>(r14, r12, r1)
            r3[r0] = r12
        L113:
            int r8 = r8 + 1
            r1 = r16
            r0 = 0
            goto Lcc
        L119:
            int r15 = r15 + 1
            r1 = r16
            r0 = 0
            goto Le5
        L11f:
            r16 = r1
            if (r10 != r4) goto L124
        L123:
            goto Lb8
        L124:
            java.lang.Object[] r0 = new java.lang.Object[r9]
            r0[r16] = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r10)
            r0[r6] = r1
            r0[r2] = r11
        L130:
            r5 = r0
            goto Lb8
        L132:
            r16 = r1
            r0 = 32768(0x8000, float:4.5918E-41)
            if (r5 > r0) goto L19e
            short[] r5 = new short[r5]
            java.util.Arrays.fill(r5, r10)
            r0 = r16
            r1 = r0
            r8 = 0
        L142:
            if (r0 >= r4) goto L18e
            int r10 = r0 * 2
            int r11 = r1 * 2
            r12 = r3[r10]
            java.util.Objects.requireNonNull(r12)
            r10 = r10 ^ r6
            r10 = r3[r10]
            java.util.Objects.requireNonNull(r10)
            int r13 = r12.hashCode()
            int r13 = com.bumptech.glide.c.s(r13)
        L15b:
            r13 = r13 & r7
            short r14 = r5[r13]
            r15 = 65535(0xffff, float:9.1834E-41)
            r14 = r14 & r15
            if (r14 != r15) goto L172
            short r14 = (short) r11
            r5[r13] = r14
            if (r1 >= r0) goto L16f
            r3[r11] = r12
            r11 = r11 ^ 1
            r3[r11] = r10
        L16f:
            int r1 = r1 + 1
            goto L188
        L172:
            r15 = r3[r14]
            boolean r15 = r12.equals(r15)
            if (r15 == 0) goto L18b
            j4.f r8 = new j4.f
            r11 = r14 ^ 1
            r13 = r3[r11]
            java.util.Objects.requireNonNull(r13)
            r8.<init>(r12, r10, r13)
            r3[r11] = r10
        L188:
            int r0 = r0 + 1
            goto L142
        L18b:
            int r13 = r13 + 1
            goto L15b
        L18e:
            if (r1 != r4) goto L191
            goto L123
        L191:
            java.lang.Object[] r0 = new java.lang.Object[r9]
            r0[r16] = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0[r6] = r1
            r0[r2] = r8
            goto L130
        L19e:
            int[] r5 = new int[r5]
            java.util.Arrays.fill(r5, r10)
            r0 = r16
            r1 = r0
            r8 = 0
        L1a7:
            if (r0 >= r4) goto L1f6
            int r11 = r0 * 2
            int r12 = r1 * 2
            r13 = r3[r11]
            java.util.Objects.requireNonNull(r13)
            r11 = r11 ^ r6
            r11 = r3[r11]
            java.util.Objects.requireNonNull(r11)
            int r14 = r13.hashCode()
            int r14 = com.bumptech.glide.c.s(r14)
        L1c0:
            r14 = r14 & r7
            r15 = r5[r14]
            if (r15 != r10) goto L1d4
            r5[r14] = r12
            if (r1 >= r0) goto L1cf
            r3[r12] = r13
            r12 = r12 ^ 1
            r3[r12] = r11
        L1cf:
            int r1 = r1 + 1
            r17 = r2
            goto L1ec
        L1d4:
            r17 = r2
            r2 = r3[r15]
            boolean r2 = r13.equals(r2)
            if (r2 == 0) goto L1f1
            j4.f r8 = new j4.f
            r2 = r15 ^ 1
            r12 = r3[r2]
            java.util.Objects.requireNonNull(r12)
            r8.<init>(r13, r11, r12)
            r3[r2] = r11
        L1ec:
            int r0 = r0 + 1
            r2 = r17
            goto L1a7
        L1f1:
            int r14 = r14 + 1
            r2 = r17
            goto L1c0
        L1f6:
            r17 = r2
            if (r1 != r4) goto L1fb
            goto L208
        L1fb:
            java.lang.Object[] r0 = new java.lang.Object[r9]
            r0[r16] = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0[r6] = r1
            r0[r17] = r8
            r5 = r0
        L208:
            boolean r0 = r5 instanceof java.lang.Object[]
            if (r0 == 0) goto L225
            java.lang.Object[] r5 = (java.lang.Object[]) r5
            r0 = r5[r17]
            j4.f r0 = (j4.f) r0
            r1 = r5[r16]
            r2 = r5[r6]
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r4 = r2.intValue()
            int r2 = r4 * 2
            java.lang.Object[] r3 = java.util.Arrays.copyOf(r3, r2)
            r5 = r1
            goto L226
        L225:
            r0 = 0
        L226:
            j4.n r1 = new j4.n
            r1.<init>(r3, r4, r5)
        L22b:
            if (r0 != 0) goto L22e
            return r1
        L22e:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Multiple entries with same key: "
            r1.<init>(r2)
            java.lang.Object r2 = r0.f3049a
            r1.append(r2)
            java.lang.String r3 = "="
            r1.append(r3)
            java.lang.Object r4 = r0.f3050b
            r1.append(r4)
            java.lang.String r4 = " and "
            r1.append(r4)
            r1.append(r2)
            java.lang.Object r0 = r0.c
            androidx.navigation.b.s(r1, r3, r0)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j4.n.a(java.util.HashMap):j4.n");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        m mVar = this.d;
        if (mVar == null) {
            mVar = new m(1, this.f3060g, this.f3059f);
            this.d = mVar;
        }
        return mVar.contains(obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final Set entrySet() {
        k kVar = this.f3058b;
        if (kVar != null) {
            return kVar;
        }
        k kVar2 = new k(this, this.f3059f, this.f3060g);
        this.f3058b = kVar2;
        return kVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return ((g) entrySet()).equals(((Map) obj).entrySet());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.f3059f;
            if (this.f3060g == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.e;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iS = com.bumptech.glide.c.s(obj.hashCode());
                    while (true) {
                        int i9 = iS & length;
                        int i10 = bArr[i9] & UByte.MAX_VALUE;
                        if (i10 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i10])) {
                            obj2 = objArr[i10 ^ 1];
                        } else {
                            iS = i9 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iS2 = com.bumptech.glide.c.s(obj.hashCode());
                    while (true) {
                        int i11 = iS2 & length2;
                        int i12 = sArr[i11] & UShort.MAX_VALUE;
                        if (i12 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[i12])) {
                            obj2 = objArr[i12 ^ 1];
                        } else {
                            iS2 = i11 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iS3 = com.bumptech.glide.c.s(obj.hashCode());
                    while (true) {
                        int i13 = iS3 & length3;
                        int i14 = iArr[i13];
                        if (i14 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i14])) {
                            obj2 = objArr[i14 ^ 1];
                        } else {
                            iS3 = i13 + 1;
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final int hashCode() {
        k kVar = this.f3058b;
        if (kVar == null) {
            kVar = new k(this, this.f3059f, this.f3060g);
            this.f3058b = kVar;
        }
        Iterator it = kVar.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i9 = ~(~(i9 + (next != null ? next.hashCode() : 0)));
        }
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final Set keySet() {
        l lVar = this.c;
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l(this, new m(0, this.f3060g, this.f3059f));
        this.c = lVar2;
        return lVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final int size() {
        return this.f3060g;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        int i9 = this.f3060g;
        u.c(i9, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) i9) * 8, 1073741824L));
        sb.append('{');
        boolean z8 = true;
        for (Map$Entry map$Entry : (k) entrySet()) {
            if (!z8) {
                sb.append(", ");
            }
            sb.append(map$Entry.getKey());
            sb.append('=');
            sb.append(map$Entry.getValue());
            z8 = false;
        }
        sb.append('}');
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Map
    public final Collection values() {
        m mVar = this.d;
        if (mVar != null) {
            return mVar;
        }
        m mVar2 = new m(1, this.f3060g, this.f3059f);
        this.d = mVar2;
        return mVar2;
    }
}
