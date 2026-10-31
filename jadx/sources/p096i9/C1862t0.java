package p096i9;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.serialization.RouteDecoder;
import com.bumptech.glide.AbstractC1030c;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p076g9.C1634f;
import p076g9.C1638j;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.t0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1862t0 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1506b f4829a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC1506b f4830b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f4831c;

    /* JADX INFO: renamed from: d */
    public final C1634f f4832d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1862t0(InterfaceC1506b interfaceC1506b, InterfaceC1506b interfaceC1506b2, int i10) {
        this(interfaceC1506b, interfaceC1506b2, (byte) 0);
        this.f4831c = i10;
        switch (i10) {
            case 1:
                this(interfaceC1506b, interfaceC1506b2, (byte) 0);
                this.f4832d = AbstractC1030c.m1252a("kotlin.Pair", new InterfaceC1633e[0], new C1859s0(1, interfaceC1506b, interfaceC1506b2));
                break;
            default:
                this.f4832d = AbstractC1030c.m1253b("kotlin.collections.Map.Entry", C1638j.f4169f, new InterfaceC1633e[0], new C1859s0(0, interfaceC1506b, interfaceC1506b2));
                break;
        }
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        switch (this.f4831c) {
            case 0:
                break;
        }
        return this.f4832d;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        Object key;
        Object value;
        InterfaceC1731d interfaceC1731dBeginStructure = abstractC1729b.beginStructure(mo2581a());
        InterfaceC1633e interfaceC1633eMo2581a = mo2581a();
        switch (this.f4831c) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                key = entry.getKey();
                break;
            default:
                Pair pair = (Pair) obj;
                pair.getClass();
                key = pair.getFirst();
                break;
        }
        interfaceC1731dBeginStructure.encodeSerializableElement(interfaceC1633eMo2581a, 0, this.f4829a, key);
        InterfaceC1633e interfaceC1633eMo2581a2 = mo2581a();
        switch (this.f4831c) {
            case 0:
                Map.Entry entry2 = (Map.Entry) obj;
                entry2.getClass();
                value = entry2.getValue();
                break;
            default:
                Pair pair2 = (Pair) obj;
                pair2.getClass();
                value = pair2.getSecond();
                break;
        }
        interfaceC1731dBeginStructure.encodeSerializableElement(interfaceC1633eMo2581a2, 1, this.f4830b, value);
        interfaceC1731dBeginStructure.endStructure(mo2581a());
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        Object objM2926d;
        Object obj = AbstractC1813d1.f4742c;
        InterfaceC1633e interfaceC1633eMo2581a = mo2581a();
        InterfaceC1730c interfaceC1730cBeginStructure = routeDecoder.beginStructure(interfaceC1633eMo2581a);
        boolean zDecodeSequentially = interfaceC1730cBeginStructure.decodeSequentially();
        InterfaceC1506b interfaceC1506b = this.f4830b;
        InterfaceC1506b interfaceC1506b2 = this.f4829a;
        if (zDecodeSequentially) {
            objM2926d = m2926d(interfaceC1730cBeginStructure.decodeSerializableElement(mo2581a(), 0, interfaceC1506b2, null), interfaceC1730cBeginStructure.decodeSerializableElement(mo2581a(), 1, interfaceC1506b, null));
        } else {
            Object objDecodeSerializableElement = obj;
            Object objDecodeSerializableElement2 = objDecodeSerializableElement;
            while (true) {
                int iDecodeElementIndex = interfaceC1730cBeginStructure.decodeElementIndex(mo2581a());
                if (iDecodeElementIndex == -1) {
                    if (objDecodeSerializableElement == obj) {
                        throw new C1511g("Element 'key' is missing");
                    }
                    if (objDecodeSerializableElement2 == obj) {
                        throw new C1511g("Element 'value' is missing");
                    }
                    objM2926d = m2926d(objDecodeSerializableElement, objDecodeSerializableElement2);
                    break;
                }
                if (iDecodeElementIndex == 0) {
                    objDecodeSerializableElement = interfaceC1730cBeginStructure.decodeSerializableElement(mo2581a(), 0, interfaceC1506b2, null);
                } else {
                    if (iDecodeElementIndex != 1) {
                        throw new C1511g(AbstractC0074a.m154e(iDecodeElementIndex, "Invalid index: "));
                    }
                    objDecodeSerializableElement2 = interfaceC1730cBeginStructure.decodeSerializableElement(mo2581a(), 1, interfaceC1506b, null);
                }
            }
        }
        interfaceC1730cBeginStructure.endStructure(interfaceC1633eMo2581a);
        return objM2926d;
    }

    /* JADX INFO: renamed from: d */
    public final Object m2926d(Object obj, Object obj2) {
        switch (this.f4831c) {
            case 0:
                return new C1856r0(obj, obj2);
            default:
                return TuplesKt.m3166to(obj, obj2);
        }
    }

    public C1862t0(InterfaceC1506b interfaceC1506b, InterfaceC1506b interfaceC1506b2, byte b10) {
        this.f4829a = interfaceC1506b;
        this.f4830b = interfaceC1506b2;
    }
}
