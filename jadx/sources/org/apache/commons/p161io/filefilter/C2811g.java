package org.apache.commons.p161io.filefilter;

import java.io.Serializable;
import java.nio.file.Path;
import java.util.function.Function;
import org.apache.commons.p161io.file.PathUtils;

/* JADX INFO: renamed from: org.apache.commons.io.filefilter.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2811g implements Function, Serializable {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return PathUtils.getFileNameString((Path) obj);
    }
}
