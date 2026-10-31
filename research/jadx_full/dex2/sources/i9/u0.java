package i9;

import java.util.Iterator;
import java.util.Map;
import java.util.Map$Entry;
import kotlin.collections.MapsKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class u0 extends a {
    public final e9.b a;
    public final e9.b b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u0(e9.b bVar, e9.b bVar2) {
        this.a = bVar;
        this.b = bVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // e9.h
    public final void b(h9.b bVar, Object obj) {
        int iH = h(obj);
        g9.e eVarA = a();
        h9.d dVarBeginCollection = bVar.beginCollection(eVarA, iH);
        Iterator itG = g(obj);
        int i = 0;
        while (itG.hasNext()) {
            Map$Entry map$Entry = (Map$Entry) itG.next();
            Object key = map$Entry.getKey();
            Object value = map$Entry.getValue();
            int i2 = i + 1;
            dVarBeginCollection.encodeSerializableElement(a(), i, this.a, key);
            i += 2;
            dVarBeginCollection.encodeSerializableElement(a(), i2, this.b, value);
        }
        dVarBeginCollection.endStructure(eVarA);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final void j(h9.c cVar, Object obj, int i, int i2) {
        Map map = (Map) obj;
        map.getClass();
        if (i2 < 0) {
            j1.i.k("Size must be known in advance when using READ_ALL");
            return;
        }
        IntProgression intProgressionD = RangesKt.d(RangesKt.until(0, i2 * 2), 2);
        int first = intProgressionD.getFirst();
        int last = intProgressionD.getLast();
        int step = intProgressionD.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            n(cVar, i + first, map, false);
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // i9.a
    public final /* bridge */ /* synthetic */ void k(h9.c cVar, int i, Object obj) {
        n(cVar, i, (Map) obj, true);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void n(h9.c cVar, int i, Map map, boolean z) {
        int iDecodeElementIndex;
        map.getClass();
        Object objDecodeSerializableElement = cVar.decodeSerializableElement(a(), i, this.a, null);
        if (z) {
            iDecodeElementIndex = cVar.decodeElementIndex(a());
            if (iDecodeElementIndex != i + 1) {
                l9.i.d(ai.onnxruntime.a.g(i, "Value must follow key in a map, index for key: ", ", returned index for value: ", iDecodeElementIndex));
                return;
            }
        } else {
            iDecodeElementIndex = i + 1;
        }
        boolean zContainsKey = map.containsKey(objDecodeSerializableElement);
        e9.b bVar = this.b;
        map.put(objDecodeSerializableElement, (!zContainsKey || (bVar.a().getKind() instanceof g9.d)) ? cVar.decodeSerializableElement(a(), iDecodeElementIndex, bVar, null) : cVar.decodeSerializableElement(a(), iDecodeElementIndex, bVar, MapsKt.getValue(map, objDecodeSerializableElement)));
    }
}
