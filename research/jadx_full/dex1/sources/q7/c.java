package q7;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class c {
    public static final c e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String[] f4897b;
    public final String[] c;
    public final boolean d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a[] aVarArr = {a.TLS_AES_128_GCM_SHA256, a.TLS_AES_256_GCM_SHA384, a.TLS_CHACHA20_POLY1305_SHA256, a.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, a.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, a.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, a.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, a.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, a.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, a.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, a.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, a.TLS_RSA_WITH_AES_128_GCM_SHA256, a.TLS_RSA_WITH_AES_256_GCM_SHA384, a.TLS_RSA_WITH_AES_128_CBC_SHA, a.TLS_RSA_WITH_AES_256_CBC_SHA, a.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        b bVar = new b(true);
        bVar.a(aVarArr);
        m mVar = m.TLS_1_3;
        m mVar2 = m.TLS_1_2;
        bVar.b(mVar, mVar2);
        bVar.d = true;
        c cVar = new c(bVar);
        e = cVar;
        m[] mVarArr = {mVar, mVar2, m.TLS_1_1, m.TLS_1_0};
        boolean z8 = cVar.f4896a;
        if (!z8) {
            j1.i.l("no TLS versions for cleartext connections");
            return;
        }
        if (mVarArr.length == 0) {
            j1.i.k("At least one TlsVersion is required");
            return;
        }
        String[] strArr = new String[mVarArr.length];
        for (int i9 = 0; i9 < mVarArr.length; i9++) {
            strArr[i9] = mVarArr[i9].f4924b;
        }
        if (z8) {
            return;
        }
        j1.i.l("no TLS extensions for cleartext connections");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public c(b bVar) {
        this.f4896a = bVar.f4894a;
        this.f4897b = bVar.f4895b;
        this.c = bVar.c;
        this.d = bVar.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        c cVar = (c) obj;
        boolean z8 = cVar.f4896a;
        boolean z9 = this.f4896a;
        if (z9 != z8) {
            return false;
        }
        if (z9) {
            return Arrays.equals(this.f4897b, cVar.f4897b) && Arrays.equals(this.c, cVar.c) && this.d == cVar.d;
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        if (this.f4896a) {
            return ((((527 + Arrays.hashCode(this.f4897b)) * 31) + Arrays.hashCode(this.c)) * 31) + (!this.d ? 1 : 0);
        }
        return 17;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        List listUnmodifiableList;
        m mVar;
        if (!this.f4896a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.f4897b;
        if (strArr == null) {
            listUnmodifiableList = null;
        } else {
            a[] aVarArr = new a[strArr.length];
            for (int i9 = 0; i9 < strArr.length; i9++) {
                String str = strArr[i9];
                aVarArr[i9] = str.startsWith("SSL_") ? a.valueOf("TLS_".concat(str.substring(4))) : a.valueOf(str);
            }
            String[] strArr2 = n.f4925a;
            listUnmodifiableList = Collections.unmodifiableList(Arrays.asList((Object[]) aVarArr.clone()));
        }
        StringBuilder sbX = ai.onnxruntime.a.x("ConnectionSpec(cipherSuites=", listUnmodifiableList == null ? "[use default]" : listUnmodifiableList.toString(), ", tlsVersions=");
        String[] strArr3 = this.c;
        m[] mVarArr = new m[strArr3.length];
        for (int i10 = 0; i10 < strArr3.length; i10++) {
            String str2 = strArr3[i10];
            if ("TLSv1.3".equals(str2)) {
                mVar = m.TLS_1_3;
            } else if ("TLSv1.2".equals(str2)) {
                mVar = m.TLS_1_2;
            } else if ("TLSv1.1".equals(str2)) {
                mVar = m.TLS_1_1;
            } else if ("TLSv1".equals(str2)) {
                mVar = m.TLS_1_0;
            } else {
                if (!"SSLv3".equals(str2)) {
                    j1.i.k(ai.onnxruntime.a.l("Unexpected TLS version: ", str2));
                    return null;
                }
                mVar = m.SSL_3_0;
            }
            mVarArr[i10] = mVar;
        }
        String[] strArr4 = n.f4925a;
        sbX.append(Collections.unmodifiableList(Arrays.asList((Object[]) mVarArr.clone())));
        sbX.append(", supportsTlsExtensions=");
        sbX.append(this.d);
        sbX.append(")");
        return sbX.toString();
    }
}
