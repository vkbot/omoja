package com.android.server;

import android.content.Context;
import android.util.Log;
import com.android.internal.util.ConcurrentUtils;
import com.android.server.location.ContextHubService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
class ContextHubSystemService extends SystemService {
    private static final String TAG = "ContextHubSystemService";
    private ContextHubService mContextHubService;
    private Future<?> mInit;

    public ContextHubSystemService(final Context context) {
        super(context);
        this.mInit = SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.-$$Lambda$ContextHubSystemService$q-5gSEKm3he-4vIHcay4DLtf85E
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$ContextHubSystemService(context);
            }
        }, "Init ContextHubSystemService");
    }

    public /* synthetic */ void lambda$new$0$ContextHubSystemService(Context context) {
        this.mContextHubService = new ContextHubService(context);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 500) {
            Log.d(TAG, "onBootPhase: PHASE_SYSTEM_SERVICES_READY");
            ConcurrentUtils.waitForFutureNoInterrupt(this.mInit, "Wait for ContextHubSystemService init");
            this.mInit = null;
            publishBinderService("contexthub", this.mContextHubService);
        }
    }
}
