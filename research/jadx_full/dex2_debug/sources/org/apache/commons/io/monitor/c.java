package org.apache.commons.io.monitor;

import java.util.function.Consumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class c implements Consumer {
    public final /* synthetic */ int b;
    public final /* synthetic */ FileAlterationObserver c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(FileAlterationObserver fileAlterationObserver, int i) {
        this.b = i;
        this.c = fileAlterationObserver;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                FileAlterationObserver.a(this.c, (FileEntry) obj);
                break;
            case 1:
                FileAlterationObserver.b(this.c, (FileAlterationListener) obj);
                break;
            default:
                FileAlterationObserver.c(this.c, (FileAlterationListener) obj);
                break;
        }
    }
}
