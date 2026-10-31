package org.apache.commons.io;

import java.io.IOException;
import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class t implements Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ Exception c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ t(Exception exc, int i) {
        this.b = i;
        this.c = exc;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Throwable th;
        switch (this.b) {
            case 0:
                th = this.c;
                break;
            default:
                th = (IOException) this.c;
                break;
        }
        th.addSuppressed((Exception) obj);
    }
}
