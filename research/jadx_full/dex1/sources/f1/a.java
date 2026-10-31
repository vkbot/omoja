package f1;

import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2158b;
    public final /* synthetic */ e c;
    public final /* synthetic */ int d;
    public final /* synthetic */ String e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(e eVar, int i9, String str, int i10) {
        this.f2158b = i10;
        this.c = eVar;
        this.d = i9;
        this.e = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        int i9 = this.f2158b;
        String str = this.e;
        int i10 = this.d;
        e eVar = this.c;
        switch (i9) {
            case 0:
                int i11 = e.f2162q;
                eVar.y(i10, str, m.h(new byte[]{3, -36, -57, 125, 125, -43, -124, -81, 19, -43, -38, 79, 111, -60, ByteCompanionObject.MIN_VALUE, -124, 63, -40, -53, 113, 104}, new byte[]{96, -80, -82, 16, 28, -95, -31, -16}));
                break;
            default:
                int i12 = e.f2162q;
                eVar.y(i10, str, m.h(new byte[]{-106, 123, 91, 117, 45, 75, -14, -18, -122, 114, 70, 71, 63, 90, -10, -59, -86, 97, 87, 118, 56}, new byte[]{-11, 23, 50, 24, 76, 63, -105, -79}));
                break;
        }
    }
}
