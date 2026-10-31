package p103j5;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* JADX INFO: renamed from: j5.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1981c extends AbstractC1986h {

    /* JADX INFO: renamed from: c */
    public final C1990l f5393c;

    /* JADX INFO: renamed from: d */
    public final C1990l f5394d;

    /* JADX INFO: renamed from: e */
    public final C1984f f5395e;

    /* JADX INFO: renamed from: f */
    public final C1979a f5396f;

    /* JADX INFO: renamed from: g */
    public final String f5397g;

    public C1981c(C1990l c1990l, C1990l c1990l2, C1984f c1984f, C1979a c1979a, String str, Map map) {
        super(MessageType.BANNER, map);
        this.f5393c = c1990l;
        this.f5394d = c1990l2;
        this.f5395e = c1984f;
        this.f5396f = c1979a;
        this.f5397g = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1981c)) {
            return false;
        }
        C1981c c1981c = (C1981c) obj;
        C1979a c1979a = c1981c.f5396f;
        C1984f c1984f = c1981c.f5395e;
        C1990l c1990l = c1981c.f5394d;
        if (hashCode() != c1981c.hashCode()) {
            return false;
        }
        C1990l c1990l2 = this.f5394d;
        if ((c1990l2 == null && c1990l != null) || (c1990l2 != null && !c1990l2.equals(c1990l))) {
            return false;
        }
        C1984f c1984f2 = this.f5395e;
        if ((c1984f2 == null && c1984f != null) || (c1984f2 != null && !c1984f2.equals(c1984f))) {
            return false;
        }
        C1979a c1979a2 = this.f5396f;
        return (c1979a2 != null || c1979a == null) && (c1979a2 == null || c1979a2.equals(c1979a)) && this.f5393c.equals(c1981c.f5393c) && this.f5397g.equals(c1981c.f5397g);
    }

    public final int hashCode() {
        C1990l c1990l = this.f5394d;
        int iHashCode = c1990l != null ? c1990l.hashCode() : 0;
        C1984f c1984f = this.f5395e;
        int iHashCode2 = c1984f != null ? c1984f.f5407a.hashCode() : 0;
        C1979a c1979a = this.f5396f;
        return this.f5397g.hashCode() + this.f5393c.hashCode() + iHashCode + iHashCode2 + (c1979a != null ? c1979a.hashCode() : 0);
    }
}
