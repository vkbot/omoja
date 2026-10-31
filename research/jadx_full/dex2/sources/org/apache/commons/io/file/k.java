package org.apache.commons.io.file;

import java.nio.file.Path;
import java.nio.file.spi.FileSystemProvider;
import java.util.function.Predicate;
import org.apache.commons.io.file.spi.FileSystemProviders;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class k implements Predicate {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ k(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                return PathUtils.e((PathFilter) this.b, (Path) obj);
            default:
                return FileSystemProviders.a((String) this.b, (FileSystemProvider) obj);
        }
    }
}
