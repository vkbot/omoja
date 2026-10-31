package n0;

import e0.m;
import kotlin.io.encoding.Base64;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f3847b;
    public static final g c;
    public static final g d;
    public static final g e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ g[] f3848f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        g gVar = new g(m.h(new byte[]{-22, Base64.padSymbol, 21, 16}, new byte[]{-70, 113, 84, 73, -1, 74, -103, -51}), 0);
        f3847b = gVar;
        g gVar2 = new g(m.h(new byte[]{56, 74, 9, -12, 19}, new byte[]{104, 11, 92, -89, 86, 64, -23, -19}), 1);
        c = gVar2;
        g gVar3 = new g(m.h(new byte[]{-80, 23, 8, -63}, new byte[]{-2, 82, 80, -107, -46, 101, -59, -104}), 2);
        d = gVar3;
        g gVar4 = new g(m.h(new byte[]{-124, -9, 102, -41}, new byte[]{-58, -74, 37, -100, -31, 90, -51, 71}), 3);
        e = gVar4;
        f3848f = new g[]{gVar, gVar2, gVar3, gVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static g[] values() {
        return (g[]) f3848f.clone();
    }
}
