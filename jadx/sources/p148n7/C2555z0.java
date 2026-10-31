package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.z0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2555z0 {

    /* JADX INFO: renamed from: a */
    public final List f7063a;

    /* JADX INFO: renamed from: b */
    public final C2494b f7064b;

    /* JADX INFO: renamed from: c */
    public final C2553y0 f7065c;

    public C2555z0(List list, C2494b c2494b, C2553y0 c2553y0) {
        this.f7063a = Collections.unmodifiableList(new ArrayList(list));
        AbstractC2587b.m4042i(c2494b, "attributes");
        this.f7064b = c2494b;
        this.f7065c = c2553y0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2555z0)) {
            return false;
        }
        C2555z0 c2555z0 = (C2555z0) obj;
        return AbstractC1031d.m1276f(this.f7063a, c2555z0.f7063a) && AbstractC1031d.m1276f(this.f7064b, c2555z0.f7064b) && AbstractC1031d.m1276f(this.f7065c, c2555z0.f7065c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7063a, this.f7064b, this.f7065c});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7063a, "addresses");
        c1073sM1263t.m1347c(this.f7064b, "attributes");
        c1073sM1263t.m1347c(this.f7065c, "serviceConfig");
        return c1073sM1263t.toString();
    }
}
