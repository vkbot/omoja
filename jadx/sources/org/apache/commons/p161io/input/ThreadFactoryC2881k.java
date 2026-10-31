package org.apache.commons.p161io.input;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: renamed from: org.apache.commons.io.input.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ThreadFactoryC2881k implements ThreadFactory {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f8058b;

    public /* synthetic */ ThreadFactoryC2881k(int i10) {
        this.f8058b = i10;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f8058b) {
            case 0:
                return ReadAheadInputStream.newDaemonThread(runnable);
            default:
                return Tailer.Builder.newDaemonThread(runnable);
        }
    }
}
