package h9;

import e9.h;
import i9.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class b implements f, d {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public d beginCollection(g9.e eVar, int i) {
        eVar.getClass();
        return beginStructure(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public d beginStructure(g9.e eVar) {
        eVar.getClass();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeBoolean(boolean z) {
        encodeValue(Boolean.valueOf(z));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeBooleanElement(g9.e eVar, int i, boolean z) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeBoolean(z);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeByte(byte b) {
        encodeValue(Byte.valueOf(b));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeByteElement(g9.e eVar, int i, byte b) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeByte(b);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeChar(char c) {
        encodeValue(Character.valueOf(c));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeCharElement(g9.e eVar, int i, char c) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeChar(c);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeDouble(double d) {
        encodeValue(Double.valueOf(d));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeDoubleElement(g9.e eVar, int i, double d) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeDouble(d);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean encodeElement(g9.e eVar, int i) {
        eVar.getClass();
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeEnum(g9.e eVar, int i) {
        eVar.getClass();
        encodeValue(Integer.valueOf(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeFloat(float f) {
        encodeValue(Float.valueOf(f));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeFloatElement(g9.e eVar, int i, float f) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeFloat(f);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public f encodeInline(g9.e eVar) {
        eVar.getClass();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final f encodeInlineElement(g9.e eVar, int i) {
        eVar.getClass();
        return encodeElement(eVar, i) ? encodeInline(eVar.f(i)) : x0.a;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeInt(int i) {
        encodeValue(Integer.valueOf(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeIntElement(g9.e eVar, int i, int i2) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeInt(i2);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeLong(long j) {
        encodeValue(Long.valueOf(j));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeLongElement(g9.e eVar, int i, long j) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeLong(j);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> void encodeNullableSerializableElement(g9.e eVar, int i, h hVar, T t) {
        eVar.getClass();
        hVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeNullableSerializableValue(hVar, t);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> void encodeNullableSerializableValue(h hVar, T t) {
        hVar.getClass();
        if (hVar.a().c()) {
            encodeSerializableValue(hVar, t);
        } else if (t == null) {
            encodeNull();
        } else {
            encodeNotNullMark();
            encodeSerializableValue(hVar, t);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public <T> void encodeSerializableElement(g9.e eVar, int i, h hVar, T t) {
        eVar.getClass();
        hVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeSerializableValue(hVar, t);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeSerializableValue(h hVar, Object obj) {
        hVar.getClass();
        hVar.b(this, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeShort(short s) {
        encodeValue(Short.valueOf(s));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeShortElement(g9.e eVar, int i, short s) {
        eVar.getClass();
        if (encodeElement(eVar, i)) {
            encodeShort(s);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.f
    public void encodeString(String str) {
        str.getClass();
        encodeValue(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public final void encodeStringElement(g9.e eVar, int i, String str) {
        eVar.getClass();
        str.getClass();
        if (encodeElement(eVar, i)) {
            encodeString(str);
        }
    }

    public abstract void encodeValue(Object obj);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.d
    public void endStructure(g9.e eVar) {
        eVar.getClass();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldEncodeElementDefault(g9.e eVar, int i) {
        eVar.getClass();
        return true;
    }

    @Override // h9.f
    public void encodeNotNullMark() {
    }
}
