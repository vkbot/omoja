package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import java.util.Set;
import java.util.SortedSet;
import p102j4.AbstractC1968g;

/* JADX INFO: renamed from: o7.a1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2601a1 {

    /* JADX INFO: renamed from: a */
    public final int f7256a;

    /* JADX INFO: renamed from: b */
    public final long f7257b;

    /* JADX INFO: renamed from: c */
    public final AbstractC1968g f7258c;

    /* JADX WARN: Code duplicated, block: B:9:0x001b  */
    public C2601a1(int i10, long j10, Set set) {
        AbstractC1968g abstractC1968gM3071j;
        this.f7256a = i10;
        this.f7257b = j10;
        int i11 = AbstractC1968g.f5358d;
        if (!(set instanceof AbstractC1968g) || (set instanceof SortedSet)) {
            Object[] array = set.toArray();
            abstractC1968gM3071j = AbstractC1968g.m3071j(array.length, array);
        } else {
            abstractC1968gM3071j = (AbstractC1968g) set;
            if (abstractC1968gM3071j.mo3062h()) {
                Object[] array2 = set.toArray();
                abstractC1968gM3071j = AbstractC1968g.m3071j(array2.length, array2);
            }
        }
        this.f7258c = abstractC1968gM3071j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2601a1.class != obj.getClass()) {
            return false;
        }
        C2601a1 c2601a1 = (C2601a1) obj;
        return this.f7256a == c2601a1.f7256a && this.f7257b == c2601a1.f7257b && AbstractC1031d.m1276f(this.f7258c, c2601a1.f7258c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7256a), Long.valueOf(this.f7257b), this.f7258c});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1349e("maxAttempts", String.valueOf(this.f7256a));
        c1073sM1263t.m1346b(this.f7257b, "hedgingDelayNanos");
        c1073sM1263t.m1347c(this.f7258c, "nonFatalStatusCodes");
        return c1073sM1263t.toString();
    }
}
