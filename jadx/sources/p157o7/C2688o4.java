package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import p148n7.AbstractC2522k0;

/* JADX INFO: renamed from: o7.o4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2688o4 {

    /* JADX INFO: renamed from: a */
    public final AbstractC2522k0 f7654a;

    /* JADX INFO: renamed from: b */
    public final Object f7655b;

    public C2688o4(AbstractC2522k0 abstractC2522k0, Object obj) {
        this.f7654a = abstractC2522k0;
        this.f7655b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2688o4.class == obj.getClass()) {
            C2688o4 c2688o4 = (C2688o4) obj;
            if (AbstractC1031d.m1276f(this.f7654a, c2688o4.f7654a) && AbstractC1031d.m1276f(this.f7655b, c2688o4.f7655b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7654a, this.f7655b});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f7654a, "provider");
        c1073sM1263t.m1347c(this.f7655b, "config");
        return c1073sM1263t.toString();
    }
}
