package p096i9;

import ai.onnxruntime.AbstractC0074a;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.ranges.RangesKt___RangesKt;
import p055e9.InterfaceC1506b;
import p076g9.C1632d;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;
import p099j1.C1929i;
import p130l9.C2237i;

/* JADX INFO: renamed from: i9.u0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1865u0 extends AbstractC1799a {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1506b f4835a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC1506b f4836b;

    public AbstractC1865u0(InterfaceC1506b interfaceC1506b, InterfaceC1506b interfaceC1506b2) {
        this.f4835a = interfaceC1506b;
        this.f4836b = interfaceC1506b2;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        int iMo2903h = mo2903h(obj);
        InterfaceC1633e interfaceC1633eMo2581a = mo2581a();
        InterfaceC1731d interfaceC1731dBeginCollection = abstractC1729b.beginCollection(interfaceC1633eMo2581a, iMo2903h);
        Iterator itMo2902g = mo2902g(obj);
        int i10 = 0;
        while (itMo2902g.hasNext()) {
            Map.Entry entry = (Map.Entry) itMo2902g.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i11 = i10 + 1;
            interfaceC1731dBeginCollection.encodeSerializableElement(mo2581a(), i10, this.f4835a, key);
            i10 += 2;
            interfaceC1731dBeginCollection.encodeSerializableElement(mo2581a(), i11, this.f4836b, value);
        }
        interfaceC1731dBeginCollection.endStructure(interfaceC1633eMo2581a);
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: j */
    public final void mo2905j(InterfaceC1730c interfaceC1730c, Object obj, int i10, int i11) {
        Map map = (Map) obj;
        map.getClass();
        if (i11 < 0) {
            C1929i.m3029k("Size must be known in advance when using READ_ALL");
            return;
        }
        IntProgression intProgressionStep = RangesKt___RangesKt.step(RangesKt.until(0, i11 * 2), 2);
        int first = intProgressionStep.getFirst();
        int last = intProgressionStep.getLast();
        int step = intProgressionStep.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            m2927n(interfaceC1730c, i10 + first, map, false);
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    @Override // p096i9.AbstractC1799a
    /* JADX INFO: renamed from: k */
    public final /* bridge */ /* synthetic */ void mo2906k(InterfaceC1730c interfaceC1730c, int i10, Object obj) {
        m2927n(interfaceC1730c, i10, (Map) obj, true);
    }

    /* JADX INFO: renamed from: n */
    public final void m2927n(InterfaceC1730c interfaceC1730c, int i10, Map map, boolean z9) {
        int iDecodeElementIndex;
        map.getClass();
        Object objDecodeSerializableElement = interfaceC1730c.decodeSerializableElement(mo2581a(), i10, this.f4835a, null);
        if (z9) {
            iDecodeElementIndex = interfaceC1730c.decodeElementIndex(mo2581a());
            if (iDecodeElementIndex != i10 + 1) {
                C2237i.m3597d(AbstractC0074a.m156g(i10, "Value must follow key in a map, index for key: ", ", returned index for value: ", iDecodeElementIndex));
                return;
            }
        } else {
            iDecodeElementIndex = i10 + 1;
        }
        boolean zContainsKey = map.containsKey(objDecodeSerializableElement);
        InterfaceC1506b interfaceC1506b = this.f4836b;
        map.put(objDecodeSerializableElement, (!zContainsKey || (interfaceC1506b.mo2581a().getKind() instanceof C1632d)) ? interfaceC1730c.decodeSerializableElement(mo2581a(), iDecodeElementIndex, interfaceC1506b, null) : interfaceC1730c.decodeSerializableElement(mo2581a(), iDecodeElementIndex, interfaceC1506b, MapsKt.getValue(map, objDecodeSerializableElement)));
    }
}
