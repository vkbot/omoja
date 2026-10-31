package p148n7;

import androidx.core.app.NotificationCompat;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.manager.C1073s;
import java.util.Arrays;
import p155o4.AbstractC2587b;

/* JADX INFO: renamed from: n7.y0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2553y0 {

    /* JADX INFO: renamed from: a */
    public final C2508f1 f7061a;

    /* JADX INFO: renamed from: b */
    public final Object f7062b;

    public C2553y0(C2508f1 c2508f1) {
        this.f7062b = null;
        AbstractC2587b.m4042i(c2508f1, NotificationCompat.CATEGORY_STATUS);
        this.f7061a = c2508f1;
        AbstractC2587b.m4038e("cannot use OK status: %s", !c2508f1.m3932f(), c2508f1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2553y0.class == obj.getClass()) {
            C2553y0 c2553y0 = (C2553y0) obj;
            if (AbstractC1031d.m1276f(this.f7061a, c2553y0.f7061a) && AbstractC1031d.m1276f(this.f7062b, c2553y0.f7062b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f7061a, this.f7062b});
    }

    public final String toString() {
        Object obj = this.f7062b;
        if (obj != null) {
            C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
            c1073sM1263t.m1347c(obj, "config");
            return c1073sM1263t.toString();
        }
        C1073s c1073sM1263t2 = AbstractC1030c.m1263t(this);
        c1073sM1263t2.m1347c(this.f7061a, "error");
        return c1073sM1263t2.toString();
    }

    public C2553y0(Object obj) {
        this.f7062b = obj;
        this.f7061a = null;
    }
}
