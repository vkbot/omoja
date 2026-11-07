package com.android.server.people.data;

/* JADX INFO: renamed from: com.android.server.people.data.-$$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc implements Runnable {
    public final /* synthetic */ AbstractProtoDiskReadWriter f$0;

    public /* synthetic */ $$Lambda$AbstractProtoDiskReadWriter$nRGnkY2tYZySym1eNN1hpDLyKgc(AbstractProtoDiskReadWriter abstractProtoDiskReadWriter) {
        this.f$0 = abstractProtoDiskReadWriter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.flushScheduledData();
    }
}
