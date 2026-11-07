package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AppGlobals;
import android.app.TaskInfo;
import android.app.WindowConfiguration;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.os.Debug;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.voice.IVoiceInteractionSession;
import android.util.ArraySet;
import android.util.DisplayMetrics;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import android.view.DisplayInfo;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.WindowManager;
import android.window.ITaskOrganizer;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.function.QuadFunction;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.TriFunction;
import com.android.internal.util.function.TriPredicate;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.util.function.pooled.PooledPredicate;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.usb.descriptors.UsbACInterface;
import com.android.server.usb.descriptors.UsbDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public class Task extends WindowContainer<WindowContainer> {
    private static final String ATTR_AFFINITY = "affinity";
    private static final String ATTR_ASKEDCOMPATMODE = "asked_compat_mode";
    private static final String ATTR_AUTOREMOVERECENTS = "auto_remove_recents";
    private static final String ATTR_CALLING_FEATURE_ID = "calling_feature_id";
    private static final String ATTR_CALLING_PACKAGE = "calling_package";
    private static final String ATTR_CALLING_UID = "calling_uid";
    private static final String ATTR_EFFECTIVE_UID = "effective_uid";
    private static final String ATTR_LASTDESCRIPTION = "last_description";
    private static final String ATTR_LASTTIMEMOVED = "last_time_moved";
    private static final String ATTR_MIN_HEIGHT = "min_height";
    private static final String ATTR_MIN_WIDTH = "min_width";
    private static final String ATTR_NEVERRELINQUISH = "never_relinquish_identity";
    private static final String ATTR_NEXT_AFFILIATION = "next_affiliation";
    private static final String ATTR_NON_FULLSCREEN_BOUNDS = "non_fullscreen_bounds";
    private static final String ATTR_ORIGACTIVITY = "orig_activity";
    private static final String ATTR_PERSIST_TASK_VERSION = "persist_task_version";
    private static final String ATTR_PREV_AFFILIATION = "prev_affiliation";
    private static final String ATTR_REALACTIVITY = "real_activity";
    private static final String ATTR_REALACTIVITY_SUSPENDED = "real_activity_suspended";
    private static final String ATTR_RESIZE_MODE = "resize_mode";
    private static final String ATTR_ROOTHASRESET = "root_has_reset";
    private static final String ATTR_ROOT_AFFINITY = "root_affinity";
    private static final String ATTR_SUPPORTS_PICTURE_IN_PICTURE = "supports_picture_in_picture";
    private static final String ATTR_TASKID = "task_id";

    @Deprecated
    private static final String ATTR_TASKTYPE = "task_type";
    private static final String ATTR_TASK_AFFILIATION = "task_affiliation";
    private static final String ATTR_TASK_AFFILIATION_COLOR = "task_affiliation_color";
    private static final String ATTR_USERID = "user_id";
    private static final String ATTR_USER_SETUP_COMPLETE = "user_setup_complete";
    private static final String ATTR_WINDOW_LAYOUT_AFFINITY = "window_layout_affinity";
    static final int FLAG_FORCE_HIDDEN_FOR_PINNED_TASK = 1;
    static final int FLAG_FORCE_HIDDEN_FOR_TASK_ORG = 2;
    static final int INVALID_MIN_SIZE = -1;
    static final int LOCK_TASK_AUTH_ALLOWLISTED = 3;
    static final int LOCK_TASK_AUTH_DONT_LOCK = 0;
    static final int LOCK_TASK_AUTH_LAUNCHABLE = 2;
    static final int LOCK_TASK_AUTH_LAUNCHABLE_PRIV = 4;
    static final int LOCK_TASK_AUTH_PINNABLE = 1;
    static final int PERSIST_TASK_VERSION = 1;
    static final int REPARENT_KEEP_STACK_AT_FRONT = 1;
    static final int REPARENT_LEAVE_STACK_IN_PLACE = 2;
    static final int REPARENT_MOVE_STACK_TO_FRONT = 0;
    private static final String TAG = "ActivityTaskManager";
    private static final String TAG_ACTIVITY = "activity";
    private static final String TAG_ADD_REMOVE = "ActivityTaskManager";
    private static final String TAG_AFFINITYINTENT = "affinity_intent";
    private static final String TAG_INTENT = "intent";
    private static final String TAG_LOCKTASK = "ActivityTaskManager";
    private static final String TAG_RECENTS = "ActivityTaskManager";
    private static final String TAG_TASKS = "ActivityTaskManager";
    private static Exception sTmpException;
    String affinity;
    Intent affinityIntent;
    boolean askedCompatMode;
    boolean autoRemoveRecents;
    int effectiveUid;
    boolean inRecents;
    Intent intent;
    boolean isAvailable;
    boolean isPersistable;
    long lastActiveTime;
    CharSequence lastDescription;
    int mAffiliatedTaskColor;
    int mAffiliatedTaskId;
    final ActivityTaskManagerService mAtmService;
    String mCallingFeatureId;
    String mCallingPackage;
    int mCallingUid;
    private boolean mCanAffectSystemUiFlags;
    boolean mCreatedByOrganizer;
    private Dimmer mDimmer;
    private int mDragResizeMode;
    private boolean mDragResizing;
    final ArrayList<ActivityRecord> mExitingActivities;
    private final FindRootHelper mFindRootHelper;
    private int mForceHiddenFlags;
    private boolean mForceShowForAllUsers;
    private boolean mHasBeenVisible;
    boolean mInRemoveTask;
    boolean mIsEffectivelySystemApp;
    ActivityRecord mLastNoHistoryActivity;
    Rect mLastNonFullscreenBounds;
    ActivityRecord mLastPausedActivity;
    int mLastReportedRequestedOrientation;
    private int mLastRotationDisplayId;
    private final Point mLastSurfaceSize;
    private int mLastTaskOrganizerWindowingMode;
    long mLastTimeMoved;
    int mLayerRank;
    int mLockTaskAuth;
    int mLockTaskUid;
    Task mMainWindowSizeChangeTask;
    SurfaceControl.Transaction mMainWindowSizeChangeTransaction;
    int mMinHeight;
    int mMinWidth;
    private boolean mNeverRelinquishIdentity;
    Task mNextAffiliate;
    int mNextAffiliateTaskId;
    ActivityRecord mPausingActivity;
    final Rect mPreparedFrozenBounds;
    final Configuration mPreparedFrozenMergedConfig;
    private boolean mPreserveNonFloatingState;
    Task mPrevAffiliate;
    int mPrevAffiliateTaskId;
    int mPrevDisplayId;
    int mResizeMode;
    ActivityRecord mResumedActivity;
    final TaskActivitiesReport mReuseActivitiesReport;
    private boolean mReuseTask;
    private WindowProcessController mRootProcess;
    final RootWindowContainer mRootWindowContainer;
    private int mRotation;
    private float mShadowRadius;
    final ActivityStackSupervisor mStackSupervisor;
    boolean mSupportsPictureInPicture;
    boolean mTaskAppearedSent;
    private ActivityManager.TaskDescription mTaskDescription;
    final int mTaskId;
    ITaskOrganizer mTaskOrganizer;
    private final Rect mTmpBounds;
    private Configuration mTmpConfig;
    private final Rect mTmpDimBoundsRect;
    private final Rect mTmpFullBounds;
    private final Rect mTmpInsets;
    private final Rect mTmpNonDecorBounds;
    private Rect mTmpRect;
    private Rect mTmpRect2;
    private final Rect mTmpStableBounds;
    int mUserId;
    boolean mUserSetupComplete;
    String mWindowLayoutAffinity;
    int maxRecents;
    ComponentName origActivity;
    ComponentName realActivity;
    boolean realActivitySuspended;
    String rootAffinity;
    boolean rootWasReset;
    String stringName;
    IVoiceInteractor voiceInteractor;
    IVoiceInteractionSession voiceSession;

    @Retention(RetentionPolicy.SOURCE)
    @interface ReparentMoveStackMode {
    }

    /* JADX INFO: Access modifiers changed from: private */
    class FindRootHelper {
        private ActivityRecord mRoot;

        private FindRootHelper() {
        }

        private void clear() {
            this.mRoot = null;
        }

        ActivityRecord findRoot(boolean ignoreRelinquishIdentity, boolean setToBottomIfNone) {
            Function<ActivityRecord, Boolean> functionObtainFunction = PooledLambda.obtainFunction(new QuadFunction() { // from class: com.android.server.wm.-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4
                public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                    return Boolean.valueOf(((Task.FindRootHelper) obj).processActivity((ActivityRecord) obj2, ((Boolean) obj3).booleanValue(), ((Boolean) obj4).booleanValue()));
                }
            }, this, PooledLambda.__(ActivityRecord.class), Boolean.valueOf(ignoreRelinquishIdentity), Boolean.valueOf(setToBottomIfNone));
            clear();
            Task.this.forAllActivities(functionObtainFunction, false);
            functionObtainFunction.recycle();
            return this.mRoot;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean processActivity(ActivityRecord r, boolean ignoreRelinquishIdentity, boolean setToBottomIfNone) {
            if (this.mRoot == null && setToBottomIfNone) {
                this.mRoot = r;
            }
            if (r.finishing) {
                return false;
            }
            ActivityRecord activityRecord = this.mRoot;
            if (activityRecord == null || activityRecord.finishing) {
                this.mRoot = r;
            }
            int uid = this.mRoot == r ? Task.this.effectiveUid : r.info.applicationInfo.uid;
            if (!ignoreRelinquishIdentity && (this.mRoot.info.flags & 4096) != 0) {
                if (this.mRoot.info.applicationInfo.uid != 1000 && !this.mRoot.info.applicationInfo.isSystemApp() && this.mRoot.info.applicationInfo.uid != uid) {
                    return true;
                }
                this.mRoot = r;
                return false;
            }
            return true;
        }
    }

    Task(ActivityTaskManagerService atmService, int _taskId, ActivityInfo info, Intent _intent, IVoiceInteractionSession _voiceSession, IVoiceInteractor _voiceInteractor, ActivityManager.TaskDescription _taskDescription, ActivityStack stack) {
        this(atmService, _taskId, _intent, null, null, null, null, null, false, false, false, UserHandle.getUserId(info.applicationInfo.uid), 0, null, System.currentTimeMillis(), true, _taskDescription != null ? _taskDescription : new ActivityManager.TaskDescription(), _taskId, -1, -1, 0, info.applicationInfo.uid, info.packageName, null, info.resizeMode, info.supportsPictureInPicture(), false, false, -1, -1, info, _voiceSession, _voiceInteractor, stack);
    }

    Task(ActivityTaskManagerService atmService, int _taskId, Intent _intent, Intent _affinityIntent, String _affinity, String _rootAffinity, ComponentName _realActivity, ComponentName _origActivity, boolean _rootWasReset, boolean _autoRemoveRecents, boolean _askedCompatMode, int _userId, int _effectiveUid, String _lastDescription, long lastTimeMoved, boolean neverRelinquishIdentity, ActivityManager.TaskDescription _lastTaskDescription, int taskAffiliation, int prevTaskId, int nextTaskId, int taskAffiliationColor, int callingUid, String callingPackage, String callingFeatureId, int resizeMode, boolean supportsPictureInPicture, boolean _realActivitySuspended, boolean userSetupComplete, int minWidth, int minHeight, ActivityInfo info, IVoiceInteractionSession _voiceSession, IVoiceInteractor _voiceInteractor, ActivityStack stack) {
        super(atmService.mWindowManager);
        this.mShadowRadius = 0.0f;
        this.mLockTaskAuth = 1;
        this.mLockTaskUid = -1;
        this.isPersistable = false;
        this.mNeverRelinquishIdentity = true;
        this.mReuseTask = false;
        this.mPrevAffiliateTaskId = -1;
        this.mNextAffiliateTaskId = -1;
        this.mTmpStableBounds = new Rect();
        this.mTmpNonDecorBounds = new Rect();
        this.mTmpBounds = new Rect();
        this.mTmpInsets = new Rect();
        this.mTmpFullBounds = new Rect();
        this.mLastNonFullscreenBounds = null;
        this.mLayerRank = -1;
        this.mTmpConfig = new Configuration();
        this.mReuseActivitiesReport = new TaskActivitiesReport();
        this.mPreparedFrozenBounds = new Rect();
        this.mPreparedFrozenMergedConfig = new Configuration();
        this.mPrevDisplayId = -1;
        this.mLastRotationDisplayId = -1;
        this.mLastReportedRequestedOrientation = -1;
        this.mTmpRect = new Rect();
        this.mTmpRect2 = new Rect();
        this.mPreserveNonFloatingState = false;
        this.mDimmer = new Dimmer(this);
        this.mTmpDimBoundsRect = new Rect();
        this.mLastSurfaceSize = new Point();
        this.mCanAffectSystemUiFlags = true;
        this.mExitingActivities = new ArrayList<>();
        this.mPausingActivity = null;
        this.mLastPausedActivity = null;
        this.mLastNoHistoryActivity = null;
        this.mResumedActivity = null;
        this.mForceHiddenFlags = 0;
        this.mFindRootHelper = new FindRootHelper();
        this.mLastTaskOrganizerWindowingMode = -1;
        EventLogTags.writeWmTaskCreated(_taskId, stack != null ? getRootTaskId() : -1);
        this.mAtmService = atmService;
        this.mStackSupervisor = atmService.mStackSupervisor;
        this.mRootWindowContainer = this.mAtmService.mRootWindowContainer;
        this.mTaskId = _taskId;
        this.mUserId = _userId;
        this.mResizeMode = resizeMode;
        this.mSupportsPictureInPicture = supportsPictureInPicture;
        this.mTaskDescription = _lastTaskDescription;
        setOrientation(-2);
        this.mRemoteToken = new WindowContainer.RemoteToken(this);
        this.affinityIntent = _affinityIntent;
        this.affinity = _affinity;
        this.rootAffinity = _rootAffinity;
        this.voiceSession = _voiceSession;
        this.voiceInteractor = _voiceInteractor;
        this.realActivity = _realActivity;
        this.realActivitySuspended = _realActivitySuspended;
        this.origActivity = _origActivity;
        this.rootWasReset = _rootWasReset;
        this.isAvailable = true;
        this.autoRemoveRecents = _autoRemoveRecents;
        this.askedCompatMode = _askedCompatMode;
        this.mUserSetupComplete = userSetupComplete;
        this.effectiveUid = _effectiveUid;
        touchActiveTime();
        this.lastDescription = _lastDescription;
        this.mLastTimeMoved = lastTimeMoved;
        this.mNeverRelinquishIdentity = neverRelinquishIdentity;
        this.mAffiliatedTaskId = taskAffiliation;
        this.mAffiliatedTaskColor = taskAffiliationColor;
        this.mPrevAffiliateTaskId = prevTaskId;
        this.mNextAffiliateTaskId = nextTaskId;
        this.mCallingUid = callingUid;
        this.mCallingPackage = callingPackage;
        this.mCallingFeatureId = callingFeatureId;
        this.mResizeMode = resizeMode;
        if (info != null) {
            setIntent(_intent, info);
            setMinDimensions(info);
        } else {
            this.intent = _intent;
            this.mMinWidth = minWidth;
            this.mMinHeight = minHeight;
        }
        this.mAtmService.getTaskChangeNotificationController().notifyTaskCreated(_taskId, this.realActivity);
    }

    Task reuseAsLeafTask(IVoiceInteractionSession _voiceSession, IVoiceInteractor _voiceInteractor, Intent intent, ActivityInfo info, ActivityRecord activity) {
        this.voiceSession = _voiceSession;
        this.voiceInteractor = _voiceInteractor;
        setIntent(activity, intent, info);
        setMinDimensions(info);
        this.mAtmService.getTaskChangeNotificationController().notifyTaskCreated(this.mTaskId, this.realActivity);
        return this;
    }

    private void cleanUpResourcesForDestroy(ConfigurationContainer oldParent) {
        if (hasChild()) {
            return;
        }
        if (isLeafTask()) {
            saveLaunchingStateIfNeeded(((WindowContainer) oldParent).getDisplayContent());
        }
        boolean isVoiceSession = this.voiceSession != null;
        if (isVoiceSession) {
            try {
                this.voiceSession.taskFinished(this.intent, this.mTaskId);
            } catch (RemoteException e) {
            }
        }
        if (autoRemoveFromRecents() || isVoiceSession) {
            this.mStackSupervisor.mRecentTasks.remove(this);
        }
        removeIfPossible();
    }

    @Override // com.android.server.wm.WindowContainer
    void removeIfPossible() {
        boolean isRootTask = isRootTask();
        if (!isRootTask) {
            this.mAtmService.getLockTaskController().clearLockedTask(this);
        }
        if (shouldDeferRemoval()) {
            return;
        }
        removeImmediately();
        if (isLeafTask()) {
            this.mAtmService.getTaskChangeNotificationController().notifyTaskRemoved(this.mTaskId);
        }
    }

    void setResizeMode(int resizeMode) {
        if (this.mResizeMode == resizeMode) {
            return;
        }
        this.mResizeMode = resizeMode;
        this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
        this.mRootWindowContainer.resumeFocusedStacksTopActivities();
        updateTaskDescription();
    }

    boolean resize(Rect bounds, int resizeMode, boolean preserveWindow) {
        ActivityRecord r;
        this.mAtmService.deferWindowLayout();
        boolean forced = (resizeMode & 2) != 0;
        try {
            if (getParent() == null) {
                setBounds(bounds);
                if (!inFreeformWindowingMode()) {
                    this.mStackSupervisor.restoreRecentTaskLocked(this, null, false);
                }
                this.mAtmService.continueWindowLayout();
                return true;
            }
            if (!canResizeToBounds(bounds)) {
                throw new IllegalArgumentException("resizeTask: Can not resize task=" + this + " to bounds=" + bounds + " resizeMode=" + this.mResizeMode);
            }
            Trace.traceBegin(32L, "resizeTask_" + this.mTaskId);
            boolean updatedConfig = false;
            this.mTmpConfig.setTo(getResolvedOverrideConfiguration());
            if (setBounds(bounds) != 0) {
                updatedConfig = true ^ this.mTmpConfig.equals(getResolvedOverrideConfiguration());
            }
            boolean kept = true;
            if (updatedConfig && (r = topRunningActivityLocked()) != null) {
                kept = r.ensureActivityConfiguration(0, preserveWindow);
                this.mRootWindowContainer.ensureActivitiesVisible(r, 0, preserveWindow);
                if (!kept) {
                    this.mRootWindowContainer.resumeFocusedStacksTopActivities();
                }
            }
            resize(kept, forced);
            saveLaunchingStateIfNeeded();
            Trace.traceEnd(32L);
            this.mAtmService.continueWindowLayout();
            return kept;
        } catch (Throwable th) {
            this.mAtmService.continueWindowLayout();
            throw th;
        }
    }

    boolean reparent(ActivityStack preferredStack, boolean toTop, int moveStackMode, boolean animate, boolean deferResume, String reason) {
        return reparent(preferredStack, toTop ? Integer.MAX_VALUE : 0, moveStackMode, animate, deferResume, true, reason);
    }

    boolean reparent(ActivityStack preferredStack, boolean toTop, int moveStackMode, boolean animate, boolean deferResume, boolean schedulePictureInPictureModeChange, String reason) {
        return reparent(preferredStack, toTop ? Integer.MAX_VALUE : 0, moveStackMode, animate, deferResume, schedulePictureInPictureModeChange, reason);
    }

    boolean reparent(ActivityStack preferredStack, int position, int moveStackMode, boolean animate, boolean deferResume, String reason) {
        return reparent(preferredStack, position, moveStackMode, animate, deferResume, true, reason);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x014b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0163  */
    /* JADX WARN: Code duplicated, block: B:118:0x00b8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:128:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0090  */
    /* JADX WARN: Code duplicated, block: B:46:0x009b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00be A[Catch: all -> 0x00c6, TRY_LEAVE, TryCatch #2 {all -> 0x00c6, blocks: (B:57:0x00b8, B:59:0x00be, B:78:0x00ef), top: B:118:0x00b8 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:73:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ef A[Catch: all -> 0x00c6, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00c6, blocks: (B:57:0x00b8, B:59:0x00be, B:78:0x00ef), top: B:118:0x00b8 }] */
    /* JADX WARN: Code duplicated, block: B:80:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:84:0x010d  */
    /* JADX WARN: Code duplicated, block: B:86:0x0116 A[Catch: all -> 0x0103, TRY_LEAVE, TryCatch #0 {all -> 0x0103, blocks: (B:81:0x00ff, B:86:0x0116, B:91:0x0125), top: B:114:0x00ff }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0123 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:94:0x0132  */
    /* JADX WARN: Code duplicated, block: B:96:0x013b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x013d  */
    /* JADX WARN: Code duplicated, block: B:98:0x013f  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    boolean reparent(ActivityStack preferredStack, int position, int moveStackMode, boolean animate, boolean deferResume, boolean schedulePictureInPictureModeChange, String reason) throws Throwable {
        boolean wasFocused;
        boolean z;
        boolean wasResumed;
        boolean z2;
        boolean wasPaused;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean moveStackToFront;
        ActivityStack toStack;
        boolean z6;
        ActivityStack toStack2;
        boolean z7;
        ActivityStackSupervisor supervisor = this.mStackSupervisor;
        RootWindowContainer root = this.mRootWindowContainer;
        WindowManagerService windowManagerService = this.mAtmService.mWindowManager;
        ActivityStack sourceStack = getStack();
        ActivityStack toStack3 = supervisor.getReparentTargetStack(this, preferredStack, position == Integer.MAX_VALUE);
        if (toStack3 == sourceStack || !canBeLaunchedOnDisplay(toStack3.getDisplayId())) {
            return false;
        }
        boolean toTopOfStack = position == Integer.MAX_VALUE;
        if (toTopOfStack && toStack3.getResumedActivity() != null && toStack3.topRunningActivity() != null) {
            toStack3.startPausingLocked(false, false, null);
        }
        int toStackWindowingMode = toStack3.getWindowingMode();
        ActivityRecord topActivity = getTopNonFinishingActivity();
        boolean mightReplaceWindow = topActivity != null && replaceWindowsOnTaskMove(getWindowingMode(), toStackWindowingMode);
        if (mightReplaceWindow) {
            windowManagerService.setWillReplaceWindow(topActivity.appToken, animate);
        }
        this.mAtmService.deferWindowLayout();
        try {
            ActivityRecord r = topRunningActivityLocked();
            if (r == null) {
                wasFocused = false;
                if (r == null) {
                    z = false;
                } else {
                    z = false;
                }
                wasResumed = z;
                if (r != null) {
                    z2 = false;
                    wasPaused = z2;
                    if (r != null) {
                        z3 = false;
                        boolean wasFront = z3;
                        if (moveStackMode != 0) {
                            z4 = true;
                            if (moveStackMode == 1) {
                            }
                            z5 = false;
                            moveStackToFront = z5;
                            reparent(toStack3, position, moveStackToFront, reason);
                            if (schedulePictureInPictureModeChange) {
                                supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                            }
                            if (r != null) {
                                toStack = toStack3;
                                toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                            } else {
                                toStack = toStack3;
                            }
                            if (!animate) {
                                this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                            }
                            toStack.prepareFreezingTaskBounds();
                            if (toStackWindowingMode == 3) {
                                this.mStackSupervisor.moveRecentsStackToFront(reason);
                            }
                            this.mAtmService.continueWindowLayout();
                            if (mightReplaceWindow) {
                                windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                            }
                            if (deferResume) {
                                z6 = false;
                            } else {
                                if (mightReplaceWindow) {
                                    z7 = false;
                                } else {
                                    z7 = z4;
                                }
                                z6 = false;
                                root.ensureActivitiesVisible(null, 0, z7);
                                root.resumeFocusedStacksTopActivities();
                            }
                            toStack2 = toStack;
                            supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                            if (preferredStack == toStack2) {
                                return z4;
                            }
                            return z6;
                        }
                        z4 = true;
                        z5 = z4;
                        moveStackToFront = z5;
                        reparent(toStack3, position, moveStackToFront, reason);
                        if (schedulePictureInPictureModeChange) {
                            supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                        }
                        if (r != null) {
                            toStack = toStack3;
                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                        } else {
                            toStack = toStack3;
                        }
                        if (!animate) {
                            this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                        }
                        toStack.prepareFreezingTaskBounds();
                        if (toStackWindowingMode == 3) {
                            this.mStackSupervisor.moveRecentsStackToFront(reason);
                        }
                        this.mAtmService.continueWindowLayout();
                        if (mightReplaceWindow) {
                            windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                        }
                        if (deferResume) {
                            if (mightReplaceWindow) {
                                z7 = z4;
                            } else {
                                z7 = false;
                            }
                            z6 = false;
                            root.ensureActivitiesVisible(null, 0, z7);
                            root.resumeFocusedStacksTopActivities();
                        } else {
                            z6 = false;
                        }
                        toStack2 = toStack;
                        supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                        if (preferredStack == toStack2) {
                            return z4;
                        }
                        return z6;
                    }
                    if (sourceStack.isTopStackInDisplayArea()) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    boolean wasFront2 = z3;
                    if (moveStackMode != 0) {
                        z4 = true;
                        if (moveStackMode == 1) {
                        }
                        z5 = false;
                        moveStackToFront = z5;
                        reparent(toStack3, position, moveStackToFront, reason);
                        if (schedulePictureInPictureModeChange) {
                            supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                        }
                        if (r != null) {
                            toStack = toStack3;
                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                        } else {
                            toStack = toStack3;
                        }
                        if (!animate) {
                            this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                        }
                        toStack.prepareFreezingTaskBounds();
                        if (toStackWindowingMode == 3) {
                            this.mStackSupervisor.moveRecentsStackToFront(reason);
                        }
                        this.mAtmService.continueWindowLayout();
                        if (mightReplaceWindow) {
                            windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                        }
                        if (deferResume) {
                            if (mightReplaceWindow) {
                                z7 = z4;
                            } else {
                                z7 = false;
                            }
                            z6 = false;
                            root.ensureActivitiesVisible(null, 0, z7);
                            root.resumeFocusedStacksTopActivities();
                        } else {
                            z6 = false;
                        }
                        toStack2 = toStack;
                        supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                        if (preferredStack == toStack2) {
                            return z4;
                        }
                        return z6;
                    }
                    z4 = true;
                    z5 = z4;
                    moveStackToFront = z5;
                    reparent(toStack3, position, moveStackToFront, reason);
                    if (schedulePictureInPictureModeChange) {
                        supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                    }
                    if (r != null) {
                        toStack = toStack3;
                        toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                    } else {
                        toStack = toStack3;
                    }
                    if (!animate) {
                        this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                    }
                    toStack.prepareFreezingTaskBounds();
                    if (toStackWindowingMode == 3) {
                        this.mStackSupervisor.moveRecentsStackToFront(reason);
                    }
                    this.mAtmService.continueWindowLayout();
                    if (mightReplaceWindow) {
                        windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                    }
                    if (deferResume) {
                        if (mightReplaceWindow) {
                            z7 = z4;
                        } else {
                            z7 = false;
                        }
                        z6 = false;
                        root.ensureActivitiesVisible(null, 0, z7);
                        root.resumeFocusedStacksTopActivities();
                    } else {
                        z6 = false;
                    }
                    toStack2 = toStack;
                    supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                    if (preferredStack == toStack2) {
                        return z4;
                    }
                    return z6;
                }
                if (sourceStack.mPausingActivity == r) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                wasPaused = z2;
                if (r != null) {
                    z3 = false;
                    boolean wasFront3 = z3;
                    if (moveStackMode != 0) {
                        z4 = true;
                        if (moveStackMode == 1) {
                        }
                        z5 = false;
                        moveStackToFront = z5;
                        reparent(toStack3, position, moveStackToFront, reason);
                        if (schedulePictureInPictureModeChange) {
                            supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                        }
                        if (r != null) {
                            toStack = toStack3;
                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                        } else {
                            toStack = toStack3;
                        }
                        if (!animate) {
                            this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                        }
                        toStack.prepareFreezingTaskBounds();
                        if (toStackWindowingMode == 3) {
                            this.mStackSupervisor.moveRecentsStackToFront(reason);
                        }
                        this.mAtmService.continueWindowLayout();
                        if (mightReplaceWindow) {
                            windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                        }
                        if (deferResume) {
                            if (mightReplaceWindow) {
                                z7 = z4;
                            } else {
                                z7 = false;
                            }
                            z6 = false;
                            root.ensureActivitiesVisible(null, 0, z7);
                            root.resumeFocusedStacksTopActivities();
                        } else {
                            z6 = false;
                        }
                        toStack2 = toStack;
                        supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                        if (preferredStack == toStack2) {
                            return z4;
                        }
                        return z6;
                    }
                    z4 = true;
                    z5 = z4;
                    moveStackToFront = z5;
                    reparent(toStack3, position, moveStackToFront, reason);
                    if (schedulePictureInPictureModeChange) {
                        supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                    }
                    if (r != null) {
                        toStack = toStack3;
                        toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                    } else {
                        toStack = toStack3;
                    }
                    if (!animate) {
                        this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                    }
                    toStack.prepareFreezingTaskBounds();
                    if (toStackWindowingMode == 3) {
                        this.mStackSupervisor.moveRecentsStackToFront(reason);
                    }
                    this.mAtmService.continueWindowLayout();
                    if (mightReplaceWindow) {
                        windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                    }
                    if (deferResume) {
                        if (mightReplaceWindow) {
                            z7 = z4;
                        } else {
                            z7 = false;
                        }
                        z6 = false;
                        root.ensureActivitiesVisible(null, 0, z7);
                        root.resumeFocusedStacksTopActivities();
                    } else {
                        z6 = false;
                    }
                    toStack2 = toStack;
                    supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                    if (preferredStack == toStack2) {
                        return z4;
                    }
                    return z6;
                }
                if (sourceStack.isTopStackInDisplayArea()) {
                    z3 = false;
                } else {
                    z3 = false;
                }
                boolean wasFront4 = z3;
                if (moveStackMode != 0) {
                    z4 = true;
                    if (moveStackMode == 1) {
                    }
                    z5 = false;
                    moveStackToFront = z5;
                    reparent(toStack3, position, moveStackToFront, reason);
                    if (schedulePictureInPictureModeChange) {
                        supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                    }
                    if (r != null) {
                        toStack = toStack3;
                        toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                    } else {
                        toStack = toStack3;
                    }
                    if (!animate) {
                        this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                    }
                    toStack.prepareFreezingTaskBounds();
                    if (toStackWindowingMode == 3) {
                        this.mStackSupervisor.moveRecentsStackToFront(reason);
                    }
                    this.mAtmService.continueWindowLayout();
                    if (mightReplaceWindow) {
                        windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                    }
                    if (deferResume) {
                        if (mightReplaceWindow) {
                            z7 = z4;
                        } else {
                            z7 = false;
                        }
                        z6 = false;
                        root.ensureActivitiesVisible(null, 0, z7);
                        root.resumeFocusedStacksTopActivities();
                    } else {
                        z6 = false;
                    }
                    toStack2 = toStack;
                    supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                    if (preferredStack == toStack2) {
                        return z4;
                    }
                    return z6;
                }
                z4 = true;
                z5 = z4;
                moveStackToFront = z5;
                reparent(toStack3, position, moveStackToFront, reason);
                if (schedulePictureInPictureModeChange) {
                    supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                }
                if (r != null) {
                    toStack = toStack3;
                    toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                } else {
                    toStack = toStack3;
                }
                if (!animate) {
                    this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                }
                toStack.prepareFreezingTaskBounds();
                if (toStackWindowingMode == 3) {
                    this.mStackSupervisor.moveRecentsStackToFront(reason);
                }
                this.mAtmService.continueWindowLayout();
                if (mightReplaceWindow) {
                    windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                }
                if (deferResume) {
                    if (mightReplaceWindow) {
                        z7 = z4;
                    } else {
                        z7 = false;
                    }
                    z6 = false;
                    root.ensureActivitiesVisible(null, 0, z7);
                    root.resumeFocusedStacksTopActivities();
                } else {
                    z6 = false;
                }
                toStack2 = toStack;
                supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                if (preferredStack == toStack2) {
                    return z4;
                }
                return z6;
            }
            try {
                if (root.isTopDisplayFocusedStack(sourceStack) && topRunningActivityLocked() == r) {
                    wasFocused = true;
                } else {
                    wasFocused = false;
                }
                if (r == null && sourceStack.getResumedActivity() == r) {
                    z = true;
                } else {
                    z = false;
                }
                wasResumed = z;
                if (r != null) {
                    z2 = false;
                    wasPaused = z2;
                    if (r != null) {
                        z3 = false;
                        boolean wasFront5 = z3;
                        if (moveStackMode != 0) {
                            z4 = true;
                            if (moveStackMode == 1) {
                            }
                            z5 = false;
                            moveStackToFront = z5;
                            reparent(toStack3, position, moveStackToFront, reason);
                            if (schedulePictureInPictureModeChange) {
                                supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                            }
                            if (r != null) {
                                toStack = toStack3;
                                toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                            } else {
                                toStack = toStack3;
                            }
                            if (!animate) {
                                this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                            }
                            toStack.prepareFreezingTaskBounds();
                            if (toStackWindowingMode == 3) {
                                this.mStackSupervisor.moveRecentsStackToFront(reason);
                            }
                            this.mAtmService.continueWindowLayout();
                            if (mightReplaceWindow) {
                                windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                            }
                            if (deferResume) {
                                if (mightReplaceWindow) {
                                    z7 = z4;
                                } else {
                                    z7 = false;
                                }
                                z6 = false;
                                root.ensureActivitiesVisible(null, 0, z7);
                                root.resumeFocusedStacksTopActivities();
                            } else {
                                z6 = false;
                            }
                            toStack2 = toStack;
                            supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                            if (preferredStack == toStack2) {
                                return z4;
                            }
                            return z6;
                        }
                        z4 = true;
                        z5 = z4;
                        moveStackToFront = z5;
                        reparent(toStack3, position, moveStackToFront, reason);
                        if (schedulePictureInPictureModeChange) {
                            supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                        }
                        if (r != null) {
                            toStack = toStack3;
                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                        } else {
                            toStack = toStack3;
                        }
                        if (!animate) {
                            this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                        }
                        toStack.prepareFreezingTaskBounds();
                        if (toStackWindowingMode == 3) {
                            this.mStackSupervisor.moveRecentsStackToFront(reason);
                        }
                        this.mAtmService.continueWindowLayout();
                        if (mightReplaceWindow) {
                            windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                        }
                        if (deferResume) {
                            if (mightReplaceWindow) {
                                z7 = z4;
                            } else {
                                z7 = false;
                            }
                            z6 = false;
                            root.ensureActivitiesVisible(null, 0, z7);
                            root.resumeFocusedStacksTopActivities();
                        } else {
                            z6 = false;
                        }
                        toStack2 = toStack;
                        supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                        if (preferredStack == toStack2) {
                            return z4;
                        }
                        return z6;
                    }
                    if (sourceStack.isTopStackInDisplayArea()) {
                        z3 = false;
                    } else {
                        z3 = false;
                    }
                    boolean wasFront6 = z3;
                    if (moveStackMode != 0) {
                        z4 = true;
                        if (moveStackMode == 1) {
                        }
                        z5 = false;
                        moveStackToFront = z5;
                        reparent(toStack3, position, moveStackToFront, reason);
                        if (schedulePictureInPictureModeChange) {
                            supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                        }
                        if (r != null) {
                            toStack = toStack3;
                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                        } else {
                            toStack = toStack3;
                        }
                        if (!animate) {
                            this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                        }
                        toStack.prepareFreezingTaskBounds();
                        if (toStackWindowingMode == 3) {
                            this.mStackSupervisor.moveRecentsStackToFront(reason);
                        }
                        this.mAtmService.continueWindowLayout();
                        if (mightReplaceWindow) {
                            windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                        }
                        if (deferResume) {
                            if (mightReplaceWindow) {
                                z7 = z4;
                            } else {
                                z7 = false;
                            }
                            z6 = false;
                            root.ensureActivitiesVisible(null, 0, z7);
                            root.resumeFocusedStacksTopActivities();
                        } else {
                            z6 = false;
                        }
                        toStack2 = toStack;
                        supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                        if (preferredStack == toStack2) {
                            return z4;
                        }
                        return z6;
                    }
                    z4 = true;
                    z5 = z4;
                    moveStackToFront = z5;
                    reparent(toStack3, position, moveStackToFront, reason);
                    if (schedulePictureInPictureModeChange) {
                        supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                    }
                    if (r != null) {
                        toStack = toStack3;
                        toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                    } else {
                        toStack = toStack3;
                    }
                    if (!animate) {
                        this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                    }
                    toStack.prepareFreezingTaskBounds();
                    if (toStackWindowingMode == 3) {
                        this.mStackSupervisor.moveRecentsStackToFront(reason);
                    }
                    this.mAtmService.continueWindowLayout();
                    if (mightReplaceWindow) {
                        windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                    }
                    if (deferResume) {
                        if (mightReplaceWindow) {
                            z7 = z4;
                        } else {
                            z7 = false;
                        }
                        z6 = false;
                        root.ensureActivitiesVisible(null, 0, z7);
                        root.resumeFocusedStacksTopActivities();
                    } else {
                        z6 = false;
                    }
                    toStack2 = toStack;
                    supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                    if (preferredStack == toStack2) {
                        return z4;
                    }
                    return z6;
                }
                try {
                    if (sourceStack.mPausingActivity == r) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    wasPaused = z2;
                    if (r != null) {
                        z3 = false;
                        boolean wasFront7 = z3;
                        if (moveStackMode != 0) {
                            z4 = true;
                            if (moveStackMode == 1) {
                            }
                            z5 = false;
                            moveStackToFront = z5;
                            reparent(toStack3, position, moveStackToFront, reason);
                            if (schedulePictureInPictureModeChange) {
                                supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                            }
                            if (r != null) {
                                toStack = toStack3;
                                toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                            } else {
                                toStack = toStack3;
                            }
                            if (!animate) {
                                this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                            }
                            toStack.prepareFreezingTaskBounds();
                            if (toStackWindowingMode == 3) {
                                this.mStackSupervisor.moveRecentsStackToFront(reason);
                            }
                            this.mAtmService.continueWindowLayout();
                            if (mightReplaceWindow) {
                                windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                            }
                            if (deferResume) {
                                if (mightReplaceWindow) {
                                    z7 = z4;
                                } else {
                                    z7 = false;
                                }
                                z6 = false;
                                root.ensureActivitiesVisible(null, 0, z7);
                                root.resumeFocusedStacksTopActivities();
                            } else {
                                z6 = false;
                            }
                            toStack2 = toStack;
                            supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                            if (preferredStack == toStack2) {
                                return z4;
                            }
                            return z6;
                        }
                        z4 = true;
                        z5 = z4;
                        moveStackToFront = z5;
                        reparent(toStack3, position, moveStackToFront, reason);
                        if (schedulePictureInPictureModeChange) {
                            supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                        }
                        if (r != null) {
                            toStack = toStack3;
                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                        } else {
                            toStack = toStack3;
                        }
                        if (!animate) {
                            this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                        }
                        toStack.prepareFreezingTaskBounds();
                        if (toStackWindowingMode == 3) {
                            this.mStackSupervisor.moveRecentsStackToFront(reason);
                        }
                        this.mAtmService.continueWindowLayout();
                        if (mightReplaceWindow) {
                            windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                        }
                        if (deferResume) {
                            if (mightReplaceWindow) {
                                z7 = z4;
                            } else {
                                z7 = false;
                            }
                            z6 = false;
                            root.ensureActivitiesVisible(null, 0, z7);
                            root.resumeFocusedStacksTopActivities();
                        } else {
                            z6 = false;
                        }
                        toStack2 = toStack;
                        supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                        if (preferredStack == toStack2) {
                            return z4;
                        }
                        return z6;
                    }
                    try {
                        if (sourceStack.isTopStackInDisplayArea() || sourceStack.topRunningActivity() != r) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        boolean wasFront8 = z3;
                        try {
                            try {
                                if (moveStackMode != 0) {
                                    z4 = true;
                                    if (moveStackMode == 1 || (!wasFocused && !wasFront8)) {
                                        z5 = false;
                                    }
                                    moveStackToFront = z5;
                                    reparent(toStack3, position, moveStackToFront, reason);
                                    if (schedulePictureInPictureModeChange) {
                                        supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                                    }
                                    if (r != null) {
                                        toStack = toStack3;
                                        try {
                                            toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                                        } catch (Throwable th) {
                                            th = th;
                                        }
                                    } else {
                                        toStack = toStack3;
                                    }
                                    if (!animate) {
                                        this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                                    }
                                    toStack.prepareFreezingTaskBounds();
                                    if (toStackWindowingMode == 3 && moveStackMode == z4) {
                                        this.mStackSupervisor.moveRecentsStackToFront(reason);
                                    }
                                    this.mAtmService.continueWindowLayout();
                                    if (mightReplaceWindow) {
                                        windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                                    }
                                    if (deferResume) {
                                        if (mightReplaceWindow) {
                                            z7 = z4;
                                        } else {
                                            z7 = false;
                                        }
                                        z6 = false;
                                        root.ensureActivitiesVisible(null, 0, z7);
                                        root.resumeFocusedStacksTopActivities();
                                    } else {
                                        z6 = false;
                                    }
                                    toStack2 = toStack;
                                    supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                                    if (preferredStack == toStack2) {
                                        return z4;
                                    }
                                    return z6;
                                }
                                z4 = true;
                                toStack.prepareFreezingTaskBounds();
                                if (toStackWindowingMode == 3) {
                                    this.mStackSupervisor.moveRecentsStackToFront(reason);
                                }
                                this.mAtmService.continueWindowLayout();
                                if (mightReplaceWindow) {
                                    windowManagerService.scheduleClearWillReplaceWindows(topActivity.appToken, !true);
                                }
                                if (deferResume) {
                                    if (mightReplaceWindow) {
                                        z7 = z4;
                                    } else {
                                        z7 = false;
                                    }
                                    z6 = false;
                                    root.ensureActivitiesVisible(null, 0, z7);
                                    root.resumeFocusedStacksTopActivities();
                                } else {
                                    z6 = false;
                                }
                                toStack2 = toStack;
                                supervisor.handleNonResizableTaskIfNeeded(this, preferredStack.getWindowingMode(), this.mRootWindowContainer.getDefaultTaskDisplayArea(), toStack2);
                                if (preferredStack == toStack2) {
                                    return z4;
                                }
                                return z6;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            reparent(toStack3, position, moveStackToFront, reason);
                            if (schedulePictureInPictureModeChange) {
                                supervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, sourceStack);
                            }
                            if (r != null) {
                                toStack = toStack3;
                                toStack3.moveToFrontAndResumeStateIfNeeded(r, moveStackToFront, wasResumed, wasPaused, reason);
                            } else {
                                toStack = toStack3;
                            }
                            if (!animate) {
                                this.mStackSupervisor.mNoAnimActivities.add(topActivity);
                            }
                        } catch (Throwable th3) {
                            th = th3;
                        }
                        z5 = z4;
                        moveStackToFront = z5;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
        }
        this.mAtmService.continueWindowLayout();
        throw th;
    }

    private static boolean replaceWindowsOnTaskMove(int sourceWindowingMode, int targetWindowingMode) {
        return sourceWindowingMode == 5 || targetWindowingMode == 5;
    }

    ActivityManager.TaskSnapshot getSnapshot(boolean isLowResolution, boolean restoreFromDisk) {
        return this.mAtmService.mWindowManager.getTaskSnapshot(this.mTaskId, this.mUserId, isLowResolution, restoreFromDisk);
    }

    void touchActiveTime() {
        this.lastActiveTime = SystemClock.elapsedRealtime();
    }

    long getInactiveDuration() {
        return SystemClock.elapsedRealtime() - this.lastActiveTime;
    }

    void setIntent(ActivityRecord r) {
        setIntent(r, null, null);
    }

    void setIntent(ActivityRecord r, Intent intent, ActivityInfo info) {
        Task t;
        boolean updateIdentity = false;
        if (this.intent == null) {
            updateIdentity = true;
        } else if (!this.mNeverRelinquishIdentity) {
            ActivityInfo activityInfo = info != null ? info : r.info;
            int i = this.effectiveUid;
            updateIdentity = i == 1000 || this.mIsEffectivelySystemApp || i == activityInfo.applicationInfo.uid;
        }
        if (updateIdentity) {
            this.mCallingUid = r.launchedFromUid;
            this.mCallingPackage = r.launchedFromPackage;
            this.mCallingFeatureId = r.launchedFromFeatureId;
            setIntent(intent != null ? intent : r.intent, info != null ? info : r.info);
            WindowContainer parent = getParent();
            if (parent != null && (t = parent.asTask()) != null) {
                t.setIntent(r);
            }
        }
        setLockTaskAuth(r);
    }

    private void setIntent(Intent _intent, ActivityInfo info) {
        boolean isLeaf = isLeafTask();
        if (this.intent == null) {
            this.mNeverRelinquishIdentity = (info.flags & 4096) == 0;
        } else if (this.mNeverRelinquishIdentity && isLeaf) {
            return;
        }
        String str = isLeaf ? info.taskAffinity : null;
        this.affinity = str;
        if (this.intent == null) {
            this.rootAffinity = str;
        }
        this.effectiveUid = info.applicationInfo.uid;
        this.mIsEffectivelySystemApp = info.applicationInfo.isSystemApp();
        this.stringName = null;
        if (info.targetActivity == null) {
            if (_intent != null && (_intent.getSelector() != null || _intent.getSourceBounds() != null)) {
                _intent = new Intent(_intent);
                _intent.setSelector(null);
                _intent.setSourceBounds(null);
            }
            this.intent = _intent;
            this.realActivity = _intent != null ? _intent.getComponent() : null;
            this.origActivity = null;
        } else {
            ComponentName targetComponent = new ComponentName(info.packageName, info.targetActivity);
            if (_intent != null) {
                Intent targetIntent = new Intent(_intent);
                targetIntent.setSelector(null);
                targetIntent.setSourceBounds(null);
                this.intent = targetIntent;
                this.realActivity = targetComponent;
                this.origActivity = _intent.getComponent();
            } else {
                this.intent = null;
                this.realActivity = targetComponent;
                this.origActivity = new ComponentName(info.packageName, info.name);
            }
        }
        this.mWindowLayoutAffinity = info.windowLayout != null ? info.windowLayout.windowLayoutAffinity : null;
        Intent intent = this.intent;
        int intentFlags = intent == null ? 0 : intent.getFlags();
        if ((2097152 & intentFlags) != 0) {
            this.rootWasReset = true;
        }
        this.mUserId = UserHandle.getUserId(info.applicationInfo.uid);
        this.mUserSetupComplete = Settings.Secure.getIntForUser(this.mAtmService.mContext.getContentResolver(), ATTR_USER_SETUP_COMPLETE, 0, this.mUserId) != 0;
        if ((info.flags & 8192) != 0) {
            this.autoRemoveRecents = true;
        } else if ((532480 & intentFlags) != 524288 || info.documentLaunchMode != 0) {
            this.autoRemoveRecents = false;
        } else {
            this.autoRemoveRecents = true;
        }
        if (this.mResizeMode != info.resizeMode) {
            this.mResizeMode = info.resizeMode;
            updateTaskDescription();
        }
        this.mSupportsPictureInPicture = info.supportsPictureInPicture();
    }

    void setMinDimensions(ActivityInfo info) {
        if (info != null && info.windowLayout != null) {
            this.mMinWidth = info.windowLayout.minWidth;
            this.mMinHeight = info.windowLayout.minHeight;
        } else {
            this.mMinWidth = -1;
            this.mMinHeight = -1;
        }
    }

    boolean isSameIntentFilter(ActivityRecord r) {
        Intent intent;
        Intent intent2 = new Intent(r.intent);
        if (Objects.equals(this.realActivity, r.mActivityComponent) && (intent = this.intent) != null) {
            intent2.setComponent(intent.getComponent());
        }
        return intent2.filterEquals(this.intent);
    }

    boolean returnsToHomeStack() {
        if (inMultiWindowMode() || !hasChild()) {
            return false;
        }
        Intent intent = this.intent;
        if (intent != null) {
            return intent != null && (intent.getFlags() & 268451840) == 268451840;
        }
        Task bottomTask = getBottomMostTask();
        return bottomTask != this && bottomTask.returnsToHomeStack();
    }

    void setPrevAffiliate(Task prevAffiliate) {
        this.mPrevAffiliate = prevAffiliate;
        this.mPrevAffiliateTaskId = prevAffiliate == null ? -1 : prevAffiliate.mTaskId;
    }

    void setNextAffiliate(Task nextAffiliate) {
        this.mNextAffiliate = nextAffiliate;
        this.mNextAffiliateTaskId = nextAffiliate == null ? -1 : nextAffiliate.mTaskId;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    void onParentChanged(ConfigurationContainer newParent, ConfigurationContainer oldParent) {
        DisplayContent display;
        DisplayContent oldDisplay;
        ActivityRecord top;
        if (newParent == null) {
            display = null;
        } else {
            display = ((WindowContainer) newParent).getDisplayContent();
        }
        if (oldParent == null) {
            oldDisplay = null;
        } else {
            oldDisplay = ((WindowContainer) oldParent).getDisplayContent();
        }
        this.mPrevDisplayId = oldDisplay != null ? oldDisplay.mDisplayId : -1;
        if (oldParent != null && newParent == null) {
            cleanUpResourcesForDestroy(oldParent);
        }
        if (display != null) {
            getConfiguration().windowConfiguration.setRotation(display.getWindowConfiguration().getRotation());
        }
        super.onParentChanged(newParent, oldParent);
        if (getParent() == null && this.mDisplayContent != null) {
            EventLogTags.writeWmStackRemoved(getRootTaskId());
            this.mDisplayContent = null;
            this.mWmService.mWindowPlacerLocked.requestTraversal();
        }
        if (oldParent != null) {
            Task oldParentTask = ((WindowContainer) oldParent).asTask();
            if (oldParentTask != null) {
                PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$ABB1r3i-Ua4IQKhbebsmnEGpWd8
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        ((Task) obj).cleanUpActivityReferences((ActivityRecord) obj2);
                    }
                }, oldParentTask, PooledLambda.__(ActivityRecord.class));
                forAllActivities((Consumer<ActivityRecord>) c);
                c.recycle();
            }
            if (oldParent.inPinnedWindowingMode() && (newParent == null || !newParent.inPinnedWindowingMode())) {
                this.mRootWindowContainer.notifyActivityPipModeChanged(this, null);
            }
        }
        if (newParent != null) {
            Task newParentTask = ((WindowContainer) newParent).asTask();
            if (newParentTask != null && (top = newParentTask.getTopNonFinishingActivity(false)) != null && top.isState(ActivityStack.ActivityState.RESUMED)) {
                newParentTask.setResumedActivity(top, "addedToTask");
            }
            IVoiceInteractionSession iVoiceInteractionSession = this.voiceSession;
            if (iVoiceInteractionSession != null) {
                try {
                    iVoiceInteractionSession.taskStarted(this.intent, this.mTaskId);
                } catch (RemoteException e) {
                }
            }
        }
        if (oldParent == null && newParent != null) {
            updateOverrideConfigurationFromLaunchBounds();
        }
        adjustBoundsForDisplayChangeIfNeeded(getDisplayContent());
        if (getWindowConfiguration().windowsAreScaleable()) {
            forceWindowsScaleable(true);
        } else {
            forceWindowsScaleable(false);
        }
        this.mRootWindowContainer.updateUIDsPresentOnDisplay();
    }

    void cleanUpActivityReferences(ActivityRecord r) {
        WindowContainer parent = getParent();
        if (parent != null && parent.asTask() != null) {
            parent.asTask().cleanUpActivityReferences(r);
            return;
        }
        r.removeTimeouts();
        this.mExitingActivities.remove(r);
        ActivityRecord activityRecord = this.mResumedActivity;
        if (activityRecord != null && activityRecord == r) {
            setResumedActivity(null, "cleanUpActivityReferences");
        }
        ActivityRecord activityRecord2 = this.mPausingActivity;
        if (activityRecord2 != null && activityRecord2 == r) {
            this.mPausingActivity = null;
        }
    }

    ActivityRecord getResumedActivity() {
        return this.mResumedActivity;
    }

    void setResumedActivity(ActivityRecord r, String reason) {
        if (this.mResumedActivity == r) {
            return;
        }
        this.mResumedActivity = r;
        this.mStackSupervisor.updateTopResumedActivityIfNeeded();
    }

    void updateTaskMovement(boolean toFront) {
        if (this.isPersistable) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.mLastTimeMoved = jCurrentTimeMillis;
            if (!toFront) {
                this.mLastTimeMoved = jCurrentTimeMillis * (-1);
            }
        }
        this.mRootWindowContainer.invalidateTaskLayers();
    }

    private void closeRecentsChain() {
        Task task = this.mPrevAffiliate;
        if (task != null) {
            task.setNextAffiliate(this.mNextAffiliate);
        }
        Task task2 = this.mNextAffiliate;
        if (task2 != null) {
            task2.setPrevAffiliate(this.mPrevAffiliate);
        }
        setPrevAffiliate(null);
        setNextAffiliate(null);
    }

    void removedFromRecents() {
        closeRecentsChain();
        if (this.inRecents) {
            this.inRecents = false;
            this.mAtmService.notifyTaskPersisterLocked(this, false);
        }
        clearRootProcess();
        this.mAtmService.mWindowManager.mTaskSnapshotController.notifyTaskRemovedFromRecents(this.mTaskId, this.mUserId);
    }

    void setTaskToAffiliateWith(Task taskToAffiliateWith) {
        closeRecentsChain();
        this.mAffiliatedTaskId = taskToAffiliateWith.mAffiliatedTaskId;
        this.mAffiliatedTaskColor = taskToAffiliateWith.mAffiliatedTaskColor;
        while (taskToAffiliateWith.mNextAffiliate != null) {
            Task nextRecents = taskToAffiliateWith.mNextAffiliate;
            if (nextRecents.mAffiliatedTaskId != this.mAffiliatedTaskId) {
                Slog.e("ActivityTaskManager", "setTaskToAffiliateWith: nextRecents=" + nextRecents + " affilTaskId=" + nextRecents.mAffiliatedTaskId + " should be " + this.mAffiliatedTaskId);
                if (nextRecents.mPrevAffiliate == taskToAffiliateWith) {
                    nextRecents.setPrevAffiliate(null);
                }
                taskToAffiliateWith.setNextAffiliate(null);
                break;
            }
            taskToAffiliateWith = nextRecents;
        }
        taskToAffiliateWith.setNextAffiliate(this);
        setPrevAffiliate(taskToAffiliateWith);
        setNextAffiliate(null);
    }

    Intent getBaseIntent() {
        Intent intent = this.intent;
        if (intent != null) {
            return intent;
        }
        Intent intent2 = this.affinityIntent;
        if (intent2 != null) {
            return intent2;
        }
        Task topTask = getTopMostTask();
        if (topTask == this || topTask == null) {
            return null;
        }
        return topTask.getBaseIntent();
    }

    ActivityRecord getRootActivity() {
        return getRootActivity(true, false);
    }

    ActivityRecord getRootActivity(boolean setToBottomIfNone) {
        return getRootActivity(false, setToBottomIfNone);
    }

    ActivityRecord getRootActivity(boolean ignoreRelinquishIdentity, boolean setToBottomIfNone) {
        return this.mFindRootHelper.findRoot(ignoreRelinquishIdentity, setToBottomIfNone);
    }

    ActivityRecord getTopNonFinishingActivity() {
        return getTopNonFinishingActivity(true);
    }

    ActivityRecord getTopNonFinishingActivity(boolean includeOverlays) {
        return getTopActivity(false, includeOverlays);
    }

    ActivityRecord topRunningActivityLocked() {
        if (getParent() == null) {
            return null;
        }
        return getActivity($$Lambda$DaFwIyqZTBVKE2yTN2iE7CDr8.INSTANCE);
    }

    boolean isUidPresent(int uid) {
        PooledPredicate p = PooledLambda.obtainPredicate($$Lambda$QEISWTQzWbgxRMT5rMnIEzpsKpc.INSTANCE, PooledLambda.__(ActivityRecord.class), Integer.valueOf(uid));
        boolean isUidPresent = getActivity(p) != null;
        p.recycle();
        return isUidPresent;
    }

    ActivityRecord topActivityWithStartingWindow() {
        if (getParent() == null) {
            return null;
        }
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$Task$NjqppbKxK56id-VgjMiQP_fUgAA
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Task.lambda$topActivityWithStartingWindow$0((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$topActivityWithStartingWindow$0(ActivityRecord r) {
        return r.mStartingWindowState == 1 && r.okToShowLocked();
    }

    private void getNumRunningActivities(TaskActivitiesReport reportOut) {
        reportOut.reset();
        forAllActivities(reportOut);
    }

    final void moveActivityToFrontLocked(ActivityRecord newTop) {
        Slog.i("ActivityTaskManager", "Removing and adding activity " + newTop + " to stack at top callers=" + Debug.getCallers(4));
        positionChildAtTop(newTop);
        updateEffectiveIntent();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public int getActivityType() {
        int applicationType = super.getActivityType();
        if (applicationType != 0 || !hasChild()) {
            return applicationType;
        }
        return getTopChild().getActivityType();
    }

    @Override // com.android.server.wm.WindowContainer
    void addChild(WindowContainer child, int index) {
        boolean hadChild = hasChild();
        int activityType = getActivityType();
        super.addChild(child, getAdjustedChildPosition(child, index));
        if (ProtoLog$Cache.WM_DEBUG_ADD_REMOVE_enabled) {
            String protoLogParam0 = String.valueOf(this);
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ADD_REMOVE, 1330804250, 0, null, protoLogParam0);
        }
        if (this.mTaskOrganizer != null && this.mCreatedByOrganizer && child.asTask() != null) {
            getDisplayArea().addStackReferenceIfNeeded((ActivityStack) child);
        }
        this.mRootWindowContainer.updateUIDsPresentOnDisplay();
        ActivityRecord r = child.asActivityRecord();
        if (r == null) {
            return;
        }
        r.inHistory = true;
        if (!hadChild) {
            if (r.getActivityType() == 0) {
                r.setActivityType(1);
            }
            setActivityType(r.getActivityType());
            this.isPersistable = r.isPersistable();
            this.mCallingUid = r.launchedFromUid;
            this.mCallingPackage = r.launchedFromPackage;
            this.mCallingFeatureId = r.launchedFromFeatureId;
            this.maxRecents = Math.min(Math.max(r.info.maxRecents, 1), ActivityTaskManager.getMaxAppRecentsLimitStatic());
        } else {
            r.setActivityType(activityType);
        }
        updateEffectiveIntent();
    }

    void addChild(ActivityRecord r) {
        addChild(r, Integer.MAX_VALUE);
    }

    @Override // com.android.server.wm.WindowContainer
    void removeChild(WindowContainer child) {
        removeChild(child, "removeChild");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeChild(WindowContainer r, String reason) {
        if (this.mCreatedByOrganizer && r.asTask() != null) {
            getDisplayArea().removeStackReferenceIfNeeded((ActivityStack) r);
        }
        if (!this.mChildren.contains(r)) {
            Slog.e("ActivityTaskManager", "removeChild: r=" + r + " not found in t=" + this);
            return;
        }
        Slog.d("WindowManager", "removeChild: child=" + r + " reason=" + reason);
        super.removeChild(r);
        if (inPinnedWindowingMode()) {
            this.mAtmService.getTaskChangeNotificationController().notifyTaskStackChanged();
        }
        if (hasChild()) {
            updateEffectiveIntent();
            if (onlyHasTaskOverlayActivities(true)) {
                this.mStackSupervisor.removeTask(this, false, false, reason);
                return;
            }
            return;
        }
        if (!this.mReuseTask && !this.mCreatedByOrganizer) {
            if (!isRootTask()) {
                getStack().removeChild(this, reason);
            }
            EventLogTags.writeWmTaskRemoved(this.mTaskId, "removeChild: last r=" + r + " in t=" + this);
            removeIfPossible();
        }
    }

    boolean onlyHasTaskOverlayActivities(boolean includeFinishing) {
        int count = 0;
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ActivityRecord r = getChildAt(i).asActivityRecord();
            if (r == null) {
                return false;
            }
            if (includeFinishing || !r.finishing) {
                if (!r.isTaskOverlay()) {
                    return false;
                }
                count++;
            }
        }
        return count > 0;
    }

    private boolean autoRemoveFromRecents() {
        return this.autoRemoveRecents || !(hasChild() || getHasBeenVisible());
    }

    void performClearTask(final String reason) {
        if (getStack() == null) {
            forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$Task$iKnNpBBRFRHs1rtFSWGK99Fqn1E
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$performClearTask$1$Task((ActivityRecord) obj);
                }
            });
        } else {
            forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$Task$VOng4N1A7NpHPSv6ujDiRFE4zsg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$performClearTask$2$Task(reason, (ActivityRecord) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$performClearTask$1$Task(ActivityRecord r) {
        if (r.finishing) {
            return;
        }
        r.takeFromHistory();
        removeChild(r);
    }

    public /* synthetic */ void lambda$performClearTask$2$Task(String reason, ActivityRecord r) {
        if (r.finishing) {
            return;
        }
        if (this.mAtmService.getActivityWhiteList().contains(r.mActivityComponent.flattenToShortString())) {
            Slog.d("ActivityTaskManager", "activity is in white list,not finish " + r.mActivityComponent.flattenToShortString());
            return;
        }
        r.finishIfPossible(0, null, null, reason, false);
    }

    void performClearTaskLocked() {
        this.mReuseTask = true;
        this.mStackSupervisor.beginDeferResume();
        try {
            performClearTask("clear-task-all");
        } finally {
            this.mStackSupervisor.endDeferResume();
            this.mReuseTask = false;
        }
    }

    ActivityRecord performClearTaskForReuseLocked(ActivityRecord newR, int launchFlags) {
        this.mReuseTask = true;
        this.mStackSupervisor.beginDeferResume();
        try {
            ActivityRecord result = performClearTaskLocked(newR, launchFlags);
            return result;
        } finally {
            this.mStackSupervisor.endDeferResume();
            this.mReuseTask = false;
        }
    }

    private ActivityRecord performClearTaskLocked(ActivityRecord newR, int launchFlags) {
        ActivityRecord r = findActivityInHistory(newR.mActivityComponent);
        if (r == null) {
            return null;
        }
        PooledFunction f = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$Task$lqGdYR9ABiPuG3_68w1VS6hrr8c
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Boolean.valueOf(Task.finishActivityAbove((ActivityRecord) obj, (ActivityRecord) obj2));
            }
        }, PooledLambda.__(ActivityRecord.class), r);
        forAllActivities((Function<ActivityRecord, Boolean>) f);
        f.recycle();
        if (r.launchMode == 0 && (536870912 & launchFlags) == 0 && !ActivityStarter.isDocumentLaunchesIntoExisting(launchFlags) && !r.finishing) {
            r.finishIfPossible("clear-task-top", false);
            return null;
        }
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean finishActivityAbove(ActivityRecord r, ActivityRecord boundaryActivity) {
        if (r == boundaryActivity) {
            return true;
        }
        if (!r.finishing) {
            ActivityOptions opts = r.takeOptionsLocked(false);
            if (opts != null) {
                boundaryActivity.updateOptionsLocked(opts);
            }
            r.finishIfPossible("clear-task-stack", false);
        }
        return false;
    }

    String lockTaskAuthToString() {
        int i = this.mLockTaskAuth;
        if (i == 0) {
            return "LOCK_TASK_AUTH_DONT_LOCK";
        }
        if (i == 1) {
            return "LOCK_TASK_AUTH_PINNABLE";
        }
        if (i == 2) {
            return "LOCK_TASK_AUTH_LAUNCHABLE";
        }
        if (i == 3) {
            return "LOCK_TASK_AUTH_ALLOWLISTED";
        }
        if (i == 4) {
            return "LOCK_TASK_AUTH_LAUNCHABLE_PRIV";
        }
        return "unknown=" + this.mLockTaskAuth;
    }

    void setLockTaskAuth() {
        setLockTaskAuth(getRootActivity());
    }

    private void setLockTaskAuth(ActivityRecord r) {
        int i = 1;
        if (r == null) {
            this.mLockTaskAuth = 1;
            return;
        }
        ComponentName componentName = this.realActivity;
        String pkg = componentName != null ? componentName.getPackageName() : null;
        LockTaskController lockTaskController = this.mAtmService.getLockTaskController();
        int i2 = r.lockTaskLaunchMode;
        if (i2 != 0) {
            if (i2 == 1) {
                this.mLockTaskAuth = 0;
                return;
            }
            if (i2 == 2) {
                this.mLockTaskAuth = 4;
                return;
            } else {
                if (i2 == 3) {
                    if (lockTaskController.isPackageAllowlisted(this.mUserId, pkg)) {
                        i = 2;
                    }
                    this.mLockTaskAuth = i;
                    return;
                }
                return;
            }
        }
        if (lockTaskController.isPackageAllowlisted(this.mUserId, pkg)) {
            i = 3;
        }
        this.mLockTaskAuth = i;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public boolean supportsSplitScreenWindowingMode() {
        Task topTask = getTopMostTask();
        return super.supportsSplitScreenWindowingMode() && (topTask == null || topTask.supportsSplitScreenWindowingModeInner());
    }

    private boolean supportsSplitScreenWindowingModeInner() {
        if (super.supportsSplitScreenWindowingMode() && this.mAtmService.mSupportsSplitScreenMultiWindow) {
            return this.mAtmService.mForceResizableActivities || (isResizeable(false) && !ActivityInfo.isPreserveOrientationMode(this.mResizeMode));
        }
        return false;
    }

    boolean canBeLaunchedOnDisplay(int displayId) {
        return this.mStackSupervisor.canPlaceEntityOnDisplay(displayId, -1, -1, null);
    }

    private boolean canResizeToBounds(Rect bounds) {
        if (bounds == null || !inFreeformWindowingMode()) {
            return true;
        }
        boolean landscape = bounds.width() > bounds.height();
        Rect configBounds = getRequestedOverrideBounds();
        int i = this.mResizeMode;
        if (i != 7) {
            return !(i == 6 && landscape) && (this.mResizeMode != 5 || landscape);
        }
        if (configBounds.isEmpty()) {
            return true;
        }
        return landscape == (configBounds.width() > configBounds.height());
    }

    boolean isClearingToReuseTask() {
        return this.mReuseTask;
    }

    ActivityRecord findActivityInHistory(ComponentName component) {
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$Task$BP51Xfr33NBfsJ4rKO04RomX2Tg
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return Task.matchesActivityInHistory((ActivityRecord) obj, (ComponentName) obj2);
            }
        }, PooledLambda.__(ActivityRecord.class), component);
        ActivityRecord r = getActivity(p);
        p.recycle();
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean matchesActivityInHistory(ActivityRecord r, ComponentName activityComponent) {
        return !r.finishing && r.mActivityComponent.equals(activityComponent);
    }

    void updateTaskDescription() {
        Task t;
        ActivityRecord root = getRootActivity(true);
        if (root == null) {
            return;
        }
        ActivityManager.TaskDescription taskDescription = new ActivityManager.TaskDescription();
        PooledFunction f = PooledLambda.obtainFunction(new TriFunction() { // from class: com.android.server.wm.-$$Lambda$Task$TUGPkEKamN60PF6hJQxUwDBjU-M
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(Task.setTaskDescriptionFromActivityAboveRoot((ActivityRecord) obj, (ActivityRecord) obj2, (ActivityManager.TaskDescription) obj3));
            }
        }, PooledLambda.__(ActivityRecord.class), root, taskDescription);
        forAllActivities((Function<ActivityRecord, Boolean>) f);
        f.recycle();
        taskDescription.setResizeMode(this.mResizeMode);
        taskDescription.setMinWidth(this.mMinWidth);
        taskDescription.setMinHeight(this.mMinHeight);
        setTaskDescription(taskDescription);
        if (this.mTaskId == this.mAffiliatedTaskId) {
            this.mAffiliatedTaskColor = taskDescription.getPrimaryColor();
        }
        this.mAtmService.getTaskChangeNotificationController().notifyTaskDescriptionChanged(getTaskInfo());
        WindowContainer parent = getParent();
        if (parent != null && (t = parent.asTask()) != null) {
            t.updateTaskDescription();
        }
        if (isOrganized()) {
            this.mAtmService.mTaskOrganizerController.dispatchTaskInfoChanged(this, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean setTaskDescriptionFromActivityAboveRoot(ActivityRecord r, ActivityRecord root, ActivityManager.TaskDescription td) {
        if (!r.isTaskOverlay() && r.taskDescription != null) {
            ActivityManager.TaskDescription atd = r.taskDescription;
            if (td.getLabel() == null) {
                td.setLabel(atd.getLabel());
            }
            if (td.getRawIcon() == null) {
                td.setIcon(atd.getRawIcon());
            }
            if (td.getIconFilename() == null) {
                td.setIconFilename(atd.getIconFilename());
            }
            if (td.getPrimaryColor() == 0) {
                td.setPrimaryColor(atd.getPrimaryColor());
            }
            if (td.getBackgroundColor() == 0) {
                td.setBackgroundColor(atd.getBackgroundColor());
            }
            if (td.getStatusBarColor() == 0) {
                td.setStatusBarColor(atd.getStatusBarColor());
                td.setEnsureStatusBarContrastWhenTransparent(atd.getEnsureStatusBarContrastWhenTransparent());
            }
            if (td.getNavigationBarColor() == 0) {
                td.setNavigationBarColor(atd.getNavigationBarColor());
                td.setEnsureNavigationBarContrastWhenTransparent(atd.getEnsureNavigationBarContrastWhenTransparent());
            }
        }
        return r == root;
    }

    void updateEffectiveIntent() {
        ActivityRecord root = getRootActivity(true);
        if (root != null) {
            setIntent(root);
            updateTaskDescription();
        }
    }

    void adjustForMinimalTaskDimensions(Rect bounds, Rect previousBounds, Configuration parentConfig) {
        int minWidth = this.mMinWidth;
        int minHeight = this.mMinHeight;
        if (!inPinnedWindowingMode()) {
            int defaultMinSizeDp = this.mRootWindowContainer.mDefaultMinSizeOfResizeableTaskDp;
            float density = parentConfig.densityDpi / 160.0f;
            int defaultMinSize = (int) (defaultMinSizeDp * density);
            if (minWidth == -1) {
                minWidth = defaultMinSize;
            }
            if (minHeight == -1) {
                minHeight = defaultMinSize;
            }
        }
        if (bounds.isEmpty()) {
            Rect parentBounds = parentConfig.windowConfiguration.getBounds();
            if (parentBounds.width() >= minWidth && parentBounds.height() >= minHeight) {
                return;
            } else {
                bounds.set(parentBounds);
            }
        }
        boolean adjustWidth = minWidth > bounds.width();
        boolean adjustHeight = minHeight > bounds.height();
        if (!adjustWidth && !adjustHeight) {
            return;
        }
        if (adjustWidth) {
            if (!previousBounds.isEmpty() && bounds.right == previousBounds.right) {
                bounds.left = bounds.right - minWidth;
            } else {
                bounds.right = bounds.left + minWidth;
            }
        }
        if (adjustHeight) {
            if (!previousBounds.isEmpty() && bounds.bottom == previousBounds.bottom) {
                bounds.top = bounds.bottom - minHeight;
            } else {
                bounds.bottom = bounds.top + minHeight;
            }
        }
    }

    void setLastNonFullscreenBounds(Rect bounds) {
        Rect rect = this.mLastNonFullscreenBounds;
        if (rect == null) {
            this.mLastNonFullscreenBounds = new Rect(bounds);
        } else {
            rect.set(bounds);
        }
    }

    void onActivityStateChanged(ActivityRecord record, ActivityStack.ActivityState state, String reason) {
        Task parentTask = getParent().asTask();
        if (parentTask != null) {
            parentTask.onActivityStateChanged(record, state, reason);
            if (!parentTask.mCreatedByOrganizer) {
                return;
            }
        }
        if (record == this.mResumedActivity && state != ActivityStack.ActivityState.RESUMED) {
            setResumedActivity(null, reason + " - onActivityStateChanged");
        }
        if (state == ActivityStack.ActivityState.RESUMED) {
            setResumedActivity(record, reason + " - onActivityStateChanged");
            if (record == this.mRootWindowContainer.getTopResumedActivity()) {
                this.mAtmService.setResumedActivityUncheckLocked(record, reason);
            }
            this.mStackSupervisor.mRecentTasks.add(record.getTask());
        }
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        Rect rect;
        boolean prevPersistTaskBounds = getWindowConfiguration().persistTaskBounds();
        boolean nextPersistTaskBounds = getRequestedOverrideConfiguration().windowConfiguration.persistTaskBounds();
        if (getRequestedOverrideWindowingMode() == 0) {
            nextPersistTaskBounds = newParentConfig.windowConfiguration.persistTaskBounds();
        }
        if (!prevPersistTaskBounds && nextPersistTaskBounds && (rect = this.mLastNonFullscreenBounds) != null && !rect.isEmpty()) {
            getRequestedOverrideConfiguration().windowConfiguration.setBounds(this.mLastNonFullscreenBounds);
        }
        int prevWinMode = getWindowingMode();
        this.mTmpPrevBounds.set(getBounds());
        boolean wasInMultiWindowMode = inMultiWindowMode();
        boolean wasInPictureInPicture = inPinnedWindowingMode();
        super.onConfigurationChanged(newParentConfig);
        updateSurfaceSize(getSyncTransaction());
        if (wasInPictureInPicture != inPinnedWindowingMode()) {
            this.mStackSupervisor.scheduleUpdatePictureInPictureModeIfNeeded(this, getStack());
        } else if (wasInMultiWindowMode != inMultiWindowMode()) {
            this.mStackSupervisor.scheduleUpdateMultiWindowMode(this);
        }
        int newWinMode = getWindowingMode();
        if (prevWinMode != newWinMode && this.mDisplayContent != null && shouldStartChangeTransition(prevWinMode, newWinMode)) {
            initializeChangeTransition(this.mTmpPrevBounds);
        }
        if (getWindowConfiguration().persistTaskBounds()) {
            Rect currentBounds = getRequestedOverrideBounds();
            if (!currentBounds.isEmpty()) {
                setLastNonFullscreenBounds(currentBounds);
            }
        }
        saveLaunchingStateIfNeeded();
        boolean taskOrgChanged = updateTaskOrganizerState(false);
        if (!taskOrgChanged && isOrganized()) {
            this.mAtmService.mTaskOrganizerController.dispatchTaskInfoChanged(this, false);
        }
    }

    private void initializeChangeTransition(Rect startBounds) {
        this.mDisplayContent.prepareAppTransition(27, false, 0, false);
        this.mDisplayContent.mChangingContainers.add(this);
        this.mSurfaceFreezer.freeze(getPendingTransaction(), startBounds);
    }

    private boolean shouldStartChangeTransition(int prevWinMode, int newWinMode) {
        if (this.mWmService.mDisableTransitionAnimation || !isVisible() || getDisplayContent().mAppTransition.isTransitionSet() || getSurfaceControl() == null || !isLeafTask()) {
            return false;
        }
        return (prevWinMode == 5) != (newWinMode == 5);
    }

    @Override // com.android.server.wm.WindowContainer
    void migrateToNewSurfaceControl() {
        super.migrateToNewSurfaceControl();
        this.mLastSurfaceSize.x = 0;
        this.mLastSurfaceSize.y = 0;
        updateSurfaceSize(getPendingTransaction());
    }

    void updateSurfaceSize(SurfaceControl.Transaction transaction) {
        if (this.mSurfaceControl == null || isOrganized()) {
            return;
        }
        int width = 0;
        int height = 0;
        if (isRootTask()) {
            Rect taskBounds = getBounds();
            int width2 = taskBounds.width();
            int height2 = taskBounds.height();
            int outset = getTaskOutset();
            width = width2 + (outset * 2);
            height = height2 + (outset * 2);
        }
        if (width == this.mLastSurfaceSize.x && height == this.mLastSurfaceSize.y) {
            return;
        }
        transaction.setWindowCrop(this.mSurfaceControl, width, height);
        this.mLastSurfaceSize.set(width, height);
    }

    int getTaskOutset() {
        if (this.mWmService.mRenderShadowsInCompositor) {
            return 0;
        }
        DisplayContent displayContent = getDisplayContent();
        if (!inPinnedWindowingMode() || displayContent == null) {
            return 0;
        }
        DisplayMetrics displayMetrics = displayContent.getDisplayMetrics();
        WindowManagerService windowManagerService = this.mWmService;
        return (int) Math.ceil(WindowManagerService.dipToPixel(5, displayMetrics) * 2);
    }

    Point getLastSurfaceSize() {
        return this.mLastSurfaceSize;
    }

    boolean isInChangeTransition() {
        return this.mSurfaceFreezer.hasLeash() || AppTransition.isChangeTransit(this.mTransit);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceFreezer.Freezable
    public SurfaceControl getFreezeSnapshotTarget() {
        int transit = this.mDisplayContent.mAppTransition.getAppTransition();
        if (!AppTransition.isChangeTransit(transit)) {
            return null;
        }
        ArraySet<Integer> activityTypes = new ArraySet<>();
        activityTypes.add(Integer.valueOf(getActivityType()));
        RemoteAnimationAdapter adapter = this.mDisplayContent.mAppTransitionController.getRemoteAnimationOverride(this, transit, activityTypes);
        if (adapter == null || adapter.getChangeNeedsSnapshot()) {
            return getSurfaceControl();
        }
        return null;
    }

    @Override // com.android.server.wm.WindowContainer
    void writeIdentifierToProto(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, System.identityHashCode(this));
        proto.write(1120986464258L, this.mUserId);
        Intent intent = this.intent;
        proto.write(1138166333443L, (intent == null || intent.getComponent() == null) ? "Task" : this.intent.getComponent().flattenToShortString());
        proto.end(token);
    }

    private void saveLaunchingStateIfNeeded() {
        saveLaunchingStateIfNeeded(getDisplayContent());
    }

    private void saveLaunchingStateIfNeeded(DisplayContent display) {
        if (!getHasBeenVisible()) {
            return;
        }
        int windowingMode = getWindowingMode();
        if ((windowingMode != 1 && windowingMode != 5) || getWindowConfiguration().getDisplayWindowingMode() != 5) {
            return;
        }
        this.mStackSupervisor.mLaunchParamsPersister.saveTask(this, display);
    }

    private static void fitWithinBounds(Rect bounds, Rect stackBounds, int overlapPxX, int overlapPxY) {
        if (stackBounds == null || stackBounds.isEmpty() || stackBounds.contains(bounds)) {
            return;
        }
        int horizontalDiff = 0;
        int overlapLR = Math.min(overlapPxX, bounds.width());
        if (bounds.right < stackBounds.left + overlapLR) {
            horizontalDiff = overlapLR - (bounds.right - stackBounds.left);
        } else if (bounds.left > stackBounds.right - overlapLR) {
            horizontalDiff = -(overlapLR - (stackBounds.right - bounds.left));
        }
        int verticalDiff = 0;
        int overlapTB = Math.min(overlapPxY, bounds.width());
        if (bounds.bottom < stackBounds.top + overlapTB) {
            verticalDiff = overlapTB - (bounds.bottom - stackBounds.top);
        } else if (bounds.top > stackBounds.bottom - overlapTB) {
            verticalDiff = -(overlapTB - (stackBounds.bottom - bounds.top));
        }
        bounds.offset(horizontalDiff, verticalDiff);
    }

    static void intersectWithInsetsIfFits(Rect inOutBounds, Rect intersectBounds, Rect intersectInsets) {
        if (inOutBounds.right <= intersectBounds.right) {
            inOutBounds.right = Math.min(intersectBounds.right - intersectInsets.right, inOutBounds.right);
        }
        if (inOutBounds.bottom <= intersectBounds.bottom) {
            inOutBounds.bottom = Math.min(intersectBounds.bottom - intersectInsets.bottom, inOutBounds.bottom);
        }
        if (inOutBounds.left >= intersectBounds.left) {
            inOutBounds.left = Math.max(intersectBounds.left + intersectInsets.left, inOutBounds.left);
        }
        if (inOutBounds.top >= intersectBounds.top) {
            inOutBounds.top = Math.max(intersectBounds.top + intersectInsets.top, inOutBounds.top);
        }
    }

    private void calculateInsetFrames(Rect outNonDecorBounds, Rect outStableBounds, Rect bounds, DisplayInfo displayInfo) {
        DisplayPolicy policy;
        outNonDecorBounds.set(bounds);
        outStableBounds.set(bounds);
        if (getStack() == null || getStack().getDisplay() == null || (policy = getStack().getDisplay().mDisplayContent.getDisplayPolicy()) == null) {
            return;
        }
        this.mTmpBounds.set(0, 0, displayInfo.logicalWidth, displayInfo.logicalHeight);
        policy.getNonDecorInsetsLw(displayInfo.rotation, displayInfo.logicalWidth, displayInfo.logicalHeight, displayInfo.displayCutout, this.mTmpInsets);
        intersectWithInsetsIfFits(outNonDecorBounds, this.mTmpBounds, this.mTmpInsets);
        policy.convertNonDecorInsetsToStableInsets(this.mTmpInsets, displayInfo.rotation);
        intersectWithInsetsIfFits(outStableBounds, this.mTmpBounds, this.mTmpInsets);
    }

    private static void invalidateAppBoundsConfig(Configuration inOutConfig) {
        Rect appBounds = inOutConfig.windowConfiguration.getAppBounds();
        if (appBounds != null) {
            appBounds.setEmpty();
        }
        inOutConfig.screenWidthDp = 0;
        inOutConfig.screenHeightDp = 0;
    }

    void computeConfigResourceOverrides(Configuration inOutConfig, Configuration parentConfig, DisplayInfo overrideDisplayInfo) {
        if (overrideDisplayInfo != null) {
            inOutConfig.screenLayout = 0;
            invalidateAppBoundsConfig(inOutConfig);
        }
        computeConfigResourceOverrides(inOutConfig, parentConfig, overrideDisplayInfo, null);
    }

    void computeConfigResourceOverrides(Configuration inOutConfig, Configuration parentConfig) {
        computeConfigResourceOverrides(inOutConfig, parentConfig, null, null);
    }

    void computeConfigResourceOverrides(Configuration inOutConfig, Configuration parentConfig, ActivityRecord.CompatDisplayInsets compatInsets) {
        if (compatInsets != null) {
            invalidateAppBoundsConfig(inOutConfig);
        }
        computeConfigResourceOverrides(inOutConfig, parentConfig, null, compatInsets);
    }

    void computeConfigResourceOverrides(Configuration inOutConfig, Configuration parentConfig, DisplayInfo overrideDisplayInfo, ActivityRecord.CompatDisplayInsets compatInsets) {
        boolean insideParentBounds;
        Rect containingAppBounds;
        DisplayInfo di;
        int iMin;
        int iMin2;
        int windowingMode = inOutConfig.windowConfiguration.getWindowingMode();
        if (windowingMode == 0) {
            windowingMode = parentConfig.windowConfiguration.getWindowingMode();
        }
        float density = inOutConfig.densityDpi;
        if (density == 0.0f) {
            density = parentConfig.densityDpi;
        }
        float density2 = density * 0.00625f;
        Rect parentBounds = parentConfig.windowConfiguration.getBounds();
        Rect resolvedBounds = inOutConfig.windowConfiguration.getBounds();
        if (resolvedBounds == null || resolvedBounds.isEmpty()) {
            this.mTmpFullBounds.set(parentBounds);
            insideParentBounds = true;
        } else {
            this.mTmpFullBounds.set(resolvedBounds);
            insideParentBounds = parentBounds.contains(resolvedBounds);
        }
        boolean customContainerPolicy = compatInsets != null;
        Rect outAppBounds = inOutConfig.windowConfiguration.getAppBounds();
        if (outAppBounds == null || outAppBounds.isEmpty()) {
            inOutConfig.windowConfiguration.setAppBounds(this.mTmpFullBounds);
            outAppBounds = inOutConfig.windowConfiguration.getAppBounds();
            if (!customContainerPolicy && windowingMode != 5) {
                if (insideParentBounds) {
                    containingAppBounds = parentConfig.windowConfiguration.getAppBounds();
                } else {
                    TaskDisplayArea displayArea = getDisplayArea();
                    containingAppBounds = displayArea != null ? displayArea.getWindowConfiguration().getAppBounds() : null;
                }
                if (containingAppBounds != null && !containingAppBounds.isEmpty()) {
                    outAppBounds.intersect(containingAppBounds);
                }
            }
        }
        if (inOutConfig.screenWidthDp == 0 || inOutConfig.screenHeightDp == 0) {
            if (!customContainerPolicy && WindowConfiguration.isFloating(windowingMode)) {
                this.mTmpNonDecorBounds.set(this.mTmpFullBounds);
                this.mTmpStableBounds.set(this.mTmpFullBounds);
            } else if (!customContainerPolicy && (overrideDisplayInfo != null || getDisplayContent() != null)) {
                if (overrideDisplayInfo != null) {
                    di = overrideDisplayInfo;
                } else {
                    di = getDisplayContent().getDisplayInfo();
                }
                calculateInsetFrames(this.mTmpNonDecorBounds, this.mTmpStableBounds, this.mTmpFullBounds, di);
            } else {
                int rotation = inOutConfig.windowConfiguration.getRotation();
                if (rotation == -1) {
                    rotation = parentConfig.windowConfiguration.getRotation();
                }
                if (rotation != -1 && customContainerPolicy) {
                    this.mTmpNonDecorBounds.set(this.mTmpFullBounds);
                    this.mTmpStableBounds.set(this.mTmpFullBounds);
                    compatInsets.getBoundsByRotation(this.mTmpBounds, rotation);
                    intersectWithInsetsIfFits(this.mTmpNonDecorBounds, this.mTmpBounds, compatInsets.mNonDecorInsets[rotation]);
                    intersectWithInsetsIfFits(this.mTmpStableBounds, this.mTmpBounds, compatInsets.mStableInsets[rotation]);
                    outAppBounds.set(this.mTmpNonDecorBounds);
                } else {
                    this.mTmpNonDecorBounds.set(outAppBounds);
                    this.mTmpStableBounds.set(outAppBounds);
                }
            }
            if (inOutConfig.screenWidthDp == 0) {
                int overrideScreenWidthDp = (int) (this.mTmpStableBounds.width() / density2);
                if (insideParentBounds && !customContainerPolicy) {
                    iMin2 = Math.min(overrideScreenWidthDp, parentConfig.screenWidthDp);
                } else {
                    iMin2 = overrideScreenWidthDp;
                }
                inOutConfig.screenWidthDp = iMin2;
            }
            if (inOutConfig.screenHeightDp == 0) {
                int overrideScreenHeightDp = (int) (this.mTmpStableBounds.height() / density2);
                if (insideParentBounds && !customContainerPolicy) {
                    iMin = Math.min(overrideScreenHeightDp, parentConfig.screenHeightDp);
                } else {
                    iMin = overrideScreenHeightDp;
                }
                inOutConfig.screenHeightDp = iMin;
            }
            if (inOutConfig.smallestScreenWidthDp == 0 && WindowConfiguration.isFloating(windowingMode)) {
                inOutConfig.smallestScreenWidthDp = (int) (Math.min(this.mTmpFullBounds.width(), this.mTmpFullBounds.height()) / density2);
            }
        }
        if (inOutConfig.orientation == 0) {
            inOutConfig.orientation = inOutConfig.screenWidthDp > inOutConfig.screenHeightDp ? 2 : 1;
        }
        if (inOutConfig.screenLayout == 0) {
            int compatScreenWidthDp = (int) (this.mTmpNonDecorBounds.width() / density2);
            int compatScreenHeightDp = (int) (this.mTmpNonDecorBounds.height() / density2);
            if (inOutConfig.screenWidthDp != 0) {
                compatScreenWidthDp = inOutConfig.screenWidthDp;
            }
            if (inOutConfig.screenHeightDp != 0) {
                compatScreenHeightDp = inOutConfig.screenHeightDp;
            }
            inOutConfig.screenLayout = computeScreenLayoutOverride(parentConfig.screenLayout, compatScreenWidthDp, compatScreenHeightDp);
        }
    }

    static int computeScreenLayoutOverride(int sourceScreenLayout, int screenWidthDp, int screenHeightDp) {
        int longSize = Math.max(screenWidthDp, screenHeightDp);
        int shortSize = Math.min(screenWidthDp, screenHeightDp);
        return Configuration.reduceScreenLayout(sourceScreenLayout & 63, longSize, shortSize);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    void resolveOverrideConfiguration(Configuration newParentConfig) {
        this.mTmpBounds.set(getResolvedOverrideConfiguration().windowConfiguration.getBounds());
        super.resolveOverrideConfiguration(newParentConfig);
        int windowingMode = getResolvedOverrideConfiguration().windowConfiguration.getWindowingMode();
        if (getActivityType() == 2 && windowingMode == 0) {
            int parentWindowingMode = newParentConfig.windowConfiguration.getWindowingMode();
            int windowingMode2 = WindowConfiguration.isSplitScreenWindowingMode(parentWindowingMode) ? parentWindowingMode : 1;
            getResolvedOverrideConfiguration().windowConfiguration.setWindowingMode(windowingMode2);
        }
        if (isLeafTask()) {
            resolveLeafOnlyOverrideConfigs(newParentConfig, this.mTmpBounds);
        }
        computeConfigResourceOverrides(getResolvedOverrideConfiguration(), newParentConfig);
    }

    private void resolveLeafOnlyOverrideConfigs(Configuration newParentConfig, Rect previousBounds) {
        int windowingMode = getResolvedOverrideConfiguration().windowConfiguration.getWindowingMode();
        if (windowingMode == 0) {
            windowingMode = newParentConfig.windowConfiguration.getWindowingMode();
        }
        Rect outOverrideBounds = getResolvedOverrideConfiguration().windowConfiguration.getBounds();
        if (windowingMode == 1) {
            computeFullscreenBounds(outOverrideBounds, null, newParentConfig.windowConfiguration.getBounds(), newParentConfig.orientation);
            return;
        }
        adjustForMinimalTaskDimensions(outOverrideBounds, previousBounds, newParentConfig);
        if (windowingMode == 5) {
            float density = newParentConfig.densityDpi / 160.0f;
            Rect parentBounds = new Rect(newParentConfig.windowConfiguration.getBounds());
            DisplayContent display = getDisplayContent();
            boolean isFreeformFixedPosition = Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDstDisabled_default);
            if (display != null && !isFreeformFixedPosition) {
                Rect stableBounds = new Rect();
                display.getStableRect(stableBounds);
                parentBounds.intersect(stableBounds);
            }
            fitWithinBounds(outOverrideBounds, parentBounds, (int) (48.0f * density), (int) (32.0f * density));
            int offsetTop = parentBounds.top - outOverrideBounds.top;
            if (offsetTop > 0) {
                outOverrideBounds.offset(0, offsetTop);
            }
        }
    }

    void computeFullscreenBounds(Rect outBounds, ActivityRecord refActivity, Rect parentBounds, int parentOrientation) {
        outBounds.setEmpty();
        if (handlesOrientationChangeFromDescendant()) {
            return;
        }
        if (refActivity == null) {
            refActivity = getTopNonFinishingActivity(false);
        }
        int overrideOrientation = getRequestedOverrideConfiguration().orientation;
        int forcedOrientation = (overrideOrientation != 0 || refActivity == null) ? overrideOrientation : refActivity.getRequestedConfigurationOrientation();
        if (forcedOrientation == 0 || forcedOrientation == parentOrientation) {
            return;
        }
        int parentWidth = parentBounds.width();
        int parentHeight = parentBounds.height();
        float aspect = parentHeight / parentWidth;
        if (forcedOrientation == 2) {
            int height = (int) (parentWidth / aspect);
            int top = parentBounds.centerY() - (height / 2);
            outBounds.set(parentBounds.left, top, parentBounds.right, top + height);
        } else {
            int width = (int) (parentHeight * aspect);
            int left = parentBounds.centerX() - (width / 2);
            outBounds.set(left, parentBounds.top, left + width, parentBounds.bottom);
        }
    }

    Rect updateOverrideConfigurationFromLaunchBounds() {
        Task rootTask = getRootTask();
        Rect bounds = (rootTask == this || !rootTask.isOrganized()) ? getLaunchBounds() : null;
        setBounds(bounds);
        if (bounds != null && !bounds.isEmpty()) {
            bounds.set(getRequestedOverrideBounds());
        }
        return bounds;
    }

    void updateOverrideConfigurationForStack(ActivityStack inStack) {
        ActivityStack stack = getStack();
        if (stack != null && stack == inStack) {
            return;
        }
        if (inStack.inFreeformWindowingMode()) {
            if (!isResizeable()) {
                throw new IllegalArgumentException("Can not position non-resizeable task=" + this + " in stack=" + inStack);
            }
            if (!matchParentBounds()) {
                return;
            }
            Rect rect = this.mLastNonFullscreenBounds;
            if (rect != null) {
                setBounds(rect);
                return;
            } else {
                this.mStackSupervisor.getLaunchParamsController().layoutTask(this, null);
                return;
            }
        }
        setBounds(inStack.getRequestedOverrideBounds());
    }

    Rect getLaunchBounds() {
        ActivityStack stack = getStack();
        if (stack == null) {
            return null;
        }
        int windowingMode = getWindowingMode();
        if (!isActivityTypeStandardOrUndefined() || windowingMode == 1 || (windowingMode == 3 && !isResizeable())) {
            if (isResizeable()) {
                return stack.getRequestedOverrideBounds();
            }
            return null;
        }
        if (!getWindowConfiguration().persistTaskBounds()) {
            return stack.getRequestedOverrideBounds();
        }
        return this.mLastNonFullscreenBounds;
    }

    void setRootProcess(WindowProcessController proc) {
        clearRootProcess();
        Intent intent = this.intent;
        if (intent != null && (intent.getFlags() & 8388608) == 0) {
            this.mRootProcess = proc;
            proc.addRecentTask(this);
        }
    }

    void clearRootProcess() {
        WindowProcessController windowProcessController = this.mRootProcess;
        if (windowProcessController != null) {
            windowProcessController.removeRecentTask(this);
            this.mRootProcess = null;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    DisplayContent getDisplayContent() {
        ActivityStack stack = getStack();
        return (stack == null || stack == this) ? super.getDisplayContent() : stack.getDisplayContent();
    }

    int getDisplayId() {
        DisplayContent dc = getDisplayContent();
        if (dc != null) {
            return dc.mDisplayId;
        }
        return -1;
    }

    ActivityStack getStack() {
        return (ActivityStack) getRootTask();
    }

    int getRootTaskId() {
        return getRootTask().mTaskId;
    }

    Task getRootTask() {
        Task parentTask;
        WindowContainer parent = getParent();
        if (parent != null && (parentTask = parent.asTask()) != null) {
            return parentTask.getRootTask();
        }
        return this;
    }

    boolean isRootTask() {
        return getRootTask() == this;
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
    boolean isLeafTask() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (((WindowContainer) this.mChildren.get(i)).asTask() != null) {
                return false;
            }
        }
        return true;
    }

    int getDescendantTaskCount() {
        int[] currentCount = {0};
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$Task$Cht49HFU7XWpGlhw2YJ9bd8TX-Q
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Task.lambda$getDescendantTaskCount$3((Task) obj, (int[]) obj2);
            }
        }, PooledLambda.__(Task.class), currentCount);
        forAllLeafTasks(c, false);
        c.recycle();
        return currentCount[0];
    }

    static /* synthetic */ void lambda$getDescendantTaskCount$3(Task t, int[] count) {
        count[0] = count[0] + 1;
    }

    ActivityStack adjustFocusToNextFocusableTask(String reason) {
        return adjustFocusToNextFocusableTask(reason, false, true);
    }

    private Task getNextFocusableTask(final boolean allowFocusSelf) {
        WindowContainer parent = getParent();
        if (parent == null) {
            return null;
        }
        Task focusableTask = parent.getTask(new Predicate() { // from class: com.android.server.wm.-$$Lambda$Task$kW0PT0lvgYRkZBZvY3NzGSDUDQQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.lambda$getNextFocusableTask$4$Task(allowFocusSelf, obj);
            }
        });
        if (focusableTask == null && parent.asTask() != null) {
            return parent.asTask().getNextFocusableTask(allowFocusSelf);
        }
        return focusableTask;
    }

    public /* synthetic */ boolean lambda$getNextFocusableTask$4$Task(boolean allowFocusSelf, Object task) {
        return (allowFocusSelf || task != this) && ((ActivityStack) task).isFocusableAndVisible();
    }

    ActivityStack adjustFocusToNextFocusableTask(String reason, boolean allowFocusSelf, boolean moveDisplayToTop) {
        ActivityStack focusableTask = (ActivityStack) getNextFocusableTask(allowFocusSelf);
        if (focusableTask == null) {
            focusableTask = this.mRootWindowContainer.getNextFocusableStack((ActivityStack) this, !allowFocusSelf);
        }
        if (focusableTask == null) {
            return null;
        }
        ActivityStack rootTask = (ActivityStack) focusableTask.getRootTask();
        if (!moveDisplayToTop) {
            WindowContainer parent = focusableTask.getParent();
            WindowContainer next = focusableTask;
            do {
                parent.positionChildAt(Integer.MAX_VALUE, next, false);
                next = parent;
                parent = next.getParent();
                if (next.asTask() == null) {
                    break;
                }
            } while (parent != null);
            return rootTask;
        }
        String myReason = reason + " adjustFocusToNextFocusableStack";
        ActivityRecord top = focusableTask.topRunningActivity();
        if (focusableTask.isActivityTypeHome() && (top == null || !top.mVisibleRequested)) {
            focusableTask.getDisplayArea().moveHomeActivityToTop(myReason);
            return rootTask;
        }
        focusableTask.moveToFront(myReason);
        if (rootTask.mResumedActivity != null) {
            this.mStackSupervisor.updateTopResumedActivityIfNeeded();
            this.mAtmService.setResumedActivityUncheckLocked(rootTask.mResumedActivity, reason);
        }
        return rootTask;
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
    private int computeMinUserPosition(int minPosition, int size) {
        while (minPosition < size) {
            WindowContainer child = (WindowContainer) this.mChildren.get(minPosition);
            boolean canShow = child.showToCurrentUser();
            if (canShow) {
                break;
            }
            minPosition++;
        }
        return minPosition;
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
    private int computeMaxUserPosition(int maxPosition) {
        while (maxPosition > 0) {
            WindowContainer child = (WindowContainer) this.mChildren.get(maxPosition);
            boolean canShow = child.showToCurrentUser();
            if (!canShow) {
                break;
            }
            maxPosition--;
        }
        return maxPosition;
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
    private int getAdjustedChildPosition(WindowContainer wc, int suggestedPosition) {
        boolean canShowChild = wc.showToCurrentUser();
        int size = this.mChildren.size();
        int minPosition = canShowChild ? computeMinUserPosition(0, size) : 0;
        int maxPosition = canShowChild ? size : computeMaxUserPosition(size - 1);
        if (!wc.isAlwaysOnTop()) {
            while (maxPosition > minPosition && ((WindowContainer) this.mChildren.get(maxPosition - 1)).isAlwaysOnTop()) {
                maxPosition--;
            }
        }
        if (suggestedPosition == Integer.MIN_VALUE && minPosition == 0) {
            return Integer.MIN_VALUE;
        }
        if (suggestedPosition == Integer.MAX_VALUE && maxPosition >= size - 1) {
            return Integer.MAX_VALUE;
        }
        return Math.min(Math.max(suggestedPosition, minPosition), maxPosition);
    }

    @Override // com.android.server.wm.WindowContainer
    void positionChildAt(int position, WindowContainer child, boolean includingParents) {
        int position2 = getAdjustedChildPosition(child, position);
        super.positionChildAt(position2, child, includingParents);
        Slog.d("WindowManager", "positionChildAt: child=" + child + " position=" + position2 + " parent=" + this);
        int toTop = position2 < this.mChildren.size() - 1 ? 0 : 1;
        Task task = child.asTask();
        if (task != null) {
            EventLogTags.writeWmTaskMoved(task.mTaskId, toTop, position2);
        }
    }

    boolean hasWindowsAlive() {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$kMHOkFJdJNCG8WGqd9dfu58tyGo
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ActivityRecord) obj).hasWindowsAlive();
            }
        }) != null;
    }

    boolean shouldDeferRemoval() {
        return !this.mChildren.isEmpty() && hasWindowsAlive() && getStack().isAnimating(5);
    }

    @Override // com.android.server.wm.WindowContainer
    void removeImmediately() {
        EventLogTags.writeWmTaskRemoved(this.mTaskId, "removeTask");
        if (this.mDisplayContent != null && this.mDisplayContent.isSingleTaskInstance()) {
            this.mAtmService.notifySingleTaskDisplayEmpty(this.mDisplayContent.mDisplayId);
        }
        setTaskOrganizer(null);
        super.removeImmediately();
    }

    void reparent(ActivityStack stack, int position, boolean moveParents, String reason) {
        EventLogTags.writeWmTaskRemoved(this.mTaskId, "reParentTask:" + reason);
        reparent(stack, position);
        stack.positionChildAt(position, this, moveParents);
        this.mPreserveNonFloatingState = stack.inPinnedWindowingMode();
    }

    public int setBounds(Rect bounds, boolean forceResize) {
        int boundsChanged = setBounds(bounds);
        if (forceResize && (boundsChanged & 2) != 2) {
            onResize();
            return boundsChanged | 2;
        }
        return boundsChanged;
    }

    @Override // com.android.server.wm.ConfigurationContainer
    public int setBounds(Rect bounds) {
        int rotation = 0;
        DisplayContent displayContent = getStack() != null ? getStack().getDisplayContent() : null;
        if (displayContent != null) {
            rotation = displayContent.getDisplayInfo().rotation;
        }
        int boundsChange = super.setBounds(bounds);
        this.mRotation = rotation;
        updateSurfacePosition();
        return boundsChange;
    }

    @Override // com.android.server.wm.WindowContainer
    public boolean onDescendantOrientationChanged(IBinder freezeDisplayToken, ConfigurationContainer requestingContainer) {
        if (super.onDescendantOrientationChanged(freezeDisplayToken, requestingContainer)) {
            return true;
        }
        if (getParent() != null) {
            onConfigurationChanged(getParent().getConfiguration());
            return true;
        }
        return false;
    }

    void resize(boolean relayout, boolean forced) {
        if (setBounds(getRequestedOverrideBounds(), forced) != 0 && relayout) {
            getDisplayContent().layoutAndAssignWindowLayersIfNeeded();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void onDisplayChanged(DisplayContent dc) {
        boolean isRootTask = isRootTask();
        if (!isRootTask) {
            adjustBoundsForDisplayChangeIfNeeded(dc);
        }
        super.onDisplayChanged(dc);
        if (isLeafTask()) {
            int displayId = dc != null ? dc.getDisplayId() : -1;
            this.mWmService.mAtmService.getTaskChangeNotificationController().notifyTaskDisplayChanged(this.mTaskId, displayId);
        }
    }

    boolean isResizeable(boolean checkSupportsPip) {
        return this.mAtmService.mForceResizableActivities || ActivityInfo.isResizeableMode(this.mResizeMode) || (checkSupportsPip && this.mSupportsPictureInPicture);
    }

    boolean isResizeable() {
        return isResizeable(true);
    }

    boolean preserveOrientationOnResize() {
        int i = this.mResizeMode;
        return i == 6 || i == 5 || i == 7;
    }

    boolean cropWindowsToStackBounds() {
        if (isActivityTypeHome() || isActivityTypeRecents()) {
            Task rootTask = getRootTask();
            Task topNonOrgTask = rootTask.mCreatedByOrganizer ? rootTask.getTopMostTask() : rootTask;
            if (this == topNonOrgTask || isDescendantOf(topNonOrgTask)) {
                return false;
            }
        }
        return isResizeable();
    }

    void prepareFreezingBounds() {
        this.mPreparedFrozenBounds.set(getBounds());
        this.mPreparedFrozenMergedConfig.setTo(getConfiguration());
    }

    @Override // com.android.server.wm.WindowContainer
    void getAnimationFrames(Rect outFrame, Rect outInsets, Rect outStableInsets, Rect outSurfaceInsets) {
        WindowState windowState = getTopVisibleAppMainWindow();
        if (windowState != null) {
            windowState.getAnimationFrames(outFrame, outInsets, outStableInsets, outSurfaceInsets);
        } else {
            super.getAnimationFrames(outFrame, outInsets, outStableInsets, outSurfaceInsets);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void getMaxVisibleBounds(ActivityRecord token, Rect out, boolean[] foundTop) {
        WindowState win;
        if (token.mIsExiting || !token.isClientVisible() || !token.mVisibleRequested || (win = token.findMainWindow()) == null) {
            return;
        }
        if (!foundTop[0]) {
            foundTop[0] = true;
            out.setEmpty();
        }
        win.getMaxVisibleBounds(out);
    }

    void getDimBounds(Rect out) {
        DisplayContent displayContent = getStack().getDisplayContent();
        boolean dockedResizing = displayContent != null && displayContent.mDividerControllerLocked.isResizing();
        if (inFreeformWindowingMode()) {
            boolean[] foundTop = {false};
            PooledConsumer c = PooledLambda.obtainConsumer(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$Task$SAhnD6goWlY1lXYn6fWba8f2JLs
                public final void accept(Object obj, Object obj2, Object obj3) {
                    Task.getMaxVisibleBounds((ActivityRecord) obj, (Rect) obj2, (boolean[]) obj3);
                }
            }, PooledLambda.__(ActivityRecord.class), out, foundTop);
            forAllActivities((Consumer<ActivityRecord>) c);
            c.recycle();
            if (foundTop[0]) {
                return;
            }
        }
        if (!matchParentBounds()) {
            if (dockedResizing) {
                getStack().getBounds(out);
                return;
            }
            getStack().getBounds(this.mTmpRect);
            this.mTmpRect.intersect(getBounds());
            out.set(this.mTmpRect);
            return;
        }
        out.set(getBounds());
    }

    void setDragResizing(boolean dragResizing, int dragResizeMode) {
        if (this.mDragResizing != dragResizing) {
            if (dragResizing && !DragResizeMode.isModeAllowedForStack(getStack(), dragResizeMode)) {
                throw new IllegalArgumentException("Drag resize mode not allow for stack stackId=" + getRootTaskId() + " dragResizeMode=" + dragResizeMode);
            }
            this.mDragResizing = dragResizing;
            this.mDragResizeMode = dragResizeMode;
            resetDragResizingChangeReported();
        }
    }

    boolean isDragResizing() {
        return this.mDragResizing;
    }

    int getDragResizeMode() {
        return this.mDragResizeMode;
    }

    void adjustBoundsForDisplayChangeIfNeeded(DisplayContent displayContent) {
        if (displayContent == null) {
            return;
        }
        if (matchParentBounds()) {
            setBounds(null);
            return;
        }
        int displayId = displayContent.getDisplayId();
        int newRotation = displayContent.getDisplayInfo().rotation;
        if (displayId != this.mLastRotationDisplayId) {
            this.mLastRotationDisplayId = displayId;
            this.mRotation = newRotation;
        } else {
            if (this.mRotation == newRotation) {
                return;
            }
            this.mTmpRect2.set(getBounds());
            if (!getWindowConfiguration().canResizeTask()) {
                setBounds(this.mTmpRect2);
                return;
            }
            displayContent.rotateBounds(this.mRotation, newRotation, this.mTmpRect2);
            if (setBounds(this.mTmpRect2) != 0) {
                this.mAtmService.resizeTask(this.mTaskId, getBounds(), 1);
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
    void cancelTaskWindowTransition() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ((WindowContainer) this.mChildren.get(i)).cancelAnimation();
        }
    }

    boolean showForAllUsers() {
        ActivityRecord r;
        return (this.mChildren.isEmpty() || (r = getTopNonFinishingActivity()) == null || !r.mShowForAllUsers) ? false : true;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean showToCurrentUser() {
        return this.mForceShowForAllUsers || showForAllUsers() || this.mWmService.isCurrentProfile(getTopMostTask().mUserId);
    }

    void setForceShowForAllUsers(boolean forceShowForAllUsers) {
        this.mForceShowForAllUsers = forceShowForAllUsers;
    }

    @Override // com.android.server.wm.WindowContainer
    public boolean isAttached() {
        TaskDisplayArea taskDisplayArea = getDisplayArea();
        return (taskDisplayArea == null || taskDisplayArea.isRemoved()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public TaskDisplayArea getDisplayArea() {
        return (TaskDisplayArea) super.getDisplayArea();
    }

    boolean isFloating() {
        return getWindowConfiguration().tasksAreFloating() && !this.mPreserveNonFloatingState;
    }

    boolean isTranslucent(ActivityRecord starting) {
        if (!isAttached() || isForceHidden()) {
            return true;
        }
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$Task$CKQ9RLMNPYajktwO1VrUoQGHF_8
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return Task.isOpaqueActivity((ActivityRecord) obj, (ActivityRecord) obj2);
            }
        }, PooledLambda.__(ActivityRecord.class), starting);
        ActivityRecord opaque = getActivity(p);
        p.recycle();
        return opaque == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isOpaqueActivity(ActivityRecord r, ActivityRecord starting) {
        if (r.finishing) {
            return false;
        }
        if (r.visibleIgnoringKeyguard || r == starting) {
            return r.occludesParent() || r.hasWallpaper;
        }
        return false;
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl.Builder makeAnimationLeash() {
        return super.makeAnimationLeash().setMetadata(3, this.mTaskId);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.SurfaceAnimator.Animatable
    public SurfaceControl getAnimationLeashParent() {
        if (WindowManagerService.sHierarchicalAnimations) {
            return super.getAnimationLeashParent();
        }
        return getAppAnimationLayer(2);
    }

    @Override // com.android.server.wm.WindowContainer
    Rect getAnimationBounds(int appStackClipMode) {
        if (appStackClipMode == 1 && getStack() != null) {
            return getStack().getBounds();
        }
        return super.getAnimationBounds(appStackClipMode);
    }

    boolean shouldAnimate() {
        if (isOrganized()) {
            return false;
        }
        RecentsAnimationController controller = this.mWmService.getRecentsAnimationController();
        return (controller != null && controller.isAnimatingTask(this) && controller.shouldDeferCancelUntilNextTransition()) ? false : true;
    }

    @Override // com.android.server.wm.WindowContainer
    void setInitialSurfaceControlProperties(SurfaceControl.Builder b) {
        b.setEffectLayer().setMetadata(3, this.mTaskId);
        super.setInitialSurfaceControlProperties(b);
    }

    boolean isTaskAnimating() {
        RecentsAnimationController recentsAnim = this.mWmService.getRecentsAnimationController();
        if (recentsAnim != null && recentsAnim.isAnimatingTask(this)) {
            return true;
        }
        return forAllTasks(new Function() { // from class: com.android.server.wm.-$$Lambda$Task$c3doYleeoysLZS5RwSL9gEvAHmk
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.lambda$isTaskAnimating$5$Task((Task) obj);
            }
        });
    }

    public /* synthetic */ Boolean lambda$isTaskAnimating$5$Task(Task t) {
        return Boolean.valueOf(t != this && t.isTaskAnimating());
    }

    @Override // com.android.server.wm.WindowContainer
    RemoteAnimationTarget createRemoteAnimationTarget(RemoteAnimationController.RemoteAnimationRecord record) {
        ActivityRecord activity = getTopMostActivity();
        if (activity != null) {
            return activity.createRemoteAnimationTarget(record);
        }
        return null;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean canCreateRemoteAnimationTarget() {
        return true;
    }

    WindowState getTopVisibleAppMainWindow() {
        ActivityRecord activity = getTopVisibleActivity();
        if (activity != null) {
            return activity.findMainWindow();
        }
        return null;
    }

    ActivityRecord topRunningActivity() {
        return topRunningActivity(false);
    }

    ActivityRecord topRunningActivity(boolean focusableOnly) {
        if (focusableOnly) {
            return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$Task$9j7BnRlFAodU0lX24yspPfgQBcI
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return Task.lambda$topRunningActivity$6((ActivityRecord) obj);
                }
            });
        }
        return getActivity($$Lambda$DaFwIyqZTBVKE2yTN2iE7CDr8.INSTANCE);
    }

    static /* synthetic */ boolean lambda$topRunningActivity$6(ActivityRecord r) {
        return r.canBeTopRunning() && r.isFocusable();
    }

    ActivityRecord topRunningNonDelayedActivityLocked(ActivityRecord notTop) {
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$Task$vJaPYJ0TW6MLVfOETMoxr75oHkk
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return Task.isTopRunningNonDelayed((ActivityRecord) obj, (ActivityRecord) obj2);
            }
        }, PooledLambda.__(ActivityRecord.class), notTop);
        ActivityRecord r = getActivity(p);
        p.recycle();
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTopRunningNonDelayed(ActivityRecord r, ActivityRecord notTop) {
        return (r.delayedResume || r == notTop || !r.canBeTopRunning()) ? false : true;
    }

    ActivityRecord topRunningActivity(IBinder token, int taskId) {
        PooledPredicate p = PooledLambda.obtainPredicate(new TriPredicate() { // from class: com.android.server.wm.-$$Lambda$Task$wc9vA2EWxCoWO_MzNTKvEB8eLgw
            public final boolean test(Object obj, Object obj2, Object obj3) {
                return Task.isTopRunning((ActivityRecord) obj, ((Integer) obj2).intValue(), (IBinder) obj3);
            }
        }, PooledLambda.__(ActivityRecord.class), Integer.valueOf(taskId), token);
        ActivityRecord r = getActivity(p);
        p.recycle();
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isTopRunning(ActivityRecord r, int taskId, IBinder notTop) {
        return (r.getTask().mTaskId == taskId || r.appToken == notTop || !r.canBeTopRunning()) ? false : true;
    }

    ActivityRecord getTopFullscreenActivity() {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$Task$s9wiZSThkGOKye0Zl5MRKv-8Iq0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Task.lambda$getTopFullscreenActivity$7((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$getTopFullscreenActivity$7(ActivityRecord r) {
        WindowState win = r.findMainWindow();
        return win != null && win.mAttrs.isFullscreen();
    }

    ActivityRecord getTopVisibleActivity() {
        return getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$Task$N6swnhdrHvxOfp81yUqye9AbX7A
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Task.lambda$getTopVisibleActivity$8((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ boolean lambda$getTopVisibleActivity$8(ActivityRecord r) {
        return !r.mIsExiting && r.isClientVisible() && r.mVisibleRequested;
    }

    boolean isTopActivityFocusable() {
        ActivityRecord r = topRunningActivity();
        if (r != null) {
            return r.isFocusable();
        }
        return isFocusable() && getWindowConfiguration().canReceiveKeys();
    }

    boolean isFocusableAndVisible() {
        return isTopActivityFocusable() && shouldBeVisible(null);
    }

    void positionChildAtTop(ActivityRecord child) {
        positionChildAt(child, Integer.MAX_VALUE);
    }

    void positionChildAt(ActivityRecord child, int position) {
        if (child == null) {
            Slog.w("WindowManager", "Attempted to position of non-existing app");
        } else {
            positionChildAt(position, child, false);
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
    void forceWindowsScaleable(boolean force) {
        this.mWmService.openSurfaceTransaction();
        try {
            for (int i = this.mChildren.size() - 1; i >= 0; i--) {
                ((WindowContainer) this.mChildren.get(i)).forceWindowsScaleableInTransaction(force);
            }
            this.mWmService.closeSurfaceTransaction("forceWindowsScaleable");
        } catch (Throwable th) {
            this.mWmService.closeSurfaceTransaction("forceWindowsScaleable");
            throw th;
        }
    }

    void setTaskDescription(ActivityManager.TaskDescription taskDescription) {
        this.mTaskDescription = taskDescription;
    }

    void onSnapshotChanged(ActivityManager.TaskSnapshot snapshot) {
        this.mAtmService.getTaskChangeNotificationController().notifyTaskSnapshotChanged(this.mTaskId, snapshot);
    }

    ActivityManager.TaskDescription getTaskDescription() {
        return this.mTaskDescription;
    }

    @Override // com.android.server.wm.WindowContainer
    int getOrientation(int candidate) {
        if (canSpecifyOrientation()) {
            return super.getOrientation(candidate);
        }
        return -2;
    }

    private boolean canSpecifyOrientation() {
        int windowingMode = getWindowingMode();
        int activityType = getActivityType();
        return windowingMode == 1 || activityType == 2 || activityType == 3 || activityType == 4;
    }

    @Override // com.android.server.wm.WindowContainer
    boolean fillsParent() {
        return matchParentBounds();
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
    void forAllLeafTasks(Consumer<Task> callback, boolean traverseTopToBottom) {
        int count = this.mChildren.size();
        boolean isLeafTask = true;
        if (traverseTopToBottom) {
            for (int i = count - 1; i >= 0; i--) {
                Task child = ((WindowContainer) this.mChildren.get(i)).asTask();
                if (child != null) {
                    isLeafTask = false;
                    child.forAllLeafTasks(callback, traverseTopToBottom);
                }
            }
        } else {
            for (int i2 = 0; i2 < count; i2++) {
                Task child2 = ((WindowContainer) this.mChildren.get(i2)).asTask();
                if (child2 != null) {
                    isLeafTask = false;
                    child2.forAllLeafTasks(callback, traverseTopToBottom);
                }
            }
        }
        if (isLeafTask) {
            callback.accept(this);
        }
    }

    @Override // com.android.server.wm.WindowContainer
    void forAllTasks(Consumer<Task> callback, boolean traverseTopToBottom) {
        super.forAllTasks(callback, traverseTopToBottom);
        callback.accept(this);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean forAllTasks(Function<Task, Boolean> callback) {
        if (super.forAllTasks(callback)) {
            return true;
        }
        return callback.apply(this).booleanValue();
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
    boolean forAllLeafTasks(Function<Task, Boolean> callback) {
        boolean isLeafTask = true;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            Task child = ((WindowContainer) this.mChildren.get(i)).asTask();
            if (child != null) {
                isLeafTask = false;
                if (child.forAllLeafTasks(callback)) {
                    return true;
                }
            }
        }
        if (isLeafTask) {
            return callback.apply(this).booleanValue();
        }
        return false;
    }

    @Override // com.android.server.wm.WindowContainer
    Task getTask(Predicate<Task> callback, boolean traverseTopToBottom) {
        Task t = super.getTask(callback, traverseTopToBottom);
        if (t != null) {
            return t;
        }
        if (callback.test(this)) {
            return this;
        }
        return null;
    }

    void setCanAffectSystemUiFlags(boolean canAffectSystemUiFlags) {
        this.mCanAffectSystemUiFlags = canAffectSystemUiFlags;
    }

    boolean canAffectSystemUiFlags() {
        return this.mCanAffectSystemUiFlags;
    }

    void dontAnimateDimExit() {
        this.mDimmer.dontAnimateExit();
    }

    @Override // com.android.server.wm.ConfigurationContainer
    String getName() {
        return "Task=" + this.mTaskId;
    }

    void clearPreserveNonFloatingState() {
        this.mPreserveNonFloatingState = false;
    }

    @Override // com.android.server.wm.WindowContainer
    Dimmer getDimmer() {
        if (inMultiWindowMode()) {
            return this.mDimmer;
        }
        if (!isRootTask() || isTranslucent(null)) {
            return super.getDimmer();
        }
        return this.mDimmer;
    }

    @Override // com.android.server.wm.WindowContainer
    void prepareSurfaces() {
        this.mDimmer.resetDimStates();
        super.prepareSurfaces();
        getDimBounds(this.mTmpDimBoundsRect);
        if (inFreeformWindowingMode()) {
            getBounds(this.mTmpRect);
            Rect rect = this.mTmpDimBoundsRect;
            rect.offsetTo(rect.left - this.mTmpRect.left, this.mTmpDimBoundsRect.top - this.mTmpRect.top);
        } else {
            this.mTmpDimBoundsRect.offsetTo(0, 0);
        }
        updateShadowsRadius(isFocused(), getSyncTransaction());
        if (this.mDimmer.updateDims(getPendingTransaction(), this.mTmpDimBoundsRect)) {
            scheduleAnimation();
        }
    }

    @Override // com.android.server.wm.WindowContainer
    protected void applyAnimationUnchecked(WindowManager.LayoutParams lp, boolean enter, int transit, boolean isVoiceInteraction, final ArrayList<WindowContainer> sources) {
        RecentsAnimationController control = this.mWmService.getRecentsAnimationController();
        if (control != null) {
            if (enter) {
                if (ProtoLog$Cache.WM_DEBUG_RECENTS_ANIMATIONS_enabled) {
                    String protoLogParam0 = String.valueOf(control);
                    String protoLogParam1 = String.valueOf(asTask());
                    String protoLogParam2 = String.valueOf(AppTransition.appTransitionToString(transit));
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_RECENTS_ANIMATIONS, 210750281, 0, null, protoLogParam0, protoLogParam1, protoLogParam2);
                }
                control.addTaskToTargets(this, new SurfaceAnimator.OnAnimationFinishedCallback() { // from class: com.android.server.wm.-$$Lambda$Task$kSFegYxPHp4qdhnWjQbYn0gwVbI
                    @Override // com.android.server.wm.SurfaceAnimator.OnAnimationFinishedCallback
                    public final void onAnimationFinished(int i, AnimationAdapter animationAdapter) {
                        Task.lambda$applyAnimationUnchecked$9(sources, i, animationAdapter);
                    }
                });
                return;
            }
            return;
        }
        super.applyAnimationUnchecked(lp, enter, transit, isVoiceInteraction, sources);
    }

    static /* synthetic */ void lambda$applyAnimationUnchecked$9(ArrayList sources, int type, AnimationAdapter anim) {
        for (int i = 0; i < sources.size(); i++) {
            ((WindowContainer) sources.get(i)).onAnimationFinished(type, anim);
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
    @Override // com.android.server.wm.WindowContainer
    void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        super.dump(pw, prefix, dumpAll);
        pw.println(prefix + "bounds=" + getBounds().toShortString());
        StringBuilder sb = new StringBuilder();
        sb.append(prefix);
        sb.append("  ");
        String doublePrefix = sb.toString();
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            WindowContainer<?> child = (WindowContainer) this.mChildren.get(i);
            pw.println(prefix + "* " + child);
            if (child.asActivityRecord() == null) {
                child.dump(pw, doublePrefix, dumpAll);
            }
        }
    }

    void fillTaskInfo(TaskInfo info) {
        fillTaskInfo(info, true);
    }

    void fillTaskInfo(TaskInfo info, boolean stripExtras) {
        Intent intentCloneFilter;
        ComponentName component;
        ComponentName componentName;
        int requestedOrientation;
        getNumRunningActivities(this.mReuseActivitiesReport);
        info.userId = this.mUserId;
        info.stackId = getRootTaskId();
        info.taskId = this.mTaskId;
        info.displayId = getDisplayId();
        info.isRunning = getTopNonFinishingActivity() != null;
        Intent baseIntent = getBaseIntent();
        int baseIntentFlags = baseIntent != null ? baseIntent.getFlags() : 0;
        if (baseIntent == null) {
            intentCloneFilter = new Intent();
        } else {
            intentCloneFilter = stripExtras ? baseIntent.cloneFilter() : new Intent(baseIntent);
        }
        info.baseIntent = intentCloneFilter;
        info.baseIntent.setFlags(baseIntentFlags);
        if (this.mReuseActivitiesReport.base != null) {
            component = this.mReuseActivitiesReport.base.intent.getComponent();
        } else {
            component = null;
        }
        info.baseActivity = component;
        if (this.mReuseActivitiesReport.top != null) {
            componentName = this.mReuseActivitiesReport.top.mActivityComponent;
        } else {
            componentName = null;
        }
        info.topActivity = componentName;
        info.origActivity = this.origActivity;
        info.realActivity = this.realActivity;
        info.numActivities = this.mReuseActivitiesReport.numActivities;
        info.lastActiveTime = this.lastActiveTime;
        info.taskDescription = new ActivityManager.TaskDescription(getTaskDescription());
        info.supportsSplitScreenMultiWindow = supportsSplitScreenWindowingMode();
        info.configuration.setTo(getConfiguration());
        info.token = this.mRemoteToken.toWindowContainerToken();
        Task top = getTopMostTask();
        info.resizeMode = top != null ? top.mResizeMode : this.mResizeMode;
        info.topActivityType = top.getActivityType();
        info.isResizeable = isResizeable();
        ActivityRecord rootActivity = top.getRootActivity();
        if (rootActivity == null || rootActivity.pictureInPictureArgs.empty()) {
            info.pictureInPictureParams = null;
        } else {
            info.pictureInPictureParams = rootActivity.pictureInPictureArgs;
        }
        info.topActivityInfo = this.mReuseActivitiesReport.top != null ? this.mReuseActivitiesReport.top.info : null;
        if (this.mReuseActivitiesReport.base != null) {
            requestedOrientation = this.mReuseActivitiesReport.base.getRequestedOrientation();
        } else {
            requestedOrientation = -2;
        }
        info.requestedOrientation = requestedOrientation;
    }

    static /* synthetic */ boolean lambda$trimIneffectiveInfo$10(ActivityRecord r) {
        return !r.finishing;
    }

    static void trimIneffectiveInfo(Task task, TaskInfo info) {
        ActivityRecord baseActivity = task.getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$Task$-UVGwsWpPpbDxxjrTf_FamRLRCY
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Task.lambda$trimIneffectiveInfo$10((ActivityRecord) obj);
            }
        }, false);
        int baseActivityUid = baseActivity != null ? baseActivity.getUid() : task.effectiveUid;
        if (info.topActivityInfo != null && task.effectiveUid != info.topActivityInfo.applicationInfo.uid) {
            info.topActivityInfo = new ActivityInfo(info.topActivityInfo);
            info.topActivityInfo.applicationInfo = new ApplicationInfo(info.topActivityInfo.applicationInfo);
            info.topActivity = new ComponentName("", "");
            info.topActivityInfo.packageName = "";
            info.topActivityInfo.taskAffinity = "";
            info.topActivityInfo.processName = "";
            info.topActivityInfo.name = "";
            info.topActivityInfo.parentActivityName = "";
            info.topActivityInfo.targetActivity = "";
            info.topActivityInfo.splitName = "";
            info.topActivityInfo.applicationInfo.className = "";
            info.topActivityInfo.applicationInfo.credentialProtectedDataDir = "";
            info.topActivityInfo.applicationInfo.dataDir = "";
            info.topActivityInfo.applicationInfo.deviceProtectedDataDir = "";
            info.topActivityInfo.applicationInfo.manageSpaceActivityName = "";
            info.topActivityInfo.applicationInfo.nativeLibraryDir = "";
            info.topActivityInfo.applicationInfo.nativeLibraryRootDir = "";
            info.topActivityInfo.applicationInfo.processName = "";
            info.topActivityInfo.applicationInfo.publicSourceDir = "";
            info.topActivityInfo.applicationInfo.scanPublicSourceDir = "";
            info.topActivityInfo.applicationInfo.scanSourceDir = "";
            info.topActivityInfo.applicationInfo.sourceDir = "";
            info.topActivityInfo.applicationInfo.taskAffinity = "";
            info.topActivityInfo.applicationInfo.name = "";
            info.topActivityInfo.applicationInfo.packageName = "";
        }
        if (task.effectiveUid != baseActivityUid) {
            info.baseActivity = new ComponentName("", "");
        }
    }

    ActivityManager.RunningTaskInfo getTaskInfo() {
        ActivityManager.RunningTaskInfo info = new ActivityManager.RunningTaskInfo();
        fillTaskInfo(info);
        return info;
    }

    boolean isTaskId(int taskId) {
        return this.mTaskId == taskId;
    }

    @Override // com.android.server.wm.WindowContainer
    Task asTask() {
        return this;
    }

    boolean shouldBeVisible(ActivityRecord starting) {
        return getVisibility(starting) != 2;
    }

    boolean canBeResumed(ActivityRecord starting) {
        return isTopActivityFocusable() && getVisibility(starting) == 0;
    }

    int getVisibility(ActivityRecord starting) {
        if (isAttached() && !isForceHidden()) {
            if (isTopActivityLaunchedBehind()) {
                return 0;
            }
            boolean gotSplitScreenStack = false;
            boolean gotOpaqueSplitScreenPrimary = false;
            boolean gotOpaqueSplitScreenSecondary = false;
            boolean gotTranslucentFullscreen = false;
            boolean gotTranslucentSplitScreenPrimary = false;
            boolean gotTranslucentSplitScreenSecondary = false;
            int i = 1;
            WindowContainer parent = getParent();
            int i2 = 1;
            if (parent.asTask() != null) {
                int parentVisibility = parent.asTask().getVisibility(starting);
                if (parentVisibility == 2) {
                    return 2;
                }
                if (parentVisibility == 1) {
                    gotTranslucentFullscreen = true;
                }
            }
            int windowingMode = getWindowingMode();
            boolean isAssistantType = isActivityTypeAssistant();
            int i3 = parent.getChildCount() - 1;
            while (i3 >= 0) {
                WindowContainer wc = parent.getChildAt(i3);
                Task other = wc.asTask();
                if (other != null) {
                    int i4 = other.topRunningActivity() != null ? i2 : 0;
                    if (other == this) {
                        i = (i4 == 0 && isInTask(starting) == null && !isActivityTypeHome()) ? 0 : i2;
                        break;
                    }
                    if (i4 != 0) {
                        int otherWindowingMode = other.getWindowingMode();
                        if (otherWindowingMode == i2) {
                            if (other.isTranslucent(starting)) {
                                gotTranslucentFullscreen = true;
                            } else {
                                return 2;
                            }
                        } else {
                            if (otherWindowingMode == 3 && !gotOpaqueSplitScreenPrimary) {
                                gotSplitScreenStack = true;
                                gotTranslucentSplitScreenPrimary = other.isTranslucent(starting);
                                gotOpaqueSplitScreenPrimary = !gotTranslucentSplitScreenPrimary;
                                if (windowingMode == 3 && gotOpaqueSplitScreenPrimary) {
                                    return 2;
                                }
                            } else if (otherWindowingMode == 4 && !gotOpaqueSplitScreenSecondary) {
                                gotSplitScreenStack = true;
                                gotTranslucentSplitScreenSecondary = other.isTranslucent(starting);
                                gotOpaqueSplitScreenSecondary = !gotTranslucentSplitScreenSecondary;
                                if (windowingMode == 4 && gotOpaqueSplitScreenSecondary) {
                                    return 2;
                                }
                            } else {
                                boolean gotSplitScreenStack2 = gotSplitScreenStack;
                                if (Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDstEnabled_allowed) && otherWindowingMode == 5) {
                                    if (windowingMode == 5) {
                                        if (other.isTranslucent(starting)) {
                                            gotTranslucentFullscreen = true;
                                            gotSplitScreenStack = gotSplitScreenStack2;
                                        } else {
                                            return 2;
                                        }
                                    } else if (windowingMode == 1) {
                                        if (!isActivityTypeHome()) {
                                            return 2;
                                        }
                                        gotTranslucentFullscreen = true;
                                        gotSplitScreenStack = gotSplitScreenStack2;
                                    }
                                }
                                gotSplitScreenStack = gotSplitScreenStack2;
                            }
                            if (gotOpaqueSplitScreenPrimary && gotOpaqueSplitScreenSecondary) {
                                return 2;
                            }
                            if (isAssistantType && gotSplitScreenStack) {
                                return 2;
                            }
                        }
                    } else {
                        continue;
                    }
                }
                i3--;
                i2 = 1;
            }
            if (i == 0) {
                return 2;
            }
            if (windowingMode != 1) {
                if (windowingMode == 3) {
                    if (gotTranslucentSplitScreenPrimary) {
                        return 1;
                    }
                } else if (windowingMode == 4 && gotTranslucentSplitScreenSecondary) {
                    return 1;
                }
            } else if (gotTranslucentSplitScreenPrimary || gotTranslucentSplitScreenSecondary) {
                return 1;
            }
            return gotTranslucentFullscreen ? 1 : 0;
        }
        return 2;
    }

    private boolean isTopActivityLaunchedBehind() {
        ActivityRecord top = topRunningActivity();
        if (top != null && top.mLaunchTaskBehind) {
            return true;
        }
        return false;
    }

    ActivityRecord isInTask(ActivityRecord r) {
        if (r == null || !r.isDescendantOf(this)) {
            return null;
        }
        return r;
    }

    void dump(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.print("userId=");
        pw.print(this.mUserId);
        pw.print(" effectiveUid=");
        UserHandle.formatUid(pw, this.effectiveUid);
        pw.print(" mCallingUid=");
        UserHandle.formatUid(pw, this.mCallingUid);
        pw.print(" mUserSetupComplete=");
        pw.print(this.mUserSetupComplete);
        pw.print(" mCallingPackage=");
        pw.print(this.mCallingPackage);
        pw.print(" mCallingFeatureId=");
        pw.println(this.mCallingFeatureId);
        if (this.affinity != null || this.rootAffinity != null) {
            pw.print(prefix);
            pw.print("affinity=");
            pw.print(this.affinity);
            String str = this.affinity;
            if (str == null || !str.equals(this.rootAffinity)) {
                pw.print(" root=");
                pw.println(this.rootAffinity);
            } else {
                pw.println();
            }
        }
        if (this.mWindowLayoutAffinity != null) {
            pw.print(prefix);
            pw.print("windowLayoutAffinity=");
            pw.println(this.mWindowLayoutAffinity);
        }
        if (this.voiceSession != null || this.voiceInteractor != null) {
            pw.print(prefix);
            pw.print("VOICE: session=0x");
            pw.print(Integer.toHexString(System.identityHashCode(this.voiceSession)));
            pw.print(" interactor=0x");
            pw.println(Integer.toHexString(System.identityHashCode(this.voiceInteractor)));
        }
        if (this.intent != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append(prefix);
            sb.append("intent={");
            this.intent.toShortString(sb, false, true, false, false);
            sb.append('}');
            pw.println(sb.toString());
        }
        if (this.affinityIntent != null) {
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append(prefix);
            sb2.append("affinityIntent={");
            this.affinityIntent.toShortString(sb2, false, true, false, false);
            sb2.append('}');
            pw.println(sb2.toString());
        }
        if (this.origActivity != null) {
            pw.print(prefix);
            pw.print("origActivity=");
            pw.println(this.origActivity.flattenToShortString());
        }
        if (this.realActivity != null) {
            pw.print(prefix);
            pw.print("mActivityComponent=");
            pw.println(this.realActivity.flattenToShortString());
        }
        if (this.autoRemoveRecents || this.isPersistable || !isActivityTypeStandard()) {
            pw.print(prefix);
            pw.print("autoRemoveRecents=");
            pw.print(this.autoRemoveRecents);
            pw.print(" isPersistable=");
            pw.print(this.isPersistable);
            pw.print(" activityType=");
            pw.println(getActivityType());
        }
        if (this.rootWasReset || this.mNeverRelinquishIdentity || this.mReuseTask || this.mLockTaskAuth != 1) {
            pw.print(prefix);
            pw.print("rootWasReset=");
            pw.print(this.rootWasReset);
            pw.print(" mNeverRelinquishIdentity=");
            pw.print(this.mNeverRelinquishIdentity);
            pw.print(" mReuseTask=");
            pw.print(this.mReuseTask);
            pw.print(" mLockTaskAuth=");
            pw.println(lockTaskAuthToString());
        }
        if (this.mAffiliatedTaskId != this.mTaskId || this.mPrevAffiliateTaskId != -1 || this.mPrevAffiliate != null || this.mNextAffiliateTaskId != -1 || this.mNextAffiliate != null) {
            pw.print(prefix);
            pw.print("affiliation=");
            pw.print(this.mAffiliatedTaskId);
            pw.print(" prevAffiliation=");
            pw.print(this.mPrevAffiliateTaskId);
            pw.print(" (");
            Task task = this.mPrevAffiliate;
            if (task == null) {
                pw.print("null");
            } else {
                pw.print(Integer.toHexString(System.identityHashCode(task)));
            }
            pw.print(") nextAffiliation=");
            pw.print(this.mNextAffiliateTaskId);
            pw.print(" (");
            Task task2 = this.mNextAffiliate;
            if (task2 == null) {
                pw.print("null");
            } else {
                pw.print(Integer.toHexString(System.identityHashCode(task2)));
            }
            pw.println(")");
        }
        pw.print(prefix);
        pw.print("Activities=");
        pw.println(this.mChildren);
        if (!this.askedCompatMode || !this.inRecents || !this.isAvailable) {
            pw.print(prefix);
            pw.print("askedCompatMode=");
            pw.print(this.askedCompatMode);
            pw.print(" inRecents=");
            pw.print(this.inRecents);
            pw.print(" isAvailable=");
            pw.println(this.isAvailable);
        }
        if (this.lastDescription != null) {
            pw.print(prefix);
            pw.print("lastDescription=");
            pw.println(this.lastDescription);
        }
        if (this.mRootProcess != null) {
            pw.print(prefix);
            pw.print("mRootProcess=");
            pw.println(this.mRootProcess);
        }
        pw.print(prefix);
        pw.print("taskId=" + this.mTaskId);
        pw.println(" stackId=" + getRootTaskId());
        pw.print(prefix);
        pw.print("mHasBeenVisible=");
        pw.println(getHasBeenVisible());
        pw.print(prefix);
        pw.print("mResizeMode=");
        pw.print(ActivityInfo.resizeModeToString(this.mResizeMode));
        pw.print(" mSupportsPictureInPicture=");
        pw.print(this.mSupportsPictureInPicture);
        pw.print(" isResizeable=");
        pw.println(isResizeable());
        pw.print(prefix);
        pw.print("lastActiveTime=");
        pw.print(this.lastActiveTime);
        pw.println(" (inactive for " + (getInactiveDuration() / 1000) + "s)");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        String str = this.stringName;
        if (str != null) {
            sb.append(str);
            sb.append(" U=");
            sb.append(this.mUserId);
            sb.append(" StackId=");
            sb.append(getRootTaskId());
            sb.append(" sz=");
            sb.append(getChildCount());
            sb.append('}');
            return sb.toString();
        }
        sb.append("Task{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.mTaskId);
        sb.append(" visible=" + shouldBeVisible(null));
        sb.append(" type=" + WindowConfiguration.activityTypeToString(getActivityType()));
        sb.append(" mode=" + WindowConfiguration.windowingModeToString(getWindowingMode()));
        sb.append(" translucent=" + isTranslucent(null));
        if (this.affinity != null) {
            sb.append(" A=");
            sb.append(this.affinity);
        } else {
            Intent intent = this.intent;
            if (intent != null && intent.getComponent() != null) {
                sb.append(" I=");
                sb.append(this.intent.getComponent().flattenToShortString());
            } else {
                Intent intent2 = this.affinityIntent;
                if (intent2 != null && intent2.getComponent() != null) {
                    sb.append(" aI=");
                    sb.append(this.affinityIntent.getComponent().flattenToShortString());
                } else {
                    sb.append(" ??");
                }
            }
        }
        this.stringName = sb.toString();
        return toString();
    }

    static class TaskActivitiesReport implements Consumer<ActivityRecord> {
        ActivityRecord base;
        int numActivities;
        int numRunning;
        ActivityRecord top;

        TaskActivitiesReport() {
        }

        void reset() {
            this.numActivities = 0;
            this.numRunning = 0;
            this.base = null;
            this.top = null;
        }

        @Override // java.util.function.Consumer
        public void accept(ActivityRecord r) {
            if (r.finishing) {
                return;
            }
            this.base = r;
            this.numActivities++;
            ActivityRecord activityRecord = this.top;
            if (activityRecord == null || activityRecord.isState(ActivityStack.ActivityState.INITIALIZING)) {
                this.top = r;
                this.numRunning = 0;
            }
            if (r.attachedToProcess()) {
                this.numRunning++;
            }
        }
    }

    void saveToXml(XmlSerializer out) throws Exception {
        out.attribute(null, ATTR_TASKID, String.valueOf(this.mTaskId));
        ComponentName componentName = this.realActivity;
        if (componentName != null) {
            out.attribute(null, ATTR_REALACTIVITY, componentName.flattenToShortString());
        }
        out.attribute(null, ATTR_REALACTIVITY_SUSPENDED, String.valueOf(this.realActivitySuspended));
        ComponentName componentName2 = this.origActivity;
        if (componentName2 != null) {
            out.attribute(null, ATTR_ORIGACTIVITY, componentName2.flattenToShortString());
        }
        String str = this.affinity;
        if (str != null) {
            out.attribute(null, ATTR_AFFINITY, str);
            if (!this.affinity.equals(this.rootAffinity)) {
                String str2 = this.rootAffinity;
                out.attribute(null, ATTR_ROOT_AFFINITY, str2 != null ? str2 : "@");
            }
        } else {
            String str3 = this.rootAffinity;
            if (str3 != null) {
                out.attribute(null, ATTR_ROOT_AFFINITY, str3 != null ? str3 : "@");
            }
        }
        String str4 = this.mWindowLayoutAffinity;
        if (str4 != null) {
            out.attribute(null, ATTR_WINDOW_LAYOUT_AFFINITY, str4);
        }
        out.attribute(null, ATTR_ROOTHASRESET, String.valueOf(this.rootWasReset));
        out.attribute(null, ATTR_AUTOREMOVERECENTS, String.valueOf(this.autoRemoveRecents));
        out.attribute(null, ATTR_ASKEDCOMPATMODE, String.valueOf(this.askedCompatMode));
        out.attribute(null, ATTR_USERID, String.valueOf(this.mUserId));
        out.attribute(null, ATTR_USER_SETUP_COMPLETE, String.valueOf(this.mUserSetupComplete));
        out.attribute(null, ATTR_EFFECTIVE_UID, String.valueOf(this.effectiveUid));
        out.attribute(null, ATTR_LASTTIMEMOVED, String.valueOf(this.mLastTimeMoved));
        out.attribute(null, ATTR_NEVERRELINQUISH, String.valueOf(this.mNeverRelinquishIdentity));
        CharSequence charSequence = this.lastDescription;
        if (charSequence != null) {
            out.attribute(null, ATTR_LASTDESCRIPTION, charSequence.toString());
        }
        if (getTaskDescription() != null) {
            getTaskDescription().saveToXml(out);
        }
        out.attribute(null, ATTR_TASK_AFFILIATION_COLOR, String.valueOf(this.mAffiliatedTaskColor));
        out.attribute(null, ATTR_TASK_AFFILIATION, String.valueOf(this.mAffiliatedTaskId));
        out.attribute(null, ATTR_PREV_AFFILIATION, String.valueOf(this.mPrevAffiliateTaskId));
        out.attribute(null, ATTR_NEXT_AFFILIATION, String.valueOf(this.mNextAffiliateTaskId));
        out.attribute(null, ATTR_CALLING_UID, String.valueOf(this.mCallingUid));
        String str5 = this.mCallingPackage;
        if (str5 == null) {
            str5 = "";
        }
        out.attribute(null, ATTR_CALLING_PACKAGE, str5);
        String str6 = this.mCallingFeatureId;
        out.attribute(null, ATTR_CALLING_FEATURE_ID, str6 != null ? str6 : "");
        out.attribute(null, ATTR_RESIZE_MODE, String.valueOf(this.mResizeMode));
        out.attribute(null, ATTR_SUPPORTS_PICTURE_IN_PICTURE, String.valueOf(this.mSupportsPictureInPicture));
        Rect rect = this.mLastNonFullscreenBounds;
        if (rect != null) {
            out.attribute(null, ATTR_NON_FULLSCREEN_BOUNDS, rect.flattenToString());
        }
        out.attribute(null, ATTR_MIN_WIDTH, String.valueOf(this.mMinWidth));
        out.attribute(null, ATTR_MIN_HEIGHT, String.valueOf(this.mMinHeight));
        out.attribute(null, ATTR_PERSIST_TASK_VERSION, String.valueOf(1));
        if (this.affinityIntent != null) {
            out.startTag(null, TAG_AFFINITYINTENT);
            this.affinityIntent.saveToXml(out);
            out.endTag(null, TAG_AFFINITYINTENT);
        }
        if (this.intent != null) {
            out.startTag(null, TAG_INTENT);
            this.intent.saveToXml(out);
            out.endTag(null, TAG_INTENT);
        }
        sTmpException = null;
        PooledFunction f = PooledLambda.obtainFunction(new TriFunction() { // from class: com.android.server.wm.-$$Lambda$Task$OQmaRDKXdgA0v6VfNwTX7wOkwBs
            public final Object apply(Object obj, Object obj2, Object obj3) {
                return Boolean.valueOf(Task.saveActivityToXml((ActivityRecord) obj, (ActivityRecord) obj2, (XmlSerializer) obj3));
            }
        }, PooledLambda.__(ActivityRecord.class), getBottomMostActivity(), out);
        forAllActivities((Function<ActivityRecord, Boolean>) f);
        f.recycle();
        Exception exc = sTmpException;
        if (exc != null) {
            throw exc;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean saveActivityToXml(ActivityRecord r, ActivityRecord first, XmlSerializer out) {
        if (r.info.persistableMode == 0 || !r.isPersistable() || (((r.intent.getFlags() & 524288) | 8192) == 524288 && r != first)) {
            return true;
        }
        try {
            out.startTag(null, TAG_ACTIVITY);
            r.saveToXml(out);
            out.endTag(null, TAG_ACTIVITY);
            return false;
        } catch (Exception e) {
            sTmpException = e;
            return true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:202:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:98:0x01ef  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    static Task restoreFromXml(XmlPullParser in, ActivityStackSupervisor stackSupervisor) throws XmlPullParserException, IOException {
        int event;
        boolean supportsPictureInPicture;
        int effectiveUid;
        int effectiveUid2;
        byte b;
        ArrayList<ActivityRecord> activities = new ArrayList<>();
        boolean userSetupComplete = true;
        int effectiveUid3 = -1;
        String lastDescription = null;
        long lastTimeOnTop = 0;
        boolean neverRelinquishIdentity = true;
        Intent affinityIntent = null;
        int outerDepth = in.getDepth();
        ActivityManager.TaskDescription taskDescription = new ActivityManager.TaskDescription();
        int taskAffiliation = -1;
        boolean supportsPictureInPicture2 = false;
        boolean realActivitySuspended = false;
        String windowLayoutAffinity = null;
        int userId = 0;
        int taskId = -1;
        int taskAffiliationColor = 0;
        int prevTaskId = -1;
        int nextTaskId = -1;
        int callingUid = -1;
        String callingPackage = "";
        String callingFeatureId = null;
        Rect lastNonFullscreenBounds = null;
        int minWidth = -1;
        int minHeight = -1;
        ComponentName realActivity = null;
        boolean hasRootAffinity = false;
        int userId2 = 0;
        int attrNdx = in.getAttributeCount() - 1;
        String rootAffinity = null;
        boolean askedCompatMode = false;
        String rootAffinity2 = null;
        boolean autoRemoveRecents = false;
        ComponentName origActivity = null;
        boolean rootHasReset = false;
        int resizeMode = 4;
        int persistTaskVersion = 0;
        while (true) {
            boolean askedCompatMode2 = askedCompatMode;
            boolean autoRemoveRecents2 = autoRemoveRecents;
            if (attrNdx < 0) {
                ComponentName origActivity2 = origActivity;
                boolean rootHasReset2 = rootHasReset;
                taskDescription.restoreFromXml(in);
                Intent intent = null;
                while (true) {
                    int event2 = in.next();
                    if (event2 != 1 && (event2 != 3 || in.getDepth() >= outerDepth)) {
                        if (event2 == 2) {
                            String name = in.getName();
                            if (TAG_AFFINITYINTENT.equals(name)) {
                                affinityIntent = Intent.restoreFromXml(in);
                            } else if (TAG_INTENT.equals(name)) {
                                intent = Intent.restoreFromXml(in);
                            } else if (TAG_ACTIVITY.equals(name)) {
                                ActivityRecord activity = ActivityRecord.restoreFromXml(in, stackSupervisor);
                                if (activity != null) {
                                    activities.add(activity);
                                }
                            } else {
                                Slog.e("ActivityTaskManager", "restoreTask: Unexpected name=" + name);
                                XmlUtils.skipCurrentTag(in);
                            }
                            outerDepth = outerDepth;
                        }
                    }
                }
                if (!hasRootAffinity) {
                    rootAffinity = rootAffinity2;
                } else if ("@".equals(rootAffinity)) {
                    rootAffinity = null;
                }
                if (effectiveUid3 <= 0) {
                    Intent checkIntent = intent != null ? intent : affinityIntent;
                    if (checkIntent == null) {
                        effectiveUid = 0;
                        event = userId;
                    } else {
                        effectiveUid = 0;
                        IPackageManager pm = AppGlobals.getPackageManager();
                        try {
                            event = userId;
                            try {
                                ApplicationInfo ai = pm.getApplicationInfo(checkIntent.getComponent().getPackageName(), 8704, event);
                                if (ai != null) {
                                    effectiveUid = ai.uid;
                                }
                                effectiveUid2 = effectiveUid;
                            } catch (RemoteException e) {
                                effectiveUid2 = effectiveUid;
                            }
                        } catch (RemoteException e2) {
                            event = userId;
                        }
                        Slog.w("ActivityTaskManager", "Updating task #" + taskId + " for " + checkIntent + ": effectiveUid=" + effectiveUid2);
                        effectiveUid3 = effectiveUid2;
                    }
                    effectiveUid2 = effectiveUid;
                    Slog.w("ActivityTaskManager", "Updating task #" + taskId + " for " + checkIntent + ": effectiveUid=" + effectiveUid2);
                    effectiveUid3 = effectiveUid2;
                } else {
                    event = userId;
                }
                if (persistTaskVersion < 1) {
                    if (userId2 == 1 && resizeMode == 2) {
                        resizeMode = 1;
                        supportsPictureInPicture = supportsPictureInPicture2;
                    } else {
                        supportsPictureInPicture = supportsPictureInPicture2;
                    }
                } else if (resizeMode == 3) {
                    resizeMode = 2;
                    supportsPictureInPicture = true;
                } else {
                    supportsPictureInPicture = supportsPictureInPicture2;
                }
                Task task = new ActivityStack(stackSupervisor.mService, taskId, intent, affinityIntent, rootAffinity2, rootAffinity, realActivity, origActivity2, rootHasReset2, autoRemoveRecents2, askedCompatMode2, event, effectiveUid3, lastDescription, lastTimeOnTop, neverRelinquishIdentity, taskDescription, taskAffiliation, prevTaskId, nextTaskId, taskAffiliationColor, callingUid, callingPackage, callingFeatureId, resizeMode, supportsPictureInPicture, realActivitySuspended, userSetupComplete, minWidth, minHeight, null, null, null, null);
                Rect lastNonFullscreenBounds2 = lastNonFullscreenBounds;
                task.mLastNonFullscreenBounds = lastNonFullscreenBounds2;
                task.setBounds(lastNonFullscreenBounds2);
                task.mWindowLayoutAffinity = windowLayoutAffinity;
                for (int activityNdx = activities.size() - 1; activityNdx >= 0; activityNdx--) {
                    task.addChild(activities.get(activityNdx));
                }
                return task;
            }
            String attrName = in.getAttributeName(attrNdx);
            String attrValue = in.getAttributeValue(attrNdx);
            boolean rootHasReset3 = rootHasReset;
            switch (attrName.hashCode()) {
                case -2134816935:
                    if (attrName.equals(ATTR_ASKEDCOMPATMODE)) {
                        b = 9;
                    } else {
                        b = -1;
                    }
                    break;
                case -1556983798:
                    if (attrName.equals(ATTR_LASTTIMEMOVED)) {
                        b = UsbDescriptor.DESCRIPTORTYPE_BOS;
                    } else {
                        b = -1;
                    }
                    break;
                case -1537240555:
                    if (attrName.equals(ATTR_TASKID)) {
                        b = 0;
                    } else {
                        b = -1;
                    }
                    break;
                case -1494902876:
                    if (attrName.equals(ATTR_NEXT_AFFILIATION)) {
                        b = 19;
                    } else {
                        b = -1;
                    }
                    break;
                case -1292777190:
                    if (attrName.equals(ATTR_TASK_AFFILIATION_COLOR)) {
                        b = 20;
                    } else {
                        b = -1;
                    }
                    break;
                case -1138503444:
                    if (attrName.equals(ATTR_REALACTIVITY_SUSPENDED)) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                    break;
                case -1124927690:
                    if (attrName.equals(ATTR_TASK_AFFILIATION)) {
                        b = 17;
                    } else {
                        b = -1;
                    }
                    break;
                case -974080081:
                    if (attrName.equals(ATTR_USER_SETUP_COMPLETE)) {
                        b = 11;
                    } else {
                        b = -1;
                    }
                    break;
                case -929566280:
                    if (attrName.equals(ATTR_EFFECTIVE_UID)) {
                        b = 12;
                    } else {
                        b = -1;
                    }
                    break;
                case -865458610:
                    if (attrName.equals(ATTR_RESIZE_MODE)) {
                        b = 24;
                    } else {
                        b = -1;
                    }
                    break;
                case -826243148:
                    if (attrName.equals(ATTR_MIN_HEIGHT)) {
                        b = 28;
                    } else {
                        b = -1;
                    }
                    break;
                case -707249465:
                    if (attrName.equals(ATTR_NON_FULLSCREEN_BOUNDS)) {
                        b = 26;
                    } else {
                        b = -1;
                    }
                    break;
                case -705269939:
                    if (attrName.equals(ATTR_ORIGACTIVITY)) {
                        b = 3;
                    } else {
                        b = -1;
                    }
                    break;
                case -502399667:
                    if (attrName.equals(ATTR_AUTOREMOVERECENTS)) {
                        b = 8;
                    } else {
                        b = -1;
                    }
                    break;
                case -360792224:
                    if (attrName.equals(ATTR_SUPPORTS_PICTURE_IN_PICTURE)) {
                        b = 25;
                    } else {
                        b = -1;
                    }
                    break;
                case -162744347:
                    if (attrName.equals(ATTR_ROOT_AFFINITY)) {
                        b = 5;
                    } else {
                        b = -1;
                    }
                    break;
                case -147132913:
                    if (attrName.equals(ATTR_USERID)) {
                        b = 10;
                    } else {
                        b = -1;
                    }
                    break;
                case -132216235:
                    if (attrName.equals(ATTR_CALLING_UID)) {
                        b = 21;
                    } else {
                        b = -1;
                    }
                    break;
                case 180927924:
                    if (attrName.equals(ATTR_TASKTYPE)) {
                        b = UsbACInterface.ACI_SAMPLE_RATE_CONVERTER;
                    } else {
                        b = -1;
                    }
                    break;
                case 331206372:
                    if (attrName.equals(ATTR_PREV_AFFILIATION)) {
                        b = 18;
                    } else {
                        b = -1;
                    }
                    break;
                case 394454367:
                    if (attrName.equals(ATTR_CALLING_FEATURE_ID)) {
                        b = 23;
                    } else {
                        b = -1;
                    }
                    break;
                case 541503897:
                    if (attrName.equals(ATTR_MIN_WIDTH)) {
                        b = 27;
                    } else {
                        b = -1;
                    }
                    break;
                case 605497640:
                    if (attrName.equals(ATTR_AFFINITY)) {
                        b = 4;
                    } else {
                        b = -1;
                    }
                    break;
                case 869221331:
                    if (attrName.equals(ATTR_LASTDESCRIPTION)) {
                        b = 14;
                    } else {
                        b = -1;
                    }
                    break;
                case 1007873193:
                    if (attrName.equals(ATTR_PERSIST_TASK_VERSION)) {
                        b = 29;
                    } else {
                        b = -1;
                    }
                    break;
                case 1081438155:
                    if (attrName.equals(ATTR_CALLING_PACKAGE)) {
                        b = 22;
                    } else {
                        b = -1;
                    }
                    break;
                case 1457608782:
                    if (attrName.equals(ATTR_NEVERRELINQUISH)) {
                        b = UsbDescriptor.DESCRIPTORTYPE_CAPABILITY;
                    } else {
                        b = -1;
                    }
                    break;
                case 1539554448:
                    if (attrName.equals(ATTR_REALACTIVITY)) {
                        b = 1;
                    } else {
                        b = -1;
                    }
                    break;
                case 1999609934:
                    if (attrName.equals(ATTR_WINDOW_LAYOUT_AFFINITY)) {
                        b = 6;
                    } else {
                        b = -1;
                    }
                    break;
                case 2023391309:
                    if (attrName.equals(ATTR_ROOTHASRESET)) {
                        b = 7;
                    } else {
                        b = -1;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    if (taskId == -1) {
                        taskId = Integer.parseInt(attrValue);
                        askedCompatMode = askedCompatMode2;
                        autoRemoveRecents = autoRemoveRecents2;
                        rootHasReset = rootHasReset3;
                    }
                    attrNdx--;
                    break;
                case 1:
                    realActivity = ComponentName.unflattenFromString(attrValue);
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 2:
                    boolean realActivitySuspended2 = Boolean.valueOf(attrValue).booleanValue();
                    realActivitySuspended = realActivitySuspended2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 3:
                    origActivity = ComponentName.unflattenFromString(attrValue);
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 4:
                    rootAffinity2 = attrValue;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 5:
                    rootAffinity = attrValue;
                    hasRootAffinity = true;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 6:
                    windowLayoutAffinity = attrValue;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 7:
                    rootHasReset = Boolean.parseBoolean(attrValue);
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    continue;
                    attrNdx--;
                    break;
                case 8:
                    boolean autoRemoveRecents3 = Boolean.parseBoolean(attrValue);
                    autoRemoveRecents = autoRemoveRecents3;
                    askedCompatMode = askedCompatMode2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 9:
                    boolean askedCompatMode3 = Boolean.parseBoolean(attrValue);
                    askedCompatMode = askedCompatMode3;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 10:
                    int userId3 = Integer.parseInt(attrValue);
                    userId = userId3;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 11:
                    boolean userSetupComplete2 = Boolean.parseBoolean(attrValue);
                    userSetupComplete = userSetupComplete2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 12:
                    int effectiveUid4 = Integer.parseInt(attrValue);
                    effectiveUid3 = effectiveUid4;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 13:
                    int taskType = Integer.parseInt(attrValue);
                    userId2 = taskType;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 14:
                    lastDescription = attrValue;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 15:
                    lastTimeOnTop = Long.parseLong(attrValue);
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 16:
                    boolean neverRelinquishIdentity2 = Boolean.parseBoolean(attrValue);
                    neverRelinquishIdentity = neverRelinquishIdentity2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 17:
                    int taskAffiliation2 = Integer.parseInt(attrValue);
                    taskAffiliation = taskAffiliation2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 18:
                    int prevTaskId2 = Integer.parseInt(attrValue);
                    prevTaskId = prevTaskId2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 19:
                    int nextTaskId2 = Integer.parseInt(attrValue);
                    nextTaskId = nextTaskId2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 20:
                    int taskAffiliationColor2 = Integer.parseInt(attrValue);
                    taskAffiliationColor = taskAffiliationColor2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 21:
                    int callingUid2 = Integer.parseInt(attrValue);
                    callingUid = callingUid2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 22:
                    callingPackage = attrValue;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case WindowManagerService.H.BOOT_TIMEOUT /* 23 */:
                    callingFeatureId = attrValue;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case WindowManagerService.H.WAITING_FOR_DRAWN_TIMEOUT /* 24 */:
                    resizeMode = Integer.parseInt(attrValue);
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case WindowManagerService.H.SHOW_STRICT_MODE_VIOLATION /* 25 */:
                    boolean supportsPictureInPicture3 = Boolean.parseBoolean(attrValue);
                    supportsPictureInPicture2 = supportsPictureInPicture3;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case CecMessageType.GIVE_DECK_STATUS /* 26 */:
                    Rect lastNonFullscreenBounds3 = Rect.unflattenFromString(attrValue);
                    lastNonFullscreenBounds = lastNonFullscreenBounds3;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case CecMessageType.DECK_STATUS /* 27 */:
                    int minWidth2 = Integer.parseInt(attrValue);
                    minWidth = minWidth2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case 28:
                    int minHeight2 = Integer.parseInt(attrValue);
                    minHeight = minHeight2;
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                case HdmiCecKeycode.CEC_KEYCODE_NUMBER_ENTRY_MODE /* 29 */:
                    persistTaskVersion = Integer.parseInt(attrValue);
                    askedCompatMode = askedCompatMode2;
                    autoRemoveRecents = autoRemoveRecents2;
                    rootHasReset = rootHasReset3;
                    continue;
                    attrNdx--;
                    break;
                default:
                    if (!attrName.startsWith("task_description_")) {
                        Slog.w("ActivityTaskManager", "Task: Unknown attribute=" + attrName);
                    }
                    break;
            }
            askedCompatMode = askedCompatMode2;
            autoRemoveRecents = autoRemoveRecents2;
            rootHasReset = rootHasReset3;
            origActivity = origActivity;
            attrNdx--;
        }
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isOrganized() {
        return this.mTaskOrganizer != null;
    }

    @Override // com.android.server.wm.WindowContainer
    protected void reparentSurfaceControl(SurfaceControl.Transaction t, SurfaceControl newParent) {
        if (isOrganized() && isAlwaysOnTop()) {
            return;
        }
        super.reparentSurfaceControl(t, newParent);
    }

    void setHasBeenVisible(boolean hasBeenVisible) {
        boolean prevHasBeenVisible = this.mHasBeenVisible;
        this.mHasBeenVisible = hasBeenVisible;
        if (hasBeenVisible) {
            if (!this.mCreatedByOrganizer && this.mTaskOrganizer != null && !prevHasBeenVisible) {
                getSyncTransaction().hide(getSurfaceControl());
                commitPendingTransaction();
            }
            sendTaskAppeared();
            if (!isRootTask()) {
                getRootTask().setHasBeenVisible(true);
            }
        }
    }

    boolean getHasBeenVisible() {
        return this.mHasBeenVisible;
    }

    boolean taskAppearedReady() {
        if (this.mTaskOrganizer == null) {
            return false;
        }
        if (this.mCreatedByOrganizer) {
            return true;
        }
        return this.mSurfaceControl != null && getHasBeenVisible();
    }

    private void sendTaskAppeared() {
        if (this.mTaskOrganizer != null) {
            this.mAtmService.mTaskOrganizerController.onTaskAppeared(this.mTaskOrganizer, this);
        }
    }

    private void sendTaskVanished(ITaskOrganizer organizer) {
        if (organizer != null) {
            this.mAtmService.mTaskOrganizerController.onTaskVanished(organizer, this);
        }
    }

    boolean setTaskOrganizer(ITaskOrganizer organizer) {
        if (this.mTaskOrganizer == organizer) {
            return false;
        }
        ITaskOrganizer previousOrganizer = this.mTaskOrganizer;
        this.mTaskOrganizer = organizer;
        sendTaskVanished(previousOrganizer);
        if (this.mTaskOrganizer != null) {
            sendTaskAppeared();
            return true;
        }
        this.mTaskAppearedSent = false;
        this.mLastTaskOrganizerWindowingMode = -1;
        setForceHidden(2, false);
        if (this.mCreatedByOrganizer) {
            removeImmediately();
            return true;
        }
        return true;
    }

    boolean updateTaskOrganizerState(boolean forceUpdate) {
        if (!isRootTask()) {
            return false;
        }
        int windowingMode = getWindowingMode();
        if (!forceUpdate && windowingMode == this.mLastTaskOrganizerWindowingMode) {
            return false;
        }
        ITaskOrganizer org = this.mWmService.mAtmService.mTaskOrganizerController.getTaskOrganizer(windowingMode);
        boolean result = setTaskOrganizer(org);
        this.mLastTaskOrganizerWindowingMode = windowingMode;
        return result;
    }

    @Override // com.android.server.wm.WindowContainer
    void setSurfaceControl(SurfaceControl sc) {
        super.setSurfaceControl(sc);
        sendTaskAppeared();
    }

    private boolean isFocused() {
        return (this.mDisplayContent == null || this.mDisplayContent.mCurrentFocus == null || this.mDisplayContent.mCurrentFocus.getTask() != this) ? false : true;
    }

    private boolean hasVisibleChildren() {
        return (!isAttached() || isForceHidden() || getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$l6AtA6HpQmFuEYd_DP955eyY_WI
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((ActivityRecord) obj).isVisible();
            }
        }) == null) ? false : true;
    }

    private float getShadowRadius(boolean taskIsFocused) {
        int elevation;
        if (inPinnedWindowingMode()) {
            elevation = 5;
        } else {
            if (!inFreeformWindowingMode()) {
                return 0.0f;
            }
            elevation = taskIsFocused ? 20 : 5;
        }
        if (hasVisibleChildren()) {
            return WindowManagerService.dipToPixel(elevation, getDisplayContent().getDisplayMetrics());
        }
        return 0.0f;
    }

    private void updateShadowsRadius(boolean taskIsFocused, SurfaceControl.Transaction pendingTransaction) {
        if (!this.mWmService.mRenderShadowsInCompositor || !isRootTask()) {
            return;
        }
        float newShadowRadius = getShadowRadius(taskIsFocused);
        if (this.mShadowRadius != newShadowRadius) {
            this.mShadowRadius = newShadowRadius;
            pendingTransaction.setShadowRadius(getSurfaceControl(), this.mShadowRadius);
        }
    }

    void onWindowFocusChanged(boolean hasFocus) {
        updateShadowsRadius(hasFocus, getSyncTransaction());
    }

    void onPictureInPictureParamsChanged() {
        if (isOrganized()) {
            this.mAtmService.mTaskOrganizerController.dispatchTaskInfoChanged(this, true);
        }
    }

    void setMainWindowSizeChangeTransaction(SurfaceControl.Transaction t) {
        setMainWindowSizeChangeTransaction(t, this);
        forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).requestRedrawForSync();
            }
        }, true);
    }

    private void setMainWindowSizeChangeTransaction(SurfaceControl.Transaction t, Task origin) {
        ActivityRecord topActivity = getTopNonFinishingActivity();
        Task leaf = topActivity != null ? topActivity.getTask() : null;
        if (leaf == null) {
            return;
        }
        if (leaf != this) {
            leaf.setMainWindowSizeChangeTransaction(t, origin);
        } else {
            this.mMainWindowSizeChangeTransaction = t;
            this.mMainWindowSizeChangeTask = t != null ? origin : null;
        }
    }

    SurfaceControl.Transaction getMainWindowSizeChangeTransaction() {
        return this.mMainWindowSizeChangeTransaction;
    }

    Task getMainWindowSizeChangeTask() {
        return this.mMainWindowSizeChangeTask;
    }

    void setActivityWindowingMode(int windowingMode) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$eT9SjQHKmQJBvlyYh6oQCJNBjSE
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((ActivityRecord) obj).setWindowingMode(((Integer) obj2).intValue());
            }
        }, PooledLambda.__(ActivityRecord.class), Integer.valueOf(windowingMode));
        forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
    }

    boolean setForceHidden(int flags, boolean set) {
        int newFlags;
        int newFlags2 = this.mForceHiddenFlags;
        if (set) {
            newFlags = newFlags2 | flags;
        } else {
            newFlags = newFlags2 & (~flags);
        }
        if (this.mForceHiddenFlags == newFlags) {
            return false;
        }
        boolean wasHidden = isForceHidden();
        this.mForceHiddenFlags = newFlags;
        if (wasHidden != isForceHidden() && isTopActivityFocusable()) {
            getDisplayArea().resetPreferredTopFocusableRootTaskIfNeeded(this);
            return true;
        }
        return true;
    }

    protected boolean isForceHidden() {
        return this.mForceHiddenFlags != 0;
    }

    @Override // com.android.server.wm.WindowContainer
    long getProtoFieldId() {
        return 1146756268037L;
    }
}
