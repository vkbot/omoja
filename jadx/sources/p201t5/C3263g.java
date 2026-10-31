package p201t5;

import ai.onnxruntime.C0075b;
import androidx.navigation.C0674b;
import com.bumptech.glide.AbstractC1034g;
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
import kotlin.collections.unsigned.AbstractC2082a;
import p000a.AbstractC0000a;
import p099j1.C1929i;
import p212u5.C3298a;
import p212u5.C3299b;
import p212u5.C3300c;
import p212u5.C3301d;
import p230w5.C3526a;
import p230w5.C3527b;

/* JADX INFO: renamed from: t5.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3263g extends AbstractC0000a {
    /* JADX INFO: renamed from: C */
    public static AbstractC3258b m5203C(C3526a c3526a, int i10) {
        int iM1296c = AbstractC1034g.m1296c(i10);
        if (iM1296c == 5) {
            return new C3262f(c3526a.m5615n0());
        }
        if (iM1296c == 6) {
            return new C3262f(new C3298a(c3526a.m5615n0()));
        }
        if (iM1296c == 7) {
            return new C3262f(Boolean.valueOf(c3526a.m5610i0()));
        }
        if (iM1296c == 8) {
            c3526a.m5613l0();
            return C3260d.f9547b;
        }
        C1929i.m3030l("Unexpected token: ".concat(AbstractC2082a.m3244j(i10)));
        return null;
    }

    /* JADX INFO: renamed from: D */
    public static void m5204D(C3527b c3527b, AbstractC3258b abstractC3258b) throws IOException {
        StringWriter stringWriter = c3527b.f10474b;
        if (abstractC3258b == null || (abstractC3258b instanceof C3260d)) {
            c3527b.m5627y();
            return;
        }
        boolean z9 = abstractC3258b instanceof C3262f;
        if (z9) {
            if (!z9) {
                C0075b.m192q(abstractC3258b, "Not a JSON Primitive: ");
                return;
            }
            C3262f c3262f = (C3262f) abstractC3258b;
            Serializable serializable = c3262f.f9549b;
            if (!(serializable instanceof Number)) {
                if (serializable instanceof Boolean) {
                    boolean zBooleanValue = ((Boolean) serializable).booleanValue();
                    c3527b.m5626c0();
                    c3527b.m5624b();
                    stringWriter.write(zBooleanValue ? "true" : "false");
                    return;
                }
                String strMo5192g = c3262f.mo5192g();
                if (strMo5192g == null) {
                    c3527b.m5627y();
                    return;
                }
                c3527b.m5626c0();
                c3527b.m5624b();
                c3527b.m5623V(strMo5192g);
                return;
            }
            Number numberM5202h = c3262f.m5202h();
            c3527b.m5626c0();
            String string = numberM5202h.toString();
            if (!string.equals("-Infinity") && !string.equals("Infinity") && !string.equals("NaN")) {
                Class<?> cls = numberM5202h.getClass();
                if (cls != Integer.class && cls != Long.class && cls != Double.class && cls != Float.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class && !C3527b.f10472i.matcher(string).matches()) {
                    C0674b.m855v("String created by ", cls, " is not a valid JSON number: ", string);
                    return;
                }
            } else if (!c3527b.f10478f) {
                C1929i.m3029k("Numeric values must be finite, but was ".concat(string));
                return;
            }
            c3527b.m5624b();
            stringWriter.append((CharSequence) string);
            return;
        }
        if (abstractC3258b instanceof C3257a) {
            c3527b.m5626c0();
            c3527b.m5624b();
            int i10 = c3527b.f10476d;
            int[] iArr = c3527b.f10475c;
            if (i10 == iArr.length) {
                c3527b.f10475c = Arrays.copyOf(iArr, i10 * 2);
            }
            int[] iArr2 = c3527b.f10475c;
            int i11 = c3527b.f10476d;
            c3527b.f10476d = i11 + 1;
            iArr2[i11] = 1;
            stringWriter.write(91);
            ArrayList arrayList = abstractC3258b.m5194e().f9546b;
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                m5204D(c3527b, (AbstractC3258b) obj);
            }
            c3527b.m5625c(1, 2, ']');
            return;
        }
        if (!(abstractC3258b instanceof C3261e)) {
            C0674b.m848o(abstractC3258b.getClass(), "Couldn't write ");
            return;
        }
        c3527b.m5626c0();
        c3527b.m5624b();
        int i13 = c3527b.f10476d;
        int[] iArr3 = c3527b.f10475c;
        if (i13 == iArr3.length) {
            c3527b.f10475c = Arrays.copyOf(iArr3, i13 * 2);
        }
        int[] iArr4 = c3527b.f10475c;
        int i14 = c3527b.f10476d;
        c3527b.f10476d = i14 + 1;
        iArr4[i14] = 3;
        stringWriter.write(123);
        Iterator it = ((C3300c) abstractC3258b.m5195f().f9548b.entrySet()).iterator();
        while (((C3299b) it).hasNext()) {
            C3301d c3301dM5222b = ((C3299b) it).m5222b();
            String str = (String) c3301dM5222b.getKey();
            Objects.requireNonNull(str, "name == null");
            if (c3527b.f10479g != null) {
                throw new IllegalStateException();
            }
            if (c3527b.f10476d == 0) {
                C1929i.m3030l("JsonWriter is closed.");
                return;
            } else {
                c3527b.f10479g = str;
                m5204D(c3527b, (AbstractC3258b) c3301dM5222b.getValue());
            }
        }
        c3527b.m5625c(3, 5, '}');
    }

    /* JADX INFO: renamed from: B */
    public Object m5205B(C3526a c3526a) {
        AbstractC3258b c3257a;
        AbstractC3258b c3257a2;
        int iM5617p0 = c3526a.m5617p0();
        int iM1296c = AbstractC1034g.m1296c(iM5617p0);
        if (iM1296c == 0) {
            c3526a.m5602b();
            c3257a = new C3257a();
        } else if (iM1296c != 2) {
            c3257a = null;
        } else {
            c3526a.m5603c();
            c3257a = new C3261e();
        }
        if (c3257a == null) {
            return m5203C(c3526a, iM5617p0);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            if (c3526a.m5607f0()) {
                String strM5611j0 = c3257a instanceof C3261e ? c3526a.m5611j0() : null;
                int iM5617p1 = c3526a.m5617p0();
                int iM1296c2 = AbstractC1034g.m1296c(iM5617p1);
                if (iM1296c2 == 0) {
                    c3526a.m5602b();
                    c3257a2 = new C3257a();
                } else if (iM1296c2 != 2) {
                    c3257a2 = null;
                } else {
                    c3526a.m5603c();
                    c3257a2 = new C3261e();
                }
                boolean z9 = c3257a2 != null;
                if (c3257a2 == null) {
                    c3257a2 = m5203C(c3526a, iM5617p1);
                }
                if (c3257a instanceof C3257a) {
                    ((C3257a) c3257a).f9546b.add(c3257a2);
                } else {
                    ((C3261e) c3257a).m5196h(strM5611j0, c3257a2);
                }
                if (z9) {
                    arrayDeque.addLast(c3257a);
                    c3257a = c3257a2;
                }
            } else {
                if (c3257a instanceof C3257a) {
                    c3526a.m5601V();
                } else {
                    c3526a.m5604c0();
                }
                if (arrayDeque.isEmpty()) {
                    return c3257a;
                }
                c3257a = (AbstractC3258b) arrayDeque.removeLast();
            }
        }
    }
}
