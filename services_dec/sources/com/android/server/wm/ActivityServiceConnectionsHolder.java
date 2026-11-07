package com.android.server.wm;

import android.util.ArraySet;
import java.io.PrintWriter;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityServiceConnectionsHolder<T> {
    private final ActivityRecord mActivity;
    private ArraySet<T> mConnections;
    private volatile boolean mIsDisconnecting;
    private final ActivityTaskManagerService mService;

    ActivityServiceConnectionsHolder(ActivityTaskManagerService service, ActivityRecord activity) {
        this.mService = service;
        this.mActivity = activity;
    }

    public void addConnection(T c) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mIsDisconnecting) {
                    return;
                }
                if (this.mConnections == null) {
                    this.mConnections = new ArraySet<>();
                }
                this.mConnections.add(c);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public void removeConnection(T c) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mConnections == null) {
                    return;
                }
                this.mConnections.remove(c);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public boolean isActivityVisible() {
        boolean z;
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                z = this.mActivity.mVisibleRequested || this.mActivity.isState(ActivityStack.ActivityState.RESUMED, ActivityStack.ActivityState.PAUSING);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return z;
    }

    public int getActivityPid() {
        int pid;
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                pid = this.mActivity.hasProcess() ? this.mActivity.app.getPid() : -1;
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
        return pid;
    }

    public void forEachConnection(Consumer<T> consumer) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mConnections != null && !this.mConnections.isEmpty()) {
                    for (int i = this.mConnections.size() - 1; i >= 0; i--) {
                        consumer.accept(this.mConnections.valueAt(i));
                    }
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void disconnectActivityFromServices() {
        ArraySet<T> arraySet = this.mConnections;
        if (arraySet == null || arraySet.isEmpty() || this.mIsDisconnecting) {
            return;
        }
        this.mIsDisconnecting = true;
        this.mService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityServiceConnectionsHolder$E9W1qwLXBAwoppLfYj6pecVF_x8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$disconnectActivityFromServices$0$ActivityServiceConnectionsHolder();
            }
        });
    }

    public /* synthetic */ void lambda$disconnectActivityFromServices$0$ActivityServiceConnectionsHolder() {
        this.mService.mAmInternal.disconnectActivityFromServices(this);
        this.mIsDisconnecting = false;
    }

    public void dump(PrintWriter pw, String prefix) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                pw.println(prefix + "activity=" + this.mActivity);
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    public String toString() {
        return String.valueOf(this.mConnections);
    }
}
