package p157o7;

import com.bumptech.glide.AbstractC1031d;
import java.util.Arrays;
import p148n7.C2497c;
import p148n7.C2547v0;
import p148n7.C2551x0;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.g3 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2639g3 {

    /* JADX INFO: renamed from: a */
    public final C2497c f7488a;

    /* JADX INFO: renamed from: b */
    public final C2547v0 f7489b;

    /* JADX INFO: renamed from: c */
    public final C2551x0 f7490c;

    public C2639g3(C2551x0 c2551x0, C2547v0 c2547v0, C2497c c2497c) {
        AbstractC2587b.m4042i(c2551x0, "method");
        this.f7490c = c2551x0;
        AbstractC2587b.m4042i(c2547v0, "headers");
        this.f7489b = c2547v0;
        AbstractC2587b.m4042i(c2497c, "callOptions");
        this.f7488a = c2497c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2639g3.class == obj.getClass()) {
            C2639g3 c2639g3 = (C2639g3) obj;
            if (AbstractC1031d.m1276f(this.f7488a, c2639g3.f7488a) && AbstractC1031d.m1276f(this.f7489b, c2639g3.f7489b) && AbstractC1031d.m1276f(this.f7490c, c2639g3.f7490c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7488a, this.f7489b, this.f7490c});
    }

    public final String toString() {
        return "[method=" + this.f7490c + " headers=" + this.f7489b + " callOptions=" + this.f7488a + "]";
    }
}
