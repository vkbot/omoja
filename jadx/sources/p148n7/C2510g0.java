package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2510g0 {

    /* JADX INFO: renamed from: a */
    public final List f6951a;

    /* JADX INFO: renamed from: b */
    public final C2494b f6952b;

    /* JADX INFO: renamed from: c */
    public final Object f6953c;

    public C2510g0(List list, C2494b c2494b, Object obj) {
        AbstractC2587b.m4042i(list, "addresses");
        this.f6951a = Collections.unmodifiableList(new ArrayList(list));
        AbstractC2587b.m4042i(c2494b, "attributes");
        this.f6952b = c2494b;
        this.f6953c = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2510g0)) {
            return false;
        }
        C2510g0 c2510g0 = (C2510g0) obj;
        return AbstractC1031d.m1276f(this.f6951a, c2510g0.f6951a) && AbstractC1031d.m1276f(this.f6952b, c2510g0.f6952b) && AbstractC1031d.m1276f(this.f6953c, c2510g0.f6953c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6951a, this.f6952b, this.f6953c});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f6951a, "addresses");
        c1073sM1263t.m1347c(this.f6952b, "attributes");
        c1073sM1263t.m1347c(this.f6953c, "loadBalancingPolicyConfig");
        return c1073sM1263t.toString();
    }
}
