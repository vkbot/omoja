package p148n7;

import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.manager.C1073s;
import java.util.Map;

/* JADX INFO: renamed from: n7.k0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2522k0 {
    /* JADX INFO: renamed from: a */
    public abstract String mo3951a();

    /* JADX INFO: renamed from: b */
    public abstract AbstractC2519j0 mo3952b(AbstractC2503e abstractC2503e);

    /* JADX INFO: renamed from: c */
    public abstract C2553y0 mo3953c(Map map);

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final String toString() {
        C1073s c1073sM1263t = AbstractC1030c.m1263t(this);
        c1073sM1263t.m1347c(mo3951a(), "policy");
        c1073sM1263t.m1349e("priority", String.valueOf(5));
        c1073sM1263t.m1348d("available", true);
        return c1073sM1263t.toString();
    }
}
