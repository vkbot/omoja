package f7;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f2289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f2290b;
    public final Set c;
    public final Set d;
    public final Set e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final android.support.v4.media.h f2291f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Optional f2292g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Optional f2293h;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public h(f5.i iVar) {
        this.f2289a = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) iVar.f2202b));
        this.f2290b = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) iVar.c));
        this.c = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) iVar.d));
        this.d = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) iVar.e));
        this.e = Collections.unmodifiableSet(new LinkedHashSet((LinkedHashSet) iVar.f2203f));
        android.support.v4.media.h hVar = (android.support.v4.media.h) iVar.f2204g;
        Objects.requireNonNull(hVar, "Interfaces must have a private key");
        this.f2291f = hVar;
        this.f2292g = (Optional) iVar.f2205h;
        this.f2293h = (Optional) iVar.f2206i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f2289a.equals(hVar.f2289a) && this.f2290b.equals(hVar.f2290b) && this.c.equals(hVar.c) && this.d.equals(hVar.d) && this.e.equals(hVar.e) && this.f2291f.equals(hVar.f2291f) && this.f2292g.equals(hVar.f2292g) && this.f2293h.equals(hVar.f2293h);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        return this.f2293h.hashCode() + ((this.f2292g.hashCode() + ((this.f2291f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.f2290b.hashCode() + ((this.f2289a.hashCode() + 31) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        StringBuilder sb = new StringBuilder("(Interface ");
        sb.append(((g7.b) this.f2291f.d).d());
        this.f2292g.ifPresent(new g(sb, 0));
        sb.append(')');
        return sb.toString();
    }
}
