package org.apache.commons.io.input;

import org.apache.commons.io.function.IORunnable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class r implements IORunnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ UncheckedFilterReader b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ r(UncheckedFilterReader uncheckedFilterReader, int i) {
        this.a = i;
        this.b = uncheckedFilterReader;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IORunnable
    public final void run() {
        switch (this.a) {
            case 0:
                UncheckedFilterReader.c(this.b);
                break;
            default:
                UncheckedFilterReader.b(this.b);
                break;
        }
    }
}
