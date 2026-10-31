package p157o7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import java.util.Set;
import java.util.SortedSet;
import p102j4.AbstractC1968g;

/* JADX INFO: renamed from: o7.e4 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2628e4 {

    /* JADX INFO: renamed from: a */
    public final int f7379a;

    /* JADX INFO: renamed from: b */
    public final long f7380b;

    /* JADX INFO: renamed from: c */
    public final long f7381c;

    /* JADX INFO: renamed from: d */
    public final double f7382d;

    /* JADX INFO: renamed from: e */
    public final Long f7383e;

    /* JADX INFO: renamed from: f */
    public final AbstractC1968g f7384f;

    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    public C2628e4(int i10, long j10, long j11, double d, Long l10, Set set) {
        AbstractC1968g abstractC1968gM3071j;
        this.f7379a = i10;
        this.f7380b = j10;
        this.f7381c = j11;
        this.f7382d = d;
        this.f7383e = l10;
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
        this.f7384f = abstractC1968gM3071j;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2628e4)) {
            return false;
        }
        C2628e4 c2628e4 = (C2628e4) obj;
        return this.f7379a == c2628e4.f7379a && this.f7380b == c2628e4.f7380b && this.f7381c == c2628e4.f7381c && Double.compare(this.f7382d, c2628e4.f7382d) == 0 && AbstractC1031d.m1276f(this.f7383e, c2628e4.f7383e) && AbstractC1031d.m1276f(this.f7384f, c2628e4.f7384f);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7379a), Long.valueOf(this.f7380b), Long.valueOf(this.f7381c), Double.valueOf(this.f7382d), this.f7383e, this.f7384f});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1349e("maxAttempts", String.valueOf(this.f7379a));
        c1073sM1263t.m1346b(this.f7380b, "initialBackoffNanos");
        c1073sM1263t.m1346b(this.f7381c, "maxBackoffNanos");
        c1073sM1263t.m1349e("backoffMultiplier", String.valueOf(this.f7382d));
        c1073sM1263t.m1347c(this.f7383e, "perAttemptRecvTimeoutNanos");
        c1073sM1263t.m1347c(this.f7384f, "retryableStatusCodes");
        return c1073sM1263t.toString();
    }
}
