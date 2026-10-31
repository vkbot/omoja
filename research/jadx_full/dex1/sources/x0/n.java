package x0;

import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n f6000b;
    public static final n c;
    public static final n d;
    public static final n e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final n f6001f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ n[] f6002g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        n nVar = new n(e0.m.h(new byte[]{-50, 86, -74, 104, -10, 112}, new byte[]{-116, 3, -30, 60, -71, 62, -68, -97}), 0);
        f6000b = nVar;
        n nVar2 = new n(e0.m.h(new byte[]{-113, 40, 108, -26, -82, -115}, new byte[]{-36, ByteCompanionObject.MAX_VALUE, 37, -78, -19, -59, 122, -125}), 1);
        c = nVar2;
        n nVar3 = new n(e0.m.h(new byte[]{116, 32, -51, -65, 34, 17, 13, 63, 106, 32, -34}, new byte[]{60, 101, -116, -21, 125, 85, 95, 118}), 2);
        d = nVar3;
        n nVar4 = new n(e0.m.h(new byte[]{-78, -98, 116, 50, -8, 54, -116, -17, -78, -98, 104}, new byte[]{-28, -37, 58, 102, -89, 114, -34, -90}), 3);
        e = nVar4;
        n nVar5 = new n(e0.m.h(new byte[]{-6, -68, -122, 105, 73, -42, 106, -67, -31, -68, -119, 122, 83, -44}, new byte[]{-78, -7, -57, Base64.padSymbol, 22, -122, 43, -18}), 4);
        f6001f = nVar5;
        f6002g = new n[]{nVar, nVar2, nVar3, nVar4, nVar5, new n(e0.m.h(new byte[]{-65, 113, -96, -43, 48, -38, 37, 17, -70, 113, -96, -58, 42, -40}, new byte[]{-23, 52, -18, -127, 111, -118, 100, 66}), 5)};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static n[] values() {
        return (n[]) f6002g.clone();
    }
}
