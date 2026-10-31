package h9;

import e9.h;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface d {
    void encodeBooleanElement(g9.e eVar, int i, boolean z);

    void encodeByteElement(g9.e eVar, int i, byte b);

    void encodeCharElement(g9.e eVar, int i, char c);

    void encodeDoubleElement(g9.e eVar, int i, double d);

    void encodeFloatElement(g9.e eVar, int i, float f);

    f encodeInlineElement(g9.e eVar, int i);

    void encodeIntElement(g9.e eVar, int i, int i2);

    void encodeLongElement(g9.e eVar, int i, long j);

    void encodeSerializableElement(g9.e eVar, int i, h hVar, Object obj);

    void encodeShortElement(g9.e eVar, int i, short s);

    void encodeStringElement(g9.e eVar, int i, String str);

    void endStructure(g9.e eVar);
}
