package p006a5;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p069g2.EnumC1607c;
import p239x4.C3569b;
import p239x4.C3570c;
import p239x4.InterfaceC3571d;
import p239x4.InterfaceC3572e;
import p239x4.InterfaceC3573f;

/* JADX INFO: renamed from: a5.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0021f implements InterfaceC3572e {

    /* JADX INFO: renamed from: f */
    public static final Charset f70f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g */
    public static final C3570c f71g;

    /* JADX INFO: renamed from: h */
    public static final C3570c f72h;

    /* JADX INFO: renamed from: i */
    public static final C0020e f73i;

    /* JADX INFO: renamed from: a */
    public OutputStream f74a;

    /* JADX INFO: renamed from: b */
    public final HashMap f75b;

    /* JADX INFO: renamed from: c */
    public final HashMap f76c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC3571d f77d;

    /* JADX INFO: renamed from: e */
    public final C0024i f78e = new C0024i(this);

    static {
        C0016a c0016a = new C0016a(1);
        HashMap map = new HashMap();
        map.put(InterfaceC0019d.class, c0016a);
        f71g = new C3570c("key", Collections.unmodifiableMap(new HashMap(map)));
        C0016a c0016a2 = new C0016a(2);
        HashMap map2 = new HashMap();
        map2.put(InterfaceC0019d.class, c0016a2);
        f72h = new C3570c("value", Collections.unmodifiableMap(new HashMap(map2)));
        f73i = new C0020e(0);
    }

    public C0021f(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, InterfaceC3571d interfaceC3571d) {
        this.f74a = byteArrayOutputStream;
        this.f75b = map;
        this.f76c = map2;
        this.f77d = interfaceC3571d;
    }

    /* JADX INFO: renamed from: g */
    public static int m54g(C3570c c3570c) {
        InterfaceC0019d interfaceC0019d = (InterfaceC0019d) ((Annotation) c3570c.f10633b.get(InterfaceC0019d.class));
        if (interfaceC0019d != null) {
            return interfaceC0019d.tag();
        }
        throw new C3569b("Field has no @Protobuf config");
    }

    @Override // p239x4.InterfaceC3572e
    /* JADX INFO: renamed from: a */
    public final InterfaceC3572e mo55a(C3570c c3570c, long j10) throws IOException {
        m57c(c3570c, j10, true);
        return this;
    }

    /* JADX INFO: renamed from: b */
    public final void m56b(C3570c c3570c, int i10, boolean z9) {
        if (z9 && i10 == 0) {
            return;
        }
        InterfaceC0019d interfaceC0019d = (InterfaceC0019d) ((Annotation) c3570c.f10633b.get(InterfaceC0019d.class));
        if (interfaceC0019d == null) {
            throw new C3569b("Field has no @Protobuf config");
        }
        int iOrdinal = interfaceC0019d.intEncoding().ordinal();
        if (iOrdinal == 0) {
            m61h(interfaceC0019d.tag() << 3);
            m61h(i10);
        } else if (iOrdinal == 1) {
            m61h(interfaceC0019d.tag() << 3);
            m61h((i10 << 1) ^ (i10 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            m61h((interfaceC0019d.tag() << 3) | 5);
            this.f74a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i10).array());
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m57c(C3570c c3570c, long j10, boolean z9) throws IOException {
        if (z9 && j10 == 0) {
            return;
        }
        InterfaceC0019d interfaceC0019d = (InterfaceC0019d) ((Annotation) c3570c.f10633b.get(InterfaceC0019d.class));
        if (interfaceC0019d == null) {
            throw new C3569b("Field has no @Protobuf config");
        }
        int iOrdinal = interfaceC0019d.intEncoding().ordinal();
        if (iOrdinal == 0) {
            m61h(interfaceC0019d.tag() << 3);
            m62i(j10);
        } else if (iOrdinal == 1) {
            m61h(interfaceC0019d.tag() << 3);
            m62i((j10 >> 63) ^ (j10 << 1));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            m61h((interfaceC0019d.tag() << 3) | 1);
            this.f74a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j10).array());
        }
    }

    @Override // p239x4.InterfaceC3572e
    /* JADX INFO: renamed from: d */
    public final InterfaceC3572e mo58d(C3570c c3570c, Object obj) {
        m59e(c3570c, obj, true);
        return this;
    }

    /* JADX INFO: renamed from: e */
    public final void m59e(C3570c c3570c, Object obj, boolean z9) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z9 && charSequence.length() == 0) {
                return;
            }
            m61h((m54g(c3570c) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f70f);
            m61h(bytes.length);
            this.f74a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                m59e(c3570c, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m60f(f73i, c3570c, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z9 && dDoubleValue == 0.0d) {
                return;
            }
            m61h((m54g(c3570c) << 3) | 1);
            this.f74a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z9 && fFloatValue == 0.0f) {
                return;
            }
            m61h((m54g(c3570c) << 3) | 5);
            this.f74a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            m57c(c3570c, ((Number) obj).longValue(), z9);
            return;
        }
        if (obj instanceof Boolean) {
            m56b(c3570c, ((Boolean) obj).booleanValue() ? 1 : 0, z9);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z9 && bArr.length == 0) {
                return;
            }
            m61h((m54g(c3570c) << 3) | 2);
            m61h(bArr.length);
            this.f74a.write(bArr);
            return;
        }
        InterfaceC3571d interfaceC3571d = (InterfaceC3571d) this.f75b.get(obj.getClass());
        if (interfaceC3571d != null) {
            m60f(interfaceC3571d, c3570c, obj, z9);
            return;
        }
        InterfaceC3573f interfaceC3573f = (InterfaceC3573f) this.f76c.get(obj.getClass());
        if (interfaceC3573f != null) {
            C0024i c0024i = this.f78e;
            c0024i.f84a = false;
            c0024i.f86c = c3570c;
            c0024i.f85b = z9;
            interfaceC3573f.mo53a(obj, c0024i);
            return;
        }
        if (obj instanceof EnumC1607c) {
            m56b(c3570c, ((EnumC1607c) obj).f4045b, true);
        } else if (obj instanceof Enum) {
            m56b(c3570c, ((Enum) obj).ordinal(), true);
        } else {
            m60f(this.f77d, c3570c, obj, z9);
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m60f(InterfaceC3571d interfaceC3571d, C3570c c3570c, Object obj, boolean z9) throws IOException {
        C0017b c0017b = new C0017b();
        c0017b.f66b = 0L;
        try {
            OutputStream outputStream = this.f74a;
            this.f74a = c0017b;
            try {
                interfaceC3571d.mo53a(obj, this);
                this.f74a = outputStream;
                long j10 = c0017b.f66b;
                c0017b.close();
                if (z9 && j10 == 0) {
                    return;
                }
                m61h((m54g(c3570c) << 3) | 2);
                m62i(j10);
                interfaceC3571d.mo53a(obj, this);
            } catch (Throwable th) {
                this.f74a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                c0017b.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m61h(int i10) throws IOException {
        while (true) {
            long j10 = i10 & (-128);
            OutputStream outputStream = this.f74a;
            if (j10 == 0) {
                outputStream.write(i10 & 127);
                return;
            } else {
                outputStream.write((i10 & 127) | 128);
                i10 >>>= 7;
            }
        }
    }

    /* JADX INFO: renamed from: i */
    public final void m62i(long j10) throws IOException {
        while (true) {
            long j11 = (-128) & j10;
            OutputStream outputStream = this.f74a;
            if (j11 == 0) {
                outputStream.write(((int) j10) & 127);
                return;
            } else {
                outputStream.write((((int) j10) & 127) | 128);
                j10 >>>= 7;
            }
        }
    }
}
