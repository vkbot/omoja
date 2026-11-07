package com.android.server.pm;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.IUidObserver;
import android.app.IUriGrantsManager;
import android.app.UriGrantsManager;
import android.app.usage.UsageStatsManagerInternal;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.LocusId;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.IShortcutService;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.pm.ShortcutServiceInternal;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Icon;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SELinux;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.text.TextUtils;
import android.text.format.TimeMigrationUtils;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.KeyValueListParser;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.SparseLongArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.IWindowManager;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.Preconditions;
import com.android.internal.util.StatLogger;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.notification.SnoozeHelper;
import com.android.server.uri.UriGrantsManagerInternal;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import libcore.io.IoUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class ShortcutService extends IShortcutService.Stub {
    private static final String ATTR_VALUE = "value";
    static final boolean DEBUG = false;
    static final boolean DEBUG_LOAD = false;
    static final boolean DEBUG_PROCSTATE = false;
    static final int DEFAULT_ICON_PERSIST_QUALITY = 100;
    static final int DEFAULT_MAX_ICON_DIMENSION_DP = 96;
    static final int DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP = 48;
    static final int DEFAULT_MAX_SHORTCUTS_PER_ACTIVITY = 15;
    static final int DEFAULT_MAX_SHORTCUTS_PER_APP = 100;
    static final int DEFAULT_MAX_UPDATES_PER_INTERVAL = 10;
    static final long DEFAULT_RESET_INTERVAL_SEC = 86400;
    static final int DEFAULT_SAVE_DELAY_MS = 3000;
    static final String DIRECTORY_BITMAPS = "bitmaps";
    static final String DIRECTORY_DUMP = "shortcut_dump";
    static final String DIRECTORY_PER_USER = "shortcut_service";
    private static final String DUMMY_MAIN_ACTIVITY = "android.__dummy__";
    static final String FILENAME_BASE_STATE = "shortcut_service.xml";
    static final String FILENAME_USER_PACKAGES = "shortcuts.xml";
    private static final String KEY_ICON_SIZE = "iconSize";
    private static final String KEY_LOW_RAM = "lowRam";
    private static final String KEY_SHORTCUT = "shortcut";
    private static final String LAUNCHER_INTENT_CATEGORY = "android.intent.category.LAUNCHER";
    static final int OPERATION_ADD = 1;
    static final int OPERATION_SET = 0;
    static final int OPERATION_UPDATE = 2;
    private static final int PACKAGE_MATCH_FLAGS = 794624;
    private static final int PROCESS_STATE_FOREGROUND_THRESHOLD = 5;
    static final String TAG = "ShortcutService";
    private static final String TAG_LAST_RESET_TIME = "last_reset_time";
    private static final String TAG_ROOT = "root";
    private final ActivityManagerInternal mActivityManagerInternal;
    private final AtomicBoolean mBootCompleted;
    final Context mContext;
    private List<Integer> mDirtyUserIds;
    private final Handler mHandler;
    private final IPackageManager mIPackageManager;
    private Bitmap.CompressFormat mIconPersistFormat;
    private int mIconPersistQuality;
    private int mLastLockedUser;
    private Exception mLastWtfStacktrace;
    private final ArrayList<ShortcutServiceInternal.ShortcutChangeListener> mListeners;
    private final Object mLock;
    private int mMaxIconDimension;
    private int mMaxShortcuts;
    private int mMaxShortcutsPerApp;
    int mMaxUpdatesPerInterval;
    private final MetricsLogger mMetricsLogger;
    private final PackageManagerInternal mPackageManagerInternal;
    final BroadcastReceiver mPackageMonitor;
    private long mRawLastResetTime;
    final BroadcastReceiver mReceiver;
    private long mResetInterval;
    private int mSaveDelayMillis;
    private final Runnable mSaveDirtyInfoRunner;
    private final ShortcutBitmapSaver mShortcutBitmapSaver;
    private final ArrayList<LauncherApps.ShortcutChangeCallback> mShortcutChangeCallbacks;
    private final ShortcutDumpFiles mShortcutDumpFiles;
    private final SparseArray<ShortcutNonPersistentUser> mShortcutNonPersistentUsers;
    private final ShortcutRequestPinProcessor mShortcutRequestPinProcessor;
    private final StatLogger mStatLogger;
    final SparseLongArray mUidLastForegroundElapsedTime;
    private final IUidObserver mUidObserver;
    final SparseIntArray mUidState;
    final SparseBooleanArray mUnlockedUsers;
    private final IUriGrantsManager mUriGrantsManager;
    private final UriGrantsManagerInternal mUriGrantsManagerInternal;
    private final IBinder mUriPermissionOwner;
    private final UsageStatsManagerInternal mUsageStatsManagerInternal;
    private final UserManagerInternal mUserManagerInternal;
    private final SparseArray<ShortcutUser> mUsers;
    private int mWtfCount;
    static final String DEFAULT_ICON_PERSIST_FORMAT = Bitmap.CompressFormat.PNG.name();
    private static List<ResolveInfo> EMPTY_RESOLVE_INFO = new ArrayList(0);
    private static Predicate<ResolveInfo> ACTIVITY_NOT_EXPORTED = new Predicate<ResolveInfo>() { // from class: com.android.server.pm.ShortcutService.1
        @Override // java.util.function.Predicate
        public boolean test(ResolveInfo ri) {
            return !ri.activityInfo.exported;
        }
    };
    private static Predicate<PackageInfo> PACKAGE_NOT_INSTALLED = new Predicate<PackageInfo>() { // from class: com.android.server.pm.ShortcutService.2
        @Override // java.util.function.Predicate
        public boolean test(PackageInfo pi) {
            return !ShortcutService.isInstalled(pi);
        }
    };

    interface ConfigConstants {
        public static final String KEY_ICON_FORMAT = "icon_format";
        public static final String KEY_ICON_QUALITY = "icon_quality";
        public static final String KEY_MAX_ICON_DIMENSION_DP = "max_icon_dimension_dp";
        public static final String KEY_MAX_ICON_DIMENSION_DP_LOWRAM = "max_icon_dimension_dp_lowram";
        public static final String KEY_MAX_SHORTCUTS = "max_shortcuts";
        public static final String KEY_MAX_SHORTCUTS_PER_APP = "max_shortcuts_per_app";
        public static final String KEY_MAX_UPDATES_PER_INTERVAL = "max_updates_per_interval";
        public static final String KEY_RESET_INTERVAL_SEC = "reset_interval_sec";
        public static final String KEY_SAVE_DELAY_MILLIS = "save_delay_ms";
    }

    @Retention(RetentionPolicy.SOURCE)
    @interface ShortcutOperation {
    }

    interface Stats {
        public static final int ASYNC_PRELOAD_USER_DELAY = 15;
        public static final int CHECK_LAUNCHER_ACTIVITY = 12;
        public static final int CHECK_PACKAGE_CHANGES = 8;
        public static final int CLEANUP_DANGLING_BITMAPS = 5;
        public static final int COUNT = 17;
        public static final int GET_ACTIVITY_WITH_METADATA = 6;
        public static final int GET_APPLICATION_INFO = 3;
        public static final int GET_APPLICATION_RESOURCES = 9;
        public static final int GET_DEFAULT_HOME = 0;
        public static final int GET_DEFAULT_LAUNCHER = 16;
        public static final int GET_INSTALLED_PACKAGES = 7;
        public static final int GET_LAUNCHER_ACTIVITY = 11;
        public static final int GET_PACKAGE_INFO = 1;
        public static final int GET_PACKAGE_INFO_WITH_SIG = 2;
        public static final int IS_ACTIVITY_ENABLED = 13;
        public static final int LAUNCHER_PERMISSION_CHECK = 4;
        public static final int PACKAGE_UPDATE_CHECK = 14;
        public static final int RESOURCE_NAME_LOOKUP = 10;
    }

    static class InvalidFileFormatException extends Exception {
        public InvalidFileFormatException(String message, Throwable cause) {
            super(message, cause);
        }
    }

    public ShortcutService(Context context) {
        this(context, BackgroundThread.get().getLooper(), false);
    }

    ShortcutService(Context context, Looper looper, boolean onlyForPackageManagerApis) {
        this.mLock = new Object();
        this.mListeners = new ArrayList<>(1);
        this.mShortcutChangeCallbacks = new ArrayList<>(1);
        this.mUsers = new SparseArray<>();
        this.mShortcutNonPersistentUsers = new SparseArray<>();
        this.mUidState = new SparseIntArray();
        this.mUidLastForegroundElapsedTime = new SparseLongArray();
        this.mDirtyUserIds = new ArrayList();
        this.mBootCompleted = new AtomicBoolean();
        this.mUnlockedUsers = new SparseBooleanArray();
        this.mStatLogger = new StatLogger(new String[]{"getHomeActivities()", "Launcher permission check", "getPackageInfo()", "getPackageInfo(SIG)", "getApplicationInfo", "cleanupDanglingBitmaps", "getActivity+metadata", "getInstalledPackages", "checkPackageChanges", "getApplicationResources", "resourceNameLookup", "getLauncherActivity", "checkLauncherActivity", "isActivityEnabled", "packageUpdateCheck", "asyncPreloadUserDelay", "getDefaultLauncher()"});
        this.mWtfCount = 0;
        this.mMetricsLogger = new MetricsLogger();
        this.mUidObserver = new AnonymousClass3();
        this.mSaveDirtyInfoRunner = new Runnable() { // from class: com.android.server.pm.-$$Lambda$jZzCUQd1whVIqs_s1XMLbFqTP_E
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.saveDirtyInfo();
            }
        };
        this.mLastLockedUser = -1;
        this.mReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.ShortcutService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (!ShortcutService.this.mBootCompleted.get()) {
                    return;
                }
                try {
                    if ("android.intent.action.LOCALE_CHANGED".equals(intent.getAction())) {
                        ShortcutService.this.handleLocaleChanged();
                    }
                } catch (Exception e) {
                    ShortcutService.this.wtf("Exception in mReceiver.onReceive", e);
                }
            }
        };
        this.mPackageMonitor = new BroadcastReceiver() { // from class: com.android.server.pm.ShortcutService.5
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:36:0x00be  */
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                if (userId == -10000) {
                    Slog.w(ShortcutService.TAG, "Intent broadcast does not contain user handle: " + intent);
                    return;
                }
                String action = intent.getAction();
                long token = ShortcutService.this.injectClearCallingIdentity();
                try {
                    try {
                        synchronized (ShortcutService.this.mLock) {
                            if (!ShortcutService.this.isUserUnlockedL(userId)) {
                                ShortcutService.this.injectRestoreCallingIdentity(token);
                                return;
                            }
                            ShortcutUser user = ShortcutService.this.getUserShortcutsLocked(userId);
                            user.clearLauncher();
                            byte b = -1;
                            if ("android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED".equals(action)) {
                                ShortcutUser user2 = ShortcutService.this.getUserShortcutsLocked(userId);
                                ComponentName lastLauncher = user2.getLastKnownLauncher();
                                ComponentName currentLauncher = ShortcutService.this.getDefaultLauncher(userId);
                                if (currentLauncher == null || !currentLauncher.equals(lastLauncher)) {
                                    ShortcutService.this.mUriGrantsManagerInternal.revokeUriPermissionFromOwner(ShortcutService.this.mUriPermissionOwner, null, -1, 0);
                                }
                                ShortcutService.this.injectRestoreCallingIdentity(token);
                                return;
                            }
                            Uri intentUri = intent.getData();
                            String packageName = intentUri != null ? intentUri.getSchemeSpecificPart() : null;
                            if (packageName == null) {
                                Slog.w(ShortcutService.TAG, "Intent broadcast does not contain package name: " + intent);
                                ShortcutService.this.injectRestoreCallingIdentity(token);
                                return;
                            }
                            boolean replacing = intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                            switch (action.hashCode()) {
                                case 172491798:
                                    if (action.equals("android.intent.action.PACKAGE_CHANGED")) {
                                        b = 2;
                                    }
                                    break;
                                case 267468725:
                                    if (action.equals("android.intent.action.PACKAGE_DATA_CLEARED")) {
                                        b = 3;
                                    }
                                    break;
                                case 525384130:
                                    if (action.equals("android.intent.action.PACKAGE_REMOVED")) {
                                        b = 1;
                                    }
                                    break;
                                case 1544582882:
                                    if (action.equals("android.intent.action.PACKAGE_ADDED")) {
                                        b = 0;
                                    }
                                    break;
                                default:
                                    break;
                            }
                            if (b != 0) {
                                if (b != 1) {
                                    if (b == 2) {
                                        ShortcutService.this.handlePackageChanged(packageName, userId);
                                    } else if (b == 3) {
                                        ShortcutService.this.handlePackageDataCleared(packageName, userId);
                                    }
                                } else if (!replacing) {
                                    ShortcutService.this.handlePackageRemoved(packageName, userId);
                                }
                            } else if (replacing) {
                                ShortcutService.this.handlePackageUpdateFinished(packageName, userId);
                            } else {
                                ShortcutService.this.handlePackageAdded(packageName, userId);
                            }
                            ShortcutService.this.injectRestoreCallingIdentity(token);
                        }
                    } catch (Exception e) {
                        ShortcutService.this.wtf("Exception in mPackageMonitor.onReceive", e);
                    }
                } catch (Throwable th) {
                    ShortcutService.this.injectRestoreCallingIdentity(token);
                    throw th;
                }
            }
        };
        Objects.requireNonNull(context);
        this.mContext = context;
        LocalServices.addService(ShortcutServiceInternal.class, new LocalService());
        this.mHandler = new Handler(looper);
        this.mIPackageManager = AppGlobals.getPackageManager();
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        Objects.requireNonNull(packageManagerInternal);
        this.mPackageManagerInternal = packageManagerInternal;
        UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        Objects.requireNonNull(userManagerInternal);
        this.mUserManagerInternal = userManagerInternal;
        UsageStatsManagerInternal usageStatsManagerInternal = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
        Objects.requireNonNull(usageStatsManagerInternal);
        this.mUsageStatsManagerInternal = usageStatsManagerInternal;
        ActivityManagerInternal activityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        Objects.requireNonNull(activityManagerInternal);
        this.mActivityManagerInternal = activityManagerInternal;
        this.mUriGrantsManager = UriGrantsManager.getService();
        UriGrantsManagerInternal uriGrantsManagerInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
        Objects.requireNonNull(uriGrantsManagerInternal);
        UriGrantsManagerInternal uriGrantsManagerInternal2 = uriGrantsManagerInternal;
        this.mUriGrantsManagerInternal = uriGrantsManagerInternal2;
        this.mUriPermissionOwner = uriGrantsManagerInternal2.newUriPermissionOwner(TAG);
        this.mShortcutRequestPinProcessor = new ShortcutRequestPinProcessor(this, this.mLock);
        this.mShortcutBitmapSaver = new ShortcutBitmapSaver(this);
        this.mShortcutDumpFiles = new ShortcutDumpFiles(this);
        if (onlyForPackageManagerApis) {
            return;
        }
        IntentFilter packageFilter = new IntentFilter();
        packageFilter.addAction("android.intent.action.PACKAGE_ADDED");
        packageFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        packageFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        packageFilter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        packageFilter.addDataScheme(Settings.ATTR_PACKAGE);
        packageFilter.setPriority(1000);
        this.mContext.registerReceiverAsUser(this.mPackageMonitor, UserHandle.ALL, packageFilter, null, this.mHandler);
        IntentFilter preferedActivityFilter = new IntentFilter();
        preferedActivityFilter.addAction("android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED");
        preferedActivityFilter.setPriority(1000);
        this.mContext.registerReceiverAsUser(this.mPackageMonitor, UserHandle.ALL, preferedActivityFilter, null, this.mHandler);
        IntentFilter localeFilter = new IntentFilter();
        localeFilter.addAction("android.intent.action.LOCALE_CHANGED");
        localeFilter.setPriority(1000);
        this.mContext.registerReceiverAsUser(this.mReceiver, UserHandle.ALL, localeFilter, null, this.mHandler);
        injectRegisterUidObserver(this.mUidObserver, 3);
    }

    long getStatStartTime() {
        return this.mStatLogger.getTime();
    }

    void logDurationStat(int statId, long start) {
        this.mStatLogger.logDurationStat(statId, start);
    }

    public String injectGetLocaleTagsForUser(int userId) {
        return LocaleList.getDefault().toLanguageTags();
    }

    /* JADX INFO: renamed from: com.android.server.pm.ShortcutService$3, reason: invalid class name */
    class AnonymousClass3 extends IUidObserver.Stub {
        AnonymousClass3() {
        }

        public /* synthetic */ void lambda$onUidStateChanged$0$ShortcutService$3(int uid, int procState) {
            ShortcutService.this.handleOnUidStateChanged(uid, procState);
        }

        public void onUidStateChanged(final int uid, final int procState, long procStateSeq, int capability) {
            ShortcutService.this.injectPostToHandler(new Runnable() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUidStateChanged$0$ShortcutService$3(uid, procState);
                }
            });
        }

        public void onUidGone(final int uid, boolean disabled) {
            ShortcutService.this.injectPostToHandler(new Runnable() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onUidGone$1$ShortcutService$3(uid);
                }
            });
        }

        public /* synthetic */ void lambda$onUidGone$1$ShortcutService$3(int uid) {
            ShortcutService.this.handleOnUidStateChanged(uid, 20);
        }

        public void onUidActive(int uid) {
        }

        public void onUidIdle(int uid, boolean disabled) {
        }

        public void onUidCachedChanged(int uid, boolean cached) {
        }
    }

    void handleOnUidStateChanged(int uid, int procState) {
        synchronized (this.mLock) {
            this.mUidState.put(uid, procState);
            if (isProcessStateForeground(procState)) {
                this.mUidLastForegroundElapsedTime.put(uid, injectElapsedRealtime());
            }
        }
    }

    private boolean isProcessStateForeground(int processState) {
        return processState <= 5;
    }

    boolean isUidForegroundLocked(int uid) {
        if (uid == 1000 || isProcessStateForeground(this.mUidState.get(uid, 20))) {
            return true;
        }
        return isProcessStateForeground(this.mActivityManagerInternal.getUidProcessState(uid));
    }

    long getUidLastForegroundElapsedTimeLocked(int uid) {
        return this.mUidLastForegroundElapsedTime.get(uid);
    }

    public static final class Lifecycle extends SystemService {
        final ShortcutService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new ShortcutService(context);
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            publishBinderService(ShortcutService.KEY_SHORTCUT, this.mService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            this.mService.onBootPhase(phase);
        }

        @Override // com.android.server.SystemService
        public void onStopUser(int userHandle) {
            this.mService.handleStopUser(userHandle);
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userId) {
            this.mService.handleUnlockUser(userId);
        }
    }

    void onBootPhase(int phase) {
        if (phase == 480) {
            initialize();
        } else if (phase == 1000) {
            this.mBootCompleted.set(true);
        }
    }

    void handleUnlockUser(final int userId) {
        synchronized (this.mUnlockedUsers) {
            this.mUnlockedUsers.put(userId, true);
        }
        final long start = getStatStartTime();
        injectRunOnNewThread(new Runnable() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$QFWliMhWloedhnaZCwVKaqKPVb4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleUnlockUser$0$ShortcutService(start, userId);
            }
        });
    }

    public /* synthetic */ void lambda$handleUnlockUser$0$ShortcutService(long start, int userId) {
        synchronized (this.mLock) {
            logDurationStat(15, start);
            getUserShortcutsLocked(userId);
        }
    }

    void handleStopUser(int userId) {
        synchronized (this.mLock) {
            unloadUserLocked(userId);
            synchronized (this.mUnlockedUsers) {
                this.mUnlockedUsers.put(userId, false);
            }
        }
    }

    private void unloadUserLocked(int userId) {
        saveDirtyInfo();
        this.mUsers.delete(userId);
    }

    private AtomicFile getBaseStateFile() {
        File path = new File(injectSystemDataPath(), FILENAME_BASE_STATE);
        path.mkdirs();
        return new AtomicFile(path);
    }

    private void initialize() {
        synchronized (this.mLock) {
            loadConfigurationLocked();
            loadBaseStateLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadConfigurationLocked() {
        updateConfigurationLocked(injectShortcutManagerConstants());
    }

    boolean updateConfigurationLocked(String config) {
        int i;
        boolean result = true;
        KeyValueListParser parser = new KeyValueListParser(',');
        try {
            parser.setString(config);
        } catch (IllegalArgumentException e) {
            Slog.e(TAG, "Bad shortcut manager settings", e);
            result = false;
        }
        this.mSaveDelayMillis = Math.max(0, (int) parser.getLong(ConfigConstants.KEY_SAVE_DELAY_MILLIS, BackupAgentTimeoutParameters.DEFAULT_QUOTA_EXCEEDED_TIMEOUT_MILLIS));
        this.mResetInterval = Math.max(1L, parser.getLong(ConfigConstants.KEY_RESET_INTERVAL_SEC, DEFAULT_RESET_INTERVAL_SEC) * 1000);
        this.mMaxUpdatesPerInterval = Math.max(0, (int) parser.getLong(ConfigConstants.KEY_MAX_UPDATES_PER_INTERVAL, 10L));
        this.mMaxShortcuts = Math.max(0, (int) parser.getLong(ConfigConstants.KEY_MAX_SHORTCUTS, 15L));
        this.mMaxShortcutsPerApp = Math.max(0, (int) parser.getLong(ConfigConstants.KEY_MAX_SHORTCUTS_PER_APP, 100L));
        if (injectIsLowRamDevice()) {
            i = (int) parser.getLong(ConfigConstants.KEY_MAX_ICON_DIMENSION_DP_LOWRAM, 48L);
        } else {
            i = (int) parser.getLong(ConfigConstants.KEY_MAX_ICON_DIMENSION_DP, 96L);
        }
        int iconDimensionDp = Math.max(1, i);
        this.mMaxIconDimension = injectDipToPixel(iconDimensionDp);
        this.mIconPersistFormat = Bitmap.CompressFormat.valueOf(parser.getString(ConfigConstants.KEY_ICON_FORMAT, DEFAULT_ICON_PERSIST_FORMAT));
        this.mIconPersistQuality = (int) parser.getLong(ConfigConstants.KEY_ICON_QUALITY, 100L);
        return result;
    }

    String injectShortcutManagerConstants() {
        return android.provider.Settings.Global.getString(this.mContext.getContentResolver(), "shortcut_manager_constants");
    }

    int injectDipToPixel(int dip) {
        return (int) TypedValue.applyDimension(1, dip, this.mContext.getResources().getDisplayMetrics());
    }

    static String parseStringAttribute(XmlPullParser parser, String attribute) {
        return parser.getAttributeValue(null, attribute);
    }

    static boolean parseBooleanAttribute(XmlPullParser parser, String attribute) {
        return parseLongAttribute(parser, attribute) == 1;
    }

    static boolean parseBooleanAttribute(XmlPullParser xmlPullParser, String str, boolean z) {
        return parseLongAttribute(xmlPullParser, str, z ? 1L : 0L) == 1;
    }

    static int parseIntAttribute(XmlPullParser parser, String attribute) {
        return (int) parseLongAttribute(parser, attribute);
    }

    static int parseIntAttribute(XmlPullParser parser, String attribute, int def) {
        return (int) parseLongAttribute(parser, attribute, def);
    }

    static long parseLongAttribute(XmlPullParser parser, String attribute) {
        return parseLongAttribute(parser, attribute, 0L);
    }

    static long parseLongAttribute(XmlPullParser parser, String attribute, long def) {
        String value = parseStringAttribute(parser, attribute);
        if (TextUtils.isEmpty(value)) {
            return def;
        }
        try {
            return Long.parseLong(value);
        } catch (NumberFormatException e) {
            Slog.e(TAG, "Error parsing long " + value);
            return def;
        }
    }

    static ComponentName parseComponentNameAttribute(XmlPullParser parser, String attribute) {
        String value = parseStringAttribute(parser, attribute);
        if (TextUtils.isEmpty(value)) {
            return null;
        }
        return ComponentName.unflattenFromString(value);
    }

    static Intent parseIntentAttributeNoDefault(XmlPullParser parser, String attribute) {
        String value = parseStringAttribute(parser, attribute);
        if (TextUtils.isEmpty(value)) {
            return null;
        }
        try {
            Intent parsed = Intent.parseUri(value, 0);
            return parsed;
        } catch (URISyntaxException e) {
            Slog.e(TAG, "Error parsing intent", e);
            return null;
        }
    }

    static Intent parseIntentAttribute(XmlPullParser parser, String attribute) {
        Intent parsed = parseIntentAttributeNoDefault(parser, attribute);
        if (parsed == null) {
            return new Intent("android.intent.action.VIEW");
        }
        return parsed;
    }

    static void writeTagValue(XmlSerializer out, String tag, String value) throws IOException {
        if (TextUtils.isEmpty(value)) {
            return;
        }
        out.startTag(null, tag);
        out.attribute(null, ATTR_VALUE, value);
        out.endTag(null, tag);
    }

    static void writeTagValue(XmlSerializer out, String tag, long value) throws IOException {
        writeTagValue(out, tag, Long.toString(value));
    }

    static void writeTagValue(XmlSerializer out, String tag, ComponentName name) throws IOException {
        if (name == null) {
            return;
        }
        writeTagValue(out, tag, name.flattenToString());
    }

    static void writeTagExtra(XmlSerializer out, String tag, PersistableBundle bundle) throws XmlPullParserException, IOException {
        if (bundle == null) {
            return;
        }
        out.startTag(null, tag);
        bundle.saveToXml(out);
        out.endTag(null, tag);
    }

    static void writeAttr(XmlSerializer out, String name, CharSequence value) throws IOException {
        if (TextUtils.isEmpty(value)) {
            return;
        }
        out.attribute(null, name, value.toString());
    }

    static void writeAttr(XmlSerializer out, String name, long value) throws IOException {
        writeAttr(out, name, String.valueOf(value));
    }

    static void writeAttr(XmlSerializer out, String name, boolean value) throws IOException {
        if (value) {
            writeAttr(out, name, SnoozeHelper.XML_SNOOZED_NOTIFICATION_VERSION);
        } else {
            writeAttr(out, name, "0");
        }
    }

    static void writeAttr(XmlSerializer out, String name, ComponentName comp) throws IOException {
        if (comp == null) {
            return;
        }
        writeAttr(out, name, comp.flattenToString());
    }

    static void writeAttr(XmlSerializer out, String name, Intent intent) throws IOException {
        if (intent == null) {
            return;
        }
        writeAttr(out, name, intent.toUri(0));
    }

    void saveBaseStateLocked() {
        AtomicFile file = getBaseStateFile();
        FileOutputStream outs = null;
        try {
            outs = file.startWrite();
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(outs, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.startTag(null, TAG_ROOT);
            writeTagValue((XmlSerializer) fastXmlSerializer, TAG_LAST_RESET_TIME, this.mRawLastResetTime);
            fastXmlSerializer.endTag(null, TAG_ROOT);
            fastXmlSerializer.endDocument();
            file.finishWrite(outs);
        } catch (IOException e) {
            Slog.e(TAG, "Failed to write to file " + file.getBaseFile(), e);
            file.failWrite(outs);
        }
    }

    private void loadBaseStateLocked() {
        this.mRawLastResetTime = 0L;
        AtomicFile file = getBaseStateFile();
        try {
            try {
                FileInputStream in = file.openRead();
                try {
                    XmlPullParser parser = Xml.newPullParser();
                    parser.setInput(in, StandardCharsets.UTF_8.name());
                    while (true) {
                        int type = parser.next();
                        if (type != 1) {
                            if (type == 2) {
                                int depth = parser.getDepth();
                                String tag = parser.getName();
                                if (depth == 1) {
                                    if (!TAG_ROOT.equals(tag)) {
                                        Slog.e(TAG, "Invalid root tag: " + tag);
                                        if (in != null) {
                                            in.close();
                                            return;
                                        }
                                        return;
                                    }
                                } else {
                                    byte b = -1;
                                    if (tag.hashCode() == -68726522 && tag.equals(TAG_LAST_RESET_TIME)) {
                                        b = 0;
                                    }
                                    if (b == 0) {
                                        this.mRawLastResetTime = parseLongAttribute(parser, ATTR_VALUE);
                                    } else {
                                        Slog.e(TAG, "Invalid tag: " + tag);
                                    }
                                }
                            }
                        } else {
                            if (in == null) {
                                break;
                            }
                            in.close();
                            break;
                        }
                    }
                } catch (Throwable th) {
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e) {
            }
        } catch (IOException | XmlPullParserException e2) {
            Slog.e(TAG, "Failed to read file " + file.getBaseFile(), e2);
            this.mRawLastResetTime = 0L;
        }
        getLastResetTimeLocked();
    }

    final File getUserFile(int userId) {
        return new File(injectUserDataPath(userId), FILENAME_USER_PACKAGES);
    }

    private void saveUserLocked(int userId) {
        File path = getUserFile(userId);
        this.mShortcutBitmapSaver.waitForAllSavesLocked();
        path.getParentFile().mkdirs();
        AtomicFile file = new AtomicFile(path);
        FileOutputStream os = null;
        try {
            os = file.startWrite();
            saveUserInternalLocked(userId, os, false);
            file.finishWrite(os);
            cleanupDanglingBitmapDirectoriesLocked(userId);
        } catch (IOException | XmlPullParserException e) {
            Slog.e(TAG, "Failed to write to file " + file.getBaseFile(), e);
            file.failWrite(os);
        }
        getUserShortcutsLocked(userId).logSharingShortcutStats(this.mMetricsLogger);
    }

    private void saveUserInternalLocked(int userId, OutputStream os, boolean forBackup) throws XmlPullParserException, IOException {
        BufferedOutputStream bos = new BufferedOutputStream(os);
        XmlSerializer out = new FastXmlSerializer();
        out.setOutput(bos, StandardCharsets.UTF_8.name());
        out.startDocument(null, true);
        getUserShortcutsLocked(userId).saveToXml(out, forBackup);
        out.endDocument();
        bos.flush();
        os.flush();
    }

    static IOException throwForInvalidTag(int depth, String tag) throws IOException {
        throw new IOException(String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth)));
    }

    static void warnForInvalidTag(int depth, String tag) throws IOException {
        Slog.w(TAG, String.format("Invalid tag '%s' found at depth %d", tag, Integer.valueOf(depth)));
    }

    private ShortcutUser loadUserLocked(int userId) {
        File path = getUserFile(userId);
        AtomicFile file = new AtomicFile(path);
        try {
            FileInputStream in = file.openRead();
            try {
                ShortcutUser ret = loadUserInternal(userId, in, false);
                return ret;
            } catch (InvalidFileFormatException | IOException | XmlPullParserException e) {
                Slog.e(TAG, "Failed to read file " + file.getBaseFile(), e);
                return null;
            } finally {
                IoUtils.closeQuietly(in);
            }
        } catch (FileNotFoundException e2) {
            return null;
        }
    }

    private ShortcutUser loadUserInternal(int userId, InputStream is, boolean fromBackup) throws XmlPullParserException, IOException, InvalidFileFormatException {
        BufferedInputStream bis = new BufferedInputStream(is);
        ShortcutUser ret = null;
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(bis, StandardCharsets.UTF_8.name());
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type == 2) {
                    int depth = parser.getDepth();
                    String tag = parser.getName();
                    if (depth == 1 && "user".equals(tag)) {
                        ret = ShortcutUser.loadFromXml(this, parser, userId, fromBackup);
                    } else {
                        throwForInvalidTag(depth, tag);
                    }
                }
            } else {
                return ret;
            }
        }
    }

    private void scheduleSaveBaseState() {
        scheduleSaveInner(-10000);
    }

    void scheduleSaveUser(int userId) {
        scheduleSaveInner(userId);
    }

    private void scheduleSaveInner(int userId) {
        synchronized (this.mLock) {
            if (!this.mDirtyUserIds.contains(Integer.valueOf(userId))) {
                this.mDirtyUserIds.add(Integer.valueOf(userId));
            }
        }
        this.mHandler.removeCallbacks(this.mSaveDirtyInfoRunner);
        this.mHandler.postDelayed(this.mSaveDirtyInfoRunner, this.mSaveDelayMillis);
    }

    void saveDirtyInfo() {
        try {
            synchronized (this.mLock) {
                try {
                    for (int i = this.mDirtyUserIds.size() - 1; i >= 0; i--) {
                        int userId = this.mDirtyUserIds.get(i).intValue();
                        if (userId == -10000) {
                            saveBaseStateLocked();
                        } else {
                            saveUserLocked(userId);
                        }
                    }
                    this.mDirtyUserIds.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e) {
            wtf("Exception in saveDirtyInfo", e);
        }
    }

    long getLastResetTimeLocked() {
        updateTimesLocked();
        return this.mRawLastResetTime;
    }

    long getNextResetTimeLocked() {
        updateTimesLocked();
        return this.mRawLastResetTime + this.mResetInterval;
    }

    static boolean isClockValid(long time) {
        return time >= 1420070400;
    }

    private void updateTimesLocked() {
        long now = injectCurrentTimeMillis();
        long prevLastResetTime = this.mRawLastResetTime;
        long j = this.mRawLastResetTime;
        if (j == 0) {
            this.mRawLastResetTime = now;
        } else if (now < j) {
            if (isClockValid(now)) {
                Slog.w(TAG, "Clock rewound");
                this.mRawLastResetTime = now;
            }
        } else {
            long j2 = this.mResetInterval;
            if (j + j2 <= now) {
                long offset = j % j2;
                this.mRawLastResetTime = ((now / j2) * j2) + offset;
            }
        }
        long offset2 = this.mRawLastResetTime;
        if (prevLastResetTime != offset2) {
            scheduleSaveBaseState();
        }
    }

    protected boolean isUserUnlockedL(int userId) {
        synchronized (this.mUnlockedUsers) {
            if (this.mUnlockedUsers.get(userId)) {
                return true;
            }
            return this.mUserManagerInternal.isUserUnlockingOrUnlocked(userId);
        }
    }

    void throwIfUserLockedL(int userId) {
        if (!isUserUnlockedL(userId)) {
            throw new IllegalStateException("User " + userId + " is locked or not running");
        }
    }

    private boolean isUserLoadedLocked(int userId) {
        return this.mUsers.get(userId) != null;
    }

    ShortcutUser getUserShortcutsLocked(int userId) {
        if (!isUserUnlockedL(userId)) {
            if (userId != this.mLastLockedUser) {
                wtf("User still locked");
                this.mLastLockedUser = userId;
            }
        } else {
            this.mLastLockedUser = -1;
        }
        ShortcutUser userPackages = this.mUsers.get(userId);
        if (userPackages == null) {
            userPackages = loadUserLocked(userId);
            if (userPackages == null) {
                userPackages = new ShortcutUser(this, userId);
            }
            this.mUsers.put(userId, userPackages);
            checkPackageChanges(userId);
        }
        return userPackages;
    }

    ShortcutNonPersistentUser getNonPersistentUserLocked(int userId) {
        ShortcutNonPersistentUser ret = this.mShortcutNonPersistentUsers.get(userId);
        if (ret == null) {
            ShortcutNonPersistentUser ret2 = new ShortcutNonPersistentUser(this, userId);
            this.mShortcutNonPersistentUsers.put(userId, ret2);
            return ret2;
        }
        return ret;
    }

    void forEachLoadedUserLocked(Consumer<ShortcutUser> c) {
        for (int i = this.mUsers.size() - 1; i >= 0; i--) {
            c.accept(this.mUsers.valueAt(i));
        }
    }

    ShortcutPackage getPackageShortcutsLocked(String packageName, int userId) {
        return getUserShortcutsLocked(userId).getPackageShortcuts(packageName);
    }

    ShortcutPackage getPackageShortcutsForPublisherLocked(String packageName, int userId) {
        ShortcutPackage ret = getUserShortcutsLocked(userId).getPackageShortcuts(packageName);
        ret.getUser().onCalledByPublisher(packageName);
        return ret;
    }

    ShortcutLauncher getLauncherShortcutsLocked(String packageName, int ownerUserId, int launcherUserId) {
        return getUserShortcutsLocked(ownerUserId).getLauncherShortcuts(packageName, launcherUserId);
    }

    void removeIconLocked(ShortcutInfo shortcut) {
        this.mShortcutBitmapSaver.removeIcon(shortcut);
    }

    public void cleanupBitmapsForPackage(int userId, String packageName) {
        File packagePath = new File(getUserBitmapFilePath(userId), packageName);
        if (!packagePath.isDirectory()) {
            return;
        }
        if (!FileUtils.deleteContents(packagePath) || !packagePath.delete()) {
            Slog.w(TAG, "Unable to remove directory " + packagePath);
        }
    }

    private void cleanupDanglingBitmapDirectoriesLocked(int userId) {
        long start = getStatStartTime();
        ShortcutUser user = getUserShortcutsLocked(userId);
        File bitmapDir = getUserBitmapFilePath(userId);
        File[] children = bitmapDir.listFiles();
        if (children == null) {
            return;
        }
        for (File child : children) {
            if (child.isDirectory()) {
                String packageName = child.getName();
                if (!user.hasPackage(packageName)) {
                    cleanupBitmapsForPackage(userId, packageName);
                } else {
                    cleanupDanglingBitmapFilesLocked(userId, user, packageName, child);
                }
            }
        }
        logDurationStat(5, start);
    }

    private void cleanupDanglingBitmapFilesLocked(int userId, ShortcutUser user, String packageName, File path) {
        ArraySet<String> usedFiles = user.getPackageShortcuts(packageName).getUsedBitmapFiles();
        for (File child : path.listFiles()) {
            if (child.isFile()) {
                String name = child.getName();
                if (!usedFiles.contains(name)) {
                    child.delete();
                }
            }
        }
    }

    static class FileOutputStreamWithPath extends FileOutputStream {
        private final File mFile;

        public FileOutputStreamWithPath(File file) throws FileNotFoundException {
            super(file);
            this.mFile = file;
        }

        public File getFile() {
            return this.mFile;
        }
    }

    FileOutputStreamWithPath openIconFileForWrite(int userId, ShortcutInfo shortcut) throws IOException {
        String str;
        File packagePath = new File(getUserBitmapFilePath(userId), shortcut.getPackage());
        if (!packagePath.isDirectory()) {
            packagePath.mkdirs();
            if (!packagePath.isDirectory()) {
                throw new IOException("Unable to create directory " + packagePath);
            }
            SELinux.restorecon(packagePath);
        }
        String baseName = String.valueOf(injectCurrentTimeMillis());
        int suffix = 0;
        while (true) {
            StringBuilder sb = new StringBuilder();
            if (suffix == 0) {
                str = baseName;
            } else {
                str = baseName + "_" + suffix;
            }
            sb.append(str);
            sb.append(".png");
            String filename = sb.toString();
            File file = new File(packagePath, filename);
            if (file.exists()) {
                suffix++;
            } else {
                return new FileOutputStreamWithPath(file);
            }
        }
    }

    void saveIconAndFixUpShortcutLocked(ShortcutInfo shortcut) {
        if (shortcut.hasIconFile() || shortcut.hasIconResource() || shortcut.hasIconUri()) {
            return;
        }
        long token = injectClearCallingIdentity();
        try {
            removeIconLocked(shortcut);
            Icon icon = shortcut.getIcon();
            if (icon == null) {
                injectRestoreCallingIdentity(token);
                return;
            }
            int maxIconDimension = this.mMaxIconDimension;
            try {
                int type = icon.getType();
                if (type == 1) {
                    icon.getBitmap();
                } else {
                    if (type == 2) {
                        injectValidateIconResPackage(shortcut, icon);
                        shortcut.setIconResourceId(icon.getResId());
                        shortcut.addFlags(4);
                        shortcut.clearIcon();
                        injectRestoreCallingIdentity(token);
                        return;
                    }
                    if (type == 4) {
                        shortcut.setIconUri(icon.getUriString());
                        shortcut.addFlags(32768);
                        shortcut.clearIcon();
                        injectRestoreCallingIdentity(token);
                        return;
                    }
                    if (type != 5) {
                        if (type != 6) {
                            throw ShortcutInfo.getInvalidIconException();
                        }
                        shortcut.setIconUri(icon.getUriString());
                        shortcut.addFlags(33280);
                        shortcut.clearIcon();
                        injectRestoreCallingIdentity(token);
                        return;
                    }
                    icon.getBitmap();
                    maxIconDimension = (int) (maxIconDimension * ((AdaptiveIconDrawable.getExtraInsetFraction() * 2.0f) + 1.0f));
                }
                this.mShortcutBitmapSaver.saveBitmapLocked(shortcut, maxIconDimension, this.mIconPersistFormat, this.mIconPersistQuality);
                shortcut.clearIcon();
                injectRestoreCallingIdentity(token);
            } catch (Throwable th) {
                shortcut.clearIcon();
                throw th;
            }
        } catch (Throwable th2) {
            injectRestoreCallingIdentity(token);
            throw th2;
        }
    }

    void injectValidateIconResPackage(ShortcutInfo shortcut, Icon icon) {
        if (!shortcut.getPackage().equals(icon.getResPackage())) {
            throw new IllegalArgumentException("Icon resource must reside in shortcut owner package");
        }
    }

    static Bitmap shrinkBitmap(Bitmap in, int maxSize) {
        int ow = in.getWidth();
        int oh = in.getHeight();
        if (ow <= maxSize && oh <= maxSize) {
            return in;
        }
        int longerDimension = Math.max(ow, oh);
        int nw = (ow * maxSize) / longerDimension;
        int nh = (oh * maxSize) / longerDimension;
        Bitmap scaledBitmap = Bitmap.createBitmap(nw, nh, Bitmap.Config.ARGB_8888);
        Canvas c = new Canvas(scaledBitmap);
        RectF dst = new RectF(0.0f, 0.0f, nw, nh);
        c.drawBitmap(in, (Rect) null, dst, (Paint) null);
        return scaledBitmap;
    }

    void fixUpShortcutResourceNamesAndValues(ShortcutInfo si) {
        Resources publisherRes = injectGetResourcesForApplicationAsUser(si.getPackage(), si.getUserId());
        if (publisherRes != null) {
            long start = getStatStartTime();
            try {
                si.lookupAndFillInResourceNames(publisherRes);
                logDurationStat(10, start);
                si.resolveResourceStrings(publisherRes);
            } catch (Throwable th) {
                logDurationStat(10, start);
                throw th;
            }
        }
    }

    private boolean isCallerSystem() {
        int callingUid = injectBinderCallingUid();
        return UserHandle.isSameApp(callingUid, 1000);
    }

    private boolean isCallerShell() {
        int callingUid = injectBinderCallingUid();
        return callingUid == 2000 || callingUid == 0;
    }

    private void enforceSystemOrShell() {
        if (!isCallerSystem() && !isCallerShell()) {
            throw new SecurityException("Caller must be system or shell");
        }
    }

    private void enforceShell() {
        if (!isCallerShell()) {
            throw new SecurityException("Caller must be shell");
        }
    }

    private void enforceSystem() {
        if (!isCallerSystem()) {
            throw new SecurityException("Caller must be system");
        }
    }

    private void enforceResetThrottlingPermission() {
        if (isCallerSystem()) {
            return;
        }
        enforceCallingOrSelfPermission("android.permission.RESET_SHORTCUT_MANAGER_THROTTLING", null);
    }

    private void enforceCallingOrSelfPermission(String permission, String message) {
        if (isCallerSystem()) {
            return;
        }
        injectEnforceCallingPermission(permission, message);
    }

    void injectEnforceCallingPermission(String permission, String message) {
        this.mContext.enforceCallingPermission(permission, message);
    }

    private void verifyCaller(String packageName, int userId) {
        Preconditions.checkStringNotEmpty(packageName, "packageName");
        if (isCallerSystem()) {
            return;
        }
        int callingUid = injectBinderCallingUid();
        if (UserHandle.getUserId(callingUid) != userId) {
            throw new SecurityException("Invalid user-ID");
        }
        if (injectGetPackageUid(packageName, userId) != callingUid) {
            throw new SecurityException("Calling package name mismatch");
        }
        Preconditions.checkState(!isEphemeralApp(packageName, userId), "Ephemeral apps can't use ShortcutManager");
    }

    private void verifyShortcutInfoPackage(String callerPackage, ShortcutInfo si) {
        if (si == null) {
            return;
        }
        if (!Objects.equals(callerPackage, si.getPackage())) {
            EventLog.writeEvent(1397638484, "109824443", -1, "");
            throw new SecurityException("Shortcut package name mismatch");
        }
        int callingUid = injectBinderCallingUid();
        if (UserHandle.getUserId(callingUid) != si.getUserId()) {
            throw new SecurityException("User-ID in shortcut doesn't match the caller");
        }
    }

    private void verifyShortcutInfoPackages(String callerPackage, List<ShortcutInfo> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            verifyShortcutInfoPackage(callerPackage, list.get(i));
        }
    }

    void injectPostToHandler(Runnable r) {
        this.mHandler.post(r);
    }

    void injectRunOnNewThread(Runnable r) {
        new Thread(r).start();
    }

    void enforceMaxActivityShortcuts(int numShortcuts) {
        if (numShortcuts > this.mMaxShortcuts) {
            throw new IllegalArgumentException("Max number of dynamic shortcuts exceeded");
        }
    }

    int getMaxActivityShortcuts() {
        return this.mMaxShortcuts;
    }

    int getMaxAppShortcuts() {
        return this.mMaxShortcutsPerApp;
    }

    void packageShortcutsChanged(String packageName, int userId, List<ShortcutInfo> changedShortcuts, List<ShortcutInfo> removedShortcuts) {
        notifyListeners(packageName, userId);
        notifyShortcutChangeCallbacks(packageName, userId, changedShortcuts, removedShortcuts);
        scheduleSaveUser(userId);
    }

    private void notifyListeners(final String packageName, final int userId) {
        injectPostToHandler(new Runnable() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$DzwraUeMWDwA0XDfFxd3sGOsA0E
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyListeners$1$ShortcutService(userId, packageName);
            }
        });
    }

    public /* synthetic */ void lambda$notifyListeners$1$ShortcutService(int userId, String packageName) {
        try {
            synchronized (this.mLock) {
                if (isUserUnlockedL(userId)) {
                    ArrayList<ShortcutServiceInternal.ShortcutChangeListener> copy = new ArrayList<>(this.mListeners);
                    for (int i = copy.size() - 1; i >= 0; i--) {
                        copy.get(i).onShortcutChanged(packageName, userId);
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    private void notifyShortcutChangeCallbacks(final String packageName, final int userId, List<ShortcutInfo> changedShortcuts, List<ShortcutInfo> removedShortcuts) {
        final List<ShortcutInfo> changedList = removeNonKeyFields(changedShortcuts);
        final List<ShortcutInfo> removedList = removeNonKeyFields(removedShortcuts);
        final UserHandle user = UserHandle.of(userId);
        injectPostToHandler(new Runnable() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$C0yXUUdkpfa84Nq_Po6ovVJWCBk
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyShortcutChangeCallbacks$2$ShortcutService(userId, changedList, packageName, user, removedList);
            }
        });
    }

    public /* synthetic */ void lambda$notifyShortcutChangeCallbacks$2$ShortcutService(int userId, List changedList, String packageName, UserHandle user, List removedList) {
        try {
            synchronized (this.mLock) {
                if (isUserUnlockedL(userId)) {
                    ArrayList<LauncherApps.ShortcutChangeCallback> copy = new ArrayList<>(this.mShortcutChangeCallbacks);
                    for (int i = copy.size() - 1; i >= 0; i--) {
                        if (!CollectionUtils.isEmpty(changedList)) {
                            copy.get(i).onShortcutsAddedOrUpdated(packageName, changedList, user);
                        }
                        if (!CollectionUtils.isEmpty(removedList)) {
                            copy.get(i).onShortcutsRemoved(packageName, removedList, user);
                        }
                    }
                }
            }
        } catch (Exception e) {
        }
    }

    private List<ShortcutInfo> removeNonKeyFields(List<ShortcutInfo> shortcutInfos) {
        if (CollectionUtils.isEmpty(shortcutInfos)) {
            return shortcutInfos;
        }
        int size = shortcutInfos.size();
        List<ShortcutInfo> keyFieldOnlyShortcuts = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            ShortcutInfo si = shortcutInfos.get(i);
            if (si.hasKeyFieldsOnly()) {
                keyFieldOnlyShortcuts.add(si);
            } else {
                keyFieldOnlyShortcuts.add(si.clone(4));
            }
        }
        return keyFieldOnlyShortcuts;
    }

    private void fixUpIncomingShortcutInfo(ShortcutInfo shortcut, boolean forUpdate, boolean forPinRequest) {
        if (shortcut.isReturnedByServer()) {
            Log.w(TAG, "Re-publishing ShortcutInfo returned by server is not supported. Some information such as icon may lost from shortcut.");
        }
        Objects.requireNonNull(shortcut, "Null shortcut detected");
        if (shortcut.getActivity() != null) {
            Preconditions.checkState(shortcut.getPackage().equals(shortcut.getActivity().getPackageName()), "Cannot publish shortcut: activity " + shortcut.getActivity() + " does not belong to package " + shortcut.getPackage());
            Preconditions.checkState(injectIsMainActivity(shortcut.getActivity(), shortcut.getUserId()), "Cannot publish shortcut: activity " + shortcut.getActivity() + " is not main activity");
        }
        if (!forUpdate) {
            shortcut.enforceMandatoryFields(forPinRequest);
            if (!forPinRequest) {
                Preconditions.checkState(shortcut.getActivity() != null, "Cannot publish shortcut: target activity is not set");
            }
        }
        if (shortcut.getIcon() != null) {
            ShortcutInfo.validateIcon(shortcut.getIcon());
            validateIconURI(shortcut);
        }
        shortcut.replaceFlags(shortcut.getFlags() & 8192);
    }

    private void validateIconURI(ShortcutInfo si) {
        int callingUid = injectBinderCallingUid();
        Icon icon = si.getIcon();
        if (icon == null) {
            return;
        }
        int iconType = icon.getType();
        if (iconType != 4 && iconType != 6) {
            return;
        }
        Uri uri = icon.getUri();
        this.mUriGrantsManagerInternal.checkGrantUriPermission(callingUid, si.getPackage(), ContentProvider.getUriWithoutUserId(uri), 1, ContentProvider.getUserIdFromUri(uri, UserHandle.getUserId(callingUid)));
    }

    private void fixUpIncomingShortcutInfo(ShortcutInfo shortcut, boolean forUpdate) {
        fixUpIncomingShortcutInfo(shortcut, forUpdate, false);
    }

    public void validateShortcutForPinRequest(ShortcutInfo shortcut) {
        fixUpIncomingShortcutInfo(shortcut, false, true);
    }

    private void fillInDefaultActivity(List<ShortcutInfo> shortcuts) {
        ComponentName defaultActivity = null;
        for (int i = shortcuts.size() - 1; i >= 0; i--) {
            ShortcutInfo si = shortcuts.get(i);
            if (si.getActivity() == null) {
                if (defaultActivity == null) {
                    defaultActivity = injectGetDefaultMainActivity(si.getPackage(), si.getUserId());
                    Preconditions.checkState(defaultActivity != null, "Launcher activity not found for package " + si.getPackage());
                }
                si.setActivity(defaultActivity);
            }
        }
    }

    private void assignImplicitRanks(List<ShortcutInfo> shortcuts) {
        for (int i = shortcuts.size() - 1; i >= 0; i--) {
            shortcuts.get(i).setImplicitRank(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ShortcutInfo> setReturnedByServer(List<ShortcutInfo> shortcuts) {
        for (int i = shortcuts.size() - 1; i >= 0; i--) {
            shortcuts.get(i).setReturnedByServer();
        }
        return shortcuts;
    }

    public boolean setDynamicShortcuts(String packageName, ParceledListSlice shortcutInfoList, int userId) {
        verifyCaller(packageName, userId);
        List<ShortcutInfo> newShortcuts = shortcutInfoList.getList();
        verifyShortcutInfoPackages(packageName, newShortcuts);
        int size = newShortcuts.size();
        boolean unlimited = injectHasUnlimitedShortcutsApiCallsPermission(injectBinderCallingPid(), injectBinderCallingUid());
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureImmutableShortcutsNotIncluded(newShortcuts, true);
            ps.ensureNoBitmapIconIfShortcutIsLongLived(newShortcuts);
            fillInDefaultActivity(newShortcuts);
            ps.enforceShortcutCountsBeforeOperation(newShortcuts, 0);
            if (!ps.tryApiCall(unlimited)) {
                return false;
            }
            ps.clearAllImplicitRanks();
            assignImplicitRanks(newShortcuts);
            for (int i = 0; i < size; i++) {
                fixUpIncomingShortcutInfo(newShortcuts.get(i), false);
            }
            ArrayList<ShortcutInfo> cachedOrPinned = new ArrayList<>();
            ps.findAll(cachedOrPinned, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$DlyVHLCHgNWOlnYHhNVJsbaPjzA
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ShortcutService.lambda$setDynamicShortcuts$3((ShortcutInfo) obj);
                }
            }, 4);
            List<ShortcutInfo> removedShortcuts = ps.deleteAllDynamicShortcuts(true);
            for (int i2 = 0; i2 < size; i2++) {
                ShortcutInfo newShortcut = newShortcuts.get(i2);
                ps.addOrReplaceDynamicShortcut(newShortcut);
            }
            ps.adjustRanks();
            List<ShortcutInfo> changedShortcuts = prepareChangedShortcuts(cachedOrPinned, newShortcuts, removedShortcuts, ps);
            packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
            verifyStates();
            return true;
        }
    }

    static /* synthetic */ boolean lambda$setDynamicShortcuts$3(ShortcutInfo si) {
        return si.isVisibleToPublisher() && si.isDynamic() && (si.isCached() || si.isPinned());
    }

    public boolean updateShortcuts(String packageName, ParceledListSlice shortcutInfoList, int userId) {
        verifyCaller(packageName, userId);
        List<ShortcutInfo> newShortcuts = shortcutInfoList.getList();
        verifyShortcutInfoPackages(packageName, newShortcuts);
        int size = newShortcuts.size();
        boolean unlimited = injectHasUnlimitedShortcutsApiCallsPermission(injectBinderCallingPid(), injectBinderCallingUid());
        List<ShortcutInfo> changedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            boolean z = true;
            ps.ensureImmutableShortcutsNotIncluded(newShortcuts, true);
            ps.ensureNoBitmapIconIfShortcutIsLongLived(newShortcuts);
            ps.enforceShortcutCountsBeforeOperation(newShortcuts, 2);
            if (!ps.tryApiCall(unlimited)) {
                return false;
            }
            ps.clearAllImplicitRanks();
            assignImplicitRanks(newShortcuts);
            int i = 0;
            while (i < size) {
                ShortcutInfo source = newShortcuts.get(i);
                fixUpIncomingShortcutInfo(source, z);
                ShortcutInfo target = ps.findShortcutById(source.getId());
                if (target != null && target.isVisibleToPublisher()) {
                    if (target.isEnabled() != source.isEnabled()) {
                        Slog.w(TAG, "ShortcutInfo.enabled cannot be changed with updateShortcuts()");
                    }
                    if (target.isLongLived() != source.isLongLived()) {
                        Slog.w(TAG, "ShortcutInfo.longLived cannot be changed with updateShortcuts()");
                    }
                    if (source.hasRank()) {
                        target.setRankChanged();
                        target.setImplicitRank(source.getImplicitRank());
                    }
                    boolean replacingIcon = source.getIcon() != null ? z : false;
                    if (replacingIcon) {
                        removeIconLocked(target);
                    }
                    target.copyNonNullFieldsFrom(source);
                    target.setTimestamp(injectCurrentTimeMillis());
                    if (replacingIcon) {
                        saveIconAndFixUpShortcutLocked(target);
                    }
                    if (replacingIcon || source.hasStringResources()) {
                        fixUpShortcutResourceNamesAndValues(target);
                    }
                    if (changedShortcuts == null) {
                        changedShortcuts = new ArrayList<>(1);
                    }
                    changedShortcuts.add(target);
                }
                i++;
                z = true;
            }
            ps.adjustRanks();
            packageShortcutsChanged(packageName, userId, changedShortcuts, null);
            verifyStates();
            return true;
        }
    }

    public boolean addDynamicShortcuts(String packageName, ParceledListSlice shortcutInfoList, int userId) {
        verifyCaller(packageName, userId);
        List<ShortcutInfo> newShortcuts = shortcutInfoList.getList();
        verifyShortcutInfoPackages(packageName, newShortcuts);
        int size = newShortcuts.size();
        boolean unlimited = injectHasUnlimitedShortcutsApiCallsPermission(injectBinderCallingPid(), injectBinderCallingUid());
        List<ShortcutInfo> changedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureImmutableShortcutsNotIncluded(newShortcuts, true);
            ps.ensureNoBitmapIconIfShortcutIsLongLived(newShortcuts);
            fillInDefaultActivity(newShortcuts);
            ps.enforceShortcutCountsBeforeOperation(newShortcuts, 1);
            ps.clearAllImplicitRanks();
            assignImplicitRanks(newShortcuts);
            if (!ps.tryApiCall(unlimited)) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                ShortcutInfo newShortcut = newShortcuts.get(i);
                fixUpIncomingShortcutInfo(newShortcut, false);
                newShortcut.setRankChanged();
                ps.addOrReplaceDynamicShortcut(newShortcut);
                if (changedShortcuts == null) {
                    changedShortcuts = new ArrayList<>(1);
                }
                changedShortcuts.add(newShortcut);
            }
            ps.adjustRanks();
            packageShortcutsChanged(packageName, userId, changedShortcuts, null);
            verifyStates();
            return true;
        }
    }

    public void pushDynamicShortcut(String packageName, ShortcutInfo shortcut, int userId) {
        verifyCaller(packageName, userId);
        verifyShortcutInfoPackage(packageName, shortcut);
        List<ShortcutInfo> changedShortcuts = new ArrayList<>();
        List<ShortcutInfo> removedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureNotImmutable(shortcut.getId(), true);
            fillInDefaultActivity(Arrays.asList(shortcut));
            if (!shortcut.hasRank()) {
                shortcut.setRank(0);
            }
            ps.clearAllImplicitRanks();
            shortcut.setImplicitRank(0);
            fixUpIncomingShortcutInfo(shortcut, false);
            shortcut.setRankChanged();
            boolean deleted = ps.pushDynamicShortcut(shortcut, changedShortcuts);
            if (deleted) {
                if (changedShortcuts.isEmpty()) {
                    return;
                }
                removedShortcuts = Collections.singletonList(changedShortcuts.get(0));
                changedShortcuts.clear();
            }
            changedShortcuts.add(shortcut);
            ps.adjustRanks();
            packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
            verifyStates();
        }
    }

    public boolean requestPinShortcut(String packageName, ShortcutInfo shortcut, IntentSender resultIntent, int userId) {
        Objects.requireNonNull(shortcut);
        Preconditions.checkArgument(shortcut.isEnabled(), "Shortcut must be enabled");
        return requestPinItem(packageName, userId, shortcut, null, null, resultIntent);
    }

    public Intent createShortcutResultIntent(String packageName, ShortcutInfo shortcut, int userId) throws RemoteException {
        Intent ret;
        Objects.requireNonNull(shortcut);
        Preconditions.checkArgument(shortcut.isEnabled(), "Shortcut must be enabled");
        verifyCaller(packageName, userId);
        verifyShortcutInfoPackage(packageName, shortcut);
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ret = this.mShortcutRequestPinProcessor.createShortcutResultIntent(shortcut, userId);
        }
        verifyStates();
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean requestPinItem(String callingPackage, int userId, ShortcutInfo shortcut, AppWidgetProviderInfo appWidget, Bundle extras, IntentSender resultIntent) {
        boolean ret;
        verifyCaller(callingPackage, userId);
        if (shortcut == null || !injectHasAccessShortcutsPermission(injectBinderCallingPid(), injectBinderCallingUid())) {
            verifyShortcutInfoPackage(callingPackage, shortcut);
        }
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            Preconditions.checkState(isUidForegroundLocked(injectBinderCallingUid()), "Calling application must have a foreground activity or a foreground service");
            if (shortcut != null) {
                String shortcutPackage = shortcut.getPackage();
                ShortcutPackage ps = getPackageShortcutsForPublisherLocked(shortcutPackage, userId);
                String id = shortcut.getId();
                if (ps.isShortcutExistsAndInvisibleToPublisher(id)) {
                    ps.updateInvisibleShortcutForPinRequestWith(shortcut);
                    packageShortcutsChanged(shortcutPackage, userId, Collections.singletonList(shortcut), null);
                }
            }
            ret = this.mShortcutRequestPinProcessor.requestPinItemLocked(shortcut, appWidget, extras, userId, resultIntent);
        }
        verifyStates();
        return ret;
    }

    public void disableShortcuts(String packageName, List shortcutIds, CharSequence disabledMessage, int disabledMessageResId, int userId) {
        int i;
        verifyCaller(packageName, userId);
        Objects.requireNonNull(shortcutIds, "shortcutIds must be provided");
        List<ShortcutInfo> changedShortcuts = null;
        List<ShortcutInfo> removedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureImmutableShortcutsNotIncludedWithIds(shortcutIds, true);
            String disabledMessageString = disabledMessage == null ? null : disabledMessage.toString();
            int i2 = shortcutIds.size() - 1;
            while (i2 >= 0) {
                String id = (String) Preconditions.checkStringNotEmpty((String) shortcutIds.get(i2));
                if (!ps.isShortcutExistsAndVisibleToPublisher(id)) {
                    i = i2;
                } else {
                    i = i2;
                    ShortcutInfo deleted = ps.disableWithId(id, disabledMessageString, disabledMessageResId, false, true, 1);
                    if (deleted == null) {
                        if (changedShortcuts == null) {
                            changedShortcuts = new ArrayList<>(1);
                        }
                        changedShortcuts.add(ps.findShortcutById(id));
                    } else {
                        if (removedShortcuts == null) {
                            removedShortcuts = new ArrayList<>(1);
                        }
                        removedShortcuts.add(deleted);
                    }
                }
                i2 = i - 1;
            }
            ps.adjustRanks();
        }
        packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
        verifyStates();
    }

    public void enableShortcuts(String packageName, List shortcutIds, int userId) {
        verifyCaller(packageName, userId);
        Objects.requireNonNull(shortcutIds, "shortcutIds must be provided");
        List<ShortcutInfo> changedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureImmutableShortcutsNotIncludedWithIds(shortcutIds, true);
            for (int i = shortcutIds.size() - 1; i >= 0; i--) {
                String id = (String) Preconditions.checkStringNotEmpty((String) shortcutIds.get(i));
                if (ps.isShortcutExistsAndVisibleToPublisher(id)) {
                    ps.enableWithId(id);
                    if (changedShortcuts == null) {
                        changedShortcuts = new ArrayList<>(1);
                    }
                    changedShortcuts.add(ps.findShortcutById(id));
                }
            }
        }
        packageShortcutsChanged(packageName, userId, changedShortcuts, null);
        verifyStates();
    }

    public void removeDynamicShortcuts(String packageName, List shortcutIds, int userId) {
        verifyCaller(packageName, userId);
        Objects.requireNonNull(shortcutIds, "shortcutIds must be provided");
        List<ShortcutInfo> changedShortcuts = null;
        List<ShortcutInfo> removedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureImmutableShortcutsNotIncludedWithIds(shortcutIds, true);
            for (int i = shortcutIds.size() - 1; i >= 0; i--) {
                String id = (String) Preconditions.checkStringNotEmpty((String) shortcutIds.get(i));
                if (ps.isShortcutExistsAndVisibleToPublisher(id)) {
                    ShortcutInfo removed = ps.deleteDynamicWithId(id, true);
                    if (removed == null) {
                        if (changedShortcuts == null) {
                            changedShortcuts = new ArrayList<>(1);
                        }
                        changedShortcuts.add(ps.findShortcutById(id));
                    } else {
                        if (removedShortcuts == null) {
                            removedShortcuts = new ArrayList<>(1);
                        }
                        removedShortcuts.add(removed);
                    }
                }
            }
            ps.adjustRanks();
        }
        packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
        verifyStates();
    }

    public void removeAllDynamicShortcuts(String packageName, int userId) {
        List<ShortcutInfo> removedShortcuts;
        List<ShortcutInfo> changedShortcuts;
        verifyCaller(packageName, userId);
        List<ShortcutInfo> changedShortcuts2 = new ArrayList<>();
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.findAll(changedShortcuts2, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$V6GjHj4-udIeQtDZFS3k29Mi84s
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ShortcutService.lambda$removeAllDynamicShortcuts$4((ShortcutInfo) obj);
                }
            }, 4);
            removedShortcuts = ps.deleteAllDynamicShortcuts(true);
            changedShortcuts = prepareChangedShortcuts(changedShortcuts2, (List<ShortcutInfo>) null, removedShortcuts, ps);
        }
        packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
        verifyStates();
    }

    static /* synthetic */ boolean lambda$removeAllDynamicShortcuts$4(ShortcutInfo si) {
        return si.isVisibleToPublisher() && si.isDynamic() && (si.isCached() || si.isPinned());
    }

    public void removeLongLivedShortcuts(String packageName, List shortcutIds, int userId) {
        verifyCaller(packageName, userId);
        Objects.requireNonNull(shortcutIds, "shortcutIds must be provided");
        List<ShortcutInfo> changedShortcuts = null;
        List<ShortcutInfo> removedShortcuts = null;
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            ps.ensureImmutableShortcutsNotIncludedWithIds(shortcutIds, true);
            for (int i = shortcutIds.size() - 1; i >= 0; i--) {
                String id = (String) Preconditions.checkStringNotEmpty((String) shortcutIds.get(i));
                if (ps.isShortcutExistsAndVisibleToPublisher(id)) {
                    ShortcutInfo removed = ps.deleteLongLivedWithId(id, true);
                    if (removed != null) {
                        if (removedShortcuts == null) {
                            removedShortcuts = new ArrayList<>(1);
                        }
                        removedShortcuts.add(removed);
                    } else {
                        if (changedShortcuts == null) {
                            changedShortcuts = new ArrayList<>(1);
                        }
                        changedShortcuts.add(ps.findShortcutById(id));
                    }
                }
            }
            ps.adjustRanks();
        }
        packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
        verifyStates();
    }

    public ParceledListSlice<ShortcutInfo> getShortcuts(String packageName, int matchFlags, int userId) {
        ParceledListSlice<ShortcutInfo> shortcutsWithQueryLocked;
        verifyCaller(packageName, userId);
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            int i = 1;
            boolean matchDynamic = (matchFlags & 2) != 0;
            boolean matchPinned = (matchFlags & 4) != 0;
            boolean matchManifest = (matchFlags & 1) != 0;
            boolean matchCached = (matchFlags & 8) != 0;
            if (!matchDynamic) {
                i = 0;
            }
            final int shortcutFlags = i | (matchPinned ? 2 : 0) | (matchManifest ? 32 : 0) | (matchCached ? 1073758208 : 0);
            shortcutsWithQueryLocked = getShortcutsWithQueryLocked(packageName, userId, 9, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$bUNM2X7HsDkEuXTgWxUN3PZ91eM
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ShortcutService.lambda$getShortcuts$5(shortcutFlags, (ShortcutInfo) obj);
                }
            });
        }
        return shortcutsWithQueryLocked;
    }

    static /* synthetic */ boolean lambda$getShortcuts$5(int shortcutFlags, ShortcutInfo si) {
        return si.isVisibleToPublisher() && (si.getFlags() & shortcutFlags) != 0;
    }

    public ParceledListSlice<ShortcutManager.ShareShortcutInfo> getShareTargets(String packageName, final IntentFilter filter, int userId) {
        ParceledListSlice<ShortcutManager.ShareShortcutInfo> parceledListSlice;
        Preconditions.checkStringNotEmpty(packageName, "packageName");
        Objects.requireNonNull(filter, "intentFilter");
        verifyCaller(packageName, userId);
        enforceCallingOrSelfPermission("android.permission.MANAGE_APP_PREDICTIONS", "getShareTargets");
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            final List<ShortcutManager.ShareShortcutInfo> shortcutInfoList = new ArrayList<>();
            ShortcutUser user = getUserShortcutsLocked(userId);
            user.forAllPackages(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$QuvzvQw2OLXyKBCHpvWJarlmahg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    shortcutInfoList.addAll(((ShortcutPackage) obj).getMatchingShareTargets(filter));
                }
            });
            parceledListSlice = new ParceledListSlice<>(shortcutInfoList);
        }
        return parceledListSlice;
    }

    public boolean hasShareTargets(String packageName, String packageToCheck, int userId) {
        boolean zHasShareTargets;
        verifyCaller(packageName, userId);
        enforceCallingOrSelfPermission("android.permission.MANAGE_APP_PREDICTIONS", "hasShareTargets");
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            zHasShareTargets = getPackageShortcutsLocked(packageToCheck, userId).hasShareTargets();
        }
        return zHasShareTargets;
    }

    public boolean isSharingShortcut(int callingUserId, String callingPackage, String packageName, String shortcutId, int userId, IntentFilter filter) {
        verifyCaller(callingPackage, callingUserId);
        enforceCallingOrSelfPermission("android.permission.MANAGE_APP_PREDICTIONS", "isSharingShortcut");
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            throwIfUserLockedL(callingUserId);
            List<ShortcutManager.ShareShortcutInfo> matchedTargets = getPackageShortcutsLocked(packageName, userId).getMatchingShareTargets(filter);
            int matchedSize = matchedTargets.size();
            for (int i = 0; i < matchedSize; i++) {
                if (matchedTargets.get(i).getShortcutInfo().getId().equals(shortcutId)) {
                    return true;
                }
            }
            return false;
        }
    }

    private ParceledListSlice<ShortcutInfo> getShortcutsWithQueryLocked(String packageName, int userId, int cloneFlags, Predicate<ShortcutInfo> query) {
        ArrayList<ShortcutInfo> ret = new ArrayList<>();
        ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
        ps.findAll(ret, query, cloneFlags);
        return new ParceledListSlice<>(setReturnedByServer(ret));
    }

    public int getMaxShortcutCountPerActivity(String packageName, int userId) throws RemoteException {
        verifyCaller(packageName, userId);
        return this.mMaxShortcuts;
    }

    public int getRemainingCallCount(String packageName, int userId) {
        int apiCallCount;
        verifyCaller(packageName, userId);
        boolean unlimited = injectHasUnlimitedShortcutsApiCallsPermission(injectBinderCallingPid(), injectBinderCallingUid());
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            apiCallCount = this.mMaxUpdatesPerInterval - ps.getApiCallCount(unlimited);
        }
        return apiCallCount;
    }

    public long getRateLimitResetTime(String packageName, int userId) {
        long nextResetTimeLocked;
        verifyCaller(packageName, userId);
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            nextResetTimeLocked = getNextResetTimeLocked();
        }
        return nextResetTimeLocked;
    }

    public int getIconMaxDimensions(String packageName, int userId) {
        int i;
        verifyCaller(packageName, userId);
        synchronized (this.mLock) {
            i = this.mMaxIconDimension;
        }
        return i;
    }

    public void reportShortcutUsed(String packageName, String shortcutId, int userId) {
        verifyCaller(packageName, userId);
        Objects.requireNonNull(shortcutId);
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutPackage ps = getPackageShortcutsForPublisherLocked(packageName, userId);
            if (ps.findShortcutById(shortcutId) == null) {
                Log.w(TAG, String.format("reportShortcutUsed: package %s doesn't have shortcut %s", packageName, shortcutId));
                return;
            }
            long token = injectClearCallingIdentity();
            try {
                this.mUsageStatsManagerInternal.reportShortcutUsage(packageName, shortcutId, userId);
            } finally {
                injectRestoreCallingIdentity(token);
            }
        }
    }

    public boolean isRequestPinItemSupported(int callingUserId, int requestType) {
        long token = injectClearCallingIdentity();
        try {
            return this.mShortcutRequestPinProcessor.isRequestPinItemSupported(callingUserId, requestType);
        } finally {
            injectRestoreCallingIdentity(token);
        }
    }

    public void resetThrottling() {
        enforceSystemOrShell();
        resetThrottlingInner(getCallingUserId());
    }

    void resetThrottlingInner(int userId) {
        synchronized (this.mLock) {
            if (!isUserUnlockedL(userId)) {
                Log.w(TAG, "User " + userId + " is locked or not running");
                return;
            }
            getUserShortcutsLocked(userId).resetThrottling();
            scheduleSaveUser(userId);
            Slog.i(TAG, "ShortcutManager: throttling counter reset for user " + userId);
        }
    }

    void resetAllThrottlingInner() {
        synchronized (this.mLock) {
            this.mRawLastResetTime = injectCurrentTimeMillis();
        }
        scheduleSaveBaseState();
        Slog.i(TAG, "ShortcutManager: throttling counter reset for all users");
    }

    public void onApplicationActive(String packageName, int userId) {
        enforceResetThrottlingPermission();
        synchronized (this.mLock) {
            if (isUserUnlockedL(userId)) {
                getPackageShortcutsLocked(packageName, userId).resetRateLimitingForCommandLineNoSaving();
                saveUserLocked(userId);
            }
        }
    }

    boolean hasShortcutHostPermission(String callingPackage, int userId, int callingPid, int callingUid) {
        if (canSeeAnyPinnedShortcut(callingPackage, userId, callingPid, callingUid)) {
            return true;
        }
        long start = getStatStartTime();
        try {
            return hasShortcutHostPermissionInner(callingPackage, userId);
        } finally {
            logDurationStat(4, start);
        }
    }

    boolean canSeeAnyPinnedShortcut(String callingPackage, int userId, int callingPid, int callingUid) {
        boolean zHasHostPackage;
        if (injectHasAccessShortcutsPermission(callingPid, callingUid)) {
            return true;
        }
        synchronized (this.mLock) {
            zHasHostPackage = getNonPersistentUserLocked(userId).hasHostPackage(callingPackage);
        }
        return zHasHostPackage;
    }

    boolean injectHasAccessShortcutsPermission(int callingPid, int callingUid) {
        return this.mContext.checkPermission("android.permission.ACCESS_SHORTCUTS", callingPid, callingUid) == 0;
    }

    boolean injectHasUnlimitedShortcutsApiCallsPermission(int callingPid, int callingUid) {
        return this.mContext.checkPermission("android.permission.UNLIMITED_SHORTCUTS_API_CALLS", callingPid, callingUid) == 0;
    }

    boolean hasShortcutHostPermissionInner(String packageName, int userId) {
        synchronized (this.mLock) {
            throwIfUserLockedL(userId);
            ShortcutUser user = getUserShortcutsLocked(userId);
            ComponentName cached = user.getCachedLauncher();
            if (cached != null && cached.getPackageName().equals(packageName)) {
                return true;
            }
            ComponentName detected = getDefaultLauncher(userId);
            user.setLauncher(detected);
            if (detected != null) {
                return detected.getPackageName().equals(packageName);
            }
            return false;
        }
    }

    ComponentName getDefaultLauncher(int userId) {
        ComponentName detected;
        long start = getStatStartTime();
        long token = injectClearCallingIdentity();
        try {
            synchronized (this.mLock) {
                throwIfUserLockedL(userId);
                ShortcutUser user = getUserShortcutsLocked(userId);
                List<ResolveInfo> allHomeCandidates = new ArrayList<>();
                long startGetHomeActivitiesAsUser = getStatStartTime();
                ComponentName defaultLauncher = this.mPackageManagerInternal.getHomeActivitiesAsUser(allHomeCandidates, userId);
                logDurationStat(0, startGetHomeActivitiesAsUser);
                if (defaultLauncher != null) {
                    detected = defaultLauncher;
                } else {
                    detected = user.getLastKnownLauncher();
                    if (detected != null && !injectIsActivityEnabledAndExported(detected, userId)) {
                        Slog.w(TAG, "Cached launcher " + detected + " no longer exists");
                        detected = null;
                        user.clearLauncher();
                    }
                }
                if (detected == null) {
                    int size = allHomeCandidates.size();
                    int lastPriority = Integer.MIN_VALUE;
                    int i = 0;
                    while (i < size) {
                        ResolveInfo ri = allHomeCandidates.get(i);
                        ShortcutUser user2 = user;
                        if (ri.activityInfo.applicationInfo.isSystemApp() && ri.priority >= lastPriority) {
                            detected = ri.activityInfo.getComponentName();
                            lastPriority = ri.priority;
                        }
                        i++;
                        user = user2;
                    }
                }
            }
            injectRestoreCallingIdentity(token);
            logDurationStat(16, start);
            return detected;
        } catch (Throwable th) {
            injectRestoreCallingIdentity(token);
            logDurationStat(16, start);
            throw th;
        }
    }

    public void setShortcutHostPackage(String type, String packageName, int userId) {
        synchronized (this.mLock) {
            getNonPersistentUserLocked(userId).setShortcutHostPackage(type, packageName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanUpPackageForAllLoadedUsers(final String packageName, final int packageUserId, final boolean appStillExists) {
        synchronized (this.mLock) {
            forEachLoadedUserLocked(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$6eafFDj6T22u1nVQUQPfXcU6otY
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$cleanUpPackageForAllLoadedUsers$7$ShortcutService(packageName, packageUserId, appStillExists, (ShortcutUser) obj);
                }
            });
        }
    }

    public /* synthetic */ void lambda$cleanUpPackageForAllLoadedUsers$7$ShortcutService(String packageName, int packageUserId, boolean appStillExists, ShortcutUser user) {
        cleanUpPackageLocked(packageName, user.getUserId(), packageUserId, appStillExists);
    }

    void cleanUpPackageLocked(final String packageName, int owningUserId, final int packageUserId, boolean appStillExists) {
        boolean wasUserLoaded = isUserLoadedLocked(owningUserId);
        ShortcutUser user = getUserShortcutsLocked(owningUserId);
        boolean doNotify = false;
        if (packageUserId == owningUserId && user.removePackage(packageName) != null) {
            doNotify = true;
        }
        user.removeLauncher(packageUserId, packageName);
        user.forAllLaunchers(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$rj7stIjqch4FbxzDesJY6j0V65s
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ShortcutLauncher) obj).cleanUpPackage(packageName, packageUserId);
            }
        });
        user.forAllPackages(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$d1c3hmNwu_ycWMRQ1TT467sb-oU
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((ShortcutPackage) obj).refreshPinnedFlags();
            }
        });
        scheduleSaveUser(owningUserId);
        if (doNotify) {
            notifyListeners(packageName, owningUserId);
        }
        if (appStillExists && packageUserId == owningUserId) {
            user.rescanPackageIfNeeded(packageName, true);
        }
        if (!wasUserLoaded) {
            unloadUserLocked(owningUserId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class LocalService extends ShortcutServiceInternal {
        private LocalService() {
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x00b9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.List<android.content.pm.ShortcutInfo> getShortcuts(final int r33, final java.lang.String r34, final long r35, java.lang.String r37, java.util.List<java.lang.String> r38, final java.util.List<android.content.LocusId> r39, final android.content.ComponentName r40, final int r41, final int r42, final int r43, final int r44) throws java.lang.Throwable {
            /*
                r32 = this;
                r15 = r32
                r14 = r33
                r12 = r42
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r11 = r0
                r0 = r41 & 4
                if (r0 == 0) goto L12
                r0 = 1
                goto L13
            L12:
                r0 = 0
            L13:
                r29 = r0
                if (r29 == 0) goto L1a
                r0 = 4
                r13 = r0
                goto L1d
            L1a:
                r0 = 27
                r13 = r0
            L1d:
                if (r37 != 0) goto L24
                r0 = 0
                r30 = r0
                goto L26
            L24:
                r30 = r38
            L26:
                com.android.server.pm.ShortcutService r0 = com.android.server.pm.ShortcutService.this
                java.lang.Object r31 = com.android.server.pm.ShortcutService.access$200(r0)
                monitor-enter(r31)
                com.android.server.pm.ShortcutService r0 = com.android.server.pm.ShortcutService.this     // Catch: java.lang.Throwable -> Lb3
                r0.throwIfUserLockedL(r12)     // Catch: java.lang.Throwable -> Lb3
                com.android.server.pm.ShortcutService r0 = com.android.server.pm.ShortcutService.this     // Catch: java.lang.Throwable -> Lb3
                r0.throwIfUserLockedL(r14)     // Catch: java.lang.Throwable -> Lb3
                com.android.server.pm.ShortcutService r0 = com.android.server.pm.ShortcutService.this     // Catch: java.lang.Throwable -> Lb3
                r10 = r34
                com.android.server.pm.ShortcutLauncher r0 = r0.getLauncherShortcutsLocked(r10, r12, r14)     // Catch: java.lang.Throwable -> Lb3
                r0.attemptToRestoreIfNeededAndSave()     // Catch: java.lang.Throwable -> Lb3
                if (r37 == 0) goto L70
                r1 = r32
                r2 = r33
                r3 = r34
                r4 = r37
                r5 = r30
                r6 = r39
                r7 = r35
                r9 = r40
                r10 = r41
                r38 = r11
                r11 = r42
                r12 = r38
                r14 = r43
                r15 = r44
                r1.getShortcutsInnerLocked(r2, r3, r4, r5, r6, r7, r9, r10, r11, r12, r13, r14, r15)     // Catch: java.lang.Throwable -> L68
                r1 = r32
                r2 = r42
                goto L9f
            L68:
                r0 = move-exception
                r1 = r32
                r3 = r38
                r2 = r42
                goto Lb7
            L70:
                r38 = r11
                r18 = r30
                r19 = r39
                r1 = r32
                com.android.server.pm.ShortcutService r0 = com.android.server.pm.ShortcutService.this     // Catch: java.lang.Throwable -> Lad
                r2 = r42
                com.android.server.pm.ShortcutUser r0 = r0.getUserShortcutsLocked(r2)     // Catch: java.lang.Throwable -> La9
                com.android.server.pm.-$$Lambda$ShortcutService$LocalService$OwXAUkceFTQAGpPzTbihl14wvP4 r3 = new com.android.server.pm.-$$Lambda$ShortcutService$LocalService$OwXAUkceFTQAGpPzTbihl14wvP4     // Catch: java.lang.Throwable -> La9
                r14 = r3
                r15 = r32
                r16 = r33
                r17 = r34
                r20 = r35
                r22 = r40
                r23 = r41
                r24 = r42
                r25 = r38
                r26 = r13
                r27 = r43
                r28 = r44
                r14.<init>()     // Catch: java.lang.Throwable -> La9
                r0.forAllPackages(r3)     // Catch: java.lang.Throwable -> La9
            L9f:
                monitor-exit(r31)     // Catch: java.lang.Throwable -> La9
                com.android.server.pm.ShortcutService r0 = com.android.server.pm.ShortcutService.this
                r3 = r38
                java.util.List r0 = com.android.server.pm.ShortcutService.access$300(r0, r3)
                return r0
            La9:
                r0 = move-exception
                r3 = r38
                goto Lb2
            Lad:
                r0 = move-exception
                r3 = r38
                r2 = r42
            Lb2:
                goto Lb7
            Lb3:
                r0 = move-exception
                r3 = r11
                r2 = r12
                r1 = r15
            Lb7:
                monitor-exit(r31)     // Catch: java.lang.Throwable -> Lb9
                throw r0
            Lb9:
                r0 = move-exception
                goto Lb7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.ShortcutService.LocalService.getShortcuts(int, java.lang.String, long, java.lang.String, java.util.List, java.util.List, android.content.ComponentName, int, int, int, int):java.util.List");
        }

        public /* synthetic */ void lambda$getShortcuts$0$ShortcutService$LocalService(int launcherUserId, String callingPackage, List shortcutIdsF, List locusIdsF, long changedSince, ComponentName componentName, int queryFlags, int userId, ArrayList ret, int cloneFlag, int callingPid, int callingUid, ShortcutPackage p) {
            getShortcutsInnerLocked(launcherUserId, callingPackage, p.getPackageName(), shortcutIdsF, locusIdsF, changedSince, componentName, queryFlags, userId, ret, cloneFlag, callingPid, callingUid);
        }

        private void getShortcutsInnerLocked(int launcherUserId, String callingPackage, String packageName, List<String> shortcutIds, List<LocusId> locusIds, final long changedSince, final ComponentName componentName, int queryFlags, int userId, ArrayList<ShortcutInfo> ret, int cloneFlag, int callingPid, int callingUid) {
            final ArraySet<String> ids = shortcutIds == null ? null : new ArraySet<>(shortcutIds);
            final ArraySet<LocusId> locIds = locusIds == null ? null : new ArraySet<>(locusIds);
            ShortcutUser user = ShortcutService.this.getUserShortcutsLocked(userId);
            ShortcutPackage p = user.getPackageShortcutsIfExists(packageName);
            if (p == null) {
                return;
            }
            boolean z = false;
            final boolean matchDynamic = (queryFlags & 1) != 0;
            final boolean matchPinned = (queryFlags & 2) != 0;
            final boolean matchManifest = (queryFlags & 8) != 0;
            final boolean matchCached = (queryFlags & 16) != 0;
            boolean canAccessAllShortcuts = ShortcutService.this.canSeeAnyPinnedShortcut(callingPackage, launcherUserId, callingPid, callingUid);
            if (canAccessAllShortcuts && (queryFlags & 1024) != 0) {
                z = true;
            }
            final boolean getPinnedByAnyLauncher = z;
            p.findAll(ret, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$LocalService$glaS4uJCas9aUmjUCxlz_EN5nmQ
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ShortcutService.LocalService.lambda$getShortcutsInnerLocked$1(changedSince, ids, locIds, componentName, matchDynamic, matchPinned, getPinnedByAnyLauncher, matchManifest, matchCached, (ShortcutInfo) obj);
                }
            }, cloneFlag, callingPackage, launcherUserId, getPinnedByAnyLauncher);
        }

        static /* synthetic */ boolean lambda$getShortcutsInnerLocked$1(long changedSince, ArraySet ids, ArraySet locIds, ComponentName componentName, boolean matchDynamic, boolean matchPinned, boolean getPinnedByAnyLauncher, boolean matchManifest, boolean matchCached, ShortcutInfo si) {
            if (si.getLastChangedTimestamp() < changedSince) {
                return false;
            }
            if (ids != null && !ids.contains(si.getId())) {
                return false;
            }
            if (locIds != null && !locIds.contains(si.getLocusId())) {
                return false;
            }
            if (componentName != null && si.getActivity() != null && !si.getActivity().equals(componentName)) {
                return false;
            }
            if (matchDynamic && si.isDynamic()) {
                return true;
            }
            if ((matchPinned || getPinnedByAnyLauncher) && si.isPinned()) {
                return true;
            }
            if (matchManifest && si.isDeclaredInManifest()) {
                return true;
            }
            return matchCached && si.isCached();
        }

        public boolean isPinnedByCaller(int launcherUserId, String callingPackage, String packageName, String shortcutId, int userId) {
            boolean z;
            Preconditions.checkStringNotEmpty(packageName, "packageName");
            Preconditions.checkStringNotEmpty(shortcutId, "shortcutId");
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.throwIfUserLockedL(userId);
                ShortcutService.this.throwIfUserLockedL(launcherUserId);
                ShortcutService.this.getLauncherShortcutsLocked(callingPackage, userId, launcherUserId).attemptToRestoreIfNeededAndSave();
                ShortcutInfo si = getShortcutInfoLocked(launcherUserId, callingPackage, packageName, shortcutId, userId, false);
                z = si != null && si.isPinned();
            }
            return z;
        }

        private ShortcutInfo getShortcutInfoLocked(int launcherUserId, String callingPackage, String packageName, final String shortcutId, int userId, boolean getPinnedByAnyLauncher) {
            Preconditions.checkStringNotEmpty(packageName, "packageName");
            Preconditions.checkStringNotEmpty(shortcutId, "shortcutId");
            ShortcutService.this.throwIfUserLockedL(userId);
            ShortcutService.this.throwIfUserLockedL(launcherUserId);
            ShortcutPackage p = ShortcutService.this.getUserShortcutsLocked(userId).getPackageShortcutsIfExists(packageName);
            if (p == null) {
                return null;
            }
            ArrayList<ShortcutInfo> list = new ArrayList<>(1);
            p.findAll(list, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$LocalService$a6cj3oQpS-Z6FB4DytB0FytYmiM
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return shortcutId.equals(((ShortcutInfo) obj).getId());
                }
            }, 0, callingPackage, launcherUserId, getPinnedByAnyLauncher);
            if (list.size() == 0) {
                return null;
            }
            return list.get(0);
        }

        public void pinShortcuts(int launcherUserId, String callingPackage, String packageName, List<String> shortcutIds, int userId) throws Throwable {
            Preconditions.checkStringNotEmpty(packageName, "packageName");
            Objects.requireNonNull(shortcutIds, "shortcutIds");
            List<ShortcutInfo> removedShortcuts = null;
            synchronized (ShortcutService.this.mLock) {
                try {
                    ShortcutService.this.throwIfUserLockedL(userId);
                    ShortcutService.this.throwIfUserLockedL(launcherUserId);
                    try {
                        ShortcutLauncher launcher = ShortcutService.this.getLauncherShortcutsLocked(callingPackage, userId, launcherUserId);
                        launcher.attemptToRestoreIfNeededAndSave();
                        ShortcutPackage sp = ShortcutService.this.getUserShortcutsLocked(userId).getPackageShortcutsIfExists(packageName);
                        if (sp != null) {
                            List<ShortcutInfo> removedShortcuts2 = new ArrayList<>();
                            try {
                                sp.findAll(removedShortcuts2, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$LocalService$Z9I5BQ6g5nOfmqlBQOxyyd2VQkY
                                    @Override // java.util.function.Predicate
                                    public final boolean test(Object obj) {
                                        return ShortcutService.LocalService.lambda$pinShortcuts$3((ShortcutInfo) obj);
                                    }
                                }, 4, callingPackage, launcherUserId, false);
                                removedShortcuts = removedShortcuts2;
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        }
                        ArraySet<String> oldPinnedIds = launcher.getPinnedShortcutIds(packageName, userId);
                        launcher.pinShortcuts(userId, packageName, shortcutIds, false);
                        if (oldPinnedIds != null && removedShortcuts != null) {
                            for (int i = 0; i < removedShortcuts.size(); i++) {
                                oldPinnedIds.remove(removedShortcuts.get(i).getId());
                            }
                        }
                        List<ShortcutInfo> changedShortcuts = ShortcutService.this.prepareChangedShortcuts(oldPinnedIds, (ArraySet<String>) new ArraySet(shortcutIds), removedShortcuts, sp);
                        ShortcutService.this.packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
                        ShortcutService.this.verifyStates();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }

        static /* synthetic */ boolean lambda$pinShortcuts$3(ShortcutInfo si) {
            return (!si.isVisibleToPublisher() || !si.isPinned() || si.isCached() || si.isDynamic() || si.isDeclaredInManifest()) ? false : true;
        }

        public void cacheShortcuts(int launcherUserId, String callingPackage, String packageName, List<String> shortcutIds, int userId, int cacheFlags) throws Throwable {
            updateCachedShortcutsInternal(launcherUserId, callingPackage, packageName, shortcutIds, userId, cacheFlags, true);
        }

        public void uncacheShortcuts(int launcherUserId, String callingPackage, String packageName, List<String> shortcutIds, int userId, int cacheFlags) throws Throwable {
            updateCachedShortcutsInternal(launcherUserId, callingPackage, packageName, shortcutIds, userId, cacheFlags, false);
        }

        public List<ShortcutManager.ShareShortcutInfo> getShareTargets(String callingPackage, IntentFilter intentFilter, int userId) {
            return ShortcutService.this.getShareTargets(callingPackage, intentFilter, userId).getList();
        }

        public boolean isSharingShortcut(int callingUserId, String callingPackage, String packageName, String shortcutId, int userId, IntentFilter filter) {
            Preconditions.checkStringNotEmpty(callingPackage, "callingPackage");
            Preconditions.checkStringNotEmpty(packageName, "packageName");
            Preconditions.checkStringNotEmpty(shortcutId, "shortcutId");
            return ShortcutService.this.isSharingShortcut(callingUserId, callingPackage, packageName, shortcutId, userId, filter);
        }

        private void updateCachedShortcutsInternal(int launcherUserId, String callingPackage, String packageName, List<String> shortcutIds, int userId, int cacheFlags, boolean doCache) throws Throwable {
            List<String> list = shortcutIds;
            Preconditions.checkStringNotEmpty(packageName, "packageName");
            Objects.requireNonNull(list, "shortcutIds");
            Preconditions.checkState((1073758208 & cacheFlags) != 0, "invalid cacheFlags");
            List<ShortcutInfo> changedShortcuts = null;
            List<ShortcutInfo> removedShortcuts = null;
            synchronized (ShortcutService.this.mLock) {
                try {
                    try {
                        ShortcutService.this.throwIfUserLockedL(userId);
                        ShortcutService.this.throwIfUserLockedL(launcherUserId);
                        int idSize = shortcutIds.size();
                        ShortcutPackage sp = ShortcutService.this.getUserShortcutsLocked(userId).getPackageShortcutsIfExists(packageName);
                        if (idSize == 0 || sp == null) {
                            return;
                        }
                        int i = 0;
                        while (i < idSize) {
                            String id = (String) Preconditions.checkStringNotEmpty(list.get(i));
                            ShortcutInfo si = sp.findShortcutById(id);
                            if (si == null) {
                                idSize = idSize;
                            } else if (doCache == si.hasFlags(cacheFlags)) {
                                idSize = idSize;
                            } else if (doCache) {
                                if (si.isLongLived()) {
                                    si.addFlags(cacheFlags);
                                    if (changedShortcuts == null) {
                                        changedShortcuts = new ArrayList<>(1);
                                    }
                                    changedShortcuts.add(si);
                                } else {
                                    idSize = idSize;
                                    Log.w(ShortcutService.TAG, "Only long lived shortcuts can get cached. Ignoring id " + si.getId());
                                }
                            } else {
                                idSize = idSize;
                                ShortcutInfo removed = null;
                                si.clearFlags(cacheFlags);
                                if (!si.isDynamic() && !si.isCached()) {
                                    removed = sp.deleteLongLivedWithId(id, true);
                                }
                                if (removed != null) {
                                    if (removedShortcuts == null) {
                                        removedShortcuts = new ArrayList<>(1);
                                    }
                                    removedShortcuts.add(removed);
                                } else {
                                    if (changedShortcuts == null) {
                                        changedShortcuts = new ArrayList<>(1);
                                    }
                                    changedShortcuts.add(si);
                                }
                            }
                            i++;
                            list = shortcutIds;
                            idSize = idSize;
                        }
                        ShortcutService.this.packageShortcutsChanged(packageName, userId, changedShortcuts, removedShortcuts);
                        ShortcutService.this.verifyStates();
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        public Intent[] createShortcutIntents(int launcherUserId, String callingPackage, String packageName, String shortcutId, int userId, int callingPid, int callingUid) throws Throwable {
            Preconditions.checkStringNotEmpty(packageName, "packageName can't be empty");
            Preconditions.checkStringNotEmpty(shortcutId, "shortcutId can't be empty");
            synchronized (ShortcutService.this.mLock) {
                try {
                    try {
                        ShortcutService.this.throwIfUserLockedL(userId);
                        ShortcutService.this.throwIfUserLockedL(launcherUserId);
                        ShortcutService.this.getLauncherShortcutsLocked(callingPackage, userId, launcherUserId).attemptToRestoreIfNeededAndSave();
                        boolean getPinnedByAnyLauncher = ShortcutService.this.canSeeAnyPinnedShortcut(callingPackage, launcherUserId, callingPid, callingUid);
                        ShortcutInfo si = getShortcutInfoLocked(launcherUserId, callingPackage, packageName, shortcutId, userId, getPinnedByAnyLauncher);
                        if (si != null && si.isEnabled() && (si.isAlive() || getPinnedByAnyLauncher)) {
                            return si.getIntents();
                        }
                        Log.e(ShortcutService.TAG, "Shortcut " + shortcutId + " does not exist or disabled");
                        return null;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        public void addListener(ShortcutServiceInternal.ShortcutChangeListener listener) {
            synchronized (ShortcutService.this.mLock) {
                ArrayList arrayList = ShortcutService.this.mListeners;
                Objects.requireNonNull(listener);
                arrayList.add(listener);
            }
        }

        public void addShortcutChangeCallback(LauncherApps.ShortcutChangeCallback callback) {
            synchronized (ShortcutService.this.mLock) {
                ArrayList arrayList = ShortcutService.this.mShortcutChangeCallbacks;
                Objects.requireNonNull(callback);
                arrayList.add(callback);
            }
        }

        public int getShortcutIconResId(int launcherUserId, String callingPackage, String packageName, String shortcutId, int userId) {
            Objects.requireNonNull(callingPackage, "callingPackage");
            Objects.requireNonNull(packageName, "packageName");
            Objects.requireNonNull(shortcutId, "shortcutId");
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.throwIfUserLockedL(userId);
                ShortcutService.this.throwIfUserLockedL(launcherUserId);
                ShortcutService.this.getLauncherShortcutsLocked(callingPackage, userId, launcherUserId).attemptToRestoreIfNeededAndSave();
                ShortcutPackage p = ShortcutService.this.getUserShortcutsLocked(userId).getPackageShortcutsIfExists(packageName);
                int iconResourceId = 0;
                if (p == null) {
                    return 0;
                }
                ShortcutInfo shortcutInfo = p.findShortcutById(shortcutId);
                if (shortcutInfo != null && shortcutInfo.hasIconResource()) {
                    iconResourceId = shortcutInfo.getIconResourceId();
                }
                return iconResourceId;
            }
        }

        public ParcelFileDescriptor getShortcutIconFd(int launcherUserId, String callingPackage, String packageName, String shortcutId, int userId) {
            Objects.requireNonNull(callingPackage, "callingPackage");
            Objects.requireNonNull(packageName, "packageName");
            Objects.requireNonNull(shortcutId, "shortcutId");
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.throwIfUserLockedL(userId);
                ShortcutService.this.throwIfUserLockedL(launcherUserId);
                ShortcutService.this.getLauncherShortcutsLocked(callingPackage, userId, launcherUserId).attemptToRestoreIfNeededAndSave();
                ShortcutPackage p = ShortcutService.this.getUserShortcutsLocked(userId).getPackageShortcutsIfExists(packageName);
                if (p == null) {
                    return null;
                }
                ShortcutInfo shortcutInfo = p.findShortcutById(shortcutId);
                if (shortcutInfo != null && shortcutInfo.hasIconFile()) {
                    String path = ShortcutService.this.mShortcutBitmapSaver.getBitmapPathMayWaitLocked(shortcutInfo);
                    if (path == null) {
                        Slog.w(ShortcutService.TAG, "null bitmap detected in getShortcutIconFd()");
                        return null;
                    }
                    try {
                        return ParcelFileDescriptor.open(new File(path), AudioFormat.EVRC);
                    } catch (FileNotFoundException e) {
                        Slog.e(ShortcutService.TAG, "Icon file not found: " + path);
                        return null;
                    }
                }
                return null;
            }
        }

        public String getShortcutIconUri(int launcherUserId, String launcherPackage, String packageName, String shortcutId, int userId) {
            String uri;
            String uri2;
            Objects.requireNonNull(launcherPackage, "launcherPackage");
            Objects.requireNonNull(packageName, "packageName");
            Objects.requireNonNull(shortcutId, "shortcutId");
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.throwIfUserLockedL(userId);
                ShortcutService.this.throwIfUserLockedL(launcherUserId);
                ShortcutService.this.getLauncherShortcutsLocked(launcherPackage, userId, launcherUserId).attemptToRestoreIfNeededAndSave();
                ShortcutPackage p = ShortcutService.this.getUserShortcutsLocked(userId).getPackageShortcutsIfExists(packageName);
                if (p == null) {
                    return null;
                }
                ShortcutInfo shortcutInfo = p.findShortcutById(shortcutId);
                if (shortcutInfo == null || !shortcutInfo.hasIconUri()) {
                    return null;
                }
                String uri3 = shortcutInfo.getIconUri();
                if (uri3 == null) {
                    Slog.w(ShortcutService.TAG, "null uri detected in getShortcutIconUri()");
                    return null;
                }
                long token = Binder.clearCallingIdentity();
                try {
                    int packageUid = ShortcutService.this.mPackageManagerInternal.getPackageUidInternal(packageName, AudioFormat.EVRC, userId);
                    uri = uri3;
                    try {
                        ShortcutService.this.mUriGrantsManager.grantUriPermissionFromOwner(ShortcutService.this.mUriPermissionOwner, packageUid, launcherPackage, Uri.parse(uri3), 1, userId, launcherUserId);
                        Binder.restoreCallingIdentity(token);
                        uri2 = uri;
                    } catch (Exception e) {
                        e = e;
                        try {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Failed to grant uri access to ");
                            sb.append(launcherPackage);
                            sb.append(" for ");
                            try {
                                sb.append(uri);
                                Slog.e(ShortcutService.TAG, sb.toString(), e);
                                uri2 = null;
                                Binder.restoreCallingIdentity(token);
                            } catch (Throwable th) {
                                th = th;
                                Binder.restoreCallingIdentity(token);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        Binder.restoreCallingIdentity(token);
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    uri = uri3;
                } catch (Throwable th4) {
                    th = th4;
                }
                return uri2;
            }
        }

        public boolean hasShortcutHostPermission(int launcherUserId, String callingPackage, int callingPid, int callingUid) {
            return ShortcutService.this.hasShortcutHostPermission(callingPackage, launcherUserId, callingPid, callingUid);
        }

        public void setShortcutHostPackage(String type, String packageName, int userId) {
            ShortcutService.this.setShortcutHostPackage(type, packageName, userId);
        }

        public boolean requestPinAppWidget(String callingPackage, AppWidgetProviderInfo appWidget, Bundle extras, IntentSender resultIntent, int userId) {
            Objects.requireNonNull(appWidget);
            return ShortcutService.this.requestPinItem(callingPackage, userId, null, appWidget, extras, resultIntent);
        }

        public boolean isRequestPinItemSupported(int callingUserId, int requestType) {
            return ShortcutService.this.isRequestPinItemSupported(callingUserId, requestType);
        }

        public boolean isForegroundDefaultLauncher(String callingPackage, int callingUid) {
            Objects.requireNonNull(callingPackage);
            int userId = UserHandle.getUserId(callingUid);
            ComponentName defaultLauncher = ShortcutService.this.getDefaultLauncher(userId);
            if (defaultLauncher != null && callingPackage.equals(defaultLauncher.getPackageName())) {
                synchronized (ShortcutService.this.mLock) {
                    if (!ShortcutService.this.isUidForegroundLocked(callingUid)) {
                        return false;
                    }
                    return true;
                }
            }
            return false;
        }
    }

    void handleLocaleChanged() {
        scheduleSaveBaseState();
        synchronized (this.mLock) {
            long token = injectClearCallingIdentity();
            try {
                forEachLoadedUserLocked(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$kvrKFKyPcVHSIohRGUeUaVjn61s
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((ShortcutUser) obj).detectLocaleChange();
                    }
                });
                injectRestoreCallingIdentity(token);
            } catch (Throwable th) {
                injectRestoreCallingIdentity(token);
                throw th;
            }
        }
    }

    void checkPackageChanges(int ownerUserId) {
        if (injectIsSafeModeEnabled()) {
            Slog.i(TAG, "Safe mode, skipping checkPackageChanges()");
            return;
        }
        long start = getStatStartTime();
        try {
            final ArrayList<ShortcutUser.PackageWithUser> gonePackages = new ArrayList<>();
            synchronized (this.mLock) {
                ShortcutUser user = getUserShortcutsLocked(ownerUserId);
                user.forAllPackageItems(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$ExJevXZDYkRd53ZUFBxgzPqxBsM
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$checkPackageChanges$11$ShortcutService(gonePackages, (ShortcutPackageItem) obj);
                    }
                });
                if (gonePackages.size() > 0) {
                    for (int i = gonePackages.size() - 1; i >= 0; i--) {
                        ShortcutUser.PackageWithUser pu = gonePackages.get(i);
                        cleanUpPackageLocked(pu.packageName, ownerUserId, pu.userId, false);
                    }
                }
                rescanUpdatedPackagesLocked(ownerUserId, user.getLastAppScanTime());
            }
            logDurationStat(8, start);
            verifyStates();
        } catch (Throwable th) {
            logDurationStat(8, start);
            throw th;
        }
    }

    public /* synthetic */ void lambda$checkPackageChanges$11$ShortcutService(ArrayList gonePackages, ShortcutPackageItem spi) {
        if (!spi.getPackageInfo().isShadow() && !isPackageInstalled(spi.getPackageName(), spi.getPackageUserId())) {
            gonePackages.add(ShortcutUser.PackageWithUser.of(spi));
        }
    }

    private void rescanUpdatedPackagesLocked(final int userId, long lastScanTime) {
        final ShortcutUser user = getUserShortcutsLocked(userId);
        long now = injectCurrentTimeMillis();
        boolean afterOta = !injectBuildFingerprint().equals(user.getLastAppScanOsFingerprint());
        forUpdatedPackages(userId, lastScanTime, afterOta, new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$ErhAH9ktbNmekJprGoLIQXZuBOc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$rescanUpdatedPackagesLocked$12$ShortcutService(user, userId, (ApplicationInfo) obj);
            }
        });
        user.setLastAppScanTime(now);
        user.setLastAppScanOsFingerprint(injectBuildFingerprint());
        scheduleSaveUser(userId);
    }

    public /* synthetic */ void lambda$rescanUpdatedPackagesLocked$12$ShortcutService(ShortcutUser user, int userId, ApplicationInfo ai) {
        user.attemptToRestoreIfNeededAndSave(this, ai.packageName, userId);
        user.rescanPackageIfNeeded(ai.packageName, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackageAdded(String packageName, int userId) {
        synchronized (this.mLock) {
            ShortcutUser user = getUserShortcutsLocked(userId);
            user.attemptToRestoreIfNeededAndSave(this, packageName, userId);
            user.rescanPackageIfNeeded(packageName, true);
        }
        verifyStates();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackageUpdateFinished(String packageName, int userId) {
        synchronized (this.mLock) {
            ShortcutUser user = getUserShortcutsLocked(userId);
            user.attemptToRestoreIfNeededAndSave(this, packageName, userId);
            if (isPackageInstalled(packageName, userId)) {
                user.rescanPackageIfNeeded(packageName, true);
            }
        }
        verifyStates();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackageRemoved(String packageName, int packageUserId) {
        cleanUpPackageForAllLoadedUsers(packageName, packageUserId, false);
        verifyStates();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackageDataCleared(String packageName, int packageUserId) {
        cleanUpPackageForAllLoadedUsers(packageName, packageUserId, true);
        verifyStates();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePackageChanged(String packageName, int packageUserId) {
        if (!isPackageInstalled(packageName, packageUserId)) {
            handlePackageRemoved(packageName, packageUserId);
            return;
        }
        synchronized (this.mLock) {
            ShortcutUser user = getUserShortcutsLocked(packageUserId);
            user.rescanPackageIfNeeded(packageName, true);
        }
        verifyStates();
    }

    final PackageInfo getPackageInfoWithSignatures(String packageName, int userId) {
        return getPackageInfo(packageName, userId, true);
    }

    final PackageInfo getPackageInfo(String packageName, int userId) {
        return getPackageInfo(packageName, userId, false);
    }

    int injectGetPackageUid(String packageName, int userId) {
        long token = injectClearCallingIdentity();
        try {
            return this.mIPackageManager.getPackageUid(packageName, PACKAGE_MATCH_FLAGS, userId);
        } catch (RemoteException e) {
            Slog.wtf(TAG, "RemoteException", e);
            return -1;
        } finally {
            injectRestoreCallingIdentity(token);
        }
    }

    final PackageInfo getPackageInfo(String packageName, int userId, boolean getSignatures) {
        return isInstalledOrNull(injectPackageInfoWithUninstalled(packageName, userId, getSignatures));
    }

    PackageInfo injectPackageInfoWithUninstalled(String packageName, int userId, boolean getSignatures) {
        long start = getStatStartTime();
        long token = injectClearCallingIdentity();
        int i = 2;
        try {
            return this.mIPackageManager.getPackageInfo(packageName, PACKAGE_MATCH_FLAGS | (getSignatures ? AudioFormat.OPUS : 0), userId);
        } catch (RemoteException e) {
            Slog.wtf(TAG, "RemoteException", e);
            return null;
        } finally {
            injectRestoreCallingIdentity(token);
            logDurationStat(getSignatures ? 2 : 1, start);
        }
    }

    final ApplicationInfo getApplicationInfo(String packageName, int userId) {
        return isInstalledOrNull(injectApplicationInfoWithUninstalled(packageName, userId));
    }

    ApplicationInfo injectApplicationInfoWithUninstalled(String packageName, int userId) {
        long start = getStatStartTime();
        long token = injectClearCallingIdentity();
        try {
            return this.mIPackageManager.getApplicationInfo(packageName, PACKAGE_MATCH_FLAGS, userId);
        } catch (RemoteException e) {
            Slog.wtf(TAG, "RemoteException", e);
            return null;
        } finally {
            injectRestoreCallingIdentity(token);
            logDurationStat(3, start);
        }
    }

    final ActivityInfo getActivityInfoWithMetadata(ComponentName activity, int userId) {
        return isInstalledOrNull(injectGetActivityInfoWithMetadataWithUninstalled(activity, userId));
    }

    ActivityInfo injectGetActivityInfoWithMetadataWithUninstalled(ComponentName activity, int userId) {
        long start = getStatStartTime();
        long token = injectClearCallingIdentity();
        try {
            return this.mIPackageManager.getActivityInfo(activity, 794752, userId);
        } catch (RemoteException e) {
            Slog.wtf(TAG, "RemoteException", e);
            return null;
        } finally {
            injectRestoreCallingIdentity(token);
            logDurationStat(6, start);
        }
    }

    final List<PackageInfo> getInstalledPackages(int userId) {
        long start = getStatStartTime();
        long token = injectClearCallingIdentity();
        try {
            List<PackageInfo> all = injectGetPackagesWithUninstalled(userId);
            all.removeIf(PACKAGE_NOT_INSTALLED);
            return all;
        } catch (RemoteException e) {
            Slog.wtf(TAG, "RemoteException", e);
            return null;
        } finally {
            injectRestoreCallingIdentity(token);
            logDurationStat(7, start);
        }
    }

    List<PackageInfo> injectGetPackagesWithUninstalled(int userId) throws RemoteException {
        ParceledListSlice<PackageInfo> parceledList = this.mIPackageManager.getInstalledPackages(PACKAGE_MATCH_FLAGS, userId);
        if (parceledList == null) {
            return Collections.emptyList();
        }
        return parceledList.getList();
    }

    private void forUpdatedPackages(int userId, long lastScanTime, boolean afterOta, Consumer<ApplicationInfo> callback) {
        List<PackageInfo> list = getInstalledPackages(userId);
        for (int i = list.size() - 1; i >= 0; i--) {
            PackageInfo pi = list.get(i);
            if (afterOta || pi.lastUpdateTime >= lastScanTime) {
                callback.accept(pi.applicationInfo);
            }
        }
    }

    private boolean isApplicationFlagSet(String packageName, int userId, int flags) {
        ApplicationInfo ai = injectApplicationInfoWithUninstalled(packageName, userId);
        return ai != null && (ai.flags & flags) == flags;
    }

    private static boolean isInstalled(ApplicationInfo ai) {
        return (ai == null || !ai.enabled || (ai.flags & 8388608) == 0) ? false : true;
    }

    private static boolean isEphemeralApp(ApplicationInfo ai) {
        return ai != null && ai.isInstantApp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isInstalled(PackageInfo pi) {
        return pi != null && isInstalled(pi.applicationInfo);
    }

    private static boolean isInstalled(ActivityInfo ai) {
        return ai != null && isInstalled(ai.applicationInfo);
    }

    private static ApplicationInfo isInstalledOrNull(ApplicationInfo ai) {
        if (isInstalled(ai)) {
            return ai;
        }
        return null;
    }

    private static PackageInfo isInstalledOrNull(PackageInfo pi) {
        if (isInstalled(pi)) {
            return pi;
        }
        return null;
    }

    private static ActivityInfo isInstalledOrNull(ActivityInfo ai) {
        if (isInstalled(ai)) {
            return ai;
        }
        return null;
    }

    boolean isPackageInstalled(String packageName, int userId) {
        return getApplicationInfo(packageName, userId) != null;
    }

    boolean isEphemeralApp(String packageName, int userId) {
        return isEphemeralApp(getApplicationInfo(packageName, userId));
    }

    XmlResourceParser injectXmlMetaData(ActivityInfo activityInfo, String key) {
        return activityInfo.loadXmlMetaData(this.mContext.getPackageManager(), key);
    }

    Resources injectGetResourcesForApplicationAsUser(String packageName, int userId) {
        long start = getStatStartTime();
        long token = injectClearCallingIdentity();
        try {
            return this.mContext.getPackageManager().getResourcesForApplicationAsUser(packageName, userId);
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "Resources for package " + packageName + " not found");
            return null;
        } finally {
            injectRestoreCallingIdentity(token);
            logDurationStat(9, start);
        }
    }

    private Intent getMainActivityIntent() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory(LAUNCHER_INTENT_CATEGORY);
        return intent;
    }

    List<ResolveInfo> queryActivities(Intent baseIntent, String packageName, ComponentName activity, int userId) {
        Objects.requireNonNull(packageName);
        baseIntent.setPackage(packageName);
        if (activity != null) {
            baseIntent.setComponent(activity);
        }
        return queryActivities(baseIntent, userId, true);
    }

    List<ResolveInfo> queryActivities(Intent intent, int userId, boolean exportedOnly) {
        long token = injectClearCallingIdentity();
        try {
            List<ResolveInfo> resolved = this.mContext.getPackageManager().queryIntentActivitiesAsUser(intent, PACKAGE_MATCH_FLAGS, userId);
            injectRestoreCallingIdentity(token);
            if (resolved == null || resolved.size() == 0) {
                return EMPTY_RESOLVE_INFO;
            }
            if (!isInstalled(resolved.get(0).activityInfo)) {
                return EMPTY_RESOLVE_INFO;
            }
            if (exportedOnly) {
                resolved.removeIf(ACTIVITY_NOT_EXPORTED);
            }
            return resolved;
        } catch (Throwable th) {
            injectRestoreCallingIdentity(token);
            throw th;
        }
    }

    ComponentName injectGetDefaultMainActivity(String packageName, int userId) {
        long start = getStatStartTime();
        try {
            List<ResolveInfo> resolved = queryActivities(getMainActivityIntent(), packageName, null, userId);
            return resolved.size() != 0 ? resolved.get(0).activityInfo.getComponentName() : null;
        } finally {
            logDurationStat(11, start);
        }
    }

    boolean injectIsMainActivity(ComponentName activity, int userId) {
        long start = getStatStartTime();
        try {
            if (activity == null) {
                wtf("null activity detected");
                logDurationStat(12, start);
                return false;
            }
            if (DUMMY_MAIN_ACTIVITY.equals(activity.getClassName())) {
                logDurationStat(12, start);
                return true;
            }
            List<ResolveInfo> resolved = queryActivities(getMainActivityIntent(), activity.getPackageName(), activity, userId);
            boolean z = resolved.size() > 0;
            logDurationStat(12, start);
            return z;
        } catch (Throwable th) {
            logDurationStat(12, start);
            throw th;
        }
    }

    ComponentName getDummyMainActivity(String packageName) {
        return new ComponentName(packageName, DUMMY_MAIN_ACTIVITY);
    }

    boolean isDummyMainActivity(ComponentName name) {
        return name != null && DUMMY_MAIN_ACTIVITY.equals(name.getClassName());
    }

    List<ResolveInfo> injectGetMainActivities(String packageName, int userId) {
        long start = getStatStartTime();
        try {
            return queryActivities(getMainActivityIntent(), packageName, null, userId);
        } finally {
            logDurationStat(12, start);
        }
    }

    boolean injectIsActivityEnabledAndExported(ComponentName activity, int userId) {
        long start = getStatStartTime();
        try {
            return queryActivities(new Intent(), activity.getPackageName(), activity, userId).size() > 0;
        } finally {
            logDurationStat(13, start);
        }
    }

    ComponentName injectGetPinConfirmationActivity(String launcherPackageName, int launcherUserId, int requestType) {
        String action;
        Objects.requireNonNull(launcherPackageName);
        if (requestType == 1) {
            action = "android.content.pm.action.CONFIRM_PIN_SHORTCUT";
        } else {
            action = "android.content.pm.action.CONFIRM_PIN_APPWIDGET";
        }
        Intent confirmIntent = new Intent(action).setPackage(launcherPackageName);
        List<ResolveInfo> candidates = queryActivities(confirmIntent, launcherUserId, false);
        Iterator<ResolveInfo> it = candidates.iterator();
        if (it.hasNext()) {
            ResolveInfo ri = it.next();
            return ri.activityInfo.getComponentName();
        }
        return null;
    }

    boolean injectIsSafeModeEnabled() {
        long token = injectClearCallingIdentity();
        try {
            return IWindowManager.Stub.asInterface(ServiceManager.getService("window")).isSafeModeEnabled();
        } catch (RemoteException e) {
            return false;
        } finally {
            injectRestoreCallingIdentity(token);
        }
    }

    int getParentOrSelfUserId(int userId) {
        return this.mUserManagerInternal.getProfileParentId(userId);
    }

    void injectSendIntentSender(IntentSender intentSender, Intent extras) {
        if (intentSender == null) {
            return;
        }
        try {
            intentSender.sendIntent(this.mContext, 0, extras, null, null);
        } catch (IntentSender.SendIntentException e) {
            Slog.w(TAG, "sendIntent failed().", e);
        }
    }

    boolean shouldBackupApp(String packageName, int userId) {
        return isApplicationFlagSet(packageName, userId, 32768);
    }

    static boolean shouldBackupApp(PackageInfo pi) {
        return (pi.applicationInfo.flags & 32768) != 0;
    }

    public byte[] getBackupPayload(int userId) {
        enforceSystem();
        synchronized (this.mLock) {
            if (!isUserUnlockedL(userId)) {
                wtf("Can't backup: user " + userId + " is locked or not running");
                return null;
            }
            ShortcutUser user = getUserShortcutsLocked(userId);
            if (user == null) {
                wtf("Can't backup: user not found: id=" + userId);
                return null;
            }
            user.forAllPackageItems(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$mNwniqV8XK-aVyI-funosKuIRJ8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((ShortcutPackageItem) obj).refreshPackageSignatureAndSave();
                }
            });
            user.forAllPackages(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$_rlNR7xXJi6hWEa-KZ7AV3g9QPc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) throws XmlPullParserException, IOException {
                    ((ShortcutPackage) obj).rescanPackageIfNeeded(false, true);
                }
            });
            user.forAllLaunchers(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$mZdy1Q9fQc3nEqL6qWbR629JNBo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((ShortcutLauncher) obj).ensurePackageInfo();
                }
            });
            scheduleSaveUser(userId);
            saveDirtyInfo();
            ByteArrayOutputStream os = new ByteArrayOutputStream(32768);
            try {
                saveUserInternalLocked(userId, os, true);
                byte[] payload = os.toByteArray();
                this.mShortcutDumpFiles.save("backup-1-payload.txt", payload);
                return payload;
            } catch (IOException | XmlPullParserException e) {
                Slog.w(TAG, "Backup failed.", e);
                return null;
            }
        }
    }

    public void applyRestore(byte[] payload, int userId) {
        enforceSystem();
        synchronized (this.mLock) {
            if (!isUserUnlockedL(userId)) {
                wtf("Can't restore: user " + userId + " is locked or not running");
                return;
            }
            this.mShortcutDumpFiles.save("restore-0-start.txt", new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$CCaMUaAfulGDmiK5ys-FWeciZ3Q
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$applyRestore$16$ShortcutService((PrintWriter) obj);
                }
            });
            this.mShortcutDumpFiles.save("restore-1-payload.xml", payload);
            ByteArrayInputStream is = new ByteArrayInputStream(payload);
            try {
                ShortcutUser restored = loadUserInternal(userId, is, true);
                this.mShortcutDumpFiles.save("restore-2.txt", new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.dumpInner((PrintWriter) obj);
                    }
                });
                getUserShortcutsLocked(userId).mergeRestoredFile(restored);
                this.mShortcutDumpFiles.save("restore-3.txt", new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.dumpInner((PrintWriter) obj);
                    }
                });
                rescanUpdatedPackagesLocked(userId, 0L);
                this.mShortcutDumpFiles.save("restore-4.txt", new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$w7_ouiisHmMMzTkQ_HUAHbawlLY
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.dumpInner((PrintWriter) obj);
                    }
                });
                this.mShortcutDumpFiles.save("restore-5-finish.txt", new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$aF3t_w-3kZCMfEtqFMaeSlRZ1ow
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$applyRestore$17$ShortcutService((PrintWriter) obj);
                    }
                });
                saveUserLocked(userId);
            } catch (InvalidFileFormatException | IOException | XmlPullParserException e) {
                Slog.w(TAG, "Restoration failed.", e);
            }
        }
    }

    public /* synthetic */ void lambda$applyRestore$16$ShortcutService(PrintWriter pw) {
        pw.print("Start time: ");
        dumpCurrentTime(pw);
        pw.println();
    }

    public /* synthetic */ void lambda$applyRestore$17$ShortcutService(PrintWriter pw) {
        pw.print("Finish time: ");
        dumpCurrentTime(pw);
        pw.println();
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        if (DumpUtils.checkDumpAndUsageStatsPermission(this.mContext, TAG, pw)) {
            dumpNoCheck(fd, pw, args);
        }
    }

    void dumpNoCheck(FileDescriptor fd, PrintWriter pw, String[] args) {
        DumpFilter filter = parseDumpArgs(args);
        if (filter.shouldDumpCheckIn()) {
            dumpCheckin(pw, filter.shouldCheckInClear());
            return;
        }
        if (filter.shouldDumpMain()) {
            dumpInner(pw, filter);
            pw.println();
        }
        if (filter.shouldDumpUid()) {
            dumpUid(pw);
            pw.println();
        }
        if (filter.shouldDumpFiles()) {
            dumpDumpFiles(pw);
            pw.println();
        }
    }

    private static DumpFilter parseDumpArgs(String[] args) {
        DumpFilter filter = new DumpFilter();
        if (args == null) {
            return filter;
        }
        int argIndex = 0;
        while (argIndex < args.length) {
            int argIndex2 = argIndex + 1;
            String arg = args[argIndex];
            if ("-c".equals(arg)) {
                filter.setDumpCheckIn(true);
            } else if ("--checkin".equals(arg)) {
                filter.setDumpCheckIn(true);
                filter.setCheckInClear(true);
            } else if ("-a".equals(arg) || "--all".equals(arg)) {
                filter.setDumpUid(true);
                filter.setDumpFiles(true);
            } else if ("-u".equals(arg) || "--uid".equals(arg)) {
                filter.setDumpUid(true);
            } else if ("-f".equals(arg) || "--files".equals(arg)) {
                filter.setDumpFiles(true);
            } else if ("-n".equals(arg) || "--no-main".equals(arg)) {
                filter.setDumpMain(false);
            } else if ("--user".equals(arg)) {
                if (argIndex2 >= args.length) {
                    throw new IllegalArgumentException("Missing user ID for --user");
                }
                int argIndex3 = argIndex2 + 1;
                try {
                    filter.addUser(Integer.parseInt(args[argIndex2]));
                    argIndex = argIndex3;
                } catch (NumberFormatException e) {
                    throw new IllegalArgumentException("Invalid user ID", e);
                }
            } else if ("-p".equals(arg) || "--package".equals(arg)) {
                if (argIndex2 >= args.length) {
                    throw new IllegalArgumentException("Missing package name for --package");
                }
                filter.addPackageRegex(args[argIndex2]);
                filter.setDumpDetails(false);
                argIndex = argIndex2 + 1;
            } else {
                if (!arg.startsWith("-")) {
                    argIndex = argIndex2;
                    break;
                }
                throw new IllegalArgumentException("Unknown option " + arg);
            }
            argIndex = argIndex2;
        }
        while (argIndex < argIndex) {
            filter.addPackage(args[argIndex]);
            argIndex++;
        }
        return filter;
    }

    static class DumpFilter {
        private boolean mDumpCheckIn = false;
        private boolean mCheckInClear = false;
        private boolean mDumpMain = true;
        private boolean mDumpUid = false;
        private boolean mDumpFiles = false;
        private boolean mDumpDetails = true;
        private List<Pattern> mPackagePatterns = new ArrayList();
        private List<Integer> mUsers = new ArrayList();

        DumpFilter() {
        }

        void addPackageRegex(String regex) {
            this.mPackagePatterns.add(Pattern.compile(regex));
        }

        public void addPackage(String packageName) {
            addPackageRegex(Pattern.quote(packageName));
        }

        void addUser(int userId) {
            this.mUsers.add(Integer.valueOf(userId));
        }

        boolean isPackageMatch(String packageName) {
            if (this.mPackagePatterns.size() == 0) {
                return true;
            }
            for (int i = 0; i < this.mPackagePatterns.size(); i++) {
                if (this.mPackagePatterns.get(i).matcher(packageName).find()) {
                    return true;
                }
            }
            return false;
        }

        boolean isUserMatch(int userId) {
            if (this.mUsers.size() == 0) {
                return true;
            }
            for (int i = 0; i < this.mUsers.size(); i++) {
                if (this.mUsers.get(i).intValue() == userId) {
                    return true;
                }
            }
            return false;
        }

        public boolean shouldDumpCheckIn() {
            return this.mDumpCheckIn;
        }

        public void setDumpCheckIn(boolean dumpCheckIn) {
            this.mDumpCheckIn = dumpCheckIn;
        }

        public boolean shouldCheckInClear() {
            return this.mCheckInClear;
        }

        public void setCheckInClear(boolean checkInClear) {
            this.mCheckInClear = checkInClear;
        }

        public boolean shouldDumpMain() {
            return this.mDumpMain;
        }

        public void setDumpMain(boolean dumpMain) {
            this.mDumpMain = dumpMain;
        }

        public boolean shouldDumpUid() {
            return this.mDumpUid;
        }

        public void setDumpUid(boolean dumpUid) {
            this.mDumpUid = dumpUid;
        }

        public boolean shouldDumpFiles() {
            return this.mDumpFiles;
        }

        public void setDumpFiles(boolean dumpFiles) {
            this.mDumpFiles = dumpFiles;
        }

        public boolean shouldDumpDetails() {
            return this.mDumpDetails;
        }

        public void setDumpDetails(boolean dumpDetails) {
            this.mDumpDetails = dumpDetails;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpInner(PrintWriter pw) {
        dumpInner(pw, new DumpFilter());
    }

    private void dumpInner(PrintWriter pw, DumpFilter filter) {
        synchronized (this.mLock) {
            if (filter.shouldDumpDetails()) {
                long now = injectCurrentTimeMillis();
                pw.print("Now: [");
                pw.print(now);
                pw.print("] ");
                pw.print(formatTime(now));
                pw.print("  Raw last reset: [");
                pw.print(this.mRawLastResetTime);
                pw.print("] ");
                pw.print(formatTime(this.mRawLastResetTime));
                long last = getLastResetTimeLocked();
                pw.print("  Last reset: [");
                pw.print(last);
                pw.print("] ");
                pw.print(formatTime(last));
                long next = getNextResetTimeLocked();
                pw.print("  Next reset: [");
                pw.print(next);
                pw.print("] ");
                pw.print(formatTime(next));
                pw.println();
                pw.println();
                pw.print("  Config:");
                pw.print("    Max icon dim: ");
                pw.println(this.mMaxIconDimension);
                pw.print("    Icon format: ");
                pw.println(this.mIconPersistFormat);
                pw.print("    Icon quality: ");
                pw.println(this.mIconPersistQuality);
                pw.print("    saveDelayMillis: ");
                pw.println(this.mSaveDelayMillis);
                pw.print("    resetInterval: ");
                pw.println(this.mResetInterval);
                pw.print("    maxUpdatesPerInterval: ");
                pw.println(this.mMaxUpdatesPerInterval);
                pw.print("    maxShortcutsPerActivity: ");
                pw.println(this.mMaxShortcuts);
                pw.println();
                this.mStatLogger.dump(pw, "  ");
                pw.println();
                pw.print("  #Failures: ");
                pw.println(this.mWtfCount);
                if (this.mLastWtfStacktrace != null) {
                    pw.print("  Last failure stack trace: ");
                    pw.println(Log.getStackTraceString(this.mLastWtfStacktrace));
                }
                pw.println();
                this.mShortcutBitmapSaver.dumpLocked(pw, "  ");
                pw.println();
            }
            for (int i = 0; i < this.mUsers.size(); i++) {
                ShortcutUser user = this.mUsers.valueAt(i);
                if (filter.isUserMatch(user.getUserId())) {
                    user.dump(pw, "  ", filter);
                    pw.println();
                }
            }
            for (int i2 = 0; i2 < this.mShortcutNonPersistentUsers.size(); i2++) {
                ShortcutNonPersistentUser user2 = this.mShortcutNonPersistentUsers.valueAt(i2);
                if (filter.isUserMatch(user2.getUserId())) {
                    user2.dump(pw, "  ", filter);
                    pw.println();
                }
            }
        }
    }

    private void dumpUid(PrintWriter pw) {
        synchronized (this.mLock) {
            pw.println("** SHORTCUT MANAGER UID STATES (dumpsys shortcut -n -u)");
            for (int i = 0; i < this.mUidState.size(); i++) {
                int uid = this.mUidState.keyAt(i);
                int state = this.mUidState.valueAt(i);
                pw.print("    UID=");
                pw.print(uid);
                pw.print(" state=");
                pw.print(state);
                if (isProcessStateForeground(state)) {
                    pw.print("  [FG]");
                }
                pw.print("  last FG=");
                pw.print(this.mUidLastForegroundElapsedTime.get(uid));
                pw.println();
            }
        }
    }

    static String formatTime(long time) {
        return TimeMigrationUtils.formatMillisWithFixedFormat(time);
    }

    private void dumpCurrentTime(PrintWriter pw) {
        pw.print(formatTime(injectCurrentTimeMillis()));
    }

    private void dumpCheckin(PrintWriter pw, boolean clear) {
        synchronized (this.mLock) {
            try {
                JSONArray users = new JSONArray();
                for (int i = 0; i < this.mUsers.size(); i++) {
                    users.put(this.mUsers.valueAt(i).dumpCheckin(clear));
                }
                JSONObject result = new JSONObject();
                result.put(KEY_SHORTCUT, users);
                result.put(KEY_LOW_RAM, injectIsLowRamDevice());
                result.put(KEY_ICON_SIZE, this.mMaxIconDimension);
                pw.println(result.toString(1));
            } catch (JSONException e) {
                Slog.e(TAG, "Unable to write in json", e);
            }
        }
    }

    private void dumpDumpFiles(PrintWriter pw) {
        synchronized (this.mLock) {
            pw.println("** SHORTCUT MANAGER FILES (dumpsys shortcut -n -f)");
            this.mShortcutDumpFiles.dumpAll(pw);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws Throwable {
        enforceShell();
        long token = injectClearCallingIdentity();
        try {
            int status = new MyShellCommand().exec(this, in, out, err, args, callback, resultReceiver);
            try {
                resultReceiver.send(status, null);
                injectRestoreCallingIdentity(token);
            } catch (Throwable th) {
                th = th;
                injectRestoreCallingIdentity(token);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    static class CommandException extends Exception {
        public CommandException(String message) {
            super(message);
        }
    }

    private class MyShellCommand extends ShellCommand {
        private int mUserId;

        private MyShellCommand() {
            this.mUserId = 0;
        }

        private void parseOptionsLocked(boolean takeUser) throws CommandException {
            int userArg;
            do {
                String opt = getNextOption();
                if (opt != null) {
                    byte b = -1;
                    if (opt.hashCode() == 1333469547 && opt.equals("--user")) {
                        b = 0;
                    }
                    if (b == 0 && takeUser) {
                        userArg = UserHandle.parseUserArg(getNextArgRequired());
                        this.mUserId = userArg;
                    } else {
                        throw new CommandException("Unknown option: " + opt);
                    }
                } else {
                    return;
                }
            } while (ShortcutService.this.isUserUnlockedL(userArg));
            throw new CommandException("User " + this.mUserId + " is not running or locked");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code duplicated, block: B:8:0x0015  */
        public int onCommand(String cmd) {
            if (cmd == null) {
                return handleDefaultCommands(cmd);
            }
            PrintWriter pw = getOutPrintWriter();
            try {
                switch (cmd) {
                    case "reset-throttling":
                        handleResetThrottling();
                        break;
                    case "reset-all-throttling":
                        handleResetAllThrottling();
                        break;
                    case "override-config":
                        handleOverrideConfig();
                        break;
                    case "reset-config":
                        handleResetConfig();
                        break;
                    case "clear-default-launcher":
                        handleClearDefaultLauncher();
                        break;
                    case "get-default-launcher":
                        handleGetDefaultLauncher();
                        break;
                    case "unload-user":
                        handleUnloadUser();
                        break;
                    case "clear-shortcuts":
                        handleClearShortcuts();
                        break;
                    case "verify-states":
                        handleVerifyStates();
                        break;
                    default:
                        return handleDefaultCommands(cmd);
                }
                pw.println("Success");
                return 0;
            } catch (CommandException e) {
                pw.println("Error: " + e.getMessage());
                return 1;
            }
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("Usage: cmd shortcut COMMAND [options ...]");
            pw.println();
            pw.println("cmd shortcut reset-throttling [--user USER_ID]");
            pw.println("    Reset throttling for all packages and users");
            pw.println();
            pw.println("cmd shortcut reset-all-throttling");
            pw.println("    Reset the throttling state for all users");
            pw.println();
            pw.println("cmd shortcut override-config CONFIG");
            pw.println("    Override the configuration for testing (will last until reboot)");
            pw.println();
            pw.println("cmd shortcut reset-config");
            pw.println("    Reset the configuration set with \"update-config\"");
            pw.println();
            pw.println("cmd shortcut clear-default-launcher [--user USER_ID]");
            pw.println("    Clear the cached default launcher");
            pw.println();
            pw.println("cmd shortcut get-default-launcher [--user USER_ID]");
            pw.println("    Show the default launcher");
            pw.println();
            pw.println("cmd shortcut unload-user [--user USER_ID]");
            pw.println("    Unload a user from the memory");
            pw.println("    (This should not affect any observable behavior)");
            pw.println();
            pw.println("cmd shortcut clear-shortcuts [--user USER_ID] PACKAGE");
            pw.println("    Remove all shortcuts from a package, including pinned shortcuts");
            pw.println();
        }

        private void handleResetThrottling() throws CommandException {
            synchronized (ShortcutService.this.mLock) {
                parseOptionsLocked(true);
                Slog.i(ShortcutService.TAG, "cmd: handleResetThrottling: user=" + this.mUserId);
                ShortcutService.this.resetThrottlingInner(this.mUserId);
            }
        }

        private void handleResetAllThrottling() {
            Slog.i(ShortcutService.TAG, "cmd: handleResetAllThrottling");
            ShortcutService.this.resetAllThrottlingInner();
        }

        private void handleOverrideConfig() throws CommandException {
            String config = getNextArgRequired();
            Slog.i(ShortcutService.TAG, "cmd: handleOverrideConfig: " + config);
            synchronized (ShortcutService.this.mLock) {
                if (!ShortcutService.this.updateConfigurationLocked(config)) {
                    throw new CommandException("override-config failed.  See logcat for details.");
                }
            }
        }

        private void handleResetConfig() {
            Slog.i(ShortcutService.TAG, "cmd: handleResetConfig");
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.loadConfigurationLocked();
            }
        }

        private void clearLauncher() {
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.getUserShortcutsLocked(this.mUserId).forceClearLauncher();
            }
        }

        private void showLauncher() {
            synchronized (ShortcutService.this.mLock) {
                ShortcutService.this.hasShortcutHostPermissionInner("-", this.mUserId);
                getOutPrintWriter().println("Launcher: " + ShortcutService.this.getUserShortcutsLocked(this.mUserId).getLastKnownLauncher());
            }
        }

        private void handleClearDefaultLauncher() throws CommandException {
            synchronized (ShortcutService.this.mLock) {
                parseOptionsLocked(true);
                clearLauncher();
            }
        }

        private void handleGetDefaultLauncher() throws CommandException {
            synchronized (ShortcutService.this.mLock) {
                parseOptionsLocked(true);
                clearLauncher();
                showLauncher();
            }
        }

        private void handleUnloadUser() throws CommandException {
            synchronized (ShortcutService.this.mLock) {
                parseOptionsLocked(true);
                Slog.i(ShortcutService.TAG, "cmd: handleUnloadUser: user=" + this.mUserId);
                ShortcutService.this.handleStopUser(this.mUserId);
            }
        }

        private void handleClearShortcuts() throws CommandException {
            synchronized (ShortcutService.this.mLock) {
                parseOptionsLocked(true);
                String packageName = getNextArgRequired();
                Slog.i(ShortcutService.TAG, "cmd: handleClearShortcuts: user" + this.mUserId + ", " + packageName);
                ShortcutService.this.cleanUpPackageForAllLoadedUsers(packageName, this.mUserId, true);
            }
        }

        private void handleVerifyStates() throws CommandException {
            try {
                ShortcutService.this.verifyStatesForce();
            } catch (Throwable th) {
                throw new CommandException(th.getMessage() + "\n" + Log.getStackTraceString(th));
            }
        }
    }

    long injectCurrentTimeMillis() {
        return System.currentTimeMillis();
    }

    long injectElapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    long injectUptimeMillis() {
        return SystemClock.uptimeMillis();
    }

    int injectBinderCallingUid() {
        return getCallingUid();
    }

    int injectBinderCallingPid() {
        return getCallingPid();
    }

    private int getCallingUserId() {
        return UserHandle.getUserId(injectBinderCallingUid());
    }

    long injectClearCallingIdentity() {
        return Binder.clearCallingIdentity();
    }

    void injectRestoreCallingIdentity(long token) {
        Binder.restoreCallingIdentity(token);
    }

    String injectBuildFingerprint() {
        return Build.FINGERPRINT;
    }

    final void wtf(String message) {
        wtf(message, null);
    }

    void wtf(String message, Throwable e) {
        if (e == null) {
            e = new RuntimeException("Stacktrace");
        }
        synchronized (this.mLock) {
            this.mWtfCount++;
            this.mLastWtfStacktrace = new Exception("Last failure was logged here:");
        }
        Slog.wtf(TAG, message, e);
    }

    File injectSystemDataPath() {
        return Environment.getDataSystemDirectory();
    }

    File injectUserDataPath(int userId) {
        return new File(Environment.getDataSystemCeDirectory(userId), DIRECTORY_PER_USER);
    }

    public File getDumpPath() {
        return new File(injectUserDataPath(0), DIRECTORY_DUMP);
    }

    boolean injectIsLowRamDevice() {
        return ActivityManager.isLowRamDeviceStatic();
    }

    void injectRegisterUidObserver(IUidObserver observer, int which) {
        try {
            ActivityManager.getService().registerUidObserver(observer, which, -1, (String) null);
        } catch (RemoteException e) {
        }
    }

    File getUserBitmapFilePath(int userId) {
        return new File(injectUserDataPath(userId), DIRECTORY_BITMAPS);
    }

    SparseArray<ShortcutUser> getShortcutsForTest() {
        return this.mUsers;
    }

    int getMaxShortcutsForTest() {
        return this.mMaxShortcuts;
    }

    int getMaxUpdatesPerIntervalForTest() {
        return this.mMaxUpdatesPerInterval;
    }

    long getResetIntervalForTest() {
        return this.mResetInterval;
    }

    int getMaxIconDimensionForTest() {
        return this.mMaxIconDimension;
    }

    Bitmap.CompressFormat getIconPersistFormatForTest() {
        return this.mIconPersistFormat;
    }

    int getIconPersistQualityForTest() {
        return this.mIconPersistQuality;
    }

    ShortcutPackage getPackageShortcutForTest(String packageName, int userId) {
        synchronized (this.mLock) {
            ShortcutUser user = this.mUsers.get(userId);
            if (user == null) {
                return null;
            }
            return user.getAllPackagesForTest().get(packageName);
        }
    }

    ShortcutInfo getPackageShortcutForTest(String packageName, String shortcutId, int userId) {
        synchronized (this.mLock) {
            ShortcutPackage pkg = getPackageShortcutForTest(packageName, userId);
            if (pkg == null) {
                return null;
            }
            return pkg.findShortcutById(shortcutId);
        }
    }

    ShortcutLauncher getLauncherShortcutForTest(String packageName, int userId) {
        synchronized (this.mLock) {
            ShortcutUser user = this.mUsers.get(userId);
            if (user == null) {
                return null;
            }
            return user.getAllLaunchersForTest().get(ShortcutUser.PackageWithUser.of(userId, packageName));
        }
    }

    ShortcutRequestPinProcessor getShortcutRequestPinProcessorForTest() {
        return this.mShortcutRequestPinProcessor;
    }

    boolean injectShouldPerformVerification() {
        return false;
    }

    final void verifyStates() {
        if (injectShouldPerformVerification()) {
            verifyStatesInner();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void verifyStatesForce() {
        verifyStatesInner();
    }

    private void verifyStatesInner() {
        synchronized (this.mLock) {
            forEachLoadedUserLocked(new Consumer() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$TWEnwEASaqKRSWXK3edPwGgb1bg
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((ShortcutUser) obj).forAllPackageItems(new Consumer() { // from class: com.android.server.pm.-$$Lambda$sAnQjWlQDJoJcSwHDDCKcU2fneU
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj2) {
                            ((ShortcutPackageItem) obj2).verifyStates();
                        }
                    });
                }
            });
        }
    }

    void waitForBitmapSavesForTest() {
        synchronized (this.mLock) {
            this.mShortcutBitmapSaver.waitForAllSavesLocked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<ShortcutInfo> prepareChangedShortcuts(ArraySet<String> changedIds, ArraySet<String> newIds, List<ShortcutInfo> deletedList, ShortcutPackage ps) {
        if (ps == null) {
            return null;
        }
        if (CollectionUtils.isEmpty(changedIds) && CollectionUtils.isEmpty(newIds)) {
            return null;
        }
        final ArraySet<String> resultIds = new ArraySet<>();
        if (!CollectionUtils.isEmpty(changedIds)) {
            resultIds.addAll((ArraySet<? extends String>) changedIds);
        }
        if (!CollectionUtils.isEmpty(newIds)) {
            resultIds.addAll((ArraySet<? extends String>) newIds);
        }
        if (!CollectionUtils.isEmpty(deletedList)) {
            deletedList.removeIf(new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$ySqzUCgvZgF7gAiB54qisNRwdg0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return resultIds.contains(((ShortcutInfo) obj).getId());
                }
            });
        }
        List<ShortcutInfo> result = new ArrayList<>();
        ps.findAll(result, new Predicate() { // from class: com.android.server.pm.-$$Lambda$ShortcutService$gl8M0S0hmAWkwgwNr3It0b3QVGQ
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return resultIds.contains(((ShortcutInfo) obj).getId());
            }
        }, 4);
        return result;
    }

    private List<ShortcutInfo> prepareChangedShortcuts(List<ShortcutInfo> changedList, List<ShortcutInfo> newList, List<ShortcutInfo> deletedList, ShortcutPackage ps) {
        ArraySet<String> changedIds = new ArraySet<>();
        addShortcutIdsToSet(changedIds, changedList);
        ArraySet<String> newIds = new ArraySet<>();
        addShortcutIdsToSet(newIds, newList);
        return prepareChangedShortcuts(changedIds, newIds, deletedList, ps);
    }

    private void addShortcutIdsToSet(ArraySet<String> ids, List<ShortcutInfo> shortcuts) {
        if (CollectionUtils.isEmpty(shortcuts)) {
            return;
        }
        int size = shortcuts.size();
        for (int i = 0; i < size; i++) {
            ids.add(shortcuts.get(i).getId());
        }
    }
}
