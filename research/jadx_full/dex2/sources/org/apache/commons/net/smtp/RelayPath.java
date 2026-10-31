package org.apache.commons.net.smtp;

import java.util.Enumeration;
import java.util.Vector;
import kotlin.text.Typography;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class RelayPath {
    private final String emailAddress;
    private final Vector<String> path = new Vector<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public RelayPath(String str) {
        this.emailAddress = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addRelay(String str) {
        this.path.addElement(str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("<");
        Enumeration<String> enumerationElements = this.path.elements();
        if (enumerationElements.hasMoreElements()) {
            sb.append('@');
            sb.append(enumerationElements.nextElement());
            while (enumerationElements.hasMoreElements()) {
                sb.append(",@");
                sb.append(enumerationElements.nextElement());
            }
            sb.append(':');
        }
        sb.append(this.emailAddress);
        sb.append(Typography.greater);
        return sb.toString();
    }
}
