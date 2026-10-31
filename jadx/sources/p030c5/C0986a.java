package p030c5;

import java.util.ArrayList;
import p142n0.C2467b;

/* JADX INFO: renamed from: c5.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C0986a {

    /* JADX INFO: renamed from: a */
    public final String f935a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f936b;

    public C0986a(String str, ArrayList arrayList) {
        if (str == null) {
            C2467b.m3828n("Null userAgent");
            throw null;
        }
        this.f935a = str;
        this.f936b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0986a)) {
            return false;
        }
        C0986a c0986a = (C0986a) obj;
        return this.f935a.equals(c0986a.f935a) && this.f936b.equals(c0986a.f936b);
    }

    public final int hashCode() {
        return ((this.f935a.hashCode() ^ 1000003) * 1000003) ^ this.f936b.hashCode();
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f935a + ", usedDates=" + this.f936b + "}";
    }
}
