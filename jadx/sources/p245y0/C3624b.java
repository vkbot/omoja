package p245y0;

import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.C0090h;
import android.util.Log;
import com.example.navistart.Transport.TransportService;
import kotlin.collections.unsigned.AbstractC2082a;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p141n.C2455p;

/* JADX INFO: renamed from: y0.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3624b implements AutoCloseable {

    /* JADX INFO: renamed from: b */
    public final TransportService f10763b;

    /* JADX INFO: renamed from: c */
    public final Handler f10764c = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: d */
    public final C3626d f10765d = AbstractC3629g.m5805e(AbstractC1387m.m2421h(new byte[]{45, -43, 84, -121, -83, -20, -39, -96, 44, -38, 12, -127, -70, -24, -61}, new byte[]{67, -76, 34, -18, -54, -115, -83, -55}), new C3623a(this));

    /* JADX INFO: renamed from: e */
    public final C0090h f10766e;

    /* JADX INFO: renamed from: f */
    public boolean f10767f;

    public C3624b(TransportService transportService) {
        this.f10763b = transportService;
        int i10 = 14;
        this.f10766e = new C0090h((Object) new C2455p(i10, transportService.getSharedPreferences(AbstractC1387m.m2421h(new byte[]{-53, -105, 58, -11, 77, 44, -34, -5, -54, -104, 19, -18, 79, 46, -49, -5, -45, -109, 40, -61, 92, 124}, new byte[]{-91, -10, 76, -100, 42, 77, -86, -110}), 0)), (Object) new C3623a(this), false, 24);
    }

    /* JADX INFO: renamed from: b */
    public final void m5797b(String str) {
        try {
            AbstractC3629g.m5803c(this.f10763b, AbstractC1387m.m2421h(new byte[]{ByteCompanionObject.MAX_VALUE, -55, -123, 14, -23, -87, 73, -75, 126, -58, -35, 21, -21, -69, 72, -80, 101}, new byte[]{17, -88, -13, 103, -114, -56, Base64.padSymbol, -36}), str, AbstractC1387m.m2421h(new byte[]{-13, 77, -55, -42, 65, -72, 125, -79}, new byte[]{-127, 40, -91, -65, 32, -38, 17, -44}));
        } catch (Exception e) {
            Log.w(AbstractC1387m.m2421h(new byte[]{-66, -87, 104, -34, 94, -4, -59, 117, -97, -90, 76, -46, 90, -8, -40, 106, -107, -70}, new byte[]{-16, -56, 30, -73, 57, -99, -79, 28}), AbstractC1387m.m2421h(new byte[]{10, 93, -92, 7, -76, 104, 116, -112, 44, 82, -82, 73, -75, 125, 34, -118, 46, 93, -66, 0, -76, 114, 116, -111, 44, 79, -65, 5, -81}, new byte[]{73, 60, -54, 105, -37, 28, 84, -29}), e);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.f10767f = true;
        this.f10764c.removeCallbacksAndMessages(null);
        try {
            AbstractC2082a.m3241g(this.f10765d);
        } catch (Exception unused) {
        }
    }
}
