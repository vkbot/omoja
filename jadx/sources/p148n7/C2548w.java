package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import p157o7.C2661k1;

/* JADX INFO: renamed from: n7.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2548w {

    /* JADX INFO: renamed from: a */
    public final String f7042a;

    /* JADX INFO: renamed from: b */
    public final EnumC2546v f7043b;

    /* JADX INFO: renamed from: c */
    public final long f7044c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC2554z f7045d;

    public C2548w(String str, EnumC2546v enumC2546v, long j10, C2661k1 c2661k1) {
        this.f7042a = str;
        this.f7043b = enumC2546v;
        this.f7044c = j10;
        this.f7045d = c2661k1;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2548w)) {
            return false;
        }
        C2548w c2548w = (C2548w) obj;
        return AbstractC1031d.m1276f(this.f7042a, c2548w.f7042a) && AbstractC1031d.m1276f(this.f7043b, c2548w.f7043b) && this.f7044c == c2548w.f7044c && AbstractC1031d.m1276f(null, null) && AbstractC1031d.m1276f(this.f7045d, c2548w.f7045d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7042a, this.f7043b, Long.valueOf(this.f7044c), null, this.f7045d});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7042a, "description");
        c1073sM1263t.m1347c(this.f7043b, "severity");
        c1073sM1263t.m1346b(this.f7044c, "timestampNanos");
        c1073sM1263t.m1347c(null, "channelRef");
        c1073sM1263t.m1347c(this.f7045d, "subchannelRef");
        return c1073sM1263t.toString();
    }
}
