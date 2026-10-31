package org.apache.commons.p161io.output;

import java.io.IOException;
import org.apache.commons.p161io.function.IORunnable;

/* JADX INFO: renamed from: org.apache.commons.io.output.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2912d implements IORunnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8096a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ UncheckedFilterOutputStream f8097b;

    public /* synthetic */ C2912d(UncheckedFilterOutputStream uncheckedFilterOutputStream, int i10) {
        this.f8096a = i10;
        this.f8097b = uncheckedFilterOutputStream;
    }

    @Override // org.apache.commons.p161io.function.IORunnable
    public final void run() throws IOException {
        switch (this.f8096a) {
            case 0:
                this.f8097b.lambda$flush$1();
                break;
            default:
                this.f8097b.lambda$close$0();
                break;
        }
    }
}
