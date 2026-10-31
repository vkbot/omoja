package b1;

import android.os.SystemClock;
import android.util.Log;
import android.webkit.ValueCallback;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class q implements ValueCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r f277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f278b;
    public final /* synthetic */ long c;
    public final /* synthetic */ long d;
    public final /* synthetic */ long e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ q(r rVar, boolean z8, long j9, long j10, long j11) {
        this.f277a = rVar;
        this.f278b = z8;
        this.c = j9;
        this.d = j10;
        this.e = j11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        boolean z8 = this.f278b;
        long j9 = this.d;
        if (z8) {
            Log.i(e0.m.h(new byte[]{ByteCompanionObject.MIN_VALUE, -91, -7, 110, 72, 91, -127, 59, -88, -66, -15}, new byte[]{-51, -52, -105, 7, 5, 58, -15, 107}), e0.m.h(new byte[]{60, -103, 35, -49, -93, -82, -38, -28, 41, -99, 34, -124, -32, -87, -60, -23, 38, -103, 124}, new byte[]{75, -4, 65, -17, -64, -49, -74, -120}) + this.c + e0.m.h(new byte[]{102, 71, 66, 48, -69, ByteCompanionObject.MAX_VALUE, 81}, new byte[]{70, 38, 37, 85, -10, 12, 108, 71}) + Math.max(0L, SystemClock.elapsedRealtime() - j9));
        }
        this.f277a.g(j9, this.e, true);
    }
}
