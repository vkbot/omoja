package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import java.util.Map;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: o7.n4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2682n4 {

    /* JADX INFO: renamed from: a */
    public final String f7644a;

    /* JADX INFO: renamed from: b */
    public final Map f7645b;

    public C2682n4(String str, Map map) {
        AbstractC2587b.m4042i(str, "policyName");
        this.f7644a = str;
        AbstractC2587b.m4042i(map, "rawConfigValue");
        this.f7645b = map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2682n4) {
            C2682n4 c2682n4 = (C2682n4) obj;
            if (this.f7644a.equals(c2682n4.f7644a) && this.f7645b.equals(c2682n4.f7645b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7644a, this.f7645b});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7644a, "policyName");
        c1073sM1263t.m1347c(this.f7645b, "rawConfigValue");
        return c1073sM1263t.toString();
    }
}
