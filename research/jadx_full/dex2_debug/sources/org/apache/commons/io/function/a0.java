package org.apache.commons.io.function;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a0 implements Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a0(int i, Object obj) {
        this.b = i;
        this.c = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                IOStreams.b((IOConsumer) this.c, obj);
                break;
            case 1:
                IOConsumer.b((IOConsumer) this.c, obj);
                break;
            case 2:
                IOStream.h((IOConsumer) this.c, obj);
                break;
            case 3:
                IOStream.R((IOConsumer) this.c, obj);
                break;
            case 4:
                IOStream.C((IOConsumer) this.c, obj);
                break;
            default:
                IOIntConsumer.c((IOIntConsumer) this.c, (Integer) obj);
                break;
        }
    }
}
