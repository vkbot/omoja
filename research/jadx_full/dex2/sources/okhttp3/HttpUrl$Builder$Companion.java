package okhttp3;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.net.telnet.TelnetCommand;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002J\u001c\u0010\f\u001a\u00020\u0006*\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokhttp3/HttpUrl$Builder$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "INVALID_HOST", HttpUrl.FRAGMENT_ENCODE_SET, "parsePort", HttpUrl.FRAGMENT_ENCODE_SET, "input", "pos", "limit", "portColonOffset", "schemeDelimiterOffset", "slashCount", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HttpUrl$Builder$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ HttpUrl$Builder$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$parsePort(HttpUrl$Builder$Companion httpUrl$Builder$Companion, String str, int i, int i2) {
        return httpUrl$Builder$Companion.parsePort(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$portColonOffset(HttpUrl$Builder$Companion httpUrl$Builder$Companion, String str, int i, int i2) {
        return httpUrl$Builder$Companion.portColonOffset(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$schemeDelimiterOffset(HttpUrl$Builder$Companion httpUrl$Builder$Companion, String str, int i, int i2) {
        return httpUrl$Builder$Companion.schemeDelimiterOffset(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static final /* synthetic */ int access$slashCount(HttpUrl$Builder$Companion httpUrl$Builder$Companion, String str, int i, int i2) {
        return httpUrl$Builder$Companion.slashCount(str, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int parsePort(String input, int pos, int limit) {
        try {
            int i = Integer.parseInt(HttpUrl$Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, pos, limit, HttpUrl.FRAGMENT_ENCODE_SET, false, false, false, false, null, TelnetCommand.EL, null));
            if (1 > i || i >= 65536) {
                return -1;
            }
            return i;
        } catch (NumberFormatException unused) {
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int portColonOffset(String input, int pos, int limit) {
        while (pos < limit) {
            char cCharAt = input.charAt(pos);
            if (cCharAt == '[') {
                do {
                    pos++;
                    if (pos >= limit) {
                        break;
                    }
                } while (input.charAt(pos) != ']');
            } else if (cCharAt == ':') {
                return pos;
            }
            pos++;
        }
        return limit;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int schemeDelimiterOffset(String input, int pos, int limit) {
        if (limit - pos < 2) {
            return -1;
        }
        char cCharAt = input.charAt(pos);
        if ((Intrinsics.compare(cCharAt, 97) >= 0 && Intrinsics.compare(cCharAt, 122) <= 0) || (Intrinsics.compare(cCharAt, 65) >= 0 && Intrinsics.compare(cCharAt, 90) <= 0)) {
            while (true) {
                pos++;
                if (pos >= limit) {
                    break;
                }
                char cCharAt2 = input.charAt(pos);
                if ('a' > cCharAt2 || cCharAt2 >= '{') {
                    if ('A' > cCharAt2 || cCharAt2 >= '[') {
                        if ('0' > cCharAt2 || cCharAt2 >= ':') {
                            if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                if (cCharAt2 == ':') {
                                    return pos;
                                }
                            }
                        }
                    }
                }
            }
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int slashCount(String str, int i, int i2) {
        int i3 = 0;
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\\' && cCharAt != '/') {
                break;
            }
            i3++;
            i++;
        }
        return i3;
    }

    private HttpUrl$Builder$Companion() {
    }
}
