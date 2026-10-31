package t5;

import j1.i;
import java.io.IOException;
import java.io.Serializable;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends a.a {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b C(w5.a aVar, int i9) {
        int iC = com.bumptech.glide.g.c(i9);
        if (iC == 5) {
            return new f(aVar.n0());
        }
        if (iC == 6) {
            return new f(new u5.a(aVar.n0()));
        }
        if (iC == 7) {
            return new f(Boolean.valueOf(aVar.i0()));
        }
        if (iC == 8) {
            aVar.l0();
            return d.f5410b;
        }
        i.l("Unexpected token: ".concat(kotlin.collections.unsigned.a.j(i9)));
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void D(w5.b bVar, b bVar2) throws IOException {
        StringWriter stringWriter = bVar.f5924b;
        if (bVar2 == null || (bVar2 instanceof d)) {
            bVar.y();
            return;
        }
        boolean z8 = bVar2 instanceof f;
        if (z8) {
            if (!z8) {
                ai.onnxruntime.b.q(bVar2, "Not a JSON Primitive: ");
                return;
            }
            f fVar = (f) bVar2;
            Serializable serializable = fVar.f5412b;
            if (!(serializable instanceof Number)) {
                if (serializable instanceof Boolean) {
                    boolean zBooleanValue = ((Boolean) serializable).booleanValue();
                    bVar.c0();
                    bVar.b();
                    stringWriter.write(zBooleanValue ? "true" : "false");
                    return;
                }
                String strG = fVar.g();
                if (strG == null) {
                    bVar.y();
                    return;
                }
                bVar.c0();
                bVar.b();
                bVar.V(strG);
                return;
            }
            Number numberH = fVar.h();
            bVar.c0();
            String string = numberH.toString();
            if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
                Class<?> cls = numberH.getClass();
                if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !w5.b.f5922i.matcher(string).matches()) {
                    androidx.navigation.b.v("String created by ", cls, " is not a valid JSON number: ", string);
                    return;
                }
            } else if (!bVar.f5925f) {
                i.k("Numeric values must be finite, but was ".concat(string));
                return;
            }
            bVar.b();
            stringWriter.append((CharSequence) string);
            return;
        }
        if (bVar2 instanceof a) {
            bVar.c0();
            bVar.b();
            int i9 = bVar.d;
            int[] iArr = bVar.c;
            if (i9 == iArr.length) {
                bVar.c = Arrays.copyOf(iArr, i9 * 2);
            }
            int[] iArr2 = bVar.c;
            int i10 = bVar.d;
            bVar.d = i10 + 1;
            iArr2[i10] = 1;
            stringWriter.write(91);
            ArrayList arrayList = bVar2.e().f5409b;
            int size = arrayList.size();
            int i11 = 0;
            while (i11 < size) {
                Object obj = arrayList.get(i11);
                i11++;
                D(bVar, (b) obj);
            }
            bVar.c(1, 2, ']');
            return;
        }
        if (!(bVar2 instanceof e)) {
            androidx.navigation.b.o(bVar2.getClass(), "Couldn't write ");
            return;
        }
        bVar.c0();
        bVar.b();
        int i12 = bVar.d;
        int[] iArr3 = bVar.c;
        if (i12 == iArr3.length) {
            bVar.c = Arrays.copyOf(iArr3, i12 * 2);
        }
        int[] iArr4 = bVar.c;
        int i13 = bVar.d;
        bVar.d = i13 + 1;
        iArr4[i13] = 3;
        stringWriter.write(123);
        Iterator it = ((u5.c) bVar2.f().f5411b.entrySet()).iterator();
        while (((u5.b) it).hasNext()) {
            u5.d dVarB = ((u5.b) it).b();
            String str = (String) dVarB.getKey();
            Objects.requireNonNull(str, "name == null");
            if (bVar.f5926g != null) {
                throw new IllegalStateException();
            }
            if (bVar.d == 0) {
                i.l("JsonWriter is closed.");
                return;
            } else {
                bVar.f5926g = str;
                D(bVar, (b) dVarB.getValue());
            }
        }
        bVar.c(3, 5, '}');
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Object B(w5.a aVar) {
        b aVar2;
        b aVar3;
        int iP0 = aVar.p0();
        int iC = com.bumptech.glide.g.c(iP0);
        if (iC == 0) {
            aVar.b();
            aVar2 = new a();
        } else if (iC != 2) {
            aVar2 = null;
        } else {
            aVar.c();
            aVar2 = new e();
        }
        if (aVar2 == null) {
            return C(aVar, iP0);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (aVar.f0()) {
                String strJ0 = aVar2 instanceof e ? aVar.j0() : null;
                int iP1 = aVar.p0();
                int iC2 = com.bumptech.glide.g.c(iP1);
                if (iC2 == 0) {
                    aVar.b();
                    aVar3 = new a();
                } else if (iC2 != 2) {
                    aVar3 = null;
                } else {
                    aVar.c();
                    aVar3 = new e();
                }
                boolean z8 = aVar3 != null;
                if (aVar3 == null) {
                    aVar3 = C(aVar, iP1);
                }
                if (aVar2 instanceof a) {
                    ((a) aVar2).f5409b.add(aVar3);
                } else {
                    ((e) aVar2).h(strJ0, aVar3);
                }
                if (z8) {
                    arrayDeque.addLast(aVar2);
                    aVar2 = aVar3;
                }
            } else {
                if (aVar2 instanceof a) {
                    aVar.V();
                } else {
                    aVar.c0();
                }
                if (arrayDeque.isEmpty()) {
                    return aVar2;
                }
                aVar2 = (b) arrayDeque.removeLast();
            }
        }
    }
}
