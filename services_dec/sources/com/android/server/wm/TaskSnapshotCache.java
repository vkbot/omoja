package com.android.server.wm;

import android.app.ActivityManager;
import android.util.ArrayMap;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
class TaskSnapshotCache {
    private final TaskSnapshotLoader mLoader;
    private final WindowManagerService mService;
    private final ArrayMap<ActivityRecord, Integer> mAppTaskMap = new ArrayMap<>();
    private final ArrayMap<Integer, CacheEntry> mRunningCache = new ArrayMap<>();

    TaskSnapshotCache(WindowManagerService service, TaskSnapshotLoader loader) {
        this.mService = service;
        this.mLoader = loader;
    }

    void clearRunningCache() {
        this.mRunningCache.clear();
    }

    void putSnapshot(Task task, ActivityManager.TaskSnapshot snapshot) {
        CacheEntry entry = this.mRunningCache.get(Integer.valueOf(task.mTaskId));
        if (entry != null) {
            this.mAppTaskMap.remove(entry.topApp);
        }
        ActivityRecord top = task.getTopMostActivity();
        this.mAppTaskMap.put(top, Integer.valueOf(task.mTaskId));
        this.mRunningCache.put(Integer.valueOf(task.mTaskId), new CacheEntry(snapshot, top));
    }

    ActivityManager.TaskSnapshot getSnapshot(int taskId, int userId, boolean restoreFromDisk, boolean isLowResolution) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                CacheEntry entry = this.mRunningCache.get(Integer.valueOf(taskId));
                if (entry != null) {
                    ActivityManager.TaskSnapshot taskSnapshot = entry.snapshot;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    return taskSnapshot;
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                if (!restoreFromDisk) {
                    return null;
                }
                return tryRestoreFromDisk(taskId, userId, isLowResolution);
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    private ActivityManager.TaskSnapshot tryRestoreFromDisk(int taskId, int userId, boolean isLowResolution) {
        ActivityManager.TaskSnapshot snapshot = this.mLoader.loadTask(taskId, userId, isLowResolution);
        if (snapshot == null) {
            return null;
        }
        return snapshot;
    }

    void onAppRemoved(ActivityRecord activity) {
        Integer taskId = this.mAppTaskMap.get(activity);
        if (taskId != null) {
            removeRunningEntry(taskId.intValue());
        }
    }

    void onAppDied(ActivityRecord activity) {
        Integer taskId = this.mAppTaskMap.get(activity);
        if (taskId != null) {
            removeRunningEntry(taskId.intValue());
        }
    }

    void onTaskRemoved(int taskId) {
        removeRunningEntry(taskId);
    }

    void removeRunningEntry(int taskId) {
        CacheEntry entry = this.mRunningCache.get(Integer.valueOf(taskId));
        if (entry != null) {
            this.mAppTaskMap.remove(entry.topApp);
            this.mRunningCache.remove(Integer.valueOf(taskId));
        }
    }

    void dump(PrintWriter pw, String prefix) {
        String doublePrefix = prefix + "  ";
        String triplePrefix = doublePrefix + "  ";
        pw.println(prefix + "SnapshotCache");
        for (int i = this.mRunningCache.size() + (-1); i >= 0; i += -1) {
            CacheEntry entry = this.mRunningCache.valueAt(i);
            pw.println(doublePrefix + "Entry taskId=" + this.mRunningCache.keyAt(i));
            pw.println(triplePrefix + "topApp=" + entry.topApp);
            pw.println(triplePrefix + "snapshot=" + entry.snapshot);
        }
    }

    private static final class CacheEntry {
        final ActivityManager.TaskSnapshot snapshot;
        final ActivityRecord topApp;

        CacheEntry(ActivityManager.TaskSnapshot snapshot, ActivityRecord topApp) {
            this.snapshot = snapshot;
            this.topApp = topApp;
        }
    }
}
