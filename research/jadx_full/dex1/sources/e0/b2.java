package e0;

import kotlin.jvm.internal.ByteCompanionObject;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b2 f1813b;
    public static final b2 c;
    public static final /* synthetic */ b2[] d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        b2 b2Var = new b2(m.h(new byte[]{-103, -115, ByteCompanionObject.MIN_VALUE, 35}, new byte[]{-47, -56, -63, 119, 119, -25, -32, -111}), 0);
        f1813b = b2Var;
        b2 b2Var2 = new b2(m.h(new byte[]{106, 112, 19, -77, -78}, new byte[]{41, 63, 92, -1, -9, -124, 63, -58}), 1);
        c = b2Var2;
        d = new b2[]{b2Var, b2Var2};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b2 valueOf(String str) {
        return (b2) Enum.valueOf(b2.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b2[] values() {
        return (b2[]) d.clone();
    }
}
