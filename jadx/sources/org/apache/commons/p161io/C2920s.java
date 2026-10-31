package org.apache.commons.p161io;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import org.apache.commons.p161io.function.IOConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.s */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2920s implements IOConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8112a;

    public /* synthetic */ C2920s(int i10) {
        this.f8112a = i10;
    }

    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        switch (this.f8112a) {
            case 0:
                FileUtils.forceDeleteOnExit((File) obj);
                break;
            case 1:
                FileUtils.forceDelete((File) obj, false);
                break;
            default:
                IOUtils.close((Closeable) obj);
                break;
        }
    }
}
