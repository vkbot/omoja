package p094i7;

import android.media.SoundPool;
import com.woha.atir.CameraInfoView;
import p047e0.AbstractC1387m;
import p078h0.C1652b;
import p189s0.C3131c;
import p217v1.C3326d;

/* JADX INFO: renamed from: i7.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1756e implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f4577b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1758g f4578c;

    public /* synthetic */ RunnableC1756e(C1758g c1758g, int i10) {
        this.f4577b = i10;
        this.f4578c = c1758g;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4577b) {
            case 0:
                C1758g c1758g = this.f4578c;
                c1758g.f4592j.setVisibility(8);
                c1758g.f4593k.setVisibility(0);
                return;
            case 1:
                C1758g c1758g2 = this.f4578c;
                CameraInfoView cameraInfoView = c1758g2.f4592j;
                if (cameraInfoView != null) {
                    cameraInfoView.setVisibility(8);
                }
                C1774w c1774w = c1758g2.f4593k;
                if (c1774w != null) {
                    c1774w.setVisibility(0);
                }
                C3326d.m5242a().m5244c().f4640c.postValue(Boolean.TRUE);
                return;
            case 2:
                C1758g c1758g3 = this.f4578c;
                long jCurrentTimeMillis = System.currentTimeMillis();
                synchronized (c1758g3.f4587e) {
                    try {
                        if (!c1758g3.f4588f.isEmpty() && jCurrentTimeMillis - c1758g3.f4596n > 10000) {
                            c1758g3.f4588f.remove();
                            if (c1758g3.f4588f.isEmpty()) {
                                c1758g3.m2877c();
                                c1758g3.m2880g();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                C1758g c1758g4 = this.f4578c;
                c1758g4.getClass();
                int iLoadInt = C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{24, -114, -124, -79, -71, 42, 18, -61, 10, -123, -107, -77, -119, 42, 4, -3, 25, -76, -105, -75, -105, 62, 13, -61, 32, -82, -72}, new byte[]{107, -21, -31, -38, -5, 75, 96, -100}), 0);
                if (iLoadInt > 0) {
                    C3131c c3131c = c1758g4.f4595m;
                    c3131c.getClass();
                    int iMax = Math.max(0, Math.min(iLoadInt, 100));
                    c3131c.f8959e = iMax / 100.0f;
                    if (iMax >= 70) {
                        c3131c.f8960f = 6;
                    } else if (iMax >= 50) {
                        c3131c.f8960f = 4;
                    } else if (iMax >= 30) {
                        c3131c.f8960f = 2;
                    } else {
                        c3131c.f8960f = 1;
                    }
                    C3131c c3131c2 = c1758g4.f4595m;
                    if (c3131c2.f8958d && c3131c2.f8955a != null) {
                        for (int i10 = 0; i10 < c3131c2.f8960f; i10++) {
                            int[] iArr = c3131c2.f8957c;
                            SoundPool soundPool = c3131c2.f8955a;
                            int i11 = c3131c2.f8956b;
                            float f8 = c3131c2.f8959e;
                            iArr[i10] = soundPool.play(i11, f8, f8, 1, 0, 1.0f);
                        }
                    }
                }
                c1758g4.f4583a = false;
                return;
        }
    }
}
