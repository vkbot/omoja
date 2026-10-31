package y0;

import android.util.Log;
import com.example.navistart.Transport.TransportService;
import e0.s3;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class k implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6101b;
    public final /* synthetic */ TransportService c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(TransportService transportService, int i9) {
        this.f6101b = i9;
        this.c = transportService;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6101b) {
            case 0:
                TransportService transportService = this.c;
                String str = TransportService.f852p;
                try {
                    transportService.h();
                } catch (RuntimeException e) {
                    Log.w(TransportService.f852p, e0.m.h(new byte[]{59, 105, -80, 1, -123, -75, 3, -48, 27, 59, -71, 10, -105, -73, 24, -64, 10, 122, -91, 79, -112, -92, 5, -50, 10, ByteCompanionObject.MAX_VALUE, -22, 79, -99, -96, 9, -46, 6, 117, -74, 79, -102, -84, 10, -57, 12, 98, -78, 3, -109, -27, 13, -50, 6, 109, -76}, new byte[]{111, 27, -47, 111, -10, -59, 108, -94}), e);
                    s3 s3Var = transportService.f867l;
                    if (s3Var != null) {
                        s3Var.e();
                        return;
                    }
                    return;
                }
                break;
            default:
                TransportService transportService2 = this.c;
                while (transportService2.f861f.get()) {
                    try {
                        s3 s3VarD = transportService2.d();
                        if (s3VarD == null) {
                            s3VarD = transportService2.c();
                        }
                        if (s3VarD != null) {
                            transportService2.j(s3VarD);
                        }
                    } catch (RuntimeException e6) {
                        Log.w(TransportService.f852p, e0.m.h(new byte[]{63, -50, 91, -84, -19, 122, -103, 59, 31, -100, 89, -83, -16, 100, -109, 42, 31, -43, 85, -84, -66, 105, -113, 42, 7, -39, 26, -92, -1, 99, -102, 44, 15, -121, 26, -80, -5, 126, -124, 48, 2, -46, 93}, new byte[]{107, -68, 58, -62, -98, 10, -10, 73}), e6);
                        transportService2.m();
                        s3 s3Var2 = transportService2.f867l;
                        transportService2.f867l = null;
                        if (s3Var2 != null) {
                            s3Var2.e();
                        }
                    }
                    if (transportService2.f861f.get()) {
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                }
                break;
        }
    }
}
