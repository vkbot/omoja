package p179q7;

import ai.onnxruntime.AbstractC0074a;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p099j1.C1929i;

/* JADX INFO: renamed from: q7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3076c {

    /* JADX INFO: renamed from: e */
    public static final C3076c f8724e;

    /* JADX INFO: renamed from: a */
    public final boolean f8725a;

    /* JADX INFO: renamed from: b */
    public final String[] f8726b;

    /* JADX INFO: renamed from: c */
    public final String[] f8727c;

    /* JADX INFO: renamed from: d */
    public final boolean f8728d;

    static {
        EnumC3074a[] enumC3074aArr = {EnumC3074a.TLS_AES_128_GCM_SHA256, EnumC3074a.TLS_AES_256_GCM_SHA384, EnumC3074a.TLS_CHACHA20_POLY1305_SHA256, EnumC3074a.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, EnumC3074a.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, EnumC3074a.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, EnumC3074a.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, EnumC3074a.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, EnumC3074a.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, EnumC3074a.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, EnumC3074a.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, EnumC3074a.TLS_RSA_WITH_AES_128_GCM_SHA256, EnumC3074a.TLS_RSA_WITH_AES_256_GCM_SHA384, EnumC3074a.TLS_RSA_WITH_AES_128_CBC_SHA, EnumC3074a.TLS_RSA_WITH_AES_256_CBC_SHA, EnumC3074a.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
        C3075b c3075b = new C3075b(true);
        c3075b.m4909a(enumC3074aArr);
        EnumC3086m enumC3086m = EnumC3086m.TLS_1_3;
        EnumC3086m enumC3086m2 = EnumC3086m.TLS_1_2;
        c3075b.m4910b(enumC3086m, enumC3086m2);
        c3075b.f8723d = true;
        C3076c c3076c = new C3076c(c3075b);
        f8724e = c3076c;
        EnumC3086m[] enumC3086mArr = {enumC3086m, enumC3086m2, EnumC3086m.TLS_1_1, EnumC3086m.TLS_1_0};
        boolean z9 = c3076c.f8725a;
        if (!z9) {
            C1929i.m3030l("no TLS versions for cleartext connections");
            return;
        }
        if (enumC3086mArr.length == 0) {
            C1929i.m3029k("At least one TlsVersion is required");
            return;
        }
        String[] strArr = new String[enumC3086mArr.length];
        for (int i10 = 0; i10 < enumC3086mArr.length; i10++) {
            strArr[i10] = enumC3086mArr[i10].f8770b;
        }
        if (z9) {
            return;
        }
        C1929i.m3030l("no TLS extensions for cleartext connections");
    }

    public C3076c(C3075b c3075b) {
        this.f8725a = c3075b.f8720a;
        this.f8726b = c3075b.f8721b;
        this.f8727c = c3075b.f8722c;
        this.f8728d = c3075b.f8723d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3076c)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C3076c c3076c = (C3076c) obj;
        boolean z9 = c3076c.f8725a;
        boolean z10 = this.f8725a;
        if (z10 != z9) {
            return false;
        }
        if (z10) {
            return Arrays.equals(this.f8726b, c3076c.f8726b) && Arrays.equals(this.f8727c, c3076c.f8727c) && this.f8728d == c3076c.f8728d;
        }
        return true;
    }

    public final int hashCode() {
        if (this.f8725a) {
            return ((((527 + Arrays.hashCode(this.f8726b)) * 31) + Arrays.hashCode(this.f8727c)) * 31) + (!this.f8728d ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        List listUnmodifiableList;
        EnumC3086m enumC3086m;
        if (!this.f8725a) {
            return "ConnectionSpec()";
        }
        String[] strArr = this.f8726b;
        if (strArr == null) {
            listUnmodifiableList = null;
        } else {
            EnumC3074a[] enumC3074aArr = new EnumC3074a[strArr.length];
            for (int i10 = 0; i10 < strArr.length; i10++) {
                String str = strArr[i10];
                enumC3074aArr[i10] = str.startsWith("SSL_") ? EnumC3074a.valueOf("TLS_".concat(str.substring(4))) : EnumC3074a.valueOf(str);
            }
            String[] strArr2 = AbstractC3087n.f8771a;
            listUnmodifiableList = Collections.unmodifiableList(Arrays.asList((Object[]) enumC3074aArr.clone()));
        }
        StringBuilder sbM173x = AbstractC0074a.m173x("ConnectionSpec(cipherSuites=", listUnmodifiableList == null ? "[use default]" : listUnmodifiableList.toString(), ", tlsVersions=");
        String[] strArr3 = this.f8727c;
        EnumC3086m[] enumC3086mArr = new EnumC3086m[strArr3.length];
        for (int i11 = 0; i11 < strArr3.length; i11++) {
            String str2 = strArr3[i11];
            if ("TLSv1.3".equals(str2)) {
                enumC3086m = EnumC3086m.TLS_1_3;
            } else if ("TLSv1.2".equals(str2)) {
                enumC3086m = EnumC3086m.TLS_1_2;
            } else if ("TLSv1.1".equals(str2)) {
                enumC3086m = EnumC3086m.TLS_1_1;
            } else if ("TLSv1".equals(str2)) {
                enumC3086m = EnumC3086m.TLS_1_0;
            } else {
                if (!"SSLv3".equals(str2)) {
                    C1929i.m3029k(AbstractC0074a.m161l("Unexpected TLS version: ", str2));
                    return null;
                }
                enumC3086m = EnumC3086m.SSL_3_0;
            }
            enumC3086mArr[i11] = enumC3086m;
        }
        String[] strArr4 = AbstractC3087n.f8771a;
        sbM173x.append(Collections.unmodifiableList(Arrays.asList((Object[]) enumC3086mArr.clone())));
        sbM173x.append(", supportsTlsExtensions=");
        sbM173x.append(this.f8728d);
        sbM173x.append(")");
        return sbM173x.toString();
    }
}
