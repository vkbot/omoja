package kotlin.uuid;

import j1.i;
import java.util.Comparator;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u001d\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0015J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0018H\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u001dJ\u0010\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001dH\u0007J\u000e\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001dJ\u0006\u0010\"\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R*\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00050$j\b\u0012\u0004\u0012\u00020\u0005`%8FX\u0087\u0004¢\u0006\f\u0012\u0004\b&\u0010\u0003\u001a\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lkotlin/uuid/Uuid$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "<init>", "()V", "NIL", "Lkotlin/uuid/Uuid;", "getNIL", "()Lkotlin/uuid/Uuid;", "SIZE_BYTES", HttpUrl.FRAGMENT_ENCODE_SET, "SIZE_BITS", "fromLongs", "mostSignificantBits", HttpUrl.FRAGMENT_ENCODE_SET, "leastSignificantBits", "fromULongs", "Lkotlin/ULong;", "fromULongs-eb3DHEI", "(JJ)Lkotlin/uuid/Uuid;", "fromByteArray", "byteArray", HttpUrl.FRAGMENT_ENCODE_SET, "fromUByteArray", "ubyteArray", "Lkotlin/UByteArray;", "fromUByteArray-GBYM_sE", "([B)Lkotlin/uuid/Uuid;", "parse", "uuidString", HttpUrl.FRAGMENT_ENCODE_SET, "parseHexDash", "hexDashString", "parseHex", "hexString", "random", "LEXICAL_ORDER", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getLEXICAL_ORDER$annotations", "getLEXICAL_ORDER", "()Ljava/util/Comparator;", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Uuid$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Uuid$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uuid fromByteArray(byte[] byteArray) {
        byteArray.getClass();
        if (byteArray.length == 16) {
            return fromLongs(UuidKt__UuidJVMKt.getLongAt(byteArray, 0), UuidKt__UuidJVMKt.getLongAt(byteArray, 8));
        }
        i.d(byteArray.length, "Expected exactly 16 bytes, but was ", UuidKt__UuidKt.access$truncateForErrorMessage(byteArray, 32), " of size ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uuid fromLongs(long mostSignificantBits, long leastSignificantBits) {
        return (mostSignificantBits == 0 && leastSignificantBits == 0) ? getNIL() : new Uuid(mostSignificantBits, leastSignificantBits, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.1")
    @ExperimentalUnsignedTypes
    /* JADX INFO: renamed from: fromUByteArray-GBYM_sE, reason: not valid java name */
    public final Uuid m172fromUByteArrayGBYM_sE(byte[] ubyteArray) {
        ubyteArray.getClass();
        return fromByteArray(ubyteArray);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: fromULongs-eb3DHEI, reason: not valid java name */
    public final Uuid m173fromULongseb3DHEI(long mostSignificantBits, long leastSignificantBits) {
        return fromLongs(mostSignificantBits, leastSignificantBits);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Comparator<Uuid> getLEXICAL_ORDER() {
        return ComparisonsKt.naturalOrder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uuid getNIL() {
        return Uuid.access$getNIL$cp();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uuid parse(String uuidString) {
        uuidString.getClass();
        int length = uuidString.length();
        if (length == 32) {
            return UuidKt__UuidJVMKt.uuidParseHex(uuidString);
        }
        if (length == 36) {
            return UuidKt__UuidJVMKt.uuidParseHexDash(uuidString);
        }
        throw new IllegalArgumentException("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"" + UuidKt__UuidKt.access$truncateForErrorMessage(uuidString, 64) + "\" of length " + uuidString.length());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uuid parseHex(String hexString) {
        hexString.getClass();
        if (hexString.length() == 32) {
            return UuidKt__UuidJVMKt.uuidParseHex(hexString);
        }
        i.d(hexString.length(), "Expected a 32-char hexadecimal string, but was \"", UuidKt__UuidKt.access$truncateForErrorMessage(hexString, 64), "\" of length ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @SinceKotlin(version = "2.1")
    public final Uuid parseHexDash(String hexDashString) {
        hexDashString.getClass();
        if (hexDashString.length() == 36) {
            return UuidKt__UuidJVMKt.uuidParseHexDash(hexDashString);
        }
        i.d(hexDashString.length(), "Expected a 36-char string in the standard hex-and-dash UUID format, but was \"", UuidKt__UuidKt.access$truncateForErrorMessage(hexDashString, 64), "\" of length ");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Uuid random() {
        return UuidKt__UuidJVMKt.secureRandomUuid();
    }

    private Uuid$Companion() {
    }

    @Deprecated(message = "Use naturalOrder<Uuid>() instead", replaceWith = @ReplaceWith(expression = "naturalOrder<Uuid>()", imports = {"kotlin.comparisons.naturalOrder"}))
    @DeprecatedSinceKotlin(warningSince = "2.1")
    public static /* synthetic */ void getLEXICAL_ORDER$annotations() {
    }
}
