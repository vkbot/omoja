package com.google.protobuf;

import ai.onnxruntime.AbstractC0074a;
import ai.onnxruntime.C0075b;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.protobuf.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1202y extends AbstractC1128a {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, AbstractC1202y> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize;
    protected C1159j1 unknownFields;

    public AbstractC1202y() {
        this.memoizedHashCode = 0;
        this.memoizedSerializedSize = -1;
        this.unknownFields = C1159j1.f2709f;
    }

    /* JADX INFO: renamed from: f */
    public static AbstractC1202y m2169f(Class cls) {
        AbstractC1202y abstractC1202y = defaultInstanceMap.get(cls);
        if (abstractC1202y == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                abstractC1202y = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (abstractC1202y != null) {
            return abstractC1202y;
        }
        AbstractC1202y abstractC1202y2 = (AbstractC1202y) ((AbstractC1202y) AbstractC1186s1.m2107b(cls)).mo2174e(6);
        if (abstractC1202y2 == null) {
            throw new IllegalStateException();
        }
        defaultInstanceMap.put(cls, abstractC1202y2);
        return abstractC1202y2;
    }

    /* JADX INFO: renamed from: g */
    public static Object m2170g(Method method, AbstractC1202y abstractC1202y, Object... objArr) {
        try {
            return method.invoke(abstractC1202y, objArr);
        } catch (IllegalAccessException e) {
            C0075b.m190o("Couldn't use Java reflection to implement protocol message reflection.", e);
            return null;
        } catch (InvocationTargetException e6) {
            Throwable cause = e6.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            C0075b.m190o("Unexpected exception thrown by generated accessor method.", cause);
            return null;
        }
    }

    /* JADX INFO: renamed from: h */
    public static final boolean m2171h(AbstractC1202y abstractC1202y, boolean z9) {
        byte bByteValue = ((Byte) abstractC1202y.mo2174e(1)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        C1203y0 c1203y0 = C1203y0.f2795c;
        c1203y0.getClass();
        boolean zMo1904d = c1203y0.m2179a(abstractC1202y.getClass()).mo1904d(abstractC1202y);
        if (z9) {
            abstractC1202y.mo2174e(2);
        }
        return zMo1904d;
    }

    /* JADX INFO: renamed from: l */
    public static void m2172l(Class cls, AbstractC1202y abstractC1202y) {
        abstractC1202y.m2176j();
        defaultInstanceMap.put(cls, abstractC1202y);
    }

    @Override // com.google.protobuf.AbstractC1128a
    /* JADX INFO: renamed from: a */
    public final int mo1893a(InterfaceC1134b1 interfaceC1134b1) {
        int iMo1906f;
        int iMo1906f2;
        if (m2175i()) {
            if (interfaceC1134b1 == null) {
                C1203y0 c1203y0 = C1203y0.f2795c;
                c1203y0.getClass();
                iMo1906f2 = c1203y0.m2179a(getClass()).mo1906f(this);
            } else {
                iMo1906f2 = interfaceC1134b1.mo1906f(this);
            }
            if (iMo1906f2 >= 0) {
                return iMo1906f2;
            }
            C1929i.m3030l(AbstractC0074a.m154e(iMo1906f2, "serialized size must be non-negative, was "));
            return 0;
        }
        int i10 = this.memoizedSerializedSize;
        if ((i10 & Integer.MAX_VALUE) != Integer.MAX_VALUE) {
            return i10 & Integer.MAX_VALUE;
        }
        if (interfaceC1134b1 == null) {
            C1203y0 c1203y1 = C1203y0.f2795c;
            c1203y1.getClass();
            iMo1906f = c1203y1.m2179a(getClass()).mo1906f(this);
        } else {
            iMo1906f = interfaceC1134b1.mo1906f(this);
        }
        m2178m(iMo1906f);
        return iMo1906f;
    }

    @Override // com.google.protobuf.AbstractC1128a
    /* JADX INFO: renamed from: c */
    public final void mo1895c(AbstractC1169n abstractC1169n) {
        C1203y0 c1203y0 = C1203y0.f2795c;
        c1203y0.getClass();
        InterfaceC1134b1 interfaceC1134b1M2179a = c1203y0.m2179a(getClass());
        C1164l0 c1164l0 = abstractC1169n.f2732a;
        if (c1164l0 == null) {
            c1164l0 = new C1164l0(abstractC1169n);
        }
        interfaceC1134b1M2179a.mo1901a(this, c1164l0);
    }

    /* JADX INFO: renamed from: d */
    public final AbstractC1196w m2173d() {
        return (AbstractC1196w) mo2174e(5);
    }

    /* JADX INFO: renamed from: e */
    public abstract Object mo2174e(int i10);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1203y0 c1203y0 = C1203y0.f2795c;
        c1203y0.getClass();
        return c1203y0.m2179a(getClass()).mo1907g(this, (AbstractC1202y) obj);
    }

    public final int hashCode() {
        if (m2175i()) {
            C1203y0 c1203y0 = C1203y0.f2795c;
            c1203y0.getClass();
            return c1203y0.m2179a(getClass()).mo1905e(this);
        }
        if (this.memoizedHashCode == 0) {
            C1203y0 c1203y1 = C1203y0.f2795c;
            c1203y1.getClass();
            this.memoizedHashCode = c1203y1.m2179a(getClass()).mo1905e(this);
        }
        return this.memoizedHashCode;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m2175i() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    /* JADX INFO: renamed from: j */
    public final void m2176j() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    /* JADX INFO: renamed from: k */
    public final AbstractC1202y m2177k() {
        return (AbstractC1202y) mo2174e(4);
    }

    /* JADX INFO: renamed from: m */
    public final void m2178m(int i10) {
        if (i10 < 0) {
            C1929i.m3030l(AbstractC0074a.m154e(i10, "serialized size must be non-negative, was "));
        } else {
            this.memoizedSerializedSize = (i10 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        }
    }

    public final String toString() {
        String string = super.toString();
        char[] cArr = AbstractC1185s0.f2748a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        AbstractC1185s0.m2105c(this, sb, 0);
        return sb.toString();
    }
}
