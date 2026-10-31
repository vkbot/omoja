package e0;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1821b;
    public final /* synthetic */ s1.n c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(s1.n nVar, int i9) {
        this.f1821b = i9;
        this.c = nVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f1821b;
        s1.n nVar = this.c;
        switch (i9) {
            case 0:
                nVar.j();
                nVar.m(!nVar.r);
                nVar.l();
                break;
            case 1:
                if (nVar.r && nVar.f5148b.f5196a.getBoolean(s1.r.f5192h, true)) {
                    nVar.m(false);
                }
                nVar.animate().alpha(0.48f).setDuration(420L).start();
                break;
            default:
                y5.k.x(nVar.getContext(), m.h(new byte[]{-95, -62, ByteCompanionObject.MAX_VALUE, -88, -97, -65, 109, -72, -96, -44, ByteCompanionObject.MAX_VALUE, -81, -97, -66, 108, -116, 81, -121, 46, -51, -6, -42, 5, -24, -10, -122, 31, -52, -50, 38, 108, -124, -95, -29, ByteCompanionObject.MAX_VALUE, -87, -97, -72, 109, -72, -96, -44, 126, -98, -97, -71, 108, -124, -95, -24}, new byte[]{113, 86, -81, 29, 79, 6, -68, 57}));
                break;
        }
    }
}
