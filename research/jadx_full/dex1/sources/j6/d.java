package j6;

import androidx.core.location.LocationRequestCompat;
import j.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d[] f3092h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3093a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3094b;
    public final int c;
    public final int d;
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i f3095f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f3096g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        d dVar = new d(1, 10, 10, 8, 8, new i(5, new c6.a(1, 3, 1)));
        d dVar2 = new d(2, 12, 12, 10, 10, new i(7, new c6.a(1, 5, 1)));
        d dVar3 = new d(3, 14, 14, 12, 12, new i(10, new c6.a(1, 8, 1)));
        d dVar4 = new d(4, 16, 16, 14, 14, new i(12, new c6.a(1, 12, 1)));
        d dVar5 = new d(5, 18, 18, 16, 16, new i(14, new c6.a(1, 18, 1)));
        d dVar6 = new d(6, 20, 20, 18, 18, new i(18, new c6.a(1, 22, 1)));
        d dVar7 = new d(7, 22, 22, 20, 20, new i(20, new c6.a(1, 30, 1)));
        d dVar8 = new d(8, 24, 24, 22, 22, new i(24, new c6.a(1, 36, 1)));
        d dVar9 = new d(9, 26, 26, 24, 24, new i(28, new c6.a(1, 44, 1)));
        d dVar10 = new d(10, 32, 32, 14, 14, new i(36, new c6.a(1, 62, 1)));
        d dVar11 = new d(11, 36, 36, 16, 16, new i(42, new c6.a(1, 86, 1)));
        d dVar12 = new d(12, 40, 40, 18, 18, new i(48, new c6.a(1, 114, 1)));
        d dVar13 = new d(13, 44, 44, 20, 20, new i(56, new c6.a(1, 144, 1)));
        d dVar14 = new d(14, 48, 48, 22, 22, new i(68, new c6.a(1, 174, 1)));
        d dVar15 = new d(15, 52, 52, 24, 24, new i(42, new c6.a(2, LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY, 1)));
        d dVar16 = new d(16, 64, 64, 14, 14, new i(56, new c6.a(2, 140, 1)));
        d dVar17 = new d(17, 72, 72, 16, 16, new i(36, new c6.a(4, 92, 1)));
        d dVar18 = new d(18, 80, 80, 18, 18, new i(48, new c6.a(4, 114, 1)));
        d dVar19 = new d(19, 88, 88, 20, 20, new i(56, new c6.a(4, 144, 1)));
        d dVar20 = new d(20, 96, 96, 22, 22, new i(68, new c6.a(4, 174, 1)));
        d dVar21 = new d(21, LocationRequestCompat.QUALITY_LOW_POWER, LocationRequestCompat.QUALITY_LOW_POWER, 24, 24, new i(56, new c6.a(6, 136, 1)));
        d dVar22 = new d(22, 120, 120, 18, 18, new i(68, new c6.a(6, 175, 1)));
        d dVar23 = new d(23, 132, 132, 20, 20, new i(62, new c6.a(8, 163, 1)));
        c6.a aVar = new c6.a(8, 156, 1);
        c6.a aVar2 = new c6.a(2, 155, 1);
        i iVar = new i();
        iVar.f2793b = 62;
        iVar.c = new c6.a[]{aVar, aVar2};
        f3092h = new d[]{dVar, dVar2, dVar3, dVar4, dVar5, dVar6, dVar7, dVar8, dVar9, dVar10, dVar11, dVar12, dVar13, dVar14, dVar15, dVar16, dVar17, dVar18, dVar19, dVar20, dVar21, dVar22, dVar23, new d(24, 144, 144, 22, 22, iVar), new d(25, 8, 18, 6, 16, new i(7, new c6.a(1, 5, 1))), new d(26, 8, 32, 6, 14, new i(11, new c6.a(1, 10, 1))), new d(27, 12, 26, 10, 24, new i(14, new c6.a(1, 16, 1))), new d(28, 12, 36, 10, 16, new i(18, new c6.a(1, 22, 1))), new d(29, 16, 36, 14, 16, new i(24, new c6.a(1, 32, 1))), new d(30, 16, 48, 14, 22, new i(28, new c6.a(1, 49, 1)))};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(int i9, int i10, int i11, int i12, int i13, i iVar) {
        this.f3093a = i9;
        this.f3094b = i10;
        this.c = i11;
        this.d = i12;
        this.e = i13;
        this.f3095f = iVar;
        int i14 = iVar.f2793b;
        int i15 = 0;
        for (c6.a aVar : (c6.a[]) iVar.c) {
            i15 += (aVar.c + i14) * aVar.f501b;
        }
        this.f3096g = i15;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return String.valueOf(this.f3093a);
    }
}
