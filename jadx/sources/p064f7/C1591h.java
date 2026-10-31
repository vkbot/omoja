package p064f7;

import android.support.v4.media.C0090h;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import p062f5.C1554i;
import p074g7.C1623b;

/* JADX INFO: renamed from: f7.h */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1591h {

    /* JADX INFO: renamed from: a */
    public final Set f3953a;

    /* JADX INFO: renamed from: b */
    public final Set f3954b;

    /* JADX INFO: renamed from: c */
    public final Set f3955c;

    /* JADX INFO: renamed from: d */
    public final Set f3956d;

    /* JADX INFO: renamed from: e */
    public final Set f3957e;

    /* JADX INFO: renamed from: f */
    public final C0090h f3958f;

    /* JADX INFO: renamed from: g */
    public final Optional f3959g;

    /* JADX INFO: renamed from: h */
    public final Optional f3960h;

    public C1591h(C1554i c1554i) {
        this.f3953a = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) c1554i.f3816b));
        this.f3954b = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) c1554i.f3817c));
        this.f3955c = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) c1554i.f3818d));
        this.f3956d = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) c1554i.f3819e));
        this.f3957e = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) c1554i.f3820f));
        C0090h c0090h = (C0090h) c1554i.f3821g;
        Objects.requireNonNull(c0090h, "Interfaces must have a private key");
        this.f3958f = c0090h;
        this.f3959g = (Optional) c1554i.f3822h;
        this.f3960h = (Optional) c1554i.f3823i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1591h)) {
            return false;
        }
        C1591h c1591h = (C1591h) obj;
        return this.f3953a.equals(c1591h.f3953a) && this.f3954b.equals(c1591h.f3954b) && this.f3955c.equals(c1591h.f3955c) && this.f3956d.equals(c1591h.f3956d) && this.f3957e.equals(c1591h.f3957e) && this.f3958f.equals(c1591h.f3958f) && this.f3959g.equals(c1591h.f3959g) && this.f3960h.equals(c1591h.f3960h);
    }

    public final int hashCode() {
        return this.f3960h.hashCode() + ((this.f3959g.hashCode() + ((this.f3958f.hashCode() + ((this.f3957e.hashCode() + ((this.f3956d.hashCode() + ((this.f3954b.hashCode() + ((this.f3953a.hashCode() + 31) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(Interface ");
        sb.append(((C1623b) this.f3958f.f192d).m2713d());
        this.f3959g.ifPresent(new C1590g(sb, 0));
        sb.append(')');
        return sb.toString();
    }
}
