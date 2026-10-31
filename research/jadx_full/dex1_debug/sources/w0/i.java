package w0;

import android.media.AudioRecord;
import android.os.Process;
import android.util.Log;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5652b;
    public final /* synthetic */ o c;
    public final /* synthetic */ int d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ i(o oVar, int i9, int i10) {
        this.f5652b = i10;
        this.c = oVar;
        this.d = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5652b) {
            case 0:
                o oVar = this.c;
                int i9 = this.d;
                Process.setThreadPriority(-16);
                while (i9 == oVar.O && !Thread.currentThread().isInterrupted()) {
                    try {
                        k kVar = (k) oVar.f5732f.poll(250L, TimeUnit.MILLISECONDS);
                        if (kVar == null) {
                            oVar.x();
                            oVar.k();
                        } else {
                            oVar.H(oVar.E(kVar.f5669b, kVar.f5668a));
                            oVar.x();
                            oVar.k();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return;
                    } catch (Exception e) {
                        Log.e(oVar.f5730a, e0.m.h(new byte[]{-16, 86, 78, -17, -64, 20, -18, -79, -53, 92, 67, -96, -41, 8, -24, -90, -57, 64, 94, -23, -55, 29, -89, -93, -61, 90, 65, -27, -61}, new byte[]{-94, 51, 45, ByteCompanionObject.MIN_VALUE, -89, 122, -121, -59}), e);
                        if (i9 == oVar.O) {
                            oVar.J();
                            return;
                        }
                        return;
                    }
                }
                break;
            default:
                o oVar2 = this.c;
                int i10 = this.d;
                if (i10 == oVar2.O) {
                    try {
                        AudioRecord audioRecord = oVar2.f5737k;
                        if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                            AudioRecord audioRecord2 = oVar2.f5737k;
                            byte[] bArr = oVar2.f5745u;
                            int i11 = audioRecord2.read(bArr, 0, bArr.length, 0);
                            if (i11 > 0) {
                                if (o.T != b.d) {
                                    oVar2.z(b.c);
                                }
                                oVar2.F(i11, oVar2.f5745u);
                                k kVar2 = new k(Arrays.copyOf(oVar2.f5745u, i11), i11);
                                if (!oVar2.f5732f.offer(kVar2)) {
                                    oVar2.f5732f.poll();
                                    oVar2.f5732f.offer(kVar2);
                                    Log.w(oVar2.f5730a, e0.m.h(new byte[]{123, -44, -120, 62, -108, 24, -22, -8, 64, -34, -123, 113, -126, 3, -26, -7, 76, -111, -124, 39, -106, 4, -27, -32, 70, -58, -48, 113, -100, 26, -25, -23, 90, -59, -53, 48, -122, 18, -22, -29, 9, -43, -103, 62, -125, 6, -26, -24}, new byte[]{41, -79, -21, 81, -13, 118, -125, -116}));
                                }
                            }
                        }
                        if (i10 == oVar2.O) {
                            oVar2.J();
                        }
                    } catch (Exception e6) {
                        Log.e(oVar2.f5730a, e0.m.h(new byte[]{87, -15, 59, -67, 18, -100, 122, -72, 121, -25, 58, -89, 14, -43, 100, -83, 54, -30, 62, -67, 17, -39, 110}, new byte[]{22, -124, 95, -44, 125, -68, 10, -54}), e6);
                        if (i10 == oVar2.O) {
                            oVar2.J();
                        }
                        return;
                    }
                    break;
                }
                break;
        }
    }
}
