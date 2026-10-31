package h9;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public abstract class a implements e, c {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Object decodeSerializableValue$default(a aVar, e9.a aVar2, Object obj, int i, Object obj2) {
        if (obj2 != null) {
            androidx.navigation.b.g("Super calls with default arguments not supported in this target, function: decodeSerializableValue");
            return null;
        }
        if ((i & 2) != 0) {
            obj = null;
        }
        return aVar.decodeSerializableValue(aVar2, obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public c beginStructure(g9.e eVar) {
        eVar.getClass();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public boolean decodeBoolean() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Boolean) objDecodeValue).booleanValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final boolean decodeBooleanElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeBoolean();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public byte decodeByte() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Byte) objDecodeValue).byteValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final byte decodeByteElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeByte();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public char decodeChar() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Character) objDecodeValue).charValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final char decodeCharElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeChar();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public int decodeCollectionSize(g9.e eVar) {
        eVar.getClass();
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public double decodeDouble() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Double) objDecodeValue).doubleValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final double decodeDoubleElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeDouble();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public int decodeEnum(g9.e eVar) {
        eVar.getClass();
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Integer) objDecodeValue).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public float decodeFloat() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Float) objDecodeValue).floatValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final float decodeFloatElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeFloat();
    }

    @Override // h9.e
    public abstract e decodeInline(g9.e eVar);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public e decodeInlineElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeInline(eVar.f(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public int decodeInt() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Integer) objDecodeValue).intValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final int decodeIntElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeInt();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public long decodeLong() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Long) objDecodeValue).longValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final long decodeLongElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeLong();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final <T> T decodeNullableSerializableElement(g9.e eVar, int i, e9.a aVar, T t) {
        eVar.getClass();
        aVar.getClass();
        return (aVar.a().c() || decodeNotNullMark()) ? (T) decodeSerializableValue(aVar, t) : (T) decodeNull();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> T decodeNullableSerializableValue(e9.a aVar) {
        aVar.getClass();
        return (aVar.a().c() || decodeNotNullMark()) ? (T) decodeSerializableValue(aVar) : (T) decodeNull();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public boolean decodeSequentially() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public <T> T decodeSerializableElement(g9.e eVar, int i, e9.a aVar, T t) {
        eVar.getClass();
        aVar.getClass();
        return (T) decodeSerializableValue(aVar, t);
    }

    @Override // h9.e
    public abstract Object decodeSerializableValue(e9.a aVar);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T> T decodeSerializableValue(e9.a aVar, T t) {
        aVar.getClass();
        return (T) decodeSerializableValue(aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public short decodeShort() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return ((Short) objDecodeValue).shortValue();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final short decodeShortElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeShort();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.e
    public String decodeString() {
        Object objDecodeValue = decodeValue();
        objDecodeValue.getClass();
        return (String) objDecodeValue;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public final String decodeStringElement(g9.e eVar, int i) {
        eVar.getClass();
        return decodeString();
    }

    public abstract Object decodeValue();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // h9.c
    public void endStructure(g9.e eVar) {
        eVar.getClass();
    }
}
