package p086h9;

import p055e9.InterfaceC1512h;
import p076g9.InterfaceC1633e;
import p096i9.C1874x0;

/* JADX INFO: renamed from: h9.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1729b implements InterfaceC1733f, InterfaceC1731d {
    @Override // p086h9.InterfaceC1733f
    public InterfaceC1731d beginCollection(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return beginStructure(interfaceC1633e);
    }

    @Override // p086h9.InterfaceC1733f
    public InterfaceC1731d beginStructure(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        return this;
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeBoolean(boolean z9) {
        encodeValue(Boolean.valueOf(z9));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeBooleanElement(InterfaceC1633e interfaceC1633e, int i10, boolean z9) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeBoolean(z9);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeByte(byte b10) {
        encodeValue(Byte.valueOf(b10));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeByteElement(InterfaceC1633e interfaceC1633e, int i10, byte b10) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeByte(b10);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeChar(char c) {
        encodeValue(Character.valueOf(c));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeCharElement(InterfaceC1633e interfaceC1633e, int i10, char c) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeChar(c);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeDouble(double d) {
        encodeValue(Double.valueOf(d));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeDoubleElement(InterfaceC1633e interfaceC1633e, int i10, double d) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeDouble(d);
        }
    }

    public boolean encodeElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return true;
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeEnum(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        encodeValue(Integer.valueOf(i10));
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeFloat(float f8) {
        encodeValue(Float.valueOf(f8));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeFloatElement(InterfaceC1633e interfaceC1633e, int i10, float f8) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeFloat(f8);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public InterfaceC1733f encodeInline(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        return this;
    }

    @Override // p086h9.InterfaceC1731d
    public final InterfaceC1733f encodeInlineElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return encodeElement(interfaceC1633e, i10) ? encodeInline(interfaceC1633e.mo2721f(i10)) : C1874x0.f4848a;
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeInt(int i10) {
        encodeValue(Integer.valueOf(i10));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeIntElement(InterfaceC1633e interfaceC1633e, int i10, int i11) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeInt(i11);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeLong(long j10) {
        encodeValue(Long.valueOf(j10));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeLongElement(InterfaceC1633e interfaceC1633e, int i10, long j10) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeLong(j10);
        }
    }

    public <T> void encodeNullableSerializableElement(InterfaceC1633e interfaceC1633e, int i10, InterfaceC1512h interfaceC1512h, T t) {
        interfaceC1633e.getClass();
        interfaceC1512h.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeNullableSerializableValue(interfaceC1512h, t);
        }
    }

    public <T> void encodeNullableSerializableValue(InterfaceC1512h interfaceC1512h, T t) {
        interfaceC1512h.getClass();
        if (interfaceC1512h.mo2581a().mo2718c()) {
            encodeSerializableValue(interfaceC1512h, t);
        } else if (t == null) {
            encodeNull();
        } else {
            encodeNotNullMark();
            encodeSerializableValue(interfaceC1512h, t);
        }
    }

    @Override // p086h9.InterfaceC1731d
    public <T> void encodeSerializableElement(InterfaceC1633e interfaceC1633e, int i10, InterfaceC1512h interfaceC1512h, T t) {
        interfaceC1633e.getClass();
        interfaceC1512h.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeSerializableValue(interfaceC1512h, t);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeSerializableValue(InterfaceC1512h interfaceC1512h, Object obj) {
        interfaceC1512h.getClass();
        interfaceC1512h.mo2583b(this, obj);
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeShort(short s5) {
        encodeValue(Short.valueOf(s5));
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeShortElement(InterfaceC1633e interfaceC1633e, int i10, short s5) {
        interfaceC1633e.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeShort(s5);
        }
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeString(String str) {
        str.getClass();
        encodeValue(str);
    }

    @Override // p086h9.InterfaceC1731d
    public final void encodeStringElement(InterfaceC1633e interfaceC1633e, int i10, String str) {
        interfaceC1633e.getClass();
        str.getClass();
        if (encodeElement(interfaceC1633e, i10)) {
            encodeString(str);
        }
    }

    public abstract void encodeValue(Object obj);

    @Override // p086h9.InterfaceC1731d
    public void endStructure(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
    }

    public boolean shouldEncodeElementDefault(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return true;
    }

    @Override // p086h9.InterfaceC1733f
    public void encodeNotNullMark() {
    }
}
