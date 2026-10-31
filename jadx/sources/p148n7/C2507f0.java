package p148n7;

import androidx.core.app.NotificationCompat;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import p155o4.AbstractC2587b;
import p223v7.C3357r;

/* JADX INFO: renamed from: n7.f0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2507f0 {

    /* JADX INFO: renamed from: e */
    public static final C2507f0 f6931e = new C2507f0(null, null, C2508f1.f6937e, false);

    /* JADX INFO: renamed from: a */
    public final AbstractC2542t f6932a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2509g f6933b;

    /* JADX INFO: renamed from: c */
    public final C2508f1 f6934c;

    /* JADX INFO: renamed from: d */
    public final boolean f6935d;

    public C2507f0(AbstractC2542t abstractC2542t, AbstractC2509g abstractC2509g, C2508f1 c2508f1, boolean z9) {
        this.f6932a = abstractC2542t;
        this.f6933b = abstractC2509g;
        AbstractC2587b.m4042i(c2508f1, NotificationCompat.CATEGORY_STATUS);
        this.f6934c = c2508f1;
        this.f6935d = z9;
    }

    /* JADX INFO: renamed from: a */
    public static C2507f0 m3925a(C2508f1 c2508f1) {
        AbstractC2587b.m4037d("error status shouldn't be OK", !c2508f1.m3932f());
        return new C2507f0(null, null, c2508f1, false);
    }

    /* JADX INFO: renamed from: b */
    public static C2507f0 m3926b(AbstractC2542t abstractC2542t, C3357r c3357r) {
        AbstractC2587b.m4042i(abstractC2542t, "subchannel");
        return new C2507f0(abstractC2542t, c3357r, C2508f1.f6937e, false);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2507f0)) {
            return false;
        }
        C2507f0 c2507f0 = (C2507f0) obj;
        return AbstractC1031d.m1276f(this.f6932a, c2507f0.f6932a) && AbstractC1031d.m1276f(this.f6934c, c2507f0.f6934c) && AbstractC1031d.m1276f(this.f6933b, c2507f0.f6933b) && this.f6935d == c2507f0.f6935d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6932a, this.f6934c, this.f6933b, Boolean.valueOf(this.f6935d)});
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(this.f6932a, "subchannel");
        c1073sM1263t.m1347c(this.f6933b, "streamTracerFactory");
        c1073sM1263t.m1347c(this.f6934c, NotificationCompat.CATEGORY_STATUS);
        c1073sM1263t.m1348d("drop", this.f6935d);
        return c1073sM1263t.toString();
    }
}
