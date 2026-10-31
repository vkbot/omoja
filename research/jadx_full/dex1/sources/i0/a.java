package i0;

import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f2633b;
    public static final a c;
    public static final a d;
    public static final a e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ a[] f2634f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a aVar = new a(m.h(new byte[]{121, -112, 118, 50, 97, 20, 106, -66, 100, -117, 103, 62, 99, 5, 123, -78, 101, -102, 119, 35}, new byte[]{43, -59, 56, 109, 32, 87, 62, -9}), 0);
        f2633b = aVar;
        a aVar2 = new a(m.h(new byte[]{-110, 117, 27, 85, 110, -84, -43, 66, -113, 110, 10, 72, 96, -96, -43}, new byte[]{-64, 32, 85, 10, 47, -17, -127, 11}), 1);
        c = aVar2;
        a aVar3 = new a(m.h(new byte[]{-58, -51, -60, 115, 90, 76, 28, -74, -37, -42, -43, 105, 85, 72, 1, -79, -47, -57, -39, 120, 90, 91, 13, -96, -37, -42}, new byte[]{-108, -104, -118, 44, 27, 15, 72, -1}), 2);
        d = aVar3;
        a aVar4 = new a(m.h(new byte[]{ByteCompanionObject.MIN_VALUE, 10, 8, 101, -18, -123, -31, 28, -100, 26, 25, 105, -24, -103, -29, 16, -100, 0, 9, 116}, new byte[]{-46, 95, 70, 58, -85, -53, -90, 85}), 3);
        e = aVar4;
        f2634f = new a[]{aVar, aVar2, aVar3, aVar4};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a[] values() {
        return (a[]) f2634f.clone();
    }
}
