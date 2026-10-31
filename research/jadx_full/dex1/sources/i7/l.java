package i7;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f2696b;
    public final /* synthetic */ long c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ l(long j9, long j10) {
        this.f2696b = j9;
        this.c = j10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        long j9 = this.f2696b - this.c;
        StringBuilder sb = new StringBuilder();
        sb.append(j9 / 86400000);
        sb.append(e0.m.h(new byte[]{63, -95, -32, 109, 10}, new byte[]{31, 113, 84, 67, 42, -106, ByteCompanionObject.MIN_VALUE, -116}));
        sb.append((j9 / 3600000) % 24);
        sb.append(e0.m.h(new byte[]{126, 31, 97, 21, 38}, new byte[]{94, -50, -26, 59, 6, 91, -86, 85}));
        sb.append((j9 / 60000) % 60);
        String strI = com.google.protobuf.q.i(new byte[]{45, 68, 57, -30, -92, -17, -64, -2}, new byte[]{13, -108, -123, 50, 28, 63, 125, -48}, sb);
        s sVarC = v1.d.a().c();
        sVarC.f2713b.postValue(e0.m.h(new byte[]{-65, 10, -29, 43, 3, -7, -54, 90, -65, 47, -30, 20, 3, -6, -53, 102, 79, 68, -122, 122, 108, 91, -54, 84, -65, 37, -30, 23, 2, -59, -54, 88, -65, 47, -30, 31, 2, -58, -54, 82, -66, 27, 18, 122, 99, -85, -86, 58, -40, 69, -71, -112, -14}, new byte[]{111, -108, 50, -86, -46, 123, 26, -22}).concat(strI));
    }
}
