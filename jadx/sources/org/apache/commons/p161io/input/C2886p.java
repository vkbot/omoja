package org.apache.commons.p161io.input;

import java.io.IOException;
import org.apache.commons.p161io.function.IORunnable;

/* JADX INFO: renamed from: org.apache.commons.io.input.p */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2886p implements IORunnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8067a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ UncheckedFilterInputStream f8068b;

    public /* synthetic */ C2886p(UncheckedFilterInputStream uncheckedFilterInputStream, int i10) {
        this.f8067a = i10;
        this.f8068b = uncheckedFilterInputStream;
    }

    @Override // org.apache.commons.p161io.function.IORunnable
    public final void run() throws IOException {
        switch (this.f8067a) {
            case 0:
                this.f8068b.lambda$reset$5();
                break;
            default:
                this.f8068b.lambda$close$1();
                break;
        }
    }
}
