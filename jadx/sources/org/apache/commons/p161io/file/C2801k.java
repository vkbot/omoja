package org.apache.commons.p161io.file;

import java.nio.file.Path;
import java.nio.file.spi.FileSystemProvider;
import java.util.function.Predicate;
import org.apache.commons.p161io.file.spi.FileSystemProviders;

/* JADX INFO: renamed from: org.apache.commons.io.file.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2801k implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7955a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Object f7956b;

    public /* synthetic */ C2801k(int i10, Object obj) {
        this.f7955a = i10;
        this.f7956b = obj;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7955a) {
            case 0:
                return PathUtils.lambda$filterPaths$2((PathFilter) this.f7956b, (Path) obj);
            default:
                return FileSystemProviders.lambda$getFileSystemProvider$0((String) this.f7956b, (FileSystemProvider) obj);
        }
    }
}
