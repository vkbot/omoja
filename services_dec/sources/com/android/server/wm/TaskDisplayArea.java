package com.android.server.wm;

import android.app.ActivityOptions;
import android.app.WindowConfiguration;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.util.IntArray;
import android.util.Slog;
import android.view.SurfaceControl;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.internal.util.ToBooleanFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.util.function.pooled.PooledPredicate;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.function.BiPredicate;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
final class TaskDisplayArea extends DisplayArea<ActivityStack> {
    private SurfaceControl mAppAnimationLayer;
    private ActivityTaskManagerService mAtmService;
    private SurfaceControl mBoostedAppAnimationLayer;
    DisplayContent mDisplayContent;
    private SurfaceControl mHomeAppAnimationLayer;
    ActivityStack mLastFocusedStack;
    Task mLaunchRootTask;
    ActivityStack mPreferredTopFocusableStack;
    private boolean mRemoved;
    private ActivityStack mRootHomeTask;
    private ActivityStack mRootPinnedTask;
    private ActivityStack mRootRecentsTask;
    private ActivityStack mRootSplitScreenPrimaryTask;
    private RootWindowContainer mRootWindowContainer;
    private SurfaceControl mSplitScreenDividerAnchor;
    private ArrayList<OnStackOrderChangedListener> mStackOrderChangedCallbacks;
    private final ArrayList<ActivityStack> mTmpAlwaysOnTopStacks;
    private final RootWindowContainer.FindTaskResult mTmpFindTaskResult;
    private final ArrayList<ActivityStack> mTmpHomeStacks;
    private int mTmpLayerForAnimationLayer;
    private int mTmpLayerForSplitScreenDividerAnchor;
    private final IntArray mTmpNeedsZBoostIndexes;
    private final ArrayList<ActivityStack> mTmpNormalStacks;
    private ArrayList<Task> mTmpTasks;

    interface OnStackOrderChangedListener {
        void onStackOrderChanged(ActivityStack activityStack);
    }

    TaskDisplayArea(DisplayContent displayContent, WindowManagerService service, String name, int displayAreaFeature) {
        super(service, DisplayArea.Type.ANY, name, displayAreaFeature);
        this.mTmpAlwaysOnTopStacks = new ArrayList<>();
        this.mTmpNormalStacks = new ArrayList<>();
        this.mTmpHomeStacks = new ArrayList<>();
        this.mTmpNeedsZBoostIndexes = new IntArray();
        this.mTmpTasks = new ArrayList<>();
        this.mLaunchRootTask = null;
        this.mTmpFindTaskResult = new RootWindowContainer.FindTaskResult();
        this.mStackOrderChangedCallbacks = new ArrayList<>();
        this.mDisplayContent = displayContent;
        this.mRootWindowContainer = service.mRoot;
        this.mAtmService = service.mAtmService;
    }

    ActivityStack getStack(int windowingMode, int activityType) {
        if (activityType == 2) {
            return this.mRootHomeTask;
        }
        if (activityType == 3) {
            return this.mRootRecentsTask;
        }
        if (windowingMode == 2) {
            return this.mRootPinnedTask;
        }
        if (windowingMode == 3) {
            return this.mRootSplitScreenPrimaryTask;
        }
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ActivityStack stack = (ActivityStack) getChildAt(i);
            if (activityType == 0 && windowingMode == stack.getWindowingMode()) {
                return stack;
            }
            if (stack.isCompatible(windowingMode, activityType)) {
                return stack;
            }
        }
        return null;
    }

    ActivityStack getTopStack() {
        int count = getChildCount();
        if (count > 0) {
            return (ActivityStack) getChildAt(count - 1);
        }
        return null;
    }

    int getIndexOf(ActivityStack stack) {
        return this.mChildren.indexOf(stack);
    }

    ActivityStack getRootHomeTask() {
        return this.mRootHomeTask;
    }

    ActivityStack getRootRecentsTask() {
        return this.mRootRecentsTask;
    }

    ActivityStack getRootPinnedTask() {
        return this.mRootPinnedTask;
    }

    ActivityStack getRootSplitScreenPrimaryTask() {
        return this.mRootSplitScreenPrimaryTask;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    ActivityStack getRootSplitScreenSecondaryTask() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (((ActivityStack) this.mChildren.get(i)).inSplitScreenSecondaryWindowingMode()) {
                return (ActivityStack) this.mChildren.get(i);
            }
        }
        return null;
    }

    ArrayList<Task> getVisibleTasks() {
        final ArrayList<Task> visibleTasks = new ArrayList<>();
        forAllTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$TaskDisplayArea$ajDQ2FQogtLzT2xeLoBFC1sWS3U
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskDisplayArea.lambda$getVisibleTasks$0(visibleTasks, (Task) obj);
            }
        });
        return visibleTasks;
    }

    static /* synthetic */ void lambda$getVisibleTasks$0(ArrayList visibleTasks, Task task) {
        if (task.isLeafTask() && task.isVisible()) {
            visibleTasks.add(task);
        }
    }

    void onStackWindowingModeChanged(ActivityStack stack) {
        removeStackReferenceIfNeeded(stack);
        addStackReferenceIfNeeded(stack);
        if (stack == this.mRootPinnedTask && getTopStack() != stack) {
            positionChildAt(Integer.MAX_VALUE, stack, false);
        }
    }

    void addStackReferenceIfNeeded(ActivityStack stack) {
        if (stack.isActivityTypeHome()) {
            ActivityStack activityStack = this.mRootHomeTask;
            if (activityStack != null) {
                if (!stack.isDescendantOf(activityStack)) {
                    throw new IllegalArgumentException("addStackReferenceIfNeeded: home stack=" + this.mRootHomeTask + " already exist on display=" + this + " stack=" + stack);
                }
            } else {
                this.mRootHomeTask = stack;
            }
        } else if (stack.isActivityTypeRecents()) {
            ActivityStack activityStack2 = this.mRootRecentsTask;
            if (activityStack2 != null) {
                if (!stack.isDescendantOf(activityStack2)) {
                    throw new IllegalArgumentException("addStackReferenceIfNeeded: recents stack=" + this.mRootRecentsTask + " already exist on display=" + this + " stack=" + stack);
                }
            } else {
                this.mRootRecentsTask = stack;
            }
        }
        if (!stack.isRootTask()) {
            return;
        }
        int windowingMode = stack.getWindowingMode();
        if (windowingMode == 2) {
            if (this.mRootPinnedTask != null) {
                throw new IllegalArgumentException("addStackReferenceIfNeeded: pinned stack=" + this.mRootPinnedTask + " already exist on display=" + this + " stack=" + stack);
            }
            this.mRootPinnedTask = stack;
            return;
        }
        if (windowingMode == 3) {
            if (this.mRootSplitScreenPrimaryTask != null) {
                throw new IllegalArgumentException("addStackReferenceIfNeeded: split screen primary stack=" + this.mRootSplitScreenPrimaryTask + " already exist on display=" + this + " stack=" + stack);
            }
            this.mRootSplitScreenPrimaryTask = stack;
        }
    }

    void removeStackReferenceIfNeeded(ActivityStack stack) {
        if (stack == this.mRootHomeTask) {
            this.mRootHomeTask = null;
            return;
        }
        if (stack == this.mRootRecentsTask) {
            this.mRootRecentsTask = null;
        } else if (stack == this.mRootPinnedTask) {
            this.mRootPinnedTask = null;
        } else if (stack == this.mRootSplitScreenPrimaryTask) {
            this.mRootSplitScreenPrimaryTask = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public void addChild(ActivityStack stack, int position) {
        addStackReferenceIfNeeded(stack);
        int position2 = findPositionForStack(position, stack, true);
        super.addChild(stack, position2);
        this.mAtmService.updateSleepIfNeededLocked();
        positionStackAt(stack, position2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.wm.WindowContainer
    public void removeChild(ActivityStack stack) {
        super.removeChild(stack);
        onStackRemoved(stack);
        this.mAtmService.updateSleepIfNeededLocked();
        removeStackReferenceIfNeeded(stack);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isOnTop() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public void positionChildAt(int position, ActivityStack child, boolean includingParents) {
        boolean moveToTop = position >= getChildCount() - 1;
        boolean moveToBottom = position == Integer.MIN_VALUE || position == 0;
        boolean wasContained = this.mChildren.contains(child);
        if (moveToTop && wasContained && child.isFocusable()) {
            this.mPreferredTopFocusableStack = null;
        }
        if (child.getWindowConfiguration().isAlwaysOnTop() && !moveToTop) {
            Slog.w("WindowManager", "Ignoring move of always-on-top stack=" + this + " to bottom");
            int currentPosition = this.mChildren.indexOf(child);
            super.positionChildAt(currentPosition, child, false);
            return;
        }
        if (!this.mDisplayContent.isTrusted() && !getParent().isOnTop()) {
            includingParents = false;
        }
        int targetPosition = findPositionForStack(position, child, false);
        super.positionChildAt(targetPosition, child, false);
        if (includingParents && (moveToTop || moveToBottom)) {
            this.mDisplayContent.positionDisplayAt(moveToTop ? Integer.MAX_VALUE : Integer.MIN_VALUE, true);
        }
        child.updateTaskMovement(moveToTop);
        this.mDisplayContent.setLayoutNeeded();
        if (moveToTop && child.isFocusableAndVisible()) {
            this.mPreferredTopFocusableStack = child;
        } else if (this.mPreferredTopFocusableStack == child) {
            this.mPreferredTopFocusableStack = null;
        }
    }

    private int getPriority(ActivityStack stack) {
        if (this.mWmService.mAssistantOnTopOfDream && stack.isActivityTypeAssistant()) {
            return 4;
        }
        if (stack.isActivityTypeDream()) {
            return 3;
        }
        if (stack.inPinnedWindowingMode()) {
            return 2;
        }
        return stack.isAlwaysOnTop() ? 1 : 0;
    }

    private int findMinPositionForStack(ActivityStack stack) {
        int currentIndex;
        int minPosition = Integer.MIN_VALUE;
        for (int i = 0; i < this.mChildren.size() && getPriority(getStackAt(i)) < getPriority(stack); i++) {
            minPosition = i;
        }
        if (stack.isAlwaysOnTop() && (currentIndex = getIndexOf(stack)) > minPosition) {
            return currentIndex;
        }
        return minPosition;
    }

    private int findMaxPositionForStack(ActivityStack stack) {
        int i = this.mChildren.size() - 1;
        while (true) {
            if (i < 0) {
                return 0;
            }
            ActivityStack curr = getStackAt(i);
            boolean sameStack = curr == stack;
            if (getPriority(curr) > getPriority(stack) || sameStack) {
                i--;
            } else {
                return i;
            }
        }
    }

    private int findPositionForStack(int requestedPosition, ActivityStack stack, boolean adding) {
        int maxPosition = findMaxPositionForStack(stack);
        int minPosition = findMinPositionForStack(stack);
        if (requestedPosition == Integer.MAX_VALUE) {
            requestedPosition = this.mChildren.size();
        } else if (requestedPosition == Integer.MIN_VALUE) {
            requestedPosition = 0;
        }
        int targetPosition = Math.max(Math.min(requestedPosition, maxPosition), minPosition);
        int prevPosition = this.mChildren.indexOf(stack);
        if (targetPosition == requestedPosition) {
            return targetPosition;
        }
        if (adding || targetPosition < prevPosition) {
            return targetPosition + 1;
        }
        return targetPosition;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean forAllWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            if (super.forAllWindows(callback, traverseTopToBottom) || forAllExitingAppTokenWindows(callback, traverseTopToBottom)) {
                return true;
            }
            return false;
        }
        if (forAllExitingAppTokenWindows(callback, traverseTopToBottom) || super.forAllWindows(callback, traverseTopToBottom)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean forAllExitingAppTokenWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (traverseTopToBottom) {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                List<ActivityRecord> activities = ((ActivityStack) this.mChildren.get(i)).mExitingActivities;
                for (int j = activities.size() - 1; j >= 0; j--) {
                    if (activities.get(j).forAllWindowsUnchecked(callback, traverseTopToBottom)) {
                        return true;
                    }
                }
            }
            return false;
        }
        int count = this.mChildren.size();
        for (int i2 = 0; i2 < count; i2++) {
            List<ActivityRecord> activities2 = ((ActivityStack) this.mChildren.get(i2)).mExitingActivities;
            int appTokensCount = activities2.size();
            for (int j2 = 0; j2 < appTokensCount; j2++) {
                if (activities2.get(j2).forAllWindowsUnchecked(callback, traverseTopToBottom)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void setExitingTokensHasVisible(boolean hasVisible) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ArrayList<ActivityRecord> activities = ((ActivityStack) this.mChildren.get(i)).mExitingActivities;
            for (int j = activities.size() - 1; j >= 0; j--) {
                activities.get(j).hasVisible = hasVisible;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void removeExistingAppTokensIfPossible() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ArrayList<ActivityRecord> activities = ((ActivityStack) this.mChildren.get(i)).mExitingActivities;
            for (int j = activities.size() - 1; j >= 0; j--) {
                ActivityRecord activity = activities.get(j);
                if (!activity.hasVisible && !this.mDisplayContent.mClosingApps.contains(activity) && (!activity.mIsExiting || activity.isEmpty())) {
                    cancelAnimation();
                    if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                        String protoLogParam0 = String.valueOf(activity);
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -49129622, 0, null, protoLogParam0);
                    }
                    activity.removeIfPossible();
                }
            }
        }
    }

    @Override // com.android.server.wm.WindowContainer
    int getOrientation(int candidate) {
        int orientation;
        if (isStackVisible(3)) {
            ActivityStack activityStack = this.mRootHomeTask;
            if (activityStack != null && !activityStack.isResizeable()) {
                Task topHomeTask = this.mRootHomeTask.getTopMostTask();
                ActivityRecord topHomeActivity = topHomeTask.getTopNonFinishingActivity();
                boolean isHomeActivityLaunching = topHomeActivity != null && topHomeActivity.mVisibleRequested;
                if ((topHomeTask.isVisible() || isHomeActivityLaunching) && (orientation = topHomeTask.getOrientation()) != -2) {
                    return orientation;
                }
                return -1;
            }
            return -1;
        }
        int orientation2 = super.getOrientation(candidate);
        if (orientation2 != -2 && orientation2 != 3) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                long protoLogParam0 = orientation2;
                long protoLogParam1 = this.mDisplayContent.mDisplayId;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1381227466, 5, null, Long.valueOf(protoLogParam0), Long.valueOf(protoLogParam1));
            }
            return orientation2;
        }
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            long protoLogParam2 = this.mDisplayContent.getLastOrientation();
            long protoLogParam3 = this.mDisplayContent.mDisplayId;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1640436199, 5, null, Long.valueOf(protoLogParam2), Long.valueOf(protoLogParam3));
        }
        return this.mDisplayContent.getLastOrientation();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.android.server.wm.WindowContainer
    void assignChildLayers(SurfaceControl.Transaction t) {
        assignStackOrdering(t);
        for (int i = 0; i < this.mChildren.size(); i++) {
            ActivityStack s = (ActivityStack) this.mChildren.get(i);
            s.assignChildLayers(t);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    void assignStackOrdering(SurfaceControl.Transaction t) {
        if (getParent() == null) {
            return;
        }
        this.mTmpAlwaysOnTopStacks.clear();
        this.mTmpHomeStacks.clear();
        this.mTmpNormalStacks.clear();
        for (int i = 0; i < this.mChildren.size(); i++) {
            ActivityStack s = (ActivityStack) this.mChildren.get(i);
            if (s.isAlwaysOnTop()) {
                this.mTmpAlwaysOnTopStacks.add(s);
            } else if (s.isActivityTypeHome()) {
                this.mTmpHomeStacks.add(s);
            } else {
                this.mTmpNormalStacks.add(s);
            }
        }
        int layer = adjustRootTaskLayer(t, this.mTmpHomeStacks, 0, false);
        int layer2 = layer + 1;
        int layer3 = layer2 + 1;
        this.mTmpLayerForSplitScreenDividerAnchor = layer2;
        this.mTmpLayerForAnimationLayer = layer3;
        int layer4 = adjustRootTaskLayer(t, this.mTmpNormalStacks, layer3 + 1, true);
        adjustRootTaskLayer(t, this.mTmpAlwaysOnTopStacks, layer4 + 1, false);
        t.setLayer(this.mHomeAppAnimationLayer, layer);
        t.setLayer(this.mAppAnimationLayer, this.mTmpLayerForAnimationLayer);
        t.setLayer(this.mSplitScreenDividerAnchor, this.mTmpLayerForSplitScreenDividerAnchor);
        t.setLayer(this.mBoostedAppAnimationLayer, layer4);
    }

    private int adjustNormalStackLayer(ActivityStack s, int layer) {
        if (s.inSplitScreenWindowingMode()) {
            this.mTmpLayerForSplitScreenDividerAnchor = layer;
            layer++;
        }
        if (s.isTaskAnimating() || s.isAppTransitioning()) {
            int layer2 = layer + 1;
            this.mTmpLayerForAnimationLayer = layer;
            return layer2;
        }
        return layer;
    }

    private int adjustRootTaskLayer(SurfaceControl.Transaction t, ArrayList<ActivityStack> stacks, int startLayer, boolean normalStacks) {
        this.mTmpNeedsZBoostIndexes.clear();
        int stackSize = stacks.size();
        for (int i = 0; i < stackSize; i++) {
            ActivityStack stack = stacks.get(i);
            if (!stack.needsZBoost()) {
                int startLayer2 = startLayer + 1;
                stack.assignLayer(t, startLayer);
                if (!normalStacks) {
                    startLayer = startLayer2;
                } else {
                    startLayer = adjustNormalStackLayer(stack, startLayer2);
                }
            } else {
                this.mTmpNeedsZBoostIndexes.add(i);
            }
        }
        int zBoostSize = this.mTmpNeedsZBoostIndexes.size();
        for (int i2 = 0; i2 < zBoostSize; i2++) {
            ActivityStack stack2 = stacks.get(this.mTmpNeedsZBoostIndexes.get(i2));
            int startLayer3 = startLayer + 1;
            stack2.assignLayer(t, startLayer);
            if (!normalStacks) {
                startLayer = startLayer3;
            } else {
                startLayer = adjustNormalStackLayer(stack2, startLayer3);
            }
        }
        return startLayer;
    }

    @Override // com.android.server.wm.WindowContainer
    SurfaceControl getAppAnimationLayer(int animationLayer) {
        if (animationLayer == 1) {
            return this.mBoostedAppAnimationLayer;
        }
        if (animationLayer == 2) {
            return this.mHomeAppAnimationLayer;
        }
        return this.mAppAnimationLayer;
    }

    SurfaceControl getSplitScreenDividerAnchor() {
        return this.mSplitScreenDividerAnchor;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        if (getParent() != null) {
            super.onParentChanged(newParent, oldParent, new WindowContainer.PreAssignChildLayersCallback() { // from class: com.android.server.wm.-$$Lambda$TaskDisplayArea$2fufOSTi1fAiixVdHx5JtOWaiDQ
                @Override // com.android.server.wm.WindowContainer.PreAssignChildLayersCallback
                public final void onPreAssignChildLayers() {
                    this.f$0.lambda$onParentChanged$1$TaskDisplayArea();
                }
            });
            return;
        }
        super.onParentChanged(newParent, oldParent);
        this.mWmService.mTransactionFactory.get().remove(this.mAppAnimationLayer).remove(this.mBoostedAppAnimationLayer).remove(this.mHomeAppAnimationLayer).remove(this.mSplitScreenDividerAnchor).apply();
        this.mAppAnimationLayer = null;
        this.mBoostedAppAnimationLayer = null;
        this.mHomeAppAnimationLayer = null;
        this.mSplitScreenDividerAnchor = null;
    }

    public /* synthetic */ void lambda$onParentChanged$1$TaskDisplayArea() {
        this.mAppAnimationLayer = makeChildSurface(null).setName("animationLayer").setCallsite("TaskDisplayArea.onParentChanged").build();
        this.mBoostedAppAnimationLayer = makeChildSurface(null).setName("boostedAnimationLayer").setCallsite("TaskDisplayArea.onParentChanged").build();
        this.mHomeAppAnimationLayer = makeChildSurface(null).setName("homeAnimationLayer").setCallsite("TaskDisplayArea.onParentChanged").build();
        this.mSplitScreenDividerAnchor = makeChildSurface(null).setName("splitScreenDividerAnchor").setCallsite("TaskDisplayArea.onParentChanged").build();
        getSyncTransaction().show(this.mAppAnimationLayer).show(this.mBoostedAppAnimationLayer).show(this.mHomeAppAnimationLayer).show(this.mSplitScreenDividerAnchor);
    }

    void onStackRemoved(ActivityStack stack) {
        if (this.mPreferredTopFocusableStack == stack) {
            this.mPreferredTopFocusableStack = null;
        }
        this.mDisplayContent.releaseSelfIfNeeded();
        onStackOrderChanged(stack);
    }

    void resetPreferredTopFocusableRootTaskIfNeeded(Task task) {
        ActivityStack activityStack = this.mPreferredTopFocusableStack;
        if (activityStack != null && activityStack.compareTo((WindowContainer) task) <= 0) {
            this.mPreferredTopFocusableStack = null;
        }
    }

    void positionStackAt(int position, ActivityStack child, boolean includingParents) {
        positionChildAt(position, child, includingParents);
        this.mDisplayContent.layoutAndAssignWindowLayersIfNeeded();
    }

    void positionStackAtTop(ActivityStack stack, boolean includingParents) {
        positionStackAtTop(stack, includingParents, null);
    }

    void positionStackAtTop(ActivityStack stack, boolean includingParents, String updateLastFocusedStackReason) {
        positionStackAt(stack, getStackCount(), includingParents, updateLastFocusedStackReason);
    }

    void positionStackAtBottom(ActivityStack stack) {
        positionStackAtBottom(stack, null);
    }

    void positionStackAtBottom(ActivityStack stack, String updateLastFocusedStackReason) {
        positionStackAt(stack, 0, false, updateLastFocusedStackReason);
    }

    void positionStackAt(ActivityStack stack, int position) {
        positionStackAt(stack, position, false, null);
    }

    void positionStackAt(ActivityStack stack, int position, boolean includingParents, String updateLastFocusedStackReason) {
        ActivityStack currentFocusedStack;
        ActivityStack prevFocusedStack = updateLastFocusedStackReason != null ? getFocusedStack() : null;
        boolean wasContained = this.mChildren.contains(stack);
        if (this.mDisplayContent.mSingleTaskInstance && getStackCount() == 1 && !wasContained) {
            throw new IllegalStateException("positionStackAt: Can only have one task on display=" + this);
        }
        positionStackAt(position, stack, includingParents);
        if (updateLastFocusedStackReason != null && (currentFocusedStack = getFocusedStack()) != prevFocusedStack) {
            this.mLastFocusedStack = prevFocusedStack;
            int i = this.mRootWindowContainer.mCurrentUser;
            int i2 = this.mDisplayContent.mDisplayId;
            int rootTaskId = currentFocusedStack == null ? -1 : currentFocusedStack.getRootTaskId();
            ActivityStack activityStack = this.mLastFocusedStack;
            EventLogTags.writeWmFocusedStack(i, i2, rootTaskId, activityStack != null ? activityStack.getRootTaskId() : -1, updateLastFocusedStackReason);
        }
        onStackOrderChanged(stack);
    }

    void positionTaskBehindHome(ActivityStack task) {
        ActivityStack home = getOrCreateRootHomeTask();
        WindowContainer homeParent = home.getParent();
        Task homeParentTask = homeParent != null ? homeParent.asTask() : null;
        if (homeParentTask == null) {
            if (task.getParent() == this) {
                positionStackAtBottom(task);
                return;
            } else {
                task.reparent(this, false);
                return;
            }
        }
        if (homeParentTask == task.getParent()) {
            ((ActivityStack) homeParentTask).positionChildAtBottom(task);
        } else {
            task.reparent((ActivityStack) homeParentTask, false, 2, false, false, "positionTaskBehindHome");
        }
    }

    ActivityStack getStack(int rootTaskId) {
        for (int i = getStackCount() - 1; i >= 0; i--) {
            ActivityStack stack = getStackAt(i);
            if (stack.getRootTaskId() == rootTaskId) {
                return stack;
            }
        }
        return null;
    }

    ActivityStack getOrCreateStack(int windowingMode, int activityType, boolean onTop) {
        return getOrCreateStack(windowingMode, activityType, onTop, (Intent) null, (Task) null);
    }

    ActivityStack getOrCreateStack(int windowingMode, int activityType, boolean onTop, Intent intent, Task candidateTask) {
        if (!DisplayContent.alwaysCreateStack(windowingMode != 0 ? windowingMode : getWindowingMode(), activityType)) {
            ActivityStack stack = getStack(windowingMode, activityType);
            if (stack != null) {
                return stack;
            }
        } else if (candidateTask != null) {
            ActivityStack activityStack = (ActivityStack) candidateTask;
            int position = onTop ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            Task taskUpdateLaunchRootTask = updateLaunchRootTask(windowingMode);
            if (taskUpdateLaunchRootTask == null) {
                if (activityStack.getDisplayArea() != this || !activityStack.isRootTask()) {
                    if (activityStack.getParent() == null) {
                        addChild(activityStack, position);
                    } else {
                        activityStack.reparent(this, onTop);
                    }
                }
            } else if (activityStack.getParent() == null) {
                taskUpdateLaunchRootTask.addChild(activityStack, position);
            } else if (activityStack.getParent() != taskUpdateLaunchRootTask) {
                activityStack.reparent(taskUpdateLaunchRootTask, position);
            }
            if (candidateTask.getWindowingMode() != windowingMode) {
                candidateTask.setWindowingMode(windowingMode);
            }
            return activityStack;
        }
        return createStack(windowingMode, activityType, onTop, null, intent, false);
    }

    ActivityStack getOrCreateStack(ActivityRecord r, ActivityOptions options, Task candidateTask, int activityType, boolean onTop) {
        int windowingMode = options != null ? options.getLaunchWindowingMode() : 0;
        return getOrCreateStack(validateWindowingMode(windowingMode, r, candidateTask, activityType), activityType, onTop, (Intent) null, candidateTask);
    }

    int getNextStackId() {
        return this.mAtmService.mStackSupervisor.getNextTaskIdForUser();
    }

    ActivityStack createStack(int windowingMode, int activityType, boolean onTop) {
        return createStack(windowingMode, activityType, onTop, null, null, false);
    }

    ActivityStack createStack(int windowingMode, int activityType, boolean onTop, ActivityInfo info, Intent intent, boolean createdByOrganizer) {
        ActivityStack stack;
        if (this.mDisplayContent.mSingleTaskInstance && getStackCount() > 0) {
            return this.mRootWindowContainer.getDefaultTaskDisplayArea().createStack(windowingMode, activityType, onTop, info, intent, createdByOrganizer);
        }
        if (activityType == 0 && !createdByOrganizer) {
            activityType = 1;
        }
        if (activityType != 1 && activityType != 0 && (stack = getStack(0, activityType)) != null) {
            throw new IllegalArgumentException("Stack=" + stack + " of activityType=" + activityType + " already on display=" + this + ". Can't have multiple.");
        }
        if (!isWindowingModeSupported(windowingMode, this.mAtmService.mSupportsMultiWindow, this.mAtmService.mSupportsSplitScreenMultiWindow, this.mAtmService.mSupportsFreeformWindowManagement, this.mAtmService.mSupportsPictureInPicture, activityType)) {
            throw new IllegalArgumentException("Can't create stack for unsupported windowingMode=" + windowingMode);
        }
        if (windowingMode == 2 && getRootPinnedTask() != null) {
            getRootPinnedTask().dismissPip();
        }
        int stackId = getNextStackId();
        return createStackUnchecked(windowingMode, activityType, stackId, onTop, info, intent, createdByOrganizer);
    }

    private Task updateLaunchRootTask(int windowingMode) {
        if (!WindowConfiguration.isSplitScreenWindowingMode(windowingMode)) {
            return null;
        }
        for (int i = getStackCount() - 1; i >= 0; i--) {
            Task t = getStackAt(i);
            if (t.mCreatedByOrganizer && t.getRequestedOverrideWindowingMode() == windowingMode) {
                if (this.mLaunchRootTask == null) {
                    int n = getStackCount();
                    for (int j = 0; j < n; j++) {
                        Task tt = getStackAt(j);
                        if (tt.mCreatedByOrganizer && tt != t) {
                            this.mLaunchRootTask = tt;
                            break;
                        }
                    }
                }
                return t;
            }
        }
        return this.mLaunchRootTask;
    }

    ActivityStack createStackUnchecked(int windowingMode, int activityType, int stackId, boolean onTop, ActivityInfo info, Intent intent, boolean createdByOrganizer) {
        ActivityInfo info2;
        int windowingMode2;
        if (windowingMode == 2 && activityType != 1) {
            throw new IllegalArgumentException("Stack with windowing mode cannot with non standard activity type.");
        }
        if (info != null) {
            info2 = info;
        } else {
            ActivityInfo info3 = new ActivityInfo();
            info3.applicationInfo = new ApplicationInfo();
            info2 = info3;
        }
        Task launchRootTask = createdByOrganizer ? null : updateLaunchRootTask(windowingMode);
        if (launchRootTask == null) {
            windowingMode2 = windowingMode;
        } else {
            windowingMode2 = 0;
        }
        ActivityStack stack = new ActivityStack(this.mAtmService, stackId, activityType, info2, intent, createdByOrganizer);
        if (launchRootTask != null) {
            launchRootTask.addChild(stack, onTop ? Integer.MAX_VALUE : Integer.MIN_VALUE);
            if (onTop) {
                positionStackAtTop((ActivityStack) launchRootTask, false);
            }
        } else {
            addChild(stack, onTop ? Integer.MAX_VALUE : Integer.MIN_VALUE);
            stack.setWindowingMode(windowingMode2, true);
        }
        return stack;
    }

    ActivityStack getFocusedStack() {
        ActivityStack activityStack = this.mPreferredTopFocusableStack;
        if (activityStack != null) {
            return activityStack;
        }
        for (int i = getStackCount() - 1; i >= 0; i--) {
            ActivityStack stack = getStackAt(i);
            if (stack.isFocusableAndVisible()) {
                return stack;
            }
        }
        return null;
    }

    ActivityStack getNextFocusableStack(ActivityStack currentFocus, boolean ignoreCurrent) {
        int currentWindowingMode = currentFocus != null ? currentFocus.getWindowingMode() : 0;
        ActivityStack candidate = null;
        for (int i = getStackCount() - 1; i >= 0; i--) {
            ActivityStack stack = getStackAt(i);
            if ((!ignoreCurrent || stack != currentFocus) && stack.isFocusableAndVisible()) {
                if (currentWindowingMode == 4 && candidate == null && stack.inSplitScreenPrimaryWindowingMode()) {
                    candidate = stack;
                } else {
                    if (candidate != null && stack.inSplitScreenSecondaryWindowingMode()) {
                        return candidate;
                    }
                    return stack;
                }
            }
        }
        return candidate;
    }

    ActivityRecord getFocusedActivity() {
        ActivityStack focusedStack = getFocusedStack();
        if (focusedStack == null) {
            return null;
        }
        ActivityRecord resumedActivity = focusedStack.getResumedActivity();
        if (resumedActivity == null || resumedActivity.app == null) {
            ActivityRecord resumedActivity2 = focusedStack.mPausingActivity;
            if (resumedActivity2 == null || resumedActivity2.app == null) {
                return focusedStack.topRunningActivity(true);
            }
            return resumedActivity2;
        }
        return resumedActivity;
    }

    ActivityStack getLastFocusedStack() {
        return this.mLastFocusedStack;
    }

    boolean allResumedActivitiesComplete() {
        for (int stackNdx = getStackCount() - 1; stackNdx >= 0; stackNdx--) {
            ActivityRecord r = getStackAt(stackNdx).getResumedActivity();
            if (r != null && !r.isState(ActivityStack.ActivityState.RESUMED)) {
                return false;
            }
        }
        ActivityStack currentFocusedStack = getFocusedStack();
        this.mLastFocusedStack = currentFocusedStack;
        return true;
    }

    boolean pauseBackStacks(boolean userLeaving, ActivityRecord resuming) {
        boolean someActivityPaused = false;
        for (int stackNdx = getStackCount() - 1; stackNdx >= 0; stackNdx--) {
            ActivityStack stack = getStackAt(stackNdx);
            ActivityRecord resumedActivity = stack.getResumedActivity();
            if (resumedActivity != null && (stack.getVisibility(resuming) != 0 || !stack.isTopActivityFocusable())) {
                Slog.d("WindowManager", "pauseBackStacks: stack=" + stack + " mResumedActivity=" + resumedActivity);
                someActivityPaused |= stack.startPausingLocked(userLeaving, false, resuming);
            }
        }
        return someActivityPaused;
    }

    void findTaskLocked(ActivityRecord r, boolean isPreferredDisplayArea, RootWindowContainer.FindTaskResult result) {
        this.mTmpFindTaskResult.clear();
        for (int stackNdx = getStackCount() - 1; stackNdx >= 0; stackNdx--) {
            ActivityStack stack = getStackAt(stackNdx);
            if (r.hasCompatibleActivityType(stack) || !stack.isLeafTask()) {
                this.mTmpFindTaskResult.process(r, stack);
                if (this.mTmpFindTaskResult.mRecord == null) {
                    continue;
                } else if (this.mTmpFindTaskResult.mIdealMatch) {
                    result.setTo(this.mTmpFindTaskResult);
                    return;
                } else if (isPreferredDisplayArea) {
                    result.setTo(this.mTmpFindTaskResult);
                }
            }
        }
    }

    void removeStacksInWindowingModes(int... windowingModes) {
        if (windowingModes == null || windowingModes.length == 0) {
            return;
        }
        ArrayList<ActivityStack> stacks = new ArrayList<>();
        for (int j = windowingModes.length - 1; j >= 0; j--) {
            int windowingMode = windowingModes[j];
            for (int i = getStackCount() - 1; i >= 0; i--) {
                ActivityStack stack = getStackAt(i);
                if (stack.isActivityTypeStandardOrUndefined() && stack.getWindowingMode() == windowingMode) {
                    stacks.add(stack);
                }
            }
        }
        int j2 = stacks.size();
        for (int i2 = j2 - 1; i2 >= 0; i2--) {
            this.mRootWindowContainer.mStackSupervisor.removeStack(stacks.get(i2));
        }
    }

    void removeStacksWithActivityTypes(int... activityTypes) {
        if (activityTypes == null || activityTypes.length == 0) {
            return;
        }
        ArrayList<ActivityStack> stacks = new ArrayList<>();
        for (int j = activityTypes.length - 1; j >= 0; j--) {
            int activityType = activityTypes[j];
            for (int i = getStackCount() - 1; i >= 0; i--) {
                ActivityStack stack = getStackAt(i);
                if (stack.mCreatedByOrganizer) {
                    for (int k = stack.getChildCount() - 1; k >= 0; k--) {
                        ActivityStack childStack = (ActivityStack) stack.getChildAt(k);
                        if (childStack.getActivityType() == activityType) {
                            stacks.add(childStack);
                        }
                    }
                } else if (stack.getActivityType() == activityType) {
                    stacks.add(stack);
                }
            }
        }
        int j2 = stacks.size();
        for (int i2 = j2 - 1; i2 >= 0; i2--) {
            this.mRootWindowContainer.mStackSupervisor.removeStack(stacks.get(i2));
        }
    }

    void onSplitScreenModeDismissed() {
        onSplitScreenModeDismissed(null);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024 A[DONT_GENERATE, DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x0026 A[DONT_GENERATE] */
    void onSplitScreenModeDismissed(ActivityStack toTop) {
        this.mAtmService.deferWindowLayout();
        try {
            this.mLaunchRootTask = null;
            moveSplitScreenTasksToFullScreen();
        } finally {
            ActivityStack topFullscreenStack = toTop != null ? toTop : getTopStackInWindowingMode(1);
            ActivityStack homeStack = getOrCreateRootHomeTask();
            if (homeStack != null && ((topFullscreenStack != null && !isTopStack(homeStack)) || toTop != null)) {
                homeStack.moveToFront("onSplitScreenModeDismissed");
                topFullscreenStack.moveToFront("onSplitScreenModeDismissed");
            }
            this.mAtmService.continueWindowLayout();
        }
    }

    private void moveSplitScreenTasksToFullScreen() {
        WindowContainerTransaction wct = new WindowContainerTransaction();
        this.mTmpTasks.clear();
        forAllTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$TaskDisplayArea$gHhbWLHW9TjU51jILamhhfgxluc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$moveSplitScreenTasksToFullScreen$2$TaskDisplayArea((Task) obj);
            }
        });
        for (int i = this.mTmpTasks.size() - 1; i >= 0; i--) {
            Task root = this.mTmpTasks.get(i);
            for (int j = 0; j < root.getChildCount(); j++) {
                wct.reparent(root.getChildAt(j).mRemoteToken.toWindowContainerToken(), (WindowContainerToken) null, true);
            }
        }
        this.mAtmService.mWindowOrganizerController.applyTransaction(wct);
    }

    public /* synthetic */ void lambda$moveSplitScreenTasksToFullScreen$2$TaskDisplayArea(Task task) {
        if (task.mCreatedByOrganizer && task.inSplitScreenWindowingMode() && task.hasChild()) {
            this.mTmpTasks.add(task);
        }
    }

    private boolean isWindowingModeSupported(int windowingMode, boolean supportsMultiWindow, boolean supportsSplitScreen, boolean supportsFreeform, boolean supportsPip, int activityType) {
        if (windowingMode == 0 || windowingMode == 1) {
            return true;
        }
        if (!supportsMultiWindow) {
            return false;
        }
        if (windowingMode == 6) {
            return true;
        }
        if (windowingMode == 3 || windowingMode == 4) {
            if (supportsSplitScreen && WindowConfiguration.supportSplitScreenWindowingMode(activityType)) {
                return true;
            }
            return false;
        }
        if (!supportsFreeform && windowingMode == 5) {
            return false;
        }
        if (supportsPip || windowingMode != 2) {
            return true;
        }
        return false;
    }

    int resolveWindowingMode(ActivityRecord r, ActivityOptions options, Task task, int activityType) {
        int windowingMode = options != null ? options.getLaunchWindowingMode() : 0;
        if (windowingMode == 0) {
            if (task != null) {
                windowingMode = task.getWindowingMode();
            }
            if (windowingMode == 0 && r != null) {
                windowingMode = r.getWindowingMode();
            }
            if (windowingMode == 0) {
                windowingMode = getWindowingMode();
            }
        }
        int windowingMode2 = validateWindowingMode(windowingMode, r, task, activityType);
        if (windowingMode2 != 0) {
            return windowingMode2;
        }
        return 1;
    }

    boolean isValidWindowingMode(int windowingMode, ActivityRecord r, Task task, int activityType) {
        boolean supportsMultiWindow = this.mAtmService.mSupportsMultiWindow;
        boolean supportsSplitScreen = this.mAtmService.mSupportsSplitScreenMultiWindow;
        boolean supportsFreeform = this.mAtmService.mSupportsFreeformWindowManagement;
        boolean supportsPip = this.mAtmService.mSupportsPictureInPicture;
        if (supportsMultiWindow) {
            if (task != null) {
                supportsMultiWindow = task.isResizeable();
                supportsSplitScreen = task.supportsSplitScreenWindowingMode();
            } else if (r != null) {
                supportsMultiWindow = r.isResizeable();
                supportsSplitScreen = r.supportsSplitScreenWindowingMode();
                supportsFreeform = r.supportsFreeform();
                supportsPip = r.supportsPictureInPicture();
            }
        }
        return windowingMode != 0 && isWindowingModeSupported(windowingMode, supportsMultiWindow, supportsSplitScreen, supportsFreeform, supportsPip, activityType);
    }

    int validateWindowingMode(int windowingMode, ActivityRecord r, Task task, int activityType) {
        boolean inSplitScreenMode = isSplitScreenModeActivated();
        if (!inSplitScreenMode && windowingMode == 4) {
            windowingMode = 0;
        } else if (inSplitScreenMode && windowingMode == 0) {
            windowingMode = 4;
        }
        if (!isValidWindowingMode(windowingMode, r, task, activityType)) {
            return 0;
        }
        return windowingMode;
    }

    boolean isTopStack(ActivityStack stack) {
        return stack == getTopStack();
    }

    boolean isTopNotPinnedStack(ActivityStack stack) {
        for (int i = getStackCount() - 1; i >= 0; i--) {
            ActivityStack current = getStackAt(i);
            if (!current.inPinnedWindowingMode()) {
                return current == stack;
            }
        }
        return false;
    }

    ActivityRecord topRunningActivity() {
        return topRunningActivity(false);
    }

    ActivityRecord topRunningActivity(boolean considerKeyguardState) {
        ActivityRecord topRunning = null;
        ActivityStack focusedStack = getFocusedStack();
        if (focusedStack != null) {
            topRunning = focusedStack.topRunningActivity();
        }
        if (topRunning == null) {
            for (int i = getStackCount() - 1; i >= 0; i--) {
                ActivityStack stack = getStackAt(i);
                if (stack != focusedStack && stack.isTopActivityFocusable() && (topRunning = stack.topRunningActivity()) != null) {
                    break;
                }
            }
        }
        if (topRunning != null && considerKeyguardState && this.mRootWindowContainer.mStackSupervisor.getKeyguardController().isKeyguardLocked() && !topRunning.canShowWhenLocked()) {
            return null;
        }
        return topRunning;
    }

    protected int getStackCount() {
        return this.mChildren.size();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected ActivityStack getStackAt(int index) {
        return (ActivityStack) this.mChildren.get(index);
    }

    ActivityStack getOrCreateRootHomeTask() {
        return getOrCreateRootHomeTask(false);
    }

    ActivityStack getOrCreateRootHomeTask(boolean onTop) {
        ActivityStack homeTask = getRootHomeTask();
        if (homeTask == null && this.mDisplayContent.supportsSystemDecorations()) {
            return createStack(0, 2, onTop);
        }
        return homeTask;
    }

    boolean isSplitScreenModeActivated() {
        Task task = getRootSplitScreenPrimaryTask();
        return task != null && task.hasChild();
    }

    ActivityStack getTopStackInWindowingMode(int windowingMode) {
        return getStack(windowingMode, 0);
    }

    void moveHomeStackToFront(String reason) {
        ActivityStack homeStack = getOrCreateRootHomeTask();
        if (homeStack != null) {
            homeStack.moveToFront(reason);
        }
    }

    void moveHomeActivityToTop(String reason) {
        ActivityRecord top = getHomeActivity();
        if (top == null) {
            moveHomeStackToFront(reason);
        } else {
            top.moveFocusableActivityToTop(reason);
        }
    }

    ActivityRecord getHomeActivity() {
        return getHomeActivityForUser(this.mRootWindowContainer.mCurrentUser);
    }

    ActivityRecord getHomeActivityForUser(int userId) {
        ActivityStack homeStack = getRootHomeTask();
        if (homeStack == null) {
            return null;
        }
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return TaskDisplayArea.isHomeActivityForUser((ActivityRecord) obj, ((Integer) obj2).intValue());
            }
        }, PooledLambda.__(ActivityRecord.class), Integer.valueOf(userId));
        ActivityRecord r = homeStack.getActivity(p);
        p.recycle();
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isHomeActivityForUser(ActivityRecord r, int userId) {
        return r.isActivityTypeHome() && (userId == -1 || r.mUserId == userId);
    }

    void moveStackBehindBottomMostVisibleStack(ActivityStack stack) {
        if (stack.shouldBeVisible(null)) {
            return;
        }
        boolean isRootTask = stack.isRootTask();
        if (!isRootTask) {
            stack.getParent().positionChildAt(Integer.MIN_VALUE, stack, false);
        } else {
            positionStackAtBottom(stack);
        }
        int numStacks = isRootTask ? getStackCount() : stack.getParent().getChildCount();
        for (int stackNdx = 0; stackNdx < numStacks; stackNdx++) {
            ActivityStack s = isRootTask ? getStackAt(stackNdx) : (ActivityStack) stack.getParent().getChildAt(stackNdx);
            if (s != stack) {
                int winMode = s.getWindowingMode();
                boolean isValidWindowingMode = true;
                if (winMode != 1 && winMode != 4) {
                    isValidWindowingMode = false;
                }
                if (s.shouldBeVisible(null) && isValidWindowingMode) {
                    int position = Math.max(0, stackNdx - 1);
                    if (!isRootTask) {
                        stack.getParent().positionChildAt(position, stack, false);
                        return;
                    } else {
                        positionStackAt(stack, position);
                        return;
                    }
                }
            }
        }
    }

    void moveStackBehindStack(ActivityStack stack, ActivityStack behindStack) {
        WindowContainer parent;
        if (behindStack == null || behindStack == stack || (parent = stack.getParent()) == null || parent != behindStack.getParent()) {
            return;
        }
        int stackIndex = parent.mChildren.indexOf(stack);
        int behindStackIndex = parent.mChildren.indexOf(behindStack);
        int insertIndex = stackIndex <= behindStackIndex ? behindStackIndex - 1 : behindStackIndex;
        int position = Math.max(0, insertIndex);
        if (stack.isRootTask()) {
            positionStackAt(stack, position);
        } else {
            parent.positionChildAt(position, stack, false);
        }
    }

    boolean hasPinnedTask() {
        return getRootPinnedTask() != null;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    static ActivityStack getStackAbove(ActivityStack stack) {
        WindowContainer wc = stack.getParent();
        int index = wc.mChildren.indexOf(stack) + 1;
        if (index < wc.mChildren.size()) {
            return (ActivityStack) wc.mChildren.get(index);
        }
        return null;
    }

    boolean isStackVisible(int windowingMode) {
        ActivityStack stack = getTopStackInWindowingMode(windowingMode);
        return stack != null && stack.isVisible();
    }

    void removeStack(ActivityStack stack) {
        removeChild(stack);
    }

    int getDisplayId() {
        return this.mDisplayContent.getDisplayId();
    }

    boolean isRemoved() {
        return this.mRemoved;
    }

    void registerStackOrderChangedListener(OnStackOrderChangedListener listener) {
        if (!this.mStackOrderChangedCallbacks.contains(listener)) {
            this.mStackOrderChangedCallbacks.add(listener);
        }
    }

    void unregisterStackOrderChangedListener(OnStackOrderChangedListener listener) {
        this.mStackOrderChangedCallbacks.remove(listener);
    }

    void onStackOrderChanged(ActivityStack stack) {
        for (int i = this.mStackOrderChangedCallbacks.size() - 1; i >= 0; i--) {
            this.mStackOrderChangedCallbacks.get(i).onStackOrderChanged(stack);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean canCreateRemoteAnimationTarget() {
        return true;
    }

    void ensureActivitiesVisible(ActivityRecord starting, int configChanges, boolean preserveWindows, boolean notifyClients) {
        this.mAtmService.mStackSupervisor.beginActivityVisibilityUpdate();
        try {
            for (int stackNdx = getStackCount() - 1; stackNdx >= 0; stackNdx--) {
                ActivityStack stack = getStackAt(stackNdx);
                stack.ensureActivitiesVisible(starting, configChanges, preserveWindows, notifyClients);
            }
            this.mAtmService.mStackSupervisor.endActivityVisibilityUpdate();
        } catch (Throwable th) {
            this.mAtmService.mStackSupervisor.endActivityVisibilityUpdate();
            throw th;
        }
    }

    void prepareFreezingTaskBounds() {
        for (int stackNdx = getChildCount() - 1; stackNdx >= 0; stackNdx--) {
            ActivityStack stack = (ActivityStack) getChildAt(stackNdx);
            stack.prepareFreezingTaskBounds();
        }
    }

    ActivityStack remove() {
        ActivityStack topStackInWindowingMode = null;
        this.mPreferredTopFocusableStack = null;
        boolean zShouldDestroyContentOnRemove = this.mDisplayContent.shouldDestroyContentOnRemove();
        TaskDisplayArea defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
        ActivityStack activityStack = null;
        int stackCount = getStackCount();
        boolean zIsSplitScreenModeActivated = defaultTaskDisplayArea.isSplitScreenModeActivated();
        if (zIsSplitScreenModeActivated) {
            topStackInWindowingMode = defaultTaskDisplayArea.getTopStackInWindowingMode(4);
        }
        int i = 0;
        while (i < stackCount) {
            ActivityStack stackAt = getStackAt(i);
            if (zShouldDestroyContentOnRemove || !stackAt.isActivityTypeStandardOrUndefined()) {
                stackAt.finishAllActivitiesImmediately();
            } else {
                stackAt.reparent((!stackAt.supportsSplitScreenWindowingMode() || topStackInWindowingMode == null) ? defaultTaskDisplayArea : topStackInWindowingMode, Integer.MAX_VALUE);
                stackAt.setWindowingMode(0);
                activityStack = stackAt;
            }
            int stackCount2 = i - (stackCount - getStackCount());
            stackCount = getStackCount();
            i = stackCount2 + 1;
            activityStack = activityStack;
        }
        if (activityStack != null && zIsSplitScreenModeActivated) {
            if (!activityStack.supportsSplitScreenWindowingMode()) {
                this.mAtmService.getTaskChangeNotificationController().notifyActivityDismissingDockedStack();
                defaultTaskDisplayArea.onSplitScreenModeDismissed(activityStack);
            } else if (topStackInWindowingMode != null) {
                topStackInWindowingMode.moveToFront("display-removed");
            }
        }
        this.mRemoved = true;
        return activityStack;
    }

    @Override // com.android.server.wm.WindowContainer
    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        pw.println(prefix + "TaskDisplayArea " + getName());
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("  ");
        String doublePrefix = sb.toString();
        super.dump(pw, doublePrefix, dumpAll);
        if (this.mPreferredTopFocusableStack != null) {
            pw.println(doublePrefix + "mPreferredTopFocusableStack=" + this.mPreferredTopFocusableStack);
        }
        if (this.mLastFocusedStack != null) {
            pw.println(doublePrefix + "mLastFocusedStack=" + this.mLastFocusedStack);
        }
        String triplePrefix = doublePrefix + "  ";
        pw.println(doublePrefix + "Application tokens in top down Z order:");
        for (int stackNdx = getChildCount() + (-1); stackNdx >= 0; stackNdx += -1) {
            ActivityStack stack = (ActivityStack) getChildAt(stackNdx);
            pw.println(doublePrefix + "* " + stack);
            stack.dump(pw, triplePrefix, dumpAll);
        }
    }
}
