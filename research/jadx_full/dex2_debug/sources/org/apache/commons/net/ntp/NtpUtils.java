package org.apache.commons.net.ntp;

import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class NtpUtils {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public NtpUtils() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getHostAddress(int i) {
        return ((i >>> 24) & 255) + "." + ((i >>> 16) & 255) + "." + ((i >>> 8) & 255) + "." + (i & 255);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getModeName(int i) {
        switch (i) {
            case 0:
                return "Reserved";
            case 1:
                return "Symmetric Active";
            case 2:
                return "Symmetric Passive";
            case 3:
                return "Client";
            case 4:
                return "Server";
            case 5:
                return "Broadcast";
            case 6:
                return "Control";
            case 7:
                return "Private";
            default:
                return "Unknown";
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getRefAddress(NtpV3Packet ntpV3Packet) {
        return getHostAddress(ntpV3Packet == null ? 0 : ntpV3Packet.getReferenceId());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String getReferenceClock(NtpV3Packet ntpV3Packet) {
        int referenceId;
        if (ntpV3Packet == null || (referenceId = ntpV3Packet.getReferenceId()) == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        StringBuilder sb = new StringBuilder(4);
        for (int i = 24; i >= 0; i -= 8) {
            char c = (char) ((referenceId >>> i) & 255);
            if (c == 0) {
                break;
            }
            if (!Character.isLetterOrDigit(c)) {
                return HttpUrl.FRAGMENT_ENCODE_SET;
            }
            sb.append(c);
        }
        return sb.toString();
    }
}
