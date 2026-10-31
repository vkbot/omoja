package p064f7;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import p047e0.C1421s3;
import p074g7.C1623b;

/* JADX INFO: renamed from: f7.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1593j {

    /* JADX INFO: renamed from: a */
    public final Set f3962a;

    /* JADX INFO: renamed from: b */
    public final Optional f3963b;

    /* JADX INFO: renamed from: c */
    public final Optional f3964c;

    /* JADX INFO: renamed from: d */
    public final Optional f3965d;

    /* JADX INFO: renamed from: e */
    public final C1623b f3966e;

    public C1593j(C1421s3 c1421s3) {
        this.f3962a = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) c1421s3.f3413c));
        this.f3963b = (Optional) c1421s3.f3414d;
        this.f3964c = (Optional) c1421s3.f3415e;
        this.f3965d = (Optional) c1421s3.f3416f;
        C1623b c1623b = (C1623b) c1421s3.f3417g;
        Objects.requireNonNull(c1623b, "Peers must have a public key");
        this.f3966e = c1623b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1593j)) {
            return false;
        }
        C1593j c1593j = (C1593j) obj;
        return this.f3962a.equals(c1593j.f3962a) && this.f3963b.equals(c1593j.f3963b) && this.f3964c.equals(c1593j.f3964c) && this.f3965d.equals(c1593j.f3965d) && this.f3966e.equals(c1593j.f3966e);
    }

    public final int hashCode() {
        return this.f3966e.hashCode() + ((this.f3965d.hashCode() + ((this.f3964c.hashCode() + ((this.f3963b.hashCode() + ((this.f3962a.hashCode() + 31) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(Peer ");
        sb.append(this.f3966e.m2713d());
        this.f3963b.ifPresent(new C1590g(sb, 2));
        sb.append(')');
        return sb.toString();
    }
}
