package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Arrays;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2544u extends SocketAddress {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f7028f = 0;

    /* JADX INFO: renamed from: b */
    public final SocketAddress f7029b;

    /* JADX INFO: renamed from: c */
    public final InetSocketAddress f7030c;

    /* JADX INFO: renamed from: d */
    public final String f7031d;

    /* JADX INFO: renamed from: e */
    public final String f7032e;

    public C2544u(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) {
        AbstractC2587b.m4042i(inetSocketAddress, "proxyAddress");
        AbstractC2587b.m4042i(inetSocketAddress2, "targetAddress");
        AbstractC2587b.m4045l("The proxy address %s is not resolved", !inetSocketAddress.isUnresolved(), inetSocketAddress);
        this.f7029b = inetSocketAddress;
        this.f7030c = inetSocketAddress2;
        this.f7031d = str;
        this.f7032e = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2544u)) {
            return false;
        }
        C2544u c2544u = (C2544u) obj;
        return AbstractC1031d.m1276f(this.f7029b, c2544u.f7029b) && AbstractC1031d.m1276f(this.f7030c, c2544u.f7030c) && AbstractC1031d.m1276f(this.f7031d, c2544u.f7031d) && AbstractC1031d.m1276f(this.f7032e, c2544u.f7032e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7029b, this.f7030c, this.f7031d, this.f7032e});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7029b, "proxyAddr");
        c1073sM1263t.m1347c(this.f7030c, "targetAddr");
        c1073sM1263t.m1347c(this.f7031d, "username");
        c1073sM1263t.m1348d("hasPassword", this.f7032e != null);
        return c1073sM1263t.toString();
    }
}
