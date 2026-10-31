package org.apache.commons.p161io.file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import org.apache.commons.p161io.function.IOConsumer;

/* JADX INFO: renamed from: org.apache.commons.io.file.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2793c implements IOConsumer {
    @Override // org.apache.commons.p161io.function.IOConsumer
    public final void accept(Object obj) throws IOException {
        Files.delete((Path) obj);
    }
}
