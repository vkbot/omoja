package org.apache.commons.io;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import org.apache.commons.io.function.IOConsumer;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class s implements IOConsumer {
    public final /* synthetic */ int a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ s(int i) {
        this.a = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.a) {
            case 0:
                FileUtils.forceDeleteOnExit((File) obj);
                break;
            case 1:
                FileUtils.e((File) obj);
                break;
            default:
                IOUtils.close((Closeable) obj);
                break;
        }
    }
}
