package p157o7;

import java.util.logging.Level;
import p148n7.C2521k;
import p148n7.EnumC2518j;
import p148n7.InterfaceC2516i0;

/* JADX INFO: renamed from: o7.w2 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2734w2 implements InterfaceC2516i0 {

    /* JADX INFO: renamed from: a */
    public C2521k f7851a = C2521k.m3950a(EnumC2518j.f6971e);

    /* JADX INFO: renamed from: b */
    public C2750z2 f7852b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2603a3 f7853c;

    public C2734w2(C2603a3 c2603a3) {
        this.f7853c = c2603a3;
    }

    @Override // p148n7.InterfaceC2516i0
    /* JADX INFO: renamed from: a */
    public final void mo3943a(C2521k c2521k) {
        C2603a3.f7260o.log(Level.FINE, "Received health status {0} for subchannel {1}", new Object[]{c2521k, this.f7852b.f7906a});
        this.f7851a = c2521k;
        C2603a3 c2603a3 = this.f7853c;
        if (c2603a3.f7263h.m4161c() && ((C2750z2) c2603a3.f7262g.get(c2603a3.f7263h.m4159a())).f7908c == this) {
            c2603a3.m4089j(this.f7852b);
        }
    }
}
