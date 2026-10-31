package p062f5;

import p126l5.C2206a;
import p142n0.C2467b;

/* JADX INFO: renamed from: f5.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1544d {

    /* JADX INFO: renamed from: a */
    public final String f3799a;

    /* JADX INFO: renamed from: b */
    public final C2206a f3800b;

    public C1544d(String str, C2206a c2206a) {
        if (str == null) {
            C2467b.m3828n("Null installationId");
            throw null;
        }
        this.f3799a = str;
        if (c2206a != null) {
            this.f3800b = c2206a;
        } else {
            C2467b.m3828n("Null installationTokenResult");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1544d) {
            C1544d c1544d = (C1544d) obj;
            if (this.f3799a.equals(c1544d.f3799a) && this.f3800b.equals(c1544d.f3800b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f3799a.hashCode() ^ 1000003) * 1000003) ^ this.f3800b.hashCode();
    }

    public final String toString() {
        return "InstallationIdResult{installationId=" + this.f3799a + ", installationTokenResult=" + this.f3800b + "}";
    }
}
