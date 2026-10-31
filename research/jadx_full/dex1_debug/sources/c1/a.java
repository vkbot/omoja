package c1;

import e0.m;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f413b;
    public static final a c;
    public static final a d;
    public static final /* synthetic */ a[] e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        a aVar = new a(m.h(new byte[]{78, 11, -121, -46}, new byte[]{29, 78, -55, -122, -109, -19, 93, -77}), 0);
        f413b = aVar;
        a aVar2 = new a(m.h(new byte[]{101, 90, -106, -114, 88, -120, 117, -46, 103, 84, ByteCompanionObject.MIN_VALUE, -99, 92}, new byte[]{43, 21, -62, -47, 25, -34, 52, -101}), 1);
        c = aVar2;
        a aVar3 = new a(m.h(new byte[]{-66, 90, -22, -58, 88, 94, -27, 67, -95, 81, -25, -49, 84, 67, -1, 79, -86}, new byte[]{-18, 31, -72, -117, 17, 13, -74, 10}), 2);
        d = aVar3;
        e = new a[]{aVar, aVar2, aVar3};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a valueOf(String str) {
        return (a) Enum.valueOf(a.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static a[] values() {
        return (a[]) e.clone();
    }
}
