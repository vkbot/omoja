package n7;

import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w0 f3984a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3985b;
    public final String c;
    public final t7.b d;
    public final t7.b e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3986f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x0(String str, t7.b bVar, t7.b bVar2) {
        new AtomicReferenceArray(2);
        this.f3984a = w0.f3981b;
        this.f3985b = str;
        int iLastIndexOf = str.lastIndexOf(47);
        this.c = iLastIndexOf == -1 ? null : str.substring(0, iLastIndexOf);
        this.d = bVar;
        this.e = bVar2;
        this.f3986f = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        o4.b.i(str, "fullServiceName");
        sb.append(str);
        sb.append("/");
        o4.b.i(str2, "methodName");
        sb.append(str2);
        return sb.toString();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final com.google.protobuf.a b(InputStream inputStream) {
        com.google.protobuf.j iVar;
        byte[] bArr;
        t7.b bVar = this.e;
        bVar.getClass();
        if ((inputStream instanceof t7.a) && ((t7.a) inputStream).c == bVar.f5416a) {
            try {
                y5.g gVar = ((t7.a) inputStream).f5415b;
                if (gVar != null) {
                    return gVar;
                }
                throw new IllegalStateException("message not available");
            } catch (IllegalStateException unused) {
            }
        }
        try {
            if (inputStream instanceof d0) {
                int iAvailable = inputStream.available();
                if (iAvailable <= 0 || iAvailable > 4194304) {
                    if (iAvailable == 0) {
                        return bVar.f5417b;
                    }
                    iVar = null;
                } else {
                    ThreadLocal threadLocal = t7.b.d;
                    Reference reference = (Reference) threadLocal.get();
                    if (reference == null || (bArr = (byte[]) reference.get()) == null || bArr.length < iAvailable) {
                        bArr = new byte[iAvailable];
                        threadLocal.set(new WeakReference(bArr));
                    }
                    int i9 = iAvailable;
                    while (i9 > 0) {
                        int i10 = inputStream.read(bArr, iAvailable - i9, i9);
                        if (i10 == -1) {
                            break;
                        }
                        i9 -= i10;
                    }
                    if (i9 != 0) {
                        throw new RuntimeException("size inaccurate: " + iAvailable + " != " + (iAvailable - i9));
                    }
                    iVar = com.google.protobuf.j.d(bArr, 0, iAvailable, false);
                }
            } else {
                iVar = null;
            }
            if (iVar == null) {
                iVar = new com.google.protobuf.i(inputStream);
            }
            int i11 = bVar.c;
            if (i11 >= 0) {
                if (i11 < 0) {
                    j1.i.k(ai.onnxruntime.a.e(i11, "Recursion limit cannot be negative: "));
                    return null;
                }
                iVar.f1518b = i11;
            }
            try {
                com.google.protobuf.y yVarA = ((com.google.protobuf.x) bVar.f5416a).a(iVar, t7.c.f5418a);
                if (!com.google.protobuf.y.h(yVarA, true)) {
                    throw new com.google.protobuf.d0(new com.google.protobuf.i1().getMessage());
                }
                iVar.a(0);
                return yVarA;
            } catch (com.google.protobuf.d0 e) {
                throw f1.f3929l.h("Invalid protobuf byte sequence").g(e).a();
            }
        } catch (IOException e6) {
            n0.b.w(e6);
            return null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3985b, "fullMethodName");
        sVarT.c(this.f3984a, "type");
        sVarT.d("idempotent", false);
        sVarT.d("safe", false);
        sVarT.d("sampledToLocalTracing", this.f3986f);
        sVarT.c(this.d, "requestMarshaller");
        sVarT.c(this.e, "responseMarshaller");
        sVarT.c(null, "schemaDescriptor");
        sVarT.f613b = true;
        return sVarT.toString();
    }
}
