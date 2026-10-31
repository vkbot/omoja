package p157o7;

import com.bumptech.glide.AbstractC1031d;
import java.util.Arrays;
import p148n7.C2494b;
import p148n7.C2544u;

/* JADX INFO: renamed from: o7.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2742y {

    /* JADX INFO: renamed from: a */
    public String f7872a;

    /* JADX INFO: renamed from: b */
    public C2494b f7873b;

    /* JADX INFO: renamed from: c */
    public C2544u f7874c;

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2742y)) {
            return false;
        }
        C2742y c2742y = (C2742y) obj;
        return this.f7872a.equals(c2742y.f7872a) && this.f7873b.equals(c2742y.f7873b) && AbstractC1031d.m1276f(null, null) && AbstractC1031d.m1276f(this.f7874c, c2742y.f7874c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7872a, this.f7873b, null, this.f7874c});
    }
}
