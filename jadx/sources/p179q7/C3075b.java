package p179q7;

import p099j1.C1929i;

/* JADX INFO: renamed from: q7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3075b {

    /* JADX INFO: renamed from: a */
    public final boolean f8720a;

    /* JADX INFO: renamed from: b */
    public String[] f8721b;

    /* JADX INFO: renamed from: c */
    public String[] f8722c;

    /* JADX INFO: renamed from: d */
    public boolean f8723d;

    public C3075b(C3076c c3076c) {
        this.f8720a = c3076c.f8725a;
        this.f8721b = c3076c.f8726b;
        this.f8722c = c3076c.f8727c;
        this.f8723d = c3076c.f8728d;
    }

    /* JADX INFO: renamed from: a */
    public final void m4909a(EnumC3074a... enumC3074aArr) {
        if (!this.f8720a) {
            C1929i.m3030l("no cipher suites for cleartext connections");
            return;
        }
        String[] strArr = new String[enumC3074aArr.length];
        for (int i10 = 0; i10 < enumC3074aArr.length; i10++) {
            strArr[i10] = enumC3074aArr[i10].f8719b;
        }
        this.f8721b = strArr;
    }

    /* JADX INFO: renamed from: b */
    public final void m4910b(EnumC3086m... enumC3086mArr) {
        if (!this.f8720a) {
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
        this.f8722c = strArr;
    }

    public C3075b(boolean z9) {
        this.f8720a = z9;
    }
}
