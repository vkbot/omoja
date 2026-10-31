package org.apache.commons.net;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ ProtocolCommandEvent c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(ProtocolCommandEvent protocolCommandEvent, int i) {
        this.b = i;
        this.c = protocolCommandEvent;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                ProtocolCommandSupport.a(this.c, (ProtocolCommandListener) obj);
                break;
            default:
                ProtocolCommandSupport.b(this.c, (ProtocolCommandListener) obj);
                break;
        }
    }
}
