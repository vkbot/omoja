package h9;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public interface c {
    boolean decodeBooleanElement(g9.e eVar, int i);

    byte decodeByteElement(g9.e eVar, int i);

    char decodeCharElement(g9.e eVar, int i);

    int decodeCollectionSize(g9.e eVar);

    double decodeDoubleElement(g9.e eVar, int i);

    int decodeElementIndex(g9.e eVar);

    float decodeFloatElement(g9.e eVar, int i);

    e decodeInlineElement(g9.e eVar, int i);

    int decodeIntElement(g9.e eVar, int i);

    long decodeLongElement(g9.e eVar, int i);

    boolean decodeSequentially();

    Object decodeSerializableElement(g9.e eVar, int i, e9.a aVar, Object obj);

    short decodeShortElement(g9.e eVar, int i);

    String decodeStringElement(g9.e eVar, int i);

    void endStructure(g9.e eVar);

    j9.b getSerializersModule();
}
