package p241x6;

import java.util.ArrayList;
import p063f6.C1578b;
import p260z5.InterfaceC3760p;

/* JADX INFO: renamed from: x6.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3583e {

    /* JADX INFO: renamed from: f */
    public static final C3582d f10647f = new C3582d();

    /* JADX INFO: renamed from: a */
    public final C1578b f10648a;

    /* JADX INFO: renamed from: c */
    public boolean f10650c;

    /* JADX INFO: renamed from: e */
    public final InterfaceC3760p f10652e;

    /* JADX INFO: renamed from: b */
    public final ArrayList f10649b = new ArrayList();

    /* JADX INFO: renamed from: d */
    public final int[] f10651d = new int[5];

    public C3583e(C1578b c1578b, InterfaceC3760p interfaceC3760p) {
        this.f10648a = c1578b;
        this.f10652e = interfaceC3760p;
    }

    /* JADX INFO: renamed from: a */
    public static float m5707a(int[] iArr, int i10) {
        return ((i10 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    /* JADX INFO: renamed from: b */
    public static boolean m5708b(int[] iArr) {
        int i10 = 0;
        for (int i11 = 0; i11 < 5; i11++) {
            int i12 = iArr[i11];
            if (i12 == 0) {
                return false;
            }
            i10 += i12;
        }
        if (i10 >= 7) {
            float f8 = i10 / 7.0f;
            float f10 = f8 / 2.0f;
            if (Math.abs(f8 - iArr[0]) < f10 && Math.abs(f8 - iArr[1]) < f10 && Math.abs((f8 * 3.0f) - iArr[2]) < 3.0f * f10 && Math.abs(f8 - iArr[3]) < f10 && Math.abs(f8 - iArr[4]) < f10) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: e */
    public static double m5709e(C3581c c3581c, C3581c c3581c2) {
        double d = c3581c.f11214a - c3581c2.f11214a;
        double d10 = c3581c.f11215b - c3581c2.f11215b;
        return (d10 * d10) + (d * d);
    }

    /* JADX WARN: Code duplicated, block: B:65:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:72:0x010b A[ADDED_TO_REGION, LOOP:10: B:72:0x010b->B:77:0x0117, LOOP_START, PHI: r11
  0x010b: PHI (r11v5 int) = (r11v4 int), (r11v20 int) binds: [B:70:0x0105, B:77:0x0117] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r2v31 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayList] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:72:0x010b
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX INFO: renamed from: c */
    public final boolean m5710c(int r20, int r21, int[] r22) {
        /*
            Method dump skipped, instruction units count: 812
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p241x6.C3583e.m5710c(int, int, int[]):boolean");
    }

    /* JADX INFO: renamed from: d */
    public final boolean m5711d() {
        ArrayList arrayList = this.f10649b;
        int size = arrayList.size();
        int size2 = arrayList.size();
        float fAbs = 0.0f;
        int i10 = 0;
        int i11 = 0;
        float f8 = 0.0f;
        while (i11 < size2) {
            Object obj = arrayList.get(i11);
            i11++;
            C3581c c3581c = (C3581c) obj;
            if (c3581c.f10646d >= 2) {
                i10++;
                f8 += c3581c.f10645c;
            }
        }
        if (i10 >= 3) {
            float f10 = f8 / size;
            int size3 = arrayList.size();
            int i12 = 0;
            while (i12 < size3) {
                Object obj2 = arrayList.get(i12);
                i12++;
                fAbs += Math.abs(((C3581c) obj2).f10645c - f10);
            }
            if (fAbs <= f8 * 0.05f) {
                return true;
            }
        }
        return false;
    }
}
