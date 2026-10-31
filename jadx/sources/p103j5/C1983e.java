package p103j5;

import com.google.firebase.inappmessaging.model.MessageType;
import java.util.Map;

/* JADX INFO: renamed from: j5.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1983e extends AbstractC1986h {

    /* JADX INFO: renamed from: c */
    public final C1990l f5400c;

    /* JADX INFO: renamed from: d */
    public final C1990l f5401d;

    /* JADX INFO: renamed from: e */
    public final String f5402e;

    /* JADX INFO: renamed from: f */
    public final C1979a f5403f;

    /* JADX INFO: renamed from: g */
    public final C1979a f5404g;

    /* JADX INFO: renamed from: h */
    public final C1984f f5405h;

    /* JADX INFO: renamed from: i */
    public final C1984f f5406i;

    public C1983e(C1990l c1990l, C1990l c1990l2, C1984f c1984f, C1984f c1984f2, String str, C1979a c1979a, C1979a c1979a2, Map map) {
        super(MessageType.CARD, map);
        this.f5400c = c1990l;
        this.f5401d = c1990l2;
        this.f5405h = c1984f;
        this.f5406i = c1984f2;
        this.f5402e = str;
        this.f5403f = c1979a;
        this.f5404g = c1979a2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1983e)) {
            return false;
        }
        C1983e c1983e = (C1983e) obj;
        C1984f c1984f = c1983e.f5406i;
        C1984f c1984f2 = c1983e.f5405h;
        C1979a c1979a = c1983e.f5404g;
        C1990l c1990l = c1983e.f5401d;
        if (hashCode() != c1983e.hashCode()) {
            return false;
        }
        C1990l c1990l2 = this.f5401d;
        if ((c1990l2 == null && c1990l != null) || (c1990l2 != null && !c1990l2.equals(c1990l))) {
            return false;
        }
        C1979a c1979a2 = this.f5404g;
        if ((c1979a2 == null && c1979a != null) || (c1979a2 != null && !c1979a2.equals(c1979a))) {
            return false;
        }
        C1984f c1984f3 = this.f5405h;
        if ((c1984f3 == null && c1984f2 != null) || (c1984f3 != null && !c1984f3.equals(c1984f2))) {
            return false;
        }
        C1984f c1984f4 = this.f5406i;
        return (c1984f4 != null || c1984f == null) && (c1984f4 == null || c1984f4.equals(c1984f)) && this.f5400c.equals(c1983e.f5400c) && this.f5403f.equals(c1983e.f5403f) && this.f5402e.equals(c1983e.f5402e);
    }

    public final int hashCode() {
        C1990l c1990l = this.f5401d;
        int iHashCode = c1990l != null ? c1990l.hashCode() : 0;
        C1979a c1979a = this.f5404g;
        int iHashCode2 = c1979a != null ? c1979a.hashCode() : 0;
        C1984f c1984f = this.f5405h;
        int iHashCode3 = c1984f != null ? c1984f.f5407a.hashCode() : 0;
        C1984f c1984f2 = this.f5406i;
        return this.f5403f.hashCode() + this.f5402e.hashCode() + this.f5400c.hashCode() + iHashCode + iHashCode2 + iHashCode3 + (c1984f2 != null ? c1984f2.f5407a.hashCode() : 0);
    }
}
