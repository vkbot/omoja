package p225w0;

import ai.onnxruntime.OrtSession;
import android.media.AudioRecord;
import android.util.Log;
import java.util.Collections;
import java.util.concurrent.ScheduledFuture;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p078h0.C1652b;

/* JADX INFO: renamed from: w0.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3482p implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10182b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3498x f10183c;

    public /* synthetic */ RunnableC3482p(C3498x c3498x, int i10) {
        this.f10182b = i10;
        this.f10183c = c3498x;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10182b) {
            case 0:
                C3498x c3498x = this.f10183c;
                try {
                    try {
                        C1652b.m2734a();
                        if (C1652b.m2747q() != c3498x) {
                            synchronized (c3498x) {
                                try {
                                    ScheduledFuture scheduledFuture = c3498x.f10295h;
                                    if (scheduledFuture != null) {
                                        scheduledFuture.cancel(false);
                                    }
                                    c3498x.f10295h = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                                break;
                            }
                        } else if (!C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-56, -121, 3, 16, 20, 30, Base64.padSymbol, -62, -51, -106, 30, 42, 42, 6, 62, -12, -24, -96}, new byte[]{-69, -9, 106, 79, 117, 117, 73, -85}), false) && c3498x.f10303l != null && c3498x.m5548n() && System.currentTimeMillis() - c3498x.f10296h0 >= 5000) {
                            ScheduledFuture scheduledFuture2 = c3498x.f10293g;
                            boolean z9 = (scheduledFuture2 == null || scheduledFuture2.isCancelled() || c3498x.f10293g.isDone()) ? false : true;
                            AudioRecord audioRecord = c3498x.f10301k;
                            boolean z10 = audioRecord != null && audioRecord.getState() == 1 && c3498x.f10301k.getRecordingState() == 3;
                            if ((!z9 || !z10) && !c3498x.f10298i0) {
                                c3498x.f10298i0 = true;
                                c3498x.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-83, 78, 93, 114, 108, 24, 16, -45, -72, 116, 76, 120, 109, 8, 24, -49, -85}, new byte[]{-33, 43, 62, 29, 30, 124, 121, -67}), AbstractC1387m.m2421h(new byte[]{114, 125, 48, -73, 16, 90, -107, -79, 99}, new byte[]{6, 28, 67, -36, 81, 54, -4, -57}), Boolean.valueOf(z9), AbstractC1387m.m2421h(new byte[]{-125, -47, ByteCompanionObject.MIN_VALUE, 45, 36, -116, -72, -86, -80, -40, -118, 52, 51}, new byte[]{-15, -76, -29, 66, 86, -24, -35, -40}), Boolean.valueOf(z10));
                                Log.w(c3498x.f10281a, AbstractC1387m.m2421h(new byte[]{102, 60, 112, -45, ByteCompanionObject.MIN_VALUE, -70, 8, 111, 83, 121, 100, -35, -122, -67, 9, 101, 91, 62, 51, -50, -105, -83, 21, 96, 70, 45, 41, -100, -122, -65, 18, 106, 117, 53, 122, -54, -105, -29}, new byte[]{52, 89, 19, -68, -14, -34, 97, 1}) + z9 + AbstractC1387m.m2421h(new byte[]{123, 7, 20, 114, -50, 63, -38, -88, 50, 85, 39, 123, -60, 38, -51, -15}, new byte[]{87, 39, 102, 23, -83, 80, -88, -52}) + z10);
                                c3498x.mo5404c();
                            }
                        }
                    } catch (Exception e) {
                        Log.e(c3498x.f10281a, AbstractC1387m.m2421h(new byte[]{-74, -26, 118, -99, 125, -50, 31, -82, -125, -93, 98, -109, 123, -55, 30, -92, -117, -28, 53, -108, 110, -61, 26, -91, ByteCompanionObject.MIN_VALUE}, new byte[]{-28, -125, 21, -14, 15, -86, 118, -64}), e);
                    }
                    c3498x.f10298i0 = false;
                    return;
                } catch (Throwable th2) {
                    c3498x.f10298i0 = false;
                    throw th2;
                }
            default:
                C3498x c3498x2 = this.f10183c;
                c3498x2.getClass();
                try {
                    OrtSession ortSession = c3498x2.f10312u;
                    if (ortSession != null) {
                        ortSession.close();
                    }
                    break;
                } catch (Exception e6) {
                    Log.w(c3498x2.f10281a, AbstractC1387m.m2421h(new byte[]{22, 81, 90, 117, -69, 66, -7, -69, 33, 30, 76, 117, -80, 17, -14, -12, 38, 91, 66, 120, -79, 22, -2, -73, 117, 77, 74, 106, -84, 11, -8, -70}, new byte[]{85, 62, 47, 25, -33, 98, -105, -44}), e6);
                }
                c3498x2.f10312u = null;
                c3498x2.f10310s = null;
                c3498x2.f10307p = Collections.EMPTY_LIST;
                c3498x2.f10255A = null;
                return;
        }
    }
}
