package w0;

import android.media.AudioManager$OnModeChangedListener;
import android.util.Log;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class f implements AudioManager$OnModeChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f5615b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ f(y yVar, int i9) {
        this.f5614a = i9;
        this.f5615b = yVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.media.AudioManager$OnModeChangedListener
    public final void onModeChanged(int i9) {
        switch (this.f5614a) {
            case 0:
                g gVar = (g) this.f5615b;
                Log.d(e0.m.h(new byte[]{-112, 95, -98, 35, -15, -32, 106, -3, -76}, new byte[]{-47, 42, -6, 74, -98, -83, 5, -103}), e0.m.h(new byte[]{-93, 24, -90, 104, 21, 97, -79}, new byte[]{-50, 119, -62, 13, 53, 92, -111, 21}) + i9);
                if (i9 == 3 || i9 == 2) {
                    gVar.b();
                    gVar.f5628h = true;
                } else if (gVar.f5628h) {
                    gVar.c();
                }
                break;
            case 1:
                o oVar = (o) this.f5615b;
                Log.d(e0.m.h(new byte[]{22, -122, -21, -23, 107, -118, -56, 24, 50}, new byte[]{87, -13, -113, ByteCompanionObject.MIN_VALUE, 4, -57, -89, 124}), e0.m.h(new byte[]{-43, -122, -54, -83, -107, -90, 8}, new byte[]{-72, -23, -82, -56, -75, -101, 40, 73}) + i9);
                if (i9 == 3 || i9 == 2) {
                    oVar.b();
                    oVar.f5744s = true;
                } else if (oVar.f5744s) {
                    oVar.c();
                }
                break;
            default:
                x xVar = (x) this.f5615b;
                if (!xVar.f5818o) {
                    Log.d(e0.m.h(new byte[]{-82, 13, 75, -20, -5, -11, 93, 51, -118}, new byte[]{-17, 120, 47, -123, -108, -72, 50, 87}), e0.m.h(new byte[]{59, -50, -55, 73, -32, -82, 89}, new byte[]{86, -95, -83, 44, -64, -109, 121, -39}) + i9);
                    if (i9 == 3 || i9 == 2) {
                        xVar.b();
                        xVar.K = true;
                    } else if (xVar.K) {
                        xVar.c();
                    }
                    break;
                }
                break;
        }
    }
}
