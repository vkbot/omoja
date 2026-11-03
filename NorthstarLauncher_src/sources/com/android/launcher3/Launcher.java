package com.android.launcher3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.ActivityOptions;
import android.appwidget.AppWidgetHostView;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.OvershootInterpolator;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.lifecycle.Observer;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.anim.PropertyListBuilder;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderGridOrganizer;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.BitmapRenderer;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.keyboard.CustomActionsPopup;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.CarControlModel;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.RedHotModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.pm.PinRequestHelper;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.provider.PreviewProvider;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.TestProtocol;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.touch.LaunchHistory;
import com.android.launcher3.userevent.nano.LauncherLogProto;
import com.android.launcher3.util.ActivityResultInfo;
import com.android.launcher3.util.ActivityTracker;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Const;
import com.android.launcher3.util.HideWorkspaceTouchController;
import com.android.launcher3.util.HvacObserver;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LauncherTiming;
import com.android.launcher3.util.LifecycleNotifier;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.util.PowerObserver;
import com.android.launcher3.util.ShortcutUtil;
import com.android.launcher3.util.Themes;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.util.UiThreadHelper;
import com.android.launcher3.util.ViewOnDrawExecutor;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.FestivalImageView;
import com.android.launcher3.views.FloatingSurfaceView;
import com.android.launcher3.views.ImageDragView;
import com.android.launcher3.views.LandmarkWallpaperView;
import com.android.launcher3.views.LiveWallpaperView;
import com.android.launcher3.views.OptionsPopupView;
import com.android.launcher3.views.blur.BlurRenderWatcher;
import com.android.launcher3.views.blur.WallpaperBlurEngine;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.PendingAddShortcutInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.widget.WidgetHostViewLoader;
import com.android.launcher3.widget.WidgetListRowEntry;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.launcher3.widget.WidgetsTableSheet;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.mega.chery.utils.ToastViewUtils;
import com.mega.launcher.wallpaper.WallpaperRepository;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcherapi.utils.WallpaperUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class Launcher extends StatefulActivity<LauncherState> implements BgDataModel.Callbacks, InvariantDeviceProfile.OnIDPChangeListener {
    public static final ActivityTracker<Launcher> ACTIVITY_TRACKER = new ActivityTracker<>();
    private static final float BOUNCE_ANIMATION_TENSION = 1.3f;
    static final boolean DEBUG_STRICT_MODE = false;
    private static final String EXTRA_FROM_HOME_KEY = "android.intent.extra.FROM_HOME_KEY";
    private static final String EXTRA_FROM_VOICE_EXIT_APP = "from_voice_exit_app";
    private static final String EXTRA_LAUNCHER_START_FROM = "LauncherStartFrom";
    static final boolean LOGD = false;
    public static final int NEW_APPS_ANIMATION_DELAY = 500;
    private static final int NEW_APPS_ANIMATION_INACTIVE_TIMEOUT_SECONDS = 5;
    public static final int NEW_APPS_PAGE_MOVE_DELAY = 500;
    private static final int ON_ACTIVITY_RESULT_ANIMATION_DELAY = 500;
    public static final String ON_CREATE_EVT = "Launcher.onCreate";
    public static final String ON_NEW_INTENT_EVT = "Launcher.onNewIntent";
    public static final String ON_RESUME_EVT = "Launcher.onResume";
    public static final String ON_START_EVT = "Launcher.onStart";
    private static final int REQUEST_BIND_APPWIDGET = 11;
    public static final int REQUEST_BIND_PENDING_APPWIDGET = 12;
    private static final int REQUEST_CREATE_APPWIDGET = 5;
    private static final int REQUEST_CREATE_SHORTCUT = 1;
    private static final int REQUEST_PERMISSION_CALL_PHONE = 14;
    private static final int REQUEST_PICK_APPWIDGET = 9;
    public static final int REQUEST_RECONFIGURE_APPWIDGET = 13;
    private static final String RUNTIME_STATE = "launcher.state";
    private static final String RUNTIME_STATE_CURRENT_SCREEN = "launcher.current_screen";
    private static final String RUNTIME_STATE_PENDING_ACTIVITY_RESULT = "launcher.activity_result";
    private static final String RUNTIME_STATE_PENDING_REQUEST_ARGS = "launcher.request_args";
    private static final String RUNTIME_STATE_PENDING_REQUEST_CODE = "launcher.request_code";
    private static final String RUNTIME_STATE_WIDGET_PANEL = "launcher.widget_panel";
    public static final String TAG = "LauncherTag";
    public static volatile Launcher sLauncher;
    private LauncherAccessibilityDelegate mAccessibilityDelegate;
    private LauncherAppTransitionManager mAppTransitionManager;
    private LauncherAppWidgetHost mAppWidgetHost;
    private WidgetManagerHelper mAppWidgetManager;
    private WallpaperInfo mCurWallpaperInfo;
    private DragController mDragController;
    DragLayer mDragLayer;
    private FestivalImageView mFestivalView;
    private HideWorkspaceTouchController mHideWorkspaceTouchController;
    Hotseat mHotseat;
    private HvacObserver mHvacObserver;
    private IconCache mIconCache;
    private boolean mIgnoreLiveWallpaperInitCallback;
    private ImageDragView mImageDragView;
    private boolean mInterceptTouch;
    private LandmarkWallpaperView mLandmarkWallpaperView;
    private MotionEvent mLastMoveEvent;
    private LiveWallpaperView mLiveWallpaperView;
    private LauncherModel mModel;
    private ModelWriter mModelWriter;
    private Configuration mOldConfig;
    private View mOverviewPanel;
    private ActivityResultInfo mPendingActivityResult;
    private ViewOnDrawExecutor mPendingExecutor;
    private PendingRequestArgs mPendingRequestArgs;
    private PopupDataProvider mPopupDataProvider;
    private PowerObserver mPowerObserver;
    private RedHotModel mRedHotModel;
    private StateManager<LauncherState> mStateManager;
    private boolean mTouchInProgress;
    private WallpaperBlurEngine mWallpaperBlurEngine;
    private View mWidgetsTableBackgroundView;
    Workspace mWorkspace;
    private final int[] mTmpAddItemCellCoordinates = new int[2];
    boolean mWorkspaceLoading = true;
    private final ArrayList<OnResumeCallback> mOnResumeCallbacks = new ArrayList<>();
    private int mSynchronouslyBoundPage = -1;
    private int mPageToBindSynchronously = -1;
    protected int mPendingActivityRequestCode = -1;
    private long mLastTouchUpTime = -1;
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.Launcher.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            MLog.d(Launcher.TAG, "onReceive: action=" + action);
            if (Objects.equals(action, "android.intent.action.SCREEN_OFF")) {
                if (Launcher.this.mPendingRequestArgs == null) {
                    if (!Launcher.this.isInState(LauncherState.NORMAL)) {
                        Launcher.this.onUiChangedWhileSleeping();
                    }
                    Launcher.this.mStateManager.goToState(LauncherState.NORMAL);
                    return;
                }
                return;
            }
            if (Objects.equals(action, "action.GO_MUSIC") || Objects.equals(action, "action.GO_NAVI")) {
                LaunchHistory.get().clear();
                return;
            }
            if (Objects.equals(action, FestivalImageView.ACTION_SHOW_FESTIVAL)) {
                if (Launcher.this.mFestivalView != null) {
                    Launcher.this.mFestivalView.setFestivalIntent(intent);
                    Launcher.this.mFestivalView.setVisibility(0);
                    return;
                }
                return;
            }
            if (Objects.equals(action, FestivalImageView.ACTION_HIDE_FESTIVAL)) {
                if (Launcher.this.mFestivalView != null) {
                    Launcher.this.mFestivalView.setVisibility(8);
                }
            } else if (Objects.equals(action, Const.ACTION_CHECK_ITEM_BROAD)) {
                Launcher.this.getWidgetItemInfo();
            } else if (Objects.equals(action, Const.ACTION_SHOW_WIDGET)) {
                Launcher.this.mStateManager.goToState(LauncherState.NORMAL, true);
            } else if (Objects.equals(action, Const.ACTION_HIDE_WIDGET)) {
                Launcher.this.mStateManager.goToState(LauncherState.WORKSPACE_HIDE_STATE, true);
            }
        }
    };
    private final Observer<Boolean> mHvacState = new Observer() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda6
        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            MLog.e(Launcher.TAG, "onChanged: " + ((Boolean) obj));
        }
    };
    final WallpaperRepository.OnWallpaperChangedListener mOnWallpaperChangedListener = new WallpaperRepository.OnWallpaperChangedListener() { // from class: com.android.launcher3.Launcher.9
        @Override // com.mega.launcher.wallpaper.WallpaperRepository.OnWallpaperChangedListener
        public void onWallpaperChanged(List<WallpaperInfo> wallpaperInfos) {
            MLog.d(Launcher.TAG, "onWallpaperChanged: " + wallpaperInfos);
            Launcher.this.mImageDragView.setVisibility(0);
            Launcher.this.mLandmarkWallpaperView.setVisibility(8);
            Launcher.this.mLandmarkWallpaperView.stop();
            Launcher.this.mLiveWallpaperView.setVisibility(8);
            Launcher.this.mLiveWallpaperView.stop();
            Launcher.this.showWallpapers(wallpaperInfos, false);
        }

        @Override // com.mega.launcher.wallpaper.WallpaperRepository.OnWallpaperChangedListener
        public void onNewWallpaper(List<WallpaperInfo> wallpaperInfos, WallpaperInfo newWallpaperInfo) {
            MLog.d(Launcher.TAG, "onNewWallpaper: " + wallpaperInfos + " current=" + newWallpaperInfo);
            Launcher.this.mImageDragView.setVisibility(0);
            Launcher.this.mLandmarkWallpaperView.setVisibility(8);
            Launcher.this.mLandmarkWallpaperView.stop();
            Launcher.this.mLiveWallpaperView.setVisibility(8);
            Launcher.this.mLiveWallpaperView.stop();
            Launcher.this.mCurWallpaperInfo = newWallpaperInfo;
            Launcher.this.showWallpapers(wallpaperInfos, false);
        }

        @Override // com.mega.launcher.wallpaper.WallpaperRepository.OnWallpaperChangedListener
        public void onLiveWallpaperChanged(WallpaperInfo liveWallpaper, boolean isInit) {
            if (!Launcher.this.mIgnoreLiveWallpaperInitCallback || !isInit) {
                Launcher.this.mImageDragView.setVisibility(8);
                Launcher.this.mLiveWallpaperView.setVisibility(0);
                Launcher.this.mLiveWallpaperView.setWallpaper(liveWallpaper, "changed");
                Launcher.this.mLandmarkWallpaperView.setVisibility(8);
                Launcher.this.mLandmarkWallpaperView.stop();
                return;
            }
            MLog.d(Launcher.TAG, "onLiveWallpaperChanged: ignore");
        }

        @Override // com.mega.launcher.wallpaper.WallpaperRepository.OnWallpaperChangedListener
        public void onLandmarkWallpaperChanged() {
            Launcher.this.mImageDragView.setVisibility(8);
            Launcher.this.mLiveWallpaperView.setVisibility(8);
            Launcher.this.mLiveWallpaperView.stop();
            Launcher.this.mLandmarkWallpaperView.setVisibility(0);
            Launcher.this.mLandmarkWallpaperView.start();
        }
    };

    public interface OnResumeCallback {
        void onLauncherResume();
    }

    private TouchController getHideWorkspaceTouchController() {
        return this.mHideWorkspaceTouchController;
    }

    private void setWorkspaceLoading(boolean value) {
        this.mWorkspaceLoading = value;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindPredictedItems(List<AppInfo> appInfos, IntArray ranks) {
    }

    public void clearPendingExecutor(ViewOnDrawExecutor executor) {
        if (this.mPendingExecutor == executor) {
            this.mPendingExecutor = null;
        }
    }

    public void folderConvertedToItem(Folder folder, WorkspaceItemInfo itemInfo) {
    }

    public void folderCreatedFromItem(Folder folder, WorkspaceItemInfo itemInfo) {
    }

    @Override // com.android.launcher3.views.ActivityContext
    public LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public LauncherAppTransitionManager getAppTransitionManager() {
        return this.mAppTransitionManager;
    }

    public LauncherAppWidgetHost getAppWidgetHost() {
        return this.mAppWidgetHost;
    }

    public WallpaperInfo getCurWallpaperInfo() {
        return this.mCurWallpaperInfo;
    }

    public DragController getDragController() {
        return this.mDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DragLayer getDragLayer() {
        return this.mDragLayer;
    }

    public DropTargetBar getDropTargetBar() {
        return null;
    }

    public Hotseat getHotseat() {
        return this.mHotseat;
    }

    public LauncherModel getModel() {
        return this.mModel;
    }

    public ModelWriter getModelWriter() {
        return this.mModelWriter;
    }

    public float[] getNormalOverviewScaleAndOffset() {
        return new float[]{1.0f, 0.0f};
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public <T extends View> T getOverviewPanel() {
        return (T) this.mOverviewPanel;
    }

    public PopupDataProvider getPopupDataProvider() {
        return this.mPopupDataProvider;
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public StateManager<LauncherState> getStateManager() {
        return this.mStateManager;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public WallpaperBlurEngine getWallpaperBlurEngine() {
        return this.mWallpaperBlurEngine;
    }

    public Workspace getWorkspace() {
        return this.mWorkspace;
    }

    protected void handlePendingActivityRequest() {
    }

    boolean isHotseatLayout(View layout) {
        Hotseat hotseat = this.mHotseat;
        return hotseat != null && layout == hotseat;
    }

    public boolean isTouchInProgress() {
        return this.mTouchInProgress;
    }

    public boolean isWorkspaceLoading() {
        return this.mWorkspaceLoading;
    }

    public boolean isWorkspaceLocked() {
        return this.mWorkspaceLoading || this.mPendingRequestArgs != null;
    }

    public void onDragLayerHierarchyChanged() {
    }

    public void setPageToBindSynchronously(int page) {
        this.mPageToBindSynchronously = page;
    }

    public void setWaitingForResult(PendingRequestArgs args) {
        this.mPendingRequestArgs = args;
    }

    public void useFadeOutAnimationForLauncherStart(CancellationSignal signal) {
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        LauncherTiming.note("Launcher", "onCreate start");
        Object objBeginSection = TraceHelper.INSTANCE.beginSection(ON_CREATE_EVT, 5);
        super.onCreate(savedInstanceState);
        MLog.d(TAG, "onCreate: start. hashCode " + hashCode());
        this.mOldConfig = new Configuration(getResources().getConfiguration());
        LauncherAppState launcherAppState = LauncherAppState.getInstance(this);
        this.mModel = launcherAppState.getModel();
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.getInvariantDeviceProfile();
        initDeviceProfile(invariantDeviceProfile);
        invariantDeviceProfile.addOnChangeListener(this);
        this.mIconCache = launcherAppState.getIconCache();
        this.mAccessibilityDelegate = new LauncherAccessibilityDelegate(this);
        this.mDragController = new DragController(this);
        this.mHideWorkspaceTouchController = new HideWorkspaceTouchController(this);
        this.mStateManager = new StateManager<>(this, LauncherState.NORMAL);
        this.mAppWidgetManager = new WidgetManagerHelper(this);
        LauncherAppWidgetHost launcherAppWidgetHost = new LauncherAppWidgetHost(this, new IntConsumer() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda16
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                this.f$0.m30lambda$onCreate$1$comandroidlauncher3Launcher(i);
            }
        });
        this.mAppWidgetHost = launcherAppWidgetHost;
        launcherAppWidgetHost.startListening();
        this.mWallpaperBlurEngine = new WallpaperBlurEngine(this);
        inflateRootView(R.layout.launcher);
        setupViews();
        this.mRedHotModel = new RedHotModel(this, this.mWorkspace);
        setupWallpaperViewpagerView();
        initWallpaper();
        postOnPreDrawOnce(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m32lambda$onCreate$3$comandroidlauncher3Launcher();
            }
        });
        this.mPopupDataProvider = new PopupDataProvider(new Consumer() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda18
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.updateNotificationDots((Predicate) obj);
            }
        });
        LauncherAppTransitionManager launcherAppTransitionManagerNewInstance = LauncherAppTransitionManager.newInstance(this);
        this.mAppTransitionManager = launcherAppTransitionManagerNewInstance;
        launcherAppTransitionManagerNewInstance.registerRemoteAnimations();
        boolean zHandleCreate = ACTIVITY_TRACKER.handleCreate(this);
        if (zHandleCreate && savedInstanceState != null) {
            savedInstanceState.remove(RUNTIME_STATE);
        }
        restoreState(savedInstanceState);
        this.mStateManager.reapplyState();
        this.mPageToBindSynchronously = savedInstanceState != null ? savedInstanceState.getInt(RUNTIME_STATE_CURRENT_SCREEN, -1) : -1;
        if (!this.mModel.addCallbacksAndLoad(this) && !zHandleCreate) {
            this.mDragLayer.getAlphaProperty(1).setValue(0.0f);
        }
        setContentView(getRootView());
        getRootView().dispatchInsets();
        getSystemUiController().updateUiState(0, Themes.getAttrBoolean(this, R.attr.isWorkspaceDarkText));
        TraceHelper.INSTANCE.endSection(objBeginSection);
        registerReceivers();
        HvacObserver hvacObserver = new HvacObserver(this);
        this.mHvacObserver = hvacObserver;
        hvacObserver.observeForever(this.mHvacState);
        sLauncher = this;
        MLog.d(TAG, "onCreate: end. hashCode " + hashCode());
        LifecycleNotifier.send(this, 1);
        LauncherTiming.note("Launcher", "onCreate end");
    }

    /* JADX INFO: renamed from: lambda$onCreate$1$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m30lambda$onCreate$1$comandroidlauncher3Launcher(int i) {
        getWorkspace().removeWidget(i);
    }

    /* JADX INFO: renamed from: lambda$onCreate$3$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m32lambda$onCreate$3$comandroidlauncher3Launcher() {
        this.mDragLayer.postDelayed(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m31lambda$onCreate$2$comandroidlauncher3Launcher();
            }
        }, 1000L);
    }

    /* JADX INFO: renamed from: lambda$onCreate$2$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m31lambda$onCreate$2$comandroidlauncher3Launcher() {
        if (CarControlModel.getInstance().isLauncherShowCalled()) {
            return;
        }
        LauncherTiming.note("Launcher", "notifyLauncherReady");
        CarControlModel.getInstance(this).notifyLauncherReady();
    }

    private void registerReceivers() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction(FestivalImageView.ACTION_SHOW_FESTIVAL);
        intentFilter.addAction(FestivalImageView.ACTION_HIDE_FESTIVAL);
        intentFilter.addAction("action.GO_MUSIC");
        intentFilter.addAction("action.GO_NAVI");
        intentFilter.addAction(Const.ACTION_CHECK_ITEM_BROAD);
        intentFilter.addAction(Const.ACTION_SHOW_WIDGET);
        intentFilter.addAction(Const.ACTION_HIDE_WIDGET);
        registerReceiver(this.mReceiver, intentFilter);
    }

    private void unregisterReceivers() {
        unregisterReceiver(this.mReceiver);
    }

    @Override // com.android.launcher3.BaseActivity
    protected void dispatchDeviceProfileChanged() {
        super.dispatchDeviceProfileChanged();
    }

    @Override // android.app.Activity
    public void onEnterAnimationComplete() {
        super.onEnterAnimationComplete();
        AbstractFloatingView.closeOpenViews(this, false, 4096);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        MLog.i(TAG, "onConfigurationChanged: " + Integer.toHexString(newConfig.diff(this.mOldConfig)) + " " + newConfig);
        this.mOldConfig.setTo(newConfig);
        super.onConfigurationChanged(newConfig);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode, Configuration newConfig) {
        super.onMultiWindowModeChanged(isInMultiWindowMode, newConfig);
        MLog.d(TAG, "onMultiWindowModeChanged: " + isInMultiWindowMode);
        this.mHandler.removeMessages(103);
        if (isInMultiWindowMode) {
            this.mHandler.sendEmptyMessageDelayed(103, StatefulActivity.HOME_ICON_DELAY);
        }
    }

    @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
    public void onIdpChanged(int changeFlags, InvariantDeviceProfile idp) {
        onIdpChanged(idp);
    }

    private void onIdpChanged(InvariantDeviceProfile idp) {
        this.mUserEventDispatcher = null;
        initDeviceProfile(idp);
        dispatchDeviceProfileChanged();
        reapplyUi();
        this.mDragLayer.recreateControllers();
        onSaveInstanceState(new Bundle());
        this.mModel.rebindCallbacks();
    }

    private void initDeviceProfile(InvariantDeviceProfile idp) {
        this.mDeviceProfile = idp.getDeviceProfile(this);
        if (isInMultiWindowMode()) {
            this.mDeviceProfile = this.mDeviceProfile.getMultiWindowProfile(this, getMultiWindowDisplaySize());
        }
        onDeviceProfileInitiated();
        this.mModelWriter = this.mModel.getWriter(getDeviceProfile().isVerticalBarLayout(), true);
    }

    public boolean isDraggingEnabled() {
        return !isWorkspaceLoading();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DotInfo getDotInfoForItem(ItemInfo info) {
        return this.mPopupDataProvider.getDotInfoForItem(info);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public DotInfo getDotInfoForItem(ActivityInfo info) {
        return this.mPopupDataProvider.getDotInfoForItem(info);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public void invalidateParent(ItemInfo info) {
        if (info.container >= 0) {
            View homescreenIconByItemId = getWorkspace().getHomescreenIconByItemId(info.container);
            if ((homescreenIconByItemId instanceof FolderIcon) && (homescreenIconByItemId.getTag() instanceof FolderInfo) && new FolderGridOrganizer(getDeviceProfile().inv).setFolderInfo((FolderInfo) homescreenIconByItemId.getTag()).isItemInPreview(info.rank)) {
                homescreenIconByItemId.invalidate();
            }
        }
    }

    private int completeAdd(int requestCode, Intent intent, int appWidgetId, PendingRequestArgs info) {
        LauncherAppWidgetProviderInfo launcherAppWidgetInfo;
        int iEnsurePendingDropLayoutExists = info.screenId;
        if (info.container == -100) {
            iEnsurePendingDropLayoutExists = ensurePendingDropLayoutExists(info.screenId);
        }
        if (requestCode == 1) {
            completeAddShortcut(intent, info.container, iEnsurePendingDropLayoutExists, info.cellX, info.cellY, info);
            announceForAccessibility(R.string.item_added_to_workspace);
        } else if (requestCode == 5) {
            completeAddAppWidget(appWidgetId, info, null, null);
        } else if (requestCode == 12) {
            LauncherAppWidgetInfo launcherAppWidgetInfoCompleteRestoreAppWidget = completeRestoreAppWidget(appWidgetId, 4);
            if (launcherAppWidgetInfoCompleteRestoreAppWidget != null && (launcherAppWidgetInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(appWidgetId)) != null) {
                new WidgetAddFlowHandler(launcherAppWidgetInfo).startConfigActivity(this, launcherAppWidgetInfoCompleteRestoreAppWidget, 13);
            }
        } else if (requestCode == 13) {
            completeRestoreAppWidget(appWidgetId, 0);
        }
        return iEnsurePendingDropLayoutExists;
    }

    private void handleActivityResult(final int requestCode, final int resultCode, final Intent data) {
        if (isWorkspaceLoading()) {
            this.mPendingActivityResult = new ActivityResultInfo(requestCode, resultCode, data);
            return;
        }
        this.mPendingActivityResult = null;
        final PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        setWaitingForResult(null);
        if (pendingRequestArgs == null) {
            return;
        }
        int widgetId = pendingRequestArgs.getWidgetId();
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.Launcher.2
            @Override // java.lang.Runnable
            public void run() {
                Launcher.this.mStateManager.goToState(LauncherState.NORMAL, 500L);
            }
        };
        if (requestCode == 11) {
            int intExtra = data != null ? data.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, -1) : -1;
            if (resultCode == 0) {
                completeTwoStageWidgetDrop(0, intExtra, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, runnable);
                return;
            } else {
                if (resultCode == -1) {
                    addAppWidgetImpl(intExtra, pendingRequestArgs, null, pendingRequestArgs.getWidgetHandler(), 500);
                    return;
                }
                return;
            }
        }
        if (requestCode == 9 || requestCode == 5) {
            final int intExtra2 = data != null ? data.getIntExtra(LauncherSettings.Favorites.APPWIDGET_ID, -1) : -1;
            if (intExtra2 < 0) {
                intExtra2 = widgetId;
            }
            if (intExtra2 < 0 || resultCode == 0) {
                Log.e(TAG, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity.");
                completeTwoStageWidgetDrop(0, intExtra2, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m29lambda$handleActivityResult$4$comandroidlauncher3Launcher();
                    }
                });
                return;
            } else {
                if (pendingRequestArgs.container == -100) {
                    pendingRequestArgs.screenId = ensurePendingDropLayoutExists(pendingRequestArgs.screenId);
                }
                final CellLayout screenWithId = this.mWorkspace.getScreenWithId(pendingRequestArgs.screenId);
                screenWithId.setDropPending(true);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, new Runnable() { // from class: com.android.launcher3.Launcher.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Launcher.this.completeTwoStageWidgetDrop(resultCode, intExtra2, pendingRequestArgs);
                        screenWithId.setDropPending(false);
                    }
                });
                return;
            }
        }
        if (requestCode == 13 || requestCode == 12) {
            if (resultCode == -1) {
                completeAdd(requestCode, data, widgetId, pendingRequestArgs);
                return;
            }
            return;
        }
        if (requestCode == 1) {
            if (resultCode == -1 && pendingRequestArgs.container != -1) {
                completeAdd(requestCode, data, -1, pendingRequestArgs);
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, runnable);
            } else if (resultCode == 0) {
                this.mWorkspace.removeExtraEmptyScreenDelayed(500, false, runnable);
            }
        }
        this.mDragLayer.clearAnimatedView();
    }

    /* JADX INFO: renamed from: lambda$handleActivityResult$4$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m29lambda$handleActivityResult$4$comandroidlauncher3Launcher() {
        getStateManager().goToState(LauncherState.NORMAL);
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onActivityResult(final int requestCode, final int resultCode, final Intent data) {
        this.mPendingActivityRequestCode = -1;
        handleActivityResult(requestCode, resultCode, data);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        if (requestCode == 14 && pendingRequestArgs != null && pendingRequestArgs.getRequestCode() == 14) {
            setWaitingForResult(null);
            CellLayout cellLayout = getCellLayout(pendingRequestArgs.container, pendingRequestArgs.screenId);
            View childAt = cellLayout != null ? cellLayout.getChildAt(pendingRequestArgs.cellX, pendingRequestArgs.cellY) : null;
            Intent pendingIntent = pendingRequestArgs.getPendingIntent();
            if (grantResults.length > 0 && grantResults[0] == 0) {
                startActivitySafely(childAt, pendingIntent, null, null);
            } else {
                ToastViewUtils.makeText(this, getString(R.string.msg_no_phone_permission, new Object[]{getString(R.string.derived_app_name)}), 3000L).show();
            }
        }
    }

    private int ensurePendingDropLayoutExists(int screenId) {
        if (this.mWorkspace.getScreenWithId(screenId) != null) {
            return screenId;
        }
        this.mWorkspace.addExtraEmptyScreen();
        return this.mWorkspace.commitExtraEmptyScreen();
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
    void completeTwoStageWidgetDrop(final int resultCode, final int appWidgetId, final PendingRequestArgs requestArgs) {
        int i;
        int i2;
        Runnable runnable;
        AppWidgetHostView appWidgetHostView;
        CellLayout screenWithId = this.mWorkspace.getScreenWithId(requestArgs.screenId);
        if (resultCode == -1) {
            final AppWidgetHostView appWidgetHostViewCreateView = this.mAppWidgetHost.createView((Context) this, appWidgetId, requestArgs.getWidgetHandler().getProviderInfo(this));
            appWidgetHostView = appWidgetHostViewCreateView;
            i2 = 3;
            runnable = new Runnable() { // from class: com.android.launcher3.Launcher.4
                @Override // java.lang.Runnable
                public void run() {
                    Launcher.this.completeAddAppWidget(appWidgetId, requestArgs, appWidgetHostViewCreateView, null);
                    Launcher.this.mStateManager.goToState(LauncherState.NORMAL, 500L);
                }
            };
        } else {
            if (resultCode == 0) {
                this.mAppWidgetHost.deleteAppWidgetId(appWidgetId);
                i = 4;
            } else {
                i = 0;
            }
            i2 = i;
            runnable = null;
            appWidgetHostView = null;
        }
        if (this.mDragLayer.getAnimatedView() != null) {
            this.mWorkspace.animateWidgetDrop(requestArgs, screenWithId, (DragView) this.mDragLayer.getAnimatedView(), runnable, i2, appWidgetHostView, true);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    protected void onStart() {
        Object objBeginSection = TraceHelper.INSTANCE.beginSection(ON_START_EVT, 5);
        super.onStart();
        MLog.d(TAG, "onStart() called " + hashCode());
        TraceHelper.INSTANCE.endSection(objBeginSection);
        LifecycleNotifier.send(this, 2);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        MLog.d(TAG, "onStop() called " + hashCode());
        NotificationListener.removeNotificationsChangedListener();
        LifecycleNotifier.send(this, 5);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    protected void onDeferredResumed() {
        getUserEventDispatcher().startSession();
        AppLaunchTracker.INSTANCE.m166x39265fe7(this).onReturnedToHome();
        InstallShortcutReceiver.disableAndFlushInstallQueue(1, this);
        NotificationListener.setNotificationsChangedListener(this.mPopupDataProvider);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetStart(LauncherState state) {
        super.onStateSetStart(state);
        MLog.d(TAG, "onStateSetStart: " + state);
        addActivityFlags(64);
        if (state.hasFlag(LauncherState.FLAG_CLOSE_POPUPS)) {
            AbstractFloatingView.closeAllOpenViews(this, !state.hasFlag(1));
        }
        if (state == LauncherState.SPRING_LOADED || state == LauncherState.WIDGET_SPRING_LOADED) {
            InstallShortcutReceiver.enableInstallQueue(4);
            this.mWorkspace.showPageIndicatorAtCurrentScroll();
            this.mWorkspace.setClipChildren(false);
        }
        if (this.mWorkspace.getPageIndicator() != null) {
            this.mWorkspace.getPageIndicator().setShouldAutoHide(!state.hasFlag(LauncherState.FLAG_MULTI_PAGE));
        }
        if (state == LauncherState.WIDGET_SPRING_LOADED) {
            setWidgetsTableBackgroundVisible(true);
        }
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    public void onStateSetEnd(LauncherState state) {
        super.onStateSetEnd(state);
        MLog.d(TAG, "onStateSetEnd: " + state);
        getWorkspace().setClipChildren(!state.hasFlag(LauncherState.FLAG_MULTI_PAGE));
        finishAutoCancelActionMode();
        removeActivityFlags(64);
        getWindow().getDecorView().sendAccessibilityEvent(32);
        AccessibilityManagerCompat.sendStateEventToTest(this, state.ordinal);
        if (state == LauncherState.NORMAL) {
            InstallShortcutReceiver.disableAndFlushInstallQueue(4, this);
        }
        if (state != LauncherState.WIDGET_SPRING_LOADED) {
            setWidgetsTableBackgroundVisible(false);
        }
        this.mWorkspace.applyEditState();
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity, com.android.launcher3.BaseActivity, android.app.Activity
    protected void onResume() {
        LauncherTiming.note("Launcher", "onResume start");
        Object objBeginSection = TraceHelper.INSTANCE.beginSection(ON_RESUME_EVT, 5);
        super.onResume();
        MLog.d(TAG, "onResume() called " + hashCode());
        if (!this.mOnResumeCallbacks.isEmpty()) {
            ArrayList arrayList = new ArrayList(this.mOnResumeCallbacks);
            this.mOnResumeCallbacks.clear();
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((OnResumeCallback) arrayList.get(size)).onLauncherResume();
            }
            arrayList.clear();
        }
        LifecycleNotifier.send(this, 3);
        TraceHelper.INSTANCE.endSection(objBeginSection);
        LauncherTiming.note("Launcher", "onResume end");
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    protected void onPause() {
        InstallShortcutReceiver.enableInstallQueue(1);
        super.onPause();
        this.mHandler.removeMessages(100);
        this.mDragController.cancelDrag();
        this.mLastTouchUpTime = -1L;
        LifecycleNotifier.send(this, 4);
    }

    public boolean isBackToLauncherFromDockHomeIcon() {
        return this.mHandler.hasMessages(100);
    }

    public boolean isBackToLauncherByFiveGrab() {
        return this.mHandler.hasMessages(101);
    }

    public boolean isBackToLauncherByVoiceExitApp() {
        return this.mHandler.hasMessages(102);
    }

    private void restoreState(Bundle savedState) {
        if (savedState == null) {
            return;
        }
        LauncherState launcherState = LauncherState.values()[savedState.getInt(RUNTIME_STATE, LauncherState.NORMAL.ordinal)];
        NonConfigInstance nonConfigInstance = (NonConfigInstance) getLastNonConfigurationInstance();
        boolean z = (nonConfigInstance == null || (nonConfigInstance.config.diff(this.mOldConfig) & 512) == 0) ? false : true;
        MLog.d(TAG, "restoreState() state = [" + launcherState + "]");
        if (z || !launcherState.shouldDisableRestore()) {
            this.mStateManager.goToState(launcherState, false);
        }
        PendingRequestArgs pendingRequestArgs = (PendingRequestArgs) savedState.getParcelable(RUNTIME_STATE_PENDING_REQUEST_ARGS);
        if (pendingRequestArgs != null) {
            setWaitingForResult(pendingRequestArgs);
        }
        this.mPendingActivityRequestCode = savedState.getInt(RUNTIME_STATE_PENDING_REQUEST_CODE);
        this.mPendingActivityResult = (ActivityResultInfo) savedState.getParcelable(RUNTIME_STATE_PENDING_ACTIVITY_RESULT);
        final SparseArray sparseParcelableArray = savedState.getSparseParcelableArray(RUNTIME_STATE_WIDGET_PANEL);
        if (sparseParcelableArray != null) {
            postOnPreDrawOnce(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m33lambda$restoreState$5$comandroidlauncher3Launcher(sparseParcelableArray);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$restoreState$5$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m33lambda$restoreState$5$comandroidlauncher3Launcher(SparseArray sparseArray) {
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16);
        if (openView != null) {
            openView.restoreHierarchyState(sparseArray);
        } else {
            WidgetsTableSheet.show(this, false).restoreHierarchyState(sparseArray);
        }
    }

    private void postOnPreDrawOnce(final Runnable task) {
        DragLayer dragLayer = this.mDragLayer;
        if (dragLayer == null || task == null) {
            return;
        }
        dragLayer.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.android.launcher3.Launcher.5
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                Launcher.this.mDragLayer.getViewTreeObserver().removeOnPreDrawListener(this);
                task.run();
                return true;
            }
        });
    }

    protected void setupViews() {
        DragLayer dragLayer = (DragLayer) findViewById(R.id.drag_layer);
        this.mDragLayer = dragLayer;
        Workspace workspace = (Workspace) dragLayer.findViewById(R.id.workspace);
        this.mWorkspace = workspace;
        workspace.initParentViews(this.mDragLayer);
        this.mOverviewPanel = findViewById(R.id.overview_panel);
        Hotseat hotseat = (Hotseat) findViewById(R.id.hotseat);
        this.mHotseat = hotseat;
        hotseat.setWorkspace(this.mWorkspace);
        this.mDragLayer.setup(this.mDragController, this.mWorkspace);
        this.mHideWorkspaceTouchController.setup(this.mWorkspace);
        this.mWorkspace.setup(this.mDragController);
        this.mWorkspace.bindAndInitFirstWorkspaceScreen(null);
        this.mDragController.addDragListener(this.mWorkspace);
        this.mHotseat.setVisibility(8);
        this.mWidgetsTableBackgroundView = this.mDragLayer.findViewById(R.id.folder_bg);
        this.mImageDragView = (ImageDragView) this.mDragLayer.findViewById(R.id.view_wallpaper);
        this.mLiveWallpaperView = (LiveWallpaperView) this.mDragLayer.findViewById(R.id.live_wallpaper_view);
        this.mLandmarkWallpaperView = (LandmarkWallpaperView) this.mDragLayer.findViewById(R.id.landmark_wallpaper_view);
        this.mFestivalView = (FestivalImageView) findViewById(R.id.festival_view);
    }

    View createShortcut(WorkspaceItemInfo info) {
        Workspace workspace = this.mWorkspace;
        return createShortcut((ViewGroup) workspace.getChildAt(workspace.getCurrentPage()), info);
    }

    public View createShortcut(ViewGroup parent, WorkspaceItemInfo info) {
        BubbleTextView bubbleTextView = (BubbleTextView) LayoutInflater.from(parent.getContext()).inflate(R.layout.app_icon, parent, false);
        if (info.itemType == 0) {
            info.updateLabel(getPackageManager());
        }
        bubbleTextView.applyFromWorkspaceItem(info);
        bubbleTextView.setOnClickListener(ItemClickHandler.INSTANCE);
        return bubbleTextView;
    }

    private void completeAddShortcut(Intent data, int container, int screenId, int cellX, int cellY, PendingRequestArgs args) {
        WorkspaceItemInfo workspaceItemInfo;
        View view;
        int[] iArr;
        if (args.getRequestCode() != 1 || args.getPendingIntent().getComponent() == null) {
            return;
        }
        int[] iArr2 = this.mTmpAddItemCellCoordinates;
        CellLayout cellLayout = getCellLayout(container, screenId);
        WorkspaceItemInfo workspaceItemInfoCreateWorkspaceItemFromPinItemRequest = Utilities.ATLEAST_OREO ? PinRequestHelper.createWorkspaceItemFromPinItemRequest(this, PinRequestHelper.getPinItemRequest(data), 0L) : null;
        if (workspaceItemInfoCreateWorkspaceItemFromPinItemRequest == null) {
            WorkspaceItemInfo workspaceItemInfoFromShortcutIntent = Process.myUserHandle().equals(args.user) ? InstallShortcutReceiver.fromShortcutIntent(this, data) : null;
            if (workspaceItemInfoFromShortcutIntent == null) {
                Log.e(TAG, "Unable to parse a valid custom shortcut result");
                return;
            } else {
                if (!new PackageManagerHelper(this).hasPermissionForActivity(workspaceItemInfoFromShortcutIntent.intent, args.getPendingIntent().getComponent().getPackageName())) {
                    Log.e(TAG, "Ignoring malicious intent " + workspaceItemInfoFromShortcutIntent.intent.toUri(0));
                    return;
                }
                workspaceItemInfo = workspaceItemInfoFromShortcutIntent;
            }
        } else {
            workspaceItemInfo = workspaceItemInfoCreateWorkspaceItemFromPinItemRequest;
        }
        if (container < 0) {
            View viewCreateShortcut = createShortcut(workspaceItemInfo);
            if (cellX >= 0 && cellY >= 0) {
                iArr2[0] = cellX;
                iArr2[1] = cellY;
                DropTarget.DragObject dragObject = new DropTarget.DragObject(getApplicationContext());
                dragObject.dragInfo = workspaceItemInfo;
                view = viewCreateShortcut;
                if (this.mWorkspace.createUserFolderIfNecessary(viewCreateShortcut, container, cellLayout, iArr2, 0.0f, true, dragObject)) {
                    return;
                }
                iArr = iArr2;
                if (this.mWorkspace.addToExistingFolderIfNecessary(view, cellLayout, iArr2, 0.0f, dragObject, true)) {
                    return;
                }
            } else {
                view = viewCreateShortcut;
                iArr = iArr2;
                if (!cellLayout.findCellForSpan(iArr, 1, 1)) {
                    this.mWorkspace.onNoCellFound(cellLayout);
                    return;
                }
            }
            getModelWriter().addItemToDatabase(workspaceItemInfo, container, screenId, iArr[0], iArr[1]);
            this.mWorkspace.addInScreen(view, workspaceItemInfo);
            return;
        }
        WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
        FolderIcon folderIconFindFolderIcon = findFolderIcon(container);
        if (folderIconFindFolderIcon != null) {
            ((FolderInfo) folderIconFindFolderIcon.getTag()).add(workspaceItemInfo2, args.rank, false);
        } else {
            Log.e(TAG, "Could not find folder with id " + container + " to add shortcut.");
        }
    }

    public FolderIcon findFolderIcon(final int folderIconId) {
        return (FolderIcon) this.mWorkspace.getHomescreenIconByItemId(folderIconId);
    }

    void completeAddAppWidget(int appWidgetId, ItemInfo itemInfo, AppWidgetHostView hostView, LauncherAppWidgetProviderInfo appWidgetInfo) {
        if (appWidgetInfo == null) {
            appWidgetInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(appWidgetId);
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(appWidgetId, appWidgetInfo.provider);
        launcherAppWidgetInfo.spanX = itemInfo.spanX;
        launcherAppWidgetInfo.spanY = itemInfo.spanY;
        launcherAppWidgetInfo.minSpanX = itemInfo.minSpanX;
        launcherAppWidgetInfo.minSpanY = itemInfo.minSpanY;
        launcherAppWidgetInfo.user = appWidgetInfo.getProfile();
        launcherAppWidgetInfo.runtime = new Bundle(itemInfo.runtime);
        getModelWriter().addItemToDatabase(launcherAppWidgetInfo, itemInfo.container, itemInfo.screenId, itemInfo.cellX, itemInfo.cellY);
        if (hostView == null) {
            hostView = this.mAppWidgetHost.createView((Context) this, appWidgetId, appWidgetInfo);
        }
        hostView.setVisibility(0);
        prepareAppWidget(hostView, launcherAppWidgetInfo);
        this.mWorkspace.addInScreen(hostView, launcherAppWidgetInfo);
        announceForAccessibility(R.string.item_added_to_workspace);
        handleItemInfoRuntimeWhenAdd(hostView, itemInfo);
    }

    private void handleItemInfoRuntimeWhenAdd(final View view, final ItemInfo itemInfo) {
        if (itemInfo.runtime.containsKey(ItemInfo.RT_SHOW_DELAY)) {
            long j = itemInfo.runtime.getLong(ItemInfo.RT_SHOW_DELAY);
            if (j >= 0) {
                view.setAlpha(0.0f);
                view.postDelayed(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        Launcher.lambda$handleItemInfoRuntimeWhenAdd$6(itemInfo, view);
                    }
                }, j);
            }
        }
    }

    static /* synthetic */ void lambda$handleItemInfoRuntimeWhenAdd$6(ItemInfo itemInfo, View view) {
        if (itemInfo.runtime.containsKey(ItemInfo.RT_SHOW_DELAY)) {
            view.setAlpha(1.0f);
        }
    }

    private void prepareAppWidget(AppWidgetHostView hostView, LauncherAppWidgetInfo item) {
        hostView.setTag(item);
        item.onBindAppWidget(this, hostView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNotificationDots(Predicate<PackageUserKey> updatedDots) {
        this.mWorkspace.updateNotificationDots(updatedDots);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        closeContextMenu();
    }

    @Override // android.app.Activity
    public Object onRetainNonConfigurationInstance() {
        NonConfigInstance nonConfigInstance = new NonConfigInstance();
        nonConfigInstance.config = new Configuration(this.mOldConfig);
        return nonConfigInstance;
    }

    public int getOrientation() {
        return this.mOldConfig.orientation;
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            Log.d(TestProtocol.PERMANENT_DIAG_TAG, "Launcher.onNewIntent: " + intent);
        }
        Object objBeginSection = TraceHelper.INSTANCE.beginSection(ON_NEW_INTENT_EVT);
        super.onNewIntent(intent);
        boolean z = hasWindowFocus() && (intent.getFlags() & 4194304) != 4194304;
        boolean z2 = z && isInState(LauncherState.NORMAL) && AbstractFloatingView.getTopOpenView(this) == null;
        boolean zEquals = "android.intent.action.MAIN".equals(intent.getAction());
        boolean zHandleNewIntent = ACTIVITY_TRACKER.handleNewIntent(this, intent);
        boolean booleanExtra = intent.getBooleanExtra(EXTRA_LAUNCHER_START_FROM, false);
        if (booleanExtra) {
            this.mHandler.removeMessages(100);
            this.mHandler.sendEmptyMessageDelayed(100, StatefulActivity.HOME_ICON_DELAY);
        }
        if (intent.getBooleanExtra(EXTRA_FROM_HOME_KEY, false)) {
            this.mHandler.removeMessages(101);
            this.mHandler.sendEmptyMessageDelayed(101, StatefulActivity.HOME_ICON_DELAY);
        }
        if (intent.getIntExtra(EXTRA_FROM_VOICE_EXIT_APP, 0) != 0) {
            this.mHandler.removeMessages(102);
            this.mHandler.sendEmptyMessageDelayed(102, StatefulActivity.HOME_ICON_DELAY);
        }
        boolean zIsShown = this.mHvacObserver.isShown();
        MLog.d(TAG, "onNewIntent: isActionMain = " + zEquals + ", internalStateHandled = " + zHandleNewIntent + ", alreadyOnHome = " + z + ", shouldMoveToDefaultScreen = " + z2 + ", fromLauncherIcon = " + booleanExtra + ", hvacShown = " + zIsShown);
        if (zEquals) {
            if (!zHandleNewIntent) {
                if (zIsShown) {
                    this.mStateManager.goToState(LauncherState.NORMAL, this.mStateManager.shouldAnimateStateChange(), new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.handlePendingActivityRequest();
                        }
                    });
                    this.mHandler.postDelayed(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            BlurRenderWatcher.getInstance().blur();
                        }
                    }, 400L);
                } else if (z) {
                    if (isInState(LauncherState.NORMAL)) {
                        if (!this.mWorkspace.isInLeftEdge()) {
                            this.mWorkspace.toStartEdge();
                        } else if (booleanExtra) {
                            this.mStateManager.goToState(LauncherState.WORKSPACE_HIDE_STATE, true);
                        }
                    } else if (booleanExtra) {
                        cancelMotionEvent();
                        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16);
                        MLog.d(TAG, "onNewIntent: widgets=" + openView);
                        if (openView != null) {
                            openView.close(true);
                        } else {
                            this.mStateManager.goToState(LauncherState.NORMAL, this.mStateManager.shouldAnimateStateChange(), new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.handlePendingActivityRequest();
                                }
                            });
                        }
                        this.mHandler.postDelayed(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda11
                            @Override // java.lang.Runnable
                            public final void run() {
                                BlurRenderWatcher.getInstance().blur();
                            }
                        }, 400L);
                    }
                }
                if (z2 && !this.mWorkspace.isHandlingTouch()) {
                    final Workspace workspace = this.mWorkspace;
                    Objects.requireNonNull(workspace);
                    workspace.post(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda12
                        @Override // java.lang.Runnable
                        public final void run() {
                            workspace.moveToDefaultScreen();
                        }
                    });
                }
            }
            UserEventDispatcher userEventDispatcher = getUserEventDispatcher();
            LauncherLogProto.Target targetNewContainerTarget = LoggerUtils.newContainerTarget(((LauncherState) this.mStateManager.getState()).containerType);
            targetNewContainerTarget.pageIndex = this.mWorkspace.getCurrentPage();
            userEventDispatcher.logActionCommand(0, targetNewContainerTarget, LoggerUtils.newContainerTarget(1));
            hideKeyboard();
            handleGestureContract(intent);
        } else if ("android.intent.action.ALL_APPS".equals(intent.getAction())) {
            MLog.d(TAG, "Not supported");
        }
        TraceHelper.INSTANCE.endSection(objBeginSection);
    }

    protected void handleGestureContract(Intent intent) {
        GestureNavContract gestureNavContractFromIntent = GestureNavContract.fromIntent(intent);
        if (gestureNavContractFromIntent != null) {
            AbstractFloatingView.closeOpenViews(this, false, 4096);
            FloatingSurfaceView.show(this, gestureNavContractFromIntent);
        }
    }

    public void hideKeyboard() {
        View viewPeekDecorView = getWindow().peekDecorView();
        if (viewPeekDecorView == null || viewPeekDecorView.getWindowToken() == null) {
            return;
        }
        UiThreadHelper.hideKeyboardAsync(this, viewPeekDecorView.getWindowToken());
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle state) {
        super.onRestoreInstanceState(state);
        MLog.d(TAG, "onRestoreInstanceState() called with: state = [" + state + "]");
        this.mWorkspace.restoreInstanceStateForChild(this.mSynchronouslyBoundPage);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        if (this.mWorkspace.getChildCount() > 0) {
            outState.putInt(RUNTIME_STATE_CURRENT_SCREEN, this.mWorkspace.getNextPage());
        }
        outState.putInt(RUNTIME_STATE, ((LauncherState) this.mStateManager.getState()).ordinal);
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16);
        if (openView != null) {
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            openView.saveHierarchyState(sparseArray);
            outState.putSparseParcelableArray(RUNTIME_STATE_WIDGET_PANEL, sparseArray);
        } else {
            outState.remove(RUNTIME_STATE_WIDGET_PANEL);
        }
        AbstractFloatingView.closeOpenViews(this, false, 3467);
        finishAutoCancelActionMode();
        PendingRequestArgs pendingRequestArgs = this.mPendingRequestArgs;
        if (pendingRequestArgs != null) {
            outState.putParcelable(RUNTIME_STATE_PENDING_REQUEST_ARGS, pendingRequestArgs);
        }
        outState.putInt(RUNTIME_STATE_PENDING_REQUEST_CODE, this.mPendingActivityRequestCode);
        ActivityResultInfo activityResultInfo = this.mPendingActivityResult;
        if (activityResultInfo != null) {
            outState.putParcelable(RUNTIME_STATE_PENDING_ACTIVITY_RESULT, activityResultInfo);
        }
        super.onSaveInstanceState(outState);
        MLog.d(TAG, "onSaveInstanceState() called with: outState = [" + outState + "]");
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        MLog.d(TAG, "onDestroy() called " + hashCode());
        LifecycleNotifier.send(this, 6);
        ACTIVITY_TRACKER.onActivityDestroyed(this);
        this.mWorkspace.removeFolderListeners();
        unregisterReceivers();
        this.mModel.removeCallbacks(this);
        try {
            this.mAppWidgetHost.stopListening();
        } catch (NullPointerException e) {
            Log.w(TAG, "problem while stopping AppWidgetHost during Launcher destruction", e);
        }
        TextKeyListener.getInstance().release();
        clearPendingBinds();
        LauncherAppState.getIDP(this).removeOnChangeListener(this);
        this.mAppTransitionManager.unregisterRemoteAnimations();
        this.mRedHotModel.release();
        this.mHvacObserver.removeObserver(this.mHvacState);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int requestCode, Bundle options) {
        if (requestCode != -1) {
            this.mPendingActivityRequestCode = requestCode;
        }
        super.startActivityForResult(intent, requestCode, options);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int requestCode, Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, Bundle options) {
        if (requestCode != -1) {
            this.mPendingActivityRequestCode = requestCode;
        }
        try {
            super.startIntentSenderForResult(intent, requestCode, fillInIntent, flagsMask, flagsValues, extraFlags, options);
        } catch (IntentSender.SendIntentException unused) {
            throw new ActivityNotFoundException();
        }
    }

    @Override // android.app.Activity
    public void startSearch(String initialQuery, boolean selectInitialQuery, Bundle appSearchData, boolean globalSearch) {
        if (appSearchData == null) {
            new Bundle().putString("source", "launcher-search");
        }
        this.mStateManager.goToState(LauncherState.NORMAL);
    }

    void addAppWidgetFromDropImpl(int appWidgetId, ItemInfo info, AppWidgetHostView boundWidget, WidgetAddFlowHandler addFlowHandler) {
        addAppWidgetImpl(appWidgetId, info, boundWidget, addFlowHandler, 0);
    }

    void addAppWidgetImpl(int appWidgetId, ItemInfo info, AppWidgetHostView boundWidget, WidgetAddFlowHandler addFlowHandler, int delay) {
        MLog.d(TAG, "addAppWidgetImpl() called with: appWidgetId = [" + appWidgetId + "], info = [" + info + "], boundWidget = [" + boundWidget + "], addFlowHandler = [" + addFlowHandler + "], delay = [" + delay + "]");
        if (addFlowHandler.startConfigActivity(this, appWidgetId, info, 5)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.android.launcher3.Launcher.6
            @Override // java.lang.Runnable
            public void run() {
                MLog.e(Launcher.TAG, "Ignore go to normal state");
            }
        };
        completeAddAppWidget(appWidgetId, info, boundWidget, addFlowHandler.getProviderInfo(this));
        this.mWorkspace.removeExtraEmptyScreenDelayed(delay, false, runnable);
    }

    public void addPendingItem(PendingAddItemInfo info, int container, int screenId, int[] cell, int spanX, int spanY) {
        MLog.d(TAG, "addPendingItem() called with: info = [" + info + "], container = [" + container + "], screenId = [" + screenId + "], cell = [" + cell + "], spanX = [" + spanX + "], spanY = [" + spanY + "]");
        info.container = container;
        info.screenId = screenId;
        if (cell != null) {
            info.cellX = cell[0];
            info.cellY = cell[1];
        }
        info.spanX = spanX;
        info.spanY = spanY;
        int i = info.itemType;
        if (i != 0) {
            if (i == 1) {
                processShortcutFromDrop((PendingAddShortcutInfo) info);
            } else {
                if (i == 4 || i == 5) {
                    addAppWidgetFromDrop((PendingAddWidgetInfo) info);
                    return;
                }
                throw new IllegalStateException("Unknown item type: " + info.itemType);
            }
        }
    }

    private void processShortcutFromDrop(PendingAddShortcutInfo info) {
        setWaitingForResult(PendingRequestArgs.forIntent(1, new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(info.componentName), info));
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "start: processShortcutFromDrop");
        if (info.activityInfo.startConfigActivity(this, 1)) {
            return;
        }
        handleActivityResult(1, 0, null);
    }

    private void addAppWidgetFromDrop(PendingAddWidgetInfo info) {
        int iAllocateAppWidgetId;
        MLog.d(TAG, "addAppWidgetFromDrop() called with: info = [" + info + "]");
        AppWidgetHostView appWidgetHostView = info.boundWidget;
        WidgetAddFlowHandler handler = info.getHandler();
        if (appWidgetHostView != null) {
            getDragLayer().removeView(appWidgetHostView);
            addAppWidgetFromDropImpl(appWidgetHostView.getAppWidgetId(), info, appWidgetHostView, handler);
            info.boundWidget = null;
            return;
        }
        if (info.itemType == 5) {
            iAllocateAppWidgetId = CustomWidgetManager.INSTANCE.m166x39265fe7(this).getWidgetIdForCustomProvider(info.componentName);
        } else {
            iAllocateAppWidgetId = getAppWidgetHost().allocateAppWidgetId();
        }
        if (this.mAppWidgetManager.bindAppWidgetIdIfAllowed(iAllocateAppWidgetId, info.info, info.bindOptions)) {
            addAppWidgetFromDropImpl(iAllocateAppWidgetId, info, null, handler);
        } else {
            handler.startBindFlow(this, iAllocateAppWidgetId, info, 11);
        }
    }

    public FolderIcon addFolder(CellLayout layout, int container, final int screenId, int cellX, int cellY) {
        MLog.d(TAG, "addFolder() called with: layout = [" + layout + "], container = [" + container + "], screenId = [" + screenId + "], cellX = [" + cellX + "], cellY = [" + cellY + "]");
        FolderInfo folderInfo = new FolderInfo();
        getModelWriter().addItemToDatabase(folderInfo, container, screenId, cellX, cellY);
        FolderIcon folderIconInflateFolderAndIcon = FolderIcon.inflateFolderAndIcon(R.layout.folder_icon, this, layout, folderInfo);
        this.mWorkspace.addInScreen(folderIconInflateFolderAndIcon, folderInfo);
        this.mWorkspace.getParentCellLayoutForView(folderIconInflateFolderAndIcon).getShortcutsAndWidgets().measureChild(folderIconInflateFolderAndIcon);
        return folderIconInflateFolderAndIcon;
    }

    public boolean removeItem(View v, final ItemInfo itemInfo, boolean deleteFromDb) {
        return removeItem(v, itemInfo, deleteFromDb, true);
    }

    public boolean removeItem(View v, final ItemInfo itemInfo, boolean deleteFromDb, boolean updateWidgetTable) {
        MLog.d(TAG, "removeItem() called with: v = [" + v + "], itemInfo = [" + itemInfo + "], deleteFromDb = [" + deleteFromDb + "]");
        if (itemInfo instanceof WorkspaceItemInfo) {
            View homescreenIconByItemId = this.mWorkspace.getHomescreenIconByItemId(itemInfo.container);
            if (homescreenIconByItemId instanceof FolderIcon) {
                ((FolderInfo) homescreenIconByItemId.getTag()).remove((WorkspaceItemInfo) itemInfo, true);
            } else {
                this.mWorkspace.removeWorkspaceItem(v);
            }
            if (deleteFromDb) {
                getModelWriter().deleteItemFromDatabase(itemInfo);
            }
        } else if (itemInfo instanceof FolderInfo) {
            FolderInfo folderInfo = (FolderInfo) itemInfo;
            if (v instanceof FolderIcon) {
                ((FolderIcon) v).removeListeners();
            }
            this.mWorkspace.removeWorkspaceItem(v);
            if (deleteFromDb) {
                getModelWriter().deleteFolderAndContentsFromDatabase(folderInfo);
            }
        } else {
            if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
                return false;
            }
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            this.mWorkspace.removeWorkspaceItem(v);
            if (deleteFromDb) {
                getModelWriter().deleteWidgetInfo(launcherAppWidgetInfo, getAppWidgetHost());
            }
        }
        if (updateWidgetTable) {
            notifyWidgetRemoved(itemInfo);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        TestLogging.recordEvent(TestProtocol.SEQUENCE_MAIN, "Key event", event);
        return event.getKeyCode() == 3 || super.dispatchKeyEvent(event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action != 0) {
            if (action == 1) {
                this.mLastTouchUpTime = System.currentTimeMillis();
            } else if (action == 2) {
                setMotionEvent(ev);
            } else if (action == 3) {
            }
            this.mTouchInProgress = false;
        } else {
            long downTime = ev.getDownTime();
            long eventTime = ev.getEventTime();
            if (downTime != eventTime) {
                Utilities.setDownTime(ev, eventTime);
            }
            this.mTouchInProgress = true;
            this.mInterceptTouch = false;
            setMotionEvent(ev);
        }
        if (this.mInterceptTouch) {
            return true;
        }
        TestLogging.recordMotionEvent(TestProtocol.SEQUENCE_MAIN, "Touch event", ev);
        int action2 = ev.getAction();
        if (action2 == 0) {
            TestLogging.beginLauncherTouch(ev);
        }
        boolean zDispatchTouchEvent = super.dispatchTouchEvent(ev);
        if (action2 == 1 || action2 == 3) {
            TestLogging.endLauncherTouch(ev);
        }
        return zDispatchTouchEvent;
    }

    private void setMotionEvent(MotionEvent ev) {
        MotionEvent motionEvent = this.mLastMoveEvent;
        if (motionEvent != null) {
            motionEvent.recycle();
        }
        this.mLastMoveEvent = MotionEvent.obtain(ev);
    }

    private void cancelMotionEvent() {
        MotionEvent motionEventObtain;
        MLog.d(TAG, "cancelMotionEvent: mTouchInProgress=" + this.mTouchInProgress);
        if (this.mTouchInProgress) {
            MotionEvent motionEvent = this.mLastMoveEvent;
            if (motionEvent != null) {
                motionEventObtain = MotionEvent.obtain(motionEvent);
            } else {
                motionEventObtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
            }
            motionEventObtain.setAction(3);
            dispatchTouchEvent(motionEventObtain);
            this.mInterceptTouch = true;
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        MLog.d(TAG, "onBackPressed");
        if (finishAutoCancelActionMode()) {
            return;
        }
        if (this.mDragController.isDragging()) {
            MLog.d(TAG, "onBackPressed: cancelDrag");
            this.mDragController.cancelDrag();
            return;
        }
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView(this);
        if (topOpenView != null && topOpenView.onBackPressed()) {
            MLog.d(TAG, "onBackPressed: handled by AbstractFloatingView");
        } else {
            MLog.d(TAG, "onBackPressed: handled by StateManager");
            ((LauncherState) this.mStateManager.getState()).onBackPressed(this);
        }
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public ActivityOptions getActivityLaunchOptions(View v) {
        return this.mAppTransitionManager.getActivityLaunchOptions(this, v);
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    protected boolean onErrorStartingShortcut(Intent intent, ItemInfo info) {
        if (intent.getComponent() != null || !"android.intent.action.CALL".equals(intent.getAction()) || checkSelfPermission("android.permission.CALL_PHONE") == 0) {
            return false;
        }
        setWaitingForResult(PendingRequestArgs.forIntent(14, intent, info));
        requestPermissions(new String[]{"android.permission.CALL_PHONE"}, 14);
        return true;
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public boolean startActivitySafely(View v, Intent intent, ItemInfo item, String sourceContainer) {
        if (isInMultiWindowMode() && this.mHandler.hasMessages(103)) {
            MLog.d(TAG, "startActivitySafely: skip. InMultiWindowMode");
            return false;
        }
        boolean zStartActivitySafely = super.startActivitySafely(v, intent, item, sourceContainer);
        if (zStartActivitySafely && (v instanceof BubbleTextView)) {
            BubbleTextView bubbleTextView = (BubbleTextView) v;
            bubbleTextView.setStayPressed(true);
            addOnResumeCallback(bubbleTextView);
        }
        return zStartActivitySafely;
    }

    public CellLayout getCellLayout(int container, int screenId) {
        return container == -101 ? this.mHotseat : this.mWorkspace.getScreenWithId(screenId);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int level) {
        super.onTrimMemory(level);
        if (level >= 20) {
            SQLiteDatabase.releaseMemory();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
        String description;
        boolean zDispatchPopulateAccessibilityEvent = super.dispatchPopulateAccessibilityEvent(event);
        List<CharSequence> text = event.getText();
        text.clear();
        if (this.mWorkspace == null) {
            description = getString(R.string.all_apps_home_button_label);
        } else {
            description = ((LauncherState) this.mStateManager.getState()).getDescription(this);
        }
        text.add(description);
        return zDispatchPopulateAccessibilityEvent;
    }

    public void addOnResumeCallback(OnResumeCallback callback) {
        this.mOnResumeCallbacks.add(callback);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public int getPageToBindSynchronously() {
        int i = this.mPageToBindSynchronously;
        if (i != -1) {
            return i;
        }
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            return workspace.getCurrentPage();
        }
        return 0;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void clearPendingBinds() {
        ViewOnDrawExecutor viewOnDrawExecutor = this.mPendingExecutor;
        if (viewOnDrawExecutor != null) {
            viewOnDrawExecutor.markCompleted();
            this.mPendingExecutor = null;
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void startBinding() {
        LauncherTiming.note(TAG, "startBinding");
        Object objBeginSection = TraceHelper.INSTANCE.beginSection("startBinding");
        AbstractFloatingView.closeOpenViews(this, true, 3467);
        setWorkspaceLoading(true);
        this.mDragController.cancelDrag();
        this.mWorkspace.clearDropTargets();
        this.mWorkspace.removeAllWorkspaceScreens();
        this.mAppWidgetHost.clearViews();
        Hotseat hotseat = this.mHotseat;
        if (hotseat != null) {
            hotseat.resetLayout(getDeviceProfile().isVerticalBarLayout());
        }
        TraceHelper.INSTANCE.endSection(objBeginSection);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindScreens(IntArray orderedScreenIds) {
        if (orderedScreenIds.isEmpty()) {
            this.mWorkspace.addExtraEmptyScreen();
        }
        bindAddScreens(orderedScreenIds);
    }

    private void bindAddScreens(IntArray orderedScreenIds) {
        MLog.d(TAG, "bindAddScreens() called with: orderedScreenIds = [" + orderedScreenIds + "]");
        int size = orderedScreenIds.size();
        for (int i = 0; i < size; i++) {
            this.mWorkspace.insertNewWorkspaceScreenBeforeEmptyScreen(orderedScreenIds.get(i));
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void preAddApps() {
        this.mModelWriter.commitDelete();
        final AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 128);
        if (openView != null) {
            openView.post(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    openView.close(true);
                }
            });
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAppsAdded(IntArray newScreens, ArrayList<ItemInfo> addNotAnimated, ArrayList<ItemInfo> addAnimated) {
        MLog.d(TAG, "bindAppsAdded() called with: newScreens = [" + newScreens + "], addNotAnimated = [" + addNotAnimated + "], addAnimated = [" + addAnimated + "]");
        if (newScreens != null) {
            bindAddScreens(newScreens);
        }
        if (addNotAnimated != null && !addNotAnimated.isEmpty()) {
            bindItems(addNotAnimated, false);
        }
        if (addAnimated != null && !addAnimated.isEmpty()) {
            bindItems(addAnimated, true);
        }
        this.mWorkspace.removeExtraEmptyScreen(false);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x008c  */
    /* JADX WARN: Code duplicated, block: B:47:0x00de  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f2  */
    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindItems(final List<ItemInfo> items, final boolean forceAnimateIcons) {
        View viewCreateShortcut;
        CellLayout screenWithId;
        MLog.d(TAG, "bindItems: items=" + items + " forceAnimateIcons=" + forceAnimateIcons);
        ArrayList arrayList = new ArrayList();
        boolean z = forceAnimateIcons && canRunNewAppsAnimation();
        Workspace workspace = this.mWorkspace;
        int size = items.size();
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            ItemInfo itemInfo = items.get(i2);
            if (itemInfo.container != -101 || this.mHotseat != null) {
                int i3 = itemInfo.itemType;
                if (i3 == 0 || i3 == 1) {
                    viewCreateShortcut = createShortcut((WorkspaceItemInfo) itemInfo);
                    if (itemInfo.container != -100 && (screenWithId = this.mWorkspace.getScreenWithId(itemInfo.screenId)) != null && screenWithId.isOccupied(itemInfo.cellX, itemInfo.cellY)) {
                        throw new RuntimeException("Collision while binding workspace item: " + itemInfo + ". Collides with " + screenWithId.getChildAt(itemInfo.cellX, itemInfo.cellY).getTag());
                    }
                    workspace.addInScreenFromBind(viewCreateShortcut, itemInfo);
                    if (z) {
                        viewCreateShortcut.setAlpha(0.0f);
                        viewCreateShortcut.setScaleX(0.0f);
                        viewCreateShortcut.setScaleY(0.0f);
                        arrayList.add(createNewAppBounceAnimation(viewCreateShortcut, i2));
                        i = itemInfo.screenId;
                    } else {
                        handleItemInfoRuntimeWhenAdd(viewCreateShortcut, itemInfo);
                    }
                } else {
                    if (i3 == 2) {
                        viewCreateShortcut = FolderIcon.inflateFolderAndIcon(R.layout.folder_icon, this, (ViewGroup) workspace.getChildAt(workspace.getCurrentPage()), (FolderInfo) itemInfo);
                    } else if (i3 == 4 || i3 == 5) {
                        viewCreateShortcut = inflateAppWidget((LauncherAppWidgetInfo) itemInfo);
                        if (viewCreateShortcut == null) {
                            continue;
                        }
                    } else if (i3 == 6) {
                        viewCreateShortcut = createShortcut((WorkspaceItemInfo) itemInfo);
                    } else if (i3 != 8) {
                        throw new RuntimeException("Invalid Item Type");
                    }
                    if (itemInfo.container != -100) {
                    }
                    workspace.addInScreenFromBind(viewCreateShortcut, itemInfo);
                    if (z) {
                        viewCreateShortcut.setAlpha(0.0f);
                        viewCreateShortcut.setScaleX(0.0f);
                        viewCreateShortcut.setScaleY(0.0f);
                        arrayList.add(createNewAppBounceAnimation(viewCreateShortcut, i2));
                        i = itemInfo.screenId;
                    } else {
                        handleItemInfoRuntimeWhenAdd(viewCreateShortcut, itemInfo);
                    }
                }
            }
        }
        if (z && i > -1) {
            final AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(arrayList);
            Workspace workspace2 = this.mWorkspace;
            int screenIdForPageIndex = workspace2.getScreenIdForPageIndex(workspace2.getNextPage());
            final int pageIndexForScreenId = this.mWorkspace.getPageIndexForScreenId(i);
            Objects.requireNonNull(animatorSet);
            final Runnable runnable = new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    animatorSet.start();
                }
            };
            if (i != screenIdForPageIndex) {
                this.mWorkspace.postDelayed(new Runnable() { // from class: com.android.launcher3.Launcher.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Launcher.this.mWorkspace != null) {
                            Launcher.this.closeOpenViews(false);
                            Launcher.this.mWorkspace.snapToPage(pageIndexForScreenId);
                            Launcher.this.mWorkspace.postDelayed(runnable, 500L);
                        }
                    }
                }, 500L);
            } else {
                this.mWorkspace.postDelayed(runnable, 500L);
            }
        }
        workspace.requestLayout();
    }

    public void bindAppWidget(LauncherAppWidgetInfo item) {
        MLog.d(TAG, "bindAppWidget() called with: item = [" + item + "]");
        View viewInflateAppWidget = inflateAppWidget(item);
        if (viewInflateAppWidget != null) {
            this.mWorkspace.addInScreen(viewInflateAppWidget, item);
            this.mWorkspace.requestLayout();
        }
    }

    private View inflateAppWidget(LauncherAppWidgetInfo item) {
        LauncherAppWidgetProviderInfo launcherAppWidgetInfo;
        AppWidgetHostView pendingAppWidgetHostView;
        if (item.hasOptionFlag(1)) {
            item.providerName = QsbContainerView.getSearchComponentName(this);
            if (item.providerName == null) {
                getModelWriter().deleteItemFromDatabase(item);
                return null;
            }
        }
        Object objBeginSection = TraceHelper.INSTANCE.beginSection("BIND_WIDGET_id=" + item.appWidgetId);
        try {
            if (item.hasRestoreFlag(2)) {
                launcherAppWidgetInfo = null;
            } else if (item.hasRestoreFlag(1)) {
                launcherAppWidgetInfo = this.mAppWidgetManager.findProvider(item.providerName, item.user);
            } else {
                launcherAppWidgetInfo = this.mAppWidgetManager.getLauncherAppWidgetInfo(item.appWidgetId);
            }
            if (!item.hasRestoreFlag(2) && item.restoreStatus != 0) {
                if (launcherAppWidgetInfo == null) {
                    Log.d(TAG, "Removing restored widget: id=" + item.appWidgetId + " belongs to component " + item.providerName + ", as the provider is null");
                    getModelWriter().deleteItemFromDatabase(item);
                    return null;
                }
                if (item.hasRestoreFlag(1)) {
                    if (!item.hasRestoreFlag(16)) {
                        item.appWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
                        item.restoreStatus = 16 | item.restoreStatus;
                        PendingAddWidgetInfo pendingAddWidgetInfo = new PendingAddWidgetInfo(launcherAppWidgetInfo);
                        pendingAddWidgetInfo.spanX = item.spanX;
                        pendingAddWidgetInfo.spanY = item.spanY;
                        pendingAddWidgetInfo.minSpanX = item.minSpanX;
                        pendingAddWidgetInfo.minSpanY = item.minSpanY;
                        Bundle defaultOptionsForWidget = WidgetHostViewLoader.getDefaultOptionsForWidget(this, pendingAddWidgetInfo);
                        boolean zHasRestoreFlag = item.hasRestoreFlag(32);
                        if (zHasRestoreFlag && item.bindOptions != null) {
                            Bundle extras = item.bindOptions.getExtras();
                            if (defaultOptionsForWidget != null) {
                                extras.putAll(defaultOptionsForWidget);
                            }
                            defaultOptionsForWidget = extras;
                        }
                        boolean zBindAppWidgetIdIfAllowed = this.mAppWidgetManager.bindAppWidgetIdIfAllowed(item.appWidgetId, launcherAppWidgetInfo, defaultOptionsForWidget);
                        item.bindOptions = null;
                        item.restoreStatus &= -33;
                        if (zBindAppWidgetIdIfAllowed) {
                            item.restoreStatus = (launcherAppWidgetInfo.configure == null || zHasRestoreFlag) ? 0 : 4;
                        }
                        getModelWriter().updateItemInDatabase(item);
                    }
                } else if (item.hasRestoreFlag(4) && launcherAppWidgetInfo.configure == null) {
                    item.restoreStatus = 0;
                    getModelWriter().updateItemInDatabase(item);
                } else if (item.hasRestoreFlag(4) && launcherAppWidgetInfo.configure != null && this.mAppWidgetManager.isAppWidgetRestored(item.appWidgetId)) {
                    item.restoreStatus = 0;
                    getModelWriter().updateItemInDatabase(item);
                }
            }
            if (item.restoreStatus == 0) {
                if (launcherAppWidgetInfo == null) {
                    FileLog.e(TAG, "Removing invalid widget: id=" + item.appWidgetId);
                    getModelWriter().deleteWidgetInfo(item, getAppWidgetHost());
                    return null;
                }
                item.minSpanX = launcherAppWidgetInfo.minSpanX;
                item.minSpanY = launcherAppWidgetInfo.minSpanY;
                pendingAppWidgetHostView = this.mAppWidgetHost.createView((Context) this, item.appWidgetId, launcherAppWidgetInfo);
            } else if (!item.hasRestoreFlag(1) && launcherAppWidgetInfo != null) {
                this.mAppWidgetHost.addPendingView(item.appWidgetId, new PendingAppWidgetHostView(this, item, this.mIconCache, false));
                pendingAppWidgetHostView = this.mAppWidgetHost.createView((Context) this, item.appWidgetId, launcherAppWidgetInfo);
            } else {
                pendingAppWidgetHostView = new PendingAppWidgetHostView(this, item, this.mIconCache, false);
            }
            prepareAppWidget(pendingAppWidgetHostView, item);
            return pendingAppWidgetHostView;
        } finally {
            TraceHelper.INSTANCE.endSection(objBeginSection);
        }
    }

    private LauncherAppWidgetInfo completeRestoreAppWidget(int appWidgetId, int finalRestoreFlag) {
        LauncherAppWidgetHostView widgetForAppWidgetId = this.mWorkspace.getWidgetForAppWidgetId(appWidgetId);
        if (widgetForAppWidgetId == null || !(widgetForAppWidgetId instanceof PendingAppWidgetHostView)) {
            Log.e(TAG, "Widget update called, when the widget no longer exists.");
            return null;
        }
        LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) widgetForAppWidgetId.getTag();
        launcherAppWidgetInfo.restoreStatus = finalRestoreFlag;
        if (launcherAppWidgetInfo.restoreStatus == 0) {
            launcherAppWidgetInfo.pendingItemInfo = null;
        }
        if (((PendingAppWidgetHostView) widgetForAppWidgetId).isReinflateIfNeeded()) {
            widgetForAppWidgetId.reInflate();
        }
        getModelWriter().updateItemInDatabase(launcherAppWidgetInfo);
        return launcherAppWidgetInfo;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void onPageBoundSynchronously(int page) {
        this.mSynchronouslyBoundPage = page;
        this.mWorkspace.setCurrentPage(page);
        this.mPageToBindSynchronously = -1;
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void executeOnNextDraw(ViewOnDrawExecutor executor) {
        clearPendingBinds();
        this.mPendingExecutor = executor;
        executor.attachTo(this);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void finishFirstPageBind(final ViewOnDrawExecutor executor) {
        MultiValueAlpha.AlphaProperty alphaProperty = this.mDragLayer.getAlphaProperty(1);
        if (alphaProperty.getValue() >= 1.0f) {
            if (executor != null) {
                executor.onLoadAnimationCompleted();
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(alphaProperty, MultiValueAlpha.VALUE, 1.0f);
            if (executor != null) {
                objectAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.Launcher.8
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animation) {
                        executor.onLoadAnimationCompleted();
                    }
                });
            }
            objectAnimatorOfFloat.start();
        }
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void finishBindingItems(int pageBoundFirst) {
        LauncherTiming.note("Launcher", "finishBindingItems");
        Object objBeginSection = TraceHelper.INSTANCE.beginSection("finishBindingItems");
        this.mWorkspace.restoreInstanceStateForRemainingPages();
        setWorkspaceLoading(false);
        ActivityResultInfo activityResultInfo = this.mPendingActivityResult;
        if (activityResultInfo != null) {
            handleActivityResult(activityResultInfo.requestCode, this.mPendingActivityResult.resultCode, this.mPendingActivityResult.data);
            this.mPendingActivityResult = null;
        }
        InstallShortcutReceiver.disableAndFlushInstallQueue(2, this);
        this.mWorkspace.setCurrentPage(pageBoundFirst, pageBoundFirst);
        this.mPageToBindSynchronously = -1;
        getViewCache().setCacheSize(R.layout.folder_application, this.mDeviceProfile.inv.numFolderColumns * this.mDeviceProfile.inv.numFolderRows);
        getViewCache().setCacheSize(R.layout.folder_page, 2);
        this.mWorkspace.applyEditState();
        postOnPreDrawOnce(new Runnable() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m28lambda$finishBindingItems$10$comandroidlauncher3Launcher();
            }
        });
        TraceHelper.INSTANCE.endSection(objBeginSection);
    }

    /* JADX INFO: renamed from: lambda$finishBindingItems$10$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m28lambda$finishBindingItems$10$comandroidlauncher3Launcher() {
        getContentResolver().call(PreviewProvider.AUTHORITY, PreviewProvider.METHOD_ENSURE_PREVIEW, (String) null, (Bundle) null);
    }

    private boolean canRunNewAppsAnimation() {
        return !this.mDragController.isDragging() && System.currentTimeMillis() - this.mLastTouchUpTime > CoroutineLiveDataKt.DEFAULT_TIMEOUT;
    }

    private ValueAnimator createNewAppBounceAnimation(View v, int i) {
        ObjectAnimator duration = new PropertyListBuilder().alpha(1.0f).scale(1.0f).build(v).setDuration(450L);
        duration.setStartDelay(i * 85);
        duration.setInterpolator(new OvershootInterpolator(BOUNCE_ANIMATION_TENSION));
        return duration;
    }

    private void announceForAccessibility(int stringResId) {
        getDragLayer().announceForAccessibility(getString(stringResId));
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAllApplications(AppInfo[] apps, int flags) {
        MLog.d(TAG, "bindAllApplications: apps = " + Arrays.toString(apps) + ", flags = " + flags);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindDeepShortcutMap(HashMap<ComponentKey, Integer> deepShortcutMapCopy) {
        MLog.d(TAG, "bindDeepShortcutMap: deepShortcutMapCopy = " + deepShortcutMapCopy);
        this.mPopupDataProvider.setDeepShortcutMap(deepShortcutMapCopy);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWidgetsRestored(ArrayList<LauncherAppWidgetInfo> widgets) {
        MLog.d(TAG, "bindWidgetsRestored: widgets = " + widgets);
        this.mWorkspace.widgetsRestored(widgets);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceItemsChanged(ArrayList<WorkspaceItemInfo> updated) {
        MLog.d(TAG, "bindWorkspaceItemsChanged: updated = " + updated);
        cancelMotionEvent();
        if (updated.isEmpty()) {
            return;
        }
        this.mWorkspace.updateShortcuts(updated);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindRestoreItemsChange(HashSet<ItemInfo> updates) {
        MLog.d(TAG, "bindRestoreItemsChange: updates = " + updates);
        this.mWorkspace.updateRestoreItems(updates);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindWorkspaceComponentsRemoved(final ItemInfoMatcher matcher) {
        MLog.d(TAG, "bindWorkspaceComponentsRemoved: matcher = " + matcher);
        this.mWorkspace.removeItemsByMatcher(matcher);
        this.mDragController.onAppsRemoved(matcher);
    }

    @Override // com.android.launcher3.model.BgDataModel.Callbacks
    public void bindAllWidgets(ArrayList<WidgetListRowEntry> allWidgets, boolean updateAppsOnly) {
        MLog.d(TAG, "bindAllWidgets: allWidgets = " + allWidgets);
        this.mPopupDataProvider.setAllWidgets(allWidgets, updateAppsOnly);
    }

    public void refreshAndBindWidgetsForPackageUser(PackageUserKey packageUser) {
        this.mModel.refreshAndBindWidgetsAndShortcuts(packageUser);
    }

    @Override // android.app.Activity
    public void dump(String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        super.dump(prefix, fd, writer, args);
        if (args.length > 0) {
            if (TextUtils.equals(args[0], "--all")) {
                writer.println(prefix + "Workspace Items");
                for (int i = 0; i < this.mWorkspace.getPageCount(); i++) {
                    writer.println(prefix + "  Homescreen " + i);
                    ShortcutAndWidgetContainer shortcutsAndWidgets = ((CellLayout) this.mWorkspace.getPageAt(i)).getShortcutsAndWidgets();
                    for (int i2 = 0; i2 < shortcutsAndWidgets.getChildCount(); i2++) {
                        Object tag = shortcutsAndWidgets.getChildAt(i2).getTag();
                        if (tag != null) {
                            writer.println(prefix + "    " + tag.toString());
                        }
                    }
                }
                writer.println(prefix + "  Hotseat");
                ShortcutAndWidgetContainer shortcutsAndWidgets2 = this.mHotseat.getShortcutsAndWidgets();
                for (int i3 = 0; i3 < shortcutsAndWidgets2.getChildCount(); i3++) {
                    Object tag2 = shortcutsAndWidgets2.getChildAt(i3).getTag();
                    if (tag2 != null) {
                        writer.println(prefix + "    " + tag2.toString());
                    }
                }
            }
        }
        writer.println(prefix + "Misc:");
        dumpMisc(prefix + "\t", writer);
        writer.println(prefix + "\tmWorkspaceLoading=" + this.mWorkspaceLoading);
        writer.println(prefix + "\tmPendingRequestArgs=" + this.mPendingRequestArgs + " mPendingActivityResult=" + this.mPendingActivityResult);
        writer.println(prefix + "\tmAppWidgetHost.isListening: " + this.mAppWidgetHost.isListening());
        this.mDragLayer.dump(prefix, writer);
        this.mStateManager.dump(prefix, writer);
        this.mPopupDataProvider.dump(prefix, writer);
        try {
            FileLog.flushAll(writer);
        } catch (Exception unused) {
        }
        this.mModel.dumpState(prefix, fd, writer, args);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> data, Menu menu, int deviceId) {
        ArrayList arrayList = new ArrayList();
        if (isInState(LauncherState.NORMAL)) {
            arrayList.add(new KeyboardShortcutInfo(getString(R.string.all_apps_button_label), 29, 4096));
            arrayList.add(new KeyboardShortcutInfo(getString(R.string.widget_button_text), 51, 4096));
        }
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            if (new CustomActionsPopup(this, currentFocus).canShow()) {
                arrayList.add(new KeyboardShortcutInfo(getString(R.string.custom_actions), 43, 4096));
            }
            if ((currentFocus.getTag() instanceof ItemInfo) && ShortcutUtil.supportsShortcuts((ItemInfo) currentFocus.getTag())) {
                arrayList.add(new KeyboardShortcutInfo(getString(R.string.shortcuts_menu_with_notifications_description), 47, 4096));
            }
        }
        if (!arrayList.isEmpty()) {
            data.add(new KeyboardShortcutGroup(getString(R.string.home_screen), arrayList));
        }
        super.onProvideKeyboardShortcuts(data, menu, deviceId);
    }

    @Override // android.app.Activity
    public boolean onKeyShortcut(int keyCode, KeyEvent event) {
        if (event.hasModifiers(4096)) {
            if (keyCode != 43) {
                if (keyCode == 47) {
                    View currentFocus = getCurrentFocus();
                    if ((currentFocus instanceof BubbleTextView) && (currentFocus.getTag() instanceof ItemInfo) && this.mAccessibilityDelegate.performAction(currentFocus, (ItemInfo) currentFocus.getTag(), R.id.action_deep_shortcuts)) {
                        PopupContainerWithArrow.getOpen(this).requestFocus();
                        return true;
                    }
                } else if (keyCode == 51 && isInState(LauncherState.NORMAL)) {
                    OptionsPopupView.openWidgets(this);
                    return true;
                }
            } else if (new CustomActionsPopup(this, getCurrentFocus()).show()) {
                return true;
            }
        }
        return super.onKeyShortcut(keyCode, event);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 82) {
            if (this.mDragController.isDragging() || this.mWorkspace.isSwitchingState() || !isInState(LauncherState.NORMAL)) {
                return true;
            }
            closeOpenViews();
            if (Utilities.IS_RUNNING_IN_TEST_HARNESS) {
                Log.d(TestProtocol.PERMANENT_DIAG_TAG, "Opening options popup on key up");
            }
            OptionsPopupView.showDefaultOptions(this, -1.0f, -1.0f);
            return true;
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override // com.android.launcher3.statemanager.StatefulActivity
    protected StateManager.StateHandler<LauncherState>[] createStateHandlers() {
        return new StateManager.StateHandler[]{getWorkspace()};
    }

    public TouchController[] createTouchControllers() {
        return new TouchController[]{getHideWorkspaceTouchController(), getDragController()};
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void returnToHomescreen() {
        super.returnToHomescreen();
        getStateManager().goToState(LauncherState.NORMAL);
    }

    private void closeOpenViews() {
        closeOpenViews(true);
    }

    protected void closeOpenViews(boolean animate) {
        AbstractFloatingView.closeAllOpenViews(this, animate);
    }

    public Stream<SystemShortcut.Factory> getSupportedShortcuts() {
        return Stream.of((Object[]) new SystemShortcut.Factory[]{SystemShortcut.APP_INFO, SystemShortcut.WIDGETS, SystemShortcut.INSTALL});
    }

    public static Launcher getLauncher(Context context) {
        return (Launcher) fromContext(context);
    }

    public static <T extends Launcher> T cast(ActivityContext activityContext) {
        return (T) activityContext;
    }

    private static class NonConfigInstance {
        public Configuration config;

        private NonConfigInstance() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showWallpapers(List<WallpaperInfo> wallpaperInfos, boolean sync) {
        if (wallpaperInfos.isEmpty()) {
            MLog.w(TAG, "onWallpaperChanged: empty wallpapers");
            return;
        }
        WallpaperInfo currentStaticWallpaper = WallpaperRepository.getInstance(getApplicationContext()).getCurrentWallpaper();
        if (currentStaticWallpaper == null) {
            currentStaticWallpaper = wallpaperInfos.get(0);
        }
        int iIndexOf = wallpaperInfos.indexOf(currentStaticWallpaper);
        int currentIndex = this.mImageDragView.getCurrentIndex();
        if (iIndexOf != -1) {
            this.mImageDragView.setWallpapers(wallpaperInfos, iIndexOf, sync);
        } else {
            this.mImageDragView.setWallpapers(wallpaperInfos, Utilities.boundToRange(currentIndex, wallpaperInfos), sync);
        }
        MLog.d(TAG, "onWallpaperChanged: sync=" + sync + " index=" + iIndexOf + " cur=" + currentIndex + " size=" + wallpaperInfos.size() + " " + currentStaticWallpaper);
    }

    private void setupWallpaperViewpagerView() {
        MLog.d(TAG, "setupViewPagerWallpaper");
        this.mImageDragView.setIDragViewListener(new ImageDragView.IDragViewListener() { // from class: com.android.launcher3.Launcher.10
            @Override // com.android.launcher3.views.ImageDragView.IDragViewListener
            public void onPageSelected(int index, String reason) {
                Launcher launcher = Launcher.this;
                launcher.mCurWallpaperInfo = launcher.mImageDragView.getCurrentWallpaperInfo();
                WallpaperRepository.getInstance(Launcher.this).storeCurrentWallpaper(Launcher.this.mCurWallpaperInfo, true, "page_selected/" + reason);
            }

            @Override // com.android.launcher3.views.ImageDragView.IDragViewListener
            public void onDrawn() {
                super.onDrawn();
                BlurRenderWatcher.getInstance().blur();
            }

            @Override // com.android.launcher3.views.ImageDragView.IDragViewListener
            public void onWallpaperChanged(Bitmap bitmap) {
                Launcher.this.mWallpaperBlurEngine.setWallpaperBitmap(bitmap);
            }
        });
        this.mLiveWallpaperView.setOnWallpaperListener(new LiveWallpaperView.OnWallpaperChangedListener() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda8
            @Override // com.android.launcher3.views.LiveWallpaperView.OnWallpaperChangedListener
            public final void onWallpaperChanged(Bitmap bitmap) {
                this.f$0.m34xccf7e765(bitmap);
            }
        });
        this.mLandmarkWallpaperView.setDragViewListener(new LandmarkWallpaperView.IDragViewListener() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda9
            @Override // com.android.launcher3.views.LandmarkWallpaperView.IDragViewListener
            public final void onWallpaperChanged(Bitmap bitmap) {
                this.f$0.m35x55282744(bitmap);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setupWallpaperViewpagerView$11$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m34xccf7e765(Bitmap bitmap) {
        this.mWallpaperBlurEngine.setWallpaperBitmap(bitmap);
    }

    /* JADX INFO: renamed from: lambda$setupWallpaperViewpagerView$12$com-android-launcher3-Launcher, reason: not valid java name */
    /* synthetic */ void m35x55282744(Bitmap bitmap) {
        this.mWallpaperBlurEngine.setWallpaperBitmap(bitmap);
    }

    private void initWallpaper() {
        WallpaperRepository.getInstance(this).setOnWallpaperChangedListener(this.mOnWallpaperChangedListener);
        int wallpaperType = WallpaperUtils.getWallpaperType(this);
        MLog.d(TAG, "initWallpaper: " + wallpaperType);
        if (wallpaperType == 0) {
            this.mImageDragView.setVisibility(0);
            this.mLandmarkWallpaperView.setVisibility(8);
            this.mLandmarkWallpaperView.stop();
            this.mLiveWallpaperView.setVisibility(8);
            this.mLiveWallpaperView.stop();
            CopyOnWriteArrayList<WallpaperInfo> staticWallpapers = WallpaperRepository.getInstance(this).getStaticWallpapers();
            if (staticWallpapers == null || staticWallpapers.size() <= 0) {
                return;
            }
            MLog.d(TAG, "initWallpaper: currentWallpapers.size=" + staticWallpapers);
            showWallpapers(staticWallpapers, true);
            return;
        }
        if (wallpaperType != 1) {
            if (wallpaperType == 2) {
                this.mImageDragView.setVisibility(8);
                this.mLiveWallpaperView.setVisibility(8);
                this.mLiveWallpaperView.stop();
                this.mLandmarkWallpaperView.setVisibility(0);
                this.mLandmarkWallpaperView.start();
                return;
            }
            MLog.d(TAG, "unsupported type " + wallpaperType);
            return;
        }
        WallpaperInfo currentLiveWallpaper = WallpaperRepository.getInstance(this).getCurrentLiveWallpaper();
        MLog.d(TAG, "initWallpaper: wallpaper=" + currentLiveWallpaper);
        if (currentLiveWallpaper != null) {
            this.mImageDragView.setVisibility(8);
            this.mLandmarkWallpaperView.setVisibility(8);
            this.mLandmarkWallpaperView.stop();
            this.mLiveWallpaperView.setVisibility(0);
            this.mLiveWallpaperView.setWallpaper(currentLiveWallpaper, "init");
            this.mIgnoreLiveWallpaperInitCallback = true;
        }
    }

    private void notifyWidgetRemoved(final ItemInfo itemInfo) {
        AbstractFloatingView openView = AbstractFloatingView.getOpenView(this, 16);
        if (openView instanceof WidgetsTableSheet) {
            ((WidgetsTableSheet) openView).notifyWidgetItemRemoved(itemInfo);
        }
    }

    public void setWidgetsTableBackgroundVisible(boolean show) {
        MLog.d(TAG, "setWidgetsTableBackgroundVisible " + show);
        if (show) {
            this.mWidgetsTableBackgroundView.setVisibility(0);
        } else {
            this.mWidgetsTableBackgroundView.setVisibility(4);
        }
    }

    public static Bitmap getWorkspaceBitmap() {
        MLog.d("");
        if (sLauncher == null) {
            MLog.d(TAG, "draw: launcher is null");
            return null;
        }
        final Workspace workspace = sLauncher.getWorkspace();
        Objects.requireNonNull(workspace);
        return BitmapRenderer.createHardwareBitmap(2560, 1440, new BitmapRenderer() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda15
            @Override // com.android.launcher3.icons.BitmapRenderer
            public final void draw(Canvas canvas) {
                workspace.draw(canvas);
            }
        }, 0, 966);
    }

    public void getWidgetItemInfo() {
        Rect mediaWidgetBounds = getMediaWidgetBounds();
        if (mediaWidgetBounds == null) {
            MLog.e(TAG, "getWidgetItemInfo: NOT found");
            return;
        }
        MLog.d(TAG, "getWidgetItemInfo: " + mediaWidgetBounds);
        Intent intent = new Intent(Const.ACTION_ASK_ITEM_BROAD);
        intent.putExtra(LauncherSettings.Favorites.CELLX, mediaWidgetBounds.left);
        intent.putExtra("top", mediaWidgetBounds.top);
        sendBroadcast(intent);
    }

    public Rect getMediaWidgetBounds() {
        View mediaWidget = getMediaWidget();
        if (mediaWidget == null) {
            return null;
        }
        Rect rect = new Rect();
        mediaWidget.getGlobalVisibleRect(rect);
        return rect;
    }

    public View getMediaWidget() {
        Workspace workspace = getWorkspace();
        if (workspace == null) {
            return null;
        }
        return workspace.getFirstMatch(new Workspace.ItemOperator() { // from class: com.android.launcher3.Launcher$$ExternalSyntheticLambda14
            @Override // com.android.launcher3.Workspace.ItemOperator
            public final boolean evaluate(ItemInfo itemInfo, View view) {
                return Launcher.lambda$getMediaWidget$13(itemInfo, view);
            }
        });
    }

    static /* synthetic */ boolean lambda$getMediaWidget$13(ItemInfo itemInfo, View view) {
        return (itemInfo instanceof LauncherAppWidgetInfo) && Objects.equals(((LauncherAppWidgetInfo) itemInfo).providerName, Const.WIDGET_MEDIA);
    }
}
