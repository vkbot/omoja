package org.apache.commons.io.filefilter;

import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.function.Predicate;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final /* synthetic */ class a implements Predicate {
    public final /* synthetic */ int a;
    public final /* synthetic */ Path b;
    public final /* synthetic */ BasicFileAttributes c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(Path path, BasicFileAttributes basicFileAttributes, int i) {
        this.a = i;
        this.b = path;
        this.c = basicFileAttributes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.a) {
            case 0:
                return AndFileFilter.b(this.b, this.c, (IOFileFilter) obj);
            default:
                return OrFileFilter.a(this.b, this.c, (IOFileFilter) obj);
        }
    }
}
