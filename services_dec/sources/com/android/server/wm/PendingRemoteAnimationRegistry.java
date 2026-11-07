package com.android.server.wm;

import android.app.ActivityOptions;
import android.os.Handler;
import android.util.ArrayMap;
import android.view.RemoteAnimationAdapter;

/* JADX INFO: loaded from: classes2.dex */
class PendingRemoteAnimationRegistry {
    private static final long TIMEOUT_MS = 3000;
    private final ArrayMap<String, Entry> mEntries = new ArrayMap<>();
    private final Handler mHandler;
    private final WindowManagerGlobalLock mLock;

    PendingRemoteAnimationRegistry(WindowManagerGlobalLock lock, Handler handler) {
        this.mLock = lock;
        this.mHandler = handler;
    }

    void addPendingAnimation(String packageName, RemoteAnimationAdapter adapter) {
        this.mEntries.put(packageName, new Entry(packageName, adapter));
    }

    ActivityOptions overrideOptionsIfNeeded(String callingPackage, ActivityOptions options) {
        Entry entry = this.mEntries.get(callingPackage);
        if (entry == null) {
            return options;
        }
        if (options == null) {
            options = ActivityOptions.makeRemoteAnimation(entry.adapter);
        } else {
            options.setRemoteAnimationAdapter(entry.adapter);
        }
        this.mEntries.remove(callingPackage);
        return options;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Entry {
        final RemoteAnimationAdapter adapter;
        final String packageName;

        Entry(final String packageName, RemoteAnimationAdapter adapter) {
            this.packageName = packageName;
            this.adapter = adapter;
            PendingRemoteAnimationRegistry.this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.wm.-$$Lambda$PendingRemoteAnimationRegistry$Entry$giivzkMgzIxukCXvO2EVzLb0oxo
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0$PendingRemoteAnimationRegistry$Entry(packageName);
                }
            }, 3000L);
        }

        public /* synthetic */ void lambda$new$0$PendingRemoteAnimationRegistry$Entry(String packageName) {
            synchronized (PendingRemoteAnimationRegistry.this.mLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    Entry entry = (Entry) PendingRemoteAnimationRegistry.this.mEntries.get(packageName);
                    if (entry == this) {
                        PendingRemoteAnimationRegistry.this.mEntries.remove(packageName);
                    }
                } finally {
                    WindowManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }
}
