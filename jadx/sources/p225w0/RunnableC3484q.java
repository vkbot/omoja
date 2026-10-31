package p225w0;

import android.media.AudioRecord;
import android.os.Debug;
import android.os.Process;
import android.util.Log;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: w0.q */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3484q implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f10188b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C3498x f10189c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ int f10190d;

    public /* synthetic */ RunnableC3484q(C3498x c3498x, int i10, int i11) {
        this.f10188b = i11;
        this.f10189c = c3498x;
        this.f10190d = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10;
        boolean z9 = true;
        switch (this.f10188b) {
            case 0:
                C3498x c3498x = this.f10189c;
                int i11 = this.f10190d;
                if (c3498x.f10306o || i11 != c3498x.f10309r) {
                    return;
                }
                try {
                    try {
                        Process.setThreadPriority(10);
                        ArrayList arrayListM5550p = c3498x.m5550p();
                        c3498x.m5528Q(arrayListM5550p);
                        if (!c3498x.f10306o && i11 == c3498x.f10309r) {
                            c3498x.f10307p = Collections.unmodifiableList(arrayListM5550p);
                            C3460g1 c3460g1M5551r = c3498x.m5551r();
                            String strM2421h = AbstractC1387m.m2421h(new byte[]{-31, -66, 44, 47, -47, 22, -41, 77, -16, -70, 57, 42, -60}, new byte[]{-126, -33, 88, 78, -67, 121, -80, 18});
                            String strM2421h2 = AbstractC1387m.m2421h(new byte[]{-65, -27, -72, 100, 69, 119, -49, -117, -71, -9}, new byte[]{-36, -124, -42, 0, 44, 19, -82, -1});
                            Integer numValueOf = Integer.valueOf(arrayListM5550p.size());
                            String strM2421h3 = AbstractC1387m.m2421h(new byte[]{114, 36, -38, Base64.padSymbol, -42, 107, 44, 101, 122, 47}, new byte[]{21, 65, -76, 88, -92, 10, 88, 12});
                            Integer numValueOf2 = Integer.valueOf(i11);
                            String strM2421h4 = AbstractC1387m.m2421h(new byte[]{-103, -44, 120, 38, -104, 39, -7, 39, -72, -44, 116, 35, -113}, new byte[]{-22, -79, 21, 71, -10, 83, -112, 68});
                            if (c3498x.f10312u == null || c3498x.f10310s == null) {
                                z9 = false;
                            }
                            c3460g1M5551r.m5422e(strM2421h, strM2421h2, numValueOf, strM2421h3, numValueOf2, strM2421h4, Boolean.valueOf(z9));
                            Log.i(c3498x.f10281a, AbstractC1387m.m2421h(new byte[]{-46, -58, 62, -21, -7, -86, 64, 68, -95, -64, 50, -28, -13, -73, 77, 70, -11, -58, 32, -86, -25, -84, 76, 87, -32, -47, 54, -18, -83, -2}, new byte[]{-127, -93, 83, -118, -105, -34, 41, 39}) + arrayListM5550p.size());
                            if (i11 != i10) {
                                return;
                            }
                        } else if (i11 != i10) {
                            return;
                        }
                    } catch (Exception e) {
                        c3498x.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-98, 56, 58, 120, 10}, new byte[]{-5, 74, 72, 23, 120, 97, 23, 100}), AbstractC1387m.m2421h(new byte[]{117, 59, -122, 2, -47}, new byte[]{6, 79, -25, 101, -76, -22, 48, 48}), AbstractC1387m.m2421h(new byte[]{-84, 114, -16, 22, 96, -78, -3, -7, -65, 97, -31, 7, 109, -81, -1}, new byte[]{-49, 19, -124, 119, 12, -35, -102, -90}), AbstractC1387m.m2421h(new byte[]{-109, 93, -127, -71, 65, -117, 115, 62, -101, 86}, new byte[]{-12, 56, -17, -36, 51, -22, 7, 87}), Integer.valueOf(i11), AbstractC1387m.m2421h(new byte[]{-55, 124, -35, 8}, new byte[]{-67, 5, -83, 109, 90, 56, -27, 56}), e.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-41, 100, 31, -28, -63, -25, -73}, new byte[]{-70, 1, 108, -105, -96, ByteCompanionObject.MIN_VALUE, -46, -81}), e.getMessage());
                        Log.e(c3498x.f10281a, AbstractC1387m.m2421h(new byte[]{40, 52, 118, 99, -37, -87, -24, 23, 31, 123, 115, 125, -38, -7, -25, 10, 14, 123, 112, 106, -46, -24, -24, 12, 2, 56, 35, 108, -34, -25, -30, 17, 15, 58, 119, 106, -52}, new byte[]{107, 91, 3, 15, -65, -119, -122, 120}), e);
                        if (i11 == c3498x.f10309r) {
                            c3498x.f10307p = Collections.EMPTY_LIST;
                        }
                        if (i11 != i10) {
                            return;
                        }
                    }
                    return;
                } finally {
                    if (i11 == c3498x.f10309r) {
                        c3498x.f10308q = false;
                    }
                }
            case 1:
                Toast.makeText(this.f10189c.f10304m, this.f10190d, 1).show();
                return;
            case 2:
                C3498x c3498x2 = this.f10189c;
                int i12 = this.f10190d;
                Process.setThreadPriority(-16);
                while (i12 == c3498x2.f10294g0 && !Thread.currentThread().isInterrupted()) {
                    try {
                        C3490t c3490t = (C3490t) c3498x2.f10291f.poll(250L, TimeUnit.MILLISECONDS);
                        if (c3490t == null) {
                            c3498x2.m5525M();
                            c3498x2.m5549o();
                        } else {
                            boolean z10 = c3498x2.f10274T;
                            long jNanoTime = System.nanoTime();
                            long jThreadCpuTimeNanos = Debug.threadCpuTimeNanos();
                            String strM5530S = c3498x2.m5530S(c3490t.f10210b, c3490t.f10209a);
                            c3498x2.m5551r().m5418a(z10, c3490t.f10211c, System.nanoTime() - jNanoTime, c3498x2.f10291f.size(), Math.max(0L, Debug.threadCpuTimeNanos() - jThreadCpuTimeNanos));
                            c3498x2.m5533V(strM5530S);
                            c3498x2.m5525M();
                            c3498x2.m5549o();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return;
                    } catch (Exception e6) {
                        c3498x2.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{111, -119, 67, -71, 96}, new byte[]{10, -5, 49, -42, 18, 51, -1, -39}), AbstractC1387m.m2421h(new byte[]{-95, 110, 66, -101, -35}, new byte[]{-46, 26, 35, -4, -72, 1, 42, -33}), AbstractC1387m.m2421h(new byte[]{69, 105, -47, 100, -41, 17, -98, 110, 94, 99, -36}, new byte[]{55, 12, -78, 11, -80, ByteCompanionObject.MAX_VALUE, -9, 26}), AbstractC1387m.m2421h(new byte[]{-70, 5, -50, -106}, new byte[]{-50, 124, -66, -13, -72, 91, 107, -10}), e6.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{12, -13, 120, 90, -117, 123, 81}, new byte[]{97, -106, 11, 41, -22, 28, 52, 5}), e6.getMessage());
                        Log.e(c3498x2.f10281a, AbstractC1387m.m2421h(new byte[]{-108, 118, 96, 80, 96, 11, 39, 95, -81, 124, 109, 31, 119, 23, 33, 72, -93, 96, 112, 86, 105, 2, 110, 77, -89, 122, 111, 90, 99}, new byte[]{-58, 19, 3, 63, 7, 101, 78, 43}), e6);
                        if (i12 == c3498x2.f10294g0) {
                            c3498x2.m5535X();
                            return;
                        }
                        return;
                    }
                }
                return;
            default:
                C3498x c3498x3 = this.f10189c;
                int i13 = this.f10190d;
                if (i13 != c3498x3.f10294g0) {
                    return;
                }
                try {
                    AudioRecord audioRecord = c3498x3.f10301k;
                    if (audioRecord != null && audioRecord.getRecordingState() == 3) {
                        AudioRecord audioRecord2 = c3498x3.f10301k;
                        byte[] bArr = c3498x3.f10267M;
                        int i14 = audioRecord2.read(bArr, 0, bArr.length, 0);
                        if (i14 <= 0) {
                            return;
                        }
                        if (C3498x.f10252l0 != EnumC3443b.f9931d) {
                            c3498x3.m5527O(EnumC3443b.f9930c);
                        }
                        c3498x3.m5531T(i14, c3498x3.f10267M);
                        C3490t c3490t2 = new C3490t(Arrays.copyOf(c3498x3.f10267M, i14), i14);
                        if (c3498x3.f10291f.offer(c3490t2)) {
                            return;
                        }
                        c3498x3.f10291f.poll();
                        c3498x3.f10291f.offer(c3490t2);
                        C3460g1 c3460g1M5551r2 = c3498x3.m5551r();
                        int size = c3498x3.f10291f.size();
                        synchronized (c3460g1M5551r2) {
                            try {
                                C3457f1 c3457f1 = c3460g1M5551r2.f9999e == 0 ? c3460g1M5551r2.f9997c : c3460g1M5551r2.f9998d;
                                c3457f1.f9965g++;
                                c3457f1.f9966h = Math.max(c3457f1.f9966h, Math.max(0, size));
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        Log.w(c3498x3.f10281a, AbstractC1387m.m2421h(new byte[]{58, -33, 25, 36, -28, -66, 43, -25, 1, -43, 20, 107, -14, -91, 39, -26, 13, -102, 21, Base64.padSymbol, -26, -94, 36, -1, 7, -51, 65, 107, -20, -68, 38, -10, 27, -50, 90, 42, -10, -76, 43, -4, 72, -34, 8, 36, -13, -96, 39, -9}, new byte[]{104, -70, 122, 75, -125, -48, 66, -109}));
                        return;
                    }
                    if (i13 == c3498x3.f10294g0) {
                        c3498x3.m5535X();
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    c3498x3.m5551r().m5422e(AbstractC1387m.m2421h(new byte[]{-124, 72, -112, 69, -39}, new byte[]{-31, 58, -30, 42, -85, 72, 109, 68}), AbstractC1387m.m2421h(new byte[]{-122, 96, -28, 64, -106}, new byte[]{-11, 20, -123, 39, -13, -105, 69, 77}), AbstractC1387m.m2421h(new byte[]{57, 78, 69, 42, 124, -77, 113, 2, 57, 95}, new byte[]{88, 59, 33, 67, 19, -20, 3, 103}), AbstractC1387m.m2421h(new byte[]{9, 117, 94, -6}, new byte[]{125, 12, 46, -97, 22, 66, -16, -50}), e10.getClass().getSimpleName(), AbstractC1387m.m2421h(new byte[]{-69, -99, 117, 73, -52, 7, -124}, new byte[]{-42, -8, 6, 58, -83, 96, -31, ByteCompanionObject.MIN_VALUE}), e10.getMessage());
                    Log.e(c3498x3.f10281a, AbstractC1387m.m2421h(new byte[]{-26, 77, 76, -110, 97, 28, -98, 32, -56, 91, 77, -120, 125, 85, ByteCompanionObject.MIN_VALUE, 53, -121, 94, 73, -110, 98, 89, -118}, new byte[]{-89, 56, 40, -5, 14, 60, -18, 82}), e10);
                    if (i13 == c3498x3.f10294g0) {
                        c3498x3.m5535X();
                        return;
                    }
                    return;
                }
        }
    }
}
