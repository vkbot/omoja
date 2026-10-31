package org.apache.commons.p161io;

import java.io.File;
import java.io.FilenameFilter;
import java.util.List;
import java.util.function.Consumer;
import org.apache.commons.p161io.monitor.FileAlterationListener;
import org.apache.commons.p161io.monitor.FileAlterationObserver;
import org.apache.commons.p161io.monitor.FileEntry;

/* JADX INFO: renamed from: org.apache.commons.io.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2890k implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8078b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f8079c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f8080d;

    public /* synthetic */ C2890k(int i10, Object obj, Object obj2) {
        this.f8078b = i10;
        this.f8079c = obj;
        this.f8080d = obj2;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f8078b) {
            case 0:
                FileUtils.listFiles((File) obj, (List) this.f8079c, true, (FilenameFilter) this.f8080d);
                break;
            default:
                FileAlterationObserver.lambda$fireOnChange$2((FileEntry) this.f8079c, (File) this.f8080d, (FileAlterationListener) obj);
                break;
        }
    }
}
