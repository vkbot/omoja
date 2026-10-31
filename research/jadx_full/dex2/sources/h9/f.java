package h9;

import e9.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface f {
    d beginCollection(g9.e eVar, int i);

    d beginStructure(g9.e eVar);

    void encodeBoolean(boolean z);

    void encodeByte(byte b);

    void encodeChar(char c);

    void encodeDouble(double d);

    void encodeEnum(g9.e eVar, int i);

    void encodeFloat(float f);

    f encodeInline(g9.e eVar);

    void encodeInt(int i);

    void encodeLong(long j);

    void encodeNotNullMark();

    void encodeNull();

    void encodeSerializableValue(h hVar, Object obj);

    void encodeShort(short s);

    void encodeString(String str);

    j9.b getSerializersModule();
}
