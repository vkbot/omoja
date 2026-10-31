package p086h9;

import p055e9.InterfaceC1512h;
import p076g9.InterfaceC1633e;
import p107j9.AbstractC2011b;

/* JADX INFO: renamed from: h9.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC1733f {
    InterfaceC1731d beginCollection(InterfaceC1633e interfaceC1633e, int i10);

    InterfaceC1731d beginStructure(InterfaceC1633e interfaceC1633e);

    void encodeBoolean(boolean z9);

    void encodeByte(byte b10);

    void encodeChar(char c);

    void encodeDouble(double d);

    void encodeEnum(InterfaceC1633e interfaceC1633e, int i10);

    void encodeFloat(float f8);

    InterfaceC1733f encodeInline(InterfaceC1633e interfaceC1633e);

    void encodeInt(int i10);

    void encodeLong(long j10);

    void encodeNotNullMark();

    void encodeNull();

    void encodeSerializableValue(InterfaceC1512h interfaceC1512h, Object obj);

    void encodeShort(short s5);

    void encodeString(String str);

    AbstractC2011b getSerializersModule();
}
