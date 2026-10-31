package p047e0;

import kotlin.jvm.internal.ByteCompanionObject;
import p190s1.C3159n;
import p190s1.C3167r;
import p250y5.AbstractC3656k;

/* JADX INFO: renamed from: e0.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1342d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3198b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3159n f3199c;

    public /* synthetic */ RunnableC1342d(C3159n c3159n, int i10) {
        this.f3198b = i10;
        this.f3199c = c3159n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10 = this.f3198b;
        C3159n c3159n = this.f3199c;
        switch (i10) {
            case 0:
                c3159n.m5023j();
                c3159n.m5026m(!c3159n.f9131r);
                c3159n.m5025l();
                break;
            case 1:
                if (c3159n.f9131r && c3159n.f9115b.f9201a.getBoolean(C3167r.f9197h, true)) {
                    c3159n.m5026m(false);
                }
                c3159n.animate().alpha(0.48f).setDuration(420L).start();
                break;
            default:
                AbstractC3656k.m5878x(c3159n.getContext(), AbstractC1387m.m2421h(new byte[]{-95, -62, ByteCompanionObject.MAX_VALUE, -88, -97, -65, 109, -72, -96, -44, ByteCompanionObject.MAX_VALUE, -81, -97, -66, 108, -116, 81, -121, 46, -51, -6, -42, 5, -24, -10, -122, 31, -52, -50, 38, 108, -124, -95, -29, ByteCompanionObject.MAX_VALUE, -87, -97, -72, 109, -72, -96, -44, 126, -98, -97, -71, 108, -124, -95, -24}, new byte[]{113, 86, -81, 29, 79, 6, -68, 57}));
                break;
        }
    }
}
