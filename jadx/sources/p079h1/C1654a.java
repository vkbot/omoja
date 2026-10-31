package p079h1;

import android.content.Intent;
import android.os.Bundle;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p047e0.AbstractC1434w;
import p047e0.RunnableC1431v0;
import p078h0.C1652b;
import p088i0.EnumC1737a;
import p088i0.InterfaceC1738b;

/* JADX INFO: renamed from: h1.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1654a implements InterfaceC1738b {

    /* JADX INFO: renamed from: c */
    public static boolean f4215c = false;

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f4216a;

    /* JADX INFO: renamed from: b */
    public String f4217b;

    public C1654a(int i10) {
        this.f4216a = i10;
        switch (i10) {
            case 1:
                this.f4217b = AbstractC1387m.m2421h(new byte[]{41, 87, 19, -2, 50, 56, -85, -9, 34, 83, 4, -4, 42, 101, -67, -85, 32, 83, 16, -79, 38, 115, -67, -32, 63, 28, 9, -15, 63, 115, -69, -28, 46, 70, 9, -16, 37}, new byte[]{77, 50, 96, -97, 75, 22, -55, -123});
                break;
            case 2:
                this.f4217b = AbstractC1387m.m2421h(new byte[]{6, 104, 81, 85, -32, -45, 56, -90, 13, 108, 70, 87, -8, -114, 46, -6, 15, 108, 82, 26, -12, -104, 46, -79, 16, 35, 75, 90, -19, -104, 40, -75, 1, 121, 75, 91, -9}, new byte[]{98, 13, 34, 52, -103, -3, 90, -44});
                break;
            case 3:
                break;
            case 4:
                this.f4217b = AbstractC1387m.m2421h(new byte[]{-32, -78, -118, 76, 98, 122, 5, 119, -2, -76, -118, 66, 98, ByteCompanionObject.MAX_VALUE, 18, 108, -27, -72, -100, 81, 99, 122, 23, 125, -32, -76, -118, 92, 126, 126, 16, 104}, new byte[]{-95, -25, -34, 3, 44, 59, 83, 62});
                break;
            default:
                this.f4217b = AbstractC1387m.m2421h(new byte[]{7, -101, 38, 46, 38, -97, -77, -42, 12, -97, 49, 44, 62, -62, -91, -118, 14, -97, 37, 97, 50, -44, -91, -63, 17, -48, 60, 33, 43, -44, -93, -59, 0, -118, 60, 32, 49}, new byte[]{99, -2, 85, 79, 95, -79, -47, -92});
                break;
        }
    }

    @Override // p088i0.InterfaceC1738b
    /* JADX INFO: renamed from: a */
    public final void mo2693a(Intent intent) {
        switch (this.f4216a) {
            case 0:
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    extras.getInt(AbstractC1387m.m2421h(new byte[]{54, 114, -92, 50, 48, -96, 12, -84}, new byte[]{91, 19, -44, 109, 81, -46, 105, -51}));
                    int i10 = extras.getInt(AbstractC1387m.m2421h(new byte[]{41, 126, -67, 62, 10, -50, 83, 116, 49, 108}, new byte[]{68, 31, -51, 97, 121, -70, 50, 0}));
                    if (i10 == 1) {
                        C1652b.m2734a();
                        C1652b.m2735c().OpenProPri();
                    }
                    if (i10 == 0 && C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-97, 90, -79, 64, 92, 87, 27, 46}, new byte[]{-2, 40, -44, 33, 30, 56, 116, 90}), 1) != 2) {
                        C1652b.m2734a();
                        C1652b.m2735c().OpenProGu();
                        break;
                    }
                }
                break;
            case 1:
                String action = intent.getAction();
                if (action != null && action.equals(EnumC1737a.f4527e.name())) {
                    m2758d(1000);
                } else {
                    Bundle extras2 = intent.getExtras();
                    if (extras2 != null) {
                        int i11 = extras2.getInt(AbstractC1387m.m2421h(new byte[]{120, -105, 17, -113, -3, -113, -56, 1}, new byte[]{21, -10, 97, -48, -100, -3, -83, 96}));
                        int i12 = extras2.getInt(AbstractC1387m.m2421h(new byte[]{-78, 123, 77, -126, 6, -74, -64, -29, -86, 105}, new byte[]{-33, 26, Base64.padSymbol, -35, 117, -62, -95, -105}));
                        if (!f4215c) {
                            if (i11 == 1) {
                                if (C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-17, 60, 89, 8, -24, -51, 85, 105}, new byte[]{-114, 78, 60, 105, -86, -94, 58, 29}), 1) != 1) {
                                    C1652b.m2734a();
                                    C1652b.m2735c().OpenProPri();
                                }
                            } else if (i11 == 2 && C1652b.m2745o().loadInt(AbstractC1387m.m2421h(new byte[]{-116, 41, -32, -19, 124, -46, 82, 37}, new byte[]{-19, 91, -123, -116, 62, -67, Base64.padSymbol, 81}), 1) == 1) {
                                C1652b.m2734a();
                                C1652b.m2735c().OpenProGu();
                            }
                        }
                        if (i12 == 0) {
                            f4215c = true;
                            C1652b.m2745o().saveInt(AbstractC1387m.m2421h(new byte[]{-111, -120, -53, -7, 74, -5, -7, 115}, new byte[]{-16, -6, -82, -104, 8, -108, -106, 7}), 2);
                        }
                        if (i12 == 1) {
                            if (f4215c) {
                                m2758d(10000);
                            }
                            f4215c = false;
                        }
                    }
                }
                break;
            case 2:
                String action2 = intent.getAction();
                if (action2 != null && action2.equals(EnumC1737a.f4527e.name())) {
                    boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{-62, 16, 74, -62, 48, -70, -31, -77, -36, 55, 69, -46, 49, -88, -25, -88}, new byte[]{-79, 103, 21, -127, 69, -55, -107, -36}), false);
                    TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                    if (zLoadBoolean) {
                        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-127, -54, 30, 85, 0, 49, -55, 51, -87, -63, 6, 100, 81}, new byte[]{-52, -77, 76, 48, 99, 84, -96, 69})).schedule(new RunnableC1431v0(20, this), 1000L, timeUnit);
                    } else if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{10, 65, 103, 55}, new byte[]{104, 46, 8, 67, -17, -10, -57, 41}), false)) {
                        AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{59, 71, -5, 6, -56, -15, 94, -27, 19, 76, -29, 55, -103}, new byte[]{118, 62, -87, 99, -85, -108, 55, -109})).schedule(new RunnableC1431v0(21, this), 1000L, timeUnit);
                    }
                    break;
                }
                break;
            case 3:
                intent.getExtras();
                break;
            default:
                intent.getExtras();
                break;
        }
    }

    @Override // p088i0.InterfaceC1738b
    /* JADX INFO: renamed from: b */
    public final String mo2694b() {
        switch (this.f4216a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
        }
        return this.f4217b;
    }

    @Override // p088i0.InterfaceC1738b
    /* JADX INFO: renamed from: c */
    public final EnumC1737a mo2695c() {
        switch (this.f4216a) {
            case 0:
                return EnumC1737a.f4525c;
            case 1:
                return EnumC1737a.f4524b;
            case 2:
                return EnumC1737a.f4524b;
            case 3:
                return EnumC1737a.f4526d;
            default:
                return EnumC1737a.f4525c;
        }
    }

    /* JADX INFO: renamed from: d */
    public void m2758d(int i10) {
        boolean zLoadBoolean = C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{0, -125, 41, -30, 29, -114, 102, -56, 30, -92, 38, -14, 28, -100, 96, -45}, new byte[]{115, -12, 118, -95, 104, -3, 18, -89}), false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (zLoadBoolean) {
            AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-6, 111, -88, 96, -125, 101, 79, -40, -46, 100, -80}, new byte[]{-73, 22, -6, 5, -32, 0, 38, -82})).schedule(new RunnableC1431v0(18, this), i10, timeUnit);
        } else if (C1652b.m2745o().loadBoolean(AbstractC1387m.m2421h(new byte[]{6, -54, 14, 72}, new byte[]{100, -91, 97, 60, -56, 10, 24, 112}), false)) {
            AbstractC1434w.m2482c(-1, AbstractC1387m.m2421h(new byte[]{-56, -47, 53, 21, 101, 54, -21, 33, -32, -38, 45}, new byte[]{-123, -88, 103, 112, 6, 83, -126, 87})).schedule(new RunnableC1431v0(19, this), i10, timeUnit);
        }
    }
}
