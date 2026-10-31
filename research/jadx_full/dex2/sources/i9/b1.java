package i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class b1 implements e9.b {
    public final Object a;
    public final List b;
    public final Lazy c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b1(Unit unit) {
        unit.getClass();
        this.a = unit;
        this.b = CollectionsKt.emptyList();
        this.c = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new e9.d(3, this));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        return (g9.e) this.c.getValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        obj.getClass();
        bVar.beginStructure(a()).endStructure(a());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        int iDecodeElementIndex;
        g9.e eVarA = a();
        h9.c cVarBeginStructure = routeDecoder.beginStructure(eVarA);
        if (!cVarBeginStructure.decodeSequentially() && (iDecodeElementIndex = cVarBeginStructure.decodeElementIndex(a())) != -1) {
            throw new e9.g(ai.onnxruntime.a.e(iDecodeElementIndex, "Unexpected index "));
        }
        Unit unit = Unit.INSTANCE;
        cVarBeginStructure.endStructure(eVarA);
        return this.a;
    }
}
