package p096i9;

import ai.onnxruntime.AbstractC0074a;
import androidx.navigation.serialization.RouteDecoder;
import com.bumptech.glide.AbstractC1030c;
import kotlin.Triple;
import p046d9.C1322h;
import p055e9.C1511g;
import p055e9.InterfaceC1506b;
import p076g9.C1634f;
import p076g9.InterfaceC1633e;
import p086h9.AbstractC1729b;
import p086h9.InterfaceC1730c;
import p086h9.InterfaceC1731d;

/* JADX INFO: renamed from: i9.r1 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C1857r1 implements InterfaceC1506b {

    /* JADX INFO: renamed from: a */
    public final InterfaceC1506b f4820a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC1506b f4821b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC1506b f4822c;

    /* JADX INFO: renamed from: d */
    public final C1634f f4823d = AbstractC1030c.m1252a("kotlin.Triple", new InterfaceC1633e[0], new C1322h(5, this));

    public C1857r1(InterfaceC1506b interfaceC1506b, InterfaceC1506b interfaceC1506b2, InterfaceC1506b interfaceC1506b3) {
        this.f4820a = interfaceC1506b;
        this.f4821b = interfaceC1506b2;
        this.f4822c = interfaceC1506b3;
    }

    @Override // p055e9.InterfaceC1512h, p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: a */
    public final InterfaceC1633e mo2581a() {
        return this.f4823d;
    }

    @Override // p055e9.InterfaceC1512h
    /* JADX INFO: renamed from: b */
    public final void mo2583b(AbstractC1729b abstractC1729b, Object obj) {
        Triple triple = (Triple) obj;
        triple.getClass();
        C1634f c1634f = this.f4823d;
        InterfaceC1731d interfaceC1731dBeginStructure = abstractC1729b.beginStructure(c1634f);
        interfaceC1731dBeginStructure.encodeSerializableElement(c1634f, 0, this.f4820a, triple.getFirst());
        interfaceC1731dBeginStructure.encodeSerializableElement(c1634f, 1, this.f4821b, triple.getSecond());
        interfaceC1731dBeginStructure.encodeSerializableElement(c1634f, 2, this.f4822c, triple.getThird());
        interfaceC1731dBeginStructure.endStructure(c1634f);
    }

    @Override // p055e9.InterfaceC1505a
    /* JADX INFO: renamed from: c */
    public final Object mo2582c(RouteDecoder routeDecoder) {
        C1634f c1634f = this.f4823d;
        InterfaceC1730c interfaceC1730cBeginStructure = routeDecoder.beginStructure(c1634f);
        boolean zDecodeSequentially = interfaceC1730cBeginStructure.decodeSequentially();
        InterfaceC1506b interfaceC1506b = this.f4822c;
        InterfaceC1506b interfaceC1506b2 = this.f4821b;
        InterfaceC1506b interfaceC1506b3 = this.f4820a;
        if (zDecodeSequentially) {
            Object objDecodeSerializableElement = interfaceC1730cBeginStructure.decodeSerializableElement(c1634f, 0, interfaceC1506b3, null);
            Object objDecodeSerializableElement2 = interfaceC1730cBeginStructure.decodeSerializableElement(c1634f, 1, interfaceC1506b2, null);
            Object objDecodeSerializableElement3 = interfaceC1730cBeginStructure.decodeSerializableElement(c1634f, 2, interfaceC1506b, null);
            interfaceC1730cBeginStructure.endStructure(c1634f);
            return new Triple(objDecodeSerializableElement, objDecodeSerializableElement2, objDecodeSerializableElement3);
        }
        Object obj = AbstractC1813d1.f4742c;
        Object objDecodeSerializableElement4 = obj;
        Object objDecodeSerializableElement5 = objDecodeSerializableElement4;
        Object objDecodeSerializableElement6 = objDecodeSerializableElement5;
        while (true) {
            int iDecodeElementIndex = interfaceC1730cBeginStructure.decodeElementIndex(c1634f);
            if (iDecodeElementIndex == -1) {
                interfaceC1730cBeginStructure.endStructure(c1634f);
                if (objDecodeSerializableElement4 == obj) {
                    throw new C1511g("Element 'first' is missing");
                }
                if (objDecodeSerializableElement5 == obj) {
                    throw new C1511g("Element 'second' is missing");
                }
                if (objDecodeSerializableElement6 != obj) {
                    return new Triple(objDecodeSerializableElement4, objDecodeSerializableElement5, objDecodeSerializableElement6);
                }
                throw new C1511g("Element 'third' is missing");
            }
            if (iDecodeElementIndex == 0) {
                objDecodeSerializableElement4 = interfaceC1730cBeginStructure.decodeSerializableElement(c1634f, 0, interfaceC1506b3, null);
            } else if (iDecodeElementIndex == 1) {
                objDecodeSerializableElement5 = interfaceC1730cBeginStructure.decodeSerializableElement(c1634f, 1, interfaceC1506b2, null);
            } else {
                if (iDecodeElementIndex != 2) {
                    throw new C1511g(AbstractC0074a.m154e(iDecodeElementIndex, "Unexpected index "));
                }
                objDecodeSerializableElement6 = interfaceC1730cBeginStructure.decodeSerializableElement(c1634f, 2, interfaceC1506b, null);
            }
        }
    }
}
