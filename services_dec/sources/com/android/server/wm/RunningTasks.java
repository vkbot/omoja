package com.android.server.wm;

import android.app.ActivityManager;
import android.os.UserHandle;
import android.util.ArraySet;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes2.dex */
class RunningTasks {
    private static final Comparator<Task> LAST_ACTIVE_TIME_COMPARATOR = new Comparator() { // from class: com.android.server.wm.-$$Lambda$RunningTasks$MPCBAZpSXKx53M7vrqtvLfftJOc
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Long.signum(((Task) obj2).lastActiveTime - ((Task) obj).lastActiveTime);
        }
    };
    private boolean mAllowed;
    private int mCallingUid;
    private boolean mCrossUser;
    private boolean mFilterOnlyVisibleRecents;
    private ArraySet<Integer> mProfileIds;
    private RecentTasks mRecentTasks;
    private final TreeSet<Task> mTmpSortedSet = new TreeSet<>(LAST_ACTIVE_TIME_COMPARATOR);
    private ActivityStack mTopDisplayFocusStack;
    private int mUserId;

    RunningTasks() {
    }

    void getTasks(int maxNum, List<ActivityManager.RunningTaskInfo> list, boolean filterOnlyVisibleRecents, RootWindowContainer root, int callingUid, boolean allowed, boolean crossUser, ArraySet<Integer> profileIds) {
        if (maxNum <= 0) {
            return;
        }
        this.mTmpSortedSet.clear();
        this.mCallingUid = callingUid;
        this.mUserId = UserHandle.getUserId(callingUid);
        this.mCrossUser = crossUser;
        this.mProfileIds = profileIds;
        this.mAllowed = allowed;
        this.mFilterOnlyVisibleRecents = filterOnlyVisibleRecents;
        this.mTopDisplayFocusStack = root.getTopDisplayFocusedStack();
        this.mRecentTasks = root.mService.getRecentTasks();
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$RunningTasks$hR_Ryk91b0B2BdJN9eCfQfPwC3g
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((RunningTasks) obj).processTask((Task) obj2);
            }
        }, this, PooledLambda.__(Task.class));
        root.forAllLeafTasks(c, false);
        c.recycle();
        Iterator<Task> iter = this.mTmpSortedSet.iterator();
        while (iter.hasNext() && maxNum != 0) {
            Task task = iter.next();
            list.add(createRunningTaskInfo(task));
            maxNum--;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processTask(Task task) {
        if (task.getTopNonFinishingActivity() == null) {
            return;
        }
        if (task.effectiveUid != this.mCallingUid) {
            if (task.mUserId != this.mUserId && !this.mCrossUser && !this.mProfileIds.contains(Integer.valueOf(task.mUserId))) {
                return;
            }
            if (!this.mAllowed && !task.isActivityTypeHome()) {
                return;
            }
        }
        if (this.mFilterOnlyVisibleRecents && task.getActivityType() != 2 && task.getActivityType() != 3 && !this.mRecentTasks.isVisibleRecentTask(task)) {
            return;
        }
        ActivityStack stack = task.getStack();
        if (stack == this.mTopDisplayFocusStack && stack.getTopMostTask() == task) {
            task.touchActiveTime();
        }
        this.mTmpSortedSet.add(task);
    }

    private ActivityManager.RunningTaskInfo createRunningTaskInfo(Task task) {
        ActivityManager.RunningTaskInfo rti = task.getTaskInfo();
        rti.id = rti.taskId;
        if (!this.mAllowed) {
            Task.trimIneffectiveInfo(task, rti);
        }
        return rti;
    }
}
