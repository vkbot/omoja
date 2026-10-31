package okhttp3;

import ai.onnxruntime.a;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import n0.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Lokhttp3/Protocol$Companion;", HttpUrl.FRAGMENT_ENCODE_SET, "()V", "get", "Lokhttp3/Protocol;", "protocol", HttpUrl.FRAGMENT_ENCODE_SET, "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Protocol$Companion {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ Protocol$Companion(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @JvmStatic
    public final Protocol get(String protocol) {
        protocol.getClass();
        Protocol protocol2 = Protocol.HTTP_1_0;
        if (Intrinsics.areEqual(protocol, Protocol.access$getProtocol$p(protocol2))) {
            return protocol2;
        }
        Protocol protocol3 = Protocol.HTTP_1_1;
        if (Intrinsics.areEqual(protocol, Protocol.access$getProtocol$p(protocol3))) {
            return protocol3;
        }
        Protocol protocol4 = Protocol.H2_PRIOR_KNOWLEDGE;
        if (Intrinsics.areEqual(protocol, Protocol.access$getProtocol$p(protocol4))) {
            return protocol4;
        }
        Protocol protocol5 = Protocol.HTTP_2;
        if (Intrinsics.areEqual(protocol, Protocol.access$getProtocol$p(protocol5))) {
            return protocol5;
        }
        Protocol protocol6 = Protocol.SPDY_3;
        if (Intrinsics.areEqual(protocol, Protocol.access$getProtocol$p(protocol6))) {
            return protocol6;
        }
        Protocol protocol7 = Protocol.QUIC;
        if (Intrinsics.areEqual(protocol, Protocol.access$getProtocol$p(protocol7))) {
            return protocol7;
        }
        b.A(a.l("Unexpected protocol: ", protocol));
        return null;
    }

    private Protocol$Companion() {
    }
}
