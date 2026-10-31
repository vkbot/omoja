package org.apache.commons.net.util;

import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class SSLSocketUtils {
    private SSLSocketUtils() {
    }

    public static boolean enableEndpointNameVerification(SSLSocket sSLSocket) {
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        sSLParameters.setEndpointIdentificationAlgorithm("HTTPS");
        sSLSocket.setSSLParameters(sSLParameters);
        return true;
    }
}
