package v7;

import java.net.SocketAddress;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String[] f5550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5551b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(n7.r rVar) {
        o4.b.i(rVar, "eag");
        List list = rVar.f3968a;
        this.f5550a = new String[list.size()];
        Iterator it = list.iterator();
        int i9 = 0;
        while (it.hasNext()) {
            this.f5550a[i9] = ((SocketAddress) it.next()).toString();
            i9++;
        }
        Arrays.sort(this.f5550a);
        this.f5551b = Arrays.hashCode(this.f5550a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        if (jVar.f5551b == this.f5551b) {
            String[] strArr = jVar.f5550a;
            int length = strArr.length;
            String[] strArr2 = this.f5550a;
            if (length == strArr2.length) {
                return Arrays.equals(strArr, strArr2);
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f5551b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return Arrays.toString(this.f5550a);
    }
}
