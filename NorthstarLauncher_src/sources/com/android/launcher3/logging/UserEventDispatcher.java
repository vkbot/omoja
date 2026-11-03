package com.android.launcher3.logging;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.Log;
import android.view.View;
import com.android.launcher3.DropTarget;
import com.android.launcher3.R;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.ResourceBasedOverride;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import com.google.protobuf.nano.MessageNano;
import java.util.ArrayList;
import java.util.Optional;
import java.util.UUID;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes.dex */
public class UserEventDispatcher implements ResourceBasedOverride {
    private static final boolean IS_VERBOSE = Utilities.isPropertyEnabled("UserEvent");
    private static final String TAG = "UserEvent";
    private static final String UUID_STORAGE = "uuid";
    private long mActionDurationMillis;
    private boolean mAppOrTaskLaunch;
    private long mElapsedContainerMillis;
    private long mElapsedSessionMillis;
    protected InstantAppResolver mInstantAppResolver;
    private boolean mPreviousHomeGesture;
    private boolean mSessionStarted;
    private String mUuidStr;

    public final boolean isPreviousHomeGesture() {
        return this.mPreviousHomeGesture;
    }

    public void logActionTip(int actionType, int viewType) {
    }

    protected void onFillInLogContainerData(ItemInfo itemInfo, LauncherLogProto.Target target, ArrayList<LauncherLogProto.Target> targets) {
    }

    public final void setPreviousHomeGesture(boolean homeGesture) {
        this.mPreviousHomeGesture = homeGesture;
    }

    public static UserEventDispatcher newInstance(Context context) {
        SharedPreferences devicePrefs = Utilities.getDevicePrefs(context);
        String string = devicePrefs.getString(UUID_STORAGE, null);
        if (string == null) {
            string = UUID.randomUUID().toString();
            devicePrefs.edit().putString(UUID_STORAGE, string).apply();
        }
        UserEventDispatcher userEventDispatcher = (UserEventDispatcher) ResourceBasedOverride.Overrides.getObject(UserEventDispatcher.class, context.getApplicationContext(), R.string.user_event_dispatcher_class);
        userEventDispatcher.mUuidStr = string;
        userEventDispatcher.mInstantAppResolver = InstantAppResolver.newInstance(context);
        return userEventDispatcher;
    }

    public boolean fillLogContainer(View v, LauncherLogProto.Target child, ArrayList<LauncherLogProto.Target> targets) {
        StatsLogUtils.LogContainerProvider launchProviderRecursive = StatsLogUtils.getLaunchProviderRecursive(v);
        if (v == null || !(v.getTag() instanceof ItemInfo) || launchProviderRecursive == null) {
            return false;
        }
        launchProviderRecursive.fillInLogContainerData((ItemInfo) v.getTag(), child, targets);
        return true;
    }

    @Deprecated
    public void logAppLaunch(View v, Intent intent, UserHandle userHandle) {
        LauncherLogProto.Target targetNewItemTarget = LoggerUtils.newItemTarget(v, this.mInstantAppResolver);
        LauncherLogProto.Action actionNewTouchAction = LoggerUtils.newTouchAction(0);
        ArrayList<LauncherLogProto.Target> arrayListMakeTargetsList = makeTargetsList(targetNewItemTarget);
        if (fillLogContainer(v, targetNewItemTarget, arrayListMakeTargetsList)) {
            onFillInLogContainerData((ItemInfo) v.getTag(), targetNewItemTarget, arrayListMakeTargetsList);
            fillIntentInfo(targetNewItemTarget, intent, userHandle);
        }
        dispatchUserEvent(LoggerUtils.newLauncherEvent(actionNewTouchAction, arrayListMakeTargetsList), intent);
        this.mAppOrTaskLaunch = true;
    }

    @Deprecated
    public void logTaskLaunchOrDismiss(int action, int direction, int taskIndex, ComponentKey componentKey) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(action), LoggerUtils.newTarget(1));
        if (action == 3 || action == 4) {
            launcherEventNewLauncherEvent.action.dir = direction;
        }
        launcherEventNewLauncherEvent.srcTarget[0].itemType = 9;
        launcherEventNewLauncherEvent.srcTarget[0].pageIndex = taskIndex;
        fillComponentInfo(launcherEventNewLauncherEvent.srcTarget[0], componentKey.componentName);
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
        this.mAppOrTaskLaunch = true;
    }

    protected void fillIntentInfo(LauncherLogProto.Target target, Intent intent, UserHandle userHandle) {
        target.intentHash = intent.hashCode();
        target.isWorkApp = (userHandle == null || userHandle.equals(Process.myUserHandle())) ? false : true;
        fillComponentInfo(target, intent.getComponent());
    }

    private void fillComponentInfo(LauncherLogProto.Target target, ComponentName cn) {
        if (cn != null) {
            target.packageNameHash = (this.mUuidStr + cn.getPackageName()).hashCode();
            target.componentHash = (this.mUuidStr + cn.flattenToString()).hashCode();
        }
    }

    public void logNotificationLaunch(View v, PendingIntent intent) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), LoggerUtils.newItemTarget(v, this.mInstantAppResolver), LoggerUtils.newTarget(3));
        LauncherLogProto.Target targetNewItemTarget = LoggerUtils.newItemTarget(v, this.mInstantAppResolver);
        if (fillLogContainer(v, targetNewItemTarget, makeTargetsList(targetNewItemTarget))) {
            targetNewItemTarget.packageNameHash = (this.mUuidStr + intent.getCreatorPackage()).hashCode();
        }
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionCommand(int command, LauncherLogProto.Target srcTarget) {
        logActionCommand(command, srcTarget, (LauncherLogProto.Target) null);
    }

    public void logActionCommand(int command, int srcContainerType, int dstContainerType) {
        logActionCommand(command, LoggerUtils.newContainerTarget(srcContainerType), dstContainerType >= 0 ? LoggerUtils.newContainerTarget(dstContainerType) : null);
    }

    public void logActionCommand(int command, int srcContainerType, int dstContainerType, int pageIndex) {
        LauncherLogProto.Target targetNewContainerTarget = LoggerUtils.newContainerTarget(srcContainerType);
        targetNewContainerTarget.pageIndex = pageIndex;
        logActionCommand(command, targetNewContainerTarget, dstContainerType >= 0 ? LoggerUtils.newContainerTarget(dstContainerType) : null);
    }

    public void logActionCommand(int command, LauncherLogProto.Target srcTarget, LauncherLogProto.Target dstTarget) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(command), srcTarget);
        if (command == 5 && (this.mAppOrTaskLaunch || !this.mSessionStarted)) {
            this.mSessionStarted = false;
            return;
        }
        if (dstTarget != null) {
            launcherEventNewLauncherEvent.destTarget = new LauncherLogProto.Target[1];
            launcherEventNewLauncherEvent.destTarget[0] = dstTarget;
            launcherEventNewLauncherEvent.action.isStateChange = true;
        }
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionCommand(int command, View itemView, int srcContainerType) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newCommandAction(command), LoggerUtils.newItemTarget(itemView, this.mInstantAppResolver), LoggerUtils.newTarget(3));
        LauncherLogProto.Target targetNewItemTarget = LoggerUtils.newItemTarget(itemView, this.mInstantAppResolver);
        if (fillLogContainer(itemView, targetNewItemTarget, makeTargetsList(targetNewItemTarget))) {
            targetNewItemTarget.type = 3;
            targetNewItemTarget.containerType = srcContainerType;
        }
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionOnControl(int action, int controlType) {
        logActionOnControl(action, controlType, null, new int[0]);
    }

    public void logActionOnControl(int action, int controlType, int parentContainerType) {
        logActionOnControl(action, controlType, null, parentContainerType);
    }

    public void logActionOnControl(int actionType, int controlType, View controlInContainer, int... parentTypes) {
        LauncherLogProto.Target targetNewTarget = LoggerUtils.newTarget(2);
        targetNewTarget.controlType = controlType;
        LauncherLogProto.Action actionNewAction = LoggerUtils.newAction(actionType);
        ArrayList<LauncherLogProto.Target> arrayListMakeTargetsList = makeTargetsList(targetNewTarget);
        if (controlInContainer != null) {
            fillLogContainer(controlInContainer, targetNewTarget, arrayListMakeTargetsList);
        }
        for (int i : parentTypes) {
            if (i >= 0) {
                arrayListMakeTargetsList.add(LoggerUtils.newContainerTarget(i));
            }
        }
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(actionNewAction, arrayListMakeTargetsList);
        if (actionType == 2) {
            launcherEventNewLauncherEvent.actionDurationMillis = SystemClock.uptimeMillis() - this.mActionDurationMillis;
        }
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionTapOutside(LauncherLogProto.Target target) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), target);
        launcherEventNewLauncherEvent.action.isOutside = true;
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionBounceTip(int containerType) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newAction(3), LoggerUtils.newContainerTarget(containerType));
        launcherEventNewLauncherEvent.srcTarget[0].tipType = 1;
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionOnContainer(int action, int dir, int containerType) {
        logActionOnContainer(action, dir, containerType, 0);
    }

    public void logActionOnContainer(int action, int dir, int containerType, int pageIndex) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(action), LoggerUtils.newContainerTarget(containerType));
        launcherEventNewLauncherEvent.action.dir = dir;
        launcherEventNewLauncherEvent.srcTarget[0].pageIndex = pageIndex;
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logStateChangeAction(int action, int dir, int downX, int downY, int srcChildTargetType, int srcParentContainerType, int dstContainerType, int pageIndex) {
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent;
        if (srcChildTargetType == 9) {
            launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(action), LoggerUtils.newItemTarget(srcChildTargetType), LoggerUtils.newContainerTarget(srcParentContainerType));
        } else {
            launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(action), LoggerUtils.newContainerTarget(srcChildTargetType), LoggerUtils.newContainerTarget(srcParentContainerType));
        }
        launcherEventNewLauncherEvent.destTarget = new LauncherLogProto.Target[1];
        launcherEventNewLauncherEvent.destTarget[0] = LoggerUtils.newContainerTarget(dstContainerType);
        launcherEventNewLauncherEvent.action.dir = dir;
        launcherEventNewLauncherEvent.action.isStateChange = true;
        launcherEventNewLauncherEvent.srcTarget[0].pageIndex = pageIndex;
        launcherEventNewLauncherEvent.srcTarget[0].spanX = downX;
        launcherEventNewLauncherEvent.srcTarget[0].spanY = downY;
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
        resetElapsedContainerMillis("state changed");
    }

    public void logActionOnItem(int action, int dir, int itemType) {
        logActionOnItem(action, dir, itemType, null, null);
    }

    public void logActionOnItem(int touchAction, int dir, int itemType, Integer gridX, Integer gridY) {
        final LauncherLogProto.Target targetNewTarget = LoggerUtils.newTarget(1);
        targetNewTarget.itemType = itemType;
        Optional.ofNullable(gridX).ifPresent(new Consumer() { // from class: com.android.launcher3.logging.UserEventDispatcher$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                targetNewTarget.gridX = ((Integer) obj).intValue();
            }
        });
        Optional.ofNullable(gridY).ifPresent(new Consumer() { // from class: com.android.launcher3.logging.UserEventDispatcher$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                targetNewTarget.gridY = ((Integer) obj).intValue();
            }
        });
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(touchAction), targetNewTarget);
        launcherEventNewLauncherEvent.action.dir = dir;
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logLauncherEvent(com.android.launcher3.userevent.LauncherLogProto.LauncherEvent launcherEvent) {
        if (this.mPreviousHomeGesture) {
            this.mPreviousHomeGesture = false;
        }
        this.mAppOrTaskLaunch = false;
        launcherEvent.toBuilder().setElapsedContainerMillis(SystemClock.uptimeMillis() - this.mElapsedContainerMillis).setElapsedSessionMillis(SystemClock.uptimeMillis() - this.mElapsedSessionMillis).build();
        try {
            dispatchUserEvent(LauncherLogProto.LauncherEvent.parseFrom(launcherEvent.toByteArray()), null);
        } catch (InvalidProtocolBufferNanoException unused) {
            throw new RuntimeException("Cannot convert LauncherEvent from Lite to Nano version.");
        }
    }

    public void logDeepShortcutsOpen(View icon) {
        LauncherLogProto.Target targetNewItemTarget = LoggerUtils.newItemTarget((ItemInfo) icon.getTag(), this.mInstantAppResolver);
        ArrayList<LauncherLogProto.Target> arrayListMakeTargetsList = makeTargetsList(targetNewItemTarget);
        fillLogContainer(icon, targetNewItemTarget, arrayListMakeTargetsList);
        dispatchUserEvent(LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(0), arrayListMakeTargetsList), null);
        resetElapsedContainerMillis("deep shortcut open");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void logDragNDrop(DropTarget.DragObject dragObj, View dropTargetAsView) {
        LauncherLogProto.Target targetNewItemTarget = LoggerUtils.newItemTarget(dragObj.originalDragInfo, this.mInstantAppResolver);
        ArrayList<LauncherLogProto.Target> arrayListMakeTargetsList = makeTargetsList(targetNewItemTarget);
        LauncherLogProto.Target targetNewItemTarget2 = LoggerUtils.newItemTarget(dragObj.originalDragInfo, this.mInstantAppResolver);
        ArrayList<LauncherLogProto.Target> arrayListMakeTargetsList2 = makeTargetsList(targetNewItemTarget2);
        dragObj.dragSource.fillInLogContainerData(dragObj.originalDragInfo, targetNewItemTarget, arrayListMakeTargetsList);
        if (dropTargetAsView instanceof StatsLogUtils.LogContainerProvider) {
            ((StatsLogUtils.LogContainerProvider) dropTargetAsView).fillInLogContainerData(dragObj.dragInfo, targetNewItemTarget2, arrayListMakeTargetsList2);
        } else {
            arrayListMakeTargetsList2.add(LoggerUtils.newDropTarget(dropTargetAsView));
        }
        LauncherLogProto.LauncherEvent launcherEventNewLauncherEvent = LoggerUtils.newLauncherEvent(LoggerUtils.newTouchAction(2), arrayListMakeTargetsList);
        LauncherLogProto.Target[] targetArr = new LauncherLogProto.Target[arrayListMakeTargetsList2.size()];
        arrayListMakeTargetsList2.toArray(targetArr);
        launcherEventNewLauncherEvent.destTarget = targetArr;
        launcherEventNewLauncherEvent.actionDurationMillis = SystemClock.uptimeMillis() - this.mActionDurationMillis;
        dispatchUserEvent(launcherEventNewLauncherEvent, null);
    }

    public void logActionBack(boolean z, int i, int i2, boolean z2, boolean z3, int i3) {
        int i4 = 3;
        LauncherLogProto.Action actionNewCommandAction = LoggerUtils.newCommandAction(z2 ? 0 : 3);
        actionNewCommandAction.command = 1;
        if (z2) {
            i4 = 0;
        } else if (!z3) {
            i4 = 4;
        }
        actionNewCommandAction.dir = i4;
        LauncherLogProto.Target targetNewControlTarget = LoggerUtils.newControlTarget(z2 ? 11 : 19);
        targetNewControlTarget.spanX = i;
        targetNewControlTarget.spanY = i2;
        targetNewControlTarget.cardinality = z ? 1 : 0;
        dispatchUserEvent(LoggerUtils.newLauncherEvent(actionNewCommandAction, targetNewControlTarget, LoggerUtils.newContainerTarget(i3)), null);
    }

    public final void resetElapsedContainerMillis(String reason) {
        this.mElapsedContainerMillis = SystemClock.uptimeMillis();
        if (IS_VERBOSE) {
            Log.d("UserEvent", "resetElapsedContainerMillis reason=" + reason);
        }
    }

    public final void startSession() {
        this.mSessionStarted = true;
        this.mElapsedSessionMillis = SystemClock.uptimeMillis();
        this.mElapsedContainerMillis = SystemClock.uptimeMillis();
    }

    public final void resetActionDurationMillis() {
        this.mActionDurationMillis = SystemClock.uptimeMillis();
    }

    public void dispatchUserEvent(LauncherLogProto.LauncherEvent ev, Intent intent) {
        if (this.mPreviousHomeGesture) {
            this.mPreviousHomeGesture = false;
        }
        this.mAppOrTaskLaunch = false;
        ev.elapsedContainerMillis = SystemClock.uptimeMillis() - this.mElapsedContainerMillis;
        ev.elapsedSessionMillis = SystemClock.uptimeMillis() - this.mElapsedSessionMillis;
        if (IS_VERBOSE) {
            try {
                Log.d("UserEvent", com.android.launcher3.userevent.LauncherLogProto.LauncherEvent.parseFrom(MessageNano.toByteArray(ev)).toString());
            } catch (InvalidProtocolBufferException unused) {
                throw new RuntimeException("Cannot parse LauncherEvent from Nano to Lite version");
            }
        }
    }

    public static ArrayList<LauncherLogProto.Target> makeTargetsList(LauncherLogProto.Target... targets) {
        ArrayList<LauncherLogProto.Target> arrayList = new ArrayList<>();
        for (LauncherLogProto.Target target : targets) {
            arrayList.add(target);
        }
        return arrayList;
    }
}
