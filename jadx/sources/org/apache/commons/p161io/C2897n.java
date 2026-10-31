package org.apache.commons.p161io;

import java.io.IOException;
import java.nio.file.Path;
import org.apache.commons.p161io.function.IOBiFunction;

/* JADX INFO: renamed from: org.apache.commons.io.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2897n implements IOBiFunction {
    @Override // org.apache.commons.p161io.function.IOBiFunction
    public final Object apply(Object obj, Object obj2) {
        return FileUtils.lambda$listAccumulate$9((Path) obj, (IOException) obj2);
    }
}
