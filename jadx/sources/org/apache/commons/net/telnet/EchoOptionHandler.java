package org.apache.commons.net.telnet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class EchoOptionHandler extends TelnetOptionHandler {
    public EchoOptionHandler() {
        super(1, false, false, false, false);
    }

    public EchoOptionHandler(boolean z9, boolean z10, boolean z11, boolean z12) {
        super(1, z9, z10, z11, z12);
    }
}
