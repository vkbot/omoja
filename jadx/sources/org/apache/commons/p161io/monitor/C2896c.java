package org.apache.commons.p161io.monitor;

import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.monitor.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2896c implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8089b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ FileAlterationObserver f8090c;

    public /* synthetic */ C2896c(FileAlterationObserver fileAlterationObserver, int i10) {
        this.f8089b = i10;
        this.f8090c = fileAlterationObserver;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f8089b) {
            case 0:
                this.f8090c.fireOnCreate((FileEntry) obj);
                break;
            case 1:
                this.f8090c.lambda$checkAndNotify$0((FileAlterationListener) obj);
                break;
            default:
                this.f8090c.lambda$checkAndNotify$1((FileAlterationListener) obj);
                break;
        }
    }
}
