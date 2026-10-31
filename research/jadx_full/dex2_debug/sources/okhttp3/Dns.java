package okhttp3;

import java.net.InetAddress;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007J\u0016\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&¨\u0006\b"}, d2 = {"Lokhttp3/Dns;", HttpUrl.FRAGMENT_ENCODE_SET, "lookup", HttpUrl.FRAGMENT_ENCODE_SET, "Ljava/net/InetAddress;", "hostname", HttpUrl.FRAGMENT_ENCODE_SET, "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface Dns {
    public static final Dns$Companion Companion = Dns$Companion.$$INSTANCE;

    @JvmField
    public static final Dns SYSTEM = new Dns$Companion$DnsSystem();

    List<InetAddress> lookup(String hostname);
}
