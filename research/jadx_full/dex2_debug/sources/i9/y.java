package i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.time.Duration;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class y implements e9.b {
    public static final y a = new y();
    public static final j1 b = new j1("kotlin.time.Duration", g9.d.l);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        return b;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        bVar.encodeString(Duration.m73toIsoStringimpl(((Duration) obj).getRawValue()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        return Duration.m33boximpl(Duration.Companion.m128parseIsoStringUwyO8pc(routeDecoder.decodeString()));
    }
}
