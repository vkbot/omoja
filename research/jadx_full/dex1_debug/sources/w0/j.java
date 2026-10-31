package w0;

import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ScheduledFuture;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5661b;
    public final /* synthetic */ o c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(o oVar, int i9) {
        this.f5661b = i9;
        this.c = oVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5661b) {
            case 0:
                o oVar = this.c;
                try {
                    try {
                        Process.setThreadPriority(10);
                        ArrayList arrayListL = oVar.l();
                        oVar.C(arrayListL);
                        oVar.f5740n = Collections.unmodifiableList(arrayListL);
                        Log.i(oVar.f5730a, e0.m.h(new byte[]{-78, 27, -30, 54, 59, -2, 1, -31, -63, 29, -18, 57, 49, -29, 12, -29, -107, 27, -4, 119, 37, -8, 13, -14, ByteCompanionObject.MIN_VALUE, 12, -22, 51, 111, -86}, new byte[]{-31, 126, -113, 87, 85, -118, 104, -126}) + arrayListL.size());
                    } finally {
                        oVar.f5741o = false;
                    }
                    break;
                } catch (Exception e) {
                    Log.e(oVar.f5730a, e0.m.h(new byte[]{19, 76, -58, -103, -45, 27, 67, -20, 36, 3, -61, -121, -46, 75, 76, -15, 53, 3, -64, -112, -38, 90, 67, -9, 57, 64, -109, -106, -42, 85, 73, -22, 52, 66, -57, -112, -60}, new byte[]{80, 35, -77, -11, -73, 59, 45, -125}), e);
                    oVar.f5740n = Collections.EMPTY_LIST;
                }
                return;
            default:
                o oVar2 = this.c;
                try {
                    try {
                        h0.b.a();
                        if (h0.b.q() != oVar2) {
                            synchronized (oVar2) {
                                try {
                                    ScheduledFuture scheduledFuture = oVar2.f5734h;
                                    if (scheduledFuture != null) {
                                        scheduledFuture.cancel(false);
                                    }
                                    oVar2.f5734h = null;
                                } catch (Throwable th) {
                                    throw th;
                                }
                                break;
                            }
                        } else if (!h0.b.o().loadBoolean(e0.m.h(new byte[]{-114, 117, 122, 14, 100, 49, 52, -112, -117, 100, 103, 52, 90, 41, 55, -90, -82, 82}, new byte[]{-3, 5, 19, 81, 5, 90, 64, -7}), false) && oVar2.f5738l != null && oVar2.j() && System.currentTimeMillis() - oVar2.P >= 5000) {
                            ScheduledFuture scheduledFuture2 = oVar2.f5733g;
                            boolean z8 = (scheduledFuture2 == null || scheduledFuture2.isCancelled() || oVar2.f5733g.isDone()) ? false : true;
                            AudioRecord audioRecord = oVar2.f5737k;
                            boolean z9 = audioRecord != null && audioRecord.getState() == 1 && oVar2.f5737k.getRecordingState() == 3;
                            if ((!z8 || !z9) && !oVar2.Q) {
                                oVar2.Q = true;
                                Log.w(oVar2.f5730a, e0.m.h(new byte[]{-66, -111, 62, 24, -66, 111, -83, 126, -117, -44, 42, 22, -72, 104, -84, 116, -125, -109, 125, 5, -87, 120, -80, 113, -98, ByteCompanionObject.MIN_VALUE, 103, 87, -72, 106, -73, 123, -83, -104, 52, 1, -87, 54}, new byte[]{-20, -12, 93, 119, -52, 11, -60, 16}) + z8 + e0.m.h(new byte[]{-7, -127, 115, -114, 6, 39, 85, -70, -80, -45, 64, -121, 12, 62, 66, -29}, new byte[]{-43, -95, 1, -21, 101, 72, 39, -34}) + z9);
                                oVar2.c();
                            }
                        }
                    } catch (Exception e6) {
                        Log.e(oVar2.f5730a, e0.m.h(new byte[]{54, 92, 66, ByteCompanionObject.MAX_VALUE, 36, 108, -95, 40, 3, 25, 86, 113, 34, 107, -96, 34, 11, 94, 1, 118, 55, 97, -92, 35, 0}, new byte[]{100, 57, 33, 16, 86, 8, -56, 70}), e6);
                    }
                    oVar2.Q = false;
                    return;
                } catch (Throwable th2) {
                    oVar2.Q = false;
                    throw th2;
                }
        }
    }
}
