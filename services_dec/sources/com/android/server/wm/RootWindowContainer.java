package com.android.server.wm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManagerInternal;
import android.net.Uri;
import android.os.Binder;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.service.voice.IVoiceInteractionSession;
import android.util.ArraySet;
import android.util.DisplayMetrics;
import android.util.IntArray;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.view.Display;
import android.view.DisplayInfo;
import android.view.IApplicationToken;
import android.view.SurfaceControl;
import android.window.WindowContainerToken;
import com.android.internal.BrightnessSynchronizer;
import com.android.internal.app.ResolverActivity;
import com.android.internal.util.function.QuadConsumer;
import com.android.internal.util.function.QuadFunction;
import com.android.internal.util.function.QuintPredicate;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledConsumer;
import com.android.internal.util.function.pooled.PooledFunction;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.internal.util.function.pooled.PooledPredicate;
import com.android.server.LocalServices;
import com.android.server.UiModeManagerService;
import com.android.server.am.AppTimeTracker;
import com.android.server.am.UserState;
import com.android.server.policy.PhoneWindowManager;
import com.android.server.protolog.ProtoLog$Cache;
import com.android.server.protolog.ProtoLogImpl;
import com.android.server.wm.ActivityTaskManagerService.SleepTokenAcquirerImpl;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BiPredicate;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
class RootWindowContainer extends WindowContainer<DisplayContent> implements DisplayManager.DisplayListener {
    static final int MATCH_TASK_IN_STACKS_ONLY = 0;
    static final int MATCH_TASK_IN_STACKS_OR_RECENT_TASKS = 1;
    static final int MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE = 2;
    private static final long PAUSE_ERROR_TIMEOUT_MILLIS = 2000;
    private static final int SET_SCREEN_BRIGHTNESS_OVERRIDE = 1;
    private static final int SET_USER_ACTIVITY_TIMEOUT = 2;
    private static final String TAG = "WindowManager";
    private static final String TAG_RECENTS = "WindowManager";
    private static final String TAG_RELEASE = "WindowManager";
    static final String TAG_STATES = "WindowManager";
    static final String TAG_TASKS = "WindowManager";
    private static final Consumer<WindowState> sRemoveReplacedWindowsConsumer = new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU
        @Override // java.util.function.Consumer
        public final void accept(Object obj) {
            RootWindowContainer.lambda$static$1((WindowState) obj);
        }
    };
    private final Consumer<WindowState> mCloseSystemDialogsConsumer;
    private String mCloseSystemDialogsReason;
    private HashMap<Integer, Float> mCurrentBrightnessOverrideMaps;
    int mCurrentUser;
    private DisplayContent mDefaultDisplay;
    int mDefaultMinSizeOfResizeableTaskDp;
    private String mDestroyAllActivitiesReason;
    private final Runnable mDestroyAllActivitiesRunnable;
    private final SparseArray<IntArray> mDisplayAccessUIDs;
    DisplayManager mDisplayManager;
    private DisplayManagerInternal mDisplayManagerInternal;
    final ActivityTaskManagerInternal.SleepTokenAcquirer mDisplayOffTokenAcquirer;
    private final SurfaceControl.Transaction mDisplayTransaction;
    FinishDisabledPackageActivitiesHelper mFinishDisabledPackageActivitiesHelper;
    private final Handler mHandler;
    private Session mHoldScreen;
    WindowState mHoldScreenWindow;
    private HashMap<Integer, Float> mLastBrightnessOverrideMaps;
    private Object mLastWindowFreezeSource;
    private boolean mObscureApplicationContentOnSecondaryDisplays;
    WindowState mObscuringWindow;
    boolean mOrientationChangeComplete;
    private HashMap<ActivityRecord, Long> mPauseErrorActivityDurings;
    private boolean mPowerHintSent;
    private float mScreenBrightnessOverride;
    ActivityTaskManagerService mService;
    final SparseArray<SleepToken> mSleepTokens;
    ActivityStackSupervisor mStackSupervisor;
    private boolean mSustainedPerformanceModeCurrent;
    private boolean mSustainedPerformanceModeEnabled;
    private boolean mTaskLayersChanged;
    private boolean mTmpBoolean;
    private final FindTaskResult mTmpFindTaskResult;
    private RemoteException mTmpRemoteException;
    private int mTmpTaskLayerRank;
    final HashMap<Integer, ActivityRecord> mTopFocusedAppByProcess;
    private int mTopFocusedDisplayId;
    private boolean mUpdateRotation;
    private long mUserActivityTimeout;
    SparseIntArray mUserStackInFront;
    boolean mWallpaperActionPending;
    WindowManagerService mWindowManager;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AnyTaskForIdMatchTaskMode {
    }

    /* JADX INFO: renamed from: com.android.server.wm.RootWindowContainer$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (RootWindowContainer.this.mService.mGlobalLock) {
                try {
                    try {
                        WindowManagerService.boostPriorityForLockedSection();
                        RootWindowContainer.this.mStackSupervisor.beginDeferResume();
                        Consumer<ActivityRecord> consumerObtainConsumer = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$1$HOnR_rhPvM6ZPX8yI-4GFhkGqUs
                            @Override // java.util.function.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                ((RootWindowContainer) obj).destroyActivity((ActivityRecord) obj2);
                            }
                        }, RootWindowContainer.this, PooledLambda.__(ActivityRecord.class));
                        RootWindowContainer.this.forAllActivities(consumerObtainConsumer);
                        consumerObtainConsumer.recycle();
                        RootWindowContainer.this.mStackSupervisor.endDeferResume();
                        RootWindowContainer.this.resumeFocusedStacksTopActivities();
                    } catch (Throwable th) {
                        RootWindowContainer.this.mStackSupervisor.endDeferResume();
                        RootWindowContainer.this.resumeFocusedStacksTopActivities();
                        throw th;
                    }
                } catch (Throwable th2) {
                    WindowManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            WindowManagerService.resetPriorityAfterLockedSection();
        }
    }

    static class FindTaskResult implements Function<Task, Boolean> {
        private ComponentName cls;
        private Uri documentData;
        private ActivityInfo info;
        private Intent intent;
        private boolean isDocument;
        boolean mIdealMatch;
        ActivityRecord mRecord;
        private ActivityRecord mTarget;
        private int userId;

        FindTaskResult() {
        }

        void process(ActivityRecord target, ActivityStack parent) {
            this.mTarget = target;
            this.intent = target.intent;
            this.info = target.info;
            this.cls = this.intent.getComponent();
            if (this.info.targetActivity != null) {
                this.cls = new ComponentName(this.info.packageName, this.info.targetActivity);
            }
            this.userId = UserHandle.getUserId(this.info.applicationInfo.uid);
            boolean zIsDocument = (this.intent != null) & this.intent.isDocument();
            this.isDocument = zIsDocument;
            this.documentData = zIsDocument ? this.intent.getData() : null;
            parent.forAllLeafTasks(this);
        }

        void clear() {
            this.mRecord = null;
            this.mIdealMatch = false;
        }

        void setTo(FindTaskResult result) {
            this.mRecord = result.mRecord;
            this.mIdealMatch = result.mIdealMatch;
        }

        @Override // java.util.function.Function
        public Boolean apply(Task task) {
            ActivityRecord r;
            boolean taskIsDocument;
            Uri taskDocumentData;
            if (task.voiceSession != null || task.mUserId != this.userId || (r = task.getTopNonFinishingActivity(false)) == null || r.finishing || r.mUserId != this.userId || r.launchMode == 3 || !r.hasCompatibleActivityType(this.mTarget)) {
                return false;
            }
            Intent taskIntent = task.intent;
            Intent affinityIntent = task.affinityIntent;
            if (taskIntent != null && taskIntent.isDocument()) {
                taskIsDocument = true;
                taskDocumentData = taskIntent.getData();
            } else if (affinityIntent != null && affinityIntent.isDocument()) {
                taskIsDocument = true;
                taskDocumentData = affinityIntent.getData();
            } else {
                taskIsDocument = false;
                taskDocumentData = null;
            }
            if (task.realActivity != null && task.realActivity.compareTo(this.cls) == 0 && Objects.equals(this.documentData, taskDocumentData)) {
                this.mRecord = r;
                this.mIdealMatch = true;
                return true;
            }
            if (affinityIntent != null && affinityIntent.getComponent() != null && affinityIntent.getComponent().compareTo(this.cls) == 0 && Objects.equals(this.documentData, taskDocumentData)) {
                this.mRecord = r;
                this.mIdealMatch = true;
                return true;
            }
            if (!this.isDocument && !taskIsDocument && this.mRecord == null && task.rootAffinity != null && task.rootAffinity.equals(this.mTarget.taskAffinity)) {
                this.mRecord = r;
                this.mIdealMatch = false;
            }
            return false;
        }
    }

    public /* synthetic */ void lambda$new$0$RootWindowContainer(WindowState w) {
        if (w.mHasSurface) {
            try {
                w.mClient.closeSystemDialogs(this.mCloseSystemDialogsReason);
            } catch (RemoteException e) {
            }
        }
    }

    static /* synthetic */ void lambda$static$1(WindowState w) {
        ActivityRecord activity = w.mActivityRecord;
        if (activity != null) {
            activity.removeReplacedWindowIfNeeded(w);
        }
    }

    RootWindowContainer(WindowManagerService service) {
        super(service);
        this.mLastWindowFreezeSource = null;
        this.mHoldScreen = null;
        this.mScreenBrightnessOverride = Float.NaN;
        this.mCurrentBrightnessOverrideMaps = new HashMap<>();
        this.mLastBrightnessOverrideMaps = new HashMap<>();
        this.mUserActivityTimeout = -1L;
        this.mUpdateRotation = false;
        this.mHoldScreenWindow = null;
        this.mObscuringWindow = null;
        this.mObscureApplicationContentOnSecondaryDisplays = false;
        this.mSustainedPerformanceModeEnabled = false;
        this.mSustainedPerformanceModeCurrent = false;
        this.mOrientationChangeComplete = true;
        this.mWallpaperActionPending = false;
        this.mTopFocusedDisplayId = -1;
        this.mTopFocusedAppByProcess = new HashMap<>();
        this.mDisplayAccessUIDs = new SparseArray<>();
        this.mUserStackInFront = new SparseIntArray(2);
        this.mSleepTokens = new SparseArray<>();
        this.mDefaultMinSizeOfResizeableTaskDp = -1;
        this.mTaskLayersChanged = true;
        this.mDestroyAllActivitiesRunnable = new AnonymousClass1();
        this.mTmpFindTaskResult = new FindTaskResult();
        this.mCloseSystemDialogsConsumer = new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$new$0$RootWindowContainer((WindowState) obj);
            }
        };
        this.mFinishDisabledPackageActivitiesHelper = new FinishDisabledPackageActivitiesHelper();
        this.mPauseErrorActivityDurings = new HashMap<>();
        this.mDisplayTransaction = service.mTransactionFactory.get();
        this.mHandler = new MyHandler(service.mH.getLooper());
        ActivityTaskManagerService activityTaskManagerService = service.mAtmService;
        this.mService = activityTaskManagerService;
        ActivityStackSupervisor activityStackSupervisor = activityTaskManagerService.mStackSupervisor;
        this.mStackSupervisor = activityStackSupervisor;
        activityStackSupervisor.mRootWindowContainer = this;
        ActivityTaskManagerService activityTaskManagerService2 = this.mService;
        Objects.requireNonNull(activityTaskManagerService2);
        this.mDisplayOffTokenAcquirer = activityTaskManagerService2.new SleepTokenAcquirerImpl("Display-off");
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
    boolean updateFocusedWindowLocked(int mode, boolean updateInputWindows) {
        this.mTopFocusedAppByProcess.clear();
        boolean changed = false;
        int topFocusedDisplayId = -1;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent dc = (DisplayContent) this.mChildren.get(i);
            changed |= dc.updateFocusedWindowLocked(mode, updateInputWindows, topFocusedDisplayId);
            WindowState newFocus = dc.mCurrentFocus;
            if (newFocus != null) {
                int pidOfNewFocus = newFocus.mSession.mPid;
                if (this.mTopFocusedAppByProcess.get(Integer.valueOf(pidOfNewFocus)) == null) {
                    this.mTopFocusedAppByProcess.put(Integer.valueOf(pidOfNewFocus), newFocus.mActivityRecord);
                }
                if (topFocusedDisplayId == -1) {
                    topFocusedDisplayId = dc.getDisplayId();
                }
            } else if (topFocusedDisplayId == -1 && dc.mFocusedApp != null) {
                topFocusedDisplayId = dc.getDisplayId();
            }
        }
        if (topFocusedDisplayId == -1) {
            topFocusedDisplayId = 0;
        }
        if (this.mTopFocusedDisplayId != topFocusedDisplayId && this.mWmService.isValidFocusedDisplayId(topFocusedDisplayId)) {
            this.mTopFocusedDisplayId = topFocusedDisplayId;
            this.mWmService.mInputManager.setFocusedDisplay(topFocusedDisplayId);
            this.mWmService.mPolicy.setTopFocusedDisplay(topFocusedDisplayId);
            if (ProtoLog$Cache.WM_DEBUG_FOCUS_LIGHT_enabled) {
                long protoLogParam0 = topFocusedDisplayId;
                ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_FOCUS_LIGHT, -687185281, 1, null, Long.valueOf(protoLogParam0));
            }
        }
        return changed;
    }

    DisplayContent getTopFocusedDisplayContent() {
        DisplayContent dc = getDisplayContent(this.mTopFocusedDisplayId);
        return dc != null ? dc : getDisplayContent(0);
    }

    @Override // com.android.server.wm.WindowContainer
    boolean isOnTop() {
        return true;
    }

    @Override // com.android.server.wm.WindowContainer
    void onChildPositionChanged(WindowContainer child) {
        this.mWmService.updateFocusedWindowLocked(0, !this.mWmService.mPerDisplayFocusEnabled);
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
    void onSettingsRetrieved() {
        int numDisplays = this.mChildren.size();
        for (int displayNdx = 0; displayNdx < numDisplays; displayNdx++) {
            DisplayContent displayContent = (DisplayContent) this.mChildren.get(displayNdx);
            boolean changed = this.mWmService.mDisplayWindowSettings.updateSettingsForDisplay(displayContent);
            if (changed) {
                displayContent.reconfigureDisplayLocked();
                if (displayContent.isDefaultDisplay) {
                    Configuration newConfig = this.mWmService.computeNewConfiguration(displayContent.getDisplayId());
                    this.mWmService.mAtmService.updateConfigurationLocked(newConfig, null, false);
                }
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
    boolean isLayoutNeeded() {
        int numDisplays = this.mChildren.size();
        for (int displayNdx = 0; displayNdx < numDisplays; displayNdx++) {
            DisplayContent displayContent = (DisplayContent) this.mChildren.get(displayNdx);
            if (displayContent.isLayoutNeeded()) {
                return true;
            }
        }
        return false;
    }

    void getWindowsByName(ArrayList<WindowState> output, String name) {
        int objectId = 0;
        try {
            objectId = Integer.parseInt(name, 16);
            name = null;
        } catch (RuntimeException e) {
        }
        getWindowsByName(output, name, objectId);
    }

    private void getWindowsByName(final ArrayList<WindowState> output, final String name, final int objectId) {
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RootWindowContainer.lambda$getWindowsByName$2(name, output, objectId, (WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ void lambda$getWindowsByName$2(String name, ArrayList output, int objectId, WindowState w) {
        if (name != null) {
            if (w.mAttrs.getTitle().toString().contains(name)) {
                output.add(w);
            }
        } else if (System.identityHashCode(w) == objectId) {
            output.add(w);
        }
    }

    boolean isAnyNonToastWindowVisibleForUid(int callingUid) {
        PooledPredicate p = PooledLambda.obtainPredicate(new BiPredicate() { // from class: com.android.server.wm.-$$Lambda$PyL9QAXbv8yta3wX2VTGq8fFFo4
            @Override // java.util.function.BiPredicate
            public final boolean test(Object obj, Object obj2) {
                return ((WindowState) obj).isNonToastWindowVisibleForUid(((Integer) obj2).intValue());
            }
        }, PooledLambda.__(WindowState.class), Integer.valueOf(callingUid));
        WindowState w = getWindow(p);
        p.recycle();
        return w != null;
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
    ActivityRecord getActivityRecord(IBinder binder) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent dc = (DisplayContent) this.mChildren.get(i);
            ActivityRecord activity = dc.getActivityRecord(binder);
            if (activity != null) {
                return activity;
            }
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
    WindowToken getWindowToken(IBinder binder) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent dc = (DisplayContent) this.mChildren.get(i);
            WindowToken wtoken = dc.getWindowToken(binder);
            if (wtoken != null) {
                return wtoken;
            }
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
    DisplayContent getWindowTokenDisplay(WindowToken token) {
        if (token == null) {
            return null;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent dc = (DisplayContent) this.mChildren.get(i);
            WindowToken current = dc.getWindowToken(token.token);
            if (current == token) {
                return dc;
            }
        }
        return null;
    }

    void setDisplayOverrideConfigurationIfNeeded(Configuration newConfiguration, DisplayContent displayContent) {
        Configuration currentConfig = displayContent.getRequestedOverrideConfiguration();
        boolean configChanged = currentConfig.diff(newConfiguration) != 0;
        if (!configChanged) {
            return;
        }
        displayContent.onRequestedOverrideConfigurationChanged(newConfiguration);
        if (displayContent.getDisplayId() == 0) {
            setGlobalConfigurationIfNeeded(newConfiguration);
        }
    }

    private void setGlobalConfigurationIfNeeded(Configuration newConfiguration) {
        boolean configChanged = getConfiguration().diff(newConfiguration) != 0;
        if (!configChanged) {
            return;
        }
        onConfigurationChanged(newConfiguration);
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void onConfigurationChanged(Configuration newParentConfig) {
        prepareFreezingTaskBounds();
        super.onConfigurationChanged(newParentConfig);
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
    private void prepareFreezingTaskBounds() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ((DisplayContent) this.mChildren.get(i)).prepareFreezingTaskBounds();
        }
    }

    void setSecureSurfaceState(final int userId) {
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$PVkFhpirHJygWitQFpVhFHaEX4o
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RootWindowContainer.lambda$setSecureSurfaceState$3(userId, (WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ void lambda$setSecureSurfaceState$3(int userId, WindowState w) {
        if (w.mHasSurface && userId == w.mShowUserId) {
            w.mWinAnimator.setSecureLocked(w.isSecureLocked());
        }
    }

    void updateHiddenWhileSuspendedState(final ArraySet<String> packages, final boolean suspended) {
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RootWindowContainer.lambda$updateHiddenWhileSuspendedState$4(packages, suspended, (WindowState) obj);
            }
        }, false);
    }

    static /* synthetic */ void lambda$updateHiddenWhileSuspendedState$4(ArraySet packages, boolean suspended, WindowState w) {
        if (packages.contains(w.getOwningPackage())) {
            w.setHiddenWhileSuspended(suspended);
        }
    }

    void updateAppOpsState() {
        forAllWindows((Consumer<WindowState>) new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((WindowState) obj).updateAppOpsState();
            }
        }, false);
    }

    static /* synthetic */ boolean lambda$canShowStrictModeViolation$6(int pid, WindowState w) {
        return w.mSession.mPid == pid && w.isVisibleLw();
    }

    boolean canShowStrictModeViolation(final int pid) {
        WindowState win = getWindow(new Predicate() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return RootWindowContainer.lambda$canShowStrictModeViolation$6(pid, (WindowState) obj);
            }
        });
        return win != null;
    }

    void closeSystemDialogs(String reason) {
        this.mCloseSystemDialogsReason = reason;
        forAllWindows(this.mCloseSystemDialogsConsumer, false);
    }

    void removeReplacedWindows() {
        if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, -1515151503, 0, null, (Object[]) null);
        }
        this.mWmService.openSurfaceTransaction();
        try {
            forAllWindows(sRemoveReplacedWindowsConsumer, true);
        } finally {
            this.mWmService.closeSurfaceTransaction("removeReplacedWindows");
            if (ProtoLog$Cache.WM_SHOW_TRANSACTIONS_enabled) {
                ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_TRANSACTIONS, 1423592961, 0, null, (Object[]) null);
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
    boolean hasPendingLayoutChanges(WindowAnimator animator) {
        boolean hasChanges = false;
        int count = this.mChildren.size();
        for (int i = 0; i < count; i++) {
            int pendingChanges = ((DisplayContent) this.mChildren.get(i)).pendingLayoutChanges;
            if ((pendingChanges & 4) != 0) {
                animator.mBulkUpdateParams |= 8;
            }
            if (pendingChanges != 0) {
                hasChanges = true;
            }
        }
        return hasChanges;
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
    boolean reclaimSomeSurfaceMemory(WindowStateAnimator winAnimator, String operation, boolean secure) throws Throwable {
        boolean z;
        WindowSurfaceController surfaceController = winAnimator.mSurfaceController;
        boolean leakedSurface = false;
        boolean killedApps = false;
        EventLogTags.writeWmNoSurfaceMemory(winAnimator.mWin.toString(), winAnimator.mSession.mPid, operation);
        long callingIdentity = Binder.clearCallingIdentity();
        try {
            Slog.i("WindowManager", "Out of memory for surface!  Looking for leaks...");
            int numDisplays = this.mChildren.size();
            for (int displayNdx = 0; displayNdx < numDisplays; displayNdx++) {
                leakedSurface |= ((DisplayContent) this.mChildren.get(displayNdx)).destroyLeakedSurfaces();
            }
            boolean z2 = false;
            if (!leakedSurface) {
                Slog.w("WindowManager", "No leaked surfaces; killing applications!");
                final SparseIntArray pidCandidates = new SparseIntArray();
                boolean killedApps2 = false;
                int displayNdx2 = 0;
                while (displayNdx2 < numDisplays) {
                    try {
                        ((DisplayContent) this.mChildren.get(displayNdx2)).forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                this.f$0.lambda$reclaimSomeSurfaceMemory$7$RootWindowContainer(pidCandidates, (WindowState) obj);
                            }
                        }, z2);
                        if (pidCandidates.size() > 0) {
                            int[] pids = new int[pidCandidates.size()];
                            for (int i = 0; i < pids.length; i++) {
                                pids[i] = pidCandidates.keyAt(i);
                            }
                            try {
                                try {
                                    if (this.mWmService.mActivityManager.killPids(pids, "Free memory", secure)) {
                                        killedApps2 = true;
                                    }
                                } catch (RemoteException e) {
                                } catch (Throwable th) {
                                    th = th;
                                    Binder.restoreCallingIdentity(callingIdentity);
                                    throw th;
                                }
                            } catch (RemoteException e2) {
                            }
                        }
                        displayNdx2++;
                        z2 = false;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                killedApps = killedApps2;
            }
            if (leakedSurface || killedApps) {
                try {
                    Slog.w("WindowManager", "Looks like we have reclaimed some memory, clearing surface for retry.");
                    if (surfaceController != null) {
                        if (ProtoLog$Cache.WM_SHOW_SURFACE_ALLOC_enabled) {
                            String protoLogParam0 = String.valueOf(winAnimator.mWin);
                            z = false;
                            ProtoLogImpl.i(ProtoLogGroup.WM_SHOW_SURFACE_ALLOC, 399841913, 0, null, protoLogParam0);
                        } else {
                            z = false;
                        }
                        winAnimator.destroySurface();
                        if (winAnimator.mWin.mActivityRecord != null) {
                            winAnimator.mWin.mActivityRecord.removeStartingWindow();
                        }
                    } else {
                        z = false;
                    }
                    try {
                        winAnimator.mWin.mClient.dispatchGetNewSurface();
                    } catch (RemoteException e3) {
                    }
                } catch (Throwable th3) {
                    th = th3;
                    Binder.restoreCallingIdentity(callingIdentity);
                    throw th;
                }
            } else {
                z = false;
            }
            Binder.restoreCallingIdentity(callingIdentity);
            if (leakedSurface || killedApps) {
                return true;
            }
            return z;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public /* synthetic */ void lambda$reclaimSomeSurfaceMemory$7$RootWindowContainer(SparseIntArray pidCandidates, WindowState w) {
        if (this.mWmService.mForceRemoves.contains(w)) {
            return;
        }
        WindowStateAnimator wsa = w.mWinAnimator;
        if (wsa.mSurfaceController != null) {
            pidCandidates.append(wsa.mSession.mPid, wsa.mSession.mPid);
        }
    }

    void performSurfacePlacement() {
        Trace.traceBegin(32L, "performSurfacePlacement");
        try {
            performSurfacePlacementNoTrace();
        } finally {
            Trace.traceEnd(32L);
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
    void performSurfacePlacementNoTrace() throws Throwable {
        if (this.mWmService.mFocusMayChange) {
            this.mWmService.mFocusMayChange = false;
            this.mWmService.updateFocusedWindowLocked(3, false);
        }
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ((DisplayContent) this.mChildren.get(i)).setExitingTokensHasVisible(false);
        }
        this.mHoldScreen = null;
        float f = Float.NaN;
        this.mScreenBrightnessOverride = Float.NaN;
        this.mUserActivityTimeout = -1L;
        this.mObscureApplicationContentOnSecondaryDisplays = false;
        this.mSustainedPerformanceModeCurrent = false;
        int i2 = 1;
        this.mWmService.mTransactionSequence++;
        resetCurrentBrightnessOverride();
        DisplayContent defaultDisplayContentLocked = this.mWmService.getDefaultDisplayContentLocked();
        WindowSurfacePlacer windowSurfacePlacer = this.mWmService.mWindowPlacerLocked;
        Trace.traceBegin(32L, "applySurfaceChanges");
        this.mWmService.openSurfaceTransaction();
        try {
            applySurfaceChangesTransaction();
        } catch (RuntimeException e) {
            try {
                Slog.wtf("WindowManager", "Unhandled exception in Window Manager", e);
            } catch (Throwable th) {
                th = th;
                this.mWmService.closeSurfaceTransaction("performLayoutAndPlaceSurfaces");
                Trace.traceEnd(32L);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            this.mWmService.closeSurfaceTransaction("performLayoutAndPlaceSurfaces");
            Trace.traceEnd(32L);
            throw th;
        }
        this.mWmService.closeSurfaceTransaction("performLayoutAndPlaceSurfaces");
        Trace.traceEnd(32L);
        this.mWmService.mAnimator.executeAfterPrepareSurfacesRunnables();
        checkAppTransitionReady(windowSurfacePlacer);
        RecentsAnimationController recentsAnimationController = this.mWmService.getRecentsAnimationController();
        if (recentsAnimationController != null) {
            recentsAnimationController.checkAnimationReady(defaultDisplayContentLocked.mWallpaperController);
        }
        for (int i3 = 0; i3 < size; i3++) {
            DisplayContent displayContent = (DisplayContent) this.mChildren.get(i3);
            if (displayContent.mWallpaperMayChange) {
                displayContent.pendingLayoutChanges |= 4;
            }
        }
        if (this.mWmService.mFocusMayChange) {
            this.mWmService.mFocusMayChange = false;
            this.mWmService.updateFocusedWindowLocked(2, false);
        }
        if (isLayoutNeeded()) {
            defaultDisplayContentLocked.pendingLayoutChanges |= 1;
        }
        handleResizingWindows();
        if (this.mWmService.mDisplayFrozen && ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_ORIENTATION, -666510420, 3, null, Boolean.valueOf(this.mOrientationChangeComplete));
        }
        if (this.mOrientationChangeComplete) {
            if (this.mWmService.mWindowsFreezingScreen != 0) {
                this.mWmService.mWindowsFreezingScreen = 0;
                this.mWmService.mLastFinishedFreezeSource = this.mLastWindowFreezeSource;
                this.mWmService.mH.removeMessages(11);
            }
            this.mWmService.stopFreezingDisplayLocked();
        }
        int size2 = this.mWmService.mDestroySurface.size();
        if (size2 > 0) {
            do {
                size2--;
                WindowState windowState = this.mWmService.mDestroySurface.get(size2);
                windowState.mDestroying = false;
                DisplayContent displayContent2 = windowState.getDisplayContent();
                if (displayContent2.mInputMethodWindow == windowState) {
                    displayContent2.setInputMethodWindowLocked(null);
                }
                if (displayContent2.mWallpaperController.isWallpaperTarget(windowState)) {
                    displayContent2.pendingLayoutChanges |= 4;
                }
                windowState.destroySurfaceUnchecked();
                windowState.mWinAnimator.destroyPreservedSurfaceLocked();
            } while (size2 > 0);
            this.mWmService.mDestroySurface.clear();
        }
        for (int i4 = 0; i4 < size; i4++) {
            ((DisplayContent) this.mChildren.get(i4)).removeExistingTokensIfPossible();
        }
        for (int i5 = 0; i5 < size; i5++) {
            DisplayContent displayContent3 = (DisplayContent) this.mChildren.get(i5);
            if (displayContent3.pendingLayoutChanges != 0) {
                displayContent3.setLayoutNeeded();
            }
        }
        this.mWmService.setHoldScreenLocked(this.mHoldScreen);
        if (!this.mWmService.mDisplayFrozen) {
            for (Integer num : this.mCurrentBrightnessOverrideMaps.keySet()) {
                float brightnessOverrideOnDisplay = getBrightnessOverrideOnDisplay(num.intValue());
                float f2 = (brightnessOverrideOnDisplay < 0.0f || brightnessOverrideOnDisplay > 1.0f) ? f : brightnessOverrideOnDisplay;
                if (BrightnessSynchronizer.floatEquals(f2, this.mLastBrightnessOverrideMaps.getOrDefault(num, Float.valueOf(f)).floatValue())) {
                    this.mHandler.obtainMessage(2, Long.valueOf(this.mUserActivityTimeout)).sendToTarget();
                    defaultDisplayContentLocked = defaultDisplayContentLocked;
                    f = Float.NaN;
                } else {
                    int iFloatToIntBits = Float.floatToIntBits(f2);
                    this.mLastBrightnessOverrideMaps.put(num, Float.valueOf(f2));
                    this.mHandler.obtainMessage(i2, iFloatToIntBits, num.intValue()).sendToTarget();
                    this.mHandler.obtainMessage(2, Long.valueOf(this.mUserActivityTimeout)).sendToTarget();
                    defaultDisplayContentLocked = defaultDisplayContentLocked;
                    windowSurfacePlacer = windowSurfacePlacer;
                    f = Float.NaN;
                    i2 = 1;
                }
            }
        }
        boolean z = this.mSustainedPerformanceModeCurrent;
        if (z != this.mSustainedPerformanceModeEnabled) {
            this.mSustainedPerformanceModeEnabled = z;
            this.mWmService.mPowerManagerInternal.powerHint(6, this.mSustainedPerformanceModeEnabled ? 1 : 0);
        }
        if (this.mUpdateRotation) {
            if (ProtoLog$Cache.WM_DEBUG_ORIENTATION_enabled) {
                ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_ORIENTATION, -1103115659, 0, null, (Object[]) null);
            }
            this.mUpdateRotation = updateRotationUnchecked();
        }
        if (!this.mWmService.mWaitingForDrawnCallbacks.isEmpty() || (this.mOrientationChangeComplete && !isLayoutNeeded() && !this.mUpdateRotation)) {
            this.mWmService.checkDrawnWindowsLocked();
        }
        int size3 = this.mWmService.mPendingRemove.size();
        if (size3 > 0) {
            if (this.mWmService.mPendingRemoveTmp.length < size3) {
                this.mWmService.mPendingRemoveTmp = new WindowState[size3 + 10];
            }
            this.mWmService.mPendingRemove.toArray(this.mWmService.mPendingRemoveTmp);
            this.mWmService.mPendingRemove.clear();
            ArrayList arrayList = new ArrayList();
            for (int i6 = 0; i6 < size3; i6++) {
                WindowState windowState2 = this.mWmService.mPendingRemoveTmp[i6];
                windowState2.removeImmediately();
                DisplayContent displayContent4 = windowState2.getDisplayContent();
                if (displayContent4 != null && !arrayList.contains(displayContent4)) {
                    arrayList.add(displayContent4);
                }
            }
            for (int size4 = arrayList.size() - 1; size4 >= 0; size4--) {
                ((DisplayContent) arrayList.get(size4)).assignWindowLayers(true);
            }
        }
        forAllDisplays(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$-XbbIpkF4p2mF3v0qeXeat-_w3E
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RootWindowContainer.lambda$performSurfacePlacementNoTrace$8((DisplayContent) obj);
            }
        });
        this.mWmService.enableScreenIfNeededLocked();
        this.mWmService.scheduleAnimationLocked();
        this.mWmService.mAtmService.mTaskOrganizerController.dispatchPendingTaskInfoChanges();
    }

    static /* synthetic */ void lambda$performSurfacePlacementNoTrace$8(DisplayContent dc) {
        dc.getInputMonitor().updateInputWindowsLw(true);
        dc.updateSystemGestureExclusion();
        dc.updateTouchExcludeRegion();
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
    private void checkAppTransitionReady(WindowSurfacePlacer surfacePlacer) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent curDisplay = (DisplayContent) this.mChildren.get(i);
            if (curDisplay.mAppTransition.isReady()) {
                curDisplay.mAppTransitionController.handleAppTransitionReady();
            }
            if (curDisplay.mAppTransition.isRunning() && !curDisplay.isAppTransitioning()) {
                curDisplay.handleAnimatingStoppedAndTransition();
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
    private void applySurfaceChangesTransaction() {
        this.mHoldScreenWindow = null;
        this.mObscuringWindow = null;
        DisplayContent defaultDc = this.mWmService.getDefaultDisplayContentLocked();
        DisplayInfo defaultInfo = defaultDc.getDisplayInfo();
        int defaultDw = defaultInfo.logicalWidth;
        int defaultDh = defaultInfo.logicalHeight;
        if (this.mWmService.mWatermark != null) {
            this.mWmService.mWatermark.positionSurface(defaultDw, defaultDh, this.mDisplayTransaction);
        }
        if (this.mWmService.mStrictModeFlash != null) {
            this.mWmService.mStrictModeFlash.positionSurface(defaultDw, defaultDh, this.mDisplayTransaction);
        }
        if (this.mWmService.mEmulatorDisplayOverlay != null) {
            this.mWmService.mEmulatorDisplayOverlay.positionSurface(defaultDw, defaultDh, this.mWmService.getDefaultDisplayRotation(), this.mDisplayTransaction);
        }
        int count = this.mChildren.size();
        for (int j = 0; j < count; j++) {
            DisplayContent dc = (DisplayContent) this.mChildren.get(j);
            dc.applySurfaceChangesTransaction();
        }
        this.mWmService.mDisplayManagerInternal.performTraversal(this.mDisplayTransaction);
        SurfaceControl.mergeToGlobalTransaction(this.mDisplayTransaction);
    }

    private void handleResizingWindows() {
        for (int i = this.mWmService.mResizingWindows.size() - 1; i >= 0; i--) {
            WindowState win = this.mWmService.mResizingWindows.get(i);
            if (!win.mAppFreezing && !win.getDisplayContent().mWaitingForConfig) {
                win.reportResized();
                this.mWmService.mResizingWindows.remove(i);
            }
        }
    }

    /* JADX WARN: Failed to apply debug info
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v2 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.applyDebugInfo(TypeUpdate.java:77)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:137)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:133)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:75)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 8 more
     */
    /* JADX WARN: Failed to calculate best type for var: r7v10 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r7v10 ??, new type: boolean
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r11v2 ??, new type: boolean
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.InsnArg.getType()" because "arg" is null
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    boolean handleNotObscuredLocked(com.android.server.wm.WindowState r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instruction units count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.RootWindowContainer.handleNotObscuredLocked(com.android.server.wm.WindowState, boolean, boolean):boolean");
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
    boolean updateRotationUnchecked() {
        boolean changed = false;
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            if (((DisplayContent) this.mChildren.get(i)).getDisplayRotation().updateRotationAndSendNewConfigIfChanged()) {
                changed = true;
            }
        }
        return changed;
    }

    boolean copyAnimToLayoutParams() {
        boolean doRequest = false;
        int bulkUpdateParams = this.mWmService.mAnimator.mBulkUpdateParams;
        if ((bulkUpdateParams & 1) != 0) {
            this.mUpdateRotation = true;
            doRequest = true;
        }
        if ((bulkUpdateParams & 4) == 0) {
            this.mOrientationChangeComplete = false;
        } else {
            this.mOrientationChangeComplete = true;
            this.mLastWindowFreezeSource = this.mWmService.mAnimator.mLastWindowFreezeSource;
            if (this.mWmService.mWindowsFreezingScreen != 0) {
                doRequest = true;
            }
        }
        if ((bulkUpdateParams & 8) != 0) {
            this.mWallpaperActionPending = true;
        }
        return doRequest;
    }

    private final class MyHandler extends Handler {
        public MyHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                RootWindowContainer.this.mWmService.mPowerManagerInternal.setScreenBrightnessOverrideFromWindowManager(Float.intBitsToFloat(msg.arg1), msg.arg2);
            } else if (i == 2) {
                RootWindowContainer.this.mWmService.mPowerManagerInternal.setUserActivityTimeoutOverrideFromWindowManager(((Long) msg.obj).longValue());
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
    void dumpDisplayContents(PrintWriter pw) {
        pw.println("WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)");
        if (this.mWmService.mDisplayReady) {
            int count = this.mChildren.size();
            for (int i = 0; i < count; i++) {
                DisplayContent displayContent = (DisplayContent) this.mChildren.get(i);
                displayContent.dump(pw, "  ", true);
            }
            return;
        }
        pw.println("  NO DISPLAY");
    }

    void dumpTopFocusedDisplayId(PrintWriter pw) {
        pw.print("  mTopFocusedDisplayId=");
        pw.println(this.mTopFocusedDisplayId);
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
    void dumpLayoutNeededDisplayIds(PrintWriter pw) {
        if (!isLayoutNeeded()) {
            return;
        }
        pw.print("  mLayoutNeeded on displays=");
        int count = this.mChildren.size();
        for (int displayNdx = 0; displayNdx < count; displayNdx++) {
            DisplayContent displayContent = (DisplayContent) this.mChildren.get(displayNdx);
            if (displayContent.isLayoutNeeded()) {
                pw.print(displayContent.getDisplayId());
            }
        }
        pw.println();
    }

    void dumpWindowsNoHeader(final PrintWriter pw, final boolean dumpAll, final ArrayList<WindowState> windows) {
        final int[] index = new int[1];
        forAllWindows(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$y9wG_endhUBCwGznyjN4RSIYTyg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RootWindowContainer.lambda$dumpWindowsNoHeader$9(windows, pw, index, dumpAll, (WindowState) obj);
            }
        }, true);
    }

    static /* synthetic */ void lambda$dumpWindowsNoHeader$9(ArrayList windows, PrintWriter pw, int[] index, boolean dumpAll, WindowState w) {
        if (windows == null || windows.contains(w)) {
            pw.println("  Window #" + index[0] + " " + w + ":");
            w.dump(pw, "    ", dumpAll || windows != null);
            index[0] = index[0] + 1;
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
    void dumpTokens(PrintWriter pw, boolean dumpAll) {
        pw.println("  All tokens:");
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            ((DisplayContent) this.mChildren.get(i)).dumpTokens(pw, dumpAll);
        }
    }

    @Override // com.android.server.wm.WindowContainer, com.android.server.wm.ConfigurationContainer
    public void dumpDebug(ProtoOutputStream proto, long fieldId, int logLevel) {
        if (logLevel == 2 && !isVisible()) {
            return;
        }
        long token = proto.start(fieldId);
        super.dumpDebug(proto, 1146756268033L, logLevel);
        this.mStackSupervisor.getKeyguardController().dumpDebug(proto, 1146756268037L);
        proto.write(1133871366150L, this.mStackSupervisor.mRecentTasks.isRecentsComponentHomeActivity(this.mCurrentUser));
        this.mService.getActivityStartController().dumpDebug(proto, 2246267895815L);
        proto.end(token);
    }

    @Override // com.android.server.wm.ConfigurationContainer
    String getName() {
        return "ROOT";
    }

    @Override // com.android.server.wm.WindowContainer
    void scheduleAnimation() {
        this.mWmService.scheduleAnimationLocked();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.server.wm.WindowContainer
    public void removeChild(DisplayContent dc) {
        super.removeChild(dc);
        if (this.mTopFocusedDisplayId == dc.getDisplayId()) {
            this.mWmService.updateFocusedWindowLocked(0, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
    public void forAllDisplays(Consumer<DisplayContent> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            callback.accept((DisplayContent) this.mChildren.get(i));
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
    void forAllDisplayPolicies(Consumer<DisplayPolicy> callback) {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            callback.accept(((DisplayContent) this.mChildren.get(i)).getDisplayPolicy());
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
    WindowState getCurrentInputMethodWindow() {
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent displayContent = (DisplayContent) this.mChildren.get(i);
            if (displayContent.mInputMethodWindow != null) {
                return displayContent.mInputMethodWindow;
            }
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
    void getDisplayContextsWithNonToastVisibleWindows(int pid, List<Context> outContexts) {
        if (outContexts == null) {
            return;
        }
        for (int i = this.mChildren.size() - 1; i >= 0; i--) {
            DisplayContent dc = (DisplayContent) this.mChildren.get(i);
            if (dc.isAnyNonToastWindowVisibleForPid(pid)) {
                outContexts.add(dc.getDisplayUiContext());
            }
        }
    }

    Context getDisplayUiContext(int displayId) {
        if (getDisplayContent(displayId) != null) {
            return getDisplayContent(displayId).getDisplayUiContext();
        }
        return null;
    }

    void setWindowManager(WindowManagerService wm) {
        this.mWindowManager = wm;
        DisplayManager displayManager = (DisplayManager) this.mService.mContext.getSystemService(DisplayManager.class);
        this.mDisplayManager = displayManager;
        displayManager.registerDisplayListener(this, this.mService.mUiHandler);
        this.mDisplayManagerInternal = (DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class);
        Display[] displays = this.mDisplayManager.getDisplays();
        for (Display display : displays) {
            DisplayContent displayContent = new DisplayContent(display, this);
            addChild(displayContent, Integer.MIN_VALUE);
            if (displayContent.mDisplayId == 0) {
                this.mDefaultDisplay = displayContent;
            }
        }
        calculateDefaultMinimalSizeOfResizeableTasks();
        TaskDisplayArea defaultTaskDisplayArea = getDefaultTaskDisplayArea();
        defaultTaskDisplayArea.getOrCreateRootHomeTask(true);
        positionChildAt(Integer.MAX_VALUE, defaultTaskDisplayArea.mDisplayContent, false);
    }

    DisplayContent getDefaultDisplay() {
        return this.mDefaultDisplay;
    }

    TaskDisplayArea getDefaultTaskDisplayArea() {
        return this.mDefaultDisplay.getDefaultTaskDisplayArea();
    }

    DisplayContent getDisplayContent(String uniqueId) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            DisplayContent display = (DisplayContent) getChildAt(i);
            boolean isValid = display.mDisplay.isValid();
            if (isValid && display.mDisplay.getUniqueId().equals(uniqueId)) {
                return display;
            }
        }
        return null;
    }

    DisplayContent getDisplayContent(int displayId) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            DisplayContent displayContent = (DisplayContent) getChildAt(i);
            if (displayContent.mDisplayId == displayId) {
                return displayContent;
            }
        }
        return null;
    }

    DisplayContent getDisplayContentOrCreate(int displayId) {
        Display display;
        DisplayContent displayContent = getDisplayContent(displayId);
        if (displayContent != null) {
            return displayContent;
        }
        DisplayManager displayManager = this.mDisplayManager;
        if (displayManager == null || (display = displayManager.getDisplay(displayId)) == null) {
            return null;
        }
        DisplayContent displayContent2 = new DisplayContent(display, this);
        addChild(displayContent2, Integer.MIN_VALUE);
        return displayContent2;
    }

    ActivityRecord getDefaultDisplayHomeActivityForUser(int userId) {
        return getDefaultTaskDisplayArea().getHomeActivityForUser(userId);
    }

    boolean startHomeOnAllDisplays(int userId, String reason) {
        boolean homeStarted = false;
        for (int i = getChildCount() - 1; i >= 0; i--) {
            int displayId = ((DisplayContent) getChildAt(i)).mDisplayId;
            homeStarted |= startHomeOnDisplay(userId, reason, displayId);
        }
        return homeStarted;
    }

    void startHomeOnEmptyDisplays(String reason) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            DisplayContent display = (DisplayContent) getChildAt(i);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                if (taskDisplayArea.topRunningActivity() == null) {
                    startHomeOnTaskDisplayArea(this.mCurrentUser, reason, taskDisplayArea, false, false);
                }
            }
        }
    }

    boolean startHomeOnDisplay(int userId, String reason, int displayId) {
        return startHomeOnDisplay(userId, reason, displayId, false, false);
    }

    boolean startHomeOnDisplay(int userId, String reason, int displayId, boolean allowInstrumenting, boolean fromHomeKey) {
        if (displayId == -1) {
            ActivityStack stack = getTopDisplayFocusedStack();
            displayId = stack != null ? stack.getDisplayId() : 0;
        }
        DisplayContent display = getDisplayContent(displayId);
        boolean result = false;
        for (int tcNdx = display.getTaskDisplayAreaCount() - 1; tcNdx >= 0; tcNdx--) {
            TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tcNdx);
            result |= startHomeOnTaskDisplayArea(userId, reason, taskDisplayArea, allowInstrumenting, fromHomeKey);
        }
        return result;
    }

    boolean startHomeOnTaskDisplayArea(int userId, String reason, TaskDisplayArea taskDisplayArea, boolean allowInstrumenting, boolean fromHomeKey) {
        if (taskDisplayArea == null) {
            ActivityStack stack = getTopDisplayFocusedStack();
            taskDisplayArea = stack != null ? stack.getDisplayArea() : getDefaultTaskDisplayArea();
        }
        Intent homeIntent = null;
        ActivityInfo aInfo = null;
        if (taskDisplayArea == getDefaultTaskDisplayArea()) {
            homeIntent = this.mService.getHomeIntent();
            aInfo = resolveHomeActivity(userId, homeIntent);
            Slog.e("WindowManager", "startHomeOnTaskDisplayArea , getHomeIntent:" + homeIntent + ",aInfo:" + aInfo);
        } else if (shouldPlaceSecondaryHomeOnDisplayArea(taskDisplayArea)) {
            Pair<ActivityInfo, Intent> info = resolveSecondaryHomeActivity(userId, taskDisplayArea);
            aInfo = (ActivityInfo) info.first;
            homeIntent = (Intent) info.second;
            Slog.e("WindowManager", "startHomeOnTaskDisplayArea ,Secondary  getHomeIntent:" + homeIntent + ",aInfo:" + aInfo);
        }
        if (aInfo == null || homeIntent == null || !canStartHomeOnDisplayArea(aInfo, taskDisplayArea, allowInstrumenting)) {
            return false;
        }
        homeIntent.setComponent(new ComponentName(aInfo.applicationInfo.packageName, aInfo.name));
        homeIntent.setFlags(homeIntent.getFlags() | AudioFormat.EVRC);
        if (fromHomeKey) {
            homeIntent.putExtra("android.intent.extra.FROM_HOME_KEY", true);
            this.mWindowManager.cancelRecentsAnimation(0, "startHomeActivity");
        }
        String myReason = reason + ":" + userId + ":" + UserHandle.getUserId(aInfo.applicationInfo.uid) + ":" + taskDisplayArea.getDisplayId();
        this.mService.getActivityStartController().startHomeActivity(homeIntent, aInfo, myReason, taskDisplayArea);
        Slog.e("WindowManager", "### startHomeOnTaskDisplayArea success, homeIntent:" + homeIntent + " myReason:" + myReason);
        return true;
    }

    ActivityInfo resolveHomeActivity(int userId, Intent homeIntent) {
        ComponentName comp = homeIntent.getComponent();
        ActivityInfo aInfo = null;
        try {
            if (comp != null) {
                aInfo = AppGlobals.getPackageManager().getActivityInfo(comp, 1024, userId);
            } else {
                String resolvedType = homeIntent.resolveTypeIfNeeded(this.mService.mContext.getContentResolver());
                ResolveInfo info = AppGlobals.getPackageManager().resolveIntent(homeIntent, resolvedType, 1024, userId);
                if (info != null) {
                    aInfo = info.activityInfo;
                }
            }
        } catch (RemoteException e) {
        }
        if (aInfo == null) {
            Slog.wtf("WindowManager", "No home screen found for " + homeIntent, new Throwable());
            return null;
        }
        ActivityInfo aInfo2 = new ActivityInfo(aInfo);
        aInfo2.applicationInfo = this.mService.getAppInfoForUser(aInfo2.applicationInfo, userId);
        return aInfo2;
    }

    Pair<ActivityInfo, Intent> resolveSecondaryHomeActivity(int userId, TaskDisplayArea taskDisplayArea) {
        if (taskDisplayArea == getDefaultTaskDisplayArea()) {
            throw new IllegalArgumentException("resolveSecondaryHomeActivity: Should not be default task container");
        }
        Intent homeIntent = this.mService.getHomeIntent();
        ActivityInfo aInfo = resolveHomeActivity(userId, homeIntent);
        if (aInfo != null) {
            if (ResolverActivity.class.getName().equals(aInfo.name)) {
                aInfo = null;
            } else {
                homeIntent = this.mService.getSecondaryHomeIntent(aInfo.applicationInfo.packageName);
                List<ResolveInfo> resolutions = resolveActivities(userId, homeIntent);
                int size = resolutions.size();
                String targetName = aInfo.name;
                aInfo = null;
                for (int i = 0; i < size; i++) {
                    ResolveInfo resolveInfo = resolutions.get(i);
                    if (resolveInfo.activityInfo.name.equals(targetName)) {
                        aInfo = resolveInfo.activityInfo;
                        break;
                    }
                }
                if (aInfo == null && size > 0) {
                    aInfo = resolutions.get(0).activityInfo;
                }
            }
        }
        if (aInfo != null && !canStartHomeOnDisplayArea(aInfo, taskDisplayArea, false)) {
            aInfo = null;
        }
        if (aInfo == null) {
            homeIntent = this.mService.getSecondaryHomeIntent(null);
            aInfo = resolveHomeActivity(userId, homeIntent);
        }
        return Pair.create(aInfo, homeIntent);
    }

    List<ResolveInfo> resolveActivities(int userId, Intent homeIntent) {
        try {
            String resolvedType = homeIntent.resolveTypeIfNeeded(this.mService.mContext.getContentResolver());
            List<ResolveInfo> resolutions = AppGlobals.getPackageManager().queryIntentActivities(homeIntent, resolvedType, 1024, userId).getList();
            return resolutions;
        } catch (RemoteException e) {
            List<ResolveInfo> resolutions2 = new ArrayList<>();
            return resolutions2;
        }
    }

    boolean resumeHomeActivity(ActivityRecord prev, String reason, TaskDisplayArea taskDisplayArea) {
        if (!this.mService.isBooting() && !this.mService.isBooted()) {
            return false;
        }
        if (taskDisplayArea == null) {
            taskDisplayArea = getDefaultTaskDisplayArea();
        }
        ActivityRecord r = taskDisplayArea.getHomeActivity();
        String myReason = reason + " resumeHomeActivity";
        if (r != null && !r.finishing) {
            r.moveFocusableActivityToTop(myReason);
            return resumeFocusedStacksTopActivities(r.getRootTask(), prev, null);
        }
        return startHomeOnTaskDisplayArea(this.mCurrentUser, myReason, taskDisplayArea, false, false);
    }

    boolean shouldPlaceSecondaryHomeOnDisplayArea(TaskDisplayArea taskDisplayArea) {
        if (getDefaultTaskDisplayArea() == taskDisplayArea) {
            throw new IllegalArgumentException("shouldPlaceSecondaryHomeOnDisplay: Should not be on default task container");
        }
        if (taskDisplayArea == null) {
            Slog.w("WindowManager", "taskDisplayArea is null");
            return false;
        }
        if (taskDisplayArea.getDisplayId() != 0 && !this.mService.mSupportsMultiDisplay) {
            Slog.w("WindowManager", "device does not support multi-display");
            return false;
        }
        boolean deviceProvisioned = Settings.Global.getInt(this.mService.mContext.getContentResolver(), "device_provisioned", 0) != 0;
        if (!deviceProvisioned) {
            Slog.w("WindowManager", "device is provisioned");
            return false;
        }
        if (!StorageManager.isUserKeyUnlocked(this.mCurrentUser)) {
            Slog.w("WindowManager", "device is still locked");
            return false;
        }
        DisplayContent display = taskDisplayArea.getDisplayContent();
        if (display != null && !display.isRemoved() && display.supportsSystemDecorations()) {
            return true;
        }
        if (display != null) {
            Slog.w("WindowManager", "doesn't support system decorations " + display.isRemoved() + " , " + display.supportsSystemDecorations());
        }
        return false;
    }

    boolean canStartHomeOnDisplayArea(ActivityInfo homeInfo, TaskDisplayArea taskDisplayArea, boolean allowInstrumenting) {
        if (this.mService.mFactoryTest == 1 && this.mService.mTopAction == null) {
            Slog.w("WindowManager", "running in factory test mode");
            return false;
        }
        WindowProcessController app = this.mService.getProcessController(homeInfo.processName, homeInfo.applicationInfo.uid);
        if (!allowInstrumenting && app != null && app.isInstrumenting()) {
            Slog.w("WindowManager", "app isInstrumenting");
            return false;
        }
        int displayId = taskDisplayArea != null ? taskDisplayArea.getDisplayId() : -1;
        if (displayId == 0 || (displayId != -1 && displayId == this.mService.mVr2dDisplayId)) {
            Slog.w("WindowManager", "No restrictions to default display or vr 2d display");
            return true;
        }
        if (!shouldPlaceSecondaryHomeOnDisplayArea(taskDisplayArea)) {
            Slog.w("WindowManager", "do not shouldPlaceSecondaryHomeOnDisplayArea");
            return false;
        }
        boolean supportMultipleInstance = (homeInfo.launchMode == 2 || homeInfo.launchMode == 3) ? false : true;
        if (supportMultipleInstance) {
            return true;
        }
        Slog.w("WindowManager", "Can't launch home on secondary displays if it requested to be single instance");
        return false;
    }

    boolean ensureVisibilityAndConfig(ActivityRecord starting, int displayId, boolean markFrozenIfConfigChanged, boolean deferResume) {
        IApplicationToken.Stub stub;
        ensureActivitiesVisible(null, 0, false, false);
        if (displayId == -1) {
            return true;
        }
        DisplayContent displayContent = getDisplayContent(displayId);
        Configuration config = null;
        if (displayContent != null) {
            Configuration displayOverrideConfiguration = getDisplayOverrideConfiguration(displayId);
            if (starting == null || !starting.mayFreezeScreenLocked()) {
                stub = null;
            } else {
                stub = starting.appToken;
            }
            config = displayContent.updateOrientation(displayOverrideConfiguration, stub, true);
        }
        if (starting != null) {
            starting.reportDescendantOrientationChangeIfNeeded();
        }
        if (starting != null && markFrozenIfConfigChanged && config != null) {
            starting.frozenBeforeDestroy = true;
        }
        if (displayContent == null) {
            return true;
        }
        return displayContent.updateDisplayOverrideConfigurationLocked(config, starting, deferResume, null);
    }

    List<IBinder> getTopVisibleActivities() {
        ActivityRecord top;
        ArrayList<IBinder> topActivityTokens = new ArrayList<>();
        ActivityStack topFocusedStack = getTopDisplayFocusedStack();
        for (int dNdx = getChildCount() - 1; dNdx >= 0; dNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(dNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    if (stack.shouldBeVisible(null) && (top = stack.getTopNonFinishingActivity()) != null) {
                        if (stack == topFocusedStack) {
                            topActivityTokens.add(0, top.appToken);
                        } else {
                            topActivityTokens.add(top.appToken);
                        }
                    }
                }
            }
        }
        return topActivityTokens;
    }

    ActivityStack getTopDisplayFocusedStack() {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ActivityStack focusedStack = ((DisplayContent) getChildAt(i)).getFocusedStack();
            if (focusedStack != null) {
                return focusedStack;
            }
        }
        return null;
    }

    ActivityRecord getTopResumedActivity() {
        ActivityStack focusedStack = getTopDisplayFocusedStack();
        if (focusedStack == null) {
            return null;
        }
        ActivityRecord resumedActivity = focusedStack.getResumedActivity();
        if (resumedActivity != null && resumedActivity.app != null) {
            return resumedActivity;
        }
        for (int i = getChildCount() - 1; i >= 0; i--) {
            DisplayContent display = (DisplayContent) getChildAt(i);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                ActivityRecord resumedActivityOnTaskContainer = taskDisplayArea.getFocusedActivity();
                if (resumedActivityOnTaskContainer != null) {
                    return resumedActivityOnTaskContainer;
                }
            }
        }
        return null;
    }

    boolean isTopDisplayFocusedStack(ActivityStack stack) {
        return stack != null && stack == getTopDisplayFocusedStack();
    }

    void updatePreviousProcess(ActivityRecord r) {
        WindowProcessController fgApp = null;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    if (isTopDisplayFocusedStack(stack)) {
                        ActivityRecord resumedActivity = stack.getResumedActivity();
                        if (resumedActivity != null) {
                            fgApp = resumedActivity.app;
                            break;
                        } else {
                            if (stack.mPausingActivity == null) {
                                break;
                            }
                            fgApp = stack.mPausingActivity.app;
                            break;
                        }
                    }
                }
            }
        }
        if (r.hasProcess() && fgApp != null && r.app != fgApp && r.lastVisibleTime > this.mService.mPreviousProcessVisibleTime && r.app != this.mService.mHomeProcess) {
            this.mService.mPreviousProcess = r.app;
            this.mService.mPreviousProcessVisibleTime = r.lastVisibleTime;
        }
    }

    boolean attachApplication(WindowProcessController app) throws RemoteException {
        boolean didSomething = false;
        int displayNdx = getChildCount();
        while (true) {
            displayNdx--;
            if (displayNdx >= 0) {
                this.mTmpRemoteException = null;
                this.mTmpBoolean = false;
                DisplayContent display = (DisplayContent) getChildAt(displayNdx);
                for (int areaNdx = display.getTaskDisplayAreaCount() - 1; areaNdx >= 0; areaNdx--) {
                    TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(areaNdx);
                    for (int taskNdx = taskDisplayArea.getStackCount() - 1; taskNdx >= 0; taskNdx--) {
                        ActivityStack rootTask = taskDisplayArea.getStackAt(taskNdx);
                        if (rootTask.getVisibility(null) == 2) {
                            break;
                        }
                        PooledFunction c = PooledLambda.obtainFunction(new QuadFunction() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE
                            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                                return Boolean.valueOf(((RootWindowContainer) obj).startActivityForAttachedApplicationIfNeeded((ActivityRecord) obj2, (WindowProcessController) obj3, (ActivityRecord) obj4));
                            }
                        }, this, PooledLambda.__(ActivityRecord.class), app, rootTask.topRunningActivity());
                        rootTask.forAllActivities((Function<ActivityRecord, Boolean>) c);
                        c.recycle();
                        RemoteException remoteException = this.mTmpRemoteException;
                        if (remoteException != null) {
                            throw remoteException;
                        }
                    }
                }
                didSomething |= this.mTmpBoolean;
            } else {
                if (!didSomething) {
                    ensureActivitiesVisible(null, 0, false);
                }
                return didSomething;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean startActivityForAttachedApplicationIfNeeded(ActivityRecord r, WindowProcessController app, ActivityRecord top) {
        if (r.finishing || !r.okToShowLocked() || !r.visibleIgnoringKeyguard || r.app != null || app.mUid != r.info.applicationInfo.uid || !app.mName.equals(r.processName)) {
            return false;
        }
        try {
            if (this.mStackSupervisor.realStartActivityLocked(r, app, top == r && r.getTask().canBeResumed(r), true)) {
                this.mTmpBoolean = true;
            }
            return false;
        } catch (RemoteException e) {
            Slog.w("WindowManager", "Exception in new application when starting activity " + top.intent.getComponent().flattenToShortString(), e);
            this.mTmpRemoteException = e;
            return true;
        }
    }

    void ensureActivitiesVisible(ActivityRecord starting, int configChanges, boolean preserveWindows) {
        ensureActivitiesVisible(starting, configChanges, preserveWindows, true);
    }

    void ensureActivitiesVisible(ActivityRecord starting, int configChanges, boolean preserveWindows, boolean notifyClients) {
        if (this.mStackSupervisor.inActivityVisibilityUpdate()) {
            return;
        }
        try {
            this.mStackSupervisor.beginActivityVisibilityUpdate();
            for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
                DisplayContent display = (DisplayContent) getChildAt(displayNdx);
                display.ensureActivitiesVisible(starting, configChanges, preserveWindows, notifyClients);
            }
            this.mStackSupervisor.endActivityVisibilityUpdate();
        } catch (Throwable th) {
            this.mStackSupervisor.endActivityVisibilityUpdate();
            throw th;
        }
    }

    boolean switchUser(int userId, UserState uss) {
        ActivityStack topFocusedStack = getTopDisplayFocusedStack();
        int focusStackId = topFocusedStack != null ? topFocusedStack.getRootTaskId() : -1;
        if (getDefaultTaskDisplayArea().isSplitScreenModeActivated()) {
            getDefaultTaskDisplayArea().onSplitScreenModeDismissed();
        }
        removeStacksInWindowingModes(2);
        this.mUserStackInFront.put(this.mCurrentUser, focusStackId);
        this.mCurrentUser = userId;
        this.mStackSupervisor.mStartingUsers.add(uss);
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    taskDisplayArea.getStackAt(sNdx).switchUser(userId);
                }
            }
        }
        int restoreStackId = this.mUserStackInFront.get(userId);
        ActivityStack stack = getStack(restoreStackId);
        if (stack == null) {
            stack = getDefaultTaskDisplayArea().getOrCreateRootHomeTask();
        }
        boolean homeInFront = stack.isActivityTypeHome();
        if (stack.isOnHomeDisplay()) {
            stack.moveToFront("switchUserOnHomeDisplay");
        } else {
            resumeHomeActivity(null, "switchUserOnOtherDisplay", getDefaultTaskDisplayArea());
        }
        return homeInFront;
    }

    void removeUser(int userId) {
        this.mUserStackInFront.delete(userId);
    }

    void updateUserStack(int userId, ActivityStack stack) {
        if (userId != this.mCurrentUser) {
            if (stack == null) {
                stack = getDefaultTaskDisplayArea().getOrCreateRootHomeTask();
            }
            this.mUserStackInFront.put(userId, stack.getRootTaskId());
        }
    }

    void moveStackToTaskDisplayArea(int stackId, TaskDisplayArea taskDisplayArea, boolean onTop) {
        ActivityStack stack = getStack(stackId);
        if (stack == null) {
            throw new IllegalArgumentException("moveStackToTaskDisplayArea: Unknown stackId=" + stackId);
        }
        TaskDisplayArea currentTaskDisplayArea = stack.getDisplayArea();
        if (currentTaskDisplayArea == null) {
            throw new IllegalStateException("moveStackToTaskDisplayArea: stack=" + stack + " is not attached to any task display area.");
        }
        if (taskDisplayArea == null) {
            throw new IllegalArgumentException("moveStackToTaskDisplayArea: Unknown taskDisplayArea=" + taskDisplayArea);
        }
        if (currentTaskDisplayArea == taskDisplayArea) {
            throw new IllegalArgumentException("Trying to move stack=" + stack + " to its current taskDisplayArea=" + taskDisplayArea);
        }
        stack.reparent(taskDisplayArea, onTop);
    }

    void moveStackToDisplay(int stackId, int displayId, boolean onTop) {
        DisplayContent displayContent = getDisplayContentOrCreate(displayId);
        if (displayContent == null) {
            throw new IllegalArgumentException("moveStackToDisplay: Unknown displayId=" + displayId);
        }
        if (displayContent.isSingleTaskInstance() && displayContent.getStackCount() > 0) {
            Slog.e("WindowManager", "Can not move stackId=" + stackId + " to single task instance display=" + displayContent);
            return;
        }
        moveStackToTaskDisplayArea(stackId, displayContent.getDefaultTaskDisplayArea(), onTop);
    }

    boolean moveTopStackActivityToPinnedStack(int stackId) {
        ActivityStack stack = getStack(stackId);
        if (stack == null) {
            throw new IllegalArgumentException("moveTopStackActivityToPinnedStack: Unknown stackId=" + stackId);
        }
        ActivityRecord r = stack.topRunningActivity();
        if (r == null) {
            Slog.w("WindowManager", "moveTopStackActivityToPinnedStack: No top running activity in stack=" + stack);
            return false;
        }
        if (!this.mService.mForceResizableActivities && !r.supportsPictureInPicture()) {
            Slog.w("WindowManager", "moveTopStackActivityToPinnedStack: Picture-In-Picture not supported for  r=" + r);
            return false;
        }
        moveActivityToPinnedStack(r, "moveTopActivityToPinnedStack");
        return true;
    }

    void moveActivityToPinnedStack(ActivityRecord r, String reason) {
        ActivityStack stack;
        this.mService.deferWindowLayout();
        TaskDisplayArea taskDisplayArea = r.getDisplayArea();
        try {
            Task task = r.getTask();
            ActivityStack pinnedStack = taskDisplayArea.getRootPinnedTask();
            if (pinnedStack != null) {
                pinnedStack.dismissPip();
            }
            r.getDisplayContent().prepareAppTransition(0, false);
            boolean singleActivity = task.getChildCount() == 1;
            if (singleActivity) {
                stack = (ActivityStack) task;
            } else {
                stack = taskDisplayArea.createStack(0, r.getActivityType(), true, r.info, r.intent, false);
                stack.setLastNonFullscreenBounds(task.mLastNonFullscreenBounds);
                r.reparent(stack, Integer.MAX_VALUE, reason);
            }
            int intermediateWindowingMode = stack.getWindowingMode();
            if (stack.getParent() != taskDisplayArea) {
                stack.reparent(taskDisplayArea, true);
            }
            r.setWindowingMode(intermediateWindowingMode);
            stack.setWindowingMode(2);
            r.supportsEnterPipOnTaskSwitch = false;
            this.mService.continueWindowLayout();
            ensureActivitiesVisible(null, 0, false);
            resumeFocusedStacksTopActivities();
            notifyActivityPipModeChanged(r.getTask(), r);
        } catch (Throwable th) {
            this.mService.continueWindowLayout();
            throw th;
        }
    }

    void notifyActivityPipModeChanged(Task task, ActivityRecord r) {
        boolean inPip = r != null;
        if (inPip) {
            this.mService.getTaskChangeNotificationController().notifyActivityPinned(r);
        } else {
            this.mService.getTaskChangeNotificationController().notifyActivityUnpinned();
        }
        this.mWindowManager.mPolicy.setPipVisibilityLw(inPip);
        this.mWmService.mTransactionFactory.get().setTrustedOverlay(task.getSurfaceControl(), inPip).apply();
    }

    void executeAppTransitionForAllDisplay() {
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            display.mDisplayContent.executeAppTransition();
        }
    }

    ActivityRecord findTask(ActivityRecord r, TaskDisplayArea preferredTaskDisplayArea) {
        this.mTmpFindTaskResult.clear();
        if (preferredTaskDisplayArea != null) {
            preferredTaskDisplayArea.findTaskLocked(r, true, this.mTmpFindTaskResult);
            if (this.mTmpFindTaskResult.mIdealMatch) {
                return this.mTmpFindTaskResult.mRecord;
            }
        }
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                if (taskDisplayArea != preferredTaskDisplayArea) {
                    taskDisplayArea.findTaskLocked(r, false, this.mTmpFindTaskResult);
                    if (this.mTmpFindTaskResult.mIdealMatch) {
                        return this.mTmpFindTaskResult.mRecord;
                    }
                }
            }
        }
        return this.mTmpFindTaskResult.mRecord;
    }

    int finishTopCrashedActivities(WindowProcessController app, String reason) {
        Task finishedTask = null;
        ActivityStack focusedStack = getTopDisplayFocusedStack();
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int stackNdx = 0; stackNdx < taskDisplayArea.getStackCount(); stackNdx++) {
                    ActivityStack stack = taskDisplayArea.getStackAt(stackNdx);
                    Task t = stack.finishTopCrashedActivityLocked(app, reason);
                    if (stack == focusedStack || finishedTask == null) {
                        finishedTask = t;
                    }
                }
            }
        }
        if (finishedTask != null) {
            return finishedTask.mTaskId;
        }
        return -1;
    }

    boolean resumeFocusedStacksTopActivities() {
        return resumeFocusedStacksTopActivities(null, null, null);
    }

    boolean resumeFocusedStacksTopActivities(ActivityStack targetStack, ActivityRecord target, ActivityOptions targetOptions) {
        if (!this.mStackSupervisor.readyToResume()) {
            return false;
        }
        boolean result = false;
        if (targetStack != null && (targetStack.isTopStackInDisplayArea() || getTopDisplayFocusedStack() == targetStack)) {
            result = targetStack.resumeTopActivityUncheckedLocked(target, targetOptions);
        }
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            boolean resumedOnDisplay = false;
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    ActivityRecord topRunningActivity = stack.topRunningActivity();
                    if (stack.isFocusableAndVisible() && topRunningActivity != null) {
                        if (stack == targetStack) {
                            resumedOnDisplay |= result;
                        } else if (taskDisplayArea.isTopStack(stack) && topRunningActivity.isState(ActivityStack.ActivityState.RESUMED)) {
                            stack.executeAppTransition(targetOptions);
                        } else {
                            resumedOnDisplay |= topRunningActivity.makeActiveIfNeeded(target);
                        }
                    }
                }
            }
            if (!resumedOnDisplay) {
                ActivityStack focusedStack = display.getFocusedStack();
                if (focusedStack != null) {
                    result |= focusedStack.resumeTopActivityUncheckedLocked(target, targetOptions);
                } else if (targetStack == null) {
                    result |= resumeHomeActivity(null, "no-focusable-task", display.getDefaultTaskDisplayArea());
                }
            }
        }
        return result;
    }

    void applySleepTokens(boolean applyToStacks) {
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            boolean displayShouldSleep = display.shouldSleep();
            if (displayShouldSleep != display.isSleeping()) {
                display.setIsSleeping(displayShouldSleep);
                if (applyToStacks) {
                    for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                        TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                        for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                            ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                            if (displayShouldSleep) {
                                stack.goToSleepIfPossible(false);
                            } else {
                                if (display.isSingleTaskInstance()) {
                                    display.mDisplayContent.prepareAppTransition(28, false, 0, true);
                                }
                                stack.awakeFromSleepingLocked();
                                if (display.isSingleTaskInstance()) {
                                    display.executeAppTransition();
                                }
                                if (stack.isFocusedStackOnDisplay() && !this.mStackSupervisor.getKeyguardController().isKeyguardOrAodShowing(display.mDisplayId)) {
                                    stack.resumeTopActivityUncheckedLocked(null, null);
                                }
                                stack.ensureActivitiesVisible(null, 0, false);
                            }
                        }
                    }
                }
            }
        }
    }

    protected ActivityStack getStack(int stackId) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ActivityStack stack = ((DisplayContent) getChildAt(i)).getStack(stackId);
            if (stack != null) {
                return stack;
            }
        }
        return null;
    }

    ActivityStack getStack(int windowingMode, int activityType) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ActivityStack stack = ((DisplayContent) getChildAt(i)).getStack(windowingMode, activityType);
            if (stack != null) {
                return stack;
            }
        }
        return null;
    }

    private ActivityStack getStack(int windowingMode, int activityType, int displayId) {
        DisplayContent display = getDisplayContent(displayId);
        if (display == null) {
            return null;
        }
        return display.getStack(windowingMode, activityType);
    }

    private ActivityManager.StackInfo getStackInfo(ActivityStack stack) {
        TaskDisplayArea taskDisplayArea = stack.getDisplayArea();
        ActivityManager.StackInfo info = new ActivityManager.StackInfo();
        stack.getBounds(info.bounds);
        info.displayId = taskDisplayArea != null ? taskDisplayArea.getDisplayId() : -1;
        info.stackId = stack.mTaskId;
        info.stackToken = stack.mRemoteToken.toWindowContainerToken();
        info.userId = stack.mCurrentUser;
        info.visible = stack.shouldBeVisible(null);
        info.position = taskDisplayArea != null ? taskDisplayArea.getIndexOf(stack) : 0;
        info.configuration.setTo(stack.getConfiguration());
        int numTasks = stack.getDescendantTaskCount();
        info.taskIds = new int[numTasks];
        info.taskNames = new String[numTasks];
        info.taskBounds = new Rect[numTasks];
        info.taskUserIds = new int[numTasks];
        int[] currentIndex = {0};
        PooledConsumer c = PooledLambda.obtainConsumer(new TriConsumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$JZALJLRYsvQWgNnzHdoTfj_f3QY
            public final void accept(Object obj, Object obj2, Object obj3) {
                RootWindowContainer.processTaskForStackInfo((Task) obj, (ActivityManager.StackInfo) obj2, (int[]) obj3);
            }
        }, PooledLambda.__(Task.class), info, currentIndex);
        stack.forAllLeafTasks(c, false);
        c.recycle();
        ActivityRecord top = stack.topRunningActivity();
        info.topActivity = top != null ? top.intent.getComponent() : null;
        return info;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void processTaskForStackInfo(Task task, ActivityManager.StackInfo info, int[] currentIndex) {
        String strFlattenToString;
        int i = currentIndex[0];
        info.taskIds[i] = task.mTaskId;
        String[] strArr = info.taskNames;
        if (task.origActivity != null) {
            strFlattenToString = task.origActivity.flattenToString();
        } else if (task.realActivity != null) {
            strFlattenToString = task.realActivity.flattenToString();
        } else {
            strFlattenToString = task.getTopNonFinishingActivity() != null ? task.getTopNonFinishingActivity().packageName : UiModeManagerService.Shell.NIGHT_MODE_STR_UNKNOWN;
        }
        strArr[i] = strFlattenToString;
        info.taskBounds[i] = task.mAtmService.getTaskBounds(task.mTaskId);
        info.taskUserIds[i] = task.mUserId;
        currentIndex[0] = i + 1;
    }

    ActivityManager.StackInfo getStackInfo(int stackId) {
        ActivityStack stack = getStack(stackId);
        if (stack != null) {
            return getStackInfo(stack);
        }
        return null;
    }

    ActivityManager.StackInfo getStackInfo(int windowingMode, int activityType) {
        ActivityStack stack = getStack(windowingMode, activityType);
        if (stack != null) {
            return getStackInfo(stack);
        }
        return null;
    }

    ActivityManager.StackInfo getStackInfo(int windowingMode, int activityType, int displayId) {
        ActivityStack stack = getStack(windowingMode, activityType, displayId);
        if (stack != null) {
            return getStackInfo(stack);
        }
        return null;
    }

    ArrayList<ActivityManager.StackInfo> getAllStackInfos(int displayId) {
        ArrayList<ActivityManager.StackInfo> list = new ArrayList<>();
        if (displayId == -1) {
            for (int displayNdx = 0; displayNdx < getChildCount(); displayNdx++) {
                DisplayContent display = (DisplayContent) getChildAt(displayNdx);
                for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                    TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                    for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                        ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                        list.add(getStackInfo(stack));
                    }
                }
            }
            return list;
        }
        DisplayContent display2 = getDisplayContent(displayId);
        if (display2 == null) {
            return list;
        }
        for (int tdaNdx2 = display2.getTaskDisplayAreaCount() - 1; tdaNdx2 >= 0; tdaNdx2--) {
            TaskDisplayArea taskDisplayArea2 = display2.getTaskDisplayAreaAt(tdaNdx2);
            for (int sNdx2 = taskDisplayArea2.getStackCount() - 1; sNdx2 >= 0; sNdx2--) {
                ActivityStack stack2 = taskDisplayArea2.getStackAt(sNdx2);
                list.add(getStackInfo(stack2));
            }
        }
        return list;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayAdded(int displayId) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                DisplayContent display = getDisplayContentOrCreate(displayId);
                if (display == null) {
                    return;
                }
                if (this.mService.isBooted() || this.mService.isBooting()) {
                    startSystemDecorations(display.mDisplayContent);
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    private void startSystemDecorations(DisplayContent displayContent) {
        startHomeOnDisplay(this.mCurrentUser, "displayAdded", displayContent.getDisplayId());
        displayContent.getDisplayPolicy().notifyDisplayReady();
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayRemoved(int displayId) {
        if (displayId == 0) {
            throw new IllegalArgumentException("Can't remove the primary display.");
        }
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                DisplayContent displayContent = getDisplayContent(displayId);
                if (displayContent == null) {
                    return;
                }
                displayContent.remove();
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public void onDisplayChanged(int displayId) {
        synchronized (this.mService.mGlobalLock) {
            try {
                WindowManagerService.boostPriorityForLockedSection();
                DisplayContent displayContent = getDisplayContent(displayId);
                if (displayContent != null) {
                    displayContent.onDisplayChanged();
                }
            } finally {
                WindowManagerService.resetPriorityAfterLockedSection();
            }
        }
    }

    void updateUIDsPresentOnDisplay() {
        this.mDisplayAccessUIDs.clear();
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent displayContent = (DisplayContent) getChildAt(displayNdx);
            if (displayContent.isPrivate()) {
                this.mDisplayAccessUIDs.append(displayContent.mDisplayId, displayContent.getPresentUIDs());
            }
        }
        this.mDisplayManagerInternal.setDisplayAccessUIDs(this.mDisplayAccessUIDs);
    }

    ActivityStack findStackBehind(ActivityStack stack) {
        TaskDisplayArea taskDisplayArea = stack.getDisplayArea();
        if (taskDisplayArea != null) {
            for (int i = taskDisplayArea.getStackCount() - 1; i >= 0; i--) {
                if (taskDisplayArea.getStackAt(i) == stack && i > 0) {
                    return taskDisplayArea.getStackAt(i - 1);
                }
            }
        }
        throw new IllegalStateException("Failed to find a stack behind stack=" + stack + " in=" + taskDisplayArea);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.android.server.wm.WindowContainer
    public void positionChildAt(int position, DisplayContent child, boolean includingParents) {
        super.positionChildAt(position, child, includingParents);
        this.mStackSupervisor.updateTopResumedActivityIfNeeded();
    }

    Configuration getDisplayOverrideConfiguration(int displayId) {
        DisplayContent displayContent = getDisplayContentOrCreate(displayId);
        if (displayContent == null) {
            throw new IllegalArgumentException("No display found with id: " + displayId);
        }
        return displayContent.getRequestedOverrideConfiguration();
    }

    void setDisplayOverrideConfiguration(Configuration overrideConfiguration, int displayId) {
        DisplayContent displayContent = getDisplayContentOrCreate(displayId);
        if (displayContent == null) {
            throw new IllegalArgumentException("No display found with id: " + displayId);
        }
        displayContent.onRequestedOverrideConfigurationChanged(overrideConfiguration);
    }

    void prepareForShutdown() {
        for (int i = 0; i < getChildCount(); i++) {
            createSleepToken("shutdown", ((DisplayContent) getChildAt(i)).mDisplayId);
        }
    }

    SleepToken createSleepToken(String tag, int displayId) {
        DisplayContent display = getDisplayContent(displayId);
        if (display == null) {
            throw new IllegalArgumentException("Invalid display: " + displayId);
        }
        int tokenKey = makeSleepTokenKey(tag, displayId);
        SleepToken token = this.mSleepTokens.get(tokenKey);
        if (token == null) {
            SleepToken token2 = new SleepToken(tag, displayId);
            this.mSleepTokens.put(tokenKey, token2);
            display.mAllSleepTokens.add(token2);
            return token2;
        }
        throw new RuntimeException("Create the same sleep token twice: " + token);
    }

    void removeSleepToken(SleepToken token) {
        if (!this.mSleepTokens.contains(token.mHashKey)) {
            Slog.d("WindowManager", "Remove non-exist sleep token: " + token + " from " + Debug.getCallers(6));
        }
        this.mSleepTokens.remove(token.mHashKey);
        DisplayContent display = getDisplayContent(token.mDisplayId);
        if (display != null) {
            display.mAllSleepTokens.remove(token);
            if (display.mAllSleepTokens.isEmpty()) {
                this.mService.updateSleepIfNeededLocked();
            }
        }
    }

    void addStartingWindowsForVisibleActivities() {
        forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$07q9Iva7qby1Cfkq4KztBB6CisE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RootWindowContainer.lambda$addStartingWindowsForVisibleActivities$10((ActivityRecord) obj);
            }
        });
    }

    static /* synthetic */ void lambda$addStartingWindowsForVisibleActivities$10(ActivityRecord r) {
        if (r.mVisibleRequested) {
            r.showStartingWindow(null, false, true);
        }
    }

    void invalidateTaskLayers() {
        this.mTaskLayersChanged = true;
    }

    void rankTaskLayersIfNeeded() {
        if (!this.mTaskLayersChanged) {
            return;
        }
        this.mTaskLayersChanged = false;
        this.mTmpTaskLayerRank = 0;
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$SVJucJygDtyF-4eKB9wPXWaNBDM
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((RootWindowContainer) obj).rankTaskLayerForActivity((ActivityRecord) obj2);
            }
        }, this, PooledLambda.__(ActivityRecord.class));
        forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rankTaskLayerForActivity(ActivityRecord r) {
        if (r.canBeTopRunning() && r.mVisibleRequested) {
            Task task = r.getTask();
            int i = this.mTmpTaskLayerRank + 1;
            this.mTmpTaskLayerRank = i;
            task.mLayerRank = i;
            return;
        }
        r.getTask().mLayerRank = -1;
    }

    void clearOtherAppTimeTrackers(AppTimeTracker except) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                RootWindowContainer.clearOtherAppTimeTrackers((ActivityRecord) obj, (AppTimeTracker) obj2);
            }
        }, PooledLambda.__(ActivityRecord.class), except);
        forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void clearOtherAppTimeTrackers(ActivityRecord r, AppTimeTracker except) {
        if (r.appTimeTracker != except) {
            r.appTimeTracker = null;
        }
    }

    void scheduleDestroyAllActivities(String reason) {
        this.mDestroyAllActivitiesReason = reason;
        this.mService.mH.post(this.mDestroyAllActivitiesRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyActivity(ActivityRecord r) {
        if (r.finishing || !r.isDestroyable()) {
            return;
        }
        Slog.v("ActivityTaskManager", "Destroying " + r + " in state " + r.getState() + " resumed=" + r.getStack().mResumedActivity + " pausing=" + r.getStack().mPausingActivity + " for reason " + this.mDestroyAllActivitiesReason);
        r.destroyImmediately(true, this.mDestroyAllActivitiesReason);
    }

    boolean putStacksToSleep(boolean allowDelay, boolean shuttingDown) {
        boolean allSleep = true;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    if (sNdx < taskDisplayArea.getStackCount()) {
                        ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                        if (allowDelay) {
                            allSleep &= stack.goToSleepIfPossible(shuttingDown);
                        } else {
                            stack.goToSleep();
                        }
                    }
                }
            }
        }
        return allSleep;
    }

    void handleAppCrash(WindowProcessController app) {
        PooledConsumer c = PooledLambda.obtainConsumer(new BiConsumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$0ZupnQyxl7yZKgMmf2zwvykG50s
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                RootWindowContainer.handleAppCrash((ActivityRecord) obj, (WindowProcessController) obj2);
            }
        }, PooledLambda.__(ActivityRecord.class), app);
        forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void handleAppCrash(ActivityRecord r, WindowProcessController app) {
        if (r.app != app) {
            return;
        }
        Slog.w("WindowManager", "  Force finishing activity " + r.intent.getComponent().flattenToShortString());
        r.app = null;
        r.getDisplay().mDisplayContent.prepareAppTransition(26, false);
        r.destroyIfPossible("handleAppCrashed");
    }

    ActivityRecord findActivity(Intent intent, ActivityInfo info, boolean compareIntentFilters) {
        ComponentName cls = intent.getComponent();
        if (info.targetActivity != null) {
            cls = new ComponentName(info.packageName, info.targetActivity);
        }
        int userId = UserHandle.getUserId(info.applicationInfo.uid);
        PooledPredicate p = PooledLambda.obtainPredicate(new QuintPredicate() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$bRRfWu3QSW54eS51jCvFD02TPt8
            public final boolean test(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return RootWindowContainer.matchesActivity((ActivityRecord) obj, ((Integer) obj2).intValue(), ((Boolean) obj3).booleanValue(), (Intent) obj4, (ComponentName) obj5);
            }
        }, PooledLambda.__(ActivityRecord.class), Integer.valueOf(userId), Boolean.valueOf(compareIntentFilters), intent, cls);
        ActivityRecord r = getActivity(p);
        p.recycle();
        return r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean matchesActivity(ActivityRecord r, int userId, boolean compareIntentFilters, Intent intent, ComponentName cls) {
        if (!r.canBeTopRunning() || r.mUserId != userId) {
            return false;
        }
        if (compareIntentFilters) {
            if (r.intent.filterEquals(intent)) {
                return true;
            }
        } else if (r.mActivityComponent.equals(cls)) {
            return true;
        }
        return false;
    }

    boolean hasAwakeDisplay() {
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            if (!display.shouldSleep()) {
                return true;
            }
        }
        return false;
    }

    ActivityStack getLaunchStack(ActivityRecord r, ActivityOptions options, Task candidateTask, boolean onTop) {
        return getLaunchStack(r, options, candidateTask, onTop, null, -1, -1);
    }

    ActivityStack getLaunchStack(ActivityRecord r, ActivityOptions options, Task candidateTask, boolean onTop, LaunchParamsController.LaunchParams launchParams, int realCallingPid, int realCallingUid) {
        int taskId;
        int displayId;
        TaskDisplayArea taskDisplayArea;
        ActivityStack stack;
        int activityType;
        TaskDisplayArea container;
        ActivityStack result;
        DisplayContent displayContent;
        TaskDisplayArea taskDisplayArea2 = null;
        if (options == null) {
            taskId = -1;
            displayId = -1;
        } else {
            int taskId2 = options.getLaunchTaskId();
            int displayId2 = options.getLaunchDisplayId();
            WindowContainerToken daToken = options.getLaunchTaskDisplayArea();
            taskDisplayArea2 = daToken != null ? (TaskDisplayArea) WindowContainer.fromBinder(daToken.asBinder()) : null;
            taskId = taskId2;
            displayId = displayId2;
        }
        if (taskId != -1) {
            options.setLaunchTaskId(-1);
            Task task = anyTaskForId(taskId, 2, options, onTop);
            options.setLaunchTaskId(taskId);
            if (task != null) {
                return task.getStack();
            }
        }
        int activityType2 = resolveActivityType(r, options, candidateTask);
        ActivityStack stack2 = null;
        if (launchParams != null && launchParams.mPreferredTaskDisplayArea != null) {
            taskDisplayArea2 = launchParams.mPreferredTaskDisplayArea;
        }
        if (taskDisplayArea2 == null && displayId != -1 && (displayContent = getDisplayContent(displayId)) != null) {
            TaskDisplayArea taskDisplayArea3 = displayContent.getDefaultTaskDisplayArea();
            taskDisplayArea = taskDisplayArea3;
        } else {
            taskDisplayArea = taskDisplayArea2;
        }
        if (taskDisplayArea != null) {
            int tdaDisplayId = taskDisplayArea.getDisplayId();
            boolean canLaunchOnDisplayFromStartRequest = realCallingPid != 0 && realCallingUid > 0 && r != null && this.mStackSupervisor.canPlaceEntityOnDisplay(tdaDisplayId, realCallingPid, realCallingUid, r.info);
            if (canLaunchOnDisplayFromStartRequest || canLaunchOnDisplay(r, tdaDisplayId)) {
                if (r != null && (result = getValidLaunchStackInTaskDisplayArea(taskDisplayArea, r, candidateTask, options, launchParams)) != null) {
                    return result;
                }
                stack2 = taskDisplayArea.mDisplayContent.getDefaultTaskDisplayArea().getOrCreateStack(r, options, candidateTask, activityType2, onTop);
                if (stack2 != null) {
                    return stack2;
                }
            } else {
                activityType2 = activityType2;
            }
        } else {
            activityType2 = activityType2;
        }
        TaskDisplayArea container2 = null;
        if (candidateTask != null) {
            stack2 = candidateTask.getStack();
        }
        if (stack2 == null && r != null) {
            stack = r.getRootTask();
        } else {
            stack = stack2;
        }
        int windowingMode = launchParams != null ? launchParams.mWindowingMode : 0;
        if (stack == null || (container2 = stack.getDisplayArea()) == null || !canLaunchOnDisplay(r, container2.mDisplayContent.mDisplayId)) {
            activityType = activityType2;
        } else {
            if (windowingMode != 0) {
                activityType = activityType2;
            } else {
                activityType = activityType2;
                windowingMode = container2.resolveWindowingMode(r, options, candidateTask, activityType);
            }
            if (stack.isCompatible(windowingMode, activityType) || stack.mCreatedByOrganizer) {
                return stack;
            }
            if (windowingMode == 4 && container2.getRootSplitScreenPrimaryTask() == stack && candidateTask == stack.getTopMostTask()) {
                return stack;
            }
        }
        if (container2 == null || !canLaunchOnDisplay(r, container2.mDisplayContent.mDisplayId)) {
            TaskDisplayArea container3 = getDefaultTaskDisplayArea();
            if (windowingMode != 0) {
                container = container3;
            } else {
                container3.resolveWindowingMode(r, options, candidateTask, activityType);
                container = container3;
            }
        } else {
            container = container2;
        }
        return container.getOrCreateStack(r, options, candidateTask, activityType, onTop);
    }

    private boolean canLaunchOnDisplay(ActivityRecord r, int displayId) {
        if (r == null) {
            return true;
        }
        return r.canBeLaunchedOnDisplay(displayId);
    }

    ActivityStack getValidLaunchStackInTaskDisplayArea(TaskDisplayArea taskDisplayArea, ActivityRecord r, Task candidateTask, ActivityOptions options, LaunchParamsController.LaunchParams launchParams) {
        int windowingMode;
        if (!r.canBeLaunchedOnDisplay(taskDisplayArea.getDisplayId())) {
            return null;
        }
        if (candidateTask != null && (r.getTask() == null || r.getTask() == candidateTask)) {
            TaskDisplayArea attachedTaskDisplayArea = r.getTask() != null ? r.getTask().getDisplayArea() : r.getDisplayArea();
            if (attachedTaskDisplayArea == null || attachedTaskDisplayArea == taskDisplayArea) {
                return candidateTask.getStack();
            }
            if (candidateTask.isRootTask()) {
                ActivityStack stack = candidateTask.getStack();
                stack.reparent(taskDisplayArea, true);
                return stack;
            }
        }
        if (launchParams != null) {
            windowingMode = launchParams.mWindowingMode;
        } else {
            windowingMode = options != null ? options.getLaunchWindowingMode() : r.getWindowingMode();
        }
        int windowingMode2 = taskDisplayArea.validateWindowingMode(windowingMode, r, candidateTask, r.getActivityType());
        for (int i = taskDisplayArea.getStackCount() - 1; i >= 0; i--) {
            ActivityStack stack2 = taskDisplayArea.getStackAt(i);
            if (isValidLaunchStack(stack2, r, windowingMode2)) {
                return stack2;
            }
        }
        int i2 = taskDisplayArea.getDisplayId();
        if (taskDisplayArea == getDisplayContent(i2).getDefaultTaskDisplayArea()) {
            return null;
        }
        int activityType = (options == null || options.getLaunchActivityType() == 0) ? r.getActivityType() : options.getLaunchActivityType();
        return taskDisplayArea.createStack(windowingMode2, activityType, true);
    }

    private boolean isValidLaunchStack(ActivityStack stack, ActivityRecord r, int windowingMode) {
        if (Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDstDisabled_default) && stack.getActivityType() == 2 && r.isActivityTypeHome() && stack.getWindowingMode() != r.getWindowingMode()) {
            stack.setWindowingMode(r.getWindowingMode());
        }
        int activityType = stack.getActivityType();
        if (activityType == 2) {
            return r.isActivityTypeHome();
        }
        if (activityType == 3) {
            return r.isActivityTypeRecents();
        }
        if (activityType == 4) {
            return r.isActivityTypeAssistant();
        }
        if (activityType != 5) {
            return !stack.mCreatedByOrganizer && stack.getWindowingMode() == 3 && r.supportsSplitScreenWindowingMode() && (windowingMode == 3 || windowingMode == 0);
        }
        return r.isActivityTypeDream();
    }

    int resolveActivityType(ActivityRecord r, ActivityOptions options, Task task) {
        int activityType = r != null ? r.getActivityType() : 0;
        if (activityType == 0 && task != null) {
            activityType = task.getActivityType();
        }
        if (activityType != 0) {
            return activityType;
        }
        if (options != null) {
            activityType = options.getLaunchActivityType();
        }
        if (activityType != 0) {
            return activityType;
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    ActivityStack getNextFocusableStack(ActivityStack activityStack, boolean ignoreCurrent) {
        ActivityStack nextFocusableStack;
        TaskDisplayArea preferredDisplayArea = activityStack.getDisplayArea();
        if (preferredDisplayArea == null) {
            preferredDisplayArea = getDisplayContent(activityStack.mPrevDisplayId).getDefaultTaskDisplayArea();
        }
        ActivityStack preferredFocusableStack = preferredDisplayArea.getNextFocusableStack(activityStack, ignoreCurrent);
        if (preferredFocusableStack != null) {
            return preferredFocusableStack;
        }
        if (preferredDisplayArea.mDisplayContent.supportsSystemDecorations()) {
            return null;
        }
        for (int i = getChildCount() - 1; i >= 0; i--) {
            DisplayContent display = (DisplayContent) getChildAt(i);
            if (display != preferredDisplayArea.mDisplayContent && (nextFocusableStack = display.getDefaultTaskDisplayArea().getNextFocusableStack(activityStack, ignoreCurrent)) != null) {
                return nextFocusableStack;
            }
        }
        return null;
    }

    boolean handleAppDied(WindowProcessController app) {
        boolean hasVisibleActivities = false;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    hasVisibleActivities |= stack.handleAppDied(app);
                }
            }
        }
        return hasVisibleActivities;
    }

    void closeSystemDialogActivities(final String reason) {
        forAllActivities(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$closeSystemDialogActivities$11$RootWindowContainer(reason, (ActivityRecord) obj);
            }
        });
    }

    public /* synthetic */ void lambda$closeSystemDialogActivities$11$RootWindowContainer(String reason, ActivityRecord r) {
        if ((r.info.flags & 256) != 0 || shouldCloseAssistant(r, reason)) {
            r.finishIfPossible(reason, true);
        }
    }

    private boolean shouldCloseAssistant(ActivityRecord r, String reason) {
        if (r.isActivityTypeAssistant() && reason != PhoneWindowManager.SYSTEM_DIALOG_REASON_ASSIST) {
            return this.mWmService.mAssistantOnTopOfDream;
        }
        return false;
    }

    class FinishDisabledPackageActivitiesHelper {
        private boolean mDidSomething;
        private boolean mDoit;
        private boolean mEvenPersistent;
        private Set<String> mFilterByClasses;
        private ComponentName mHomeActivity;
        private Task mLastTask;
        private String mPackageName;
        private int mUserId;

        FinishDisabledPackageActivitiesHelper() {
        }

        private void reset(String packageName, Set<String> filterByClasses, boolean doit, boolean evenPersistent, int userId) {
            this.mDidSomething = false;
            this.mPackageName = packageName;
            this.mFilterByClasses = filterByClasses;
            this.mDoit = doit;
            this.mEvenPersistent = evenPersistent;
            this.mUserId = userId;
            this.mLastTask = null;
            this.mHomeActivity = null;
        }

        boolean process(String packageName, Set<String> filterByClasses, boolean doit, boolean evenPersistent, int userId) {
            reset(packageName, filterByClasses, doit, evenPersistent, userId);
            Function<ActivityRecord, Boolean> functionObtainFunction = PooledLambda.obtainFunction(new BiFunction() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$FinishDisabledPackageActivitiesHelper$XWfRTrqNP6c1kx7wtT2Pvy6K9-c
                @Override // java.util.function.BiFunction
                public final Object apply(Object obj, Object obj2) {
                    return Boolean.valueOf(((RootWindowContainer.FinishDisabledPackageActivitiesHelper) obj).processActivity((ActivityRecord) obj2));
                }
            }, this, PooledLambda.__(ActivityRecord.class));
            RootWindowContainer.this.forAllActivities(functionObtainFunction);
            functionObtainFunction.recycle();
            return this.mDidSomething;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean processActivity(ActivityRecord r) {
            Set<String> set;
            boolean sameComponent = (r.packageName.equals(this.mPackageName) && ((set = this.mFilterByClasses) == null || set.contains(r.mActivityComponent.getClassName()))) || (this.mPackageName == null && r.mUserId == this.mUserId);
            if ((this.mUserId == -1 || r.mUserId == this.mUserId) && ((sameComponent || r.getTask() == this.mLastTask) && (r.app == null || this.mEvenPersistent || !r.app.isPersistent()))) {
                if (!this.mDoit) {
                    return !r.finishing;
                }
                if (r.isActivityTypeHome()) {
                    ComponentName componentName = this.mHomeActivity;
                    if (componentName != null && componentName.equals(r.mActivityComponent)) {
                        Slog.i("WindowManager", "Skip force-stop again " + r);
                        return false;
                    }
                    this.mHomeActivity = r.mActivityComponent;
                }
                this.mDidSomething = true;
                Slog.i("WindowManager", "  Force finishing activity " + r);
                this.mLastTask = r.getTask();
                r.finishIfPossible("force-stop", true);
            }
            return false;
        }
    }

    boolean finishDisabledPackageActivities(String packageName, Set<String> filterByClasses, boolean doit, boolean evenPersistent, int userId) {
        return this.mFinishDisabledPackageActivitiesHelper.process(packageName, filterByClasses, doit, evenPersistent, userId);
    }

    void updateActivityApplicationInfo(ApplicationInfo aInfo) {
        String packageName = aInfo.packageName;
        int userId = UserHandle.getUserId(aInfo.uid);
        PooledConsumer c = PooledLambda.obtainConsumer(new QuadConsumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$fL0RxmEBMlnXFmjHLkBJ9jk9drs
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4) {
                RootWindowContainer.updateActivityApplicationInfo((ActivityRecord) obj, (ApplicationInfo) obj2, ((Integer) obj3).intValue(), (String) obj4);
            }
        }, PooledLambda.__(ActivityRecord.class), aInfo, Integer.valueOf(userId), packageName);
        forAllActivities((Consumer<ActivityRecord>) c);
        c.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateActivityApplicationInfo(ActivityRecord r, ApplicationInfo aInfo, int userId, String packageName) {
        if (r.mUserId == userId && packageName.equals(r.packageName)) {
            r.updateApplicationInfo(aInfo);
        }
    }

    void finishVoiceTask(IVoiceInteractionSession session) {
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            int numTaskContainers = display.getTaskDisplayAreaCount();
            for (int tdaNdx = 0; tdaNdx < numTaskContainers; tdaNdx++) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                int numStacks = taskDisplayArea.getStackCount();
                for (int stackNdx = 0; stackNdx < numStacks; stackNdx++) {
                    ActivityStack stack = taskDisplayArea.getStackAt(stackNdx);
                    stack.finishVoiceTask(session);
                }
            }
        }
    }

    void removeStacksInWindowingModes(int... windowingModes) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ((DisplayContent) getChildAt(i)).removeStacksInWindowingModes(windowingModes);
        }
    }

    void removeStacksWithActivityTypes(int... activityTypes) {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ((DisplayContent) getChildAt(i)).removeStacksWithActivityTypes(activityTypes);
        }
    }

    ActivityRecord topRunningActivity() {
        for (int i = getChildCount() - 1; i >= 0; i--) {
            ActivityRecord topActivity = ((DisplayContent) getChildAt(i)).topRunningActivity();
            if (topActivity != null) {
                return topActivity;
            }
        }
        return null;
    }

    boolean allResumedActivitiesIdle() {
        ActivityStack stack;
        ActivityRecord resumedActivity;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            if (!display.isSleeping() && (stack = display.getFocusedStack()) != null && stack.hasActivity() && ((resumedActivity = stack.getResumedActivity()) == null || !resumedActivity.idle)) {
                Slog.d("WindowManager", "allResumedActivitiesIdle: stack=" + stack.getRootTaskId() + " " + resumedActivity + " not idle");
                return false;
            }
        }
        sendPowerHintForLaunchEndIfNeeded();
        return true;
    }

    boolean allResumedActivitiesVisible() {
        boolean foundResumed = false;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    ActivityRecord r = stack.getResumedActivity();
                    if (r != null) {
                        if (!r.nowVisible) {
                            return false;
                        }
                        foundResumed = true;
                    }
                }
            }
        }
        return foundResumed;
    }

    boolean allPausedActivitiesComplete() {
        DisplayContent display;
        boolean pausing = true;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display2 = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display2.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display2.getTaskDisplayAreaAt(tdaNdx);
                int sNdx = taskDisplayArea.getStackCount() - 1;
                while (sNdx >= 0) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    ActivityRecord r = stack.mPausingActivity;
                    if (r == null || r.isState(ActivityStack.ActivityState.PAUSED, ActivityStack.ActivityState.STOPPED, ActivityStack.ActivityState.STOPPING, ActivityStack.ActivityState.FINISHING)) {
                        display = display2;
                        pausing = pausing;
                    } else {
                        Slog.d("WindowManager", "allPausedActivitiesComplete: r=" + r + " state=" + r.getState());
                        if (r.isState(ActivityStack.ActivityState.RESUMED)) {
                            long cur = SystemClock.elapsedRealtime();
                            if (!this.mPauseErrorActivityDurings.containsKey(r)) {
                                display = display2;
                                this.mPauseErrorActivityDurings.put(r, Long.valueOf(cur));
                            } else {
                                long saved = this.mPauseErrorActivityDurings.get(r).longValue();
                                if (cur - saved >= PAUSE_ERROR_TIMEOUT_MILLIS) {
                                    Slog.e("WindowManager", "Activity " + r + " pause error last 2s, kill process " + r.getPid());
                                    List<ActivityRecord> toRemove = new ArrayList<>();
                                    for (ActivityRecord ar : this.mPauseErrorActivityDurings.keySet()) {
                                        boolean pausing2 = pausing;
                                        DisplayContent display3 = display2;
                                        if (ar.getPid() == r.getPid()) {
                                            toRemove.add(ar);
                                        }
                                        pausing = pausing2;
                                        display2 = display3;
                                    }
                                    display = display2;
                                    Iterator<ActivityRecord> it = toRemove.iterator();
                                    while (it.hasNext()) {
                                        this.mPauseErrorActivityDurings.remove(it.next());
                                    }
                                    Process.killProcess(r.getPid());
                                } else {
                                    display = display2;
                                }
                            }
                        } else {
                            display = display2;
                        }
                        pausing = false;
                    }
                    sNdx--;
                    display2 = display;
                }
            }
        }
        return pausing;
    }

    void lockAllProfileTasks(final int userId) {
        this.mService.deferWindowLayout();
        try {
            forAllLeafTasks(new Consumer() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$V90N3j-z12nE_INoLosHQUl2p80
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$lockAllProfileTasks$13$RootWindowContainer(userId, (Task) obj);
                }
            }, true);
        } finally {
            this.mService.continueWindowLayout();
        }
    }

    public /* synthetic */ void lambda$lockAllProfileTasks$13$RootWindowContainer(final int userId, Task task) {
        ActivityRecord top = task.topRunningActivity();
        if ((top == null || top.finishing || !"android.app.action.CONFIRM_DEVICE_CREDENTIAL_WITH_USER".equals(top.intent.getAction()) || !top.packageName.equals(this.mService.getSysUiServiceComponentLocked().getPackageName())) && task.getActivity(new Predicate() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$8fHeC-iaZRx__ipVxj-w37jaOP4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return RootWindowContainer.lambda$lockAllProfileTasks$12(userId, (ActivityRecord) obj);
            }
        }) != null) {
            this.mService.getTaskChangeNotificationController().notifyTaskProfileLocked(task.mTaskId, userId);
        }
    }

    static /* synthetic */ boolean lambda$lockAllProfileTasks$12(int userId, ActivityRecord activity) {
        return !activity.finishing && activity.mUserId == userId;
    }

    private void taskTopActivityIsUser(Task task, int userId) {
        ActivityRecord activityRecord = task.getTopNonFinishingActivity();
        ActivityRecord resultTo = activityRecord != null ? activityRecord.resultTo : null;
        if ((activityRecord != null && activityRecord.mUserId == userId) || (resultTo != null && resultTo.mUserId == userId)) {
            this.mService.getTaskChangeNotificationController().notifyTaskProfileLocked(task.mTaskId, userId);
        }
    }

    void cancelInitializingActivities() {
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    taskDisplayArea.getStackAt(sNdx).cancelInitializingActivities();
                }
            }
        }
    }

    Task anyTaskForId(int id) {
        return anyTaskForId(id, 2);
    }

    Task anyTaskForId(int id, int matchMode) {
        return anyTaskForId(id, matchMode, null, false);
    }

    Task anyTaskForId(int id, int matchMode, ActivityOptions aOptions, boolean onTop) {
        Task task;
        ActivityStack launchStack;
        int i = 2;
        if (matchMode != 2 && aOptions != null) {
            throw new IllegalArgumentException("Should not specify activity options for non-restore lookup");
        }
        PooledPredicate p = PooledLambda.obtainPredicate($$Lambda$5zunxFfSXQYpejvFiP3lO5a4GDY.INSTANCE, PooledLambda.__(Task.class), Integer.valueOf(id));
        Task task2 = getTask(p);
        p.recycle();
        if (task2 != null) {
            if (aOptions != null && (launchStack = getLaunchStack(null, aOptions, task2, onTop)) != null && task2.getStack() != launchStack) {
                if (onTop) {
                    i = 0;
                }
                int reparentMode = i;
                task2.reparent(launchStack, onTop, reparentMode, true, true, "anyTaskForId");
            }
            return task2;
        }
        if (matchMode == 0 || (task = this.mStackSupervisor.mRecentTasks.getTask(id)) == null) {
            return null;
        }
        if (matchMode != 1 && !this.mStackSupervisor.restoreRecentTaskLocked(task, aOptions, onTop)) {
            return null;
        }
        return task;
    }

    ActivityRecord isInAnyStack(IBinder token) {
        ActivityRecord r = ActivityRecord.forTokenLocked(token);
        if (r == null || !r.isDescendantOf(this)) {
            return null;
        }
        return r;
    }

    void getRunningTasks(int maxNum, List<ActivityManager.RunningTaskInfo> list, boolean filterOnlyVisibleRecents, int callingUid, boolean allowed, boolean crossUser, ArraySet<Integer> profileIds) {
        this.mStackSupervisor.getRunningTasks().getTasks(maxNum, list, filterOnlyVisibleRecents, this, callingUid, allowed, crossUser, profileIds);
    }

    void sendPowerHintForLaunchStartIfNeeded(boolean forceSend, ActivityRecord targetActivity) {
        boolean sendHint = forceSend;
        if (!sendHint) {
            sendHint = targetActivity == null || targetActivity.app == null;
        }
        if (!sendHint) {
            boolean noResumedActivities = true;
            boolean allFocusedProcessesDiffer = true;
            for (int displayNdx = 0; displayNdx < getChildCount(); displayNdx++) {
                DisplayContent dc = (DisplayContent) getChildAt(displayNdx);
                for (int tdaNdx = dc.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                    TaskDisplayArea taskDisplayArea = dc.getTaskDisplayAreaAt(tdaNdx);
                    ActivityRecord resumedActivity = taskDisplayArea.getFocusedActivity();
                    WindowProcessController resumedActivityProcess = resumedActivity == null ? null : resumedActivity.app;
                    noResumedActivities &= resumedActivityProcess == null;
                    if (resumedActivityProcess != null) {
                        allFocusedProcessesDiffer &= !resumedActivityProcess.equals(targetActivity.app);
                    }
                }
            }
            sendHint = noResumedActivities || allFocusedProcessesDiffer;
        }
        if (sendHint && this.mService.mPowerManagerInternal != null) {
            this.mService.mPowerManagerInternal.powerHint(8, 1);
            this.mPowerHintSent = true;
        }
    }

    void sendPowerHintForLaunchEndIfNeeded() {
        if (this.mPowerHintSent && this.mService.mPowerManagerInternal != null) {
            this.mService.mPowerManagerInternal.powerHint(8, 0);
            this.mPowerHintSent = false;
        }
    }

    private void calculateDefaultMinimalSizeOfResizeableTasks() {
        Resources res = this.mService.mContext.getResources();
        float minimalSize = res.getDimension(R.dimen.action_bar_elevation_material);
        DisplayMetrics dm = res.getDisplayMetrics();
        this.mDefaultMinSizeOfResizeableTaskDp = (int) (minimalSize / dm.density);
    }

    ArrayList<ActivityRecord> getDumpActivities(String name, boolean dumpVisibleStacksOnly, boolean dumpFocusedStackOnly) {
        if (dumpFocusedStackOnly) {
            ActivityStack topFocusedStack = getTopDisplayFocusedStack();
            if (topFocusedStack != null) {
                return topFocusedStack.getDumpActivitiesLocked(name);
            }
            return new ArrayList<>();
        }
        ArrayList<ActivityRecord> activities = new ArrayList<>();
        int numDisplays = getChildCount();
        for (int displayNdx = 0; displayNdx < numDisplays; displayNdx++) {
            DisplayContent display = (DisplayContent) getChildAt(displayNdx);
            for (int tdaNdx = display.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = display.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    if (!dumpVisibleStacksOnly || stack.shouldBeVisible(null)) {
                        activities.addAll(stack.getDumpActivitiesLocked(name));
                    }
                }
            }
        }
        return activities;
    }

    @Override // com.android.server.wm.WindowContainer
    public void dump(PrintWriter pw, String prefix, boolean dumpAll) {
        super.dump(pw, prefix, dumpAll);
        pw.print(prefix);
        pw.println("topDisplayFocusedStack=" + getTopDisplayFocusedStack());
        for (int i = getChildCount() + (-1); i >= 0; i--) {
            DisplayContent display = (DisplayContent) getChildAt(i);
            display.dump(pw, prefix, dumpAll);
        }
        pw.println();
    }

    void dumpDisplayConfigs(PrintWriter pw, String prefix) {
        pw.print(prefix);
        pw.println("Display override configurations:");
        int displayCount = getChildCount();
        for (int i = 0; i < displayCount; i++) {
            DisplayContent displayContent = (DisplayContent) getChildAt(i);
            pw.print(prefix);
            pw.print("  ");
            pw.print(displayContent.mDisplayId);
            pw.print(": ");
            pw.println(displayContent.getRequestedOverrideConfiguration());
        }
    }

    boolean dumpActivities(FileDescriptor fd, final PrintWriter pw, boolean dumpAll, boolean dumpClient, String dumpPackage) {
        boolean printed = false;
        boolean needSep = false;
        for (int displayNdx = getChildCount() - 1; displayNdx >= 0; displayNdx--) {
            DisplayContent displayContent = (DisplayContent) getChildAt(displayNdx);
            if (printed) {
                pw.println();
            }
            pw.print("Display #");
            pw.print(displayContent.mDisplayId);
            pw.println(" (activities from top to bottom):");
            for (int tdaNdx = displayContent.getTaskDisplayAreaCount() - 1; tdaNdx >= 0; tdaNdx--) {
                TaskDisplayArea taskDisplayArea = displayContent.getTaskDisplayAreaAt(tdaNdx);
                for (int sNdx = taskDisplayArea.getStackCount() - 1; sNdx >= 0; sNdx--) {
                    ActivityStack stack = taskDisplayArea.getStackAt(sNdx);
                    if (needSep) {
                        pw.println();
                    }
                    needSep = stack.dump(fd, pw, dumpAll, dumpClient, dumpPackage, false);
                    printed |= needSep;
                }
            }
            for (int tdaNdx2 = displayContent.getTaskDisplayAreaCount() - 1; tdaNdx2 >= 0; tdaNdx2--) {
                printed |= ActivityStackSupervisor.printThisActivity(pw, displayContent.getTaskDisplayAreaAt(tdaNdx2).getFocusedActivity(), dumpPackage, needSep, "    Resumed: ", new Runnable() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$wmhKg8x6RdcBlSmvGqN5AdCspCE
                    @Override // java.lang.Runnable
                    public final void run() {
                        pw.println("  Resumed activities in task display areas (from top to bottom):");
                    }
                });
            }
        }
        return ActivityStackSupervisor.dumpHistoryList(fd, pw, this.mStackSupervisor.mStoppingActivities, "  ", "Stop", false, !dumpAll, false, dumpPackage, true, new Runnable() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$H5SvrPMcF7h1Zjahh38JkkIAOF4
            @Override // java.lang.Runnable
            public final void run() {
                pw.println("  Activities waiting to stop:");
            }
        }, null) | printed | ActivityStackSupervisor.dumpHistoryList(fd, pw, this.mStackSupervisor.mFinishingActivities, "  ", "Fin", false, !dumpAll, false, dumpPackage, true, new Runnable() { // from class: com.android.server.wm.-$$Lambda$RootWindowContainer$XMlVddEBXNqtByCBmJZRPtOma00
            @Override // java.lang.Runnable
            public final void run() {
                pw.println("  Activities waiting to finish:");
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int makeSleepTokenKey(String tag, int displayId) {
        String tokenKey = tag + displayId;
        return tokenKey.hashCode();
    }

    static final class SleepToken {
        private final long mAcquireTime = SystemClock.uptimeMillis();
        private final int mDisplayId;
        final int mHashKey;
        private final String mTag;

        SleepToken(String tag, int displayId) {
            this.mTag = tag;
            this.mDisplayId = displayId;
            this.mHashKey = RootWindowContainer.makeSleepTokenKey(this.mTag, this.mDisplayId);
        }

        public String toString() {
            return "{\"" + this.mTag + "\", display " + this.mDisplayId + ", acquire at " + TimeUtils.formatUptime(this.mAcquireTime) + "}";
        }
    }

    private void resetCurrentBrightnessOverride() {
        DisplayManager displayManager = this.mDisplayManager;
        if (displayManager != null) {
            Display[] displays = displayManager.getDisplays();
            for (Display display : displays) {
                int displayId = display.getDisplayId();
                this.mCurrentBrightnessOverrideMaps.put(Integer.valueOf(displayId), Float.valueOf(Float.NaN));
            }
        }
    }

    private void updateBrightnessOverrideOnDisplay(int displayId, float brightnessOverride) {
        this.mCurrentBrightnessOverrideMaps.put(Integer.valueOf(displayId), Float.valueOf(brightnessOverride));
    }

    private float getBrightnessOverrideOnDisplay(int displayId) {
        return this.mCurrentBrightnessOverrideMaps.getOrDefault(Integer.valueOf(displayId), Float.valueOf(Float.NaN)).floatValue();
    }
}
