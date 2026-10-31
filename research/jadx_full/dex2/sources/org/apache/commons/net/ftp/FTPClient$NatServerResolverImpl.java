package org.apache.commons.net.ftp;

import java.net.InetAddress;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class FTPClient$NatServerResolverImpl implements FTPClient$HostnameResolver {
    private final FTPClient client;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FTPClient$NatServerResolverImpl(FTPClient fTPClient) {
        this.client = fTPClient;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.net.ftp.FTPClient$HostnameResolver
    public String resolve(String str) {
        if (!InetAddress.getByName(str).isSiteLocalAddress()) {
            return str;
        }
        InetAddress remoteAddress = this.client.getRemoteAddress();
        return !remoteAddress.isSiteLocalAddress() ? remoteAddress.getHostAddress() : str;
    }
}
