package org.apache.commons.p161io.file;

import java.nio.file.Path;
import java.util.function.UnaryOperator;

/* JADX INFO: renamed from: org.apache.commons.io.file.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2800j implements UnaryOperator {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return PathUtils.stripTrailingSeparator((Path) obj);
    }
}
