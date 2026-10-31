package i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.ULong;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class a2 implements e9.b {
    public static final a2 a = new a2();
    public static final h0 b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        LongCompanionObject.INSTANCE.getClass();
        b = d1.a("kotlin.ULong", q0.a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        return b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        bVar.encodeInline(b).encodeLong(((ULong) obj).unbox-impl());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        return ULong.box-impl(ULong.constructor-impl(routeDecoder.decodeInline(b).decodeLong()));
    }
}
