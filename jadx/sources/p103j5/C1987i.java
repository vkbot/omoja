package p103j5;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* JADX INFO: renamed from: j5.i */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1987i extends AbstractC1986h {

    /* JADX INFO: renamed from: c */
    public final C1990l f5412c;

    /* JADX INFO: renamed from: d */
    public final C1990l f5413d;

    /* JADX INFO: renamed from: e */
    public final C1984f f5414e;

    /* JADX INFO: renamed from: f */
    public final C1979a f5415f;

    /* JADX INFO: renamed from: g */
    public final String f5416g;

    public C1987i(C1990l c1990l, C1990l c1990l2, C1984f c1984f, C1979a c1979a, String str, Map map) {
        super(MessageType.MODAL, map);
        this.f5412c = c1990l;
        this.f5413d = c1990l2;
        this.f5414e = c1984f;
        this.f5415f = c1979a;
        this.f5416g = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1987i)) {
            return false;
        }
        C1987i c1987i = (C1987i) obj;
        C1984f c1984f = c1987i.f5414e;
        C1979a c1979a = c1987i.f5415f;
        C1990l c1990l = c1987i.f5413d;
        if (hashCode() != c1987i.hashCode()) {
            return false;
        }
        C1990l c1990l2 = this.f5413d;
        if ((c1990l2 == null && c1990l != null) || (c1990l2 != null && !c1990l2.equals(c1990l))) {
            return false;
        }
        C1979a c1979a2 = this.f5415f;
        if ((c1979a2 == null && c1979a != null) || (c1979a2 != null && !c1979a2.equals(c1979a))) {
            return false;
        }
        C1984f c1984f2 = this.f5414e;
        return (c1984f2 != null || c1984f == null) && (c1984f2 == null || c1984f2.equals(c1984f)) && this.f5412c.equals(c1987i.f5412c) && this.f5416g.equals(c1987i.f5416g);
    }

    public final int hashCode() {
        C1990l c1990l = this.f5413d;
        int iHashCode = c1990l != null ? c1990l.hashCode() : 0;
        C1979a c1979a = this.f5415f;
        int iHashCode2 = c1979a != null ? c1979a.hashCode() : 0;
        C1984f c1984f = this.f5414e;
        return this.f5416g.hashCode() + this.f5412c.hashCode() + iHashCode + iHashCode2 + (c1984f != null ? c1984f.f5407a.hashCode() : 0);
    }
}
