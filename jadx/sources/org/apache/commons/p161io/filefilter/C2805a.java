package org.apache.commons.p161io.filefilter;

import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.function.Predicate;

/* JADX INFO: renamed from: org.apache.commons.io.filefilter.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2805a implements Predicate {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f7962a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Path f7963b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ BasicFileAttributes f7964c;

    public /* synthetic */ C2805a(Path path, BasicFileAttributes basicFileAttributes, int i10) {
        this.f7962a = i10;
        this.f7963b = path;
        this.f7964c = basicFileAttributes;
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f7962a) {
            case 0:
                return AndFileFilter.lambda$accept$2(this.f7963b, this.f7964c, (IOFileFilter) obj);
            default:
                return OrFileFilter.lambda$accept$2(this.f7963b, this.f7964c, (IOFileFilter) obj);
        }
    }
}
