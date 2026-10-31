package org.apache.commons.p161io.input;

import java.io.IOException;
import org.apache.commons.p161io.function.IORunnable;

/* JADX INFO: renamed from: org.apache.commons.io.input.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2884n implements IORunnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f8063a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ UncheckedBufferedReader f8064b;

    public /* synthetic */ C2884n(UncheckedBufferedReader uncheckedBufferedReader, int i10) {
        this.f8063a = i10;
        this.f8064b = uncheckedBufferedReader;
    }

    @Override // org.apache.commons.p161io.function.IORunnable
    public final void run() throws IOException {
        switch (this.f8063a) {
            case 0:
                this.f8064b.lambda$reset$8();
                break;
            default:
                this.f8064b.lambda$close$0();
                break;
        }
    }
}
