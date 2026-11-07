package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.ResultInfo;
import android.app.WindowConfiguration;
import android.app.servertransaction.ActivityConfigurationChangeItem;
import android.app.servertransaction.ActivityRelaunchItem;
import android.app.servertransaction.ActivityResultItem;
import android.app.servertransaction.ClientTransaction;
import android.app.servertransaction.DestroyActivityItem;
import android.app.servertransaction.MoveToDisplayItem;
import android.app.servertransaction.NewIntentItem;
import android.app.servertransaction.PauseActivityItem;
import android.app.servertransaction.ResumeActivityItem;
import android.app.servertransaction.StartActivityItem;
import android.app.servertransaction.StopActivityItem;
import android.app.servertransaction.TopResumedActivityChangeItem;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.GraphicBuffer;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioChannelMask;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.IBinder;
import android.os.PersistableBundle;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.service.dreams.DreamActivity;
import android.service.dreams.DreamManagerInternal;
import android.service.voice.IVoiceInteractionSession;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.Log;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.view.AppTransitionAnimationSpec;
import android.view.DisplayCutout;
import android.view.DisplayInfo;
import android.view.IAppTransitionAnimationSpecsFuture;
import android.view.IApplicationToken;
import android.view.InputApplicationHandle;
import android.view.RemoteAnimationDefinition;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.window.WindowContainerToken;
import com.android.internal.app.ResolverActivity;
import com.android.internal.content.ReferrerIntent;
import com.android.internal.util.ToBooleanFunction;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.AttributeCache;
import com.android.server.LocalServices;
import com.android.server.am.AppTimeTracker;
import com.android.server.am.PendingIntentRecord;
import com.android.server.display.color.ColorDisplayService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.pm.PackageManagerService;
import com.android.server.policy.WindowManagerPolicy;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.uri.NeededUriGrants;
import com.android.server.uri.UriPermissionOwner;
import com.android.server.wm.utils.InsetUtils;
import com.google.android.collect.Sets;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes2.dex */
final class ActivityRecord extends WindowToken implements WindowManagerService.AppFreezeListener {
    static final String ACTIVITY_ICON_SUFFIX = "_activity_icon_";
    private static final String ATTR_COMPONENTSPECIFIED = "component_specified";
    private static final String ATTR_ID = "id";
    private static final String ATTR_LAUNCHEDFROMFEATURE = "launched_from_feature";
    private static final String ATTR_LAUNCHEDFROMPACKAGE = "launched_from_package";
    private static final String ATTR_LAUNCHEDFROMUID = "launched_from_uid";
    private static final String ATTR_RESOLVEDTYPE = "resolved_type";
    private static final String ATTR_USERID = "user_id";
    private static final int DESTROY_TIMEOUT = 10000;
    static final int FINISH_RESULT_CANCELLED = 0;
    static final int FINISH_RESULT_REMOVED = 2;
    static final int FINISH_RESULT_REQUESTED = 1;
    static final int INVALID_PID = -1;
    private static final int LAUNCH_TICK = 500;
    private static final int MAX_STOPPING_TO_FORCE = 3;
    private static final int PAUSE_TIMEOUT = 500;
    static final int STARTING_WINDOW_NOT_SHOWN = 0;
    static final int STARTING_WINDOW_REMOVED = 2;
    static final int STARTING_WINDOW_SHOWN = 1;
    private static final int STARTING_WINDOW_TYPE_NONE = 0;
    private static final int STARTING_WINDOW_TYPE_SNAPSHOT = 1;
    private static final int STARTING_WINDOW_TYPE_SPLASH_SCREEN = 2;
    private static final int STOP_TIMEOUT = 11000;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_ADD_REMOVE = "ActivityTaskManager";
    private static final String TAG_APP = "ActivityTaskManager";
    private static final String TAG_CONFIGURATION = "ActivityTaskManager";
    private static final String TAG_CONTAINERS = "ActivityTaskManager";
    private static final String TAG_FOCUS = "ActivityTaskManager";
    private static final String TAG_INTENT = "intent";
    private static final String TAG_PAUSE = "ActivityTaskManager";
    private static final String TAG_PERSISTABLEBUNDLE = "persistable_bundle";
    private static final String TAG_RESULTS = "ActivityTaskManager";
    private static final String TAG_SAVED_STATE = "ActivityTaskManager";
    private static final String TAG_STATES = "ActivityTaskManager";
    private static final String TAG_SWITCH = "ActivityTaskManager";
    private static final String TAG_TRANSITION = "ActivityTaskManager";
    private static final String TAG_USER_LEAVING = "ActivityTaskManager";
    private static final String TAG_VISIBILITY = "ActivityTaskManager";
    static final int Z_BOOST_BASE = 800570000;
    boolean allDrawn;
    WindowProcessController app;
    AppTimeTracker appTimeTracker;
    final Token appToken;
    final Binder assistToken;
    boolean changingDisplay;
    CompatibilityInfo compat;
    private final boolean componentSpecified;
    int configChangeFlags;
    long cpuTimeAtResume;
    private long createTime;
    boolean deferRelaunchUntilPaused;
    boolean delayedResume;
    boolean finishing;
    boolean firstWindowDrawn;
    boolean forceNewConfig;
    boolean frozenBeforeDestroy;
    boolean hasBeenLaunched;
    final boolean hasWallpaper;
    private int icon;
    boolean idle;
    boolean immersive;
    boolean inHistory;
    final ActivityInfo info;
    final Intent intent;
    private boolean keysPaused;
    private int labelRes;
    long lastLaunchTime;
    long lastVisibleTime;
    int launchCount;
    boolean launchFailed;
    int launchMode;
    long launchTickTime;
    final String launchedFromFeatureId;
    final String launchedFromPackage;
    final int launchedFromPid;
    final int launchedFromUid;
    int lockTaskLaunchMode;
    private int logo;
    final ComponentName mActivityComponent;
    private final AddStartingWindow mAddStartingWindow;
    AnimatingActivityRegistry mAnimatingActivityRegistry;
    boolean mAppStopped;
    final ActivityTaskManagerService mAtmService;
    boolean mClientVisibilityDeferred;
    private boolean mClientVisible;
    private final ColorDisplayService.ColorTransformController mColorTransformController;
    private CompatDisplayInsets mCompatDisplayInsets;
    private int mConfigurationSeq;
    private boolean mCurrentLaunchCanTurnScreenOn;
    private boolean mDeferHidingClient;
    private final Runnable mDestroyTimeoutRunnable;
    boolean mDisablePreviewScreenshots;
    boolean mDrawn;
    boolean mEnteringAnimation;
    private boolean mFreezingScreen;
    ArrayDeque<Rect> mFrozenBounds;
    ArrayDeque<Configuration> mFrozenMergedConfig;
    int mHandoverLaunchDisplayId;
    TaskDisplayArea mHandoverTaskDisplayArea;
    private boolean mHaveState;
    private int[] mHorizontalSizeConfigurations;
    private Bundle mIcicle;
    private boolean mInheritShownWhenLocked;
    private InputApplicationHandle mInputApplicationHandle;
    long mInputDispatchingTimeoutNanos;
    boolean mIsExiting;
    private boolean mLastAllDrawn;
    private AppSaturationInfo mLastAppSaturationInfo;
    private boolean mLastContainsDismissKeyguardWindow;
    private boolean mLastContainsShowWhenLockedWindow;
    private boolean mLastContainsTurnScreenOnWindow;
    private boolean mLastDeferHidingClient;
    Intent mLastNewIntent;
    private Task mLastParent;
    private MergedConfiguration mLastReportedConfiguration;
    private int mLastReportedDisplayId;
    boolean mLastReportedMultiWindowMode;
    boolean mLastReportedPictureInPictureMode;
    private boolean mLastSurfaceShowing;
    private long mLastTransactionSequence;
    private final Runnable mLaunchTickRunnable;
    private Letterbox mLetterbox;
    private int mNumDrawnWindows;
    private int mNumInterestingWindows;
    private boolean mOccludesParent;
    private final Runnable mPauseTimeoutRunnable;
    private int mPendingRelaunchCount;
    private PersistableBundle mPersistentState;
    int mRelaunchReason;
    private RemoteAnimationDefinition mRemoteAnimationDefinition;
    private boolean mRemovingFromDisplay;
    private final WindowState.UpdateReportedVisibilityResults mReportedVisibilityResults;
    final RootWindowContainer mRootWindowContainer;
    int mRotationAnimationHint;
    ActivityServiceConnectionsHolder mServiceConnectionsHolder;
    private boolean mSetToSleep;
    boolean mShowForAllUsers;
    private boolean mShowWhenLocked;
    private Rect mSizeCompatBounds;
    private float mSizeCompatScale;
    private int[] mSmallestSizeConfigurations;
    final ActivityStackSupervisor mStackSupervisor;
    StartingData mStartingData;
    int mStartingWindowState;
    private ActivityStack.ActivityState mState;
    private final Runnable mStopTimeoutRunnable;
    int mTargetSdk;
    private boolean mTaskOverlay;
    private final Rect mTmpBounds;
    private final Configuration mTmpConfig;
    private boolean mTurnScreenOn;
    private boolean mUseTransferredAnimation;
    final int mUserId;
    private int[] mVerticalSizeConfigurations;
    private boolean mVisible;
    boolean mVisibleRequested;
    private boolean mVisibleSetFromTransferredStartingWindow;
    boolean mVoiceInteraction;
    private boolean mWillCloseOrEnterPip;
    ArrayList<ReferrerIntent> newIntents;
    boolean noDisplay;
    private CharSequence nonLocalizedLabel;
    boolean nowVisible;
    final String packageName;
    long pauseTime;
    ActivityOptions pendingOptions;
    HashSet<WeakReference<PendingIntentRecord>> pendingResults;
    boolean pendingVoiceInteractionStart;
    PictureInPictureParams pictureInPictureArgs;
    boolean preserveWindowOnDeferredRelaunch;
    final String processName;
    private boolean reportedDrawn;
    boolean reportedVisible;
    final int requestCode;
    ComponentName requestedVrComponent;
    final String resolvedType;
    ActivityRecord resultTo;
    final String resultWho;
    ArrayList<ResultInfo> results;
    ActivityOptions returningOptions;
    final boolean rootVoiceInteraction;
    final String shortComponentName;
    boolean startingDisplayed;
    boolean startingMoved;
    WindowManagerPolicy.StartingSurface startingSurface;
    WindowState startingWindow;
    final boolean stateNotNeeded;
    boolean stopped;
    boolean supportsEnterPipOnTaskSwitch;
    private Task task;
    final String taskAffinity;
    ActivityManager.TaskDescription taskDescription;
    private int theme;
    long topResumedStateLossTime;
    UriPermissionOwner uriPermissions;
    boolean visibleIgnoringKeyguard;
    IVoiceInteractionSession voiceSession;
    private int windowFlags;

    @interface FinishRequest {
    }

    public /* synthetic */ void lambda$new$1$ActivityRecord(final float[] matrix, final float[] translation) {
        this.mWmService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$HCzV5lDTWOurUvy4cOGaHiRsYqY
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0$ActivityRecord(matrix, translation);
            }
        });
    }

    public /* synthetic */ void lambda$new$0$ActivityRecord(float[] matrix, float[] translation) {
        synchronized (this.mWmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (this.mLastAppSaturationInfo == null) {
                    this.mLastAppSaturationInfo = new AppSaturationInfo();
                }
                this.mLastAppSaturationInfo.setSaturation(matrix, translation);
                updateColorTransform();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private static String startingWindowStateToString(int state) {
        if (state == 0) {
            return "STARTING_WINDOW_NOT_SHOWN";
        }
        if (state == 1) {
            return "STARTING_WINDOW_SHOWN";
        }
        if (state == 2) {
            return "STARTING_WINDOW_REMOVED";
        }
        return "unknown state=" + state;
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.WindowContainer
    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        long now = SystemClock.uptimeMillis();
        pw.print(prefix);
        pw.print("packageName=");
        pw.print(this.packageName);
        pw.print(" processName=");
        pw.println(this.processName);
        pw.print(prefix);
        pw.print("launchedFromUid=");
        pw.print(this.launchedFromUid);
        pw.print(" launchedFromPackage=");
        pw.print(this.launchedFromPackage);
        pw.print(" launchedFromFeature=");
        pw.print(this.launchedFromFeatureId);
        pw.print(" userId=");
        pw.println(this.mUserId);
        pw.print(prefix);
        pw.print("app=");
        pw.println(this.app);
        pw.print(prefix);
        pw.println(this.intent.toInsecureString());
        pw.print(prefix);
        pw.print("rootOfTask=");
        pw.print(isRootOfTask());
        pw.print(" task=");
        pw.println(this.task);
        pw.print(prefix);
        pw.print("taskAffinity=");
        pw.println(this.taskAffinity);
        pw.print(prefix);
        pw.print("mActivityComponent=");
        pw.println(this.mActivityComponent.flattenToShortString());
        ActivityInfo activityInfo = this.info;
        if (activityInfo != null && activityInfo.applicationInfo != null) {
            ApplicationInfo appInfo = this.info.applicationInfo;
            pw.print(prefix);
            pw.print("baseDir=");
            pw.println(appInfo.sourceDir);
            if (!Objects.equals(appInfo.sourceDir, appInfo.publicSourceDir)) {
                pw.print(prefix);
                pw.print("resDir=");
                pw.println(appInfo.publicSourceDir);
            }
            pw.print(prefix);
            pw.print("dataDir=");
            pw.println(appInfo.dataDir);
            if (appInfo.splitSourceDirs != null) {
                pw.print(prefix);
                pw.print("splitDir=");
                pw.println(Arrays.toString(appInfo.splitSourceDirs));
            }
        }
        pw.print(prefix);
        pw.print("stateNotNeeded=");
        pw.print(this.stateNotNeeded);
        pw.print(" componentSpecified=");
        pw.print(this.componentSpecified);
        pw.print(" mActivityType=");
        pw.println(WindowConfiguration.activityTypeToString(getActivityType()));
        if (this.rootVoiceInteraction) {
            pw.print(prefix);
            pw.print("rootVoiceInteraction=");
            pw.println(this.rootVoiceInteraction);
        }
        pw.print(prefix);
        pw.print("compat=");
        pw.print(this.compat);
        pw.print(" labelRes=0x");
        pw.print(Integer.toHexString(this.labelRes));
        pw.print(" icon=0x");
        pw.print(Integer.toHexString(this.icon));
        pw.print(" theme=0x");
        pw.println(Integer.toHexString(this.theme));
        pw.println(prefix + "mLastReportedConfigurations:");
        this.mLastReportedConfiguration.dump(pw, prefix + "  ");
        pw.print(prefix);
        pw.print("CurrentConfiguration=");
        pw.println(getConfiguration());
        if (!getRequestedOverrideConfiguration().equals(Configuration.EMPTY)) {
            pw.println(prefix + "RequestedOverrideConfiguration=" + getRequestedOverrideConfiguration());
        }
        if (!getResolvedOverrideConfiguration().equals(getRequestedOverrideConfiguration())) {
            pw.println(prefix + "ResolvedOverrideConfiguration=" + getResolvedOverrideConfiguration());
        }
        if (!matchParentBounds()) {
            pw.println(prefix + "bounds=" + getBounds());
        }
        if (this.resultTo != null || this.resultWho != null) {
            pw.print(prefix);
            pw.print("resultTo=");
            pw.print(this.resultTo);
            pw.print(" resultWho=");
            pw.print(this.resultWho);
            pw.print(" resultCode=");
            pw.println(this.requestCode);
        }
        ActivityManager.TaskDescription taskDescription = this.taskDescription;
        if (taskDescription != null) {
            String iconFilename = taskDescription.getIconFilename();
            if (iconFilename != null || this.taskDescription.getLabel() != null || this.taskDescription.getPrimaryColor() != 0) {
                pw.print(prefix);
                pw.print("taskDescription:");
                pw.print(" label=\"");
                pw.print(this.taskDescription.getLabel());
                pw.print("\"");
                pw.print(" icon=");
                pw.print(this.taskDescription.getInMemoryIcon() != null ? this.taskDescription.getInMemoryIcon().getByteCount() + " bytes" : "null");
                pw.print(" iconResource=");
                pw.print(this.taskDescription.getIconResourcePackage());
                pw.print(SliceClientPermissions.SliceAuthority.DELIMITER);
                pw.print(this.taskDescription.getIconResource());
                pw.print(" iconFilename=");
                pw.print(this.taskDescription.getIconFilename());
                pw.print(" primaryColor=");
                pw.println(Integer.toHexString(this.taskDescription.getPrimaryColor()));
                pw.print(prefix);
                pw.print("  backgroundColor=");
                pw.print(Integer.toHexString(this.taskDescription.getBackgroundColor()));
                pw.print(" statusBarColor=");
                pw.print(Integer.toHexString(this.taskDescription.getStatusBarColor()));
                pw.print(" navigationBarColor=");
                pw.println(Integer.toHexString(this.taskDescription.getNavigationBarColor()));
            }
        }
        if (this.results != null) {
            pw.print(prefix);
            pw.print("results=");
            pw.println(this.results);
        }
        HashSet<WeakReference<PendingIntentRecord>> hashSet = this.pendingResults;
        if (hashSet != null && hashSet.size() > 0) {
            pw.print(prefix);
            pw.println("Pending Results:");
            Iterator<WeakReference<PendingIntentRecord>> it = this.pendingResults.iterator();
            while (it.hasNext()) {
                WeakReference<PendingIntentRecord> wpir = it.next();
                PendingIntentRecord pir = wpir != null ? wpir.get() : null;
                pw.print(prefix);
                pw.print("  - ");
                if (pir == null) {
                    pw.println("null");
                } else {
                    pw.println(pir);
                    pir.dump(pw, prefix + "    ");
                }
            }
        }
        ArrayList<ReferrerIntent> arrayList = this.newIntents;
        if (arrayList != null && arrayList.size() > 0) {
            pw.print(prefix);
            pw.println("Pending New Intents:");
            for (int i = 0; i < this.newIntents.size(); i++) {
                Intent intent = this.newIntents.get(i);
                pw.print(prefix);
                pw.print("  - ");
                if (intent == null) {
                    pw.println("null");
                } else {
                    pw.println(intent.toShortString(false, true, false, false));
                }
            }
        }
        if (this.pendingOptions != null) {
            pw.print(prefix);
            pw.print("pendingOptions=");
            pw.println(this.pendingOptions);
        }
        AppTimeTracker appTimeTracker = this.appTimeTracker;
        if (appTimeTracker != null) {
            appTimeTracker.dumpWithHeader(pw, prefix, false);
        }
        UriPermissionOwner uriPermissionOwner = this.uriPermissions;
        if (uriPermissionOwner != null) {
            uriPermissionOwner.dump(pw, prefix);
        }
        pw.print(prefix);
        pw.print("launchFailed=");
        pw.print(this.launchFailed);
        pw.print(" launchCount=");
        pw.print(this.launchCount);
        pw.print(" lastLaunchTime=");
        long j = this.lastLaunchTime;
        if (j == 0) {
            pw.print("0");
        } else {
            TimeUtils.formatDuration(j, now, pw);
        }
        pw.println();
        pw.print(prefix);
        pw.print("mHaveState=");
        pw.print(this.mHaveState);
        pw.print(" mIcicle=");
        pw.println(this.mIcicle);
        pw.print(prefix);
        pw.print("state=");
        pw.print(this.mState);
        pw.print(" stopped=");
        pw.print(this.stopped);
        pw.print(" delayedResume=");
        pw.print(this.delayedResume);
        pw.print(" finishing=");
        pw.println(this.finishing);
        pw.print(prefix);
        pw.print("keysPaused=");
        pw.print(this.keysPaused);
        pw.print(" inHistory=");
        pw.print(this.inHistory);
        pw.print(" setToSleep=");
        pw.print(this.mSetToSleep);
        pw.print(" idle=");
        pw.print(this.idle);
        pw.print(" mStartingWindowState=");
        pw.println(startingWindowStateToString(this.mStartingWindowState));
        pw.print(prefix);
        pw.print("occludesParent=");
        pw.print(occludesParent());
        pw.print(" noDisplay=");
        pw.print(this.noDisplay);
        pw.print(" immersive=");
        pw.print(this.immersive);
        pw.print(" launchMode=");
        pw.println(this.launchMode);
        pw.print(prefix);
        pw.print("frozenBeforeDestroy=");
        pw.print(this.frozenBeforeDestroy);
        pw.print(" forceNewConfig=");
        pw.println(this.forceNewConfig);
        pw.print(prefix);
        pw.print("mActivityType=");
        pw.println(WindowConfiguration.activityTypeToString(getActivityType()));
        if (this.requestedVrComponent != null) {
            pw.print(prefix);
            pw.print("requestedVrComponent=");
            pw.println(this.requestedVrComponent);
        }
        super.dump(pw, prefix, dumpAll);
        if (this.mVoiceInteraction) {
            pw.println(prefix + "mVoiceInteraction=true");
        }
        pw.print(prefix);
        pw.print("mOccludesParent=");
        pw.print(this.mOccludesParent);
        pw.print(" mOrientation=");
        pw.println(this.mOrientation);
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("mVisibleRequested=");
        sb.append(this.mVisibleRequested);
        sb.append(" mVisible=");
        sb.append(this.mVisible);
        sb.append(" mClientVisible=");
        sb.append(this.mClientVisible);
        sb.append(this.mDeferHidingClient ? " mDeferHidingClient=" + this.mDeferHidingClient : "");
        sb.append(" reportedDrawn=");
        sb.append(this.reportedDrawn);
        sb.append(" reportedVisible=");
        sb.append(this.reportedVisible);
        pw.println(sb.toString());
        if (this.paused) {
            pw.print(prefix);
            pw.print("paused=");
            pw.println(this.paused);
        }
        if (this.mAppStopped) {
            pw.print(prefix);
            pw.print("mAppStopped=");
            pw.println(this.mAppStopped);
        }
        if (this.mNumInterestingWindows != 0 || this.mNumDrawnWindows != 0 || this.allDrawn || this.mLastAllDrawn) {
            pw.print(prefix);
            pw.print("mNumInterestingWindows=");
            pw.print(this.mNumInterestingWindows);
            pw.print(" mNumDrawnWindows=");
            pw.print(this.mNumDrawnWindows);
            pw.print(" allDrawn=");
            pw.print(this.allDrawn);
            pw.print(" lastAllDrawn=");
            pw.print(this.mLastAllDrawn);
            pw.println(")");
        }
        if (this.mStartingData != null || this.firstWindowDrawn || this.mIsExiting) {
            pw.print(prefix);
            pw.print("startingData=");
            pw.print(this.mStartingData);
            pw.print(" firstWindowDrawn=");
            pw.print(this.firstWindowDrawn);
            pw.print(" mIsExiting=");
            pw.println(this.mIsExiting);
        }
        if (this.startingWindow != null || this.startingSurface != null || this.startingDisplayed || this.startingMoved || this.mVisibleSetFromTransferredStartingWindow) {
            pw.print(prefix);
            pw.print("startingWindow=");
            pw.print(this.startingWindow);
            pw.print(" startingSurface=");
            pw.print(this.startingSurface);
            pw.print(" startingDisplayed=");
            pw.print(this.startingDisplayed);
            pw.print(" startingMoved=");
            pw.print(this.startingMoved);
            pw.println(" mHiddenSetFromTransferredStartingWindow=" + this.mVisibleSetFromTransferredStartingWindow);
        }
        if (!this.mFrozenBounds.isEmpty()) {
            pw.print(prefix);
            pw.print("mFrozenBounds=");
            pw.println(this.mFrozenBounds);
            pw.print(prefix);
            pw.print("mFrozenMergedConfig=");
            pw.println(this.mFrozenMergedConfig);
        }
        if (this.mPendingRelaunchCount != 0) {
            pw.print(prefix);
            pw.print("mPendingRelaunchCount=");
            pw.println(this.mPendingRelaunchCount);
        }
        if (this.mSizeCompatScale != 1.0f || this.mSizeCompatBounds != null) {
            pw.println(prefix + "mSizeCompatScale=" + this.mSizeCompatScale + " mSizeCompatBounds=" + this.mSizeCompatBounds);
        }
        if (this.mRemovingFromDisplay) {
            pw.println(prefix + "mRemovingFromDisplay=" + this.mRemovingFromDisplay);
        }
        if (this.lastVisibleTime != 0 || this.nowVisible) {
            pw.print(prefix);
            pw.print("nowVisible=");
            pw.print(this.nowVisible);
            pw.print(" lastVisibleTime=");
            long j2 = this.lastVisibleTime;
            if (j2 == 0) {
                pw.print("0");
            } else {
                TimeUtils.formatDuration(j2, now, pw);
            }
            pw.println();
        }
        if (this.mDeferHidingClient) {
            pw.println(prefix + "mDeferHidingClient=" + this.mDeferHidingClient);
        }
        if (this.deferRelaunchUntilPaused || this.configChangeFlags != 0) {
            pw.print(prefix);
            pw.print("deferRelaunchUntilPaused=");
            pw.print(this.deferRelaunchUntilPaused);
            pw.print(" configChangeFlags=");
            pw.println(Integer.toHexString(this.configChangeFlags));
        }
        if (this.mServiceConnectionsHolder != null) {
            pw.print(prefix);
            pw.print("connections=");
            pw.println(this.mServiceConnectionsHolder);
        }
        if (this.info != null) {
            pw.println(prefix + "resizeMode=" + ActivityInfo.resizeModeToString(this.info.resizeMode));
            pw.println(prefix + "mLastReportedMultiWindowMode=" + this.mLastReportedMultiWindowMode + " mLastReportedPictureInPictureMode=" + this.mLastReportedPictureInPictureMode);
            if (this.info.supportsPictureInPicture()) {
                pw.println(prefix + "supportsPictureInPicture=" + this.info.supportsPictureInPicture());
                pw.println(prefix + "supportsEnterPipOnTaskSwitch: " + this.supportsEnterPipOnTaskSwitch);
            }
            if (this.info.maxAspectRatio != 0.0f) {
                pw.println(prefix + "maxAspectRatio=" + this.info.maxAspectRatio);
            }
            if (this.info.minAspectRatio != 0.0f) {
                pw.println(prefix + "minAspectRatio=" + this.info.minAspectRatio);
            }
            if (this.info.supportsSizeChanges) {
                pw.println(prefix + "supportsSizeChanges=true");
            }
        }
    }

    void setAppTimeTracker(AppTimeTracker att) {
        this.appTimeTracker = att;
    }

    void setSavedState(Bundle savedState) {
        this.mIcicle = savedState;
        this.mHaveState = savedState != null;
    }

    Bundle getSavedState() {
        return this.mIcicle;
    }

    boolean hasSavedState() {
        return this.mHaveState;
    }

    PersistableBundle getPersistentSavedState() {
        return this.mPersistentState;
    }

    void updateApplicationInfo(ApplicationInfo aInfo) {
        this.info.applicationInfo = aInfo;
    }

    private boolean crossesHorizontalSizeThreshold(int firstDp, int secondDp) {
        return crossesSizeThreshold(this.mHorizontalSizeConfigurations, firstDp, secondDp);
    }

    private boolean crossesVerticalSizeThreshold(int firstDp, int secondDp) {
        return crossesSizeThreshold(this.mVerticalSizeConfigurations, firstDp, secondDp);
    }

    private boolean crossesSmallestSizeThreshold(int firstDp, int secondDp) {
        return crossesSizeThreshold(this.mSmallestSizeConfigurations, firstDp, secondDp);
    }

    private static boolean crossesSizeThreshold(int[] thresholds, int firstDp, int secondDp) {
        if (thresholds == null) {
            return false;
        }
        for (int i = thresholds.length - 1; i >= 0; i--) {
            int threshold = thresholds[i];
            if ((firstDp < threshold && secondDp >= threshold) || (firstDp >= threshold && secondDp < threshold)) {
                return true;
            }
        }
        return false;
    }

    void setSizeConfigurations(int[] horizontalSizeConfiguration, int[] verticalSizeConfigurations, int[] smallestSizeConfigurations) {
        this.mHorizontalSizeConfigurations = horizontalSizeConfiguration;
        this.mVerticalSizeConfigurations = verticalSizeConfigurations;
        this.mSmallestSizeConfigurations = smallestSizeConfigurations;
    }

    private void scheduleActivityMovedToDisplay(int displayId, Configuration config) {
        if (!attachedToProcess()) {
            Slog.w("ActivityTaskManager", "Can't report activity moved to display - client not running, activityRecord=" + this + ", displayId=" + displayId);
            return;
        }
        try {
            Slog.v("ActivityTaskManager", "Reporting activity moved to display, activityRecord=" + this + ", displayId=" + displayId + ", config=" + config);
            this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, MoveToDisplayItem.obtain(displayId, config));
        } catch (RemoteException e) {
        }
    }

    private void scheduleConfigurationChanged(Configuration config) {
        if (!attachedToProcess()) {
            return;
        }
        try {
            this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, ActivityConfigurationChangeItem.obtain(config));
        } catch (RemoteException e) {
        }
    }

    boolean scheduleTopResumedActivityChanged(boolean onTop) {
        if (!attachedToProcess()) {
            Slog.w("ActivityTaskManager", "Can't report activity position update - client not running, activityRecord=" + this);
            return false;
        }
        try {
            Slog.v("ActivityTaskManager", "Sending position change to " + this + ", onTop: " + onTop);
            this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, TopResumedActivityChangeItem.obtain(onTop));
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }

    void updateMultiWindowMode() {
        boolean inMultiWindowMode;
        Task task = this.task;
        if (task == null || task.getStack() == null || !attachedToProcess() || (inMultiWindowMode = inMultiWindowMode()) == this.mLastReportedMultiWindowMode) {
            return;
        }
        if (!inMultiWindowMode && this.mLastReportedPictureInPictureMode) {
            updatePictureInPictureMode(null, false);
            return;
        }
        this.mLastReportedMultiWindowMode = inMultiWindowMode;
        computeConfigurationAfterMultiWindowModeChange();
        ActivityStack.ActivityState state = getState();
        if (state != ActivityStack.ActivityState.STOPPED && state != ActivityStack.ActivityState.STOPPING) {
            ensureActivityConfiguration(0, true, true);
        }
    }

    void updatePictureInPictureMode(Rect targetStackBounds, boolean forceUpdate) {
        Task task = this.task;
        if (task == null || task.getStack() == null || !attachedToProcess()) {
            return;
        }
        boolean inPictureInPictureMode = inPinnedWindowingMode() && targetStackBounds != null;
        if (inPictureInPictureMode != this.mLastReportedPictureInPictureMode || forceUpdate) {
            this.mLastReportedPictureInPictureMode = inPictureInPictureMode;
            this.mLastReportedMultiWindowMode = inPictureInPictureMode;
            if (targetStackBounds != null && !targetStackBounds.isEmpty()) {
                computeConfigurationAfterMultiWindowModeChange();
            }
            ensureActivityConfiguration(0, true, true);
            if (inPictureInPictureMode && findMainWindow() == null) {
                EventLog.writeEvent(1397638484, "265293293", -1, "");
                removeImmediately();
            }
        }
    }

    private void computeConfigurationAfterMultiWindowModeChange() {
        Configuration newConfig = new Configuration();
        newConfig.setTo(this.task.getRequestedOverrideConfiguration());
        Rect outBounds = newConfig.windowConfiguration.getBounds();
        Configuration parentConfig = this.task.getParent().getConfiguration();
        this.task.adjustForMinimalTaskDimensions(outBounds, outBounds, parentConfig);
        this.task.computeConfigResourceOverrides(newConfig, parentConfig);
    }

    Task getTask() {
        return this.task;
    }

    void setTaskForReuse(Task task) {
        this.task = task;
    }

    ActivityStack getStack() {
        Task task = this.task;
        if (task != null) {
            return task.getStack();
        }
        return null;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        AnimatingActivityRegistry animatingActivityRegistry = null;
        Task oldTask = oldParent != null ? (Task) oldParent : null;
        Task newTask = newParent != null ? (Task) newParent : null;
        this.task = newTask;
        super.onParentChanged(newParent, oldParent);
        if (isPersistable()) {
            if (oldTask != null) {
                this.mAtmService.notifyTaskPersisterLocked(oldTask, false);
            }
            if (newTask != null) {
                this.mAtmService.notifyTaskPersisterLocked(newTask, false);
            }
        }
        if (oldParent == null && newParent != null) {
            this.mVoiceInteraction = newTask.voiceSession != null;
            this.mInputDispatchingTimeoutNanos = ActivityTaskManagerService.getInputDispatchingTimeoutLocked(this) * 1000000;
            newTask.updateOverrideConfigurationFromLaunchBounds();
            updateSizeCompatMode();
            this.mLastReportedMultiWindowMode = inMultiWindowMode();
            this.mLastReportedPictureInPictureMode = inPinnedWindowingMode();
        }
        if (this.task == null) {
            if (getDisplayContent() != null) {
                getDisplayContent().mClosingApps.remove(this);
            }
        } else {
            Task task = this.mLastParent;
            if (task != null && task.getStack() != null) {
                this.task.getStack().mExitingActivities.remove(this);
            }
        }
        ActivityStack stack = getStack();
        AnimatingActivityRegistry animatingActivityRegistry2 = this.mAnimatingActivityRegistry;
        if (animatingActivityRegistry2 != null) {
            animatingActivityRegistry2.notifyFinished(this);
        }
        if (stack != null) {
            animatingActivityRegistry = stack.getAnimatingActivityRegistry();
        }
        this.mAnimatingActivityRegistry = animatingActivityRegistry;
        this.mLastParent = this.task;
        updateColorTransform();
        if (oldTask != null) {
            oldTask.cleanUpActivityReferences(this);
        }
        if (newTask != null && isState(ActivityStack.ActivityState.RESUMED)) {
            newTask.setResumedActivity(this, "onParentChanged");
        }
        if (stack != null && stack.topRunningActivity() == this && this.firstWindowDrawn) {
            stack.setHasBeenVisible(true);
        }
    }

    private void updateColorTransform() {
        if (this.mSurfaceControl != null && this.mLastAppSaturationInfo != null) {
            getPendingTransaction().setColorTransform(this.mSurfaceControl, this.mLastAppSaturationInfo.mMatrix, this.mLastAppSaturationInfo.mTranslation);
            this.mWmService.scheduleAnimationLocked();
        }
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.WindowContainer
    void onDisplayChanged(DisplayContent dc) {
        DisplayContent prevDc = this.mDisplayContent;
        super.onDisplayChanged(dc);
        if (prevDc == null || prevDc == this.mDisplayContent) {
            return;
        }
        if (prevDc.mOpeningApps.remove(this)) {
            this.mDisplayContent.mOpeningApps.add(this);
            this.mDisplayContent.prepareAppTransition(prevDc.mAppTransition.getAppTransition(), true);
            this.mDisplayContent.executeAppTransition();
        }
        prevDc.mClosingApps.remove(this);
        if (prevDc.mFocusedApp == this) {
            prevDc.setFocusedApp(null);
            if (dc.getTopMostActivity() == this) {
                dc.setFocusedApp(this);
            }
        }
        Letterbox letterbox = this.mLetterbox;
        if (letterbox != null) {
            letterbox.onMovedToDisplay(this.mDisplayContent.getDisplayId());
        }
    }

    void layoutLetterbox(WindowState winHint) {
        Rect spaceToFill;
        WindowState w = findMainWindow();
        if (w != null) {
            if (winHint != null && w != winHint) {
                return;
            }
            boolean needsLetterbox = false;
            boolean surfaceReady = w.isDrawnLw() || w.mWinAnimator.mSurfaceDestroyDeferred || w.isDragResizeChanged();
            if (surfaceReady && w.isLetterboxedAppWindow() && fillsParent()) {
                needsLetterbox = true;
            }
            if (needsLetterbox) {
                if (this.mLetterbox == null) {
                    Letterbox letterbox = new Letterbox(new Supplier() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$lyqdJlA4QOn1CXj7zglxNJxDy9o
                        @Override // java.util.function.Supplier
                        public final Object get() {
                            return this.f$0.lambda$layoutLetterbox$2$ActivityRecord();
                        }
                    }, this.mWmService.mTransactionFactory);
                    this.mLetterbox = letterbox;
                    letterbox.attachInput(w);
                }
                getPosition(this.mTmpPoint);
                Rect transformedBounds = getFixedRotationTransformDisplayBounds();
                if (transformedBounds != null) {
                    spaceToFill = transformedBounds;
                } else if (inMultiWindowMode()) {
                    spaceToFill = this.task.getBounds();
                } else {
                    spaceToFill = getRootTask().getParent().getBounds();
                }
                this.mLetterbox.layout(spaceToFill, w.getFrameLw(), this.mTmpPoint);
                return;
            }
            Letterbox letterbox2 = this.mLetterbox;
            if (letterbox2 != null) {
                letterbox2.hide();
            }
        }
    }

    public /* synthetic */ SurfaceControl.Builder lambda$layoutLetterbox$2$ActivityRecord() {
        return makeChildSurface(null);
    }

    void updateLetterboxSurface(WindowState winHint) {
        WindowState w = findMainWindow();
        if (w != winHint && winHint != null && w != null) {
            return;
        }
        layoutLetterbox(winHint);
        Letterbox letterbox = this.mLetterbox;
        if (letterbox != null && letterbox.needsApplySurfaceChanges()) {
            this.mLetterbox.applySurfaceChanges(getPendingTransaction());
        }
    }

    Rect getLetterboxInsets() {
        Letterbox letterbox = this.mLetterbox;
        if (letterbox != null) {
            return letterbox.getInsets();
        }
        return new Rect();
    }

    void getLetterboxInnerBounds(Rect outBounds) {
        Letterbox letterbox = this.mLetterbox;
        if (letterbox != null) {
            outBounds.set(letterbox.getInnerFrame());
        } else {
            outBounds.setEmpty();
        }
    }

    boolean letterboxNotIntersectsOrFullyContains(Rect rect) {
        Letterbox letterbox = this.mLetterbox;
        return letterbox == null || letterbox.notIntersectsOrFullyContains(rect);
    }

    boolean isLetterboxOverlappingWith(Rect rect) {
        Letterbox letterbox = this.mLetterbox;
        return letterbox != null && letterbox.isOverlappingWith(rect);
    }

    static class Token extends IApplicationToken.Stub {
        private final String name;
        private final String tokenString = "Token{" + Integer.toHexString(System.identityHashCode(this)) + "}";
        private WeakReference<ActivityRecord> weakActivity;

        Token(Intent intent) {
            this.name = intent.getComponent().flattenToShortString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void attach(ActivityRecord activity) {
            if (this.weakActivity != null) {
                throw new IllegalStateException("Already attached..." + this);
            }
            this.weakActivity = new WeakReference<>(activity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ActivityRecord tokenToActivityRecordLocked(Token token) {
            ActivityRecord r;
            if (token == null || (r = token.weakActivity.get()) == null || r.getRootTask() == null) {
                return null;
            }
            return r;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Token{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(' ');
            WeakReference<ActivityRecord> weakReference = this.weakActivity;
            if (weakReference != null) {
                sb.append(weakReference.get());
            }
            sb.append('}');
            return sb.toString();
        }

        public String getName() {
            return this.name;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static ActivityRecord forTokenLocked(IBinder iBinder) {
        try {
            return Token.tokenToActivityRecordLocked((Token) iBinder);
        } catch (ClassCastException e) {
            Slog.w("ActivityTaskManager", "Bad activity token: " + iBinder, e);
            return null;
        }
    }

    static boolean isResolverActivity(String className) {
        return ResolverActivity.class.getName().equals(className);
    }

    boolean isResolverOrDelegateActivity() {
        return isResolverActivity(this.mActivityComponent.getClassName()) || Objects.equals(this.mActivityComponent, this.mAtmService.mStackSupervisor.getSystemChooserActivity());
    }

    boolean isResolverOrChildActivity() {
        if (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(this.packageName)) {
            return false;
        }
        try {
            return ResolverActivity.class.isAssignableFrom(Object.class.getClassLoader().loadClass(this.mActivityComponent.getClassName()));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    ActivityRecord(ActivityTaskManagerService _service, WindowProcessController _caller, int _launchedFromPid, int _launchedFromUid, String _launchedFromPackage, String _launchedFromFeature, Intent _intent, String _resolvedType, ActivityInfo aInfo, Configuration _configuration, ActivityRecord _resultTo, String _resultWho, int _reqCode, boolean _componentSpecified, boolean _rootVoiceInteraction, ActivityStackSupervisor supervisor, ActivityOptions options, ActivityRecord sourceRecord) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int realTheme;
        super(_service.mWindowManager, new Token(_intent).asBinder(), 2, true, null, false);
        this.mHandoverLaunchDisplayId = -1;
        this.createTime = System.currentTimeMillis();
        this.mHaveState = true;
        this.pictureInPictureArgs = new PictureInPictureParams.Builder().build();
        this.mStartingWindowState = 0;
        this.mTaskOverlay = false;
        this.mRelaunchReason = 0;
        this.mRemovingFromDisplay = false;
        this.mReportedVisibilityResults = new WindowState.UpdateReportedVisibilityResults();
        this.mCurrentLaunchCanTurnScreenOn = true;
        this.mLastSurfaceShowing = true;
        this.mLastTransactionSequence = Long.MIN_VALUE;
        this.mSizeCompatScale = 1.0f;
        this.mRotationAnimationHint = -1;
        this.mFrozenBounds = new ArrayDeque<>();
        this.mFrozenMergedConfig = new ArrayDeque<>();
        this.mColorTransformController = new ColorDisplayService.ColorTransformController() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$YSVwd546vKWMiMYy7MFzg1qRiio
            @Override // com.android.server.display.color.ColorDisplayService.ColorTransformController
            public final void applyAppSaturation(float[] fArr, float[] fArr2) {
                this.f$0.lambda$new$1$ActivityRecord(fArr, fArr2);
            }
        };
        this.mTmpConfig = new Configuration();
        this.mTmpBounds = new Rect();
        this.assistToken = new Binder();
        this.mPauseTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.ActivityRecord.1
            @Override // java.lang.Runnable
            public void run() {
                Slog.w("ActivityTaskManager", "Activity pause timeout for " + ActivityRecord.this);
                synchronized (ActivityRecord.this.mAtmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (ActivityRecord.this.hasProcess()) {
                            ActivityRecord.this.mAtmService.logAppTooSlow(ActivityRecord.this.app, ActivityRecord.this.pauseTime, "pausing " + ActivityRecord.this);
                        }
                        ActivityRecord.this.activityPaused(true);
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        };
        this.mLaunchTickRunnable = new Runnable() { // from class: com.android.server.wm.ActivityRecord.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ActivityRecord.this.mAtmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        if (ActivityRecord.this.continueLaunchTicking()) {
                            ActivityRecord.this.mAtmService.logAppTooSlow(ActivityRecord.this.app, ActivityRecord.this.launchTickTime, "launching " + ActivityRecord.this);
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        };
        this.mDestroyTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.ActivityRecord.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ActivityRecord.this.mAtmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        Slog.w("ActivityTaskManager", "Activity destroy timeout for " + ActivityRecord.this);
                        ActivityRecord.this.destroyed("destroyTimeout");
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        };
        this.mStopTimeoutRunnable = new Runnable() { // from class: com.android.server.wm.ActivityRecord.4
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ActivityRecord.this.mAtmService.mGlobalLock) {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        Slog.w("ActivityTaskManager", "Activity stop timeout for " + ActivityRecord.this);
                        if (ActivityRecord.this.isInHistory()) {
                            ActivityRecord.this.activityStopped(null, null, null);
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            }
        };
        this.mAddStartingWindow = new AddStartingWindow();
        this.mAtmService = _service;
        this.appToken = (Token) this.token;
        this.info = aInfo;
        this.mUserId = UserHandle.getUserId(aInfo.applicationInfo.uid);
        this.packageName = this.info.applicationInfo.packageName;
        this.intent = _intent;
        if (this.info.targetActivity == null || (this.info.targetActivity.equals(this.intent.getComponent().getClassName()) && (this.info.launchMode == 0 || this.info.launchMode == 1))) {
            this.mActivityComponent = this.intent.getComponent();
        } else {
            this.mActivityComponent = new ComponentName(this.info.packageName, this.info.targetActivity);
        }
        this.mTargetSdk = this.info.applicationInfo.targetSdkVersion;
        if ((this.info.flags & 1024) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.mShowForAllUsers = z;
        setOrientation(this.info.screenOrientation);
        this.mRotationAnimationHint = this.info.rotationAnimation;
        if ((aInfo.flags & 8388608) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mShowWhenLocked = z2;
        if ((aInfo.privateFlags & 1) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        this.mInheritShownWhenLocked = z3;
        if ((aInfo.flags & 16777216) != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.mTurnScreenOn = z4;
        int realTheme2 = this.info.getThemeResource();
        if (realTheme2 != 0) {
            realTheme = realTheme2;
        } else {
            realTheme = aInfo.applicationInfo.targetSdkVersion < 11 ? R.style.Theme : R.style.Theme.Holo;
        }
        AttributeCache.Entry ent = AttributeCache.instance().get(this.packageName, realTheme, com.android.internal.R.styleable.Window, this.mUserId);
        if (ent != null) {
            this.mOccludesParent = !ActivityInfo.isTranslucentOrFloating(ent.array);
            this.hasWallpaper = ent.array.getBoolean(14, false);
            this.noDisplay = ent.array.getBoolean(10, false);
        } else {
            this.hasWallpaper = false;
            this.noDisplay = false;
        }
        if (options != null) {
            this.mLaunchTaskBehind = options.getLaunchTaskBehind();
            int rotationAnimation = options.getRotationAnimationHint();
            if (rotationAnimation >= 0) {
                this.mRotationAnimationHint = rotationAnimation;
            }
        }
        setVisible(false);
        this.mVisibleRequested = false;
        ColorDisplayService.ColorDisplayServiceInternal cds = (ColorDisplayService.ColorDisplayServiceInternal) LocalServices.getService(ColorDisplayService.ColorDisplayServiceInternal.class);
        cds.attachColorTransformController(this.packageName, this.mUserId, new WeakReference<>(this.mColorTransformController));
        this.appToken.attach(this);
        this.mRootWindowContainer = _service.mRootWindowContainer;
        this.launchedFromPid = _launchedFromPid;
        this.launchedFromUid = _launchedFromUid;
        this.launchedFromPackage = _launchedFromPackage;
        this.launchedFromFeatureId = _launchedFromFeature;
        this.shortComponentName = _intent.getComponent().flattenToShortString();
        this.resolvedType = _resolvedType;
        this.componentSpecified = _componentSpecified;
        this.rootVoiceInteraction = _rootVoiceInteraction;
        this.mLastReportedConfiguration = new MergedConfiguration(_configuration);
        this.resultTo = _resultTo;
        this.resultWho = _resultWho;
        this.requestCode = _reqCode;
        setState(ActivityStack.ActivityState.INITIALIZING, "ActivityRecord ctor");
        this.launchFailed = false;
        this.stopped = false;
        this.delayedResume = false;
        this.finishing = false;
        this.deferRelaunchUntilPaused = false;
        this.keysPaused = false;
        this.inHistory = false;
        this.nowVisible = false;
        this.mDrawn = false;
        this.mClientVisible = true;
        this.idle = false;
        this.hasBeenLaunched = false;
        this.mStackSupervisor = supervisor;
        ActivityInfo activityInfo = this.info;
        activityInfo.taskAffinity = getTaskAffinityWithUid(activityInfo.taskAffinity, this.info.applicationInfo.uid);
        this.taskAffinity = this.info.taskAffinity;
        String uid = Integer.toString(this.info.applicationInfo.uid);
        if (this.info.windowLayout != null && this.info.windowLayout.windowLayoutAffinity != null && !this.info.windowLayout.windowLayoutAffinity.startsWith(uid)) {
            this.info.windowLayout.windowLayoutAffinity = uid + ":" + this.info.windowLayout.windowLayoutAffinity;
        }
        this.stateNotNeeded = (aInfo.flags & 16) != 0;
        this.nonLocalizedLabel = aInfo.nonLocalizedLabel;
        int i = aInfo.labelRes;
        this.labelRes = i;
        if (this.nonLocalizedLabel == null && i == 0) {
            ApplicationInfo app = aInfo.applicationInfo;
            this.nonLocalizedLabel = app.nonLocalizedLabel;
            this.labelRes = app.labelRes;
        }
        this.icon = aInfo.getIconResource();
        this.logo = aInfo.getLogoResource();
        this.theme = aInfo.getThemeResource();
        if ((aInfo.flags & 512) != 0) {
            this.windowFlags |= 16777216;
        }
        if ((aInfo.flags & 1) == 0 || _caller == null || (aInfo.applicationInfo.uid != 1000 && aInfo.applicationInfo.uid != _caller.mInfo.uid)) {
            this.processName = aInfo.processName;
        } else {
            this.processName = _caller.mName;
        }
        if ((aInfo.flags & 32) != 0) {
            this.intent.addFlags(8388608);
        }
        this.launchMode = aInfo.launchMode;
        setActivityType(_componentSpecified, _launchedFromUid, _intent, options, sourceRecord);
        this.immersive = (aInfo.flags & 2048) != 0;
        this.requestedVrComponent = aInfo.requestedVrComponent == null ? null : ComponentName.unflattenFromString(aInfo.requestedVrComponent);
        this.lockTaskLaunchMode = getLockTaskLaunchMode(aInfo, options);
        if (options != null) {
            this.pendingOptions = options;
            PendingIntent usageReport = options.getUsageTimeReport();
            if (usageReport != null) {
                this.appTimeTracker = new AppTimeTracker(usageReport);
            }
            WindowContainerToken daToken = options.getLaunchTaskDisplayArea();
            this.mHandoverTaskDisplayArea = daToken != null ? (TaskDisplayArea) WindowContainer.fromBinder(daToken.asBinder()) : null;
            this.mHandoverLaunchDisplayId = options.getLaunchDisplayId();
        }
    }

    static String getTaskAffinityWithUid(String affinity, int uid) {
        String uidStr = Integer.toString(uid);
        if (affinity != null && !affinity.startsWith(uidStr)) {
            return uidStr + ":" + affinity;
        }
        return affinity;
    }

    static int getLockTaskLaunchMode(ActivityInfo aInfo, ActivityOptions options) {
        int lockTaskLaunchMode = aInfo.lockTaskLaunchMode;
        if (!aInfo.applicationInfo.isPrivilegedApp() && (lockTaskLaunchMode == 2 || lockTaskLaunchMode == 1)) {
            lockTaskLaunchMode = 0;
        }
        if (options != null) {
            boolean useLockTask = options.getLockTaskMode();
            if (useLockTask && lockTaskLaunchMode == 0) {
                return 3;
            }
            return lockTaskLaunchMode;
        }
        return lockTaskLaunchMode;
    }

    InputApplicationHandle getInputApplicationHandle(boolean update) {
        if (this.mInputApplicationHandle == null) {
            this.mInputApplicationHandle = new InputApplicationHandle(this.appToken, toString(), this.mInputDispatchingTimeoutNanos);
        } else if (update) {
            String name = toString();
            if (this.mInputDispatchingTimeoutNanos != this.mInputApplicationHandle.dispatchingTimeoutNanos || !name.equals(this.mInputApplicationHandle.name)) {
                this.mInputApplicationHandle = new InputApplicationHandle(this.appToken, name, this.mInputDispatchingTimeoutNanos);
            }
        }
        return this.mInputApplicationHandle;
    }

    @Override // com.android.server.wm.WindowContainer
    ActivityRecord asActivityRecord() {
        return this;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean hasActivity() {
        return true;
    }

    void setProcess(WindowProcessController proc) {
        this.app = proc;
        Task task = this.task;
        ActivityRecord root = task != null ? task.getRootActivity() : null;
        if (root == this) {
            this.task.setRootProcess(proc);
        }
        proc.addActivityIfNeeded(this);
    }

    boolean hasProcess() {
        return this.app != null;
    }

    boolean attachedToProcess() {
        return hasProcess() && this.app.hasThread();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0102 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x0104  */
    /* JADX WARN: Code duplicated, block: B:52:0x0107 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0108  */
    /* JADX WARN: Code duplicated, block: B:55:0x010c  */
    boolean addStartingWindow(String pkg, int theme, CompatibilityInfo compatInfo, CharSequence nonLocalizedLabel, int labelRes, int icon, int logo, int windowFlags, IBinder transferFrom, boolean newTask, boolean taskSwitch, boolean processRunning, boolean allowTaskSnapshot, boolean activityCreated) {
        int windowFlags2;
        if (!okToDisplay() || this.mStartingData != null) {
            return false;
        }
        WindowState mainWin = findMainWindow();
        if (mainWin != null && mainWin.mWinAnimator.getShown()) {
            return false;
        }
        ActivityManager.TaskSnapshot snapshot = this.mWmService.mTaskSnapshotController.getSnapshot(this.task.mTaskId, this.task.mUserId, false, false);
        int type = getStartingWindowType(newTask, taskSwitch, processRunning, allowTaskSnapshot, activityCreated, snapshot);
        if (type == 1) {
            if (isActivityTypeHome()) {
                this.mWmService.mTaskSnapshotController.removeSnapshotCache(this.task.mTaskId);
                if ((2 & this.mDisplayContent.mAppTransition.getTransitFlags()) == 0) {
                    return false;
                }
            }
            return createSnapshot(snapshot);
        }
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            long protoLogParam0 = theme;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1782453012, 1, null, Long.valueOf(protoLogParam0));
        }
        if (theme != 0) {
            AttributeCache.Entry ent = AttributeCache.instance().get(pkg, theme, com.android.internal.R.styleable.Window, this.mWmService.mCurrentUserId);
            if (ent == null) {
                return false;
            }
            boolean windowIsTranslucent = ent.array.getBoolean(5, false);
            boolean windowIsFloating = ent.array.getBoolean(4, false);
            boolean windowShowWallpaper = ent.array.getBoolean(14, false);
            boolean windowDisableStarting = ent.array.getBoolean(12, false);
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam1 = String.valueOf(windowIsTranslucent);
                String protoLogParam2 = String.valueOf(windowIsFloating);
                String protoLogParam3 = String.valueOf(windowShowWallpaper);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1088782910, 0, null, protoLogParam1, protoLogParam2, protoLogParam3);
            }
            if (windowIsTranslucent || windowIsFloating || windowDisableStarting) {
                return false;
            }
            if (windowShowWallpaper) {
                if (getDisplayContent().mWallpaperController.getWallpaperTarget() != null) {
                    return false;
                }
                windowFlags2 = windowFlags | 1048576;
            }
            if (transferStartingWindow(transferFrom)) {
                return true;
            }
            if (type != 2) {
                return false;
            }
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 2018852077, 0, null, (Object[]) null);
            }
            this.mStartingData = new SplashScreenStartingData(this.mWmService, pkg, theme, compatInfo, nonLocalizedLabel, labelRes, icon, logo, windowFlags2, getMergedOverrideConfiguration());
            scheduleAddStartingWindow();
            return true;
        }
        windowFlags2 = windowFlags;
        if (transferStartingWindow(transferFrom)) {
            return true;
        }
        if (type != 2) {
            return false;
        }
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 2018852077, 0, null, (Object[]) null);
        }
        this.mStartingData = new SplashScreenStartingData(this.mWmService, pkg, theme, compatInfo, nonLocalizedLabel, labelRes, icon, logo, windowFlags2, getMergedOverrideConfiguration());
        scheduleAddStartingWindow();
        return true;
    }

    private boolean createSnapshot(ActivityManager.TaskSnapshot snapshot) {
        if (snapshot == null) {
            return false;
        }
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1340540100, 0, null, (Object[]) null);
        }
        this.mStartingData = new SnapshotStartingData(this.mWmService, snapshot);
        scheduleAddStartingWindow();
        return true;
    }

    void scheduleAddStartingWindow() {
        if (!this.mWmService.mAnimationHandler.hasCallbacks(this.mAddStartingWindow)) {
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1417601133, 0, null, (Object[]) null);
            }
            this.mWmService.mAnimationHandler.postAtFrontOfQueue(this.mAddStartingWindow);
        }
    }

    private class AddStartingWindow implements Runnable {
        private AddStartingWindow() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ActivityRecord.this.mWmService.mGlobalLock) {
                try {
                    WindowManagerService.boostPriorityForLockedSection();
                    ActivityRecord.this.mWmService.mAnimationHandler.removeCallbacks(this);
                    if (ActivityRecord.this.mStartingData == null) {
                        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                            String protoLogParam0 = String.valueOf(ActivityRecord.this);
                            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1836214582, 0, null, protoLogParam0);
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        return;
                    }
                    StartingData startingData = ActivityRecord.this.mStartingData;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                        String protoLogParam1 = String.valueOf(this);
                        String protoLogParam2 = String.valueOf(startingData);
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 108170907, 0, null, protoLogParam1, protoLogParam2);
                    }
                    WindowManagerPolicy.StartingSurface surface = null;
                    try {
                        surface = startingData.createStartingSurface(ActivityRecord.this);
                    } catch (Exception e) {
                        Slog.w("ActivityTaskManager", "Exception when adding starting window", e);
                    }
                    if (surface != null) {
                        boolean abort = false;
                        synchronized (ActivityRecord.this.mWmService.mGlobalLock) {
                            try {
                                WindowManagerService.boostPriorityForLockedSection();
                                if (ActivityRecord.this.mStartingData == null) {
                                    if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                                        String protoLogParam3 = String.valueOf(ActivityRecord.this);
                                        String protoLogParam4 = String.valueOf(ActivityRecord.this.mStartingData);
                                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1822843721, 0, null, protoLogParam3, protoLogParam4);
                                    }
                                    ActivityRecord.this.startingWindow = null;
                                    ActivityRecord.this.mStartingData = null;
                                    abort = true;
                                } else {
                                    ActivityRecord.this.startingSurface = surface;
                                }
                                if (!abort && ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                                    String protoLogParam5 = String.valueOf(ActivityRecord.this);
                                    String protoLogParam6 = String.valueOf(ActivityRecord.this.startingWindow);
                                    String protoLogParam7 = String.valueOf(ActivityRecord.this.startingSurface);
                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1292329638, 0, null, protoLogParam5, protoLogParam6, protoLogParam7);
                                }
                            } catch (Throwable th) {
                                WindowManagerService.resetPriorityAfterLockedSection();
                                throw th;
                            }
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                        if (abort) {
                            surface.remove();
                            return;
                        }
                        return;
                    }
                    if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                        String protoLogParam8 = String.valueOf(ActivityRecord.this);
                        ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1254403969, 0, null, protoLogParam8);
                    }
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
        }
    }

    private int getStartingWindowType(boolean newTask, boolean taskSwitch, boolean processRunning, boolean allowTaskSnapshot, boolean activityCreated, ActivityManager.TaskSnapshot snapshot) {
        if (newTask || !processRunning || (taskSwitch && !activityCreated)) {
            return 2;
        }
        if (!taskSwitch || !allowTaskSnapshot) {
            return 0;
        }
        if (isSnapshotCompatible(snapshot)) {
            return 1;
        }
        if (!isActivityTypeHome()) {
            return 2;
        }
        return 0;
    }

    boolean isSnapshotCompatible(ActivityManager.TaskSnapshot snapshot) {
        int targetRotation;
        if (snapshot == null) {
            return false;
        }
        int rotation = this.mDisplayContent.rotationForActivityInDifferentOrientation(this);
        if (rotation != -1) {
            targetRotation = rotation;
        } else {
            targetRotation = this.task.getWindowConfiguration().getRotation();
        }
        return snapshot.getRotation() == targetRotation;
    }

    void removeStartingWindow() {
        if (this.startingWindow == null) {
            if (this.mStartingData != null) {
                if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                    String protoLogParam0 = String.valueOf(this);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -2127842445, 0, null, protoLogParam0);
                }
                this.mStartingData = null;
                return;
            }
            return;
        }
        if (this.mStartingData != null) {
            final WindowManagerPolicy.StartingSurface surface = this.startingSurface;
            this.mStartingData = null;
            this.startingSurface = null;
            this.startingWindow = null;
            this.startingDisplayed = false;
            if (surface == null) {
                if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 45285419, 0, null, (Object[]) null);
                    return;
                }
                return;
            }
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam1 = String.valueOf(this);
                String protoLogParam2 = String.valueOf(this.startingWindow);
                String protoLogParam3 = String.valueOf(this.startingSurface);
                String protoLogParam4 = String.valueOf(Debug.getCallers(5));
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1128015008, 0, null, protoLogParam1, protoLogParam2, protoLogParam3, protoLogParam4);
            }
            this.mWmService.mAnimationHandler.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$tt99EJHW_Nk5qgU9galJBIm5wXg
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityRecord.lambda$removeStartingWindow$3(surface);
                }
            });
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            String protoLogParam5 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 146871307, 0, null, protoLogParam5);
        }
    }

    static /* synthetic */ void lambda$removeStartingWindow$3(WindowManagerPolicy.StartingSurface surface) {
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            String protoLogParam0 = String.valueOf(surface);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1742235936, 0, null, protoLogParam0);
        }
        try {
            surface.remove();
        } catch (Exception e) {
            Slog.w("WindowManager", "Exception when removing starting window", e);
        }
    }

    private void removeAppTokenFromDisplay() {
        if (this.mWmService.mRoot == null) {
            return;
        }
        DisplayContent dc = this.mWmService.mRoot.getDisplayContent(getDisplayId());
        if (dc == null) {
            Slog.w("ActivityTaskManager", "removeAppTokenFromDisplay: Attempted to remove token: " + this.appToken + " from non-existing displayId=" + getDisplayId());
            return;
        }
        resumeKeyDispatchingLocked();
        dc.removeAppToken(this.appToken.asBinder());
    }

    void reparent(Task newTask, int position, String reason) {
        if (getParent() == null) {
            Slog.w("ActivityTaskManager", "reparent: Attempted to reparent non-existing app token: " + this.appToken);
            return;
        }
        Task prevTask = this.task;
        if (prevTask == newTask) {
            throw new IllegalArgumentException(reason + ": task=" + newTask + " is already the parent of r=" + this);
        }
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            long protoLogParam1 = this.task.mTaskId;
            long protoLogParam2 = position;
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -303497363, 20, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2));
        }
        reparent(newTask, position);
    }

    private boolean isHomeIntent(Intent intent) {
        return "android.intent.action.MAIN".equals(intent.getAction()) && (intent.hasCategory("android.intent.category.HOME") || intent.hasCategory("android.intent.category.SECONDARY_HOME")) && intent.getCategories().size() == 1 && intent.getData() == null && intent.getType() == null;
    }

    static boolean isMainIntent(Intent intent) {
        return "android.intent.action.MAIN".equals(intent.getAction()) && intent.hasCategory("android.intent.category.LAUNCHER") && intent.getCategories().size() == 1 && intent.getData() == null && intent.getType() == null;
    }

    boolean canLaunchHomeActivity(int uid, ActivityRecord sourceRecord) {
        if (uid == Process.myUid() || uid == 0) {
            return true;
        }
        RecentTasks recentTasks = this.mStackSupervisor.mService.getRecentTasks();
        if (recentTasks == null || !recentTasks.isCallerRecents(uid)) {
            return sourceRecord != null && sourceRecord.isResolverOrDelegateActivity();
        }
        return true;
    }

    private boolean canLaunchAssistActivity(String packageName) {
        ComponentName assistComponent = this.mAtmService.mActiveVoiceInteractionServiceComponent;
        if (assistComponent != null) {
            return assistComponent.getPackageName().equals(packageName);
        }
        return false;
    }

    static boolean canLaunchDreamActivity(String packageName) {
        if (packageName == null || !((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).isDreaming()) {
            return false;
        }
        DreamManagerInternal dreamManager = (DreamManagerInternal) LocalServices.getService(DreamManagerInternal.class);
        ComponentName activeDream = dreamManager.getActiveDreamComponent(false);
        ComponentName activeDoze = dreamManager.getActiveDreamComponent(true);
        if (!TextUtils.equals(packageName, getPackageName(activeDream)) && !TextUtils.equals(packageName, getPackageName(activeDoze))) {
            return false;
        }
        return true;
    }

    private static String getPackageName(ComponentName componentName) {
        if (componentName != null) {
            return componentName.getPackageName();
        }
        return null;
    }

    private void setActivityType(boolean componentSpecified, int launchedFromUid, Intent intent, ActivityOptions options, ActivityRecord sourceRecord) {
        int activityType = 0;
        if ((!componentSpecified || canLaunchHomeActivity(launchedFromUid, sourceRecord)) && isHomeIntent(intent) && !isResolverOrDelegateActivity()) {
            activityType = 2;
            if (this.info.resizeMode == 4 || this.info.resizeMode == 1) {
                this.info.resizeMode = 0;
            }
        } else if (this.mAtmService.getRecentTasks().isRecentsComponent(this.mActivityComponent, this.info.applicationInfo.uid)) {
            activityType = 3;
        } else if (options != null && options.getLaunchActivityType() == 4 && canLaunchAssistActivity(this.launchedFromPackage)) {
            activityType = 4;
        } else if (options != null && options.getLaunchActivityType() == 5 && canLaunchDreamActivity(this.launchedFromPackage) && DreamActivity.class.getName() == this.info.name) {
            activityType = 5;
        }
        setActivityType(activityType);
    }

    void setTaskToAffiliateWith(Task taskToAffiliateWith) {
        int i = this.launchMode;
        if (i != 3 && i != 2) {
            this.task.setTaskToAffiliateWith(taskToAffiliateWith);
        }
    }

    ActivityStack getRootTask() {
        Task task = this.task;
        if (task != null) {
            return (ActivityStack) task.getRootTask();
        }
        return null;
    }

    int getRootTaskId() {
        Task task = this.task;
        if (task != null) {
            return task.getRootTaskId();
        }
        return -1;
    }

    DisplayContent getDisplay() {
        ActivityStack stack = getRootTask();
        if (stack != null) {
            return stack.getDisplay();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public TaskDisplayArea getDisplayArea() {
        return (TaskDisplayArea) super.getDisplayArea();
    }

    @Override // com.android.server.wm.WindowContainer
    boolean fillsParent() {
        return occludesParent(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean occludesParent() {
        return occludesParent(false);
    }

    private boolean occludesParent(boolean includingFinishing) {
        if (!includingFinishing && this.finishing) {
            return false;
        }
        return this.mOccludesParent;
    }

    boolean setOccludesParent(boolean occludesParent) {
        boolean changed = occludesParent != this.mOccludesParent;
        this.mOccludesParent = occludesParent;
        setMainWindowOpaque(occludesParent);
        this.mWmService.mWindowPlacerLocked.requestTraversal();
        if (changed && this.task != null && !occludesParent) {
            getRootTask().convertActivityToTranslucent(this);
        }
        if (changed || !occludesParent) {
            this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
        }
        return changed;
    }

    void setMainWindowOpaque(boolean isOpaque) {
        WindowState win = findMainWindow();
        if (win == null) {
            return;
        }
        win.mWinAnimator.setOpaqueLocked(isOpaque & (!PixelFormat.formatHasAlpha(win.getAttrs().format)));
    }

    void takeFromHistory() {
        if (this.inHistory) {
            this.inHistory = false;
            if (this.task != null && !this.finishing) {
                this.task = null;
            }
            clearOptionsLocked();
        }
    }

    boolean isInHistory() {
        return this.inHistory;
    }

    boolean isInStackLocked() {
        ActivityStack stack = getRootTask();
        return (stack == null || stack.isInTask(this) == null) ? false : true;
    }

    boolean isPersistable() {
        Intent intent;
        return (this.info.persistableMode == 0 || this.info.persistableMode == 2) && ((intent = this.intent) == null || (intent.getFlags() & 8388608) == 0);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isFocusable() {
        return super.isFocusable() && (canReceiveKeys() || isAlwaysFocusable());
    }

    boolean canReceiveKeys() {
        Task task;
        return getWindowConfiguration().canReceiveKeys() && ((task = this.task) == null || task.getWindowConfiguration().canReceiveKeys());
    }

    boolean isResizeable() {
        return this.mAtmService.mForceResizableActivities || ActivityInfo.isResizeableMode(this.info.resizeMode) || this.info.supportsPictureInPicture();
    }

    boolean isNonResizableOrForcedResizable(int windowingMode) {
        return ((windowingMode == 2 && this.info.supportsPictureInPicture()) || this.info.resizeMode == 2 || this.info.resizeMode == 1) ? false : true;
    }

    boolean supportsPictureInPicture() {
        return this.mAtmService.mSupportsPictureInPicture && isActivityTypeStandardOrUndefined() && this.info.supportsPictureInPicture();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public boolean supportsSplitScreenWindowingMode() {
        return super.supportsSplitScreenWindowingMode() && this.mAtmService.mSupportsSplitScreenMultiWindow && supportsResizeableMultiWindow();
    }

    boolean supportsFreeform() {
        return this.mAtmService.mSupportsFreeformWindowManagement && supportsResizeableMultiWindow();
    }

    private boolean supportsResizeableMultiWindow() {
        return this.mAtmService.mSupportsMultiWindow && !isActivityTypeHome() && (ActivityInfo.isResizeableMode(this.info.resizeMode) || this.mAtmService.mForceResizableActivities);
    }

    boolean canBeLaunchedOnDisplay(int displayId) {
        return this.mAtmService.mStackSupervisor.canPlaceEntityOnDisplay(displayId, this.launchedFromPid, this.launchedFromUid, this.info);
    }

    boolean checkEnterPictureInPictureState(String caller, boolean beforeStopping) {
        if (!supportsPictureInPicture() || !checkEnterPictureInPictureAppOpsState() || this.mAtmService.shouldDisableNonVrUiLocked()) {
            return false;
        }
        boolean isKeyguardLocked = this.mAtmService.isKeyguardLocked();
        boolean isCurrentAppLocked = this.mAtmService.getLockTaskModeState() != 0;
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        boolean hasPinnedStack = taskDisplayArea != null && taskDisplayArea.hasPinnedTask();
        boolean isNotLockedOrOnKeyguard = (isKeyguardLocked || isCurrentAppLocked) ? false : true;
        if (beforeStopping && hasPinnedStack) {
            return false;
        }
        int i = AnonymousClass5.$SwitchMap$com$android$server$wm$ActivityStack$ActivityState[this.mState.ordinal()];
        if (i == 1) {
            if (isCurrentAppLocked) {
                return false;
            }
            return this.supportsEnterPipOnTaskSwitch || !beforeStopping;
        }
        if (i == 2 || i == 3) {
            return isNotLockedOrOnKeyguard && !hasPinnedStack && this.supportsEnterPipOnTaskSwitch;
        }
        return i == 4 && this.supportsEnterPipOnTaskSwitch && isNotLockedOrOnKeyguard && !hasPinnedStack;
    }

    /* JADX INFO: renamed from: com.android.server.wm.ActivityRecord$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$wm$ActivityStack$ActivityState;

        static {
            int[] iArr = new int[ActivityStack.ActivityState.values().length];
            $SwitchMap$com$android$server$wm$ActivityStack$ActivityState = iArr;
            try {
                iArr[ActivityStack.ActivityState.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$wm$ActivityStack$ActivityState[ActivityStack.ActivityState.PAUSING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$wm$ActivityStack$ActivityState[ActivityStack.ActivityState.PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$android$server$wm$ActivityStack$ActivityState[ActivityStack.ActivityState.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$android$server$wm$ActivityStack$ActivityState[ActivityStack.ActivityState.STOPPED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$android$server$wm$ActivityStack$ActivityState[ActivityStack.ActivityState.INITIALIZING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$android$server$wm$ActivityStack$ActivityState[ActivityStack.ActivityState.STARTED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    void setWillCloseOrEnterPip(boolean willCloseOrEnterPip) {
        this.mWillCloseOrEnterPip = willCloseOrEnterPip;
    }

    boolean isClosingOrEnteringPip() {
        return (isAnimating(3) && !this.mVisibleRequested) || this.mWillCloseOrEnterPip;
    }

    private boolean checkEnterPictureInPictureAppOpsState() {
        return this.mAtmService.getAppOpsManager().checkOpNoThrow(67, this.info.applicationInfo.uid, this.packageName) == 0;
    }

    private boolean isAlwaysFocusable() {
        return (this.info.flags & 262144) != 0;
    }

    boolean windowsAreFocusable() {
        return windowsAreFocusable(false);
    }

    boolean windowsAreFocusable(boolean fromUserTouch) {
        if (!fromUserTouch && this.mTargetSdk < 29) {
            int pid = getPid();
            ActivityRecord topFocusedAppOfMyProcess = this.mWmService.mRoot.mTopFocusedAppByProcess.get(Integer.valueOf(pid));
            if (topFocusedAppOfMyProcess != null && topFocusedAppOfMyProcess != this) {
                return false;
            }
        }
        return (canReceiveKeys() || isAlwaysFocusable()) && getDisplay() != null;
    }

    boolean moveFocusableActivityToTop(String reason) {
        if (!isFocusable()) {
            return false;
        }
        ActivityStack stack = getRootTask();
        if (stack == null) {
            Slog.w("ActivityTaskManager", "moveActivityStackToFront: invalid task or stack: activity=" + this + " task=" + this.task);
            return false;
        }
        if (this.mRootWindowContainer.getTopResumedActivity() == this && getDisplayContent().mFocusedApp == this) {
            return !isState(ActivityStack.ActivityState.RESUMED);
        }
        stack.moveToFront(reason, this.task);
        if (this.mRootWindowContainer.getTopResumedActivity() == this) {
            this.mAtmService.setResumedActivityUncheckLocked(this, reason);
        }
        return true;
    }

    void finishIfSubActivity(ActivityRecord parent, String otherResultWho, int otherRequestCode) {
        if (this.resultTo != parent || this.requestCode != otherRequestCode || !Objects.equals(this.resultWho, otherResultWho)) {
            return;
        }
        finishIfPossible("request-sub", false);
    }

    boolean finishIfSameAffinity(ActivityRecord r) {
        if (!Objects.equals(r.taskAffinity, this.taskAffinity)) {
            return true;
        }
        r.finishIfPossible("request-affinity", true);
        return false;
    }

    private void finishActivityResults(int resultCode, Intent resultData, NeededUriGrants resultGrants) {
        ActivityRecord activityRecord = this.resultTo;
        if (activityRecord != null) {
            int i = activityRecord.mUserId;
            int i2 = this.mUserId;
            if (i != i2 && resultData != null) {
                resultData.prepareToLeaveUser(i2);
            }
            if (this.info.applicationInfo.uid > 0) {
                this.mAtmService.mUgmInternal.grantUriPermissionUncheckedFromIntent(resultGrants, this.resultTo.getUriPermissionsLocked());
            }
            this.resultTo.addResultLocked(this, this.resultWho, this.requestCode, resultCode, resultData);
            this.resultTo = null;
        }
        this.results = null;
        this.pendingResults = null;
        this.newIntents = null;
        setSavedState(null);
    }

    int finishIfPossible(String reason, boolean oomAdj) {
        return finishIfPossible(0, null, null, reason, oomAdj);
    }

    int finishIfPossible(int resultCode, Intent resultData, NeededUriGrants resultGrants, String reason, boolean oomAdj) {
        Slog.v("ActivityTaskManager", "Finishing activity r=" + this + ", result=" + resultCode + ", data=" + resultData + ", reason=" + reason);
        if (this.finishing) {
            Slog.w("ActivityTaskManager", "Duplicate finish request for r=" + this);
            return 0;
        }
        if (!isInStackLocked()) {
            Slog.w("ActivityTaskManager", "Finish request when not in stack for r=" + this);
            return 0;
        }
        ActivityStack stack = getRootTask();
        boolean mayAdjustTop = (isState(ActivityStack.ActivityState.RESUMED) || stack.mResumedActivity == null) && stack.isFocusedStackOnDisplay() && !this.task.isClearingToReuseTask();
        boolean shouldAdjustGlobalFocus = mayAdjustTop && this.mRootWindowContainer.isTopDisplayFocusedStack(stack);
        this.mAtmService.deferWindowLayout();
        try {
            makeFinishingLocked();
            Task task = getTask();
            EventLogTags.writeWmFinishActivity(this.mUserId, System.identityHashCode(this), task.mTaskId, this.shortComponentName, reason);
            ActivityRecord next = task.getActivityAbove(this);
            if (next != null && (this.intent.getFlags() & 524288) != 0) {
                next.intent.addFlags(524288);
            }
            pauseKeyDispatchingLocked();
            if (mayAdjustTop && ((ActivityStack) task).topRunningActivity(true) == null) {
                task.adjustFocusToNextFocusableTask("finish-top", false, shouldAdjustGlobalFocus);
            }
            finishActivityResults(resultCode, resultData, resultGrants);
            boolean endTask = task.getActivityBelow(this) == null && !task.isClearingToReuseTask();
            int transit = endTask ? 9 : 7;
            if (!isState(ActivityStack.ActivityState.RESUMED)) {
                if (!isState(ActivityStack.ActivityState.PAUSING)) {
                    if (this.mVisibleRequested) {
                        prepareActivityHideTransitionAnimation(transit);
                    }
                    boolean removedActivity = completeFinishing("finishIfPossible") == null;
                    if (oomAdj && isState(ActivityStack.ActivityState.STOPPING)) {
                        this.mAtmService.updateOomAdj();
                    }
                    if (task.onlyHasTaskOverlayActivities(false)) {
                        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c
                            @Override // java.util.function.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                ((ActivityRecord) obj).prepareActivityHideTransitionAnimationIfOvarlay(((Integer) obj2).intValue());
                            }
                        }, PooledLambda.__(ActivityRecord.class), Integer.valueOf(transit));
                        task.forAllActivities((Consumer<ActivityRecord>) c);
                        c.recycle();
                    }
                    return removedActivity ? 2 : 1;
                }
                Slog.v("ActivityTaskManager", "Finish waiting for pause of: " + this);
            } else {
                if (endTask) {
                    this.mAtmService.getTaskChangeNotificationController().notifyTaskRemovalStarted(task.getTaskInfo());
                }
                this.mDisplayContent.prepareAppTransition(transit, false);
                if (this.mAtmService.mWindowManager.mTaskSnapshotController != null) {
                    ArraySet<Task> tasks = Sets.newArraySet(new Task[]{task});
                    this.mAtmService.mWindowManager.mTaskSnapshotController.snapshotTasks(tasks);
                    this.mAtmService.mWindowManager.mTaskSnapshotController.addSkipClosingAppSnapshotTasks(tasks);
                }
                setVisibility(false);
                if (stack.mPausingActivity == null) {
                    Slog.v("ActivityTaskManager", "Finish needs to pause: " + this);
                    stack.startPausingLocked(false, false, null);
                }
                if (endTask) {
                    this.mAtmService.getLockTaskController().clearLockedTask(task);
                    if (mayAdjustTop) {
                        this.mNeedsZBoost = true;
                        this.mDisplayContent.assignWindowLayers(false);
                    }
                }
            }
            return 1;
        } finally {
            this.mAtmService.continueWindowLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepareActivityHideTransitionAnimationIfOvarlay(int transit) {
        if (this.mTaskOverlay) {
            prepareActivityHideTransitionAnimation(transit);
        }
    }

    private void prepareActivityHideTransitionAnimation(int transit) {
        DisplayContent dc = getDisplay().mDisplayContent;
        dc.prepareAppTransition(transit, false);
        setVisibility(false);
        dc.executeAppTransition();
    }

    ActivityRecord completeFinishing(String reason) {
        if (!this.finishing || isState(ActivityStack.ActivityState.RESUMED)) {
            throw new IllegalArgumentException("Activity must be finishing and not resumed to complete, r=" + this + ", finishing=" + this.finishing + ", state=" + this.mState);
        }
        if (isState(ActivityStack.ActivityState.PAUSING)) {
            return this;
        }
        boolean isNextNotYetVisible = true;
        boolean isCurrentVisible = this.mVisibleRequested || isState(ActivityStack.ActivityState.PAUSED);
        if (isCurrentVisible) {
            ActivityStack stack = getStack();
            ActivityRecord activity = stack.mResumedActivity;
            boolean ensureVisibility = false;
            if (activity != null && !activity.occludesParent()) {
                ensureVisibility = true;
            } else if (this.mStackSupervisor.getKeyguardController().isKeyguardLocked() && stack.topActivityOccludesKeyguard()) {
                ensureVisibility = true;
            }
            if (ensureVisibility) {
                getDisplay().ensureActivitiesVisible(null, 0, false, true);
            }
        }
        boolean activityRemoved = false;
        ActivityRecord next = getDisplayArea().topRunningActivity(true);
        if (next == null || (next.nowVisible && next.mVisibleRequested)) {
            isNextNotYetVisible = false;
        }
        if (isCurrentVisible && isNextNotYetVisible) {
            addToStopping(false, false, "completeFinishing");
            setState(ActivityStack.ActivityState.STOPPING, "completeFinishing");
        } else if (!addToFinishingAndWaitForIdle()) {
            activityRemoved = destroyIfPossible(reason);
        }
        if (activityRemoved) {
            return null;
        }
        return this;
    }

    boolean destroyIfPossible(String reason) {
        setState(ActivityStack.ActivityState.FINISHING, "destroyIfPossible");
        this.mStackSupervisor.mStoppingActivities.remove(this);
        ActivityStack stack = getRootTask();
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        ActivityRecord next = taskDisplayArea.topRunningActivity();
        boolean isLastStackOverEmptyHome = next == null && stack.isFocusedStackOnDisplay() && taskDisplayArea.getOrCreateRootHomeTask() != null;
        if (isLastStackOverEmptyHome) {
            addToFinishingAndWaitForIdle();
            return false;
        }
        makeFinishingLocked();
        boolean activityRemoved = destroyImmediately(true, "finish-imm:" + reason);
        if (next == null) {
            this.mRootWindowContainer.ensureVisibilityAndConfig(next, getDisplayId(), false, true);
        }
        if (activityRemoved) {
            this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        }
        Slog.d("ActivityTaskManager", "destroyIfPossible: r=" + this + " destroy returned removed=" + activityRemoved);
        return activityRemoved;
    }

    boolean addToFinishingAndWaitForIdle() {
        Slog.v("ActivityTaskManager", "Enqueueing pending finish: " + this);
        setState(ActivityStack.ActivityState.FINISHING, "addToFinishingAndWaitForIdle");
        if (!this.mStackSupervisor.mFinishingActivities.contains(this)) {
            this.mStackSupervisor.mFinishingActivities.add(this);
        }
        resumeKeyDispatchingLocked();
        return this.mRootWindowContainer.resumeFocusedStacksTopActivities();
    }

    boolean destroyImmediately(boolean removeFromApp, String reason) {
        StringBuilder sb = new StringBuilder();
        sb.append("Removing activity from ");
        sb.append(reason);
        sb.append(": token=");
        sb.append(this);
        sb.append(", app=");
        sb.append(hasProcess() ? this.app.mName : "(null)");
        Slog.v("ActivityTaskManager", sb.toString());
        if (isState(ActivityStack.ActivityState.DESTROYING, ActivityStack.ActivityState.DESTROYED)) {
            Slog.v("ActivityTaskManager", "activity " + this + " already destroying.skipping request with reason:" + reason);
            return false;
        }
        EventLogTags.writeWmDestroyActivity(this.mUserId, System.identityHashCode(this), this.task.mTaskId, this.shortComponentName, reason);
        boolean removedFromHistory = false;
        cleanUp(false, false);
        if (hasProcess()) {
            if (removeFromApp) {
                this.app.removeActivity(this);
                if (!this.app.hasActivities()) {
                    this.mAtmService.clearHeavyWeightProcessIfEquals(this.app);
                    this.app.updateProcessInfo(true, false, true, false);
                }
            }
            boolean skipDestroy = false;
            try {
                Slog.i("ActivityTaskManager", "Destroying: " + this);
                this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, DestroyActivityItem.obtain(this.finishing, this.configChangeFlags));
            } catch (Exception e) {
                if (this.finishing) {
                    removeFromHistory(reason + " exceptionInScheduleDestroy");
                    removedFromHistory = true;
                    skipDestroy = true;
                }
            }
            this.nowVisible = false;
            if (this.finishing && !skipDestroy) {
                Slog.v("ActivityTaskManager", "Moving to DESTROYING: " + this + " (destroy requested)");
                setState(ActivityStack.ActivityState.DESTROYING, "destroyActivityLocked. finishing and not skipping destroy");
                this.mAtmService.mH.postDelayed(this.mDestroyTimeoutRunnable, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
            } else {
                Slog.v("ActivityTaskManager", "Moving to DESTROYED: " + this + " (destroy skipped)");
                setState(ActivityStack.ActivityState.DESTROYED, "destroyActivityLocked. not finishing or skipping destroy");
                Slog.v("ActivityTaskManager", "Clearing app during destroy for activity " + this);
                this.app = null;
            }
        } else if (this.finishing) {
            removeFromHistory(reason + " hadNoApp");
            removedFromHistory = true;
        } else {
            Slog.v("ActivityTaskManager", "Moving to DESTROYED: " + this + " (no app)");
            setState(ActivityStack.ActivityState.DESTROYED, "destroyActivityLocked. not finishing and had no app");
        }
        this.configChangeFlags = 0;
        return removedFromHistory;
    }

    boolean safelyDestroy(String reason) {
        if (isDestroyable()) {
            ActivityStack stack = getRootTask();
            Slog.v("ActivityTaskManager", "Safely destroying " + this + " in state " + getState() + " resumed=" + stack.mResumedActivity + " pausing=" + stack.mPausingActivity + " for reason " + reason);
            return destroyImmediately(true, reason);
        }
        return false;
    }

    void removeFromHistory(String reason) {
        finishActivityResults(0, null, null);
        makeFinishingLocked();
        Slog.i("ActivityTaskManager", "Removing activity " + this + " from stack callers=" + Debug.getCallers(5));
        takeFromHistory();
        removeTimeouts();
        Slog.v("ActivityTaskManager", "Moving to DESTROYED: " + this + " (removed from history)");
        setState(ActivityStack.ActivityState.DESTROYED, "removeFromHistory");
        Slog.v("ActivityTaskManager", "Clearing app during remove for activity " + this);
        this.app = null;
        removeAppTokenFromDisplay();
        cleanUpActivityServices();
        removeUriPermissionsLocked();
    }

    void makeFinishingLocked() {
        if (this.finishing) {
            return;
        }
        this.finishing = true;
        if (this.stopped) {
            clearOptionsLocked();
        }
    }

    void destroyed(String reason) {
        removeDestroyTimeout();
        Slog.d("ActivityTaskManager", "activityDestroyedLocked: r=" + this);
        if (!isState(ActivityStack.ActivityState.DESTROYING, ActivityStack.ActivityState.DESTROYED)) {
            throw new IllegalStateException("Reported destroyed for activity that is not destroying: r=" + this);
        }
        if (isInStackLocked()) {
            cleanUp(true, false);
            removeFromHistory(reason);
        }
        this.mRootWindowContainer.resumeFocusedStacksTopActivities();
    }

    void cleanUp(boolean cleanServices, boolean setState) {
        HashSet<WeakReference<PendingIntentRecord>> hashSet;
        this.task.cleanUpActivityReferences(this);
        this.deferRelaunchUntilPaused = false;
        this.frozenBeforeDestroy = false;
        if (setState) {
            setState(ActivityStack.ActivityState.DESTROYED, "cleanUp");
            Slog.v("ActivityTaskManager", "Clearing app during cleanUp for activity " + this);
            this.app = null;
        }
        this.mStackSupervisor.cleanupActivity(this);
        if (this.finishing && (hashSet = this.pendingResults) != null) {
            for (WeakReference<PendingIntentRecord> apr : hashSet) {
                PendingIntentRecord rec = apr.get();
                if (rec != null) {
                    this.mAtmService.mPendingIntentController.cancelIntentSender(rec, false);
                }
            }
            this.pendingResults = null;
        }
        if (cleanServices) {
            cleanUpActivityServices();
        }
        removeTimeouts();
        clearRelaunching();
    }

    boolean isRelaunching() {
        return this.mPendingRelaunchCount > 0;
    }

    boolean shouldFreezeBounds() {
        Task task = this.task;
        if (task == null || task.inFreeformWindowingMode()) {
            return false;
        }
        return this.task.isDragResizing();
    }

    void startRelaunching() {
        if (shouldFreezeBounds()) {
            freezeBounds();
        }
        detachChildren();
        this.mPendingRelaunchCount++;
    }

    private void freezeBounds() {
        this.mFrozenBounds.offer(new Rect(this.task.mPreparedFrozenBounds));
        if (this.task.mPreparedFrozenMergedConfig.equals(Configuration.EMPTY)) {
            this.mFrozenMergedConfig.offer(new Configuration(this.task.getConfiguration()));
        } else {
            this.mFrozenMergedConfig.offer(new Configuration(this.task.mPreparedFrozenMergedConfig));
        }
        this.task.mPreparedFrozenMergedConfig.unset();
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
    void detachChildren() {
        SurfaceControl.openTransaction();
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            w.mWinAnimator.detachChildren();
        }
        SurfaceControl.closeTransaction();
    }

    void finishRelaunching() {
        unfreezeBounds();
        int i = this.mPendingRelaunchCount;
        if (i > 0) {
            this.mPendingRelaunchCount = i - 1;
        } else {
            checkKeyguardFlagsChanged();
        }
    }

    void clearRelaunching() {
        if (this.mPendingRelaunchCount == 0) {
            return;
        }
        unfreezeBounds();
        this.mPendingRelaunchCount = 0;
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
    private void unfreezeBounds() {
        if (this.mFrozenBounds.isEmpty()) {
            return;
        }
        this.mFrozenBounds.remove();
        if (!this.mFrozenMergedConfig.isEmpty()) {
            this.mFrozenMergedConfig.remove();
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState win = (WindowState) this.mChildren.get(i);
            win.onUnfreezeBounds();
        }
        this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
    }

    private void cleanUpActivityServices() {
        ActivityServiceConnectionsHolder activityServiceConnectionsHolder = this.mServiceConnectionsHolder;
        if (activityServiceConnectionsHolder == null) {
            return;
        }
        activityServiceConnectionsHolder.disconnectActivityFromServices();
        this.mServiceConnectionsHolder = null;
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.WindowContainer
    void removeImmediately() {
        onRemovedFromDisplay();
        super.removeImmediately();
    }

    @Override // com.android.server.wm.WindowContainer
    void removeIfPossible() {
        this.mIsExiting = false;
        removeAllWindowsIfPossible();
        removeImmediately();
    }

    @Override // com.android.server.wm.WindowContainer
    boolean handleCompleteDeferredRemoval() {
        if (this.mIsExiting) {
            removeIfPossible();
        }
        return super.handleCompleteDeferredRemoval();
    }

    void onRemovedFromDisplay() {
        if (!this.mRemovingFromDisplay) {
            this.mRemovingFromDisplay = true;
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -1352076759, 0, null, protoLogParam0);
            }
            commitVisibility(false, true);
            getDisplayContent().mOpeningApps.remove(this);
            getDisplayContent().mUnknownAppVisibilityController.appRemovedOrHidden(this);
            this.mWmService.mTaskSnapshotController.onAppRemoved(this);
            this.mStackSupervisor.getActivityMetricsLogger().notifyActivityRemoved(this);
            this.waitingToShow = false;
            boolean delayed = isAnimating(7);
            if (getDisplayContent().mClosingApps.contains(this)) {
                delayed = true;
            } else if (getDisplayContent().mAppTransition.isTransitionSet()) {
                getDisplayContent().mClosingApps.add(this);
                delayed = true;
            }
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam1 = String.valueOf(this);
                boolean protoLogParam2 = delayed;
                String protoLogParam3 = String.valueOf(getAnimation());
                boolean protoLogParam4 = isAnimating(3);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1653210583, 204, null, protoLogParam1, Boolean.valueOf(protoLogParam2), protoLogParam3, Boolean.valueOf(protoLogParam4));
            }
            if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                String protoLogParam5 = String.valueOf(this);
                boolean protoLogParam6 = delayed;
                String protoLogParam7 = String.valueOf(Debug.getCallers(4));
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1539974875, 12, null, protoLogParam5, Boolean.valueOf(protoLogParam6), protoLogParam7);
            }
            if (this.mStartingData != null) {
                removeStartingWindow();
            }
            if (isAnimating(3)) {
                getDisplayContent().mNoAnimationNotifyOnTransitionFinished.add(this.token);
            }
            ActivityStack stack = getStack();
            if (delayed && !isEmpty()) {
                if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                    String protoLogParam8 = String.valueOf(this);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -2109936758, 0, null, protoLogParam8);
                }
                if (stack != null) {
                    stack.mExitingActivities.add(this);
                }
                this.mIsExiting = true;
            } else {
                cancelAnimation();
                if (stack != null) {
                    stack.mExitingActivities.remove(this);
                }
                removeIfPossible();
            }
            stopFreezingScreen(true, true);
            DisplayContent dc = getDisplayContent();
            if (dc.mFocusedApp == this) {
                if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                    String protoLogParam9 = String.valueOf(this);
                    long protoLogParam10 = dc.getDisplayId();
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -771177730, 4, null, protoLogParam9, Long.valueOf(protoLogParam10));
                }
                dc.setFocusedApp(null);
                this.mWmService.updateFocusedWindowLocked(0, true);
            }
            Letterbox letterbox = this.mLetterbox;
            if (letterbox != null) {
                letterbox.destroy();
                this.mLetterbox = null;
            }
            if (!delayed) {
                updateReportedVisibilityLocked();
            }
            this.mDisplayContent.mPinnedStackControllerLocked.onActivityHidden(this.mActivityComponent);
            this.mWmService.mEmbeddedWindowController.onActivityRemoved(this);
            this.mRemovingFromDisplay = false;
        }
    }

    @Override // com.android.server.wm.WindowToken
    protected boolean isFirstChildWindowGreaterThanSecond(WindowState newWindow, WindowState existingWindow) {
        int type1 = newWindow.mAttrs.type;
        int type2 = existingWindow.mAttrs.type;
        if (type1 == 1 && type2 != 1) {
            return false;
        }
        if (type1 == 1 || type2 != 1) {
            return (type1 == 3 && type2 != 3) || type1 == 3 || type2 != 3;
        }
        return true;
    }

    boolean hasStartingWindow() {
        if (this.startingDisplayed || this.mStartingData != null) {
            return true;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (((WindowState) getChildAt(i)).mAttrs.type == 3) {
                return true;
            }
        }
        return false;
    }

    boolean isLastWindow(WindowState win) {
        return this.mChildren.size() == 1 && this.mChildren.get(0) == win;
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
    @Override // com.android.server.wm.WindowToken
    void addWindow(WindowState w) {
        super.addWindow(w);
        boolean gotReplacementWindow = false;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState candidate = (WindowState) this.mChildren.get(i);
            gotReplacementWindow |= candidate.setReplacementWindowIfNeeded(w);
        }
        if (gotReplacementWindow) {
            this.mWmService.scheduleWindowReplacementTimeouts(this);
        }
        checkKeyguardFlagsChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public void removeChild(WindowState child) {
        if (!this.mChildren.contains(child)) {
            return;
        }
        super.removeChild(child);
        checkKeyguardFlagsChanged();
        updateLetterboxSurface(child);
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
    void onWindowReplacementTimeout() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ((WindowState) this.mChildren.get(i)).onWindowReplacementTimeout();
        }
    }

    void setAppLayoutChanges(int changes, String reason) {
        if (!this.mChildren.isEmpty()) {
            DisplayContent dc = getDisplayContent();
            dc.pendingLayoutChanges |= changes;
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
    void removeReplacedWindowIfNeeded(WindowState replacement) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState win = (WindowState) this.mChildren.get(i);
            if (win.removeReplacedWindowIfNeeded(replacement)) {
                return;
            }
        }
    }

    boolean transferStartingWindow(IBinder transferFrom) {
        ActivityRecord fromActivity = getDisplayContent().getActivityRecord(transferFrom);
        if (fromActivity == null) {
            return false;
        }
        WindowState tStartingWindow = fromActivity.startingWindow;
        if (tStartingWindow != null && fromActivity.startingSurface != null) {
            getDisplayContent().mSkipAppTransitionAnimation = true;
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam0 = String.valueOf(tStartingWindow);
                String protoLogParam1 = String.valueOf(fromActivity);
                String protoLogParam2 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1938204785, 0, null, protoLogParam0, protoLogParam1, protoLogParam2);
            }
            long origId = Binder.clearCallingIdentity();
            try {
                if (fromActivity.hasFixedRotationTransform()) {
                    this.mDisplayContent.handleTopActivityLaunchingInDifferentOrientation(this, false);
                }
                this.mStartingData = fromActivity.mStartingData;
                this.startingSurface = fromActivity.startingSurface;
                this.startingDisplayed = fromActivity.startingDisplayed;
                fromActivity.startingDisplayed = false;
                this.startingWindow = tStartingWindow;
                this.reportedVisible = fromActivity.reportedVisible;
                fromActivity.mStartingData = null;
                fromActivity.startingSurface = null;
                fromActivity.startingWindow = null;
                fromActivity.startingMoved = true;
                tStartingWindow.mToken = this;
                tStartingWindow.mActivityRecord = this;
                if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                    String protoLogParam3 = String.valueOf(tStartingWindow);
                    String protoLogParam4 = String.valueOf(fromActivity);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1499134947, 0, null, protoLogParam3, protoLogParam4);
                }
                fromActivity.removeChild(tStartingWindow);
                addWindow(tStartingWindow);
                if (fromActivity.allDrawn) {
                    this.allDrawn = true;
                }
                if (fromActivity.firstWindowDrawn) {
                    this.firstWindowDrawn = true;
                }
                if (fromActivity.isVisible()) {
                    setVisible(true);
                    this.mVisibleRequested = true;
                    this.mVisibleSetFromTransferredStartingWindow = true;
                }
                setClientVisible(fromActivity.mClientVisible);
                if (fromActivity.isAnimating()) {
                    transferAnimation(fromActivity);
                    this.mUseTransferredAnimation = true;
                }
                fromActivity.postWindowRemoveStartingWindowCleanup(tStartingWindow);
                fromActivity.mVisibleSetFromTransferredStartingWindow = false;
                this.mWmService.updateFocusedWindowLocked(3, true);
                getDisplayContent().setLayoutNeeded();
                this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
                return true;
            } finally {
                Binder.restoreCallingIdentity(origId);
            }
        }
        if (fromActivity.mStartingData == null) {
            return false;
        }
        if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
            String protoLogParam5 = String.valueOf(fromActivity);
            String protoLogParam6 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -443173857, 0, null, protoLogParam5, protoLogParam6);
        }
        this.mStartingData = fromActivity.mStartingData;
        fromActivity.mStartingData = null;
        fromActivity.startingMoved = true;
        scheduleAddStartingWindow();
        return true;
    }

    void transferStartingWindowFromHiddenAboveTokenIfNeeded() {
        Function<ActivityRecord, Boolean> functionObtainFunction = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$prAsqx_JQJTqW1jNxmkuU3AV8AU
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(((ActivityRecord) obj).transferStartingWindow((ActivityRecord) obj2));
            }
        }, this, PooledLambda.__(ActivityRecord.class));
        this.task.forAllActivities(functionObtainFunction);
        functionObtainFunction.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean transferStartingWindow(ActivityRecord fromActivity) {
        if (fromActivity == this) {
            return true;
        }
        return !fromActivity.mVisibleRequested && transferStartingWindow(fromActivity.token);
    }

    void checkKeyguardFlagsChanged() {
        boolean containsDismissKeyguard = containsDismissKeyguardWindow();
        boolean containsShowWhenLocked = containsShowWhenLockedWindow();
        if (containsDismissKeyguard != this.mLastContainsDismissKeyguardWindow || containsShowWhenLocked != this.mLastContainsShowWhenLockedWindow) {
            this.mWmService.notifyKeyguardFlagsChanged(null, getDisplayContent().getDisplayId());
        }
        this.mLastContainsDismissKeyguardWindow = containsDismissKeyguard;
        this.mLastContainsShowWhenLockedWindow = containsShowWhenLocked;
        this.mLastContainsTurnScreenOnWindow = containsTurnScreenOnWindow();
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
    boolean containsDismissKeyguardWindow() {
        if (isRelaunching()) {
            return this.mLastContainsDismissKeyguardWindow;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if ((((WindowState) this.mChildren.get(i)).mAttrs.flags & 4194304) != 0) {
                return true;
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
    boolean containsShowWhenLockedWindow() {
        if (isRelaunching()) {
            return this.mLastContainsShowWhenLockedWindow;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if ((((WindowState) this.mChildren.get(i)).mAttrs.flags & 524288) != 0) {
                return true;
            }
        }
        return false;
    }

    void setShowWhenLocked(boolean showWhenLocked) {
        this.mShowWhenLocked = showWhenLocked;
        this.mAtmService.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
    }

    void setInheritShowWhenLocked(boolean inheritShowWhenLocked) {
        this.mInheritShownWhenLocked = inheritShowWhenLocked;
        this.mAtmService.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
    }

    boolean canShowWhenLocked() {
        if (!inPinnedWindowingMode() && (this.mShowWhenLocked || containsShowWhenLockedWindow())) {
            return true;
        }
        if (!this.mInheritShownWhenLocked) {
            return false;
        }
        ActivityRecord r = this.task.getActivityBelow(this);
        return (r == null || r.inPinnedWindowingMode() || (!r.mShowWhenLocked && !r.containsShowWhenLockedWindow())) ? false : true;
    }

    boolean canShowWindows() {
        return this.allDrawn && !(isAnimating(2) && hasNonDefaultColorWindow());
    }

    private boolean hasNonDefaultColorWindow() {
        return forAllWindows((ToBooleanFunction<WindowState>) new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$YY5kCNb4uWg5W_2lbH3ZOqirP1g
            public final boolean apply(Object obj) {
                return ActivityRecord.lambda$hasNonDefaultColorWindow$4((WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ boolean lambda$hasNonDefaultColorWindow$4(WindowState ws) {
        return ws.mAttrs.getColorMode() != 0;
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
    WindowState getImeTargetBelowWindow(WindowState w) {
        int index = this.mChildren.indexOf(w);
        if (index > 0) {
            return ((WindowState) this.mChildren.get(index - 1)).getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$xoKZ5D123tFlyp3WJRk5AFtrB8A
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((WindowState) obj).canBeImeTarget();
                }
            });
        }
        return null;
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
    WindowState getHighestAnimLayerWindow(WindowState currentTarget) {
        WindowState candidate = null;
        for (int i = this.mChildren.indexOf(currentTarget); i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            if (!w.mRemoved && candidate == null) {
                candidate = w;
            }
        }
        return candidate;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean forAllWindows(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        if (this.mIsExiting && !forAllWindowsUnchecked($$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho.INSTANCE, true)) {
            return false;
        }
        return forAllWindowsUnchecked(callback, traverseTopToBottom);
    }

    boolean forAllWindowsUnchecked(ToBooleanFunction<WindowState> callback, boolean traverseTopToBottom) {
        return super.forAllWindows(callback, traverseTopToBottom);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean forAllActivities(Function<ActivityRecord, Boolean> callback, boolean traverseTopToBottom) {
        return callback.apply(this).booleanValue();
    }

    @Override // com.android.server.wm.WindowContainer
    void forAllActivities(Consumer<ActivityRecord> callback, boolean traverseTopToBottom) {
        callback.accept(this);
    }

    @Override // com.android.server.wm.WindowContainer
    ActivityRecord getActivity(Predicate<ActivityRecord> callback, boolean traverseTopToBottom, ActivityRecord boundary) {
        if (callback.test(this)) {
            return this;
        }
        return null;
    }

    @Override // com.android.server.wm.WindowContainer
    protected void setLayer(SurfaceControl.Transaction t, int layer) {
        if (!this.mSurfaceAnimator.hasLeash()) {
            t.setLayer(this.mSurfaceControl, layer);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    protected void setRelativeLayer(SurfaceControl.Transaction t, SurfaceControl relativeTo, int layer) {
        if (!this.mSurfaceAnimator.hasLeash()) {
            t.setRelativeLayer(this.mSurfaceControl, relativeTo, layer);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    protected void reparentSurfaceControl(SurfaceControl.Transaction t, SurfaceControl newParent) {
        if (!this.mSurfaceAnimator.hasLeash()) {
            t.reparent(this.mSurfaceControl, newParent);
        }
    }

    void logStartActivity(int tag, Task task) {
        Uri data = this.intent.getData();
        String strData = data != null ? data.toSafeString() : null;
        EventLog.writeEvent(tag, Integer.valueOf(this.mUserId), Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(task.mTaskId), this.shortComponentName, this.intent.getAction(), this.intent.getType(), strData, Integer.valueOf(this.intent.getFlags()));
    }

    UriPermissionOwner getUriPermissionsLocked() {
        if (this.uriPermissions == null) {
            this.uriPermissions = new UriPermissionOwner(this.mAtmService.mUgmInternal, this);
        }
        return this.uriPermissions;
    }

    void addResultLocked(ActivityRecord from, String resultWho, int requestCode, int resultCode, Intent resultData) {
        ActivityResult r = new ActivityResult(from, resultWho, requestCode, resultCode, resultData);
        if (this.results == null) {
            this.results = new ArrayList<>();
        }
        this.results.add(r);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    /* JADX WARN: Code duplicated, block: B:19:0x002e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0033 A[SYNTHETIC] */
    void removeResultsLocked(ActivityRecord from, String resultWho, int requestCode) {
        ArrayList<ResultInfo> arrayList = this.results;
        if (arrayList != null) {
            for (int i = arrayList.size() - 1; i >= 0; i--) {
                ActivityResult r = (ActivityResult) this.results.get(i);
                if (r.mFrom == from) {
                    if (r.mResultWho == null) {
                        if (resultWho == null) {
                            if (r.mRequestCode != requestCode) {
                                this.results.remove(i);
                            }
                        }
                    } else if (r.mResultWho.equals(resultWho)) {
                        if (r.mRequestCode != requestCode) {
                            this.results.remove(i);
                        }
                    }
                }
            }
        }
    }

    void sendResult(int callingUid, String resultWho, int requestCode, int resultCode, Intent data, NeededUriGrants dataGrants) {
        if (callingUid > 0) {
            this.mAtmService.mUgmInternal.grantUriPermissionUncheckedFromIntent(dataGrants, getUriPermissionsLocked());
        }
        if (isState(ActivityStack.ActivityState.RESUMED) && attachedToProcess()) {
            try {
                ArrayList<ResultInfo> list = new ArrayList<>();
                list.add(new ResultInfo(resultWho, requestCode, resultCode, data));
                this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, ActivityResultItem.obtain(list));
                return;
            } catch (Exception e) {
                Slog.w("ActivityTaskManager", "Exception thrown sending result to " + this, e);
            }
        }
        addResultLocked(null, resultWho, requestCode, resultCode, data);
    }

    private void addNewIntentLocked(ReferrerIntent intent) {
        if (this.newIntents == null) {
            this.newIntents = new ArrayList<>();
        }
        this.newIntents.add(intent);
    }

    final boolean isSleeping() {
        ActivityStack stack = getRootTask();
        return stack != null ? stack.shouldSleepActivities() : this.mAtmService.isSleepingLocked();
    }

    final void deliverNewIntentLocked(int callingUid, Intent intent, NeededUriGrants intentGrants, String referrer) {
        this.mAtmService.mUgmInternal.grantUriPermissionUncheckedFromIntent(intentGrants, getUriPermissionsLocked());
        ReferrerIntent rintent = new ReferrerIntent(intent, referrer);
        boolean unsent = true;
        boolean isTopActivityWhileSleeping = isTopRunningActivity() && isSleeping();
        if ((this.mState == ActivityStack.ActivityState.RESUMED || this.mState == ActivityStack.ActivityState.PAUSED || isTopActivityWhileSleeping) && attachedToProcess()) {
            try {
                ArrayList<ReferrerIntent> ar = new ArrayList<>(1);
                ar.add(rintent);
                this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, NewIntentItem.obtain(ar, this.mState == ActivityStack.ActivityState.RESUMED));
                unsent = false;
            } catch (RemoteException e) {
                Slog.w("ActivityTaskManager", "Exception thrown sending new intent to " + this, e);
            } catch (NullPointerException e2) {
                Slog.w("ActivityTaskManager", "Exception thrown sending new intent to " + this, e2);
            }
        }
        if (unsent) {
            addNewIntentLocked(rintent);
        }
    }

    void updateOptionsLocked(ActivityOptions options) {
        if (options != null) {
            ActivityOptions activityOptions = this.pendingOptions;
            if (activityOptions != null) {
                activityOptions.abort();
            }
            this.pendingOptions = options;
        }
    }

    void applyOptionsLocked() {
        ActivityOptions activityOptions = this.pendingOptions;
        if (activityOptions != null && activityOptions.getAnimationType() != 5) {
            applyOptionsLocked(this.pendingOptions, this.intent);
            Task task = this.task;
            if (task == null) {
                clearOptionsLocked(false);
            } else {
                task.forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$QP-eHsXODaflS0pyRnr8fdoF6BU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ActivityRecord) obj).clearOptionsLocked(false);
                    }
                });
            }
        }
    }

    void applyOptionsLocked(ActivityOptions pendingOptions, Intent intent) {
        int animationType = pendingOptions.getAnimationType();
        DisplayContent displayContent = getDisplayContent();
        switch (animationType) {
            case -1:
            case 0:
                break;
            case 1:
                displayContent.mAppTransition.overridePendingAppTransition(pendingOptions.getPackageName(), pendingOptions.getCustomEnterResId(), pendingOptions.getCustomExitResId(), pendingOptions.getAnimationStartedListener(), pendingOptions.getAnimationFinishedListener());
                break;
            case 2:
                displayContent.mAppTransition.overridePendingAppTransitionScaleUp(pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getWidth(), pendingOptions.getHeight());
                if (intent.getSourceBounds() == null) {
                    intent.setSourceBounds(new Rect(pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getStartX() + pendingOptions.getWidth(), pendingOptions.getStartY() + pendingOptions.getHeight()));
                }
                break;
            case 3:
            case 4:
                boolean scaleUp = animationType == 3;
                GraphicBuffer buffer = pendingOptions.getThumbnail();
                displayContent.mAppTransition.overridePendingAppTransitionThumb(buffer, pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getAnimationStartedListener(), scaleUp);
                if (intent.getSourceBounds() == null && buffer != null) {
                    intent.setSourceBounds(new Rect(pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getStartX() + buffer.getWidth(), pendingOptions.getStartY() + buffer.getHeight()));
                    break;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 10:
            default:
                Slog.e("WindowManager", "applyOptionsLocked: Unknown animationType=" + animationType);
                break;
            case 8:
            case 9:
                AppTransitionAnimationSpec[] specs = pendingOptions.getAnimSpecs();
                IAppTransitionAnimationSpecsFuture specsFuture = pendingOptions.getSpecsFuture();
                if (specsFuture != null) {
                    displayContent.mAppTransition.overridePendingAppTransitionMultiThumbFuture(specsFuture, pendingOptions.getAnimationStartedListener(), animationType == 8);
                } else if (animationType == 9 && specs != null) {
                    displayContent.mAppTransition.overridePendingAppTransitionMultiThumb(specs, pendingOptions.getAnimationStartedListener(), pendingOptions.getAnimationFinishedListener(), false);
                } else {
                    displayContent.mAppTransition.overridePendingAppTransitionAspectScaledThumb(pendingOptions.getThumbnail(), pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getWidth(), pendingOptions.getHeight(), pendingOptions.getAnimationStartedListener(), animationType == 8);
                    if (intent.getSourceBounds() == null) {
                        intent.setSourceBounds(new Rect(pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getStartX() + pendingOptions.getWidth(), pendingOptions.getStartY() + pendingOptions.getHeight()));
                    }
                }
                break;
            case 11:
                displayContent.mAppTransition.overridePendingAppTransitionClipReveal(pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getWidth(), pendingOptions.getHeight());
                if (intent.getSourceBounds() == null) {
                    intent.setSourceBounds(new Rect(pendingOptions.getStartX(), pendingOptions.getStartY(), pendingOptions.getStartX() + pendingOptions.getWidth(), pendingOptions.getStartY() + pendingOptions.getHeight()));
                }
                break;
            case 12:
                displayContent.mAppTransition.overridePendingAppTransitionStartCrossProfileApps();
                break;
            case 13:
                displayContent.mAppTransition.overridePendingAppTransitionRemote(pendingOptions.getRemoteAnimationAdapter());
                break;
        }
    }

    void clearAllDrawn() {
        this.allDrawn = false;
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
    private boolean allDrawnStatesConsidered() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState child = (WindowState) this.mChildren.get(i);
            if (child.mightAffectAllDrawn() && !child.getDrawnStateEvaluated()) {
                return false;
            }
        }
        return true;
    }

    void updateAllDrawn() {
        int numInteresting;
        if (!this.allDrawn && (numInteresting = this.mNumInterestingWindows) > 0 && allDrawnStatesConsidered() && this.mNumDrawnWindows >= numInteresting && !isRelaunching()) {
            this.allDrawn = true;
            if (this.mDisplayContent != null) {
                this.mDisplayContent.setLayoutNeeded();
            }
            this.mWmService.mH.obtainMessage(32, this.token).sendToTarget();
        }
    }

    ActivityOptions getOptionsForTargetActivityLocked() {
        ActivityOptions activityOptions = this.pendingOptions;
        if (activityOptions != null) {
            return activityOptions.forTargetActivity();
        }
        return null;
    }

    void clearOptionsLocked() {
        clearOptionsLocked(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearOptionsLocked(boolean withAbort) {
        ActivityOptions activityOptions;
        if (withAbort && (activityOptions = this.pendingOptions) != null) {
            activityOptions.abort();
        }
        this.pendingOptions = null;
    }

    ActivityOptions takeOptionsLocked(boolean fromClient) {
        ActivityOptions opts = this.pendingOptions;
        if (!fromClient || opts == null || opts.getRemoteAnimationAdapter() == null) {
            this.pendingOptions = null;
        }
        return opts;
    }

    boolean allowMoveToFront() {
        ActivityOptions activityOptions = this.pendingOptions;
        return activityOptions == null || !activityOptions.getAvoidMoveToFront();
    }

    void removeUriPermissionsLocked() {
        UriPermissionOwner uriPermissionOwner = this.uriPermissions;
        if (uriPermissionOwner != null) {
            uriPermissionOwner.removeUriPermissions();
            this.uriPermissions = null;
        }
    }

    void pauseKeyDispatchingLocked() {
        if (!this.keysPaused) {
            this.keysPaused = true;
            if (getDisplayContent() != null) {
                getDisplayContent().getInputMonitor().pauseDispatchingLw(this);
            }
        }
    }

    void resumeKeyDispatchingLocked() {
        if (this.keysPaused) {
            this.keysPaused = false;
            if (getDisplayContent() != null) {
                getDisplayContent().getInputMonitor().resumeDispatchingLw(this);
            }
        }
    }

    private void updateTaskDescription(CharSequence description) {
        this.task.lastDescription = description;
    }

    void setDeferHidingClient(boolean deferHidingClient) {
        if (this.mDeferHidingClient == deferHidingClient) {
            return;
        }
        this.mDeferHidingClient = deferHidingClient;
        if (!deferHidingClient && !this.mVisibleRequested) {
            setVisibility(false);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isVisible() {
        return this.mVisible;
    }

    void setVisible(boolean visible) {
        if (visible != this.mVisible) {
            this.mVisible = visible;
            scheduleAnimation();
        }
    }

    void setVisibility(boolean visible) {
        if (getParent() == null) {
            Slog.w("WindowManager", "Attempted to set visibility of non-existing app token: " + this.appToken);
            return;
        }
        if (visible) {
            this.mDeferHidingClient = false;
        }
        setVisibility(visible, this.mDeferHidingClient);
        this.mAtmService.addWindowLayoutReasons(2);
        this.mStackSupervisor.getActivityMetricsLogger().notifyVisibilityChanged(this);
        this.mStackSupervisor.mAppVisibilitiesChangedSinceLastPause = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    void setVisibility(boolean z, boolean z2) {
        int i;
        WindowState windowStateFindFocusedWindow;
        ActivityRecord activityRecord;
        AppTransition appTransition = getDisplayContent().mAppTransition;
        if (!z && !this.mVisibleRequested) {
            if (!z2 && this.mLastDeferHidingClient) {
                this.mLastDeferHidingClient = z2;
                setClientVisible(false);
                return;
            }
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -374767836, 972, null, String.valueOf(this.appToken), Boolean.valueOf(z), String.valueOf(appTransition), Boolean.valueOf(isVisible()), Boolean.valueOf(this.mVisibleRequested), String.valueOf(Debug.getCallers(6)));
        }
        onChildVisibilityRequested(z);
        DisplayContent displayContent = getDisplayContent();
        displayContent.mOpeningApps.remove(this);
        displayContent.mClosingApps.remove(this);
        this.waitingToShow = false;
        this.mVisibleRequested = z;
        this.mLastDeferHidingClient = z2;
        if (!z) {
            removeDeadWindows();
        } else {
            if (!appTransition.isTransitionSet() && appTransition.isReady()) {
                displayContent.mOpeningApps.add(this);
            }
            this.startingMoved = false;
            if (!isVisible() || this.mAppStopped) {
                clearAllDrawn();
                if (isVisible()) {
                    i = 1;
                } else {
                    i = 1;
                    i = 1;
                    this.waitingToShow = true;
                    if (!isClientVisible()) {
                        forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ActivityRecord.lambda$setVisibility$6((WindowState) obj);
                            }
                        }, true);
                    }
                }
            } else {
                i = 1;
            }
            setClientVisible(i);
            requestUpdateWallpaperIfNeeded();
            if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                String strValueOf = String.valueOf(this);
                ProtoLogGroup protoLogGroup = ProtoLogGroup.WM_DEBUG_ADD_REMOVE;
                Object[] objArr = new Object[i];
                objArr[0] = strValueOf;
                ProtoLogImpl.v(protoLogGroup, 1224184681, 0, null, objArr);
            }
            this.mAppStopped = false;
            transferStartingWindowFromHiddenAboveTokenIfNeeded();
        }
        if (!okToAnimate(true) || !appTransition.isTransitionSet()) {
            commitVisibility(z, true);
            updateReportedVisibilityLocked();
            return;
        }
        if (z) {
            displayContent.mOpeningApps.add(this);
            this.mEnteringAnimation = true;
        } else {
            displayContent.mClosingApps.add(this);
            this.mEnteringAnimation = false;
        }
        if (appTransition.getAppTransition() == 16 && (windowStateFindFocusedWindow = getDisplayContent().findFocusedWindow()) != null && (activityRecord = windowStateFindFocusedWindow.mActivityRecord) != null) {
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -1847087163, 0, null, String.valueOf(activityRecord));
            }
            displayContent.mOpeningApps.add(activityRecord);
        }
    }

    static /* synthetic */ void lambda$setVisibility$6(WindowState w) {
        if (w.mWinAnimator.mDrawState == 4) {
            w.mWinAnimator.resetDrawState();
            w.resetLastContentInsets();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean applyAnimation(WindowManager.LayoutParams lp, int transit, boolean enter, boolean isVoiceInteraction, ArrayList<WindowContainer> sources) {
        if (this.mUseTransferredAnimation) {
            return false;
        }
        return super.applyAnimation(lp, transit, enter, isVoiceInteraction, sources);
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
    void commitVisibility(boolean visible, boolean performLayout) {
        this.mVisibleSetFromTransferredStartingWindow = false;
        if (visible == isVisible()) {
            return;
        }
        int windowsCount = this.mChildren.size();
        for (int i = 0; i < windowsCount; i++) {
            ((WindowState) this.mChildren.get(i)).onAppVisibilityChanged(visible, isAnimating(2));
        }
        setVisible(visible);
        this.mVisibleRequested = visible;
        if (!visible) {
            stopFreezingScreen(true, true);
        } else {
            WindowState windowState = this.startingWindow;
            if (windowState != null && !windowState.isDrawnLw()) {
                this.startingWindow.clearPolicyVisibilityFlag(1);
                this.startingWindow.mLegacyPolicyVisibilityAfterAnim = false;
            }
            final WindowManagerService windowManagerService = this.mWmService;
            Objects.requireNonNull(windowManagerService);
            forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    windowManagerService.makeWindowFreezingScreenIfNeededLocked((WindowState) obj);
                }
            }, true);
        }
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
            String protoLogParam0 = String.valueOf(this);
            boolean protoLogParam1 = isVisible();
            boolean protoLogParam2 = this.mVisibleRequested;
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -1521427940, 60, null, protoLogParam0, Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2));
        }
        DisplayContent displayContent = getDisplayContent();
        displayContent.getInputMonitor().setUpdateInputWindowsNeededLw();
        if (performLayout) {
            this.mWmService.updateFocusedWindowLocked(3, false);
            this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
        }
        displayContent.getInputMonitor().updateInputWindowsLw(false);
        this.mUseTransferredAnimation = false;
        postApplyAnimation(visible);
    }

    private void postApplyAnimation(boolean visible) {
        boolean delayed = isAnimating(6);
        if (!delayed) {
            onAnimationFinished(1, null);
            if (visible) {
                this.mEnteringAnimation = true;
                this.mWmService.mActivityManagerAppTransitionNotifier.onAppTransitionFinishedLocked(this.token);
            }
        }
        if (visible || !isAnimating(2)) {
            setClientVisible(visible);
        }
        DisplayContent displayContent = getDisplayContent();
        if (!displayContent.mClosingApps.contains(this) && !displayContent.mOpeningApps.contains(this)) {
            this.mWmService.mTaskSnapshotController.notifyAppVisibilityChanged(this, visible);
        }
        if (!isVisible() && !delayed && !displayContent.mAppTransition.isTransitionSet()) {
            SurfaceControl.openTransaction();
            try {
                forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$TmL40hmGhjc2_QavTI0gwtolvY8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((WindowState) obj).mWinAnimator.hide("immediately hidden");
                    }
                }, true);
            } finally {
                SurfaceControl.closeTransaction();
            }
        }
    }

    boolean shouldApplyAnimation(boolean visible) {
        if (isVisible() != visible) {
            return true;
        }
        if (isVisible() || !this.mIsExiting) {
            return visible && forAllWindows((ToBooleanFunction<WindowState>) $$Lambda$zuO3rEvETpKsuJLTTdIHB2ijeho.INSTANCE, true);
        }
        return true;
    }

    void setDisablePreviewScreenshots(boolean disable) {
        this.mDisablePreviewScreenshots = disable;
    }

    boolean shouldUseAppThemeSnapshot() {
        return this.mDisablePreviewScreenshots || forAllWindows((ToBooleanFunction<WindowState>) new ToBooleanFunction() { // from class: com.android.server.wm.-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI
            public final boolean apply(Object obj) {
                return ((WindowState) obj).isSecureLocked();
            }
        }, true);
    }

    void setCurrentLaunchCanTurnScreenOn(boolean currentLaunchCanTurnScreenOn) {
        this.mCurrentLaunchCanTurnScreenOn = currentLaunchCanTurnScreenOn;
    }

    boolean currentLaunchCanTurnScreenOn() {
        return this.mCurrentLaunchCanTurnScreenOn;
    }

    void setState(ActivityStack.ActivityState state, String reason) {
        Slog.v("ActivityTaskManager", "State movement: " + this + " from:" + getState() + " to:" + state + " reason:" + reason);
        if (state == this.mState) {
            Slog.v("ActivityTaskManager", "State unchanged from:" + state);
            return;
        }
        this.mState = state;
        Task task = this.task;
        if (task != null) {
            task.onActivityStateChanged(this, state, reason);
        }
        if (state == ActivityStack.ActivityState.STOPPING && !isSleeping()) {
            if (getParent() == null) {
                Slog.w("WindowManager", "Attempted to notify stopping on non-existing app token: " + this.appToken);
                return;
            }
            detachChildren();
        }
        if (state == ActivityStack.ActivityState.RESUMED) {
            this.mAtmService.updateBatteryStats(this, true);
            this.mAtmService.updateActivityUsageStats(this, 1);
        } else if (state == ActivityStack.ActivityState.PAUSED) {
            this.mAtmService.updateBatteryStats(this, false);
            this.mAtmService.updateActivityUsageStats(this, 2);
        } else if (state == ActivityStack.ActivityState.STOPPED) {
            this.mAtmService.updateActivityUsageStats(this, 23);
        } else if (state == ActivityStack.ActivityState.DESTROYED) {
            this.mAtmService.updateActivityUsageStats(this, 24);
        }
    }

    ActivityStack.ActivityState getState() {
        return this.mState;
    }

    boolean isState(ActivityStack.ActivityState state) {
        return state == this.mState;
    }

    boolean isState(ActivityStack.ActivityState state1, ActivityStack.ActivityState state2) {
        ActivityStack.ActivityState activityState = this.mState;
        return state1 == activityState || state2 == activityState;
    }

    boolean isState(ActivityStack.ActivityState state1, ActivityStack.ActivityState state2, ActivityStack.ActivityState state3) {
        ActivityStack.ActivityState activityState = this.mState;
        return state1 == activityState || state2 == activityState || state3 == activityState;
    }

    boolean isState(ActivityStack.ActivityState state1, ActivityStack.ActivityState state2, ActivityStack.ActivityState state3, ActivityStack.ActivityState state4) {
        ActivityStack.ActivityState activityState = this.mState;
        return state1 == activityState || state2 == activityState || state3 == activityState || state4 == activityState;
    }

    boolean isState(ActivityStack.ActivityState state1, ActivityStack.ActivityState state2, ActivityStack.ActivityState state3, ActivityStack.ActivityState state4, ActivityStack.ActivityState state5) {
        ActivityStack.ActivityState activityState = this.mState;
        return state1 == activityState || state2 == activityState || state3 == activityState || state4 == activityState || state5 == activityState;
    }

    boolean isState(ActivityStack.ActivityState state1, ActivityStack.ActivityState state2, ActivityStack.ActivityState state3, ActivityStack.ActivityState state4, ActivityStack.ActivityState state5, ActivityStack.ActivityState state6) {
        ActivityStack.ActivityState activityState = this.mState;
        return state1 == activityState || state2 == activityState || state3 == activityState || state4 == activityState || state5 == activityState || state6 == activityState;
    }

    void destroySurfaces() {
        destroySurfaces(false);
    }

    private void destroySurfaces(boolean cleanupOnResume) {
        boolean destroyedSomething = false;
        ArrayList<WindowState> children = new ArrayList<>(this.mChildren);
        for (int i = children.size() - 1; i >= 0; i--) {
            WindowState win = children.get(i);
            destroyedSomething |= win.destroySurface(cleanupOnResume, this.mAppStopped);
        }
        if (destroyedSomething) {
            DisplayContent dc = getDisplayContent();
            dc.assignWindowLayers(true);
            updateLetterboxSurface(null);
        }
    }

    void notifyAppResumed(boolean wasStopped) {
        if (getParent() == null) {
            Slog.w("WindowManager", "Attempted to notify resumed of non-existing app token: " + this.appToken);
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam1 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1364498663, 3, null, Boolean.valueOf(wasStopped), protoLogParam1);
        }
        this.mAppStopped = false;
        setCurrentLaunchCanTurnScreenOn(true);
        if (!wasStopped) {
            destroySurfaces(true);
        }
    }

    void notifyAppStopped() {
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1903353011, 0, null, protoLogParam0);
        }
        this.mAppStopped = true;
        this.mDisplayContent.mPinnedStackControllerLocked.onActivityHidden(this.mActivityComponent);
        destroySurfaces();
        removeStartingWindow();
    }

    void notifyUnknownVisibilityLaunchedForKeyguardTransition() {
        if (this.noDisplay || !this.mStackSupervisor.getKeyguardController().isKeyguardLocked()) {
            return;
        }
        this.mDisplayContent.mUnknownAppVisibilityController.notifyLaunched(this);
    }

    boolean shouldBeVisible(boolean behindFullscreenActivity, boolean ignoringKeyguard) {
        boolean z = (!behindFullscreenActivity || this.mLaunchTaskBehind) && okToShowLocked();
        this.visibleIgnoringKeyguard = z;
        if (ignoringKeyguard) {
            return z;
        }
        ActivityStack stack = getRootTask();
        if (stack == null) {
            return false;
        }
        if (inPinnedWindowingMode() && stack.isForceHidden()) {
            return false;
        }
        boolean isTop = this == stack.getTopNonFinishingActivity();
        boolean isTopNotPinnedStack = stack.isAttached() && stack.getDisplayArea().isTopNotPinnedStack(stack);
        boolean visibleIgnoringDisplayStatus = stack.checkKeyguardVisibility(this, this.visibleIgnoringKeyguard, isTop && isTopNotPinnedStack);
        if (visibleIgnoringDisplayStatus && getDisplay().isSleeping()) {
            return !this.mSetToSleep || canTurnScreenOn();
        }
        return visibleIgnoringDisplayStatus;
    }

    boolean shouldBeVisible() {
        ActivityStack stack = getRootTask();
        if (stack == null) {
            return false;
        }
        boolean behindFullscreenActivity = stack.checkBehindFullscreenActivity(this, null);
        return shouldBeVisible(behindFullscreenActivity, false);
    }

    void makeVisibleIfNeeded(ActivityRecord starting, boolean reportToClient) {
        if ((this.mState == ActivityStack.ActivityState.RESUMED && this.mVisibleRequested) || this == starting) {
            return;
        }
        ActivityStack stack = getRootTask();
        try {
            if (stack.mTranslucentActivityWaiting != null) {
                updateOptionsLocked(this.returningOptions);
                stack.mUndrawnActivitiesBelowTopTranslucent.add(this);
            }
            setVisibility(true);
            this.mSetToSleep = false;
            this.app.postPendingUiCleanMsg(true);
            if (reportToClient) {
                this.mClientVisibilityDeferred = false;
                makeActiveIfNeeded(starting);
            } else {
                this.mClientVisibilityDeferred = true;
            }
            this.mStackSupervisor.mStoppingActivities.remove(this);
        } catch (Exception e) {
            Slog.w("ActivityTaskManager", "Exception thrown making visible: " + this.intent.getComponent(), e);
        }
        handleAlreadyVisible();
    }

    void makeInvisible() {
        boolean deferHidingClient;
        if (this.mVisibleRequested) {
            try {
                boolean canEnterPictureInPicture = checkEnterPictureInPictureState("makeInvisible", true);
                if (canEnterPictureInPicture && !isState(ActivityStack.ActivityState.STARTED, ActivityStack.ActivityState.STOPPING, ActivityStack.ActivityState.STOPPED, ActivityStack.ActivityState.PAUSED)) {
                    deferHidingClient = true;
                } else {
                    deferHidingClient = false;
                }
                setDeferHidingClient(deferHidingClient);
                setVisibility(false);
                switch (AnonymousClass5.$SwitchMap$com$android$server$wm$ActivityStack$ActivityState[getState().ordinal()]) {
                    case 1:
                        if (deferHidingClient) {
                            getRootTask().startPausingLocked(this.mStackSupervisor.mUserLeaving, false, null);
                            return;
                        }
                        break;
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                        break;
                    case 4:
                    case 5:
                        this.supportsEnterPipOnTaskSwitch = false;
                        return;
                    default:
                        return;
                }
                addToStopping(true, canEnterPictureInPicture, "makeInvisible");
            } catch (Exception e) {
                Slog.w("ActivityTaskManager", "Exception thrown making hidden: " + this.intent.getComponent(), e);
            }
        }
    }

    boolean makeActiveIfNeeded(ActivityRecord activeActivity) {
        if (shouldResumeActivity(activeActivity)) {
            return getRootTask().resumeTopActivityUncheckedLocked(activeActivity, null);
        }
        if (shouldPauseActivity(activeActivity)) {
            setState(ActivityStack.ActivityState.PAUSING, "makeActiveIfNeeded");
            try {
                this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, PauseActivityItem.obtain(this.finishing, false, this.configChangeFlags, false));
            } catch (Exception e) {
                Slog.w("ActivityTaskManager", "Exception thrown sending pause: " + this.intent.getComponent(), e);
            }
        } else if (shouldStartActivity()) {
            setState(ActivityStack.ActivityState.STARTED, "makeActiveIfNeeded");
            WindowProcessController windowProcessController = this.app;
            if (windowProcessController != null) {
                windowProcessController.updateProcessInfo(false, true, true, true);
            }
            try {
                this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, StartActivityItem.obtain());
            } catch (Exception e2) {
                Slog.w("ActivityTaskManager", "Exception thrown sending start: " + this.intent.getComponent(), e2);
            }
            this.mStackSupervisor.mStoppingActivities.remove(this);
        }
        return false;
    }

    boolean shouldPauseActivity(ActivityRecord activeActivity) {
        return shouldMakeActive(activeActivity) && !isFocusable() && !isState(ActivityStack.ActivityState.PAUSING, ActivityStack.ActivityState.PAUSED) && this.results == null;
    }

    boolean shouldResumeActivity(ActivityRecord activeActivity) {
        return shouldBeResumed(activeActivity) && !isState(ActivityStack.ActivityState.RESUMED);
    }

    private boolean shouldBeResumed(ActivityRecord activeActivity) {
        return shouldMakeActive(activeActivity) && isFocusable() && getTask().getVisibility(activeActivity) == 0 && canResumeByCompat();
    }

    private boolean shouldStartActivity() {
        return this.mVisibleRequested && (isState(ActivityStack.ActivityState.STOPPED) || isState(ActivityStack.ActivityState.STOPPING));
    }

    boolean shouldMakeActive(ActivityRecord activeActivity) {
        if (!isState(ActivityStack.ActivityState.STARTED, ActivityStack.ActivityState.RESUMED, ActivityStack.ActivityState.PAUSED, ActivityStack.ActivityState.STOPPED, ActivityStack.ActivityState.STOPPING) || getRootTask().mTranslucentActivityWaiting != null || this == activeActivity || !this.mStackSupervisor.readyToResume() || this.mLaunchTaskBehind) {
            return false;
        }
        if (this.task.hasChild(this)) {
            return this.task.topRunningActivity() == this;
        }
        throw new IllegalStateException("Activity not found in its task");
    }

    void handleAlreadyVisible() {
        stopFreezingScreenLocked(false);
        try {
            if (this.returningOptions != null) {
                this.app.getThread().scheduleOnNewActivityOptions(this.appToken, this.returningOptions.toBundle());
            }
        } catch (RemoteException e) {
        }
    }

    static void activityResumedLocked(IBinder token) {
        ActivityRecord r = forTokenLocked(token);
        Slog.i("ActivityTaskManager", "Resumed activity; dropping state of: " + r);
        if (r == null) {
            return;
        }
        r.setSavedState(null);
        DisplayContent display = r.getDisplay();
        if (display != null) {
            display.handleActivitySizeCompatModeIfNeeded(r);
        }
        r.getDisplayContent().mUnknownAppVisibilityController.notifyAppResumedFinished(r);
    }

    void completeResumeLocked() {
        boolean wasVisible = this.mVisibleRequested;
        setVisibility(true);
        if (!wasVisible) {
            this.mStackSupervisor.mAppVisibilitiesChangedSinceLastPause = true;
        }
        this.idle = false;
        this.results = null;
        ArrayList<ReferrerIntent> arrayList = this.newIntents;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList<ReferrerIntent> arrayList2 = this.newIntents;
            this.mLastNewIntent = arrayList2.get(arrayList2.size() - 1);
        }
        this.newIntents = null;
        this.stopped = false;
        if (isActivityTypeHome()) {
            this.mStackSupervisor.updateHomeProcess(this.task.getBottomMostActivity().app);
        }
        if (this.nowVisible) {
            this.mStackSupervisor.stopWaitingForActivityVisible(this);
        }
        this.mStackSupervisor.scheduleIdleTimeout(this);
        this.mStackSupervisor.reportResumedActivityLocked(this);
        resumeKeyDispatchingLocked();
        ActivityStack stack = getRootTask();
        this.mStackSupervisor.mNoAnimActivities.clear();
        if (hasProcess()) {
            this.cpuTimeAtResume = this.app.getCpuTime();
        } else {
            this.cpuTimeAtResume = 0L;
        }
        this.returningOptions = null;
        if (canTurnScreenOn()) {
            this.mStackSupervisor.wakeUp("turnScreenOnFlag");
        } else {
            stack.checkReadyForSleep();
        }
    }

    void activityPaused(boolean timeout) {
        Slog.v("ActivityTaskManager", "Activity paused: token=" + this.appToken + ", timeout=" + timeout);
        ActivityStack stack = getStack();
        if (stack != null) {
            removePauseTimeout();
            if (stack.mPausingActivity == this) {
                StringBuilder sb = new StringBuilder();
                sb.append("Moving to PAUSED: ");
                sb.append(this);
                sb.append(timeout ? " (due to timeout)" : " (pause complete)");
                Slog.v("ActivityTaskManager", sb.toString());
                this.mAtmService.deferWindowLayout();
                try {
                    stack.completePauseLocked(true, null);
                    return;
                } finally {
                    this.mAtmService.continueWindowLayout();
                }
            }
            EventLogTags.writeWmFailedToPause(this.mUserId, System.identityHashCode(this), this.shortComponentName, stack.mPausingActivity != null ? stack.mPausingActivity.shortComponentName : "(none)");
            if (isState(ActivityStack.ActivityState.PAUSING)) {
                setState(ActivityStack.ActivityState.PAUSED, "activityPausedLocked");
                if (this.finishing) {
                    Slog.v("ActivityTaskManager", "Executing finish of failed to pause activity: " + this);
                    completeFinishing("activityPausedLocked");
                }
            }
        }
        this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
    }

    void schedulePauseTimeout() {
        this.pauseTime = SystemClock.uptimeMillis();
        this.mAtmService.mH.postDelayed(this.mPauseTimeoutRunnable, 500L);
        Slog.v("ActivityTaskManager", "Waiting for pause to complete...");
    }

    private void removePauseTimeout() {
        this.mAtmService.mH.removeCallbacks(this.mPauseTimeoutRunnable);
    }

    private void removeDestroyTimeout() {
        this.mAtmService.mH.removeCallbacks(this.mDestroyTimeoutRunnable);
    }

    private void removeStopTimeout() {
        this.mAtmService.mH.removeCallbacks(this.mStopTimeoutRunnable);
    }

    void removeTimeouts() {
        this.mStackSupervisor.removeIdleTimeoutForActivity(this);
        removePauseTimeout();
        removeStopTimeout();
        removeDestroyTimeout();
        finishLaunchTickingLocked();
    }

    void stopIfPossible() {
        Slog.d("ActivityTaskManager", "Stopping: " + this);
        ActivityStack stack = getRootTask();
        if (isNoHistory() && !this.finishing) {
            if (!stack.shouldSleepActivities()) {
                Slog.d("ActivityTaskManager", "no-history finish of " + this);
                if (finishIfPossible("stop-no-history", false) != 0) {
                    resumeKeyDispatchingLocked();
                    return;
                }
            } else {
                Slog.d("ActivityTaskManager", "Not finishing noHistory " + this + " on stop because we're just sleeping");
            }
        }
        if (!attachedToProcess()) {
            return;
        }
        resumeKeyDispatchingLocked();
        try {
            this.stopped = false;
            Slog.v("ActivityTaskManager", "Moving to STOPPING: " + this + " (stop requested)");
            setState(ActivityStack.ActivityState.STOPPING, "stopIfPossible");
            EventLogTags.writeWmStopActivity(this.mUserId, System.identityHashCode(this), this.shortComponentName);
            this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, StopActivityItem.obtain(this.configChangeFlags));
            if (stack.shouldSleepOrShutDownActivities()) {
                setSleeping(true);
            }
            this.mAtmService.mH.postDelayed(this.mStopTimeoutRunnable, 11000L);
        } catch (Exception e) {
            Slog.w("ActivityTaskManager", "Exception thrown during pause", e);
            this.stopped = true;
            Slog.v("ActivityTaskManager", "Stop failed; moving to STOPPED: " + this);
            setState(ActivityStack.ActivityState.STOPPED, "stopIfPossible");
            if (this.deferRelaunchUntilPaused) {
                destroyImmediately(true, "stop-except");
            }
        }
    }

    void activityStopped(Bundle newIcicle, PersistableBundle newPersistentState, CharSequence description) {
        getRootTask();
        boolean isStopping = this.mState == ActivityStack.ActivityState.STOPPING;
        if (!isStopping && this.mState != ActivityStack.ActivityState.RESTARTING_PROCESS) {
            Slog.i("ActivityTaskManager", "Activity reported stop, but no longer stopping: " + this);
            removeStopTimeout();
            return;
        }
        if (newPersistentState != null) {
            this.mPersistentState = newPersistentState;
            this.mAtmService.notifyTaskPersisterLocked(this.task, false);
        }
        if (newIcicle != null) {
            setSavedState(newIcicle);
            this.launchCount = 0;
            updateTaskDescription(description);
        }
        Slog.i("ActivityTaskManager", "Saving icicle of " + this + ": " + this.mIcicle);
        if (!this.stopped) {
            Slog.v("ActivityTaskManager", "Moving to STOPPED: " + this + " (stop complete)");
            removeStopTimeout();
            this.stopped = true;
            if (isStopping) {
                setState(ActivityStack.ActivityState.STOPPED, "activityStoppedLocked");
            }
            notifyAppStopped();
            if (this.finishing) {
                clearOptionsLocked();
            } else if (this.deferRelaunchUntilPaused) {
                destroyImmediately(true, "stop-config");
                this.mRootWindowContainer.resumeFocusedStacksTopActivities();
            } else {
                this.mRootWindowContainer.updatePreviousProcess(this);
            }
        }
    }

    void addToStopping(boolean scheduleIdle, boolean idleDelayed, String reason) {
        if (!this.mStackSupervisor.mStoppingActivities.contains(this)) {
            EventLogTags.writeWmAddToStopping(this.mUserId, System.identityHashCode(this), this.shortComponentName, reason);
            this.mStackSupervisor.mStoppingActivities.add(this);
        }
        ActivityStack stack = getRootTask();
        boolean z = true;
        if (this.mStackSupervisor.mStoppingActivities.size() <= 3 && (!isRootOfTask() || stack.getChildCount() > 1)) {
            z = false;
        }
        boolean forceIdle = z;
        if (scheduleIdle || forceIdle) {
            StringBuilder sb = new StringBuilder();
            sb.append("Scheduling idle now: forceIdle=");
            sb.append(forceIdle);
            sb.append("immediate=");
            sb.append(!idleDelayed);
            Slog.v("ActivityTaskManager", sb.toString());
            if (!idleDelayed) {
                this.mStackSupervisor.scheduleIdle();
                return;
            } else {
                this.mStackSupervisor.scheduleIdleTimeout(this);
                return;
            }
        }
        stack.checkReadyForSleep();
    }

    void startLaunchTickingLocked() {
        if (!Build.IS_USER && this.launchTickTime == 0) {
            this.launchTickTime = SystemClock.uptimeMillis();
            continueLaunchTicking();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean continueLaunchTicking() {
        ActivityStack stack;
        if (this.launchTickTime == 0 || (stack = getRootTask()) == null) {
            return false;
        }
        stack.removeLaunchTickMessages();
        this.mAtmService.mH.postDelayed(this.mLaunchTickRunnable, 500L);
        return true;
    }

    void removeLaunchTickRunnable() {
        this.mAtmService.mH.removeCallbacks(this.mLaunchTickRunnable);
    }

    void finishLaunchTickingLocked() {
        this.launchTickTime = 0L;
        ActivityStack stack = getRootTask();
        if (stack == null) {
            return;
        }
        stack.removeLaunchTickMessages();
    }

    boolean mayFreezeScreenLocked() {
        return mayFreezeScreenLocked(this.app);
    }

    private boolean mayFreezeScreenLocked(WindowProcessController app) {
        return (!hasProcess() || app.isCrashing() || app.isNotResponding()) ? false : true;
    }

    void startFreezingScreenLocked(int configChanges) {
        startFreezingScreenLocked(this.app, configChanges);
    }

    void startFreezingScreenLocked(WindowProcessController app, int configChanges) {
        if (mayFreezeScreenLocked(app)) {
            if (getParent() == null) {
                Slog.w("WindowManager", "Attempted to freeze screen with non-existing app token: " + this.appToken);
                return;
            }
            int freezableConfigChanges = (-536870913) & configChanges;
            if (freezableConfigChanges == 0 && okToDisplay()) {
                if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                    String protoLogParam0 = String.valueOf(this.appToken);
                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1836306327, 0, null, protoLogParam0);
                    return;
                }
                return;
            }
            startFreezingScreen();
        }
    }

    void startFreezingScreen() {
        startFreezingScreen(-1);
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
    void startFreezingScreen(int overrideOriginalDisplayRotation) {
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            String protoLogParam0 = String.valueOf(this.appToken);
            boolean protoLogParam1 = isVisible();
            boolean protoLogParam2 = this.mFreezingScreen;
            boolean protoLogParam3 = this.mVisibleRequested;
            String protoLogParam4 = String.valueOf(new RuntimeException().fillInStackTrace());
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_ORIENTATION, 1746778201, AudioChannelMask.IN_6, null, protoLogParam0, Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2), Boolean.valueOf(protoLogParam3), protoLogParam4);
        }
        if (!this.mVisibleRequested) {
            return;
        }
        boolean forceRotation = overrideOriginalDisplayRotation != -1;
        if (!this.mFreezingScreen) {
            this.mFreezingScreen = true;
            this.mWmService.registerAppFreezeListener(this);
            this.mWmService.mAppsFreezingScreen++;
            if (this.mWmService.mAppsFreezingScreen == 1) {
                if (forceRotation) {
                    this.mDisplayContent.getDisplayRotation().cancelSeamlessRotation();
                }
                this.mWmService.startFreezingDisplay(0, 0, this.mDisplayContent, overrideOriginalDisplayRotation);
                this.mWmService.mH.removeMessages(17);
                this.mWmService.mH.sendEmptyMessageDelayed(17, 2000L);
            }
        }
        if (forceRotation) {
            return;
        }
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            WindowState w = (WindowState) this.mChildren.get(i);
            w.onStartFreezingScreen();
        }
    }

    boolean isFreezingScreen() {
        return this.mFreezingScreen;
    }

    @Override // com.android.server.wm.WindowManagerService.AppFreezeListener
    public void onAppFreezeTimeout() {
        Slog.w("WindowManager", "Force clearing freeze: " + this);
        stopFreezingScreen(true, true);
    }

    void stopFreezingScreenLocked(boolean force) {
        if (force || this.frozenBeforeDestroy) {
            this.frozenBeforeDestroy = false;
            if (getParent() == null) {
                return;
            }
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(this.appToken);
                boolean protoLogParam1 = isVisible();
                boolean protoLogParam2 = isFreezingScreen();
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 466506262, 60, null, protoLogParam0, Boolean.valueOf(protoLogParam1), Boolean.valueOf(protoLogParam2));
            }
            stopFreezingScreen(true, force);
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
    void stopFreezingScreen(boolean unfreezeSurfaceNow, boolean force) {
        if (!this.mFreezingScreen) {
            return;
        }
        if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, 539077569, 12, null, protoLogParam0, Boolean.valueOf(force));
        }
        int count = this.mChildren.size();
        boolean unfrozeWindows = false;
        for (int i = 0; i < count; i++) {
            WindowState w = (WindowState) this.mChildren.get(i);
            unfrozeWindows |= w.onStopFreezingScreen();
        }
        if (force || unfrozeWindows) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam1 = String.valueOf(this);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -251259736, 0, null, protoLogParam1);
            }
            this.mFreezingScreen = false;
            this.mWmService.unregisterAppFreezeListener(this);
            this.mWmService.mAppsFreezingScreen--;
            this.mWmService.mLastFinishedFreezeSource = this;
        }
        if (unfreezeSurfaceNow) {
            if (unfrozeWindows) {
                this.mWmService.mWindowPlacerLocked.performSurfacePlacement();
            }
            this.mWmService.stopFreezingDisplayLocked();
        }
    }

    void reportFullyDrawnLocked(boolean restoredFromBundle) {
        ActivityMetricsLogger.TransitionInfoSnapshot info = this.mStackSupervisor.getActivityMetricsLogger().logAppTransitionReportedDrawn(this, restoredFromBundle);
        if (info != null) {
            this.mStackSupervisor.reportActivityLaunchedLocked(false, this, info.windowsFullyDrawnDelayMs, info.getLaunchState());
        }
    }

    void onFirstWindowDrawn(WindowState win, WindowStateAnimator winAnimator) {
        this.firstWindowDrawn = true;
        removeDeadWindows();
        if (this.startingWindow != null) {
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam0 = String.valueOf(win.mToken);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1677260366, 0, null, protoLogParam0);
            }
            win.cancelAnimation();
        }
        removeStartingWindow();
        updateReportedVisibilityLocked();
    }

    void onStartingWindowDrawn() {
        Task task = this.task;
        if (task != null) {
            task.setHasBeenVisible(true);
        }
    }

    void onWindowsDrawn(boolean drawn, long timestampNs) {
        this.mDrawn = drawn;
        if (!drawn) {
            return;
        }
        ActivityMetricsLogger.TransitionInfoSnapshot info = this.mStackSupervisor.getActivityMetricsLogger().notifyWindowsDrawn(this, timestampNs);
        boolean validInfo = info != null;
        int windowsDrawnDelayMs = validInfo ? info.windowsDrawnDelayMs : -1;
        int launchState = validInfo ? info.getLaunchState() : -1;
        if (validInfo || this == getDisplayArea().topRunningActivity()) {
            this.mStackSupervisor.reportActivityLaunchedLocked(false, this, windowsDrawnDelayMs, launchState);
            this.mStackSupervisor.stopWaitingForActivityVisible(this, windowsDrawnDelayMs);
        }
        finishLaunchTickingLocked();
        Task task = this.task;
        if (task != null) {
            task.setHasBeenVisible(true);
        }
    }

    void onWindowsVisible() {
        this.mStackSupervisor.stopWaitingForActivityVisible(this);
        Log.v("ActivityTaskManager", "windowsVisibleLocked(): " + this);
        if (!this.nowVisible) {
            this.nowVisible = true;
            this.lastVisibleTime = SystemClock.uptimeMillis();
            this.mAtmService.scheduleAppGcsLocked();
        }
    }

    void onWindowsGone() {
        Log.v("ActivityTaskManager", "windowsGone(): " + this);
        this.nowVisible = false;
    }

    @Override // com.android.server.wm.WindowContainer
    void checkAppWindowsReadyToShow() {
        boolean z = this.allDrawn;
        if (z == this.mLastAllDrawn) {
            return;
        }
        this.mLastAllDrawn = z;
        if (!z) {
            return;
        }
        if (this.mFreezingScreen) {
            showAllWindowsLocked();
            stopFreezingScreen(false, true);
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                String protoLogParam0 = String.valueOf(this);
                long protoLogParam1 = this.mNumInterestingWindows;
                long protoLogParam2 = this.mNumDrawnWindows;
                ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_ORIENTATION, 806891543, 20, null, protoLogParam0, Long.valueOf(protoLogParam1), Long.valueOf(protoLogParam2));
            }
            setAppLayoutChanges(4, "checkAppWindowsReadyToShow: freezingScreen");
            return;
        }
        setAppLayoutChanges(8, "checkAppWindowsReadyToShow");
        if (!getDisplayContent().mOpeningApps.contains(this) && canShowWindows()) {
            showAllWindowsLocked();
        }
    }

    void showAllWindowsLocked() {
        forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).performShowLocked();
            }
        }, false);
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
    void updateReportedVisibilityLocked() {
        if (this.appToken == null) {
            return;
        }
        int count = this.mChildren.size();
        this.mReportedVisibilityResults.reset();
        for (int i = 0; i < count; i++) {
            WindowState win = (WindowState) this.mChildren.get(i);
            win.updateReportedVisibility(this.mReportedVisibilityResults);
        }
        int numInteresting = this.mReportedVisibilityResults.numInteresting;
        int numVisible = this.mReportedVisibilityResults.numVisible;
        int numDrawn = this.mReportedVisibilityResults.numDrawn;
        boolean nowGone = this.mReportedVisibilityResults.nowGone;
        boolean nowVisible = false;
        boolean nowDrawn = numInteresting > 0 && numDrawn >= numInteresting;
        if (numInteresting > 0 && numVisible >= numInteresting && isVisible()) {
            nowVisible = true;
        }
        if (!nowGone) {
            if (!nowDrawn) {
                nowDrawn = this.reportedDrawn;
            }
            if (!nowVisible) {
                nowVisible = this.reportedVisible;
            }
        }
        if (nowDrawn != this.reportedDrawn) {
            onWindowsDrawn(nowDrawn, SystemClock.elapsedRealtimeNanos());
            this.reportedDrawn = nowDrawn;
        }
        if (nowVisible != this.reportedVisible) {
            this.reportedVisible = nowVisible;
            if (nowVisible) {
                onWindowsVisible();
            } else {
                onWindowsGone();
            }
        }
    }

    boolean isClientVisible() {
        return this.mClientVisible;
    }

    void setClientVisible(boolean clientVisible) {
        if (this.mClientVisible != clientVisible) {
            if (!clientVisible && this.mDeferHidingClient) {
                return;
            }
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(this);
                String protoLogParam2 = String.valueOf(Debug.getCallers(5));
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, -2006946193, 12, null, protoLogParam0, Boolean.valueOf(clientVisible), protoLogParam2);
            }
            this.mClientVisible = clientVisible;
            sendAppVisibilityToClients();
        }
    }

    boolean updateDrawnWindowStates(WindowState w) {
        w.setDrawnStateEvaluated(true);
        if (this.allDrawn && !this.mFreezingScreen) {
            return false;
        }
        if (this.mLastTransactionSequence != this.mWmService.mTransactionSequence) {
            this.mLastTransactionSequence = this.mWmService.mTransactionSequence;
            this.mNumDrawnWindows = 0;
            this.startingDisplayed = false;
            this.mNumInterestingWindows = findMainWindow(false) != null ? 1 : 0;
        }
        WindowStateAnimator winAnimator = w.mWinAnimator;
        if (this.allDrawn || !w.mightAffectAllDrawn()) {
            return false;
        }
        if (ProtoLogGroup.WM_DEBUG_ORIENTATION.isLogToLogcat()) {
            Slog.v("ActivityTaskManager", "Eval win " + w + ": isDrawn=" + w.isDrawnLw() + ", isAnimationSet=" + isAnimating(3));
            if (!w.isDrawnLw()) {
                Slog.v("ActivityTaskManager", "Not displayed: s=" + winAnimator.mSurfaceController + " pv=" + w.isVisibleByPolicy() + " mDrawState=" + winAnimator.drawStateToString() + " ph=" + w.isParentWindowHidden() + " th=" + this.mVisibleRequested + " a=" + isAnimating(3));
            }
        }
        if (w != this.startingWindow) {
            if (!w.isInteresting()) {
                return false;
            }
            if (findMainWindow(false) != w) {
                this.mNumInterestingWindows++;
            }
            if (w.isDrawnLw()) {
                this.mNumDrawnWindows++;
                if (ProtoLogGroup.WM_DEBUG_ORIENTATION.isLogToLogcat()) {
                    Slog.v("ActivityTaskManager", "tokenMayBeDrawn: " + this + " w=" + w + " numInteresting=" + this.mNumInterestingWindows + " freezingScreen=" + this.mFreezingScreen + " mAppFreezing=" + w.mAppFreezing);
                }
                return true;
            }
            return false;
        }
        if (!w.isDrawnLw()) {
            return false;
        }
        this.mStackSupervisor.getActivityMetricsLogger().notifyStartingWindowDrawn(this);
        this.startingDisplayed = true;
        return false;
    }

    public boolean keyDispatchingTimedOut(String reason, int windowPid) {
        ActivityRecord anrActivity;
        WindowProcessController anrApp;
        boolean windowFromSameProcessAsActivity;
        synchronized (this.mAtmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                anrActivity = getWaitingHistoryRecordLocked();
                anrApp = this.app;
                windowFromSameProcessAsActivity = !hasProcess() || this.app.getPid() == windowPid || windowPid == -1;
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        WindowManagerService.resetPriorityAfterLockedSection();
        if (windowFromSameProcessAsActivity) {
            return this.mAtmService.mAmInternal.inputDispatchingTimedOut(anrApp.mOwner, anrActivity.shortComponentName, anrActivity.info.applicationInfo, this.shortComponentName, this.app, false, reason);
        }
        return this.mAtmService.mAmInternal.inputDispatchingTimedOut(windowPid, false, reason) < 0;
    }

    private ActivityRecord getWaitingHistoryRecordLocked() {
        ActivityStack stack;
        if (!this.stopped || (stack = this.mRootWindowContainer.getTopDisplayFocusedStack()) == null) {
            return this;
        }
        ActivityRecord r = stack.getResumedActivity();
        if (r == null) {
            r = stack.mPausingActivity;
        }
        if (r != null) {
            return r;
        }
        return this;
    }

    public boolean okToShowLocked() {
        if (StorageManager.isUserKeyUnlocked(this.mUserId) || this.info.applicationInfo.isEncryptionAware()) {
            return (this.info.flags & 1024) != 0 || (this.mStackSupervisor.isCurrentProfileLocked(this.mUserId) && this.mAtmService.mAmInternal.isUserRunning(this.mUserId, 0));
        }
        return false;
    }

    boolean canBeTopRunning() {
        return !this.finishing && okToShowLocked();
    }

    public boolean isInterestingToUserLocked() {
        return this.mVisibleRequested || this.nowVisible || this.mState == ActivityStack.ActivityState.PAUSING || this.mState == ActivityStack.ActivityState.RESUMED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSleeping(boolean sleeping) {
        this.mSetToSleep = sleeping;
    }

    static int getTaskForActivityLocked(IBinder token, boolean onlyRoot) {
        ActivityRecord r = forTokenLocked(token);
        if (r == null || r.getParent() == null) {
            return -1;
        }
        Task task = r.task;
        if (onlyRoot && r.compareTo((WindowContainer) task.getRootActivity(false, true)) > 0) {
            return -1;
        }
        return task.mTaskId;
    }

    static ActivityRecord isInStackLocked(IBinder token) {
        ActivityRecord r = forTokenLocked(token);
        if (r != null) {
            return r.getRootTask().isInTask(r);
        }
        return null;
    }

    static ActivityStack getStackLocked(IBinder token) {
        ActivityRecord r = isInStackLocked(token);
        if (r != null) {
            return r.getRootTask();
        }
        return null;
    }

    int getDisplayId() {
        ActivityStack stack = getRootTask();
        if (stack == null) {
            return -1;
        }
        return stack.getDisplayId();
    }

    final boolean isDestroyable() {
        if (this.finishing || !hasProcess()) {
            return false;
        }
        ActivityStack stack = getRootTask();
        return (isState(ActivityStack.ActivityState.RESUMED) || stack == null || this == stack.mPausingActivity || !this.mHaveState || !this.stopped || this.mVisibleRequested) ? false : true;
    }

    private static String createImageFilename(long createTime, int taskId) {
        return String.valueOf(taskId) + ACTIVITY_ICON_SUFFIX + createTime + ".png";
    }

    void setTaskDescription(ActivityManager.TaskDescription _taskDescription) {
        Bitmap icon;
        if (_taskDescription.getIconFilename() == null && (icon = _taskDescription.getIcon()) != null) {
            String iconFilename = createImageFilename(this.createTime, this.task.mTaskId);
            File iconFile = new File(TaskPersister.getUserImagesDir(this.task.mUserId), iconFilename);
            String iconFilePath = iconFile.getAbsolutePath();
            this.mAtmService.getRecentTasks().saveImage(icon, iconFilePath);
            _taskDescription.setIconFilename(iconFilePath);
        }
        this.taskDescription = _taskDescription;
        getTask().updateTaskDescription();
    }

    void setVoiceSessionLocked(IVoiceInteractionSession session) {
        this.voiceSession = session;
        this.pendingVoiceInteractionStart = false;
    }

    void clearVoiceSessionLocked() {
        this.voiceSession = null;
        this.pendingVoiceInteractionStart = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.android.server.wm.ActivityRecord] */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.os.IBinder] */
    void showStartingWindow(ActivityRecord prev, boolean newTask, boolean taskSwitch) {
        if (this.mTaskOverlay) {
            return;
        }
        ActivityOptions activityOptions = this.pendingOptions;
        if (activityOptions != null && activityOptions.getAnimationType() == 5) {
            return;
        }
        CompatibilityInfo compatInfo = this.mAtmService.compatibilityInfoForPackageLocked(this.info.applicationInfo);
        boolean shown = addStartingWindow(this.packageName, this.theme, compatInfo, this.nonLocalizedLabel, this.labelRes, this.icon, this.logo, this.windowFlags, prev != null ? prev.appToken : null, newTask, taskSwitch, isProcessRunning(), allowTaskSnapshot(), this.mState.ordinal() >= ActivityStack.ActivityState.STARTED.ordinal() && this.mState.ordinal() <= ActivityStack.ActivityState.STOPPED.ordinal());
        if (shown) {
            this.mStartingWindowState = 1;
        }
    }

    void cancelInitializing() {
        if (this.mStartingWindowState == 1) {
            this.mStartingWindowState = 2;
            removeStartingWindow();
        }
        if (isState(ActivityStack.ActivityState.INITIALIZING) && !shouldBeVisible(true, true)) {
            this.mDisplayContent.mUnknownAppVisibilityController.appRemovedOrHidden(this);
        }
    }

    void postWindowRemoveStartingWindowCleanup(WindowState win) {
        if (this.startingWindow == win) {
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam0 = String.valueOf(win);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1853793312, 0, null, protoLogParam0);
            }
            removeStartingWindow();
            return;
        }
        if (this.mChildren.size() == 0) {
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, 1671994402, 0, null, (Object[]) null);
            }
            this.mStartingData = null;
            if (this.mVisibleSetFromTransferredStartingWindow) {
                setVisible(false);
                return;
            }
            return;
        }
        if (this.mChildren.size() == 1 && this.startingSurface != null && !isRelaunching()) {
            if (ProtoLog$Cache.WM_DEBUG_STARTING_WINDOW_enabled) {
                String protoLogParam1 = String.valueOf(win);
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_STARTING_WINDOW, -1715268616, 0, null, protoLogParam1);
            }
            removeStartingWindow();
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
    void removeDeadWindows() {
        for (int winNdx = this.mChildren.size() - 1; winNdx >= 0; winNdx--) {
            WindowState win = (WindowState) this.mChildren.get(winNdx);
            if (win.mAppDied) {
                if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
                    String protoLogParam0 = String.valueOf(win);
                    ProtoLogImpl.w(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1515161239, 0, null, protoLogParam0);
                }
                win.mDestroying = true;
                win.removeIfPossible();
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
    boolean hasWindowsAlive() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (!((WindowState) this.mChildren.get(i)).mAppDied) {
                return true;
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
    void setWillReplaceWindows(boolean animate) {
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1878839956, 0, null, protoLogParam0);
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            w.setWillReplaceWindow(animate);
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
    void setWillReplaceChildWindows() {
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1471946192, 0, null, protoLogParam0);
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            w.setWillReplaceChildWindows();
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
    void clearWillReplaceWindows() {
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, -1698815688, 0, null, protoLogParam0);
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            w.clearWillReplaceWindow();
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
    void requestUpdateWallpaperIfNeeded() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState w = (WindowState) this.mChildren.get(i);
            w.requestUpdateWallpaperIfNeeded();
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
    WindowState getTopFullscreenOpaqueWindow() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState win = (WindowState) this.mChildren.get(i);
            if (win != null && win.mAttrs.isFullscreen() && !win.isFullyTransparent()) {
                return win;
            }
        }
        return null;
    }

    WindowState findMainWindow() {
        return findMainWindow(true);
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
    WindowState findMainWindow(boolean includeStartingApp) {
        WindowState candidate = null;
        for (int j = this.mChildren.size() - 1; j >= 0; j--) {
            WindowState win = (WindowState) this.mChildren.get(j);
            int type = win.mAttrs.type;
            if (type == 1 || (includeStartingApp && type == 3)) {
                if (win.mAnimatingExit) {
                    candidate = win;
                } else {
                    return win;
                }
            }
        }
        return candidate;
    }

    SurfaceControl getAppAnimationLayer() {
        int i;
        if (isActivityTypeHome()) {
            i = 2;
        } else {
            i = needsZBoost() ? 1 : 0;
        }
        return getAppAnimationLayer(i);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean needsZBoost() {
        return this.mNeedsZBoost || super.needsZBoost();
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getAnimationLeashParent() {
        if (inPinnedWindowingMode()) {
            return getStack().getSurfaceControl();
        }
        if (WindowManagerService.sHierarchicalAnimations) {
            return super.getAnimationLeashParent();
        }
        return getAppAnimationLayer();
    }

    boolean shouldAnimate() {
        Task task = this.task;
        return task == null || task.shouldAnimate();
    }

    private SurfaceControl createAnimationBoundsLayer(SurfaceControl.Transaction t) {
        if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_ANIM_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS_ANIM, 1720229827, 0, null, (Object[]) null);
        }
        SurfaceControl.Builder builder = makeAnimationLeash().setParent(getAnimationLeashParent()).setName(getSurfaceControl() + " - animation-bounds").setCallsite("ActivityRecord.createAnimationBoundsLayer");
        SurfaceControl boundsLayer = builder.build();
        t.show(boundsLayer);
        return boundsLayer;
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public boolean shouldDeferAnimationFinish(Runnable endDeferFinishCallback) {
        AnimatingActivityRegistry animatingActivityRegistry = this.mAnimatingActivityRegistry;
        return animatingActivityRegistry != null && animatingActivityRegistry.notifyAboutToFinish(this, endDeferFinishCallback);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isWaitingForTransitionStart() {
        DisplayContent dc = getDisplayContent();
        return dc != null && dc.mAppTransition.isTransitionSet() && (dc.mOpeningApps.contains(this) || dc.mClosingApps.contains(this) || dc.mChangingContainers.contains(this));
    }

    private int getAnimationLayer() {
        int layer;
        if (!inPinnedWindowingMode()) {
            layer = getPrefixOrderIndex();
        } else {
            layer = getParent().getPrefixOrderIndex();
        }
        if (this.mNeedsZBoost) {
            return layer + Z_BOOST_BASE;
        }
        return layer;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashCreated(SurfaceControl.Transaction t, SurfaceControl leash) {
        t.setLayer(leash, getAnimationLayer());
        getDisplayContent().assignStackOrdering();
    }

    @Override // com.android.server.wm.SurfaceAnimator.Animatable
    public void onLeashAnimationStarting(SurfaceControl.Transaction t, SurfaceControl leash) {
        AnimatingActivityRegistry animatingActivityRegistry = this.mAnimatingActivityRegistry;
        if (animatingActivityRegistry != null) {
            animatingActivityRegistry.notifyStarting(this);
        }
        if (this.mNeedsAnimationBoundsLayer) {
            this.mTmpRect.setEmpty();
            if (getDisplayContent().mAppTransitionController.isTransitWithinTask(getTransit(), this.task)) {
                this.task.getBounds(this.mTmpRect);
            } else {
                ActivityStack stack = getStack();
                if (stack == null) {
                    return;
                } else {
                    stack.getBounds(this.mTmpRect);
                }
            }
            this.mAnimationBoundsLayer = createAnimationBoundsLayer(t);
            if (!WindowManagerService.sHierarchicalAnimations) {
                t.setWindowCrop(this.mAnimationBoundsLayer, this.mTmpRect);
            }
            t.setLayer(leash, 0);
            t.setLayer(this.mAnimationBoundsLayer, getAnimationLayer());
            t.reparent(leash, this.mAnimationBoundsLayer);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void prepareSurfaces() {
        boolean show = isVisible() || isAnimatingExcluding(2, 2);
        if (this.mSurfaceControl != null) {
            if (show && !this.mLastSurfaceShowing) {
                getSyncTransaction().show(this.mSurfaceControl);
            } else if (!show && this.mLastSurfaceShowing) {
                getSyncTransaction().hide(this.mSurfaceControl);
            }
        }
        if (this.mThumbnail != null) {
            this.mThumbnail.setShowing(getPendingTransaction(), show);
        }
        this.mLastSurfaceShowing = show;
        super.prepareSurfaces();
    }

    boolean isSurfaceShowing() {
        return this.mLastSurfaceShowing;
    }

    void attachThumbnailAnimation() {
        if (!isAnimating(2)) {
            return;
        }
        GraphicBuffer thumbnailHeader = getDisplayContent().mAppTransition.getAppTransitionThumbnailHeader(this.task);
        if (thumbnailHeader == null) {
            if (ProtoLog$Cache.WM_DEBUG_APP_TRANSITIONS_enabled) {
                String protoLogParam0 = String.valueOf(this.task);
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_APP_TRANSITIONS, 1528528509, 0, null, protoLogParam0);
                return;
            }
            return;
        }
        clearThumbnail();
        SurfaceControl.Transaction transaction = getAnimatingContainer().getPendingTransaction();
        this.mThumbnail = new WindowContainerThumbnail(this.mWmService.mSurfaceFactory, transaction, getAnimatingContainer(), thumbnailHeader);
        this.mThumbnail.startAnimation(transaction, loadThumbnailAnimation(thumbnailHeader));
    }

    void attachCrossProfileAppsThumbnailAnimation() {
        int thumbnailDrawableRes;
        if (!isAnimating(2)) {
            return;
        }
        clearThumbnail();
        WindowState win = findMainWindow();
        if (win == null) {
            return;
        }
        Rect frame = win.getRelativeFrameLw();
        if (this.task.mUserId == this.mWmService.mCurrentUserId) {
            thumbnailDrawableRes = R.drawable.$loader_horizontal_watch__4;
        } else {
            thumbnailDrawableRes = R.drawable.ic_accessibility_color_inversion;
        }
        GraphicBuffer thumbnail = getDisplayContent().mAppTransition.createCrossProfileAppsThumbnail(thumbnailDrawableRes, frame);
        if (thumbnail == null) {
            return;
        }
        SurfaceControl.Transaction transaction = getPendingTransaction();
        this.mThumbnail = new WindowContainerThumbnail(this.mWmService.mSurfaceFactory, transaction, getTask(), thumbnail);
        Animation animation = getDisplayContent().mAppTransition.createCrossProfileAppsThumbnailAnimationLocked(frame);
        this.mThumbnail.startAnimation(transaction, animation, new Point(frame.left, frame.top));
    }

    private Animation loadThumbnailAnimation(GraphicBuffer thumbnailHeader) {
        DisplayInfo displayInfo = this.mDisplayContent.getDisplayInfo();
        WindowState win = findMainWindow();
        Rect appRect = win != null ? win.getContentFrameLw() : new Rect(0, 0, displayInfo.appWidth, displayInfo.appHeight);
        Rect insets = win != null ? win.getContentInsets() : null;
        Configuration displayConfig = this.mDisplayContent.getConfiguration();
        return getDisplayContent().mAppTransition.createThumbnailAspectScaleAnimationLocked(appRect, insets, thumbnailHeader, this.task, displayConfig.uiMode, displayConfig.orientation);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public void onAnimationLeashLost(SurfaceControl.Transaction t) {
        super.onAnimationLeashLost(t);
        if (this.mAnimationBoundsLayer != null) {
            t.remove(this.mAnimationBoundsLayer);
            this.mAnimationBoundsLayer = null;
        }
        AnimatingActivityRegistry animatingActivityRegistry = this.mAnimatingActivityRegistry;
        if (animatingActivityRegistry != null) {
            animatingActivityRegistry.notifyFinished(this);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    protected void onAnimationFinished(int type, AnimationAdapter anim) {
        super.onAnimationFinished(type, anim);
        Trace.traceBegin(32L, "AR#onAnimationFinished");
        this.mTransit = -1;
        this.mTransitFlags = 0;
        this.mNeedsAnimationBoundsLayer = false;
        setAppLayoutChanges(12, "ActivityRecord");
        clearThumbnail();
        setClientVisible(isVisible() || this.mVisibleRequested);
        getDisplayContent().computeImeTargetIfNeeded(this);
        if (this.mThumbnail != null) {
            this.mThumbnail.destroy();
            this.mThumbnail = null;
        }
        ArrayList<WindowState> children = new ArrayList<>(this.mChildren);
        children.forEach(new Consumer() { // from class: com.android.server.wm.-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).onExitAnimationDone();
            }
        });
        getDisplayContent().mAppTransition.notifyAppTransitionFinishedLocked(this.token);
        scheduleAnimation();
        if (!this.mStackSupervisor.mStoppingActivities.isEmpty() || !this.mStackSupervisor.mFinishingActivities.isEmpty()) {
            if (this.mRootWindowContainer.allResumedActivitiesIdle()) {
                this.mStackSupervisor.scheduleIdle();
            } else if (this.mRootWindowContainer.allResumedActivitiesVisible()) {
                this.mStackSupervisor.scheduleProcessStoppingAndFinishingActivities();
            }
        }
        Trace.traceEnd(32L);
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
    void clearAnimatingFlags() {
        boolean wallpaperMightChange = false;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowState win = (WindowState) this.mChildren.get(i);
            wallpaperMightChange |= win.clearAnimatingFlags();
        }
        if (wallpaperMightChange) {
            requestUpdateWallpaperIfNeeded();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void cancelAnimation() {
        super.cancelAnimation();
        clearThumbnail();
    }

    WindowContainerThumbnail getThumbnail() {
        return this.mThumbnail;
    }

    private void clearThumbnail() {
        if (this.mThumbnail == null) {
            return;
        }
        this.mThumbnail.destroy();
        this.mThumbnail = null;
    }

    public int getTransit() {
        return this.mTransit;
    }

    int getTransitFlags() {
        return this.mTransitFlags;
    }

    void registerRemoteAnimations(RemoteAnimationDefinition definition) {
        this.mRemoteAnimationDefinition = definition;
        if (definition != null) {
            definition.linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.wm.-$$Lambda$ju_KnYxEFekr6LzoWamCeaO5FHQ
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    this.f$0.unregisterRemoteAnimations();
                }
            });
        }
    }

    void unregisterRemoteAnimations() {
        this.mRemoteAnimationDefinition = null;
    }

    @Override // com.android.server.wm.WindowContainer
    RemoteAnimationDefinition getRemoteAnimationDefinition() {
        return this.mRemoteAnimationDefinition;
    }

    @Override // com.android.server.wm.WindowToken
    void applyFixedRotationTransform(DisplayInfo info, DisplayFrames displayFrames, Configuration config) {
        super.applyFixedRotationTransform(info, displayFrames, config);
        ensureActivityConfiguration(0, false);
    }

    @Override // com.android.server.wm.WindowToken
    void onCancelFixedRotationTransform(int originalDisplayRotation) {
        if (this != this.mDisplayContent.getLastOrientationSource() || getRequestedConfigurationOrientation() != 0) {
            return;
        }
        startFreezingScreen(originalDisplayRotation);
        ensureActivityConfiguration(0, false);
    }

    void setRequestedOrientation(int requestedOrientation) {
        setOrientation(requestedOrientation, mayFreezeScreenLocked());
        this.mAtmService.getTaskChangeNotificationController().notifyActivityRequestedOrientationChanged(this.task.mTaskId, requestedOrientation);
    }

    private void setOrientation(int requestedOrientation, boolean freezeScreenIfNeeded) {
        Token token;
        IBinder binder = (!freezeScreenIfNeeded || (token = this.appToken) == null) ? null : token.asBinder();
        setOrientation(requestedOrientation, binder, this);
        if (!getMergedOverrideConfiguration().equals(this.mLastReportedConfiguration.getMergedConfiguration())) {
            ensureActivityConfiguration(0, false);
        }
    }

    void reportDescendantOrientationChangeIfNeeded() {
        if (getRequestedOrientation() == -2) {
            return;
        }
        onDescendantOrientationChanged(mayFreezeScreenLocked() ? this.appToken : null, this);
    }

    @Override // com.android.server.wm.WindowContainer
    int getOrientation(int candidate) {
        if (candidate == 3) {
            return this.mOrientation;
        }
        if (!getDisplayContent().mClosingApps.contains(this)) {
            if (isVisible() || getDisplayContent().mOpeningApps.contains(this)) {
                return this.mOrientation;
            }
            return -2;
        }
        return -2;
    }

    int getRequestedOrientation() {
        return this.mOrientation;
    }

    void setLastReportedGlobalConfiguration(Configuration config) {
        this.mLastReportedConfiguration.setGlobalConfiguration(config);
    }

    void setLastReportedConfiguration(MergedConfiguration config) {
        setLastReportedConfiguration(config.getGlobalConfiguration(), config.getOverrideConfiguration());
    }

    private void setLastReportedConfiguration(Configuration global, Configuration override) {
        this.mLastReportedConfiguration.setConfiguration(global, override);
    }

    boolean inSizeCompatMode() {
        Rect appBounds;
        if (this.mCompatDisplayInsets == null || !shouldUseSizeCompatMode() || isFixedRotationTransforming() || (appBounds = getConfiguration().windowConfiguration.getAppBounds()) == null) {
            return false;
        }
        Configuration parentConfig = getParent().getConfiguration();
        if (parentConfig.densityDpi != getConfiguration().densityDpi) {
            return true;
        }
        Rect parentAppBounds = parentConfig.windowConfiguration.getAppBounds();
        int appWidth = appBounds.width();
        int appHeight = appBounds.height();
        int parentAppWidth = parentAppBounds.width();
        int parentAppHeight = parentAppBounds.height();
        if (parentAppWidth == appWidth && parentAppHeight == appHeight) {
            return false;
        }
        if ((parentAppWidth > appWidth && parentAppHeight > appHeight) || parentAppWidth < appWidth || parentAppHeight < appHeight) {
            return true;
        }
        if (this.info.maxAspectRatio > 0.0f) {
            float aspectRatio = (Math.max(appWidth, appHeight) + 0.5f) / Math.min(appWidth, appHeight);
            if (aspectRatio >= this.info.maxAspectRatio) {
                return false;
            }
        }
        if (this.info.minAspectRatio > 0.0f) {
            float parentAspectRatio = (Math.max(parentAppWidth, parentAppHeight) + 0.5f) / Math.min(parentAppWidth, parentAppHeight);
            if (parentAspectRatio <= this.info.minAspectRatio) {
                return false;
            }
        }
        return true;
    }

    boolean shouldUseSizeCompatMode() {
        if (this.info.supportsSizeChanges) {
            return false;
        }
        if (inMultiWindowMode() || getWindowConfiguration().hasWindowDecorCaption()) {
            Task task = this.task;
            ActivityRecord root = task != null ? task.getRootActivity() : null;
            if (root != null && root != this && !root.shouldUseSizeCompatMode()) {
                return false;
            }
        }
        if (isResizeable()) {
            return false;
        }
        return (this.info.isFixedOrientation() || this.info.hasFixedAspectRatio()) && isActivityTypeStandard() && !this.mAtmService.mForceResizableActivities;
    }

    boolean hasSizeCompatBounds() {
        return this.mSizeCompatBounds != null;
    }

    private void updateSizeCompatMode() {
        if (this.mCompatDisplayInsets != null || !shouldUseSizeCompatMode()) {
            return;
        }
        Configuration parentConfig = getParent().getConfiguration();
        if (!hasProcess() && !isConfigurationCompatible(parentConfig)) {
            return;
        }
        Configuration overrideConfig = getRequestedOverrideConfiguration();
        Configuration fullConfig = getConfiguration();
        overrideConfig.colorMode = fullConfig.colorMode;
        overrideConfig.densityDpi = fullConfig.densityDpi;
        overrideConfig.smallestScreenWidthDp = fullConfig.smallestScreenWidthDp;
        if (this.info.isFixedOrientation()) {
            overrideConfig.windowConfiguration.setRotation(fullConfig.windowConfiguration.getRotation());
        }
        this.mCompatDisplayInsets = new CompatDisplayInsets(this.mDisplayContent, this);
    }

    void clearSizeCompatMode() {
        this.mSizeCompatScale = 1.0f;
        this.mSizeCompatBounds = null;
        this.mCompatDisplayInsets = null;
        onRequestedOverrideConfigurationChanged(Configuration.EMPTY);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public boolean matchParentBounds() {
        WindowContainer parent;
        Rect overrideBounds = getResolvedOverrideBounds();
        return overrideBounds.isEmpty() || (parent = getParent()) == null || parent.getBounds().equals(overrideBounds);
    }

    @Override // com.android.server.wm.WindowToken
    float getSizeCompatScale() {
        return hasSizeCompatBounds() ? this.mSizeCompatScale : super.getSizeCompatScale();
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.ConfigurationContainer
    void resolveOverrideConfiguration(Configuration newParentConfiguration) {
        super.resolveOverrideConfiguration(newParentConfiguration);
        Configuration resolvedConfig = getResolvedOverrideConfiguration();
        if (isFixedRotationTransforming()) {
            this.mTmpConfig.setTo(newParentConfiguration);
            this.mTmpConfig.updateFrom(resolvedConfig);
            newParentConfiguration = this.mTmpConfig;
        }
        if (this.mCompatDisplayInsets != null) {
            resolveSizeCompatModeConfiguration(newParentConfiguration);
        } else if (inMultiWindowMode()) {
            resolvedConfig.orientation = 0;
            if (!matchParentBounds()) {
                this.task.computeConfigResourceOverrides(resolvedConfig, newParentConfiguration);
            }
        } else {
            resolveFullscreenConfiguration(newParentConfiguration);
        }
        int i = this.mConfigurationSeq + 1;
        this.mConfigurationSeq = i;
        this.mConfigurationSeq = Math.max(i, 1);
        getResolvedOverrideConfiguration().seq = this.mConfigurationSeq;
    }

    private void resolveFullscreenConfiguration(Configuration newParentConfiguration) {
        Configuration resolvedConfig = getResolvedOverrideConfiguration();
        Rect parentAppBounds = newParentConfiguration.windowConfiguration.getAppBounds();
        Rect parentBounds = newParentConfiguration.windowConfiguration.getBounds();
        Rect resolvedBounds = resolvedConfig.windowConfiguration.getBounds();
        this.mTmpBounds.setEmpty();
        applyAspectRatio(this.mTmpBounds, parentAppBounds, parentBounds);
        boolean needToBeCentered = !this.mTmpBounds.isEmpty();
        if (needToBeCentered) {
            resolvedBounds.set(this.mTmpBounds);
            resolvedBounds.left = parentAppBounds.left;
        }
        if (!resolvedBounds.isEmpty() && !resolvedBounds.equals(parentBounds)) {
            this.task.computeConfigResourceOverrides(resolvedConfig, newParentConfiguration, getFixedRotationTransformDisplayInfo());
        }
        if (needToBeCentered) {
            int offsetX = getHorizontalCenterOffset(parentAppBounds.width(), resolvedBounds.width());
            offsetBounds(resolvedConfig, offsetX, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x006c  */
    /* JADX WARN: Code duplicated, block: B:25:0x0075  */
    /* JADX WARN: Code duplicated, block: B:28:0x0097  */
    /* JADX WARN: Code duplicated, block: B:33:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:45:0x0102  */
    /* JADX WARN: Code duplicated, block: B:49:0x012f  */
    /* JADX WARN: Code duplicated, block: B:50:0x0132  */
    /* JADX WARN: Code duplicated, block: B:58:0x0147  */
    private void resolveSizeCompatModeConfiguration(Configuration newParentConfiguration) {
        int orientation;
        int rotation;
        Rect containingAppBounds;
        Rect containingBounds;
        boolean fillContainer;
        Rect parentBounds;
        Rect parentAppBounds;
        Rect resolvedAppBounds;
        int contentW;
        int contentH;
        int viewportW;
        int viewportH;
        float fMin;
        int screenTopInset;
        boolean topNotAligned;
        int i;
        int screenPosX;
        int viewportW2;
        Rect rect;
        Configuration resolvedConfig = getResolvedOverrideConfiguration();
        Rect resolvedBounds = resolvedConfig.windowConfiguration.getBounds();
        int requestedOrientation = getRequestedConfigurationOrientation();
        boolean orientationRequested = (requestedOrientation == 0 || this.mDisplayContent.ignoreRotationForApps()) ? false : true;
        if (orientationRequested) {
            orientation = requestedOrientation;
        } else {
            orientation = newParentConfiguration.orientation;
        }
        int rotation2 = newParentConfiguration.windowConfiguration.getRotation();
        boolean canChangeOrientation = handlesOrientationChangeFromDescendant();
        if (canChangeOrientation && !this.mCompatDisplayInsets.mIsFloating) {
            resolvedConfig.windowConfiguration.setRotation(rotation2);
        } else {
            int overrideRotation = resolvedConfig.windowConfiguration.getRotation();
            if (overrideRotation != -1) {
                rotation = overrideRotation;
            }
            containingAppBounds = new Rect();
            containingBounds = this.mTmpBounds;
            this.mCompatDisplayInsets.getContainerBounds(containingAppBounds, containingBounds, rotation, orientation, orientationRequested, canChangeOrientation);
            resolvedBounds.set(containingBounds);
            if (!this.mCompatDisplayInsets.mIsFloating) {
                applyAspectRatio(resolvedBounds, containingAppBounds, containingBounds);
            }
            fillContainer = resolvedBounds.equals(containingBounds);
            if (!fillContainer) {
                resolvedBounds.left = containingAppBounds.left;
            }
            this.task.computeConfigResourceOverrides(resolvedConfig, newParentConfiguration, this.mCompatDisplayInsets);
            resolvedConfig.screenLayout = Task.computeScreenLayoutOverride(getConfiguration().screenLayout, resolvedConfig.screenWidthDp, resolvedConfig.screenHeightDp);
            if (resolvedConfig.screenWidthDp == resolvedConfig.screenHeightDp) {
                resolvedConfig.orientation = newParentConfiguration.orientation;
            }
            parentBounds = newParentConfiguration.windowConfiguration.getBounds();
            parentAppBounds = newParentConfiguration.windowConfiguration.getAppBounds();
            resolvedAppBounds = resolvedConfig.windowConfiguration.getAppBounds();
            contentW = resolvedAppBounds.width();
            contentH = resolvedAppBounds.height();
            viewportW = parentAppBounds.width();
            viewportH = parentAppBounds.height();
            if (contentW <= viewportW || contentH > viewportH) {
                fMin = Math.min(viewportW / contentW, viewportH / contentH);
            } else {
                fMin = 1.0f;
            }
            this.mSizeCompatScale = fMin;
            screenTopInset = parentAppBounds.top - parentBounds.top;
            if (screenTopInset != resolvedAppBounds.top - resolvedBounds.top) {
                topNotAligned = true;
            } else {
                topNotAligned = false;
            }
            if (this.mSizeCompatScale != 1.0f && !topNotAligned) {
                this.mSizeCompatBounds = null;
            } else {
                if (this.mSizeCompatBounds == null) {
                    this.mSizeCompatBounds = new Rect();
                }
                this.mSizeCompatBounds.set(resolvedAppBounds);
                this.mSizeCompatBounds.offsetTo(0, 0);
                this.mSizeCompatBounds.scale(this.mSizeCompatScale);
                this.mSizeCompatBounds.bottom += screenTopInset;
            }
            int offsetX = getHorizontalCenterOffset(viewportW, (int) (contentW * this.mSizeCompatScale));
            if (fillContainer) {
                i = parentBounds.left;
            } else {
                i = parentAppBounds.left;
            }
            screenPosX = i + offsetX;
            viewportW2 = parentBounds.top;
            if (screenPosX == 0 || viewportW2 != 0) {
                rect = this.mSizeCompatBounds;
                if (rect != null) {
                    rect.offset(screenPosX, viewportW2);
                }
                int dx = screenPosX - resolvedBounds.left;
                int dy = viewportW2 - resolvedBounds.top;
                offsetBounds(resolvedConfig, dx, dy);
            }
            return;
        }
        rotation = rotation2;
        containingAppBounds = new Rect();
        containingBounds = this.mTmpBounds;
        this.mCompatDisplayInsets.getContainerBounds(containingAppBounds, containingBounds, rotation, orientation, orientationRequested, canChangeOrientation);
        resolvedBounds.set(containingBounds);
        if (!this.mCompatDisplayInsets.mIsFloating) {
            applyAspectRatio(resolvedBounds, containingAppBounds, containingBounds);
        }
        fillContainer = resolvedBounds.equals(containingBounds);
        if (!fillContainer) {
            resolvedBounds.left = containingAppBounds.left;
        }
        this.task.computeConfigResourceOverrides(resolvedConfig, newParentConfiguration, this.mCompatDisplayInsets);
        resolvedConfig.screenLayout = Task.computeScreenLayoutOverride(getConfiguration().screenLayout, resolvedConfig.screenWidthDp, resolvedConfig.screenHeightDp);
        if (resolvedConfig.screenWidthDp == resolvedConfig.screenHeightDp) {
            resolvedConfig.orientation = newParentConfiguration.orientation;
        }
        parentBounds = newParentConfiguration.windowConfiguration.getBounds();
        parentAppBounds = newParentConfiguration.windowConfiguration.getAppBounds();
        resolvedAppBounds = resolvedConfig.windowConfiguration.getAppBounds();
        contentW = resolvedAppBounds.width();
        contentH = resolvedAppBounds.height();
        viewportW = parentAppBounds.width();
        viewportH = parentAppBounds.height();
        if (contentW <= viewportW) {
            fMin = Math.min(viewportW / contentW, viewportH / contentH);
        } else {
            fMin = Math.min(viewportW / contentW, viewportH / contentH);
        }
        this.mSizeCompatScale = fMin;
        screenTopInset = parentAppBounds.top - parentBounds.top;
        if (screenTopInset != resolvedAppBounds.top - resolvedBounds.top) {
            topNotAligned = true;
        } else {
            topNotAligned = false;
        }
        if (this.mSizeCompatScale != 1.0f) {
            if (this.mSizeCompatBounds == null) {
                this.mSizeCompatBounds = new Rect();
            }
            this.mSizeCompatBounds.set(resolvedAppBounds);
            this.mSizeCompatBounds.offsetTo(0, 0);
            this.mSizeCompatBounds.scale(this.mSizeCompatScale);
            this.mSizeCompatBounds.bottom += screenTopInset;
        } else {
            if (this.mSizeCompatBounds == null) {
                this.mSizeCompatBounds = new Rect();
            }
            this.mSizeCompatBounds.set(resolvedAppBounds);
            this.mSizeCompatBounds.offsetTo(0, 0);
            this.mSizeCompatBounds.scale(this.mSizeCompatScale);
            this.mSizeCompatBounds.bottom += screenTopInset;
        }
        int offsetX2 = getHorizontalCenterOffset(viewportW, (int) (contentW * this.mSizeCompatScale));
        if (fillContainer) {
            i = parentBounds.left;
        } else {
            i = parentAppBounds.left;
        }
        screenPosX = i + offsetX2;
        viewportW2 = parentBounds.top;
        if (screenPosX == 0) {
        }
        rect = this.mSizeCompatBounds;
        if (rect != null) {
            rect.offset(screenPosX, viewportW2);
        }
        int dx2 = screenPosX - resolvedBounds.left;
        int dy2 = viewportW2 - resolvedBounds.top;
        offsetBounds(resolvedConfig, dx2, dy2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getHorizontalCenterOffset(int viewportW, int contentW) {
        return (int) (((viewportW - contentW) + 1) * 0.5f);
    }

    private static void offsetBounds(Configuration inOutConfig, int offsetX, int offsetY) {
        inOutConfig.windowConfiguration.getBounds().offset(offsetX, offsetY);
        inOutConfig.windowConfiguration.getAppBounds().offset(offsetX, offsetY);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public Rect getBounds() {
        Rect rect = this.mSizeCompatBounds;
        if (rect != null) {
            return rect;
        }
        return super.getBounds();
    }

    @Override // com.android.server.wm.WindowContainer
    Rect getAnimationBounds(int appStackClipMode) {
        if (appStackClipMode == 1 && getStack() != null) {
            return getStack().getBounds();
        }
        Task task = this.task;
        return task != null ? task.getBounds() : getBounds();
    }

    @Override // com.android.server.wm.WindowContainer
    void getAnimationPosition(Point outPosition) {
        outPosition.set(0, 0);
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        if (this.mCompatDisplayInsets != null) {
            Configuration overrideConfig = getRequestedOverrideConfiguration();
            boolean wasFixedOrient = overrideConfig.windowConfiguration.getRotation() != -1;
            int requestedOrient = getRequestedConfigurationOrientation();
            if (requestedOrient != 0 && requestedOrient != getConfiguration().orientation && requestedOrient == getParent().getConfiguration().orientation && overrideConfig.windowConfiguration.getRotation() != getParent().getWindowConfiguration().getRotation()) {
                overrideConfig.windowConfiguration.setRotation(getParent().getWindowConfiguration().getRotation());
                onRequestedOverrideConfigurationChanged(overrideConfig);
                return;
            } else if (wasFixedOrient && requestedOrient == 0 && overrideConfig.windowConfiguration.getRotation() != -1) {
                overrideConfig.windowConfiguration.setRotation(-1);
                onRequestedOverrideConfigurationChanged(overrideConfig);
                return;
            }
        }
        super.onConfigurationChanged(newParentConfig);
        if (getMergedOverrideConfiguration().seq != getResolvedOverrideConfiguration().seq) {
            onMergedOverrideConfigurationChanged();
        }
        DisplayContent display = getDisplay();
        if (display == null) {
            return;
        }
        if (this.mVisibleRequested) {
            display.handleActivitySizeCompatModeIfNeeded(this);
            return;
        }
        if (this.mCompatDisplayInsets != null) {
            int displayChanges = display.getCurrentOverrideConfigurationChanges();
            boolean hasNonOrienSizeChanged = hasResizeChange(displayChanges) && (displayChanges & 536872064) != 536872064;
            if (hasNonOrienSizeChanged || (displayChanges & 4096) != 0) {
                restartProcessIfVisible();
            }
        }
    }

    boolean isConfigurationCompatible(Configuration config) {
        int orientation = getRequestedOrientation();
        if (!ActivityInfo.isFixedOrientationPortrait(orientation) || config.orientation == 1) {
            return !ActivityInfo.isFixedOrientationLandscape(orientation) || config.orientation == 2;
        }
        return false;
    }

    private void applyAspectRatio(Rect outBounds, Rect containingAppBounds, Rect containingBounds) {
        boolean adjustWidth;
        float maxAspectRatio = this.info.maxAspectRatio;
        ActivityStack stack = getRootTask();
        float minAspectRatio = this.info.minAspectRatio;
        if (this.task == null || stack == null) {
            return;
        }
        if (!inMultiWindowMode() || shouldUseSizeCompatMode()) {
            if ((maxAspectRatio == 0.0f && minAspectRatio == 0.0f) || isInVrUiMode(getConfiguration())) {
                return;
            }
            int containingAppWidth = containingAppBounds.width();
            int containingAppHeight = containingAppBounds.height();
            float containingRatio = Math.max(containingAppWidth, containingAppHeight) / Math.min(containingAppWidth, containingAppHeight);
            int activityWidth = containingAppWidth;
            int activityHeight = containingAppHeight;
            if (containingRatio <= maxAspectRatio || maxAspectRatio == 0.0f) {
                if (containingRatio < minAspectRatio) {
                    int requestedConfigurationOrientation = getRequestedConfigurationOrientation();
                    if (requestedConfigurationOrientation == 1) {
                        adjustWidth = true;
                    } else if (requestedConfigurationOrientation != 2 && containingAppWidth < containingAppHeight) {
                        adjustWidth = true;
                    } else {
                        adjustWidth = false;
                    }
                    if (adjustWidth) {
                        activityWidth = (int) ((activityHeight / minAspectRatio) + 0.5f);
                    } else {
                        activityHeight = (int) ((activityWidth / minAspectRatio) + 0.5f);
                    }
                }
            } else if (containingAppWidth < containingAppHeight) {
                activityHeight = (int) ((activityWidth * maxAspectRatio) + 0.5f);
            } else {
                activityWidth = (int) ((activityHeight * maxAspectRatio) + 0.5f);
            }
            if (containingAppWidth <= activityWidth && containingAppHeight <= activityHeight) {
                return;
            }
            outBounds.set(containingBounds.left, containingBounds.top, containingAppBounds.left + activityWidth, containingAppBounds.top + activityHeight);
        }
    }

    boolean shouldUpdateConfigForDisplayChanged() {
        return this.mLastReportedDisplayId != getDisplayId();
    }

    boolean ensureActivityConfiguration(int globalChanges, boolean preserveWindow) {
        return ensureActivityConfiguration(globalChanges, preserveWindow, false);
    }

    boolean ensureActivityConfiguration(int globalChanges, boolean preserveWindow, boolean ignoreVisibility) {
        ActivityStack stack = getRootTask();
        if (stack.mConfigWillChange) {
            Slog.v("ActivityTaskManager", "Skipping config check (will change): " + this);
            return true;
        }
        if (this.finishing) {
            Slog.v("ActivityTaskManager", "Configuration doesn't matter in finishing " + this);
            stopFreezingScreenLocked(false);
            return true;
        }
        if (!ignoreVisibility && (this.mState == ActivityStack.ActivityState.STOPPING || this.mState == ActivityStack.ActivityState.STOPPED || !shouldBeVisible())) {
            Slog.v("ActivityTaskManager", "Skipping config check invisible: " + this);
            return true;
        }
        Slog.v("ActivityTaskManager", "Ensuring correct configuration: " + this);
        int newDisplayId = getDisplayId();
        boolean displayChanged = this.mLastReportedDisplayId != newDisplayId;
        if (displayChanged) {
            this.mLastReportedDisplayId = newDisplayId;
        }
        updateSizeCompatMode();
        this.mTmpConfig.setTo(this.mLastReportedConfiguration.getMergedConfiguration());
        if (getConfiguration().equals(this.mTmpConfig) && !this.forceNewConfig && !displayChanged) {
            Slog.v("ActivityTaskManager", "Configuration & display unchanged in " + this);
            return true;
        }
        int changes = getConfigurationChanges(this.mTmpConfig);
        Configuration newMergedOverrideConfig = getMergedOverrideConfiguration();
        setLastReportedConfiguration(getProcessGlobalConfiguration(), newMergedOverrideConfig);
        if (this.mState == ActivityStack.ActivityState.INITIALIZING) {
            Slog.v("ActivityTaskManager", "Skipping config check for initializing activity: " + this);
            return true;
        }
        if (changes == 0 && !this.forceNewConfig) {
            Slog.v("ActivityTaskManager", "Configuration no differences in " + this);
            if (displayChanged) {
                scheduleActivityMovedToDisplay(newDisplayId, newMergedOverrideConfig);
            } else {
                scheduleConfigurationChanged(newMergedOverrideConfig);
            }
            return true;
        }
        Slog.v("ActivityTaskManager", "Configuration changes for " + this + ", allChanges=" + Configuration.configurationDiffToString(changes));
        if (!attachedToProcess()) {
            Slog.v("ActivityTaskManager", "Configuration doesn't matter not running " + this);
            stopFreezingScreenLocked(false);
            this.forceNewConfig = false;
            return true;
        }
        Slog.v("ActivityTaskManager", "Checking to restart " + this.info.name + ": changed=0x" + Integer.toHexString(changes) + ", handles=0x" + Integer.toHexString(this.info.getRealConfigChanged()) + ", mLastReportedConfiguration=" + this.mLastReportedConfiguration);
        if (shouldRelaunchLocked(changes, this.mTmpConfig) || this.forceNewConfig) {
            this.configChangeFlags |= changes;
            startFreezingScreenLocked(globalChanges);
            this.forceNewConfig = false;
            boolean preserveWindow2 = preserveWindow & isResizeOnlyChange(changes);
            boolean hasResizeChange = hasResizeChange((~this.info.getRealConfigChanged()) & changes);
            if (hasResizeChange) {
                boolean isDragResizing = this.task.isDragResizing();
                this.mRelaunchReason = isDragResizing ? 2 : 1;
            } else {
                this.mRelaunchReason = 0;
            }
            if (!attachedToProcess()) {
                Slog.v("ActivityTaskManager", "Config is destroying non-running " + this);
                destroyImmediately(true, "config");
            } else {
                if (this.mState == ActivityStack.ActivityState.PAUSING) {
                    Slog.v("ActivityTaskManager", "Config is skipping already pausing " + this);
                    this.deferRelaunchUntilPaused = true;
                    this.preserveWindowOnDeferredRelaunch = preserveWindow2;
                    return true;
                }
                Slog.v("ActivityTaskManager", "Config is relaunching " + this);
                if (!this.mVisibleRequested) {
                    Slog.v("ActivityTaskManager", "Config is relaunching invisible activity " + this + " called by " + Debug.getCallers(4));
                }
                relaunchActivityLocked(preserveWindow2);
            }
            return false;
        }
        if (displayChanged) {
            scheduleActivityMovedToDisplay(newDisplayId, newMergedOverrideConfig);
        } else {
            scheduleConfigurationChanged(newMergedOverrideConfig);
        }
        stopFreezingScreenLocked(false);
        return true;
    }

    private Configuration getProcessGlobalConfiguration() {
        WindowProcessController windowProcessController = this.app;
        return windowProcessController != null ? windowProcessController.getConfiguration() : this.mAtmService.getGlobalConfiguration();
    }

    private boolean shouldRelaunchLocked(int changes, Configuration changesConfig) {
        int configChanged = this.info.getRealConfigChanged();
        boolean onlyVrUiModeChanged = onlyVrUiModeChanged(changes, changesConfig);
        if (this.info.applicationInfo.targetSdkVersion < 26 && this.requestedVrComponent != null && onlyVrUiModeChanged) {
            configChanged |= 512;
        }
        return (((~configChanged) & changes) == 0 || this.changingDisplay) ? false : true;
    }

    private boolean onlyVrUiModeChanged(int changes, Configuration lastReportedConfig) {
        Configuration currentConfig = getConfiguration();
        return changes == 512 && isInVrUiMode(currentConfig) != isInVrUiMode(lastReportedConfig);
    }

    private int getConfigurationChanges(Configuration lastReportedConfig) {
        Configuration currentConfig = getConfiguration();
        int changes = lastReportedConfig.diff(currentConfig);
        if ((changes & 1024) != 0) {
            boolean crosses = crossesHorizontalSizeThreshold(lastReportedConfig.screenWidthDp, currentConfig.screenWidthDp) || crossesVerticalSizeThreshold(lastReportedConfig.screenHeightDp, currentConfig.screenHeightDp);
            if (!crosses) {
                changes &= -1025;
            }
        }
        if ((changes & 2048) != 0) {
            int oldSmallest = lastReportedConfig.smallestScreenWidthDp;
            int newSmallest = currentConfig.smallestScreenWidthDp;
            if (!crossesSmallestSizeThreshold(oldSmallest, newSmallest)) {
                changes &= -2049;
            }
        }
        if ((536870912 & changes) != 0) {
            return changes & (-536870913);
        }
        return changes;
    }

    private static boolean isResizeOnlyChange(int change) {
        return (change & (-3457)) == 0;
    }

    private static boolean hasResizeChange(int change) {
        return (change & 3456) != 0;
    }

    void relaunchActivityLocked(boolean preserveWindow) {
        ResumeActivityItem resumeActivityItemObtain;
        if (this.mAtmService.mSuppressResizeConfigChanges && preserveWindow) {
            this.configChangeFlags = 0;
            return;
        }
        boolean andResume = shouldBeResumed(null);
        List<ResultInfo> pendingResults = null;
        List<ReferrerIntent> pendingNewIntents = null;
        if (andResume) {
            pendingResults = this.results;
            pendingNewIntents = this.newIntents;
        }
        Slog.v("ActivityTaskManager", "Relaunching: " + this + " with results=" + pendingResults + " newIntents=" + pendingNewIntents + " andResume=" + andResume + " preserveWindow=" + preserveWindow);
        if (andResume) {
            EventLogTags.writeWmRelaunchResumeActivity(this.mUserId, System.identityHashCode(this), this.task.mTaskId, this.shortComponentName);
        } else {
            EventLogTags.writeWmRelaunchActivity(this.mUserId, System.identityHashCode(this), this.task.mTaskId, this.shortComponentName);
        }
        startFreezingScreenLocked(0);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("Moving to ");
            sb.append(andResume ? "RESUMED" : "PAUSED");
            sb.append(" Relaunching ");
            sb.append(this);
            sb.append(" callers=");
            sb.append(Debug.getCallers(6));
            Slog.i("ActivityTaskManager", sb.toString());
            this.forceNewConfig = false;
            startRelaunching();
            ActivityRelaunchItem activityRelaunchItemObtain = ActivityRelaunchItem.obtain(pendingResults, pendingNewIntents, this.configChangeFlags, new MergedConfiguration(getProcessGlobalConfiguration(), getMergedOverrideConfiguration()), preserveWindow);
            if (andResume) {
                resumeActivityItemObtain = ResumeActivityItem.obtain(getDisplay().mDisplayContent.isNextTransitionForward());
            } else {
                resumeActivityItemObtain = PauseActivityItem.obtain();
            }
            ClientTransaction transaction = ClientTransaction.obtain(this.app.getThread(), this.appToken);
            transaction.addCallback(activityRelaunchItemObtain);
            transaction.setLifecycleStateRequest(resumeActivityItemObtain);
            this.mAtmService.getLifecycleManager().scheduleTransaction(transaction);
        } catch (RemoteException e) {
            Slog.i("ActivityTaskManager", "Relaunch failed", e);
        }
        if (andResume) {
            Slog.d("ActivityTaskManager", "Resumed after relaunch " + this);
            this.results = null;
            this.newIntents = null;
            this.mAtmService.getAppWarningsLocked().onResumeActivity(this);
        } else {
            removePauseTimeout();
            setState(ActivityStack.ActivityState.PAUSED, "relaunchActivityLocked");
        }
        this.configChangeFlags = 0;
        this.deferRelaunchUntilPaused = false;
        this.preserveWindowOnDeferredRelaunch = false;
    }

    void restartProcessIfVisible() {
        Slog.i("ActivityTaskManager", "Request to restart process of " + this);
        clearSizeCompatMode();
        if (this.mVisibleRequested) {
            updateSizeCompatMode();
        }
        if (!attachedToProcess()) {
            return;
        }
        setState(ActivityStack.ActivityState.RESTARTING_PROCESS, "restartActivityProcess");
        if (!this.mVisibleRequested || this.mHaveState) {
            this.mAtmService.mH.post(new Runnable() { // from class: com.android.server.wm.-$$Lambda$ActivityRecord$ViqYcVmlHd9KpKtfJCaj-CATqDE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$restartProcessIfVisible$9$ActivityRecord();
                }
            });
            return;
        }
        if (getParent() != null) {
            startFreezingScreen();
        }
        try {
            this.mAtmService.getLifecycleManager().scheduleTransaction(this.app.getThread(), (IBinder) this.appToken, StopActivityItem.obtain(0));
        } catch (RemoteException e) {
            Slog.w("ActivityTaskManager", "Exception thrown during restart " + this, e);
        }
        this.mStackSupervisor.scheduleRestartTimeout(this);
    }

    public /* synthetic */ void lambda$restartProcessIfVisible$9$ActivityRecord() {
        synchronized (this.mAtmService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                if (hasProcess() && this.app.getReportedProcState() > 6) {
                    WindowProcessController wpc = this.app;
                    WindowManagerService.resetPriorityAfterLockedSection();
                    this.mAtmService.mAmInternal.killProcess(wpc.mName, wpc.mUid, "resetConfig");
                    return;
                }
                WindowManagerService.resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                WindowManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    boolean isProcessRunning() {
        WindowProcessController proc = this.app;
        if (proc == null) {
            proc = (WindowProcessController) this.mAtmService.mProcessNames.get(this.processName, this.info.applicationInfo.uid);
        }
        return proc != null && proc.hasThread();
    }

    private boolean allowTaskSnapshot() {
        ArrayList<ReferrerIntent> arrayList = this.newIntents;
        if (arrayList == null) {
            return true;
        }
        for (int i = arrayList.size() - 1; i >= 0; i--) {
            Intent intent = this.newIntents.get(i);
            if (intent != null && !isMainIntent(intent)) {
                Intent intent2 = this.mLastNewIntent;
                boolean sameIntent = intent2 != null ? intent2.filterEquals(intent) : this.intent.filterEquals(intent);
                if (!sameIntent || intent.getExtras() != null) {
                    return false;
                }
            }
        }
        return true;
    }

    boolean isNoHistory() {
        return ((this.intent.getFlags() & 1073741824) == 0 && (this.info.flags & 128) == 0) ? false : true;
    }

    void saveToXml(XmlSerializer out) throws XmlPullParserException, IOException {
        out.attribute(null, ATTR_ID, String.valueOf(this.createTime));
        out.attribute(null, ATTR_LAUNCHEDFROMUID, String.valueOf(this.launchedFromUid));
        String str = this.launchedFromPackage;
        if (str != null) {
            out.attribute(null, ATTR_LAUNCHEDFROMPACKAGE, str);
        }
        String str2 = this.launchedFromFeatureId;
        if (str2 != null) {
            out.attribute(null, ATTR_LAUNCHEDFROMFEATURE, str2);
        }
        String str3 = this.resolvedType;
        if (str3 != null) {
            out.attribute(null, ATTR_RESOLVEDTYPE, str3);
        }
        out.attribute(null, ATTR_COMPONENTSPECIFIED, String.valueOf(this.componentSpecified));
        out.attribute(null, ATTR_USERID, String.valueOf(this.mUserId));
        ActivityManager.TaskDescription taskDescription = this.taskDescription;
        if (taskDescription != null) {
            taskDescription.saveToXml(out);
        }
        out.startTag(null, TAG_INTENT);
        this.intent.saveToXml(out);
        out.endTag(null, TAG_INTENT);
        if (isPersistable() && this.mPersistentState != null) {
            out.startTag(null, TAG_PERSISTABLEBUNDLE);
            this.mPersistentState.saveToXml(out);
            out.endTag(null, TAG_PERSISTABLEBUNDLE);
        }
    }

    static ActivityRecord restoreFromXml(XmlPullParser in, ActivityStackSupervisor stackSupervisor) throws XmlPullParserException, IOException {
        Intent intent = null;
        PersistableBundle persistentState = null;
        int launchedFromUid = 0;
        String launchedFromPackage = null;
        String launchedFromFeature = null;
        String resolvedType = null;
        boolean componentSpecified = false;
        int userId = 0;
        long createTime = -1;
        int outerDepth = in.getDepth();
        ActivityManager.TaskDescription taskDescription = new ActivityManager.TaskDescription();
        int attrNdx = in.getAttributeCount() - 1;
        while (attrNdx >= 0) {
            String attrName = in.getAttributeName(attrNdx);
            String attrValue = in.getAttributeValue(attrNdx);
            Intent intent2 = intent;
            if (ATTR_ID.equals(attrName)) {
                createTime = Long.parseLong(attrValue);
            } else if (ATTR_LAUNCHEDFROMUID.equals(attrName)) {
                launchedFromUid = Integer.parseInt(attrValue);
            } else if (ATTR_LAUNCHEDFROMPACKAGE.equals(attrName)) {
                launchedFromPackage = attrValue;
            } else if (ATTR_LAUNCHEDFROMFEATURE.equals(attrName)) {
                launchedFromFeature = attrValue;
            } else if (ATTR_RESOLVEDTYPE.equals(attrName)) {
                resolvedType = attrValue;
            } else if (ATTR_COMPONENTSPECIFIED.equals(attrName)) {
                componentSpecified = Boolean.parseBoolean(attrValue);
            } else if (ATTR_USERID.equals(attrName)) {
                userId = Integer.parseInt(attrValue);
            } else if (!attrName.startsWith("task_description_")) {
                Log.d("ActivityTaskManager", "Unknown ActivityRecord attribute=" + attrName);
            }
            attrNdx--;
            intent = intent2;
            persistentState = persistentState;
        }
        taskDescription.restoreFromXml(in);
        while (true) {
            int event = in.next();
            if (event == 1 || (event == 3 && in.getDepth() < outerDepth)) {
                break;
                break;
            }
            if (event == 2) {
                String name = in.getName();
                if (TAG_INTENT.equals(name)) {
                    intent = Intent.restoreFromXml(in);
                } else if (TAG_PERSISTABLEBUNDLE.equals(name)) {
                    persistentState = PersistableBundle.restoreFromXml(in);
                } else {
                    Slog.w("ActivityTaskManager", "restoreActivity: unexpected name=" + name);
                    XmlUtils.skipCurrentTag(in);
                }
                outerDepth = outerDepth;
            }
        }
        if (intent == null) {
            throw new XmlPullParserException("restoreActivity error intent=" + intent);
        }
        ActivityTaskManagerService service = stackSupervisor.mService;
        ActivityInfo aInfo = stackSupervisor.resolveActivity(intent, resolvedType, 0, null, userId, Binder.getCallingUid());
        if (aInfo == null) {
            throw new XmlPullParserException("restoreActivity resolver error. Intent=" + intent + " resolvedType=" + resolvedType);
        }
        ActivityRecord r = new ActivityRecord(service, null, 0, launchedFromUid, launchedFromPackage, launchedFromFeature, intent, resolvedType, aInfo, service.getConfiguration(), null, null, 0, componentSpecified, false, stackSupervisor, null, null);
        r.mPersistentState = persistentState;
        r.taskDescription = taskDescription;
        r.createTime = createTime;
        return r;
    }

    private static boolean isInVrUiMode(Configuration config) {
        return (config.uiMode & 15) == 7;
    }

    int getUid() {
        return this.info.applicationInfo.uid;
    }

    boolean isUid(int uid) {
        return this.info.applicationInfo.uid == uid;
    }

    int getPid() {
        WindowProcessController windowProcessController = this.app;
        if (windowProcessController != null) {
            return windowProcessController.getPid();
        }
        return 0;
    }

    boolean canTurnScreenOn() {
        ActivityStack stack;
        if (getTurnScreenOnFlag() && (stack = getRootTask()) != null) {
            return stack.checkKeyguardVisibility(this, true, stack.topRunningActivity() == this);
        }
        return false;
    }

    void setTurnScreenOn(boolean turnScreenOn) {
        this.mTurnScreenOn = turnScreenOn;
    }

    boolean getTurnScreenOnFlag() {
        return this.mTurnScreenOn || containsTurnScreenOnWindow();
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
    private boolean containsTurnScreenOnWindow() {
        if (isRelaunching()) {
            return this.mLastContainsTurnScreenOnWindow;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if ((((WindowState) this.mChildren.get(i)).mAttrs.flags & 2097152) != 0) {
                return true;
            }
        }
        return false;
    }

    boolean canResumeByCompat() {
        WindowProcessController windowProcessController = this.app;
        return windowProcessController == null || windowProcessController.updateTopResumingActivityInProcessIfNeeded(this);
    }

    boolean isTopRunningActivity() {
        return this.mRootWindowContainer.topRunningActivity() == this;
    }

    boolean isResumedActivityOnDisplay() {
        DisplayContent display = getDisplay();
        if (display == null) {
            return false;
        }
        for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
            TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
            ActivityRecord resumedActivity = taskDisplayArea.getFocusedActivity();
            if (resumedActivity != null) {
                return resumedActivity == this;
            }
        }
        return false;
    }

    boolean isRootOfTask() {
        Task task = this.task;
        if (task == null) {
            return false;
        }
        ActivityRecord rootActivity = task.getRootActivity(true);
        return this == rootActivity;
    }

    void setTaskOverlay(boolean taskOverlay) {
        this.mTaskOverlay = taskOverlay;
        setAlwaysOnTop(taskOverlay);
    }

    boolean isTaskOverlay() {
        return this.mTaskOverlay;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean showToCurrentUser() {
        return this.mShowForAllUsers || this.mWmService.isCurrentProfile(this.mUserId);
    }

    @Override // com.android.server.wm.WindowToken
    public String toString() {
        if (this.stringName != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.stringName);
            sb.append(" t");
            Task task = this.task;
            sb.append(task == null ? -1 : task.mTaskId);
            sb.append(this.finishing ? " f}" : "");
            sb.append(this.mIsExiting ? " isExiting" : "");
            sb.append("}");
            return sb.toString();
        }
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("ActivityRecord{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" u");
        sb2.append(this.mUserId);
        sb2.append(' ');
        sb2.append(this.intent.getComponent().flattenToShortString());
        this.stringName = sb2.toString();
        return this.stringName;
    }

    void dumpDebug(ProtoOutputStream proto, int logLevel) {
        writeNameToProto(proto, 1138166333441L);
        super.dumpDebug(proto, 1146756268034L, logLevel);
        proto.write(1133871366147L, this.mLastSurfaceShowing);
        proto.write(1133871366148L, isWaitingForTransitionStart());
        proto.write(1133871366149L, isAnimating(2));
        if (this.mThumbnail != null) {
            this.mThumbnail.dumpDebug(proto, 1146756268038L);
        }
        proto.write(1133871366151L, fillsParent());
        proto.write(1133871366152L, this.mAppStopped);
        proto.write(1133871366174L, !occludesParent());
        proto.write(1133871366168L, this.mVisible);
        proto.write(1133871366153L, this.mVisibleRequested);
        proto.write(1133871366154L, this.mClientVisible);
        proto.write(1133871366155L, this.mDeferHidingClient);
        proto.write(1133871366156L, this.reportedDrawn);
        proto.write(1133871366157L, this.reportedVisible);
        proto.write(1120986464270L, this.mNumInterestingWindows);
        proto.write(1120986464271L, this.mNumDrawnWindows);
        proto.write(1133871366160L, this.allDrawn);
        proto.write(1133871366161L, this.mLastAllDrawn);
        WindowState windowState = this.startingWindow;
        if (windowState != null) {
            windowState.writeIdentifierToProto(proto, 1146756268051L);
        }
        proto.write(1133871366164L, this.startingDisplayed);
        proto.write(1133871366345L, this.startingMoved);
        proto.write(1133871366166L, this.mVisibleSetFromTransferredStartingWindow);
        for (Rect bounds : this.mFrozenBounds) {
            bounds.dumpDebug(proto, 2246267895831L);
        }
        writeIdentifierToProto(proto, 1146756268058L);
        proto.write(1138166333467L, this.mState.toString());
        proto.write(1133871366172L, isRootOfTask());
        if (hasProcess()) {
            proto.write(1120986464285L, this.app.getPid());
        }
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.WindowContainer
    long getProtoFieldId() {
        return 1146756268038L;
    }

    @Override // com.android.server.wm.WindowToken, com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        if (logLevel == 2 && !isVisible()) {
            return;
        }
        long token = proto.start(fieldId);
        dumpDebug(proto, logLevel);
        proto.end(token);
    }

    void writeNameToProto(ProtoOutputStream proto, long fieldId) {
        Token token = this.appToken;
        if (token != null) {
            proto.write(fieldId, token.getName());
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void writeIdentifierToProto(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, System.identityHashCode(this));
        proto.write(1120986464258L, this.mUserId);
        proto.write(1138166333443L, this.intent.getComponent().flattenToShortString());
        proto.end(token);
    }

    static class CompatDisplayInsets {
        private final int mHeight;
        final boolean mIsFloating;
        final Rect[] mNonDecorInsets = new Rect[4];
        final Rect[] mStableInsets = new Rect[4];
        private final int mWidth;

        CompatDisplayInsets(DisplayContent display, WindowContainer container) {
            boolean zTasksAreFloating = container.getWindowConfiguration().tasksAreFloating();
            this.mIsFloating = zTasksAreFloating;
            if (zTasksAreFloating) {
                Rect containerBounds = container.getWindowConfiguration().getBounds();
                this.mWidth = containerBounds.width();
                this.mHeight = containerBounds.height();
                Rect emptyRect = new Rect();
                for (int rotation = 0; rotation < 4; rotation++) {
                    this.mNonDecorInsets[rotation] = emptyRect;
                    this.mStableInsets[rotation] = emptyRect;
                }
                return;
            }
            this.mWidth = display.mBaseDisplayWidth;
            this.mHeight = display.mBaseDisplayHeight;
            DisplayPolicy policy = display.getDisplayPolicy();
            for (int rotation2 = 0; rotation2 < 4; rotation2++) {
                this.mNonDecorInsets[rotation2] = new Rect();
                this.mStableInsets[rotation2] = new Rect();
                boolean z = true;
                if (rotation2 != 1 && rotation2 != 3) {
                    z = false;
                }
                boolean rotated = z;
                int dw = rotated ? this.mHeight : this.mWidth;
                int dh = rotated ? this.mWidth : this.mHeight;
                DisplayCutout cutout = display.calculateDisplayCutoutForRotation(rotation2).getDisplayCutout();
                policy.getNonDecorInsetsLw(rotation2, dw, dh, cutout, this.mNonDecorInsets[rotation2]);
                this.mStableInsets[rotation2].set(this.mNonDecorInsets[rotation2]);
                policy.convertNonDecorInsetsToStableInsets(this.mStableInsets[rotation2], rotation2);
            }
        }

        void getBoundsByRotation(Rect outBounds, int rotation) {
            boolean rotated = true;
            if (rotation != 1 && rotation != 3) {
                rotated = false;
            }
            int dw = rotated ? this.mHeight : this.mWidth;
            int dh = rotated ? this.mWidth : this.mHeight;
            outBounds.set(0, 0, dw, dh);
        }

        void getFrameByOrientation(Rect outBounds, int orientation) {
            int longSide = Math.max(this.mWidth, this.mHeight);
            int shortSide = Math.min(this.mWidth, this.mHeight);
            boolean isLandscape = orientation == 2;
            outBounds.set(0, 0, isLandscape ? longSide : shortSide, isLandscape ? shortSide : longSide);
        }

        void getContainerBounds(Rect outAppBounds, Rect outBounds, int rotation, int orientation, boolean orientationRequested, boolean canChangeOrientation) {
            if (this.mIsFloating) {
                getFrameByOrientation(outBounds, orientation);
                outAppBounds.set(outBounds);
                return;
            }
            if (canChangeOrientation) {
                getBoundsByRotation(outBounds, rotation);
                if (orientationRequested) {
                    getFrameByOrientation(outAppBounds, orientation);
                } else {
                    outAppBounds.set(outBounds);
                }
            } else {
                if (!orientationRequested) {
                    outBounds.set(0, 0, this.mWidth, this.mHeight);
                } else {
                    getFrameByOrientation(outBounds, orientation);
                    if ((outBounds.width() > outBounds.height()) != (this.mWidth > this.mHeight)) {
                        if (orientation == 2) {
                            int i = this.mWidth;
                            outBounds.bottom = (int) ((i * i) / this.mHeight);
                            outBounds.right = this.mWidth;
                        } else {
                            outBounds.bottom = this.mHeight;
                            int i2 = this.mHeight;
                            outBounds.right = (int) ((i2 * i2) / this.mWidth);
                        }
                        outBounds.offset(ActivityRecord.getHorizontalCenterOffset(this.mWidth, outBounds.width()), 0);
                    }
                }
                outAppBounds.set(outBounds);
            }
            if (rotation != -1) {
                Task.intersectWithInsetsIfFits(outAppBounds, outBounds, this.mNonDecorInsets[rotation]);
            }
        }
    }

    private static class AppSaturationInfo {
        float[] mMatrix;
        float[] mTranslation;

        private AppSaturationInfo() {
            this.mMatrix = new float[9];
            this.mTranslation = new float[3];
        }

        void setSaturation(float[] matrix, float[] translation) {
            float[] fArr = this.mMatrix;
            System.arraycopy(matrix, 0, fArr, 0, fArr.length);
            float[] fArr2 = this.mTranslation;
            System.arraycopy(translation, 0, fArr2, 0, fArr2.length);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    RemoteAnimationTarget createRemoteAnimationTarget(RemoteAnimationController.RemoteAnimationRecord record) {
        WindowState mainWindow = findMainWindow();
        if (this.task == null || mainWindow == null) {
            return null;
        }
        Rect insets = new Rect();
        mainWindow.getContentInsets(insets);
        InsetUtils.addInsets(insets, getLetterboxInsets());
        return new RemoteAnimationTarget(this.task.mTaskId, record.getMode(), record.mAdapter.mCapturedLeash, !fillsParent(), mainWindow.mWinAnimator.mLastClipRect, insets, getPrefixOrderIndex(), record.mAdapter.mPosition, record.mAdapter.mLocalBounds, record.mAdapter.mStackBounds, this.task.getWindowConfiguration(), false, record.mThumbnailAdapter != null ? record.mThumbnailAdapter.mCapturedLeash : null, record.mStartBounds);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean canCreateRemoteAnimationTarget() {
        return true;
    }

    @Override // com.android.server.wm.WindowContainer
    void getAnimationFrames(Rect outFrame, Rect outInsets, Rect outStableInsets, Rect outSurfaceInsets) {
        WindowState win = findMainWindow();
        if (win == null) {
            return;
        }
        win.getAnimationFrames(outFrame, outInsets, outStableInsets, outSurfaceInsets);
    }

    void setPictureInPictureParams(PictureInPictureParams p) {
        this.pictureInPictureArgs.copyOnlySet(p);
        getTask().getRootTask().onPictureInPictureParamsChanged();
    }
}
