package i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a implements e9.b {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public Object c(RouteDecoder routeDecoder) {
        return i(routeDecoder);
    }

    public abstract Object d();

    public abstract int e(Object obj);

    public abstract void f(int i, Object obj);

    public abstract Iterator g(Object obj);

    public abstract int h(Object obj);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object i(RouteDecoder routeDecoder) {
        Object objD = d();
        int iE = e(objD);
        h9.c cVarBeginStructure = routeDecoder.beginStructure(a());
        if (!cVarBeginStructure.decodeSequentially()) {
            while (true) {
                int iDecodeElementIndex = cVarBeginStructure.decodeElementIndex(a());
                if (iDecodeElementIndex == -1) {
                    break;
                }
                k(cVarBeginStructure, iDecodeElementIndex + iE, objD);
            }
        } else {
            int iDecodeCollectionSize = cVarBeginStructure.decodeCollectionSize(a());
            f(iDecodeCollectionSize, objD);
            j(cVarBeginStructure, objD, iE, iDecodeCollectionSize);
        }
        cVarBeginStructure.endStructure(a());
        return m(objD);
    }

    public abstract void j(h9.c cVar, Object obj, int i, int i2);

    public abstract void k(h9.c cVar, int i, Object obj);

    public abstract Object l(Object obj);

    public abstract Object m(Object obj);
}
