package p141n;

import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p077h.C1646h;

/* JADX INFO: renamed from: n.g0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2446g0 implements InterfaceC2457r {

    /* JADX INFO: renamed from: b */
    public static final Set f6632b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* JADX INFO: renamed from: a */
    public final InterfaceC2457r f6633a;

    public C2446g0(InterfaceC2457r interfaceC2457r) {
        this.f6633a = interfaceC2457r;
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: a */
    public final boolean mo3790a(Object obj) {
        return f6632b.contains(((Uri) obj).getScheme());
    }

    @Override // p141n.InterfaceC2457r
    /* JADX INFO: renamed from: b */
    public final C2456q mo3791b(Object obj, int i10, int i11, C1646h c1646h) {
        return this.f6633a.mo3791b(new C2445g(((Uri) obj).toString()), i10, i11, c1646h);
    }
}
