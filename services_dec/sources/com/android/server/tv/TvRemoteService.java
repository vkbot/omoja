package com.android.server.tv;

import android.content.Context;
import com.android.server.SystemService;
import com.android.server.Watchdog;

/* JADX INFO: loaded from: classes2.dex */
public class TvRemoteService extends SystemService implements Watchdog.Monitor {
    private static final boolean DEBUG = false;
    private static final String TAG = "TvRemoteService";
    private final Object mLock;
    private final TvRemoteProviderWatcher mWatcher;

    public TvRemoteService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mWatcher = new TvRemoteProviderWatcher(context, this.mLock);
        Watchdog.getInstance().addMonitor(this);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this.mLock) {
        }
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 600) {
            this.mWatcher.start();
        }
    }
}
