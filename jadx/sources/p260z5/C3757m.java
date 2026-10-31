package p260z5;

import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: renamed from: z5.m */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3757m {

    /* JADX INFO: renamed from: a */
    public final String f11198a;

    /* JADX INFO: renamed from: b */
    public final byte[] f11199b;

    /* JADX INFO: renamed from: c */
    public C3759o[] f11200c;

    /* JADX INFO: renamed from: d */
    public final EnumC3745a f11201d;

    /* JADX INFO: renamed from: e */
    public Map f11202e;

    public C3757m(String str, byte[] bArr, C3759o[] c3759oArr, EnumC3745a enumC3745a, int i10) {
        this.f11198a = str;
        this.f11199b = bArr;
        this.f11200c = c3759oArr;
        this.f11201d = enumC3745a;
        this.f11202e = null;
    }

    /* JADX INFO: renamed from: a */
    public final void m5987a(Map map) {
        if (map != null) {
            Map map2 = this.f11202e;
            if (map2 == null) {
                this.f11202e = map;
            } else {
                map2.putAll(map);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m5988b(EnumC3758n enumC3758n, Object obj) {
        if (this.f11202e == null) {
            this.f11202e = new EnumMap(EnumC3758n.class);
        }
        this.f11202e.put(enumC3758n, obj);
    }

    public final String toString() {
        return this.f11198a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3757m(String str, byte[] bArr, C3759o[] c3759oArr, EnumC3745a enumC3745a) {
        this(str, bArr, c3759oArr, enumC3745a, 0);
        System.currentTimeMillis();
    }
}
