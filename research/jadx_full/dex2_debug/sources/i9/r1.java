package i9;

import androidx.navigation.serialization.RouteDecoder;
import kotlin.Triple;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class r1 implements e9.b {
    public final e9.b a;
    public final e9.b b;
    public final e9.b c;
    public final g9.f d = com.bumptech.glide.c.a("kotlin.Triple", new g9.e[0], new d9.h(5, this));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public r1(e9.b bVar, e9.b bVar2, e9.b bVar3) {
        this.a = bVar;
        this.b = bVar2;
        this.c = bVar3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        Triple triple = (Triple) obj;
        triple.getClass();
        g9.f fVar = this.d;
        h9.d dVarBeginStructure = bVar.beginStructure(fVar);
        dVarBeginStructure.encodeSerializableElement(fVar, 0, this.a, triple.getFirst());
        dVarBeginStructure.encodeSerializableElement(fVar, 1, this.b, triple.getSecond());
        dVarBeginStructure.encodeSerializableElement(fVar, 2, this.c, triple.getThird());
        dVarBeginStructure.endStructure(fVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        g9.f fVar = this.d;
        h9.c cVarBeginStructure = routeDecoder.beginStructure(fVar);
        boolean zDecodeSequentially = cVarBeginStructure.decodeSequentially();
        e9.b bVar = this.c;
        e9.b bVar2 = this.b;
        e9.b bVar3 = this.a;
        if (zDecodeSequentially) {
            Object objDecodeSerializableElement = cVarBeginStructure.decodeSerializableElement(fVar, 0, bVar3, null);
            Object objDecodeSerializableElement2 = cVarBeginStructure.decodeSerializableElement(fVar, 1, bVar2, null);
            Object objDecodeSerializableElement3 = cVarBeginStructure.decodeSerializableElement(fVar, 2, bVar, null);
            cVarBeginStructure.endStructure(fVar);
            return new Triple(objDecodeSerializableElement, objDecodeSerializableElement2, objDecodeSerializableElement3);
        }
        Object obj = d1.c;
        Object objDecodeSerializableElement4 = obj;
        Object objDecodeSerializableElement5 = objDecodeSerializableElement4;
        Object objDecodeSerializableElement6 = objDecodeSerializableElement5;
        while (true) {
            int iDecodeElementIndex = cVarBeginStructure.decodeElementIndex(fVar);
            if (iDecodeElementIndex == -1) {
                cVarBeginStructure.endStructure(fVar);
                if (objDecodeSerializableElement4 == obj) {
                    throw new e9.g("Element 'first' is missing");
                }
                if (objDecodeSerializableElement5 == obj) {
                    throw new e9.g("Element 'second' is missing");
                }
                if (objDecodeSerializableElement6 != obj) {
                    return new Triple(objDecodeSerializableElement4, objDecodeSerializableElement5, objDecodeSerializableElement6);
                }
                throw new e9.g("Element 'third' is missing");
            }
            if (iDecodeElementIndex == 0) {
                objDecodeSerializableElement4 = cVarBeginStructure.decodeSerializableElement(fVar, 0, bVar3, null);
            } else if (iDecodeElementIndex == 1) {
                objDecodeSerializableElement5 = cVarBeginStructure.decodeSerializableElement(fVar, 1, bVar2, null);
            } else {
                if (iDecodeElementIndex != 2) {
                    throw new e9.g(ai.onnxruntime.a.e(iDecodeElementIndex, "Unexpected index "));
                }
                objDecodeSerializableElement6 = cVarBeginStructure.decodeSerializableElement(fVar, 2, bVar, null);
            }
        }
    }
}
