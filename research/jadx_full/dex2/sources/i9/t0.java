package i9;

import androidx.navigation.serialization.RouteDecoder;
import java.util.Map$Entry;
import kotlin.Pair;
import kotlin.TuplesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class t0 implements e9.b {
    public final e9.b a;
    public final e9.b b;
    public final /* synthetic */ int c;
    public final g9.f d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public t0(e9.b bVar, e9.b bVar2, int i) {
        this(bVar, bVar2, (byte) 0);
        this.c = i;
        switch (i) {
            case 1:
                this(bVar, bVar2, (byte) 0);
                this.d = com.bumptech.glide.c.a("kotlin.Pair", new g9.e[0], new s0(1, bVar, bVar2));
                break;
            default:
                this.d = com.bumptech.glide.c.b("kotlin.collections.Map.Entry", g9.j.f, new g9.e[0], new s0(0, bVar, bVar2));
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h, e9.a
    public final g9.e a() {
        switch (this.c) {
            case 0:
                break;
        }
        return this.d;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        Object key;
        Object value;
        h9.d dVarBeginStructure = bVar.beginStructure(a());
        g9.e eVarA = a();
        switch (this.c) {
            case 0:
                Map$Entry map$Entry = (Map$Entry) obj;
                map$Entry.getClass();
                key = map$Entry.getKey();
                break;
            default:
                Pair pair = (Pair) obj;
                pair.getClass();
                key = pair.getFirst();
                break;
        }
        dVarBeginStructure.encodeSerializableElement(eVarA, 0, this.a, key);
        g9.e eVarA2 = a();
        switch (this.c) {
            case 0:
                Map$Entry map$Entry2 = (Map$Entry) obj;
                map$Entry2.getClass();
                value = map$Entry2.getValue();
                break;
            default:
                Pair pair2 = (Pair) obj;
                pair2.getClass();
                value = pair2.getSecond();
                break;
        }
        dVarBeginStructure.encodeSerializableElement(eVarA2, 1, this.b, value);
        dVarBeginStructure.endStructure(a());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.a
    public final Object c(RouteDecoder routeDecoder) {
        Object objD;
        Object obj = d1.c;
        g9.e eVarA = a();
        h9.c cVarBeginStructure = routeDecoder.beginStructure(eVarA);
        boolean zDecodeSequentially = cVarBeginStructure.decodeSequentially();
        e9.b bVar = this.b;
        e9.b bVar2 = this.a;
        if (zDecodeSequentially) {
            objD = d(cVarBeginStructure.decodeSerializableElement(a(), 0, bVar2, null), cVarBeginStructure.decodeSerializableElement(a(), 1, bVar, null));
        } else {
            Object objDecodeSerializableElement = obj;
            Object objDecodeSerializableElement2 = objDecodeSerializableElement;
            while (true) {
                int iDecodeElementIndex = cVarBeginStructure.decodeElementIndex(a());
                if (iDecodeElementIndex == -1) {
                    if (objDecodeSerializableElement == obj) {
                        throw new e9.g("Element 'key' is missing");
                    }
                    if (objDecodeSerializableElement2 == obj) {
                        throw new e9.g("Element 'value' is missing");
                    }
                    objD = d(objDecodeSerializableElement, objDecodeSerializableElement2);
                    break;
                }
                if (iDecodeElementIndex == 0) {
                    objDecodeSerializableElement = cVarBeginStructure.decodeSerializableElement(a(), 0, bVar2, null);
                } else {
                    if (iDecodeElementIndex != 1) {
                        throw new e9.g(ai.onnxruntime.a.e(iDecodeElementIndex, "Invalid index: "));
                    }
                    objDecodeSerializableElement2 = cVarBeginStructure.decodeSerializableElement(a(), 1, bVar, null);
                }
            }
        }
        cVarBeginStructure.endStructure(eVarA);
        return objD;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object d(Object obj, Object obj2) {
        switch (this.c) {
            case 0:
                return new r0(obj, obj2);
            default:
                return TuplesKt.to(obj, obj2);
        }
    }

    public t0(e9.b bVar, e9.b bVar2, byte b) {
        this.a = bVar;
        this.b = bVar2;
    }
}
