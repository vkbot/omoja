package org.apache.commons.p161io.monitor;

import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.monitor.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2895b implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8087b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ FileEntry f8088c;

    public /* synthetic */ C2895b(FileEntry fileEntry, int i10) {
        this.f8087b = i10;
        this.f8088c = fileEntry;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f8087b) {
            case 0:
                FileAlterationObserver.lambda$fireOnCreate$3(this.f8088c, (FileAlterationListener) obj);
                break;
            default:
                FileAlterationObserver.lambda$fireOnDelete$4(this.f8088c, (FileAlterationListener) obj);
                break;
        }
    }
}
