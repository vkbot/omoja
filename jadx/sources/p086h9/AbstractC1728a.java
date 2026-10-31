package p086h9;

import androidx.navigation.C0674b;
import p055e9.InterfaceC1505a;
import p076g9.InterfaceC1633e;

/* JADX INFO: renamed from: h9.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC1728a implements InterfaceC1732e, InterfaceC1730c {
    public static /* synthetic */ Object decodeSerializableValue$default(AbstractC1728a abstractC1728a, InterfaceC1505a interfaceC1505a, Object obj, int i10, Object obj2) {
        if (obj2 != null) {
            C0674b.m840g("Super calls with default arguments not supported in this target, function: decodeSerializableValue");
            return null;
        }
        if ((i10 & 2) != 0) {
            obj = null;
        }
        return abstractC1728a.decodeSerializableValue(interfaceC1505a, obj);
    }

    @Override // p086h9.InterfaceC1732e
    public InterfaceC1730c beginStructure(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        return this;
    }

    @Override // p086h9.InterfaceC1732e
    public boolean decodeBoolean() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Boolean) objDecodeValue).booleanValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final boolean decodeBooleanElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeBoolean();
    }

    @Override // p086h9.InterfaceC1732e
    public byte decodeByte() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Byte) objDecodeValue).byteValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final byte decodeByteElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeByte();
    }

    @Override // p086h9.InterfaceC1732e
    public char decodeChar() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Character) objDecodeValue).charValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final char decodeCharElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeChar();
    }

    @Override // p086h9.InterfaceC1730c
    public int decodeCollectionSize(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        return -1;
    }

    @Override // p086h9.InterfaceC1732e
    public double decodeDouble() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Double) objDecodeValue).doubleValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final double decodeDoubleElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeDouble();
    }

    @Override // p086h9.InterfaceC1732e
    public int decodeEnum(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Integer) objDecodeValue).intValue();
    }

    @Override // p086h9.InterfaceC1732e
    public float decodeFloat() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Float) objDecodeValue).floatValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final float decodeFloatElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeFloat();
    }

    @Override // p086h9.InterfaceC1732e
    public abstract InterfaceC1732e decodeInline(InterfaceC1633e interfaceC1633e);

    @Override // p086h9.InterfaceC1730c
    public InterfaceC1732e decodeInlineElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeInline(interfaceC1633e.mo2721f(i10));
    }

    @Override // p086h9.InterfaceC1732e
    public int decodeInt() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Integer) objDecodeValue).intValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final int decodeIntElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeInt();
    }

    @Override // p086h9.InterfaceC1732e
    public long decodeLong() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Long) objDecodeValue).longValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final long decodeLongElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeLong();
    }

    public final <T> T decodeNullableSerializableElement(InterfaceC1633e interfaceC1633e, int i10, InterfaceC1505a interfaceC1505a, T t) {
        interfaceC1633e.getClass();
        interfaceC1505a.getClass();
        return (interfaceC1505a.mo2581a().mo2718c() || decodeNotNullMark()) ? (T) decodeSerializableValue(interfaceC1505a, t) : (T) decodeNull();
    }

    public <T> T decodeNullableSerializableValue(InterfaceC1505a interfaceC1505a) {
        interfaceC1505a.getClass();
        return (interfaceC1505a.mo2581a().mo2718c() || decodeNotNullMark()) ? (T) decodeSerializableValue(interfaceC1505a) : (T) decodeNull();
    }

    @Override // p086h9.InterfaceC1730c
    public boolean decodeSequentially() {
        return false;
    }

    @Override // p086h9.InterfaceC1730c
    public <T> T decodeSerializableElement(InterfaceC1633e interfaceC1633e, int i10, InterfaceC1505a interfaceC1505a, T t) {
        interfaceC1633e.getClass();
        interfaceC1505a.getClass();
        return (T) decodeSerializableValue(interfaceC1505a, t);
    }

    @Override // p086h9.InterfaceC1732e
    public abstract Object decodeSerializableValue(InterfaceC1505a interfaceC1505a);

    public <T> T decodeSerializableValue(InterfaceC1505a interfaceC1505a, T t) {
        interfaceC1505a.getClass();
        return (T) decodeSerializableValue(interfaceC1505a);
    }

    @Override // p086h9.InterfaceC1732e
    public short decodeShort() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Short) objDecodeValue).shortValue();
    }

    @Override // p086h9.InterfaceC1730c
    public final short decodeShortElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeShort();
    }

    @Override // p086h9.InterfaceC1732e
    public String decodeString() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return (String) objDecodeValue;
    }

    @Override // p086h9.InterfaceC1730c
    public final String decodeStringElement(InterfaceC1633e interfaceC1633e, int i10) {
        interfaceC1633e.getClass();
        return decodeString();
    }

    public abstract Object decodeValue();

    @Override // p086h9.InterfaceC1730c
    public void endStructure(InterfaceC1633e interfaceC1633e) {
        interfaceC1633e.getClass();
    }
}
