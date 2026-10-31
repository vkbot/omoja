package okhttp3.internal.ws;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lokhttp3/internal/ws/WebSocketExtensions$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "HEADER_WEB_SOCKET_EXTENSION", HttpUrl.FRAGMENT_ENCODE_SET, "parse", "Lokhttp3/internal/ws/WebSocketExtensions;", "responseHeaders", "Lokhttp3/Headers;", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WebSocketExtensions$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ WebSocketExtensions$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final WebSocketExtensions parse(Headers responseHeaders) {
        responseHeaders.getClass();
        int size = responseHeaders.size();
        Integer intOrNull = null;
        Integer intOrNull2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        for (int i = 0; i < size; i++) {
            if (StringsKt.s(responseHeaders.name(i), "Sec-WebSocket-Extensions")) {
                String strValue = responseHeaders.value(i);
                int i2 = 0;
                while (i2 < strValue.length()) {
                    int iDelimiterOffset$default = Util.delimiterOffset$default(strValue, ',', i2, 0, 4, (Object) null);
                    int iDelimiterOffset = Util.delimiterOffset(strValue, ';', i2, iDelimiterOffset$default);
                    String strTrimSubstring = Util.trimSubstring(strValue, i2, iDelimiterOffset);
                    int i3 = iDelimiterOffset + 1;
                    if (StringsKt.s(strTrimSubstring, "permessage-deflate")) {
                        if (z) {
                            z4 = true;
                        }
                        i2 = i3;
                        while (i2 < iDelimiterOffset$default) {
                            int iDelimiterOffset2 = Util.delimiterOffset(strValue, ';', i2, iDelimiterOffset$default);
                            int iDelimiterOffset3 = Util.delimiterOffset(strValue, '=', i2, iDelimiterOffset2);
                            String strTrimSubstring2 = Util.trimSubstring(strValue, i2, iDelimiterOffset3);
                            String strD = iDelimiterOffset3 < iDelimiterOffset2 ? StringsKt.D(Util.trimSubstring(strValue, iDelimiterOffset3 + 1, iDelimiterOffset2)) : null;
                            i2 = iDelimiterOffset2 + 1;
                            if (StringsKt.s(strTrimSubstring2, "client_max_window_bits")) {
                                if (intOrNull != null) {
                                    z4 = true;
                                }
                                intOrNull = strD != null ? StringsKt.toIntOrNull(strD) : null;
                                if (intOrNull == null) {
                                    z4 = true;
                                }
                            } else if (StringsKt.s(strTrimSubstring2, "client_no_context_takeover")) {
                                if (z2) {
                                    z4 = true;
                                }
                                if (strD != null) {
                                    z4 = true;
                                }
                                z2 = true;
                            } else {
                                if (StringsKt.s(strTrimSubstring2, "server_max_window_bits")) {
                                    if (intOrNull2 != null) {
                                        z4 = true;
                                    }
                                    intOrNull2 = strD != null ? StringsKt.toIntOrNull(strD) : null;
                                    if (intOrNull2 == null) {
                                    }
                                } else if (StringsKt.s(strTrimSubstring2, "server_no_context_takeover")) {
                                    if (z3) {
                                        z4 = true;
                                    }
                                    if (strD != null) {
                                        z4 = true;
                                    }
                                    z3 = true;
                                }
                                z4 = true;
                            }
                        }
                        z = true;
                    } else {
                        i2 = i3;
                        z4 = true;
                    }
                }
            }
        }
        return new WebSocketExtensions(z, intOrNull, z2, intOrNull2, z3, z4);
    }

    private WebSocketExtensions$Companion() {
    }
}
