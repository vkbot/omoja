package f7;

import e0.s3;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f2295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Optional f2296b;
    public final Optional c;
    public final Optional d;
    public final g7.b e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j(s3 s3Var) {
        this.f2295a = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) s3Var.c));
        this.f2296b = (Optional) s3Var.d;
        this.c = (Optional) s3Var.e;
        this.d = (Optional) s3Var.f1952f;
        g7.b bVar = (g7.b) s3Var.f1953g;
        Objects.requireNonNull(bVar, "Peers must have a public key");
        this.e = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f2295a.equals(jVar.f2295a) && this.f2296b.equals(jVar.f2296b) && this.c.equals(jVar.c) && this.d.equals(jVar.d) && this.e.equals(jVar.e);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.f2296b.hashCode() + ((this.f2295a.hashCode() + 31) * 31)) * 31)) * 31)) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("(Peer ");
        sb.append(this.e.d());
        this.f2296b.ifPresent(new g(sb, 2));
        sb.append(')');
        return sb.toString();
    }
}
