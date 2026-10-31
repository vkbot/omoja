package w0;

import ai.onnxruntime.OrtSession;
import android.media.AudioRecord;
import android.util.Log;
import java.util.Collections;
import java.util.concurrent.ScheduledFuture;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5752b;
    public final /* synthetic */ x c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ p(x xVar, int i9) {
        this.f5752b = i9;
        this.c = xVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5752b) {
            case 0:
                x xVar = this.c;
                try {
                    try {
                        h0.b.a();
                        if (h0.b.q() != xVar) {
                            synchronized (xVar) {
                                try {
                                    ScheduledFuture scheduledFuture = xVar.f5807h;
                                    if (scheduledFuture != null) {
                                        scheduledFuture.cancel(false);
                                    }
                                    xVar.f5807h = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                                break;
                            }
                        } else if (!h0.b.o().loadBoolean(e0.m.h(new byte[]{-56, -121, 3, 16, 20, 30, Base64.padSymbol, -62, -51, -106, 30, 42, 42, 6, 62, -12, -24, -96}, new byte[]{-69, -9, 106, 79, 117, 117, 73, -85}), false) && xVar.f5815l != null && xVar.n() && System.currentTimeMillis() - xVar.f5808h0 >= 5000) {
                            ScheduledFuture scheduledFuture2 = xVar.f5805g;
                            boolean z8 = (scheduledFuture2 == null || scheduledFuture2.isCancelled() || xVar.f5805g.isDone()) ? false : true;
                            AudioRecord audioRecord = xVar.f5813k;
                            boolean z9 = audioRecord != null && audioRecord.getState() == 1 && xVar.f5813k.getRecordingState() == 3;
                            if ((!z8 || !z9) && !xVar.f5810i0) {
                                xVar.f5810i0 = true;
                                xVar.r().e(e0.m.h(new byte[]{-83, 78, 93, 114, 108, 24, 16, -45, -72, 116, 76, 120, 109, 8, 24, -49, -85}, new byte[]{-33, 43, 62, 29, 30, 124, 121, -67}), e0.m.h(new byte[]{114, 125, 48, -73, 16, 90, -107, -79, 99}, new byte[]{6, 28, 67, -36, 81, 54, -4, -57}), Boolean.valueOf(z8), e0.m.h(new byte[]{-125, -47, ByteCompanionObject.MIN_VALUE, 45, 36, -116, -72, -86, -80, -40, -118, 52, 51}, new byte[]{-15, -76, -29, 66, 86, -24, -35, -40}), Boolean.valueOf(z9));
                                Log.w(xVar.f5796a, e0.m.h(new byte[]{102, 60, 112, -45, ByteCompanionObject.MIN_VALUE, -70, 8, 111, 83, 121, 100, -35, -122, -67, 9, 101, 91, 62, 51, -50, -105, -83, 21, 96, 70, 45, 41, -100, -122, -65, 18, 106, 117, 53, 122, -54, -105, -29}, new byte[]{52, 89, 19, -68, -14, -34, 97, 1}) + z8 + e0.m.h(new byte[]{123, 7, 20, 114, -50, 63, -38, -88, 50, 85, 39, 123, -60, 38, -51, -15}, new byte[]{87, 39, 102, 23, -83, 80, -88, -52}) + z9);
                                xVar.c();
                            }
                        }
                    } catch (Exception e) {
                        Log.e(xVar.f5796a, e0.m.h(new byte[]{-74, -26, 118, -99, 125, -50, 31, -82, -125, -93, 98, -109, 123, -55, 30, -92, -117, -28, 53, -108, 110, -61, 26, -91, ByteCompanionObject.MIN_VALUE}, new byte[]{-28, -125, 21, -14, 15, -86, 118, -64}), e);
                    }
                    xVar.f5810i0 = false;
                    return;
                } catch (Throwable th2) {
                    xVar.f5810i0 = false;
                    throw th2;
                }
            default:
                x xVar2 = this.c;
                xVar2.getClass();
                try {
                    OrtSession ortSession = xVar2.f5822u;
                    if (ortSession != null) {
                        ortSession.close();
                    }
                    break;
                } catch (Exception e6) {
                    Log.w(xVar2.f5796a, e0.m.h(new byte[]{22, 81, 90, 117, -69, 66, -7, -69, 33, 30, 76, 117, -80, 17, -14, -12, 38, 91, 66, 120, -79, 22, -2, -73, 117, 77, 74, 106, -84, 11, -8, -70}, new byte[]{85, 62, 47, 25, -33, 98, -105, -44}), e6);
                }
                xVar2.f5822u = null;
                xVar2.f5821s = null;
                xVar2.f5819p = Collections.EMPTY_LIST;
                xVar2.A = null;
                return;
        }
    }
}
