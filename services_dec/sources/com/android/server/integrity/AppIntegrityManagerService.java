package com.android.server.integrity;

import android.content.Context;
import com.android.server.SystemService;

/* JADX INFO: loaded from: classes.dex */
public class AppIntegrityManagerService extends SystemService {
    private Context mContext;
    private AppIntegrityManagerServiceImpl mService;

    public AppIntegrityManagerService(Context context) {
        super(context);
        this.mContext = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.IBinder, com.android.server.integrity.AppIntegrityManagerServiceImpl] */
    @Override // com.android.server.SystemService
    public void onStart() {
        ?? Create = AppIntegrityManagerServiceImpl.create(this.mContext);
        this.mService = Create;
        publishBinderService("app_integrity", Create);
    }
}
