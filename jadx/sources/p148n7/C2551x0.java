package p148n7;

import ai.onnxruntime.AbstractC0074a;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import com.google.protobuf.AbstractC1128a;
import com.google.protobuf.AbstractC1157j;
import com.google.protobuf.AbstractC1202y;
import com.google.protobuf.C1140d0;
import com.google.protobuf.C1154i;
import com.google.protobuf.C1156i1;
import com.google.protobuf.C1199x;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p099j1.C1929i;
import p142n0.C2467b;
import p155o4.AbstractC2587b;
import p203t7.AbstractC3267c;
import p203t7.C3265a;
import p203t7.C3266b;
import p250y5.C3652g;

/* JADX INFO: renamed from: n7.x0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2551x0 {

    /* JADX INFO: renamed from: a */
    public final EnumC2549w0 f7054a;

    /* JADX INFO: renamed from: b */
    public final String f7055b;

    /* JADX INFO: renamed from: c */
    public final String f7056c;

    /* JADX INFO: renamed from: d */
    public final C3266b f7057d;

    /* JADX INFO: renamed from: e */
    public final C3266b f7058e;

    /* JADX INFO: renamed from: f */
    public final boolean f7059f;

    public C2551x0(String str, C3266b c3266b, C3266b c3266b2) {
        new AtomicReferenceArray(2);
        this.f7054a = EnumC2549w0.f7046b;
        this.f7055b = str;
        int iLastIndexOf = str.lastIndexOf(47);
        this.f7056c = iLastIndexOf == -1 ? null : str.substring(0, iLastIndexOf);
        this.f7057d = c3266b;
        this.f7058e = c3266b2;
        this.f7059f = true;
    }

    /* JADX INFO: renamed from: a */
    public static String m3992a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        AbstractC2587b.m4042i(str, "fullServiceName");
        sb.append(str);
        sb.append("/");
        AbstractC2587b.m4042i(str2, "methodName");
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: renamed from: b */
    public final AbstractC1128a m3993b(InputStream inputStream) {
        AbstractC1157j c1154i;
        byte[] bArr;
        C3266b c3266b = this.f7058e;
        c3266b.getClass();
        if ((inputStream instanceof C3265a) && ((C3265a) inputStream).f9556c == c3266b.f9559a) {
            try {
                C3652g c3652g = ((C3265a) inputStream).f9555b;
                if (c3652g != null) {
                    return c3652g;
                }
                throw new IllegalStateException("message not available");
            } catch (IllegalStateException unused) {
            }
        }
        try {
            if (inputStream instanceof InterfaceC2501d0) {
                int iAvailable = inputStream.available();
                if (iAvailable <= 0 || iAvailable > 4194304) {
                    if (iAvailable == 0) {
                        return c3266b.f9560b;
                    }
                    c1154i = null;
                } else {
                    ThreadLocal threadLocal = C3266b.f9558d;
                    Reference reference = (Reference) threadLocal.get();
                    if (reference == null || (bArr = (byte[]) reference.get()) == null || bArr.length < iAvailable) {
                        bArr = new byte[iAvailable];
                        threadLocal.set(new WeakReference(bArr));
                    }
                    int i10 = iAvailable;
                    while (i10 > 0) {
                        int i11 = inputStream.read(bArr, iAvailable - i10, i10);
                        if (i11 == -1) {
                            break;
                        }
                        i10 -= i11;
                    }
                    if (i10 != 0) {
                        throw new RuntimeException("size inaccurate: " + iAvailable + " != " + (iAvailable - i10));
                    }
                    c1154i = AbstractC1157j.m2005d(bArr, 0, iAvailable, false);
                }
            } else {
                c1154i = null;
            }
            if (c1154i == null) {
                c1154i = new C1154i(inputStream);
            }
            int i12 = c3266b.f9561c;
            if (i12 >= 0) {
                if (i12 < 0) {
                    C1929i.m3029k(AbstractC0074a.m154e(i12, "Recursion limit cannot be negative: "));
                    return null;
                }
                c1154i.f2705b = i12;
            }
            try {
                AbstractC1202y abstractC1202yM2168a = ((C1199x) c3266b.f9559a).m2168a(c1154i, AbstractC3267c.f9562a);
                if (!AbstractC1202y.m2171h(abstractC1202yM2168a, true)) {
                    throw new C1140d0(new C1156i1().getMessage());
                }
                c1154i.mo1963a(0);
                return abstractC1202yM2168a;
            } catch (C1140d0 e) {
                throw C2508f1.f6944l.m3934h("Invalid protobuf byte sequence").m3933g(e).m3930a();
            }
        } catch (IOException e6) {
            C2467b.m3833w(e6);
            return null;
        }
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7055b, "fullMethodName");
        c1073sM1263t.m1347c(this.f7054a, "type");
        c1073sM1263t.m1348d("idempotent", false);
        c1073sM1263t.m1348d("safe", false);
        c1073sM1263t.m1348d("sampledToLocalTracing", this.f7059f);
        c1073sM1263t.m1347c(this.f7057d, "requestMarshaller");
        c1073sM1263t.m1347c(this.f7058e, "responseMarshaller");
        c1073sM1263t.m1347c(null, "schemaDescriptor");
        c1073sM1263t.f1177b = true;
        return c1073sM1263t.toString();
    }
}
