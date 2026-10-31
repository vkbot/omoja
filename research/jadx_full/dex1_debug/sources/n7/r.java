package n7;

import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class r {
    public static final a d = new a("io.grpc.EquivalentAddressGroup.ATTR_AUTHORITY_OVERRIDE");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f3968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f3969b;
    public final int c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r(SocketAddress socketAddress) {
        b bVar = b.f3886b;
        List listSingletonList = Collections.singletonList(socketAddress);
        o4.b.d("addrs is empty", !listSingletonList.isEmpty());
        List listUnmodifiableList = Collections.unmodifiableList(new ArrayList(listSingletonList));
        this.f3968a = listUnmodifiableList;
        o4.b.i(bVar, "attrs");
        this.f3969b = bVar;
        this.c = listUnmodifiableList.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        List list = rVar.f3968a;
        List list2 = this.f3968a;
        if (list2.size() != list.size()) {
            return false;
        }
        for (int i9 = 0; i9 < list2.size(); i9++) {
            if (!((SocketAddress) list2.get(i9)).equals(list.get(i9))) {
                return false;
            }
        }
        return this.f3969b.equals(rVar.f3969b);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.c;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "[" + this.f3968a + "/" + this.f3969b + "]";
    }
}
