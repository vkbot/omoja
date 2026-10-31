package p039d2;

import java.util.Arrays;
import p003a2.EnumC0005b;

/* JADX INFO: renamed from: d2.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1254j extends AbstractC1261q {

    /* JADX INFO: renamed from: a */
    public final String f2964a;

    /* JADX INFO: renamed from: b */
    public final byte[] f2965b;

    /* JADX INFO: renamed from: c */
    public final EnumC0005b f2966c;

    public C1254j(String str, byte[] bArr, EnumC0005b enumC0005b) {
        this.f2964a = str;
        this.f2965b = bArr;
        this.f2966c = enumC0005b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC1261q) {
            AbstractC1261q abstractC1261q = (AbstractC1261q) obj;
            C1254j c1254j = (C1254j) abstractC1261q;
            if (this.f2964a.equals(c1254j.f2964a)) {
                if (Arrays.equals(this.f2965b, abstractC1261q instanceof C1254j ? ((C1254j) abstractC1261q).f2965b : c1254j.f2965b) && this.f2966c.equals(c1254j.f2966c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f2964a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f2965b)) * 1000003) ^ this.f2966c.hashCode();
    }
}
