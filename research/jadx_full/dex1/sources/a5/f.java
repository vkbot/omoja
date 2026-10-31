package a5;

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
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements x4.e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f41f = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final x4.c f42g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final x4.c f43h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final e f44i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public OutputStream f45a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f46b;
    public final HashMap c;
    public final x4.d d;
    public final i e = new i(this);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a aVar = new a(1);
        HashMap map = new HashMap();
        map.put(d.class, aVar);
        f42g = new x4.c("key", Collections.unmodifiableMap(new HashMap(map)));
        a aVar2 = new a(2);
        HashMap map2 = new HashMap();
        map2.put(d.class, aVar2);
        f43h = new x4.c("value", Collections.unmodifiableMap(new HashMap(map2)));
        f44i = new e(0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, x4.d dVar) {
        this.f45a = byteArrayOutputStream;
        this.f46b = map;
        this.c = map2;
        this.d = dVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int g(x4.c cVar) {
        d dVar = (d) ((Annotation) cVar.f6029b.get(d.class));
        if (dVar != null) {
            return dVar.tag();
        }
        throw new x4.b("Field has no @Protobuf config");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.e
    public final x4.e a(x4.c cVar, long j9) throws IOException {
        c(cVar, j9, true);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(x4.c cVar, int i9, boolean z8) throws IOException {
        if (z8 && i9 == 0) {
            return;
        }
        d dVar = (d) ((Annotation) cVar.f6029b.get(d.class));
        if (dVar == null) {
            throw new x4.b("Field has no @Protobuf config");
        }
        int iOrdinal = dVar.intEncoding().ordinal();
        if (iOrdinal == 0) {
            h(dVar.tag() << 3);
            h(i9);
        } else if (iOrdinal == 1) {
            h(dVar.tag() << 3);
            h((i9 << 1) ^ (i9 >> 31));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            h((dVar.tag() << 3) | 5);
            this.f45a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i9).array());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(x4.c cVar, long j9, boolean z8) throws IOException {
        if (z8 && j9 == 0) {
            return;
        }
        d dVar = (d) ((Annotation) cVar.f6029b.get(d.class));
        if (dVar == null) {
            throw new x4.b("Field has no @Protobuf config");
        }
        int iOrdinal = dVar.intEncoding().ordinal();
        if (iOrdinal == 0) {
            h(dVar.tag() << 3);
            i(j9);
        } else if (iOrdinal == 1) {
            h(dVar.tag() << 3);
            i((j9 >> 63) ^ (j9 << 1));
        } else {
            if (iOrdinal != 2) {
                return;
            }
            h((dVar.tag() << 3) | 1);
            this.f45a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j9).array());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // x4.e
    public final x4.e d(x4.c cVar, Object obj) throws IOException {
        e(cVar, obj, true);
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(x4.c cVar, Object obj, boolean z8) throws IOException {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z8 && charSequence.length() == 0) {
                return;
            }
            h((g(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f41f);
            h(bytes.length);
            this.f45a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                e(cVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                f(f44i, cVar, (Map$Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z8 && dDoubleValue == 0.0d) {
                return;
            }
            h((g(cVar) << 3) | 1);
            this.f45a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z8 && fFloatValue == 0.0f) {
                return;
            }
            h((g(cVar) << 3) | 5);
            this.f45a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            c(cVar, ((Number) obj).longValue(), z8);
            return;
        }
        if (obj instanceof Boolean) {
            b(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z8);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z8 && bArr.length == 0) {
                return;
            }
            h((g(cVar) << 3) | 2);
            h(bArr.length);
            this.f45a.write(bArr);
            return;
        }
        x4.d dVar = (x4.d) this.f46b.get(obj.getClass());
        if (dVar != null) {
            f(dVar, cVar, obj, z8);
            return;
        }
        x4.f fVar = (x4.f) this.c.get(obj.getClass());
        if (fVar != null) {
            i iVar = this.e;
            iVar.f49a = false;
            iVar.c = cVar;
            iVar.f50b = z8;
            fVar.a(obj, iVar);
            return;
        }
        if (obj instanceof g2.c) {
            b(cVar, ((g2.c) obj).f2348b, true);
        } else if (obj instanceof Enum) {
            b(cVar, ((Enum) obj).ordinal(), true);
        } else {
            f(this.d, cVar, obj, z8);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(x4.d dVar, x4.c cVar, Object obj, boolean z8) throws IOException {
        b bVar = new b();
        bVar.f38b = 0L;
        try {
            OutputStream outputStream = this.f45a;
            this.f45a = bVar;
            try {
                dVar.a(obj, this);
                this.f45a = outputStream;
                long j9 = bVar.f38b;
                bVar.close();
                if (z8 && j9 == 0) {
                    return;
                }
                h((g(cVar) << 3) | 2);
                i(j9);
                dVar.a(obj, this);
            } catch (Throwable th) {
                this.f45a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(int i9) throws IOException {
        while (true) {
            long j9 = i9 & (-128);
            OutputStream outputStream = this.f45a;
            if (j9 == 0) {
                outputStream.write(i9 & 127);
                return;
            } else {
                outputStream.write((i9 & 127) | 128);
                i9 >>>= 7;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(long j9) throws IOException {
        while (true) {
            long j10 = (-128) & j9;
            OutputStream outputStream = this.f45a;
            if (j10 == 0) {
                outputStream.write(((int) j9) & 127);
                return;
            } else {
                outputStream.write((((int) j9) & 127) | 128);
                j9 >>>= 7;
            }
        }
    }
}
