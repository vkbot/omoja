package org.apache.commons.p161io;

import java.io.Closeable;
import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2925u implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        IOUtils.closeQuietly((Closeable) obj);
    }
}
