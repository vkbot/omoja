package com.android.server;

import android.app.BroadcastOptions;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class PendingIntentUtils {
    public static Bundle createDontSendToRestrictedAppsBundle(Bundle bundle) {
        BroadcastOptions options = BroadcastOptions.makeBasic();
        options.setDontSendToRestrictedApps(true);
        options.setPendingIntentBackgroundActivityLaunchAllowed(false);
        if (bundle == null) {
            return options.toBundle();
        }
        bundle.putAll(options.toBundle());
        return bundle;
    }

    private PendingIntentUtils() {
    }
}
