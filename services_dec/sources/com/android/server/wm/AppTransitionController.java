package com.android.server.wm;

import android.os.Trace;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationDefinition;
import android.view.WindowManager;
import android.view.animation.Animation;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public class AppTransitionController {
    private static final String TAG = "WindowManager";
    private final DisplayContent mDisplayContent;
    private final WindowManagerService mService;
    private final WallpaperController mWallpaperControllerLocked;
    private RemoteAnimationDefinition mRemoteAnimationDefinition = null;
    private final ArrayMap<WindowContainer, Integer> mTempTransitionReasons = new ArrayMap<>();

    AppTransitionController(WindowManagerService service, DisplayContent displayContent) {
        this.mService = service;
        this.mDisplayContent = displayContent;
        this.mWallpaperControllerLocked = displayContent.mWallpaperController;
    }

    void registerRemoteAnimations(RemoteAnimationDefinition definition) {
        this.mRemoteAnimationDefinition = definition;
    }

    void handleAppTransitionReady() {
        this.mTempTransitionReasons.clear();
        if (!transitionGoodToGo(this.mDisplayContent.mOpeningApps, this.mTempTransitionReasons) || !transitionGoodToGo(this.mDisplayContent.mChangingContainers, this.mTempTransitionReasons)) {
            return;
        }
        Trace.traceBegin(32L, "AppTransitionReady");
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 255692476, 0, null, (Object[]) null);
        }
        AppTransition appTransition = this.mDisplayContent.mAppTransition;
        int transit = appTransition.getAppTransition();
        if (this.mDisplayContent.mSkipAppTransitionAnimation && !AppTransition.isKeyguardGoingAwayTransit(transit)) {
            transit = -1;
        }
        this.mDisplayContent.mSkipAppTransitionAnimation = false;
        this.mDisplayContent.mNoAnimationNotifyOnTransitionFinished.clear();
        appTransition.removeAppTransitionTimeoutCallbacks();
        this.mDisplayContent.mWallpaperMayChange = false;
        int appCount = this.mDisplayContent.mOpeningApps.size();
        for (int i = 0; i < appCount; i++) {
            ((ActivityRecord) this.mDisplayContent.mOpeningApps.valueAtUnchecked(i)).clearAnimatingFlags();
        }
        int appCount2 = this.mDisplayContent.mChangingContainers.size();
        for (int i2 = 0; i2 < appCount2; i2++) {
            ActivityRecord activity = getAppFromContainer((WindowContainer) this.mDisplayContent.mChangingContainers.valueAtUnchecked(i2));
            if (activity != null) {
                activity.clearAnimatingFlags();
            }
        }
        this.mWallpaperControllerLocked.adjustWallpaperWindowsForAppTransitionIfNeeded(this.mDisplayContent.mOpeningApps);
        boolean hasWallpaperTarget = this.mWallpaperControllerLocked.getWallpaperTarget() != null;
        boolean openingAppHasWallpaper = canBeWallpaperTarget(this.mDisplayContent.mOpeningApps) && hasWallpaperTarget;
        boolean closingAppHasWallpaper = canBeWallpaperTarget(this.mDisplayContent.mClosingApps) && hasWallpaperTarget;
        int transit2 = maybeUpdateTransitToWallpaper(maybeUpdateTransitToTranslucentAnim(transit), openingAppHasWallpaper, closingAppHasWallpaper);
        ArraySet<Integer> activityTypes = collectActivityTypes(this.mDisplayContent.mOpeningApps, this.mDisplayContent.mClosingApps, this.mDisplayContent.mChangingContainers);
        ActivityRecord animLpActivity = findAnimLayoutParamsToken(transit2, activityTypes);
        ActivityRecord topOpeningApp = getTopApp(this.mDisplayContent.mOpeningApps, false);
        ActivityRecord topClosingApp = getTopApp(this.mDisplayContent.mClosingApps, false);
        ActivityRecord topChangingApp = getTopApp(this.mDisplayContent.mChangingContainers, false);
        WindowManager.LayoutParams animLp = getAnimLp(animLpActivity);
        overrideWithRemoteAnimationIfSet(animLpActivity, transit2, activityTypes);
        boolean voiceInteraction = containsVoiceInteraction(this.mDisplayContent.mOpeningApps) || containsVoiceInteraction(this.mDisplayContent.mOpeningApps);
        this.mService.mSurfaceAnimationRunner.deferStartingAnimations();
        try {
            try {
                applyAnimations(this.mDisplayContent.mOpeningApps, this.mDisplayContent.mClosingApps, transit2, animLp, voiceInteraction);
                handleClosingApps();
                handleOpeningApps();
                handleChangingApps(transit2);
                appTransition.setLastAppTransition(transit2, topOpeningApp, topClosingApp, topChangingApp);
                int flags = appTransition.getTransitFlags();
                int layoutRedo = appTransition.goodToGo(transit2, topOpeningApp, this.mDisplayContent.mOpeningApps);
                handleNonAppWindowsInTransition(transit2, flags);
                appTransition.postAnimationCallback();
                appTransition.clear();
                this.mService.mSurfaceAnimationRunner.continueStartingAnimations();
                this.mService.mTaskSnapshotController.onTransitionStarting(this.mDisplayContent);
                this.mDisplayContent.mOpeningApps.clear();
                this.mDisplayContent.mClosingApps.clear();
                this.mDisplayContent.mChangingContainers.clear();
                this.mDisplayContent.mUnknownAppVisibilityController.clear();
                this.mDisplayContent.setLayoutNeeded();
                this.mDisplayContent.computeImeTarget(true);
                this.mService.mAtmService.mStackSupervisor.getActivityMetricsLogger().notifyTransitionStarting(this.mTempTransitionReasons);
                if (transit2 == 28) {
                    this.mService.mAnimator.addAfterPrepareSurfacesRunnable(new Runnable() { // from class: com.android.server.wm.-$$Lambda$AppTransitionController$wKDCdmYJWN9Qk9bjArILV5j7lEY
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$handleAppTransitionReady$0$AppTransitionController();
                        }
                    });
                }
                Trace.traceEnd(32L);
                this.mDisplayContent.pendingLayoutChanges |= layoutRedo | 1 | 2;
            } catch (Throwable th) {
                th = th;
                this.mService.mSurfaceAnimationRunner.continueStartingAnimations();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public /* synthetic */ void lambda$handleAppTransitionReady$0$AppTransitionController() {
        this.mService.mAtmInternal.notifySingleTaskDisplayDrawn(this.mDisplayContent.getDisplayId());
    }

    private static WindowManager.LayoutParams getAnimLp(ActivityRecord activity) {
        WindowState mainWindow = activity != null ? activity.findMainWindow() : null;
        if (mainWindow != null) {
            return mainWindow.mAttrs;
        }
        return null;
    }

    RemoteAnimationAdapter getRemoteAnimationOverride(WindowContainer container, int transit, ArraySet<Integer> activityTypes) {
        RemoteAnimationAdapter adapter;
        RemoteAnimationDefinition definition = container.getRemoteAnimationDefinition();
        if (definition != null && (adapter = definition.getAdapter(transit, activityTypes)) != null) {
            return adapter;
        }
        RemoteAnimationDefinition remoteAnimationDefinition = this.mRemoteAnimationDefinition;
        if (remoteAnimationDefinition == null) {
            return null;
        }
        return remoteAnimationDefinition.getAdapter(transit, activityTypes);
    }

    private void overrideWithRemoteAnimationIfSet(ActivityRecord animLpActivity, int transit, ArraySet<Integer> activityTypes) {
        RemoteAnimationAdapter adapter;
        if (transit != 26 && animLpActivity != null && (adapter = getRemoteAnimationOverride(animLpActivity, transit, activityTypes)) != null) {
            animLpActivity.getDisplayContent().mAppTransition.overridePendingAppTransitionRemote(adapter);
        }
    }

    static ActivityRecord getAppFromContainer(WindowContainer wc) {
        return wc.asTask() != null ? wc.asTask().getTopNonFinishingActivity() : wc.asActivityRecord();
    }

    private ActivityRecord findAnimLayoutParamsToken(final int transit, final ArraySet<Integer> activityTypes) {
        ArraySet<ActivityRecord> closingApps = this.mDisplayContent.mClosingApps;
        ArraySet<ActivityRecord> openingApps = this.mDisplayContent.mOpeningApps;
        ArraySet<WindowContainer> changingApps = this.mDisplayContent.mChangingContainers;
        ActivityRecord result = lookForHighestTokenWithFilter(closingApps, openingApps, changingApps, new Predicate() { // from class: com.android.server.wm.-$$Lambda$AppTransitionController$z5kCoexPNTWFncmRBfeXr6HA2JA
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AppTransitionController.lambda$findAnimLayoutParamsToken$1(transit, activityTypes, (ActivityRecord) obj);
            }
        });
        if (result != null) {
            return getAppFromContainer(result);
        }
        ActivityRecord result2 = lookForHighestTokenWithFilter(closingApps, openingApps, changingApps, new Predicate() { // from class: com.android.server.wm.-$$Lambda$AppTransitionController$o_nkoN7a-ZHaSAgJCQZcboKz9Ig
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AppTransitionController.lambda$findAnimLayoutParamsToken$2((ActivityRecord) obj);
            }
        });
        if (result2 != null) {
            return result2;
        }
        return lookForHighestTokenWithFilter(closingApps, openingApps, changingApps, new Predicate() { // from class: com.android.server.wm.-$$Lambda$AppTransitionController$ZU-2ppbyGJ7-UsXREbcW1x9TJH0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AppTransitionController.lambda$findAnimLayoutParamsToken$3((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$findAnimLayoutParamsToken$1(int transit, ArraySet activityTypes, ActivityRecord w) {
        return w.getRemoteAnimationDefinition() != null && w.getRemoteAnimationDefinition().hasTransition(transit, activityTypes);
    }

    static /* synthetic */ boolean lambda$findAnimLayoutParamsToken$2(ActivityRecord w) {
        return w.fillsParent() && w.findMainWindow() != null;
    }

    static /* synthetic */ boolean lambda$findAnimLayoutParamsToken$3(ActivityRecord w) {
        return w.findMainWindow() != null;
    }

    private static ArraySet<Integer> collectActivityTypes(ArraySet<ActivityRecord> array1, ArraySet<ActivityRecord> array2, ArraySet<WindowContainer> array3) {
        ArraySet<Integer> result = new ArraySet<>();
        for (int i = array1.size() - 1; i >= 0; i--) {
            result.add(Integer.valueOf(array1.valueAt(i).getActivityType()));
        }
        int i2 = array2.size();
        for (int i3 = i2 - 1; i3 >= 0; i3--) {
            result.add(Integer.valueOf(array2.valueAt(i3).getActivityType()));
        }
        int i4 = array3.size();
        for (int i5 = i4 - 1; i5 >= 0; i5--) {
            result.add(Integer.valueOf(array3.valueAt(i5).getActivityType()));
        }
        return result;
    }

    private static ActivityRecord lookForHighestTokenWithFilter(ArraySet<ActivityRecord> array1, ArraySet<ActivityRecord> array2, ArraySet<WindowContainer> array3, Predicate<ActivityRecord> filter) {
        WindowContainer wtoken;
        int array2base = array1.size();
        int array3base = array2.size() + array2base;
        int count = array3.size() + array3base;
        int bestPrefixOrderIndex = Integer.MIN_VALUE;
        ActivityRecord bestToken = null;
        for (int i = 0; i < count; i++) {
            if (i < array2base) {
                wtoken = array1.valueAt(i);
            } else if (i < array3base) {
                wtoken = array2.valueAt(i - array2base);
            } else {
                wtoken = array3.valueAt(i - array3base);
            }
            int prefixOrderIndex = wtoken.getPrefixOrderIndex();
            ActivityRecord r = getAppFromContainer(wtoken);
            if (r != null && filter.test(r) && prefixOrderIndex > bestPrefixOrderIndex) {
                bestPrefixOrderIndex = prefixOrderIndex;
                bestToken = r;
            }
        }
        return bestToken;
    }

    private boolean containsVoiceInteraction(ArraySet<ActivityRecord> apps) {
        for (int i = apps.size() - 1; i >= 0; i--) {
            if (apps.valueAt(i).mVoiceInteraction) {
                return true;
            }
        }
        return false;
    }

    private void applyAnimations(ArraySet<WindowContainer> wcs, ArraySet<ActivityRecord> apps, int transit, boolean visible, WindowManager.LayoutParams animLp, boolean voiceInteraction) {
        int wcsCount = wcs.size();
        for (int i = 0; i < wcsCount; i++) {
            WindowContainer wc = wcs.valueAt(i);
            ArrayList<ActivityRecord> transitioningDescendants = new ArrayList<>();
            for (int j = 0; j < apps.size(); j++) {
                ActivityRecord app = apps.valueAt(j);
                if (app.isDescendantOf(wc)) {
                    transitioningDescendants.add(app);
                }
            }
            wc.applyAnimation(animLp, transit, visible, voiceInteraction, transitioningDescendants);
        }
    }

    static ArraySet<WindowContainer> getAnimationTargets(ArraySet<ActivityRecord> openingApps, ArraySet<ActivityRecord> closingApps, boolean visible) {
        LinkedList<WindowContainer> candidates = new LinkedList<>();
        ArraySet<ActivityRecord> apps = visible ? openingApps : closingApps;
        for (int i = 0; i < apps.size(); i++) {
            ActivityRecord app = apps.valueAt(i);
            if (app.shouldApplyAnimation(visible)) {
                candidates.add(app);
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                    String protoLogParam0 = String.valueOf(app);
                    boolean protoLogParam1 = app.isVisible();
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1967975839, 60, null, protoLogParam0, Boolean.valueOf(protoLogParam1), false);
                }
            }
        }
        if (!WindowManagerService.sHierarchicalAnimations) {
            return new ArraySet<>(candidates);
        }
        ArraySet<ActivityRecord> otherApps = visible ? closingApps : openingApps;
        ArraySet<WindowContainer> otherAncestors = new ArraySet<>();
        for (int i2 = 0; i2 < otherApps.size(); i2++) {
            for (WindowContainer wc = otherApps.valueAt(i2); wc != null; wc = wc.getParent()) {
                otherAncestors.add(wc);
            }
        }
        ArraySet<WindowContainer> targets = new ArraySet<>();
        ArrayList<WindowContainer> siblings = new ArrayList<>();
        while (!candidates.isEmpty()) {
            WindowContainer current = candidates.removeFirst();
            WindowContainer parent = current.getParent();
            siblings.clear();
            siblings.add(current);
            boolean canPromote = true;
            if (parent == null || !parent.canCreateRemoteAnimationTarget()) {
                canPromote = false;
            } else {
                if (otherAncestors.contains(parent)) {
                    canPromote = false;
                }
                for (int j = 0; j < parent.getChildCount(); j++) {
                    WindowContainer sibling = parent.getChildAt(j);
                    if (candidates.remove(sibling)) {
                        siblings.add(sibling);
                    } else if (sibling != current && sibling.isVisible()) {
                        canPromote = false;
                    }
                }
            }
            if (canPromote) {
                candidates.add(parent);
            } else {
                targets.addAll(siblings);
            }
        }
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
            String protoLogParam2 = String.valueOf(apps);
            String protoLogParam3 = String.valueOf(targets);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 1460759282, 0, null, protoLogParam2, protoLogParam3);
        }
        return targets;
    }

    private void applyAnimations(ArraySet<ActivityRecord> openingApps, ArraySet<ActivityRecord> closingApps, int transit, WindowManager.LayoutParams animLp, boolean voiceInteraction) {
        if (transit != -1) {
            if (openingApps.isEmpty() && closingApps.isEmpty()) {
                return;
            }
            ArraySet<WindowContainer> openingWcs = getAnimationTargets(openingApps, closingApps, true);
            ArraySet<WindowContainer> closingWcs = getAnimationTargets(openingApps, closingApps, false);
            applyAnimations(openingWcs, openingApps, transit, true, animLp, voiceInteraction);
            applyAnimations(closingWcs, closingApps, transit, false, animLp, voiceInteraction);
            AccessibilityController accessibilityController = this.mDisplayContent.mWmService.mAccessibilityController;
            if (accessibilityController != null) {
                accessibilityController.onAppWindowTransitionLocked(this.mDisplayContent.getDisplayId(), transit);
            }
        }
    }

    private void handleOpeningApps() {
        ArraySet<ActivityRecord> openingApps = this.mDisplayContent.mOpeningApps;
        int appsCount = openingApps.size();
        for (int i = 0; i < appsCount; i++) {
            ActivityRecord app = openingApps.valueAt(i);
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(app);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1628345525, 0, null, protoLogParam0);
            }
            app.commitVisibility(true, false);
            WindowContainer wc = app.getAnimatingContainer(2, 1);
            if (wc == null || !wc.getAnimationSources().contains(app)) {
                this.mDisplayContent.mNoAnimationNotifyOnTransitionFinished.add(app.token);
            }
            app.updateReportedVisibilityLocked();
            app.waitingToShow = false;
            this.mService.openSurfaceTransaction();
            try {
                app.showAllWindowsLocked();
                this.mService.closeSurfaceTransaction("handleAppTransitionReady");
                if (this.mDisplayContent.mAppTransition.isNextAppTransitionThumbnailUp()) {
                    app.attachThumbnailAnimation();
                } else if (this.mDisplayContent.mAppTransition.isNextAppTransitionOpenCrossProfileApps()) {
                    app.attachCrossProfileAppsThumbnailAnimation();
                }
            } catch (Throwable th) {
                this.mService.closeSurfaceTransaction("handleAppTransitionReady");
                throw th;
            }
        }
    }

    private void handleClosingApps() {
        ArraySet<ActivityRecord> closingApps = this.mDisplayContent.mClosingApps;
        int appsCount = closingApps.size();
        for (int i = 0; i < appsCount; i++) {
            ActivityRecord app = closingApps.valueAt(i);
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(app);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 794570322, 0, null, protoLogParam0);
            }
            app.commitVisibility(false, false);
            app.updateReportedVisibilityLocked();
            app.allDrawn = true;
            if (app.startingWindow != null && !app.startingWindow.mAnimatingExit) {
                app.removeStartingWindow();
            }
            if (this.mDisplayContent.mAppTransition.isNextAppTransitionThumbnailDown()) {
                app.attachThumbnailAnimation();
            }
        }
    }

    private void handleChangingApps(int transit) {
        ArraySet<WindowContainer> apps = this.mDisplayContent.mChangingContainers;
        int appsCount = apps.size();
        for (int i = 0; i < appsCount; i++) {
            WindowContainer wc = apps.valueAt(i);
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(wc);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 186668272, 0, null, protoLogParam0);
            }
            wc.applyAnimation(null, transit, true, false, null);
        }
    }

    private void handleNonAppWindowsInTransition(int transit, int flags) {
        if (transit == 20 && (flags & 4) != 0 && (flags & 2) == 0 && (flags & 8) == 0) {
            Animation anim = this.mService.mPolicy.createKeyguardWallpaperExit((flags & 1) != 0);
            if (anim != null) {
                anim.scaleCurrentDuration(this.mService.getTransitionAnimationScaleLocked());
                this.mDisplayContent.mWallpaperController.startWallpaperAnimation(anim);
            }
        }
        if (transit == 20 || transit == 21) {
            this.mDisplayContent.startKeyguardExitOnNonAppWindows(transit == 21, (flags & 1) != 0, (flags & 8) != 0);
        }
    }

    private boolean transitionGoodToGo(ArraySet<? extends WindowContainer> apps, ArrayMap<WindowContainer, Integer> outReasons) {
        char c;
        int i;
        char c2;
        int i2;
        char c3 = 3;
        char c4 = 2;
        char c5 = 1;
        char c6 = 0;
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            long protoLogParam0 = apps.size();
            boolean protoLogParam1 = this.mService.mDisplayFrozen;
            boolean protoLogParam2 = this.mDisplayContent.mAppTransition.isTimeout();
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 2045641491, 61, null, Long.valueOf(protoLogParam0), Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2));
        }
        ScreenRotationAnimation screenRotationAnimation = this.mService.mRoot.getDisplayContent(0).getRotationAnimation();
        if (this.mDisplayContent.mAppTransition.isTimeout()) {
            return true;
        }
        if (screenRotationAnimation != null && screenRotationAnimation.isAnimating() && this.mDisplayContent.getDisplayRotation().needsUpdate()) {
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 628276090, 0, null, (Object[]) null);
            }
            return false;
        }
        int i3 = 0;
        while (i3 < apps.size()) {
            WindowContainer wc = apps.valueAt(i3);
            ActivityRecord activity = getAppFromContainer(wc);
            if (activity == null) {
                screenRotationAnimation = screenRotationAnimation;
                c = c3;
                c2 = c4;
            } else {
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                    String protoLogParam3 = String.valueOf(activity);
                    boolean protoLogParam4 = activity.allDrawn;
                    boolean protoLogParam5 = activity.startingDisplayed;
                    boolean protoLogParam6 = activity.startingMoved;
                    boolean protoLogParam7 = activity.isRelaunching();
                    String protoLogParam8 = String.valueOf(activity.startingWindow);
                    ProtoLogGroup protoLogGroup = ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS;
                    Object[] objArr = new Object[6];
                    objArr[c6] = protoLogParam3;
                    objArr[c5] = Boolean.valueOf(protoLogParam4);
                    objArr[2] = Boolean.valueOf(protoLogParam5);
                    c = 3;
                    objArr[3] = Boolean.valueOf(protoLogParam6);
                    i = 4;
                    objArr[4] = Boolean.valueOf(protoLogParam7);
                    objArr[5] = protoLogParam8;
                    ProtoLogImpl.v(protoLogGroup, 289967521, 1020, null, objArr);
                } else {
                    c = c3;
                    i = 4;
                }
                boolean allDrawn = activity.allDrawn && !activity.isRelaunching();
                if (!allDrawn && !activity.startingDisplayed && !activity.startingMoved) {
                    return false;
                }
                if (allDrawn) {
                    c2 = 2;
                    outReasons.put(activity, 2);
                } else {
                    c2 = 2;
                    if (activity.mStartingData instanceof SplashScreenStartingData) {
                        i2 = 1;
                    } else {
                        i2 = i;
                    }
                    outReasons.put(activity, Integer.valueOf(i2));
                }
            }
            i3++;
            c4 = c2;
            c3 = c;
            screenRotationAnimation = screenRotationAnimation;
            c5 = 1;
            c6 = 0;
        }
        if (this.mDisplayContent.mAppTransition.isFetchingAppTransitionsSpecs()) {
            if (!ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                return false;
            }
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -1009117329, 0, null, (Object[]) null);
            return false;
        }
        if (!this.mDisplayContent.mUnknownAppVisibilityController.allResolved()) {
            if (!ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                return false;
            }
            String protoLogParam9 = String.valueOf(this.mDisplayContent.mUnknownAppVisibilityController.getDebugMessage());
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -379068494, 0, null, protoLogParam9);
            return false;
        }
        boolean wallpaperReady = !this.mWallpaperControllerLocked.isWallpaperVisible() || this.mWallpaperControllerLocked.wallpaperTransitionReady();
        if (wallpaperReady) {
            return true;
        }
        return false;
    }

    private int maybeUpdateTransitToWallpaper(int transit, boolean openingAppHasWallpaper, boolean closingAppHasWallpaper) {
        WindowState oldWallpaper;
        int transit2 = transit;
        if (transit2 == 0 || transit2 == 26 || transit2 == 19 || AppTransition.isChangeTransit(transit)) {
            return transit2;
        }
        WindowState wallpaperTarget = this.mWallpaperControllerLocked.getWallpaperTarget();
        boolean showWallpaper = wallpaperTarget != null && ((wallpaperTarget.mAttrs.flags & 1048576) != 0 || ((transit2 == 8 || transit2 == 10) && this.mWallpaperControllerLocked.isWallpaperVisible()));
        if (this.mWallpaperControllerLocked.isWallpaperTargetAnimating() || !showWallpaper) {
            oldWallpaper = null;
        } else {
            oldWallpaper = wallpaperTarget;
        }
        ArraySet<ActivityRecord> openingApps = this.mDisplayContent.mOpeningApps;
        ArraySet<ActivityRecord> closingApps = this.mDisplayContent.mClosingApps;
        ActivityRecord topOpeningApp = getTopApp(this.mDisplayContent.mOpeningApps, false);
        ActivityRecord topClosingApp = getTopApp(this.mDisplayContent.mClosingApps, true);
        boolean openingCanBeWallpaperTarget = canBeWallpaperTarget(openingApps);
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            String protoLogParam0 = String.valueOf(wallpaperTarget);
            String protoLogParam1 = String.valueOf(oldWallpaper);
            String protoLogParam2 = String.valueOf(openingApps);
            String protoLogParam3 = String.valueOf(closingApps);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -371630969, 0, null, protoLogParam0, protoLogParam1, protoLogParam2, protoLogParam3);
        }
        if (openingCanBeWallpaperTarget && transit2 == 20) {
            transit2 = 21;
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam4 = String.valueOf(AppTransition.appTransitionToString(21));
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -129722369, 0, null, protoLogParam4);
            }
        } else if (!AppTransition.isKeyguardGoingAwayTransit(transit)) {
            if (closingAppHasWallpaper && openingAppHasWallpaper) {
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 100936473, 0, null, (Object[]) null);
                }
                switch (transit2) {
                    case 6:
                    case 8:
                    case 10:
                        transit2 = 14;
                        break;
                    case 7:
                    case 9:
                    case 11:
                        transit2 = 15;
                        break;
                }
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                    String protoLogParam5 = String.valueOf(AppTransition.appTransitionToString(transit2));
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -129722369, 0, null, protoLogParam5);
                }
            } else if (oldWallpaper != null && !this.mDisplayContent.mOpeningApps.isEmpty() && !openingApps.contains(oldWallpaper.mActivityRecord) && closingApps.contains(oldWallpaper.mActivityRecord) && topClosingApp == oldWallpaper.mActivityRecord) {
                transit2 = 12;
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                    String protoLogParam6 = String.valueOf(AppTransition.appTransitionToString(12));
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -1044506655, 0, null, protoLogParam6);
                }
            } else if (wallpaperTarget != null && wallpaperTarget.isVisibleLw() && openingApps.contains(wallpaperTarget.mActivityRecord) && topOpeningApp == wallpaperTarget.mActivityRecord && transit2 != 25) {
                transit2 = 13;
                if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                    String protoLogParam7 = String.valueOf(AppTransition.appTransitionToString(13));
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -793346159, 0, null, protoLogParam7);
                }
            }
        }
        return transit2;
    }

    int maybeUpdateTransitToTranslucentAnim(int transit) {
        if (AppTransition.isChangeTransit(transit)) {
            return transit;
        }
        boolean taskOrActivity = AppTransition.isTaskTransit(transit) || AppTransition.isActivityTransit(transit);
        boolean allOpeningVisible = true;
        boolean allTranslucentOpeningApps = !this.mDisplayContent.mOpeningApps.isEmpty();
        for (int i = this.mDisplayContent.mOpeningApps.size() - 1; i >= 0; i--) {
            ActivityRecord activity = this.mDisplayContent.mOpeningApps.valueAt(i);
            if (!activity.isVisible()) {
                allOpeningVisible = false;
                if (activity.fillsParent()) {
                    allTranslucentOpeningApps = false;
                }
            }
        }
        boolean allTranslucentClosingApps = !this.mDisplayContent.mClosingApps.isEmpty();
        for (int i2 = this.mDisplayContent.mClosingApps.size() - 1; i2 >= 0; i2--) {
            if (this.mDisplayContent.mClosingApps.valueAt(i2).fillsParent()) {
                allTranslucentClosingApps = false;
                break;
            }
        }
        if (taskOrActivity && allTranslucentClosingApps && allOpeningVisible) {
            return 25;
        }
        if (taskOrActivity && allTranslucentOpeningApps && this.mDisplayContent.mClosingApps.isEmpty()) {
            return 24;
        }
        return transit;
    }

    boolean isTransitWithinTask(int transit, Task task) {
        if (task == null || !this.mDisplayContent.mChangingContainers.isEmpty()) {
            return false;
        }
        if (transit != 6 && transit != 7 && transit != 18) {
            return false;
        }
        for (ActivityRecord activity : this.mDisplayContent.mOpeningApps) {
            Task activityTask = activity.getTask();
            if (activityTask != task) {
                return false;
            }
        }
        for (ActivityRecord activity2 : this.mDisplayContent.mClosingApps) {
            if (activity2.getTask() != task) {
                return false;
            }
        }
        return true;
    }

    private boolean canBeWallpaperTarget(ArraySet<ActivityRecord> apps) {
        for (int i = apps.size() - 1; i >= 0; i--) {
            if (apps.valueAt(i).windowsCanBeWallpaperTarget()) {
                return true;
            }
        }
        return false;
    }

    private ActivityRecord getTopApp(ArraySet<? extends WindowContainer> apps, boolean ignoreInvisible) {
        int prefixOrderIndex;
        int topPrefixOrderIndex = Integer.MIN_VALUE;
        ActivityRecord topApp = null;
        for (int i = apps.size() - 1; i >= 0; i--) {
            ActivityRecord app = getAppFromContainer(apps.valueAt(i));
            if (app != null && ((!ignoreInvisible || app.isVisible()) && (prefixOrderIndex = app.getPrefixOrderIndex()) > topPrefixOrderIndex)) {
                topPrefixOrderIndex = prefixOrderIndex;
                topApp = app;
            }
        }
        return topApp;
    }
}
