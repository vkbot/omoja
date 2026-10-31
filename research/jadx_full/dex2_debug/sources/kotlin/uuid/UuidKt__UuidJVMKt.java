package kotlin.uuid;

import ai.onnxruntime.a;
import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0001\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0001\u001a\u0014\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0001\u001a,\u0010\n\u001a\u00020\u000b*\u00020\u00062\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0001\u001a\u001c\u0010\u0010\u001a\u00020\u000b*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0006H\u0001\u001a\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0014H\u0001\u001a\u0010\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u0014H\u0001\u001a\r\u0010\u0017\u001a\u00020\u0001*\u00020\u0018H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\u0018*\u00020\u0001H\u0087\b\u001a\f\u0010\u001a\u001a\u00020\u0001*\u00020\u001bH\u0007\u001a\u0014\u0010\u001a\u001a\u00020\u0001*\u00020\u001b2\u0006\u0010\b\u001a\u00020\tH\u0007\u001a\u0014\u0010\u001c\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u001a\u001c\u0010\u001c\u001a\u00020\u001b*\u00020\u001b2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u001a\r\u0010\u001d\u001a\u00020\u0006*\u00020\u0006H\u0080\b¨\u0006\u001e"}, d2 = {"secureRandomUuid", "Lkotlin/uuid/Uuid;", "serializedUuid", HttpUrl.FRAGMENT_ENCODE_SET, "uuid", "getLongAt", HttpUrl.FRAGMENT_ENCODE_SET, HttpUrl.FRAGMENT_ENCODE_SET, "index", HttpUrl.FRAGMENT_ENCODE_SET, "formatBytesInto", HttpUrl.FRAGMENT_ENCODE_SET, "dst", "dstOffset", "startIndex", "endIndex", "setLongAt", "value", "uuidParseHexDash", "hexDashString", HttpUrl.FRAGMENT_ENCODE_SET, "uuidParseHex", "hexString", "toKotlinUuid", "Ljava/util/UUID;", "toJavaUuid", "getUuid", "Ljava/nio/ByteBuffer;", "putUuid", "reverseBytes", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/uuid/UuidKt")
@SourceDebugExtension({"SMAP\nUuidJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n1#1,277:1\n277#1:278\n277#1:279\n277#1:280\n277#1:281\n277#1:282\n277#1:283\n277#1:284\n277#1:285\n*S KotlinDebug\n*F\n+ 1 UuidJVM.kt\nkotlin/uuid/UuidKt__UuidJVMKt\n*L\n139#1:278\n140#1:279\n184#1:280\n185#1:281\n224#1:282\n225#1:283\n271#1:284\n272#1:285\n*E\n"})
class UuidKt__UuidJVMKt {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final void formatBytesInto(long j, byte[] bArr, int i, int i2, int i3) {
        bArr.getClass();
        UuidKt__UuidKt.formatBytesIntoCommonImpl(j, bArr, i, i2, i3);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final long getLongAt(byte[] bArr, int i) {
        bArr.getClass();
        return UuidKt__UuidKt.getLongAtCommonImpl(bArr, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final Uuid getUuid(ByteBuffer byteBuffer, int i) {
        byteBuffer.getClass();
        if (i < 0) {
            throw new IndexOutOfBoundsException(a.e(i, "Negative index: "));
        }
        if (i + 15 >= byteBuffer.limit()) {
            StringBuilder sbQ = a.q(i, "Not enough bytes to read a uuid at index: ", ", with limit: ");
            sbQ.append(byteBuffer.limit());
            sbQ.append(' ');
            throw new IndexOutOfBoundsException(sbQ.toString());
        }
        long jReverseBytes = byteBuffer.getLong(i);
        long jReverseBytes2 = byteBuffer.getLong(i + 8);
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
            jReverseBytes = Long.reverseBytes(jReverseBytes);
            jReverseBytes2 = Long.reverseBytes(jReverseBytes2);
        }
        return Uuid.Companion.fromLongs(jReverseBytes, jReverseBytes2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final ByteBuffer putUuid(ByteBuffer byteBuffer, int i, Uuid uuid) {
        ByteBuffer byteBufferPutLong;
        byteBuffer.getClass();
        uuid.getClass();
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (i < 0) {
            throw new IndexOutOfBoundsException(a.e(i, "Negative index: "));
        }
        if (i + 15 >= byteBuffer.limit()) {
            StringBuilder sbQ = a.q(i, "Not enough capacity to write a uuid at index: ", ", with limit: ");
            sbQ.append(byteBuffer.limit());
            sbQ.append(' ');
            throw new IndexOutOfBoundsException(sbQ.toString());
        }
        if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
            byteBuffer.putLong(i, mostSignificantBits);
            byteBufferPutLong = byteBuffer.putLong(i + 8, leastSignificantBits);
        } else {
            byteBuffer.putLong(i, Long.reverseBytes(mostSignificantBits));
            byteBufferPutLong = byteBuffer.putLong(i + 8, Long.reverseBytes(leastSignificantBits));
        }
        byteBufferPutLong.getClass();
        return byteBufferPutLong;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final long reverseBytes(long j) {
        return Long.reverseBytes(j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Uuid secureRandomUuid() {
        byte[] bArr = new byte[16];
        SecureRandomHolder.INSTANCE.getInstance().nextBytes(bArr);
        return UuidKt__UuidKt.uuidFromRandomBytes(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Object serializedUuid(Uuid uuid) {
        uuid.getClass();
        return new UuidSerialized(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final void setLongAt(byte[] bArr, int i, long j) {
        bArr.getClass();
        UuidKt__UuidKt.setLongAtCommonImpl(bArr, i, j);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final UUID toJavaUuid(Uuid uuid) {
        uuid.getClass();
        return new UUID(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final Uuid toKotlinUuid(UUID uuid) {
        uuid.getClass();
        return Uuid.Companion.fromLongs(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Uuid uuidParseHex(String str) {
        str.getClass();
        return UuidKt__UuidKt.uuidParseHexCommonImpl(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @ExperimentalUuidApi
    public static final Uuid uuidParseHexDash(String str) {
        str.getClass();
        return UuidKt__UuidKt.uuidParseHexDashCommonImpl(str);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final Uuid getUuid(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (byteBuffer.position() + 15 < byteBuffer.limit()) {
            long jReverseBytes = byteBuffer.getLong();
            long jReverseBytes2 = byteBuffer.getLong();
            if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
                jReverseBytes = Long.reverseBytes(jReverseBytes);
                jReverseBytes2 = Long.reverseBytes(jReverseBytes2);
            }
            return Uuid.Companion.fromLongs(jReverseBytes, jReverseBytes2);
        }
        throw new BufferUnderflowException();
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    public static final ByteBuffer putUuid(ByteBuffer byteBuffer, Uuid uuid) {
        ByteBuffer byteBufferPutLong;
        byteBuffer.getClass();
        uuid.getClass();
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (byteBuffer.position() + 15 < byteBuffer.limit()) {
            if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
                byteBuffer.putLong(mostSignificantBits);
                byteBufferPutLong = byteBuffer.putLong(leastSignificantBits);
            } else {
                byteBuffer.putLong(Long.reverseBytes(mostSignificantBits));
                byteBufferPutLong = byteBuffer.putLong(Long.reverseBytes(leastSignificantBits));
            }
            byteBufferPutLong.getClass();
            return byteBufferPutLong;
        }
        throw new BufferOverflowException();
    }
}
