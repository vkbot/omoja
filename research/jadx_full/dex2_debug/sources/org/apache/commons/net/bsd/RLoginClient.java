package org.apache.commons.net.bsd;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class RLoginClient extends RCommandClient {
    public static final int DEFAULT_PORT = 513;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RLoginClient() {
        setDefaultPort(DEFAULT_PORT);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void rlogin(String str, String str2, String str3, int i) throws IOException {
        rexec(str, str2, str3 + "/" + i, false);
    }

    public void rlogin(String str, String str2, String str3) throws IOException {
        rexec(str, str2, str3, false);
    }
}
