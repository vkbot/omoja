package org.apache.commons.p161io.output;

import java.io.IOException;
import org.apache.commons.p161io.function.IORunnable;

/* JADX INFO: renamed from: org.apache.commons.io.output.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2914f implements IORunnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8100a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ UncheckedFilterWriter f8101b;

    public /* synthetic */ C2914f(UncheckedFilterWriter uncheckedFilterWriter, int i10) {
        this.f8100a = i10;
        this.f8101b = uncheckedFilterWriter;
    }

    @Override // org.apache.commons.p161io.function.IORunnable
    public final void run() throws IOException {
        switch (this.f8100a) {
            case 0:
                this.f8101b.lambda$flush$4();
                break;
            default:
                this.f8101b.lambda$close$3();
                break;
        }
    }
}
