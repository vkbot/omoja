package p086h9;

import p055e9.InterfaceC1505a;
import p076g9.InterfaceC1633e;
import p107j9.AbstractC2011b;

/* JADX INFO: renamed from: h9.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC1730c {
    boolean decodeBooleanElement(InterfaceC1633e interfaceC1633e, int i10);

    byte decodeByteElement(InterfaceC1633e interfaceC1633e, int i10);

    char decodeCharElement(InterfaceC1633e interfaceC1633e, int i10);

    int decodeCollectionSize(InterfaceC1633e interfaceC1633e);

    double decodeDoubleElement(InterfaceC1633e interfaceC1633e, int i10);

    int decodeElementIndex(InterfaceC1633e interfaceC1633e);

    float decodeFloatElement(InterfaceC1633e interfaceC1633e, int i10);

    InterfaceC1732e decodeInlineElement(InterfaceC1633e interfaceC1633e, int i10);

    int decodeIntElement(InterfaceC1633e interfaceC1633e, int i10);

    long decodeLongElement(InterfaceC1633e interfaceC1633e, int i10);

    boolean decodeSequentially();

    Object decodeSerializableElement(InterfaceC1633e interfaceC1633e, int i10, InterfaceC1505a interfaceC1505a, Object obj);

    short decodeShortElement(InterfaceC1633e interfaceC1633e, int i10);

    String decodeStringElement(InterfaceC1633e interfaceC1633e, int i10);

    void endStructure(InterfaceC1633e interfaceC1633e);

    AbstractC2011b getSerializersModule();
}
