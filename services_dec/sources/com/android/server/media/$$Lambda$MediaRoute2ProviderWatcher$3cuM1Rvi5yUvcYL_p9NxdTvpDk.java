package com.android.server.media;

/* JADX INFO: renamed from: com.android.server.media.-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk, reason: invalid class name */
/* JADX INFO: compiled from: lambda */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class $$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi5yUvcYL_p9NxdTvpDk implements Runnable {
    public final /* synthetic */ MediaRoute2ProviderWatcher f$0;

    public /* synthetic */ $$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi5yUvcYL_p9NxdTvpDk(MediaRoute2ProviderWatcher mediaRoute2ProviderWatcher) {
        this.f$0 = mediaRoute2ProviderWatcher;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.scanPackages();
    }
}
