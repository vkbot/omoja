package org.apache.commons.net;

import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.net.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2929a implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8123b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ ProtocolCommandEvent f8124c;

    public /* synthetic */ C2929a(ProtocolCommandEvent protocolCommandEvent, int i10) {
        this.f8123b = i10;
        this.f8124c = protocolCommandEvent;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f8123b) {
            case 0:
                ((ProtocolCommandListener) obj).protocolReplyReceived(this.f8124c);
                break;
            default:
                ((ProtocolCommandListener) obj).protocolCommandSent(this.f8124c);
                break;
        }
    }
}
