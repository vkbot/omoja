package org.apache.commons.p161io;

import java.io.IOException;
import java.util.function.Consumer;

/* JADX INFO: renamed from: org.apache.commons.io.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2924t implements Consumer {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8116b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Exception f8117c;

    public /* synthetic */ C2924t(Exception exc, int i10) {
        this.f8116b = i10;
        this.f8117c = exc;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Throwable th;
        switch (this.f8116b) {
            case 0:
                th = this.f8117c;
                break;
            default:
                th = (IOException) this.f8117c;
                break;
        }
        th.addSuppressed((Exception) obj);
    }
}
