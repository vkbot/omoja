package p148n7;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.r */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2538r {

    /* JADX INFO: renamed from: d */
    public static final C2491a f7016d = new C2491a("io.grpc.EquivalentAddressGroup.ATTR_AUTHORITY_OVERRIDE");

    /* JADX INFO: renamed from: a */
    public final List f7017a;

    /* JADX INFO: renamed from: b */
    public final C2494b f7018b;

    /* JADX INFO: renamed from: c */
    public final int f7019c;

    public C2538r(SocketAddress socketAddress) {
        C2494b c2494b = C2494b.f6881b;
        List listSingletonList = Collections.singletonList(socketAddress);
        AbstractC2587b.m4037d("addrs is empty", !listSingletonList.isEmpty());
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(listSingletonList));
        this.f7017a = listUnmodifiableList;
        AbstractC2587b.m4042i(c2494b, "attrs");
        this.f7018b = c2494b;
        this.f7019c = listUnmodifiableList.hashCode();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2538r)) {
            return false;
        }
        C2538r c2538r = (C2538r) obj;
        List list = c2538r.f7017a;
        List list2 = this.f7017a;
        if (list2.size() != list.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list2.size(); i10++) {
            if (!((SocketAddress) list2.get(i10)).equals(list.get(i10))) {
                return false;
            }
        }
        return this.f7018b.equals(c2538r.f7018b);
    }

    public final int hashCode() {
        return this.f7019c;
    }

    public final String toString() {
        return "[" + this.f7017a + "/" + this.f7018b + "]";
    }
}
