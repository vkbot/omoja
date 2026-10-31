package e0;

import com.example.navistart.cores.HUDMassageObj;
import com.example.navistart.cores.HUDMassageObj$HudSenderType;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class y implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2004b;
    public final /* synthetic */ a0 c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ y(a0 a0Var, int i9) {
        this.f2004b = i9;
        this.c = a0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2004b) {
            case 0:
                a0 a0Var = this.c;
                a0Var.f1805b = Boolean.valueOf(h0.b.o().loadBoolean(m.h(new byte[]{4, 99, 6, -48, 82}, new byte[]{84, 17, 105, -125, 5, 81, -115, 95}), false));
                a0Var.d();
                if (a0Var.f1805b.booleanValue() && a0.f1800i.booleanValue() && a0.f1801j.booleanValue()) {
                    a0Var.g();
                }
                synchronized (a0Var) {
                    try {
                        ScheduledFuture scheduledFuture = a0.f1799h;
                        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                            a0.f1799h.cancel(true);
                        }
                        a0.f1799h = a0Var.f1804a.scheduleWithFixedDelay(new y(a0Var, 2), 10L, 100L, TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                a0 a0Var2 = this.c;
                if (a0.f1801j.booleanValue() && a0.f1800i.booleanValue()) {
                    synchronized (a0Var2) {
                        h0.b.a();
                        h0.b.a();
                        h0.b.r().StopHUD();
                        h0.b.o().saveBoolean(m.h(new byte[]{63, 34, 64, 97, -101}, new byte[]{111, 80, 47, 50, -52, 19, -7, -65}), false);
                    }
                    h0.b.o().saveBoolean(m.h(new byte[]{43, -58, 58, 115, 30}, new byte[]{123, -76, 85, 32, 73, 78, 55, -59}), false);
                    return;
                }
                return;
            default:
                a0 a0Var3 = this.c;
                HUDMassageObj hUDMassageObj = (HUDMassageObj) a0Var3.c.poll();
                if (hUDMassageObj != null) {
                    synchronized (a0Var3) {
                        if (hUDMassageObj.equals(a0.f1802k)) {
                            int i9 = a0.f1803l;
                            if (i9 <= 0) {
                                return;
                            } else {
                                a0.f1803l = i9 - 1;
                            }
                        } else {
                            if (HUDMassageObj$HudSenderType.ARAD.equals(hUDMassageObj.hudSenderType)) {
                                a0.f1803l = 3;
                            }
                            if (HUDMassageObj$HudSenderType.NAVI.equals(hUDMassageObj.hudSenderType)) {
                                a0.f1803l = 0;
                            }
                            a0.f1802k = hUDMassageObj.copy(hUDMassageObj);
                        }
                        a0Var3.f1805b = Boolean.valueOf(h0.b.o().loadBoolean(m.h(new byte[]{-3, -93, -41, 48, 43}, new byte[]{-83, -47, -72, 99, 124, 100, 11, 82}), false));
                        String string = n0.a.valueOf(a0Var3.f1807g).c.toString();
                        if (HUDMassageObj$HudSenderType.NAVI.equals(hUDMassageObj.hudSenderType)) {
                            if (a0Var3.f1806f) {
                                a0Var3.c(hUDMassageObj, Boolean.valueOf(a0Var3.e));
                            }
                            h0.b.a();
                            h0.b.a();
                            k1.a aVarP = h0.b.p();
                            if (aVarP != null) {
                                aVarP.a(hUDMassageObj);
                            }
                        } else if (HUDMassageObj$HudSenderType.ARAD.equals(hUDMassageObj.hudSenderType) && string.equals(hUDMassageObj.aradarSenderType.toString())) {
                            a0Var3.b(hUDMassageObj, Boolean.valueOf(a0Var3.d), Boolean.valueOf(a0Var3.e));
                            h0.b.a();
                            h0.b.a();
                            k1.a aVarP2 = h0.b.p();
                            if (aVarP2 != null) {
                                aVarP2.a(hUDMassageObj);
                            }
                        }
                        return;
                    }
                }
                return;
        }
    }
}
