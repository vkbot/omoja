package i7;

import android.media.SoundPool;
import com.woha.atir.CameraInfoView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2673b;
    public final /* synthetic */ g c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ e(g gVar, int i9) {
        this.f2673b = i9;
        this.c = gVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2673b) {
            case 0:
                g gVar = this.c;
                gVar.f2682j.setVisibility(8);
                gVar.f2683k.setVisibility(0);
                return;
            case 1:
                g gVar2 = this.c;
                CameraInfoView cameraInfoView = gVar2.f2682j;
                if (cameraInfoView != null) {
                    cameraInfoView.setVisibility(8);
                }
                w wVar = gVar2.f2683k;
                if (wVar != null) {
                    wVar.setVisibility(0);
                }
                v1.d.a().c().c.postValue(Boolean.TRUE);
                return;
            case 2:
                g gVar3 = this.c;
                long jCurrentTimeMillis = System.currentTimeMillis();
                synchronized (gVar3.e) {
                    try {
                        if (!gVar3.f2678f.isEmpty() && jCurrentTimeMillis - gVar3.f2686n > 10000) {
                            gVar3.f2678f.remove();
                            if (gVar3.f2678f.isEmpty()) {
                                gVar3.c();
                                gVar3.g();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                g gVar4 = this.c;
                gVar4.getClass();
                int iLoadInt = h0.b.o().loadInt(e0.m.h(new byte[]{24, -114, -124, -79, -71, 42, 18, -61, 10, -123, -107, -77, -119, 42, 4, -3, 25, -76, -105, -75, -105, 62, 13, -61, 32, -82, -72}, new byte[]{107, -21, -31, -38, -5, 75, 96, -100}), 0);
                if (iLoadInt > 0) {
                    s0.c cVar = gVar4.f2685m;
                    cVar.getClass();
                    int iMax = Math.max(0, Math.min(iLoadInt, 100));
                    cVar.e = iMax / 100.0f;
                    if (iMax >= 70) {
                        cVar.f5048f = 6;
                    } else if (iMax >= 50) {
                        cVar.f5048f = 4;
                    } else if (iMax >= 30) {
                        cVar.f5048f = 2;
                    } else {
                        cVar.f5048f = 1;
                    }
                    s0.c cVar2 = gVar4.f2685m;
                    if (cVar2.d && cVar2.f5046a != null) {
                        for (int i9 = 0; i9 < cVar2.f5048f; i9++) {
                            int[] iArr = cVar2.c;
                            SoundPool soundPool = cVar2.f5046a;
                            int i10 = cVar2.f5047b;
                            float f8 = cVar2.e;
                            iArr[i9] = soundPool.play(i10, f8, f8, 1, 0, 1.0f);
                        }
                    }
                }
                gVar4.f2676a = false;
                return;
        }
    }
}
