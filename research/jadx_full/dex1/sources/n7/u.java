package n7;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u extends SocketAddress {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f3974f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SocketAddress f3975b;
    public final InetSocketAddress c;
    public final String d;
    public final String e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) {
        o4.b.i(inetSocketAddress, "proxyAddress");
        o4.b.i(inetSocketAddress2, "targetAddress");
        o4.b.l("The proxy address %s is not resolved", !inetSocketAddress.isUnresolved(), inetSocketAddress);
        this.f3975b = inetSocketAddress;
        this.c = inetSocketAddress2;
        this.d = str;
        this.e = str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return com.bumptech.glide.d.f(this.f3975b, uVar.f3975b) && com.bumptech.glide.d.f(this.c, uVar.c) && com.bumptech.glide.d.f(this.d, uVar.d) && com.bumptech.glide.d.f(this.e, uVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3975b, this.c, this.d, this.e});
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        com.bumptech.glide.manager.s sVarT = com.bumptech.glide.c.t(this);
        sVarT.c(this.f3975b, "proxyAddr");
        sVarT.c(this.c, "targetAddr");
        sVarT.c(this.d, "username");
        sVarT.d("hasPassword", this.e != null);
        return sVarT.toString();
    }
}
