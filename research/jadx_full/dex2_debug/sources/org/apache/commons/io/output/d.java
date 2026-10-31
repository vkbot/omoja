package org.apache.commons.io.output;

import org.apache.commons.io.function.IORunnable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class d implements IORunnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ UncheckedFilterOutputStream b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(UncheckedFilterOutputStream uncheckedFilterOutputStream, int i) {
        this.a = i;
        this.b = uncheckedFilterOutputStream;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IORunnable
    public final void run() {
        switch (this.a) {
            case 0:
                UncheckedFilterOutputStream.V(this.b);
                break;
            default:
                UncheckedFilterOutputStream.b(this.b);
                break;
        }
    }
}
