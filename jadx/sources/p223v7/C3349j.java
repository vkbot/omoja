package p223v7;

import java.net.SocketAddress;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p148n7.C2538r;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: v7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3349j {

    /* JADX INFO: renamed from: a */
    public final String[] f9784a;

    /* JADX INFO: renamed from: b */
    public final int f9785b;

    public C3349j(C2538r c2538r) {
        AbstractC2587b.m4042i(c2538r, "eag");
        List list = c2538r.f7017a;
        this.f9784a = new String[list.size()];
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            this.f9784a[i10] = ((SocketAddress) it.next()).toString();
            i10++;
        }
        Arrays.sort(this.f9784a);
        this.f9785b = Arrays.hashCode(this.f9784a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C3349j)) {
            return false;
        }
        C3349j c3349j = (C3349j) obj;
        if (c3349j.f9785b == this.f9785b) {
            String[] strArr = c3349j.f9784a;
            int length = strArr.length;
            String[] strArr2 = this.f9784a;
            if (length == strArr2.length) {
                return Arrays.equals(strArr, strArr2);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9785b;
    }

    public final String toString() {
        return Arrays.toString(this.f9784a);
    }
}
