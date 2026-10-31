package p047e0;

import com.example.navistart.cores.HUDMassageObj;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p078h0.C1652b;
import p110k1.C2028a;
import p142n0.EnumC2466a;

/* JADX INFO: renamed from: e0.y */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1442y implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3492b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C1328a0 f3493c;

    public /* synthetic */ RunnableC1442y(C1328a0 c1328a0, int i10) {
        this.f3492b = i10;
        this.f3493c = c1328a0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3492b) {
            case 0:
                C1328a0 c1328a0 = this.f3493c;
                c1328a0.f3170b = Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{4, 99, 6, -48, 82}, new byte[]{84, 17, 105, -125, 5, 81, -115, 95}), false));
                c1328a0.m2368d();
                if (c1328a0.f3170b.booleanValue() && C1328a0.f3165i.booleanValue() && C1328a0.f3166j.booleanValue()) {
                    c1328a0.m2371g();
                }
                synchronized (c1328a0) {
                    try {
                        ScheduledFuture scheduledFuture = C1328a0.f3164h;
                        if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                            C1328a0.f3164h.cancel(true);
                        }
                        C1328a0.f3164h = c1328a0.f3169a.scheduleWithFixedDelay(new RunnableC1442y(c1328a0, 2), 10L, 100L, TimeUnit.MILLISECONDS);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                C1328a0 c1328a1 = this.f3493c;
                if (C1328a0.f3166j.booleanValue() && C1328a0.f3165i.booleanValue()) {
                    synchronized (c1328a1) {
                        C1652b.m2734a();
                        C1652b.m2734a();
                        C1652b.m2748r().StopHUD();
                        C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{63, 34, 64, 97, -101}, new byte[]{111, 80, 47, 50, -52, 19, -7, -65}), false);
                    }
                    C1652b.m2745o().saveBoolean(AbstractC1387m.m2421h(new byte[]{43, -58, 58, 115, 30}, new byte[]{123, -76, 85, 32, 73, 78, 55, -59}), false);
                    return;
                }
                return;
            default:
                C1328a0 c1328a2 = this.f3493c;
                HUDMassageObj hUDMassageObj = (HUDMassageObj) c1328a2.f3171c.poll();
                if (hUDMassageObj != null) {
                    synchronized (c1328a2) {
                        if (hUDMassageObj.equals(C1328a0.f3167k)) {
                            int i10 = C1328a0.f3168l;
                            if (i10 <= 0) {
                                return;
                            } else {
                                C1328a0.f3168l = i10 - 1;
                            }
                        } else {
                            if (HUDMassageObj.HudSenderType.ARAD.equals(hUDMassageObj.hudSenderType)) {
                                C1328a0.f3168l = 3;
                            }
                            if (HUDMassageObj.HudSenderType.NAVI.equals(hUDMassageObj.hudSenderType)) {
                                C1328a0.f3168l = 0;
                            }
                            C1328a0.f3167k = hUDMassageObj.copy(hUDMassageObj);
                        }
                        c1328a2.f3170b = Boolean.valueOf(C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-3, -93, -41, 48, 43}, new byte[]{-83, -47, -72, 99, 124, 100, 11, 82}), false));
                        String string = EnumC2466a.valueOf(c1328a2.f3175g).f6678c.toString();
                        if (HUDMassageObj.HudSenderType.NAVI.equals(hUDMassageObj.hudSenderType)) {
                            if (c1328a2.f3174f) {
                                c1328a2.m2367c(hUDMassageObj, Boolean.valueOf(c1328a2.f3173e));
                            }
                            C1652b.m2734a();
                            C1652b.m2734a();
                            C2028a c2028aM2746p = C1652b.m2746p();
                            if (c2028aM2746p != null) {
                                c2028aM2746p.m3129a(hUDMassageObj);
                            }
                        } else if (HUDMassageObj.HudSenderType.ARAD.equals(hUDMassageObj.hudSenderType) && string.equals(hUDMassageObj.aradarSenderType.toString())) {
                            c1328a2.m2366b(hUDMassageObj, Boolean.valueOf(c1328a2.f3172d), Boolean.valueOf(c1328a2.f3173e));
                            C1652b.m2734a();
                            C1652b.m2734a();
                            C2028a c2028aM2746p2 = C1652b.m2746p();
                            if (c2028aM2746p2 != null) {
                                c2028aM2746p2.m3129a(hUDMassageObj);
                            }
                        }
                        return;
                    }
                }
                return;
        }
    }
}
