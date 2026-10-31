package org.apache.commons.net.whois;

import java.io.InputStream;
import org.apache.commons.net.finger.FingerClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class WhoisClient extends FingerClient {
    public static final String DEFAULT_HOST = "whois.internic.net";
    public static final int DEFAULT_PORT = 43;

    public WhoisClient() {
        setDefaultPort(43);
    }

    public InputStream getInputStream(String str) {
        return lambda$query$0(false, str);
    }

    public String query(String str) {
        return query(false, str);
    }
}
