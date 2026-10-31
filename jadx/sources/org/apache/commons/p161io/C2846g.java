package org.apache.commons.p161io;

import java.io.File;
import org.apache.commons.p161io.filefilter.IOFileFilter;
import org.apache.commons.p161io.function.IOFunction;

/* JADX INFO: renamed from: org.apache.commons.io.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2846g implements IOFunction {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8031b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ IOFileFilter f8032c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ IOFileFilter f8033d;

    public /* synthetic */ C2846g(IOFileFilter iOFileFilter, IOFileFilter iOFileFilter2, int i10) {
        this.f8031b = i10;
        this.f8032c = iOFileFilter;
        this.f8033d = iOFileFilter2;
    }

    @Override // org.apache.commons.p161io.function.IOFunction
    public final Object apply(Object obj) {
        switch (this.f8031b) {
            case 0:
                return FileUtils.lambda$listFiles$10(this.f8032c, this.f8033d, (File) obj);
            default:
                return FileUtils.lambda$listFilesAndDirs$13(this.f8032c, this.f8033d, (File) obj);
        }
    }
}
