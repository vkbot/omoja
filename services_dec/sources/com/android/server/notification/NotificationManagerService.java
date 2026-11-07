package com.android.server.notification;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AlarmManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.AutomaticZenRule;
import android.app.IActivityManager;
import android.app.INotificationManager;
import android.app.ITransientNotification;
import android.app.ITransientNotificationCallback;
import android.app.IUriGrantsManager;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationHistory;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.StatsManager;
import android.app.UriGrantsManager;
import android.app.admin.DevicePolicyManagerInternal;
import android.app.backup.BackupManager;
import android.app.role.OnRoleHoldersChangedListener;
import android.app.role.RoleManager;
import android.app.usage.UsageStatsManagerInternal;
import android.companion.ICompanionDeviceManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.audio.common.V2_0.AudioChannelMask;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.tv.cec.V1_0.CecMessageType;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.AudioManagerInternal;
import android.media.IRingtonePlayer;
import android.metrics.LogMaker;
import android.net.Uri;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerExecutor;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IDeviceIdleController;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.service.notification.Adjustment;
import android.service.notification.Condition;
import android.service.notification.ConversationChannelWrapper;
import android.service.notification.IConditionProvider;
import android.service.notification.INotificationListener;
import android.service.notification.IStatusBarNotificationHolder;
import android.service.notification.NotificationListenerService;
import android.service.notification.NotificationRankingUpdate;
import android.service.notification.NotificationStats;
import android.service.notification.SnoozeCriterion;
import android.service.notification.StatusBarNotification;
import android.service.notification.ZenModeConfig;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.IntArray;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.StatsEvent;
import android.util.Xml;
import android.util.proto.ProtoOutputStream;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.android.internal.compat.IPlatformCompat;
import com.android.internal.logging.InstanceId;
import com.android.internal.logging.InstanceIdSequence;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.SomeArgs;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.function.TriPredicate;
import com.android.server.DeviceIdleInternal;
import com.android.server.EventLogTags;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.UiThread;
import com.android.server.lights.LightsManager;
import com.android.server.lights.LogicalLight;
import com.android.server.notification.toast.CustomToastRecord;
import com.android.server.notification.toast.TextToastRecord;
import com.android.server.notification.toast.ToastRecord;
import com.android.server.pm.PackageManagerService;
import com.android.server.power.backlight.BackLightSettings;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.statusbar.StatusBarManagerInternal;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.utils.PriorityDump;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerInternal;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.function.BiConsumer;
import libcore.io.IoUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class NotificationManagerService extends SystemService {
    private static final String ATTR_VERSION = "version";
    private static final long CHANGE_BACKGROUND_CUSTOM_TOAST_BLOCK = 128611929;
    private static final int DB_VERSION = 1;
    static final float DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE = 5.0f;
    private static final long DELAY_FOR_ASSISTANT_TIME = 200;
    static final boolean ENABLE_BLOCKED_TOASTS = true;
    private static final int EVENTLOG_ENQUEUE_STATUS_IGNORED = 2;
    private static final int EVENTLOG_ENQUEUE_STATUS_NEW = 0;
    private static final int EVENTLOG_ENQUEUE_STATUS_UPDATE = 1;
    private static final String EXTRA_KEY = "key";
    static final int FINISH_TOKEN_TIMEOUT = 11000;
    static final int INVALID_UID = -1;
    private static final String LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG = "allow-secure-notifications-on-lockscreen";
    private static final String LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE = "value";
    static final int LONG_DELAY = 3500;
    static final int MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS = 3000;
    static final float MATCHES_CALL_FILTER_TIMEOUT_AFFINITY = 1.0f;
    static final int MAX_PACKAGE_NOTIFICATIONS = 50;
    static final int MESSAGE_DURATION_REACHED = 2;
    static final int MESSAGE_FINISH_TOKEN_TIMEOUT = 7;
    static final int MESSAGE_LISTENER_HINTS_CHANGED = 5;
    static final int MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED = 6;
    static final int MESSAGE_ON_PACKAGE_CHANGED = 8;
    private static final int MESSAGE_RANKING_SORT = 1001;
    private static final int MESSAGE_RECONSIDER_RANKING = 1000;
    static final int MESSAGE_SEND_RANKING_UPDATE = 4;
    private static final long MIN_PACKAGE_OVERRATE_LOG_INTERVAL = 5000;
    private static final int NOTIFICATION_INSTANCE_ID_MAX = 8192;
    public static final int REPORT_REMOTE_VIEWS = 1;
    private static final int REQUEST_CODE_TIMEOUT = 1;
    static final String ROOT_PKG = "root";
    private static final String SCHEME_TIMEOUT = "timeout";
    static final int SHORT_DELAY = 2000;
    static final long SNOOZE_UNTIL_UNSPECIFIED = -1;
    private static final String TAG_NOTIFICATION_POLICY = "notification-policy";
    static final int VIBRATE_PATTERN_MAXLEN = 17;
    private AccessibilityManager mAccessibilityManager;
    private ActivityManager mActivityManager;
    private AlarmManager mAlarmManager;
    private TriPredicate<String, Integer, String> mAllowedManagedServicePackages;
    private IActivityManager mAm;
    private ActivityManagerInternal mAmi;
    private AppOpsManager mAppOps;
    private UsageStatsManagerInternal mAppUsageStats;
    private Archive mArchive;
    private NotificationAssistants mAssistants;
    private ActivityTaskManagerInternal mAtm;
    LogicalLight mAttentionLight;
    AudioManager mAudioManager;
    AudioManagerInternal mAudioManagerInternal;
    private int mAutoGroupAtCount;
    final ArrayMap<Integer, ArrayMap<String, String>> mAutobundledSummaries;
    private Binder mCallNotificationToken;
    private int mCallState;
    private ICompanionDeviceManager mCompanionManager;
    private ConditionProviders mConditionProviders;
    final ArrayMap<NotificationRecord, ArrayList<CancelNotificationRunnable>> mDelayedCancelations;
    private DeviceConfig.OnPropertiesChangedListener mDeviceConfigChangedListener;
    private IDeviceIdleController mDeviceIdleController;
    private boolean mDisableNotificationEffects;
    private DevicePolicyManagerInternal mDpm;
    private List<ComponentName> mEffectsSuppressors;
    final ArrayList<NotificationRecord> mEnqueuedNotifications;
    private long[] mFallbackVibrationPattern;
    final IBinder mForegroundToken;
    private GroupHelper mGroupHelper;
    private WorkerHandler mHandler;
    boolean mHasLight;
    private NotificationHistoryManager mHistoryManager;
    private AudioAttributes mInCallNotificationAudioAttributes;
    private Uri mInCallNotificationUri;
    private float mInCallNotificationVolume;
    protected boolean mInCallStateOffHook;
    final ArrayMap<String, InlineReplyUriRecord> mInlineReplyRecordsByKey;
    private final BroadcastReceiver mIntentReceiver;
    private final NotificationManagerInternal mInternalService;
    private int mInterruptionFilter;
    private boolean mIsAutomotive;
    private boolean mIsTelevision;
    private KeyguardManager mKeyguardManager;
    private long mLastOverRateLogTime;
    boolean mLightEnabled;
    ArrayList<String> mLights;
    private int mListenerHints;
    private NotificationListeners mListeners;
    private final SparseArray<ArraySet<ComponentName>> mListenersDisablingEffects;
    protected final BroadcastReceiver mLocaleChangeReceiver;
    private boolean mLockScreenAllowSecureNotifications;
    private float mMaxPackageEnqueueRate;
    private MetricsLogger mMetricsLogger;
    private Set<String> mMsgPkgsAllowedAsConvos;
    final NotificationDelegate mNotificationDelegate;
    private boolean mNotificationEffectsEnabledForAutomotive;
    private InstanceIdSequence mNotificationInstanceIdSequence;
    private LogicalLight mNotificationLight;
    final ArrayList<NotificationRecord> mNotificationList;
    final Object mNotificationLock;
    boolean mNotificationPulseEnabled;
    private NotificationRecordLogger mNotificationRecordLogger;
    private final BroadcastReceiver mNotificationTimeoutReceiver;
    final ArrayMap<String, NotificationRecord> mNotificationsByKey;
    private final BroadcastReceiver mPackageIntentReceiver;
    private IPackageManager mPackageManager;
    private PackageManager mPackageManagerClient;
    private IPlatformCompat mPlatformCompat;
    private AtomicFile mPolicyFile;
    PreferencesHelper mPreferencesHelper;
    private StatsPullAtomCallbackImpl mPullAtomCallback;
    protected RankingHandler mRankingHandler;
    RankingHelper mRankingHelper;
    private final HandlerThread mRankingThread;
    private final BroadcastReceiver mRestoreReceiver;
    private RoleObserver mRoleObserver;
    private final SavePolicyFileRunnable mSavePolicyFile;
    boolean mScreenOn;
    final IBinder mService;
    private SettingsObserver mSettingsObserver;
    private ShortcutHelper mShortcutHelper;
    private ShortcutHelper.ShortcutListener mShortcutListener;
    protected SnoozeHelper mSnoozeHelper;
    private String mSoundNotificationKey;
    private StatsManager mStatsManager;
    StatusBarManagerInternal mStatusBar;
    private int mStripRemoteViewsSizeBytes;
    final ArrayMap<String, NotificationRecord> mSummaryByGroupKey;
    private final InjectableSystemClock mSystemClock;
    boolean mSystemReady;
    final ArrayList<ToastRecord> mToastQueue;
    private IUriGrantsManager mUgm;
    private UriGrantsManagerInternal mUgmInternal;
    private Handler mUiHandler;
    private UserManager mUm;
    private NotificationUsageStats mUsageStats;
    private boolean mUseAttentionLight;
    private final ManagedServices.UserProfiles mUserProfiles;
    private String mVibrateNotificationKey;
    Vibrator mVibrator;
    private int mWarnRemoteViewsSizeBytes;
    private WindowManagerInternal mWindowManagerInternal;
    protected ZenModeHelper mZenModeHelper;
    public static final String TAG = "NotificationService";
    public static final boolean DBG = Log.isLoggable(TAG, 3);
    public static final boolean ENABLE_CHILD_NOTIFICATIONS = SystemProperties.getBoolean("debug.child_notifs", true);
    static final boolean DEBUG_INTERRUPTIVENESS = SystemProperties.getBoolean("debug.notification.interruptiveness", false);
    static final long[] DEFAULT_VIBRATE_PATTERN = {0, 250, 250, 250};
    static final String[] DEFAULT_ALLOWED_ADJUSTMENTS = {"key_contextual_actions", "key_text_replies"};
    static final String[] NON_BLOCKABLE_DEFAULT_ROLES = {"android.app.role.DIALER", "android.app.role.EMERGENCY"};
    private static final String ACTION_NOTIFICATION_TIMEOUT = NotificationManagerService.class.getSimpleName() + ".TIMEOUT";
    private static final int MY_UID = Process.myUid();
    private static final int MY_PID = Process.myPid();
    private static final IBinder WHITELIST_TOKEN = new Binder();

    /* JADX INFO: Access modifiers changed from: private */
    interface FlagChecker {
        boolean apply(int i);
    }

    static class Archive {
        final int mBufferSize;
        final LinkedList<Pair<StatusBarNotification, Integer>> mBuffer = new LinkedList<>();
        final SparseArray<Boolean> mEnabled = new SparseArray<>();

        public Archive(int size) {
            this.mBufferSize = size;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            int N = this.mBuffer.size();
            sb.append("Archive (");
            sb.append(N);
            sb.append(" notification");
            sb.append(N == 1 ? ")" : "s)");
            return sb.toString();
        }

        public void record(StatusBarNotification sbn, int reason) {
            if (!this.mEnabled.get(sbn.getNormalizedUserId(), false).booleanValue()) {
                return;
            }
            if (this.mBuffer.size() == this.mBufferSize) {
                this.mBuffer.removeFirst();
            }
            this.mBuffer.addLast(new Pair<>(sbn.cloneLight(), Integer.valueOf(reason)));
        }

        public Iterator<Pair<StatusBarNotification, Integer>> descendingIterator() {
            return this.mBuffer.descendingIterator();
        }

        public StatusBarNotification[] getArray(final UserManager um, int count, boolean includeSnoozed) {
            final ArrayList<Integer> currentUsers = new ArrayList<>();
            currentUsers.add(-1);
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$Archive$6eXP2RsxijMk-aTkmP6gZR75Cwc
                public final void runOrThrow() throws Exception {
                    NotificationManagerService.Archive.lambda$getArray$0(um, currentUsers);
                }
            });
            if (count == 0) {
                count = this.mBufferSize;
            }
            List<StatusBarNotification> a = new ArrayList<>();
            Iterator<Pair<StatusBarNotification, Integer>> iter = descendingIterator();
            int i = 0;
            while (iter.hasNext() && i < count) {
                Pair<StatusBarNotification, Integer> pair = iter.next();
                if (((Integer) pair.second).intValue() != 18 || includeSnoozed) {
                    if (currentUsers.contains(Integer.valueOf(((StatusBarNotification) pair.first).getUserId()))) {
                        i++;
                        a.add((StatusBarNotification) pair.first);
                    }
                }
            }
            return (StatusBarNotification[]) a.toArray(new StatusBarNotification[a.size()]);
        }

        static /* synthetic */ void lambda$getArray$0(UserManager um, ArrayList currentUsers) throws Exception {
            for (int user : um.getProfileIds(ActivityManager.getCurrentUser(), false)) {
                currentUsers.add(Integer.valueOf(user));
            }
        }

        public void updateHistoryEnabled(int userId, boolean enabled) {
            this.mEnabled.put(userId, Boolean.valueOf(enabled));
            if (!enabled) {
                for (int i = this.mBuffer.size() - 1; i >= 0; i--) {
                    if (userId == ((StatusBarNotification) this.mBuffer.get(i).first).getNormalizedUserId()) {
                        this.mBuffer.remove(i);
                    }
                }
            }
        }
    }

    void loadDefaultApprovedServices(int userId) {
        this.mListeners.loadDefaultsFromConfig();
        this.mConditionProviders.loadDefaultsFromConfig();
        this.mAssistants.loadDefaultsFromConfig();
    }

    protected void allowDefaultApprovedServices(int userId) {
        ArraySet<ComponentName> defaultListeners = this.mListeners.getDefaultComponents();
        for (int i = 0; i < defaultListeners.size(); i++) {
            ComponentName cn = defaultListeners.valueAt(i);
            allowNotificationListener(userId, cn);
        }
        ArraySet<String> defaultDnds = this.mConditionProviders.getDefaultPackages();
        for (int i2 = 0; i2 < defaultDnds.size(); i2++) {
            allowDndPackage(defaultDnds.valueAt(i2));
        }
        setDefaultAssistantForUser(userId);
    }

    protected void setDefaultAssistantForUser(int userId) {
        String overrideDefaultAssistantString = DeviceConfig.getProperty("systemui", "nas_default_service");
        if (overrideDefaultAssistantString != null) {
            ArraySet<ComponentName> approved = this.mAssistants.queryPackageForServices(overrideDefaultAssistantString, 786432, userId);
            for (int i = 0; i < approved.size(); i++) {
                if (allowAssistant(userId, approved.valueAt(i))) {
                    return;
                }
            }
        }
        ArraySet<ComponentName> defaults = this.mAssistants.getDefaultComponents();
        for (int i2 = 0; i2 < defaults.size(); i2++) {
            ComponentName cn = defaults.valueAt(i2);
            if (allowAssistant(userId, cn)) {
                return;
            }
        }
    }

    protected void updateAutobundledSummaryFlags(int userId, String pkg, boolean needsOngoingFlag, boolean isAppForeground) {
        String summaryKey;
        NotificationRecord summary;
        ArrayMap<String, String> summaries = this.mAutobundledSummaries.get(Integer.valueOf(userId));
        if (summaries == null || (summaryKey = summaries.get(pkg)) == null || (summary = this.mNotificationsByKey.get(summaryKey)) == null) {
            return;
        }
        int oldFlags = summary.getSbn().getNotification().flags;
        if (needsOngoingFlag) {
            summary.getSbn().getNotification().flags |= 2;
        } else {
            summary.getSbn().getNotification().flags &= -3;
        }
        if (summary.getSbn().getNotification().flags != oldFlags) {
            this.mHandler.post(new EnqueueNotificationRunnable(userId, summary, isAppForeground));
        }
    }

    private void allowDndPackage(String packageName) {
        try {
            getBinderService().setNotificationPolicyAccessGranted(packageName, true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void allowNotificationListener(int userId, ComponentName cn) {
        try {
            getBinderService().setNotificationListenerAccessGrantedForUser(cn, userId, true);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private boolean allowAssistant(int userId, ComponentName candidate) {
        Set<ComponentName> validAssistants = this.mAssistants.queryPackageForServices(null, 786432, userId);
        if (candidate != null && validAssistants.contains(candidate)) {
            setNotificationAssistantAccessGrantedForUserInternal(candidate, userId, true);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x0026 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    void readPolicyXml(InputStream stream, boolean forRestore, int userId) throws XmlPullParserException, IOException, NumberFormatException {
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(stream, StandardCharsets.UTF_8.name());
        XmlUtils.beginDocument(parser, TAG_NOTIFICATION_POLICY);
        boolean migratedManagedServices = false;
        boolean ineligibleForManagedServices = forRestore && this.mUm.isManagedProfile(userId);
        int outerDepth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, outerDepth)) {
            if ("zen".equals(parser.getName())) {
                this.mZenModeHelper.readXml(parser, forRestore, userId);
            } else if ("ranking".equals(parser.getName())) {
                this.mPreferencesHelper.readXml(parser, forRestore, userId);
            }
            if (this.mListeners.getConfig().xmlTag.equals(parser.getName())) {
                if (!ineligibleForManagedServices) {
                    this.mListeners.readXml(parser, this.mAllowedManagedServicePackages, forRestore, userId);
                    migratedManagedServices = true;
                    if (!LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG.equals(parser.getName()) && (!forRestore || userId == 0)) {
                        this.mLockScreenAllowSecureNotifications = safeBoolean(parser.getAttributeValue(null, LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE), true);
                    }
                }
            } else if (this.mAssistants.getConfig().xmlTag.equals(parser.getName())) {
                if (!ineligibleForManagedServices) {
                    this.mAssistants.readXml(parser, this.mAllowedManagedServicePackages, forRestore, userId);
                    migratedManagedServices = true;
                    if (!LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG.equals(parser.getName())) {
                    }
                }
            } else {
                if (this.mConditionProviders.getConfig().xmlTag.equals(parser.getName())) {
                    if (!ineligibleForManagedServices) {
                        this.mConditionProviders.readXml(parser, this.mAllowedManagedServicePackages, forRestore, userId);
                        migratedManagedServices = true;
                    }
                } else if ("snoozed-notifications".equals(parser.getName())) {
                    this.mSnoozeHelper.readXml(parser, this.mSystemClock.currentTimeMillis());
                }
                if (!LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG.equals(parser.getName())) {
                }
            }
        }
        if (!migratedManagedServices) {
            this.mListeners.migrateToXml();
            this.mAssistants.migrateToXml();
            this.mConditionProviders.migrateToXml();
            handleSavePolicyFile();
        }
        this.mAssistants.resetDefaultAssistantsIfNecessary();
    }

    protected void loadPolicyFile() {
        if (DBG) {
            Slog.d(TAG, "loadPolicyFile");
        }
        synchronized (this.mPolicyFile) {
            InputStream infile = null;
            try {
                try {
                    try {
                        try {
                            try {
                                infile = this.mPolicyFile.openRead();
                                readPolicyXml(infile, false, -1);
                            } catch (IOException e) {
                                Log.wtf(TAG, "Unable to read notification policy", e);
                            }
                        } catch (XmlPullParserException e2) {
                            Log.wtf(TAG, "Unable to parse notification policy", e2);
                        }
                    } catch (FileNotFoundException e3) {
                        loadDefaultApprovedServices(0);
                        allowDefaultApprovedServices(0);
                    }
                } catch (NumberFormatException e4) {
                    Log.wtf(TAG, "Unable to parse notification policy", e4);
                }
            } finally {
                IoUtils.closeQuietly(infile);
            }
        }
    }

    protected void handleSavePolicyFile() {
        if (!IoThread.getHandler().hasCallbacks(this.mSavePolicyFile)) {
            IoThread.getHandler().post(this.mSavePolicyFile);
        }
    }

    private final class SavePolicyFileRunnable implements Runnable {
        private SavePolicyFileRunnable() {
        }

        /* synthetic */ SavePolicyFileRunnable(NotificationManagerService x0, AnonymousClass1 x1) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (NotificationManagerService.DBG) {
                Slog.d(NotificationManagerService.TAG, "handleSavePolicyFile");
            }
            synchronized (NotificationManagerService.this.mPolicyFile) {
                try {
                    FileOutputStream stream = NotificationManagerService.this.mPolicyFile.startWrite();
                    try {
                        NotificationManagerService.this.writePolicyXml(stream, false, -1);
                        NotificationManagerService.this.mPolicyFile.finishWrite(stream);
                    } catch (IOException e) {
                        Slog.w(NotificationManagerService.TAG, "Failed to save policy file, restoring backup", e);
                        NotificationManagerService.this.mPolicyFile.failWrite(stream);
                    }
                } catch (IOException e2) {
                    Slog.w(NotificationManagerService.TAG, "Failed to save policy file", e2);
                    return;
                }
            }
            BackupManager.dataChanged(NotificationManagerService.this.getContext().getPackageName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writePolicyXml(OutputStream stream, boolean forBackup, int userId) throws IOException {
        XmlSerializer out = new FastXmlSerializer();
        out.setOutput(stream, StandardCharsets.UTF_8.name());
        out.startDocument(null, true);
        out.startTag(null, TAG_NOTIFICATION_POLICY);
        out.attribute(null, ATTR_VERSION, Integer.toString(1));
        this.mZenModeHelper.writeXml(out, forBackup, null, userId);
        this.mPreferencesHelper.writeXml(out, forBackup, userId);
        this.mListeners.writeXml(out, forBackup, userId);
        this.mAssistants.writeXml(out, forBackup, userId);
        this.mSnoozeHelper.writeXml(out);
        this.mConditionProviders.writeXml(out, forBackup, userId);
        if (!forBackup || userId == 0) {
            writeSecureNotificationsPolicy(out);
        }
        out.endTag(null, TAG_NOTIFICATION_POLICY);
        out.endDocument();
    }

    /* JADX INFO: renamed from: com.android.server.notification.NotificationManagerService$1, reason: invalid class name */
    class AnonymousClass1 implements NotificationDelegate {
        AnonymousClass1() {
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void prepareForPossibleShutdown() {
            NotificationManagerService.this.mHistoryManager.triggerWriteToDisk();
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onSetDisabled(int status) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationManagerService.this.mDisableNotificationEffects = (262144 & status) != 0;
                if (NotificationManagerService.this.disableNotificationEffects(null) != null) {
                    long identity = Binder.clearCallingIdentity();
                    try {
                        IRingtonePlayer player = NotificationManagerService.this.mAudioManager.getRingtonePlayer();
                        if (player != null) {
                            player.stopAsync();
                        }
                    } catch (RemoteException e) {
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(identity);
                        throw th;
                    }
                    Binder.restoreCallingIdentity(identity);
                    long identity2 = Binder.clearCallingIdentity();
                    try {
                        NotificationManagerService.this.mVibrator.cancel();
                        Binder.restoreCallingIdentity(identity2);
                    } catch (Throwable th2) {
                        Binder.restoreCallingIdentity(identity2);
                        throw th2;
                    }
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onClearAll(int callingUid, int callingPid, int userId) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationManagerService.this.cancelAllLocked(callingUid, callingPid, userId, 3, null, true);
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationClick(int callingUid, int callingPid, String key, NotificationVisibility nv) {
            NotificationManagerService.this.exitIdle();
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    long now = NotificationManagerService.this.mSystemClock.currentTimeMillis();
                    MetricsLogger.action(r.getItemLogMaker().setType(4).addTaggedData(798, Integer.valueOf(nv.rank)).addTaggedData(1395, Integer.valueOf(nv.count)));
                    NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.NOTIFICATION_CLICKED, r);
                    EventLogTags.writeNotificationClicked(key, r.getLifespanMs(now), r.getFreshnessMs(now), r.getExposureMs(now), nv.rank, nv.count);
                    StatusBarNotification sbn = r.getSbn();
                    NotificationManagerService.this.cancelNotification(callingUid, callingPid, sbn.getPackageName(), sbn.getTag(), sbn.getId(), 16, 4160, false, r.getUserId(), 1, nv.rank, nv.count, null);
                    nv.recycle();
                    NotificationManagerService.this.reportUserInteraction(r);
                    return;
                }
                Slog.w(NotificationManagerService.TAG, "No notification with key: " + key);
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationActionClick(int callingUid, int callingPid, String key, int actionIndex, Notification.Action action, NotificationVisibility nv, boolean generatedByAssistant) throws Throwable {
            NotificationManagerService.this.exitIdle();
            synchronized (NotificationManagerService.this.mNotificationLock) {
                try {
                    try {
                        NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                        if (r != null) {
                            long now = NotificationManagerService.this.mSystemClock.currentTimeMillis();
                            int i = 1;
                            LogMaker logMakerAddTaggedData = r.getLogMaker(now).setCategory(CecMessageType.ROUTING_INFORMATION).setType(4).setSubtype(actionIndex).addTaggedData(798, Integer.valueOf(nv.rank)).addTaggedData(1395, Integer.valueOf(nv.count)).addTaggedData(1601, Integer.valueOf(action.isContextual() ? 1 : 0));
                            if (!generatedByAssistant) {
                                i = 0;
                            }
                            MetricsLogger.action(logMakerAddTaggedData.addTaggedData(1600, Integer.valueOf(i)).addTaggedData(1629, Integer.valueOf(nv.location.toMetricsEventEnum())));
                            NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.fromAction(actionIndex, generatedByAssistant, action.isContextual()), r);
                            EventLogTags.writeNotificationActionClicked(key, actionIndex, r.getLifespanMs(now), r.getFreshnessMs(now), r.getExposureMs(now), nv.rank, nv.count);
                            nv.recycle();
                            NotificationManagerService.this.reportUserInteraction(r);
                            NotificationManagerService.this.mAssistants.notifyAssistantActionClicked(r.getSbn(), actionIndex, action, generatedByAssistant);
                            return;
                        }
                        Slog.w(NotificationManagerService.TAG, "No notification with key: " + key);
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationClear(int callingUid, int callingPid, String pkg, String tag, int id, int userId, String key, int dismissalSurface, int dismissalSentiment, NotificationVisibility nv) throws Throwable {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                try {
                    try {
                        try {
                            NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                            if (r != null) {
                                try {
                                    r.recordDismissalSurface(dismissalSurface);
                                    r.recordDismissalSentiment(dismissalSentiment);
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            }
                            NotificationManagerService.this.cancelNotification(callingUid, callingPid, pkg, tag, id, 0, 66, true, userId, 2, nv.rank, nv.count, null);
                            nv.recycle();
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onPanelRevealed(boolean clearEffects, int items) {
            MetricsLogger.visible(NotificationManagerService.this.getContext(), BackLightSettings.DEFAULT_BRIGHTNESS);
            MetricsLogger.histogram(NotificationManagerService.this.getContext(), "note_load", items);
            NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationPanelEvent.NOTIFICATION_PANEL_OPEN);
            EventLogTags.writeNotificationPanelRevealed(items);
            if (clearEffects) {
                clearEffects();
            }
            NotificationManagerService.this.mAssistants.onPanelRevealed(items);
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onPanelHidden() {
            MetricsLogger.hidden(NotificationManagerService.this.getContext(), BackLightSettings.DEFAULT_BRIGHTNESS);
            NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationPanelEvent.NOTIFICATION_PANEL_CLOSE);
            EventLogTags.writeNotificationPanelHidden();
            NotificationManagerService.this.mAssistants.onPanelHidden();
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void clearEffects() {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                if (NotificationManagerService.DBG) {
                    Slog.d(NotificationManagerService.TAG, "clearEffects");
                }
                NotificationManagerService.this.clearSoundLocked();
                NotificationManagerService.this.clearVibrateLocked();
                NotificationManagerService.this.clearLightsLocked();
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationError(int callingUid, int callingPid, final String pkg, final String tag, final int id, final int uid, final int initialPid, final String message, int userId) {
            boolean fgService;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.findNotificationLocked(pkg, tag, id, userId);
                fgService = (r == null || (r.getNotification().flags & 64) == 0) ? false : true;
            }
            NotificationManagerService.this.cancelNotification(callingUid, callingPid, pkg, tag, id, 0, 0, false, userId, 4, null);
            if (fgService) {
                Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA
                    public final void runOrThrow() throws Exception {
                        this.f$0.lambda$onNotificationError$0$NotificationManagerService$1(uid, initialPid, pkg, tag, id, message);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onNotificationError$0$NotificationManagerService$1(int uid, int initialPid, String pkg, String tag, int id, String message) throws Exception {
            NotificationManagerService.this.mAm.crashApplication(uid, initialPid, pkg, -1, "Bad notification(tag=" + tag + ", id=" + id + ") posted from package " + pkg + ", crashing app(uid=" + uid + ", pid=" + initialPid + "): " + message, true);
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationVisibilityChanged(NotificationVisibility[] newlyVisibleKeys, NotificationVisibility[] noLongerVisibleKeys) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                for (NotificationVisibility nv : newlyVisibleKeys) {
                    NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(nv.key);
                    if (r != null) {
                        if (!r.isSeen()) {
                            if (NotificationManagerService.DBG) {
                                Slog.d(NotificationManagerService.TAG, "Marking notification as visible " + nv.key);
                            }
                            NotificationManagerService.this.reportSeen(r);
                        }
                        boolean z = true;
                        r.setVisibility(true, nv.rank, nv.count, NotificationManagerService.this.mNotificationRecordLogger);
                        NotificationManagerService.this.mAssistants.notifyAssistantVisibilityChangedLocked(r.getSbn(), true);
                        if (nv.location != NotificationVisibility.NotificationLocation.LOCATION_FIRST_HEADS_UP) {
                            z = false;
                        }
                        boolean isHun = z;
                        if (isHun || r.hasBeenVisiblyExpanded()) {
                            NotificationManagerService.this.logSmartSuggestionsVisible(r, nv.location.toMetricsEventEnum());
                        }
                        NotificationManagerService.this.maybeRecordInterruptionLocked(r);
                        nv.recycle();
                    }
                }
                for (NotificationVisibility nv2 : noLongerVisibleKeys) {
                    NotificationRecord r2 = NotificationManagerService.this.mNotificationsByKey.get(nv2.key);
                    if (r2 != null) {
                        r2.setVisibility(false, nv2.rank, nv2.count, NotificationManagerService.this.mNotificationRecordLogger);
                        NotificationManagerService.this.mAssistants.notifyAssistantVisibilityChangedLocked(r2.getSbn(), false);
                        nv2.recycle();
                    }
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationExpansionChanged(String key, boolean userAction, boolean expanded, int notificationLocation) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    r.stats.onExpansionChanged(userAction, expanded);
                    if (r.hasBeenVisiblyExpanded()) {
                        NotificationManagerService.this.logSmartSuggestionsVisible(r, notificationLocation);
                    }
                    if (userAction) {
                        MetricsLogger.action(r.getItemLogMaker().setType(expanded ? 3 : 14));
                        NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.fromExpanded(expanded, userAction), r);
                    }
                    if (expanded && userAction) {
                        r.recordExpanded();
                        NotificationManagerService.this.reportUserInteraction(r);
                    }
                    NotificationManagerService.this.mAssistants.notifyAssistantExpansionChangedLocked(r.getSbn(), userAction, expanded);
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationDirectReplied(String key) {
            NotificationManagerService.this.exitIdle();
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    r.recordDirectReplied();
                    NotificationManagerService.this.mMetricsLogger.write(r.getLogMaker().setCategory(1590).setType(4));
                    NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.NOTIFICATION_DIRECT_REPLIED, r);
                    NotificationManagerService.this.reportUserInteraction(r);
                    NotificationManagerService.this.mAssistants.notifyAssistantNotificationDirectReplyLocked(r.getSbn());
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationSmartSuggestionsAdded(String key, int smartReplyCount, int smartActionCount, boolean generatedByAssistant, boolean editBeforeSending) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    r.setNumSmartRepliesAdded(smartReplyCount);
                    r.setNumSmartActionsAdded(smartActionCount);
                    r.setSuggestionsGeneratedByAssistant(generatedByAssistant);
                    r.setEditChoicesBeforeSending(editBeforeSending);
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationSmartReplySent(String key, int replyIndex, CharSequence reply, int notificationLocation, boolean modifiedBeforeSending) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    int i = 1;
                    LogMaker logMakerAddTaggedData = r.getLogMaker().setCategory(1383).setSubtype(replyIndex).addTaggedData(1600, Integer.valueOf(r.getSuggestionsGeneratedByAssistant() ? 1 : 0)).addTaggedData(1629, Integer.valueOf(notificationLocation)).addTaggedData(1647, Integer.valueOf(r.getEditChoicesBeforeSending() ? 1 : 0));
                    if (!modifiedBeforeSending) {
                        i = 0;
                    }
                    LogMaker logMaker = logMakerAddTaggedData.addTaggedData(1648, Integer.valueOf(i));
                    NotificationManagerService.this.mMetricsLogger.write(logMaker);
                    NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.NOTIFICATION_SMART_REPLIED, r);
                    NotificationManagerService.this.reportUserInteraction(r);
                    NotificationManagerService.this.mAssistants.notifyAssistantSuggestedReplySent(r.getSbn(), reply, r.getSuggestionsGeneratedByAssistant());
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationSettingsViewed(String key) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    r.recordViewedSettings();
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onNotificationBubbleChanged(String key, boolean isBubble, int flags) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    if (!isBubble) {
                        r.getNotification().flags &= -4097;
                        r.setFlagBubbleRemoved(true);
                    } else {
                        r.getNotification().flags |= 8;
                        r.setFlagBubbleRemoved(false);
                        if (r.getNotification().getBubbleMetadata() != null) {
                            r.getNotification().getBubbleMetadata().setFlags(flags);
                        }
                        NotificationManagerService.this.mHandler.post(NotificationManagerService.this.new EnqueueNotificationRunnable(r.getUser().getIdentifier(), r, true));
                    }
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void onBubbleNotificationSuppressionChanged(String key, boolean isSuppressed) {
            int flags;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                if (r != null) {
                    Notification.BubbleMetadata data = r.getNotification().getBubbleMetadata();
                    if (data == null) {
                        return;
                    }
                    boolean currentlySuppressed = data.isNotificationSuppressed();
                    if (currentlySuppressed == isSuppressed) {
                        return;
                    }
                    int flags2 = data.getFlags();
                    if (isSuppressed) {
                        flags = flags2 | 2;
                    } else {
                        flags = flags2 & (-3);
                    }
                    data.setFlags(flags);
                    r.getNotification().flags |= 8;
                    NotificationManagerService.this.mHandler.post(NotificationManagerService.this.new EnqueueNotificationRunnable(r.getUser().getIdentifier(), r, true));
                }
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void grantInlineReplyUriPermission(String key, Uri uri, UserHandle user, String packageName, int callingUid) {
            int uid;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                InlineReplyUriRecord r = NotificationManagerService.this.mInlineReplyRecordsByKey.get(key);
                if (r == null) {
                    InlineReplyUriRecord newRecord = new InlineReplyUriRecord(NotificationManagerService.this.mUgmInternal.newUriPermissionOwner("INLINE_REPLY:" + key), user, packageName, key);
                    r = newRecord;
                    NotificationManagerService.this.mInlineReplyRecordsByKey.put(key, r);
                }
                IBinder owner = r.getPermissionOwner();
                int userId = r.getUserId();
                if (UserHandle.getUserId(callingUid) != userId) {
                    try {
                        String[] pkgs = NotificationManagerService.this.mPackageManager.getPackagesForUid(callingUid);
                        if (pkgs == null) {
                            Log.e(NotificationManagerService.TAG, "Cannot grant uri permission to unknown UID: " + callingUid);
                        }
                        String pkg = pkgs[0];
                        int uid2 = NotificationManagerService.this.mPackageManager.getPackageUid(pkg, 0, userId);
                        uid = uid2;
                    } catch (RemoteException re) {
                        Log.e(NotificationManagerService.TAG, "Cannot talk to package manager", re);
                        uid = callingUid;
                    }
                    r.addUri(uri);
                    NotificationManagerService.this.grantUriPermission(owner, uri, uid, r.getPackageName(), userId);
                } else {
                    uid = callingUid;
                    r.addUri(uri);
                    NotificationManagerService.this.grantUriPermission(owner, uri, uid, r.getPackageName(), userId);
                }
                throw th;
            }
        }

        @Override // com.android.server.notification.NotificationDelegate
        public void clearInlineReplyUriPermissions(String key, int callingUid) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                InlineReplyUriRecord uriRecord = NotificationManagerService.this.mInlineReplyRecordsByKey.get(key);
                if (uriRecord != null) {
                    NotificationManagerService.this.destroyPermissionOwner(uriRecord.getPermissionOwner(), uriRecord.getUserId(), "INLINE_REPLY: " + uriRecord.getKey());
                    NotificationManagerService.this.mInlineReplyRecordsByKey.remove(key);
                }
            }
        }
    }

    void logSmartSuggestionsVisible(NotificationRecord notificationRecord, int i) {
        if ((notificationRecord.getNumSmartRepliesAdded() > 0 || notificationRecord.getNumSmartActionsAdded() > 0) && !notificationRecord.hasSeenSmartReplies()) {
            notificationRecord.setSeenSmartReplies(true);
            this.mMetricsLogger.write(notificationRecord.getLogMaker().setCategory(1382).addTaggedData(1384, Integer.valueOf(notificationRecord.getNumSmartRepliesAdded())).addTaggedData(AudioChannelMask.OUT_7POINT1, Integer.valueOf(notificationRecord.getNumSmartActionsAdded())).addTaggedData(1600, Integer.valueOf(notificationRecord.getSuggestionsGeneratedByAssistant() ? 1 : 0)).addTaggedData(1629, Integer.valueOf(i)).addTaggedData(1647, Integer.valueOf(notificationRecord.getEditChoicesBeforeSending() ? 1 : 0)));
            this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.NOTIFICATION_SMART_REPLY_VISIBLE, notificationRecord);
        }
    }

    void clearSoundLocked() {
        this.mSoundNotificationKey = null;
        long identity = Binder.clearCallingIdentity();
        try {
            IRingtonePlayer player = this.mAudioManager.getRingtonePlayer();
            if (player != null) {
                player.stopAsync();
            }
        } catch (RemoteException e) {
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    void clearVibrateLocked() {
        this.mVibrateNotificationKey = null;
        long identity = Binder.clearCallingIdentity();
        try {
            this.mVibrator.cancel();
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearLightsLocked() {
        this.mLights.clear();
        updateLightsLocked();
    }

    private final class SettingsObserver extends ContentObserver {
        private final Uri NOTIFICATION_BADGING_URI;
        private final Uri NOTIFICATION_BUBBLES_URI;
        private final Uri NOTIFICATION_HISTORY_ENABLED;
        private final Uri NOTIFICATION_LIGHT_PULSE_URI;
        private final Uri NOTIFICATION_RATE_LIMIT_URI;

        SettingsObserver(Handler handler) {
            super(handler);
            this.NOTIFICATION_BADGING_URI = Settings.Secure.getUriFor("notification_badging");
            this.NOTIFICATION_BUBBLES_URI = Settings.Global.getUriFor("notification_bubbles");
            this.NOTIFICATION_LIGHT_PULSE_URI = Settings.System.getUriFor("notification_light_pulse");
            this.NOTIFICATION_RATE_LIMIT_URI = Settings.Global.getUriFor("max_notification_enqueue_rate");
            this.NOTIFICATION_HISTORY_ENABLED = Settings.Secure.getUriFor("notification_history_enabled");
        }

        void observe() {
            ContentResolver resolver = NotificationManagerService.this.getContext().getContentResolver();
            resolver.registerContentObserver(this.NOTIFICATION_BADGING_URI, false, this, -1);
            resolver.registerContentObserver(this.NOTIFICATION_LIGHT_PULSE_URI, false, this, -1);
            resolver.registerContentObserver(this.NOTIFICATION_RATE_LIMIT_URI, false, this, -1);
            resolver.registerContentObserver(this.NOTIFICATION_BUBBLES_URI, false, this, -1);
            resolver.registerContentObserver(this.NOTIFICATION_HISTORY_ENABLED, false, this, -1);
            update(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri, int userId) {
            update(uri);
        }

        public void update(Uri uri) {
            ContentResolver resolver = NotificationManagerService.this.getContext().getContentResolver();
            if (uri == null || this.NOTIFICATION_LIGHT_PULSE_URI.equals(uri)) {
                boolean pulseEnabled = Settings.System.getIntForUser(resolver, "notification_light_pulse", 0, -2) != 0;
                if (NotificationManagerService.this.mNotificationPulseEnabled != pulseEnabled) {
                    NotificationManagerService.this.mNotificationPulseEnabled = pulseEnabled;
                    NotificationManagerService.this.updateNotificationPulse();
                }
            }
            if (uri == null || this.NOTIFICATION_RATE_LIMIT_URI.equals(uri)) {
                NotificationManagerService notificationManagerService = NotificationManagerService.this;
                notificationManagerService.mMaxPackageEnqueueRate = Settings.Global.getFloat(resolver, "max_notification_enqueue_rate", notificationManagerService.mMaxPackageEnqueueRate);
            }
            if (uri == null || this.NOTIFICATION_BADGING_URI.equals(uri)) {
                NotificationManagerService.this.mPreferencesHelper.updateBadgingEnabled();
            }
            if (uri == null || this.NOTIFICATION_BUBBLES_URI.equals(uri)) {
                NotificationManagerService.this.mPreferencesHelper.updateBubblesEnabled();
            }
            if (uri == null || this.NOTIFICATION_HISTORY_ENABLED.equals(uri)) {
                IntArray userIds = NotificationManagerService.this.mUserProfiles.getCurrentProfileIds();
                for (int i = 0; i < userIds.size(); i++) {
                    NotificationManagerService.this.mArchive.updateHistoryEnabled(userIds.get(i), Settings.Secure.getInt(resolver, "notification_history_enabled", 0) == 1);
                }
            }
        }
    }

    static long[] getLongArray(Resources r, int resid, int maxlen, long[] def) {
        int[] ar = r.getIntArray(resid);
        if (ar == null) {
            return def;
        }
        int len = ar.length > maxlen ? maxlen : ar.length;
        long[] out = new long[len];
        for (int i = 0; i < len; i++) {
            out[i] = ar[i];
        }
        return out;
    }

    public NotificationManagerService(Context context) {
        this(context, new NotificationRecordLoggerImpl(), new InjectableSystemClockImpl(), new InstanceIdSequence(8192));
    }

    public NotificationManagerService(Context context, NotificationRecordLogger notificationRecordLogger, InjectableSystemClock systemClock, InstanceIdSequence notificationInstanceIdSequence) {
        super(context);
        this.mForegroundToken = new Binder();
        this.mRankingThread = new HandlerThread("ranker", 10);
        this.mHasLight = true;
        this.mListenersDisablingEffects = new SparseArray<>();
        this.mEffectsSuppressors = new ArrayList();
        this.mInterruptionFilter = 0;
        this.mScreenOn = true;
        this.mInCallStateOffHook = false;
        this.mCallNotificationToken = null;
        this.mNotificationLock = new Object();
        this.mNotificationList = new ArrayList<>();
        this.mNotificationsByKey = new ArrayMap<>();
        this.mInlineReplyRecordsByKey = new ArrayMap<>();
        this.mEnqueuedNotifications = new ArrayList<>();
        this.mAutobundledSummaries = new ArrayMap<>();
        this.mToastQueue = new ArrayList<>();
        this.mSummaryByGroupKey = new ArrayMap<>();
        this.mDelayedCancelations = new ArrayMap<>();
        this.mLights = new ArrayList<>();
        this.mUserProfiles = new ManagedServices.UserProfiles();
        this.mLockScreenAllowSecureNotifications = true;
        this.mMaxPackageEnqueueRate = DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE;
        this.mSavePolicyFile = new SavePolicyFileRunnable(this, null);
        this.mMsgPkgsAllowedAsConvos = new HashSet();
        this.mNotificationDelegate = new AnonymousClass1();
        this.mLocaleChangeReceiver = new BroadcastReceiver() { // from class: com.android.server.notification.NotificationManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.LOCALE_CHANGED".equals(intent.getAction())) {
                    SystemNotificationChannels.createAll(context2);
                    NotificationManagerService.this.mZenModeHelper.updateDefaultZenRules();
                    NotificationManagerService.this.mPreferencesHelper.onLocaleChanged(context2, ActivityManager.getCurrentUser());
                }
            }
        };
        this.mRestoreReceiver = new BroadcastReceiver() { // from class: com.android.server.notification.NotificationManagerService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.os.action.SETTING_RESTORED".equals(intent.getAction())) {
                    try {
                        String element = intent.getStringExtra("setting_name");
                        String newValue = intent.getStringExtra("new_value");
                        int restoredFromSdkInt = intent.getIntExtra("restored_from_sdk_int", 0);
                        NotificationManagerService.this.mListeners.onSettingRestored(element, newValue, restoredFromSdkInt, getSendingUserId());
                        NotificationManagerService.this.mConditionProviders.onSettingRestored(element, newValue, restoredFromSdkInt, getSendingUserId());
                    } catch (Exception e) {
                        Slog.wtf(NotificationManagerService.TAG, "Cannot restore managed services from settings", e);
                    }
                }
            }
        };
        this.mNotificationTimeoutReceiver = new BroadcastReceiver() { // from class: com.android.server.notification.NotificationManagerService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws Throwable {
                String action = intent.getAction();
                if (action != null && NotificationManagerService.ACTION_NOTIFICATION_TIMEOUT.equals(action)) {
                    synchronized (NotificationManagerService.this.mNotificationLock) {
                        try {
                            try {
                                NotificationRecord record = NotificationManagerService.this.findNotificationByKeyLocked(intent.getStringExtra(NotificationManagerService.EXTRA_KEY));
                                if (record != null) {
                                    NotificationManagerService.this.cancelNotification(record.getSbn().getUid(), record.getSbn().getInitialPid(), record.getSbn().getPackageName(), record.getSbn().getTag(), record.getSbn().getId(), 0, 64, true, record.getUserId(), 19, null);
                                }
                            } catch (Throwable th) {
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            }
        };
        this.mPackageIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.notification.NotificationManagerService.5
            /* JADX WARN: Multi-variable type inference failed */
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
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                boolean packageChanged;
                boolean packageChanged2;
                boolean queryRemove;
                boolean removingPackage;
                String pkgName;
                String[] pkgList;
                int i;
                int[] uidList;
                boolean removingPackage2;
                int changeUserId;
                String action = intent.getAction();
                if (action == null) {
                    return;
                }
                boolean queryRestart = false;
                boolean packageChanged3 = false;
                boolean cancelNotifications = true;
                boolean hideNotifications = false;
                boolean unhideNotifications = false;
                if (action.equals("android.intent.action.PACKAGE_ADDED")) {
                    packageChanged = false;
                    packageChanged2 = false;
                    queryRemove = false;
                } else {
                    boolean queryRemove2 = action.equals("android.intent.action.PACKAGE_REMOVED");
                    if (!queryRemove2 && !action.equals("android.intent.action.PACKAGE_RESTARTED")) {
                        boolean zEquals = action.equals("android.intent.action.PACKAGE_CHANGED");
                        packageChanged3 = zEquals;
                        if (zEquals) {
                            packageChanged = packageChanged3;
                            packageChanged2 = queryRemove2;
                            queryRemove = false;
                        } else {
                            boolean zEquals2 = action.equals("android.intent.action.QUERY_PACKAGE_RESTART");
                            queryRestart = zEquals2;
                            if (!zEquals2 && !action.equals("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE") && !action.equals("android.intent.action.PACKAGES_SUSPENDED") && !action.equals("android.intent.action.PACKAGES_UNSUSPENDED") && !action.equals("android.intent.action.DISTRACTING_PACKAGES_CHANGED")) {
                                return;
                            }
                            packageChanged = packageChanged3;
                            packageChanged2 = queryRemove2;
                            queryRemove = queryRestart;
                        }
                    } else {
                        packageChanged = packageChanged3;
                        packageChanged2 = queryRemove2;
                        queryRemove = queryRestart;
                    }
                }
                int changeUserId2 = intent.getIntExtra("android.intent.extra.user_handle", -1);
                boolean removingPackage3 = packageChanged2 && !intent.getBooleanExtra("android.intent.extra.REPLACING", false);
                if (NotificationManagerService.DBG) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("action=");
                    sb.append(action);
                    sb.append(" removing=");
                    removingPackage = removingPackage3;
                    sb.append(removingPackage);
                    Slog.i(NotificationManagerService.TAG, sb.toString());
                } else {
                    removingPackage = removingPackage3;
                }
                if (action.equals("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE")) {
                    pkgList = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                    uidList = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                    i = 0;
                } else if (action.equals("android.intent.action.PACKAGES_SUSPENDED")) {
                    pkgList = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                    uidList = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                    cancelNotifications = false;
                    hideNotifications = true;
                    i = 0;
                } else if (action.equals("android.intent.action.PACKAGES_UNSUSPENDED")) {
                    pkgList = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                    uidList = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                    cancelNotifications = false;
                    unhideNotifications = true;
                    i = 0;
                } else if (action.equals("android.intent.action.DISTRACTING_PACKAGES_CHANGED")) {
                    int distractionRestrictions = intent.getIntExtra("android.intent.extra.distraction_restrictions", 0);
                    if ((distractionRestrictions & 2) != 0) {
                        String[] pkgList2 = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                        int[] uidList2 = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                        cancelNotifications = false;
                        hideNotifications = true;
                        pkgList = pkgList2;
                        uidList = uidList2;
                    } else {
                        String[] pkgList3 = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                        int[] uidList3 = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                        cancelNotifications = false;
                        unhideNotifications = true;
                        pkgList = pkgList3;
                        uidList = uidList3;
                    }
                    i = 0;
                } else if (queryRemove) {
                    pkgList = intent.getStringArrayExtra("android.intent.extra.PACKAGES");
                    uidList = new int[]{intent.getIntExtra("android.intent.extra.UID", -1)};
                    i = 0;
                } else {
                    Uri uri = intent.getData();
                    if (uri == null || (pkgName = uri.getSchemeSpecificPart()) == null) {
                        return;
                    }
                    if (packageChanged) {
                        try {
                            int enabled = NotificationManagerService.this.mPackageManager.getApplicationEnabledSetting(pkgName, changeUserId2 != -1 ? changeUserId2 : 0);
                            if (enabled == 1 || enabled == 0) {
                                cancelNotifications = false;
                            }
                        } catch (RemoteException e) {
                        } catch (IllegalArgumentException e2) {
                            if (NotificationManagerService.DBG) {
                                Slog.i(NotificationManagerService.TAG, "Exception trying to look up app enabled setting", e2);
                            }
                        }
                    }
                    i = 0;
                    pkgList = new String[]{pkgName};
                    uidList = new int[]{intent.getIntExtra("android.intent.extra.UID", -1)};
                }
                if (pkgList == null || pkgList.length <= 0) {
                    removingPackage2 = removingPackage;
                    changeUserId = changeUserId2;
                } else if (cancelNotifications) {
                    int length = pkgList.length;
                    int i2 = i;
                    while (i2 < length) {
                        int changeUserId3 = changeUserId2;
                        NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, pkgList[i2], null, 0, 0, !queryRemove ? 1 : i, changeUserId3, 5, null);
                        i2++;
                        i = i;
                        removingPackage = removingPackage;
                        length = length;
                        changeUserId2 = changeUserId3;
                    }
                    removingPackage2 = removingPackage;
                    changeUserId = changeUserId2;
                } else {
                    removingPackage2 = removingPackage;
                    changeUserId = changeUserId2;
                    if (hideNotifications) {
                        NotificationManagerService.this.hideNotificationsForPackages(pkgList);
                    } else if (unhideNotifications) {
                        NotificationManagerService.this.unhideNotificationsForPackages(pkgList);
                    }
                }
                NotificationManagerService.this.mHandler.scheduleOnPackageChanged(removingPackage2, changeUserId, pkgList, uidList);
            }
        };
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.android.server.notification.NotificationManagerService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    NotificationManagerService.this.mScreenOn = true;
                    NotificationManagerService.this.updateNotificationPulse();
                    return;
                }
                if (action.equals("android.intent.action.SCREEN_OFF")) {
                    NotificationManagerService.this.mScreenOn = false;
                    NotificationManagerService.this.updateNotificationPulse();
                    return;
                }
                if (action.equals("android.intent.action.PHONE_STATE")) {
                    NotificationManagerService.this.mInCallStateOffHook = TelephonyManager.EXTRA_STATE_OFFHOOK.equals(intent.getStringExtra("state"));
                    NotificationManagerService.this.updateNotificationPulse();
                    return;
                }
                if (action.equals("android.intent.action.USER_STOPPED")) {
                    int userHandle = intent.getIntExtra("android.intent.extra.user_handle", -1);
                    if (userHandle >= 0) {
                        NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, null, null, 0, 0, true, userHandle, 6, null);
                        return;
                    }
                    return;
                }
                if (action.equals("android.intent.action.MANAGED_PROFILE_UNAVAILABLE")) {
                    int userHandle2 = intent.getIntExtra("android.intent.extra.user_handle", -1);
                    if (userHandle2 >= 0) {
                        NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, null, null, 0, 0, true, userHandle2, 15, null);
                        return;
                    }
                    return;
                }
                if (action.equals("android.intent.action.USER_PRESENT")) {
                    if (NotificationManagerService.this.mNotificationLight != null) {
                        NotificationManagerService.this.mNotificationLight.turnOff();
                        return;
                    }
                    return;
                }
                if (action.equals("android.intent.action.USER_SWITCHED")) {
                    int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                    NotificationManagerService.this.mUserProfiles.updateCache(context2);
                    if (!NotificationManagerService.this.mUserProfiles.isManagedProfile(userId)) {
                        NotificationManagerService.this.mSettingsObserver.update(null);
                        NotificationManagerService.this.mConditionProviders.onUserSwitched(userId);
                        NotificationManagerService.this.mListeners.onUserSwitched(userId);
                        NotificationManagerService.this.mZenModeHelper.onUserSwitched(userId);
                        NotificationManagerService.this.mPreferencesHelper.onUserSwitched(userId);
                    }
                    NotificationManagerService.this.mAssistants.onUserSwitched(userId);
                    return;
                }
                if (action.equals("android.intent.action.USER_ADDED")) {
                    int userId2 = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                    if (userId2 != -10000) {
                        NotificationManagerService.this.mUserProfiles.updateCache(context2);
                        if (!NotificationManagerService.this.mUserProfiles.isManagedProfile(userId2)) {
                            NotificationManagerService.this.allowDefaultApprovedServices(userId2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (action.equals("android.intent.action.USER_REMOVED")) {
                    int userId3 = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                    NotificationManagerService.this.mUserProfiles.updateCache(context2);
                    NotificationManagerService.this.mZenModeHelper.onUserRemoved(userId3);
                    NotificationManagerService.this.mPreferencesHelper.onUserRemoved(userId3);
                    NotificationManagerService.this.mListeners.onUserRemoved(userId3);
                    NotificationManagerService.this.mConditionProviders.onUserRemoved(userId3);
                    NotificationManagerService.this.mAssistants.onUserRemoved(userId3);
                    NotificationManagerService.this.mHistoryManager.onUserRemoved(userId3);
                    NotificationManagerService.this.handleSavePolicyFile();
                    return;
                }
                if (action.equals("android.intent.action.USER_UNLOCKED")) {
                    int userId4 = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                    NotificationManagerService.this.mUserProfiles.updateCache(context2);
                    NotificationManagerService.this.mAssistants.onUserUnlocked(userId4);
                    if (!NotificationManagerService.this.mUserProfiles.isManagedProfile(userId4)) {
                        NotificationManagerService.this.mConditionProviders.onUserUnlocked(userId4);
                        NotificationManagerService.this.mListeners.onUserUnlocked(userId4);
                        NotificationManagerService.this.mZenModeHelper.onUserUnlocked(userId4);
                        NotificationManagerService.this.mPreferencesHelper.onUserUnlocked(userId4);
                    }
                }
            }
        };
        this.mService = new AnonymousClass10();
        this.mInternalService = new AnonymousClass11();
        this.mShortcutListener = new ShortcutHelper.ShortcutListener() { // from class: com.android.server.notification.NotificationManagerService.12
            @Override // com.android.server.notification.ShortcutHelper.ShortcutListener
            public void onShortcutRemoved(String key) {
                String packageName;
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                    packageName = r != null ? r.getSbn().getPackageName() : null;
                }
                boolean isAppForeground = packageName != null && NotificationManagerService.this.mActivityManager.getPackageImportance(packageName) == 100;
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationRecord r2 = NotificationManagerService.this.mNotificationsByKey.get(key);
                    if (r2 != null) {
                        r2.setShortcutInfo(null);
                        r2.getNotification().flags |= 8;
                        NotificationManagerService.this.mHandler.post(NotificationManagerService.this.new EnqueueNotificationRunnable(r2.getUser().getIdentifier(), r2, isAppForeground));
                    }
                }
            }
        };
        this.mNotificationRecordLogger = notificationRecordLogger;
        this.mSystemClock = systemClock;
        this.mNotificationInstanceIdSequence = notificationInstanceIdSequence;
        Notification.processWhitelistToken = WHITELIST_TOKEN;
    }

    void setAudioManager(AudioManager audioMananger) {
        this.mAudioManager = audioMananger;
    }

    void setKeyguardManager(KeyguardManager keyguardManager) {
        this.mKeyguardManager = keyguardManager;
    }

    ShortcutHelper getShortcutHelper() {
        return this.mShortcutHelper;
    }

    void setShortcutHelper(ShortcutHelper helper) {
        this.mShortcutHelper = helper;
    }

    void setHints(int hints) {
        this.mListenerHints = hints;
    }

    void setVibrator(Vibrator vibrator) {
        this.mVibrator = vibrator;
    }

    void setLights(LogicalLight light) {
        this.mNotificationLight = light;
        this.mAttentionLight = light;
        this.mNotificationPulseEnabled = true;
    }

    void setScreenOn(boolean on) {
        this.mScreenOn = on;
    }

    int getNotificationRecordCount() {
        int count;
        synchronized (this.mNotificationLock) {
            count = this.mNotificationList.size() + this.mNotificationsByKey.size() + this.mSummaryByGroupKey.size() + this.mEnqueuedNotifications.size();
            for (NotificationRecord posted : this.mNotificationList) {
                if (this.mNotificationsByKey.containsKey(posted.getKey())) {
                    count--;
                }
                if (posted.getSbn().isGroup() && posted.getNotification().isGroupSummary()) {
                    count--;
                }
            }
        }
        return count;
    }

    void clearNotifications() {
        synchronized (this.mNotificationList) {
            this.mEnqueuedNotifications.clear();
            this.mNotificationList.clear();
            this.mNotificationsByKey.clear();
            this.mSummaryByGroupKey.clear();
        }
    }

    void addNotification(NotificationRecord r) {
        this.mNotificationList.add(r);
        this.mNotificationsByKey.put(r.getSbn().getKey(), r);
        if (r.getSbn().isGroup()) {
            this.mSummaryByGroupKey.put(r.getGroupKey(), r);
        }
    }

    void addEnqueuedNotification(NotificationRecord r) {
        this.mEnqueuedNotifications.add(r);
    }

    NotificationRecord getNotificationRecord(String key) {
        return this.mNotificationsByKey.get(key);
    }

    void setSystemReady(boolean systemReady) {
        this.mSystemReady = systemReady;
    }

    void setHandler(WorkerHandler handler) {
        this.mHandler = handler;
    }

    void setFallbackVibrationPattern(long[] vibrationPattern) {
        this.mFallbackVibrationPattern = vibrationPattern;
    }

    void setPackageManager(IPackageManager packageManager) {
        this.mPackageManager = packageManager;
    }

    void setRankingHelper(RankingHelper rankingHelper) {
        this.mRankingHelper = rankingHelper;
    }

    void setPreferencesHelper(PreferencesHelper prefHelper) {
        this.mPreferencesHelper = prefHelper;
    }

    void setZenHelper(ZenModeHelper zenHelper) {
        this.mZenModeHelper = zenHelper;
    }

    void setIsAutomotive(boolean isAutomotive) {
        this.mIsAutomotive = isAutomotive;
    }

    void setNotificationEffectsEnabledForAutomotive(boolean isEnabled) {
        this.mNotificationEffectsEnabledForAutomotive = isEnabled;
    }

    void setIsTelevision(boolean isTelevision) {
        this.mIsTelevision = isTelevision;
    }

    void setUsageStats(NotificationUsageStats us) {
        this.mUsageStats = us;
    }

    void setAccessibilityManager(AccessibilityManager am) {
        this.mAccessibilityManager = am;
    }

    void init(WorkerHandler handler, RankingHandler rankingHandler, IPackageManager packageManager, PackageManager packageManagerClient, LightsManager lightsManager, NotificationListeners notificationListeners, NotificationAssistants notificationAssistants, ConditionProviders conditionProviders, ICompanionDeviceManager companionManager, SnoozeHelper snoozeHelper, NotificationUsageStats usageStats, AtomicFile policyFile, ActivityManager activityManager, GroupHelper groupHelper, IActivityManager am, ActivityTaskManagerInternal atm, UsageStatsManagerInternal appUsageStats, DevicePolicyManagerInternal dpm, IUriGrantsManager ugm, UriGrantsManagerInternal ugmInternal, AppOpsManager appOps, UserManager userManager, NotificationHistoryManager historyManager, StatsManager statsManager, TelephonyManager telephonyManager, ActivityManagerInternal ami) {
        String[] extractorNames;
        this.mHandler = handler;
        Resources resources = getContext().getResources();
        this.mMaxPackageEnqueueRate = Settings.Global.getFloat(getContext().getContentResolver(), "max_notification_enqueue_rate", DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE);
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.mAm = am;
        this.mAtm = atm;
        this.mUgm = ugm;
        this.mUgmInternal = ugmInternal;
        this.mPackageManager = packageManager;
        this.mPackageManagerClient = packageManagerClient;
        this.mAppOps = appOps;
        this.mVibrator = (Vibrator) getContext().getSystemService("vibrator");
        this.mAppUsageStats = appUsageStats;
        this.mAlarmManager = (AlarmManager) getContext().getSystemService("alarm");
        this.mCompanionManager = companionManager;
        this.mActivityManager = activityManager;
        this.mAmi = ami;
        this.mDeviceIdleController = IDeviceIdleController.Stub.asInterface(ServiceManager.getService("deviceidle"));
        this.mDpm = dpm;
        this.mUm = userManager;
        this.mPlatformCompat = IPlatformCompat.Stub.asInterface(ServiceManager.getService("platform_compat"));
        this.mUiHandler = new Handler(UiThread.get().getLooper());
        try {
            extractorNames = resources.getStringArray(R.array.config_emergency_iso_country_codes);
        } catch (Resources.NotFoundException e) {
            extractorNames = new String[0];
        }
        this.mUsageStats = usageStats;
        this.mMetricsLogger = new MetricsLogger();
        this.mRankingHandler = rankingHandler;
        this.mConditionProviders = conditionProviders;
        ZenModeHelper zenModeHelper = new ZenModeHelper(getContext(), this.mHandler.getLooper(), this.mConditionProviders, new SysUiStatsEvent.BuilderFactory());
        this.mZenModeHelper = zenModeHelper;
        zenModeHelper.addCallback(new AnonymousClass7());
        this.mPreferencesHelper = new PreferencesHelper(getContext(), this.mPackageManagerClient, this.mRankingHandler, this.mZenModeHelper, new NotificationChannelLoggerImpl(), this.mAppOps, new SysUiStatsEvent.BuilderFactory());
        this.mRankingHelper = new RankingHelper(getContext(), this.mRankingHandler, this.mPreferencesHelper, this.mZenModeHelper, this.mUsageStats, extractorNames);
        this.mSnoozeHelper = snoozeHelper;
        this.mGroupHelper = groupHelper;
        this.mHistoryManager = historyManager;
        this.mListeners = notificationListeners;
        this.mAssistants = notificationAssistants;
        this.mAllowedManagedServicePackages = new TriPredicate() { // from class: com.android.server.notification.-$$Lambda$V4J7df5A6vhSIuw7Ym9xgkfahto
            public final boolean test(Object obj, Object obj2, Object obj3) {
                return this.f$0.canUseManagedServices((String) obj, (Integer) obj2, (String) obj3);
            }
        };
        this.mPolicyFile = policyFile;
        loadPolicyFile();
        StatusBarManagerInternal statusBarManagerInternal = (StatusBarManagerInternal) getLocalService(StatusBarManagerInternal.class);
        this.mStatusBar = statusBarManagerInternal;
        if (statusBarManagerInternal != null) {
            statusBarManagerInternal.setNotificationDelegate(this.mNotificationDelegate);
        }
        this.mNotificationLight = lightsManager.getLight(4);
        this.mAttentionLight = lightsManager.getLight(5);
        this.mFallbackVibrationPattern = getLongArray(resources, R.array.config_dozeTapSensorPostureMapping, 17, DEFAULT_VIBRATE_PATTERN);
        this.mInCallNotificationUri = Uri.parse("file://" + resources.getString(R.string.config_devicePolicyManagement));
        this.mInCallNotificationAudioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(2).build();
        this.mInCallNotificationVolume = resources.getFloat(R.dimen.config_displayWhiteBalanceBrightnessFilterIntercept);
        this.mUseAttentionLight = resources.getBoolean(R.bool.config_cecSoundbarModeEnabled_default);
        this.mHasLight = resources.getBoolean(R.bool.config_cecQuerySadDtshdDisabled_allowed);
        if (Settings.Global.getInt(getContext().getContentResolver(), "device_provisioned", 0) == 0) {
            this.mDisableNotificationEffects = true;
        }
        this.mZenModeHelper.initZenMode();
        this.mInterruptionFilter = this.mZenModeHelper.getZenModeListenerInterruptionFilter();
        this.mUserProfiles.updateCache(getContext());
        telephonyManager.listen(new PhoneStateListener() { // from class: com.android.server.notification.NotificationManagerService.8
            @Override // android.telephony.PhoneStateListener
            public void onCallStateChanged(int state, String incomingNumber) {
                if (NotificationManagerService.this.mCallState == state) {
                    return;
                }
                if (NotificationManagerService.DBG) {
                    Slog.d(NotificationManagerService.TAG, "Call state changed: " + NotificationManagerService.callStateToString(state));
                }
                NotificationManagerService.this.mCallState = state;
            }
        }, 32);
        this.mSettingsObserver = new SettingsObserver(this.mHandler);
        this.mArchive = new Archive(resources.getInteger(R.integer.config_externalDisplayPeakHeight));
        this.mIsTelevision = this.mPackageManagerClient.hasSystemFeature("android.software.leanback") || this.mPackageManagerClient.hasSystemFeature("android.hardware.type.television");
        this.mIsAutomotive = this.mPackageManagerClient.hasSystemFeature("android.hardware.type.automotive", 0);
        this.mNotificationEffectsEnabledForAutomotive = resources.getBoolean(R.bool.config_cecQuerySadAtracEnabled_allowed);
        this.mPreferencesHelper.lockChannelsForOEM(getContext().getResources().getStringArray(R.array.config_allowedSecureInstantAppSettings));
        this.mZenModeHelper.setPriorityOnlyDndExemptPackages(getContext().getResources().getStringArray(R.array.config_face_acquire_biometricprompt_ignorelist));
        this.mWarnRemoteViewsSizeBytes = getContext().getResources().getInteger(R.integer.config_externalDisplayPeakWidth);
        this.mStripRemoteViewsSizeBytes = getContext().getResources().getInteger(R.integer.config_externalDisplayPeakRefreshRate);
        this.mMsgPkgsAllowedAsConvos = Set.of((Object[]) getStringArrayResource(R.array.config_dropboxLowPriorityTags));
        this.mStatsManager = statsManager;
    }

    /* JADX INFO: renamed from: com.android.server.notification.NotificationManagerService$7, reason: invalid class name */
    class AnonymousClass7 extends ZenModeHelper.Callback {
        AnonymousClass7() {
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        public void onConfigChanged() {
            NotificationManagerService.this.handleSavePolicyFile();
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        void onZenModeChanged() {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$7$oVwblUFCYS29-pk3mwoXkriijO4
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$onZenModeChanged$0$NotificationManagerService$7();
                }
            });
        }

        public /* synthetic */ void lambda$onZenModeChanged$0$NotificationManagerService$7() throws Exception {
            NotificationManagerService.this.sendRegisteredOnlyBroadcast("android.app.action.INTERRUPTION_FILTER_CHANGED");
            NotificationManagerService.this.getContext().sendBroadcastAsUser(new Intent("android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL").addFlags(67108864), UserHandle.ALL, "android.permission.MANAGE_NOTIFICATIONS");
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationManagerService.this.updateInterruptionFilterLocked();
            }
            NotificationManagerService.this.mRankingHandler.requestSort();
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        void onPolicyChanged() {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$7$FR2TcRnKXgS8FjXJjkSMBetsHLs
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$onPolicyChanged$1$NotificationManagerService$7();
                }
            });
        }

        public /* synthetic */ void lambda$onPolicyChanged$1$NotificationManagerService$7() throws Exception {
            NotificationManagerService.this.sendRegisteredOnlyBroadcast("android.app.action.NOTIFICATION_POLICY_CHANGED");
            NotificationManagerService.this.mRankingHandler.requestSort();
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        void onConsolidatedPolicyChanged() {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$7$YHDDn0zw4DdQp55BTOPWuXg5LlI
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$onConsolidatedPolicyChanged$2$NotificationManagerService$7();
                }
            });
        }

        public /* synthetic */ void lambda$onConsolidatedPolicyChanged$2$NotificationManagerService$7() throws Exception {
            NotificationManagerService.this.mRankingHandler.requestSort();
        }

        @Override // com.android.server.notification.ZenModeHelper.Callback
        void onAutomaticRuleStatusChanged(final int userId, final String pkg, final String id, final int status) {
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$7$lJpp_m0_qrtR2oF25hpp7szIAT0
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$onAutomaticRuleStatusChanged$3$NotificationManagerService$7(pkg, id, status, userId);
                }
            });
        }

        public /* synthetic */ void lambda$onAutomaticRuleStatusChanged$3$NotificationManagerService$7(String pkg, String id, int status, int userId) throws Exception {
            Intent intent = new Intent("android.app.action.AUTOMATIC_ZEN_RULE_STATUS_CHANGED");
            intent.setPackage(pkg);
            intent.putExtra("android.app.extra.AUTOMATIC_ZEN_RULE_ID", id);
            intent.putExtra("android.app.extra.AUTOMATIC_ZEN_RULE_STATUS", status);
            NotificationManagerService.this.getContext().sendBroadcastAsUser(intent, UserHandle.of(userId));
        }
    }

    protected String[] getStringArrayResource(int key) {
        return getContext().getResources().getStringArray(key);
    }

    protected Handler getWorkHandler() {
        return this.mHandler;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        SnoozeHelper snoozeHelper = new SnoozeHelper(getContext(), new SnoozeHelper.Callback() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$pydsjOZodJQYqLnk-bBKjwKfMTw
            @Override // com.android.server.notification.SnoozeHelper.Callback
            public final void repost(int i, NotificationRecord notificationRecord, boolean z) {
                this.f$0.lambda$onStart$0$NotificationManagerService(i, notificationRecord, z);
            }
        }, this.mUserProfiles);
        File systemDir = new File(Environment.getDataDirectory(), "system");
        this.mRankingThread.start();
        WorkerHandler handler = new WorkerHandler(Looper.myLooper());
        RankingHandlerWorker rankingHandlerWorker = new RankingHandlerWorker(this.mRankingThread.getLooper());
        IPackageManager packageManager = AppGlobals.getPackageManager();
        PackageManager packageManager2 = getContext().getPackageManager();
        LightsManager lightsManager = (LightsManager) getLocalService(LightsManager.class);
        NotificationListeners notificationListeners = new NotificationListeners(AppGlobals.getPackageManager());
        NotificationAssistants notificationAssistants = new NotificationAssistants(getContext(), this.mNotificationLock, this.mUserProfiles, AppGlobals.getPackageManager());
        ConditionProviders conditionProviders = new ConditionProviders(getContext(), this.mUserProfiles, AppGlobals.getPackageManager());
        NotificationUsageStats notificationUsageStats = new NotificationUsageStats(getContext());
        AtomicFile atomicFile = new AtomicFile(new File(systemDir, "notification_policy.xml"), TAG_NOTIFICATION_POLICY);
        ActivityManager activityManager = (ActivityManager) getContext().getSystemService("activity");
        GroupHelper groupHelper = getGroupHelper();
        IActivityManager service = ActivityManager.getService();
        ActivityTaskManagerInternal activityTaskManagerInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        UsageStatsManagerInternal usageStatsManagerInternal = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
        DevicePolicyManagerInternal devicePolicyManagerInternal = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        IUriGrantsManager service2 = UriGrantsManager.getService();
        UriGrantsManagerInternal uriGrantsManagerInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
        AppOpsManager appOpsManager = (AppOpsManager) getContext().getSystemService("appops");
        UserManager userManager = (UserManager) getContext().getSystemService(UserManager.class);
        NotificationHistoryManager notificationHistoryManager = new NotificationHistoryManager(getContext(), handler);
        StatsManager statsManager = (StatsManager) getContext().getSystemService("stats");
        this.mStatsManager = statsManager;
        init(handler, rankingHandlerWorker, packageManager, packageManager2, lightsManager, notificationListeners, notificationAssistants, conditionProviders, null, snoozeHelper, notificationUsageStats, atomicFile, activityManager, groupHelper, service, activityTaskManagerInternal, usageStatsManagerInternal, devicePolicyManagerInternal, service2, uriGrantsManagerInternal, appOpsManager, userManager, notificationHistoryManager, statsManager, (TelephonyManager) getContext().getSystemService(TelephonyManager.class), (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class));
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.PHONE_STATE");
        filter.addAction("android.intent.action.USER_PRESENT");
        filter.addAction("android.intent.action.USER_STOPPED");
        filter.addAction("android.intent.action.USER_SWITCHED");
        filter.addAction("android.intent.action.USER_ADDED");
        filter.addAction("android.intent.action.USER_REMOVED");
        filter.addAction("android.intent.action.USER_UNLOCKED");
        filter.addAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        getContext().registerReceiverAsUser(this.mIntentReceiver, UserHandle.ALL, filter, null, null);
        IntentFilter pkgFilter = new IntentFilter();
        pkgFilter.addAction("android.intent.action.PACKAGE_ADDED");
        pkgFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        pkgFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        pkgFilter.addAction("android.intent.action.PACKAGE_RESTARTED");
        pkgFilter.addAction("android.intent.action.QUERY_PACKAGE_RESTART");
        pkgFilter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
        getContext().registerReceiverAsUser(this.mPackageIntentReceiver, UserHandle.ALL, pkgFilter, null, null);
        IntentFilter suspendedPkgFilter = new IntentFilter();
        suspendedPkgFilter.addAction("android.intent.action.PACKAGES_SUSPENDED");
        suspendedPkgFilter.addAction("android.intent.action.PACKAGES_UNSUSPENDED");
        suspendedPkgFilter.addAction("android.intent.action.DISTRACTING_PACKAGES_CHANGED");
        getContext().registerReceiverAsUser(this.mPackageIntentReceiver, UserHandle.ALL, suspendedPkgFilter, null, null);
        IntentFilter sdFilter = new IntentFilter("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        getContext().registerReceiverAsUser(this.mPackageIntentReceiver, UserHandle.ALL, sdFilter, null, null);
        IntentFilter timeoutFilter = new IntentFilter(ACTION_NOTIFICATION_TIMEOUT);
        timeoutFilter.addDataScheme(SCHEME_TIMEOUT);
        getContext().registerReceiver(this.mNotificationTimeoutReceiver, timeoutFilter);
        IntentFilter settingsRestoredFilter = new IntentFilter("android.os.action.SETTING_RESTORED");
        getContext().registerReceiver(this.mRestoreReceiver, settingsRestoredFilter);
        IntentFilter localeChangedFilter = new IntentFilter("android.intent.action.LOCALE_CHANGED");
        getContext().registerReceiver(this.mLocaleChangeReceiver, localeChangedFilter);
        publishBinderService("notification", this.mService, false, 5);
        publishLocalService(NotificationManagerInternal.class, this.mInternalService);
    }

    public /* synthetic */ void lambda$onStart$0$NotificationManagerService(int userId, NotificationRecord r, boolean muteOnReturn) {
        try {
            if (DBG) {
                Slog.d(TAG, "Reposting " + r.getKey());
            }
            enqueueNotificationInternal(r.getSbn().getPackageName(), r.getSbn().getOpPkg(), r.getSbn().getUid(), r.getSbn().getInitialPid(), r.getSbn().getTag(), r.getSbn().getId(), r.getSbn().getNotification(), userId, true);
        } catch (Exception e) {
            Slog.e(TAG, "Cannot un-snooze notification", e);
        }
    }

    private void registerDeviceConfigChange() {
        this.mDeviceConfigChangedListener = new DeviceConfig.OnPropertiesChangedListener() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8
            public final void onPropertiesChanged(DeviceConfig.Properties properties) {
                this.f$0.lambda$registerDeviceConfigChange$1$NotificationManagerService(properties);
            }
        };
        DeviceConfig.addOnPropertiesChangedListener("systemui", new HandlerExecutor(this.mHandler), this.mDeviceConfigChangedListener);
    }

    public /* synthetic */ void lambda$registerDeviceConfigChange$1$NotificationManagerService(DeviceConfig.Properties properties) {
        if ("systemui".equals(properties.getNamespace()) && properties.getKeyset().contains("nas_default_service")) {
            this.mAssistants.allowAdjustmentType("key_importance");
            this.mAssistants.resetDefaultAssistantsIfNecessary();
        }
    }

    void unregisterDeviceConfigChange() {
        DeviceConfig.OnPropertiesChangedListener onPropertiesChangedListener = this.mDeviceConfigChangedListener;
        if (onPropertiesChangedListener != null) {
            DeviceConfig.removeOnPropertiesChangedListener(onPropertiesChangedListener);
        }
    }

    private void registerNotificationPreferencesPullers() {
        this.mPullAtomCallback = new StatsPullAtomCallbackImpl(this, null);
        this.mStatsManager.setPullAtomCallback(10071, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mPullAtomCallback);
        this.mStatsManager.setPullAtomCallback(10072, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mPullAtomCallback);
        this.mStatsManager.setPullAtomCallback(10073, (StatsManager.PullAtomMetadata) null, ConcurrentUtils.DIRECT_EXECUTOR, this.mPullAtomCallback);
        this.mStatsManager.setPullAtomCallback(10084, (StatsManager.PullAtomMetadata) null, BackgroundThread.getExecutor(), this.mPullAtomCallback);
    }

    private class StatsPullAtomCallbackImpl implements StatsManager.StatsPullAtomCallback {
        private StatsPullAtomCallbackImpl() {
        }

        /* synthetic */ StatsPullAtomCallbackImpl(NotificationManagerService x0, AnonymousClass1 x1) {
            this();
        }

        public int onPullAtom(int atomTag, List<StatsEvent> data) {
            if (atomTag != 10084) {
                switch (atomTag) {
                    case 10071:
                    case 10072:
                    case 10073:
                        break;
                    default:
                        throw new UnsupportedOperationException("Unknown tagId=" + atomTag);
                }
            }
            return NotificationManagerService.this.pullNotificationStates(atomTag, data);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int pullNotificationStates(int atomTag, List<StatsEvent> data) {
        if (atomTag != 10084) {
            switch (atomTag) {
                case 10071:
                    this.mPreferencesHelper.pullPackagePreferencesStats(data);
                    break;
                case 10072:
                    this.mPreferencesHelper.pullPackageChannelPreferencesStats(data);
                    break;
                case 10073:
                    this.mPreferencesHelper.pullPackageChannelGroupPreferencesStats(data);
                    break;
            }
            return 0;
        }
        this.mZenModeHelper.pullRules(data);
        return 0;
    }

    private GroupHelper getGroupHelper() {
        this.mAutoGroupAtCount = getContext().getResources().getInteger(R.integer.config_autoBrightnessInitialLightSensorRate);
        return new GroupHelper(this.mAutoGroupAtCount, new GroupHelper.Callback() { // from class: com.android.server.notification.NotificationManagerService.9
            @Override // com.android.server.notification.GroupHelper.Callback
            public void addAutoGroup(String key) {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationManagerService.this.addAutogroupKeyLocked(key);
                }
            }

            @Override // com.android.server.notification.GroupHelper.Callback
            public void removeAutoGroup(String key) {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationManagerService.this.removeAutogroupKeyLocked(key);
                }
            }

            @Override // com.android.server.notification.GroupHelper.Callback
            public void addAutoGroupSummary(int userId, String pkg, String triggeringKey) throws Throwable {
                NotificationManagerService.this.createAutoGroupSummary(userId, pkg, triggeringKey);
            }

            @Override // com.android.server.notification.GroupHelper.Callback
            public void removeAutoGroupSummary(int userId, String pkg) {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationManagerService.this.clearAutogroupSummaryLocked(userId, pkg);
                }
            }

            @Override // com.android.server.notification.GroupHelper.Callback
            public void updateAutogroupSummary(String key, boolean needsOngoingFlag) {
                String pkg;
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(key);
                    pkg = (r == null || r.getSbn() == null) ? null : r.getSbn().getPackageName();
                }
                boolean isAppForeground = pkg != null && NotificationManagerService.this.mActivityManager.getPackageImportance(pkg) == 100;
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationRecord r2 = NotificationManagerService.this.mNotificationsByKey.get(key);
                    if (r2 == null) {
                        return;
                    }
                    NotificationManagerService.this.updateAutobundledSummaryFlags(r2.getUser().getIdentifier(), r2.getSbn().getPackageName(), needsOngoingFlag, isAppForeground);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRegisteredOnlyBroadcast(String action) {
        Intent intent = new Intent(action);
        getContext().sendBroadcastAsUser(intent.addFlags(1073741824), UserHandle.ALL, null);
        intent.setFlags(0);
        Set<String> dndApprovedPackages = this.mConditionProviders.getAllowedPackages();
        for (String pkg : dndApprovedPackages) {
            intent.setPackage(pkg);
            getContext().sendBroadcastAsUser(intent, UserHandle.ALL);
        }
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase != 500) {
            if (phase == 600) {
                this.mSettingsObserver.observe();
                this.mListeners.onBootPhaseAppsCanStart();
                this.mAssistants.onBootPhaseAppsCanStart();
                this.mConditionProviders.onBootPhaseAppsCanStart();
                this.mHistoryManager.onBootPhaseAppsCanStart();
                registerDeviceConfigChange();
                return;
            }
            if (phase == 550) {
                this.mSnoozeHelper.scheduleRepostsForPersistedNotifications(this.mSystemClock.currentTimeMillis());
                return;
            }
            return;
        }
        this.mSystemReady = true;
        this.mAudioManager = (AudioManager) getContext().getSystemService("audio");
        this.mAudioManagerInternal = (AudioManagerInternal) getLocalService(AudioManagerInternal.class);
        this.mWindowManagerInternal = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
        this.mKeyguardManager = (KeyguardManager) getContext().getSystemService(KeyguardManager.class);
        this.mZenModeHelper.onSystemReady();
        RoleObserver roleObserver = new RoleObserver((RoleManager) getContext().getSystemService(RoleManager.class), this.mPackageManager, getContext().getMainExecutor());
        this.mRoleObserver = roleObserver;
        roleObserver.init();
        LauncherApps launcherApps = (LauncherApps) getContext().getSystemService("launcherapps");
        this.mShortcutHelper = new ShortcutHelper(launcherApps, this.mShortcutListener, (ShortcutServiceInternal) getLocalService(ShortcutServiceInternal.class));
        BubbleExtractor bubbsExtractor = (BubbleExtractor) this.mRankingHelper.findExtractor(BubbleExtractor.class);
        if (bubbsExtractor != null) {
            bubbsExtractor.setShortcutHelper(this.mShortcutHelper);
        }
        registerNotificationPreferencesPullers();
    }

    @Override // com.android.server.SystemService
    public void onUnlockUser(final UserInfo userInfo) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$OZL_lzotNQk7U4Yu1gYgeIoj6do
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onUnlockUser$2$NotificationManagerService(userInfo);
            }
        });
    }

    public /* synthetic */ void lambda$onUnlockUser$2$NotificationManagerService(UserInfo userInfo) {
        Trace.traceBegin(524288L, "notifHistoryUnlockUser");
        try {
            this.mHistoryManager.onUserUnlocked(userInfo.id);
        } finally {
            Trace.traceEnd(524288L);
        }
    }

    @Override // com.android.server.SystemService
    public void onStopUser(final UserInfo userInfo) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$cVvNajwVr5sFISXC5NXOu3pYhPo
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStopUser$3$NotificationManagerService(userInfo);
            }
        });
    }

    public /* synthetic */ void lambda$onStopUser$3$NotificationManagerService(UserInfo userInfo) {
        Trace.traceBegin(524288L, "notifHistoryStopUser");
        try {
            this.mHistoryManager.onUserStopped(userInfo.id);
        } finally {
            Trace.traceEnd(524288L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateListenerHintsLocked() {
        int hints = calculateHints();
        int i = this.mListenerHints;
        if (hints == i) {
            return;
        }
        ZenLog.traceListenerHintsChanged(i, hints, this.mEffectsSuppressors.size());
        this.mListenerHints = hints;
        scheduleListenerHintsChanged(hints);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEffectsSuppressorLocked() {
        long updatedSuppressedEffects = calculateSuppressedEffects();
        if (updatedSuppressedEffects == this.mZenModeHelper.getSuppressedEffects()) {
            return;
        }
        List<ComponentName> suppressors = getSuppressors();
        ZenLog.traceEffectsSuppressorChanged(this.mEffectsSuppressors, suppressors, updatedSuppressedEffects);
        this.mEffectsSuppressors = suppressors;
        this.mZenModeHelper.setSuppressedEffects(updatedSuppressedEffects);
        sendRegisteredOnlyBroadcast("android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitIdle() {
        try {
            if (this.mDeviceIdleController != null) {
                this.mDeviceIdleController.exitIdle("notification interaction");
            }
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNotificationChannelInt(String pkg, int uid, NotificationChannel channel, boolean fromListener) {
        if (channel.getImportance() == 0) {
            cancelAllNotificationsInt(MY_UID, MY_PID, pkg, channel.getId(), 0, 0, true, UserHandle.getUserId(uid), 17, null);
            if (isUidSystemOrPhone(uid)) {
                IntArray profileIds = this.mUserProfiles.getCurrentProfileIds();
                int i = 0;
                for (int N = profileIds.size(); i < N; N = N) {
                    int profileId = profileIds.get(i);
                    cancelAllNotificationsInt(MY_UID, MY_PID, pkg, channel.getId(), 0, 0, true, profileId, 17, null);
                    i++;
                }
            }
        }
        NotificationChannel preUpdate = this.mPreferencesHelper.getNotificationChannel(pkg, uid, channel.getId(), true);
        this.mPreferencesHelper.updateNotificationChannel(pkg, uid, channel, true);
        maybeNotifyChannelOwner(pkg, uid, preUpdate, channel);
        if (!fromListener) {
            NotificationChannel modifiedChannel = this.mPreferencesHelper.getNotificationChannel(pkg, uid, channel.getId(), false);
            this.mListeners.notifyNotificationChannelChanged(pkg, UserHandle.getUserHandleForUid(uid), modifiedChannel, 2);
        }
        handleSavePolicyFile();
    }

    private void maybeNotifyChannelOwner(String pkg, int uid, NotificationChannel preUpdate, NotificationChannel update) {
        try {
            if ((preUpdate.getImportance() == 0 && update.getImportance() != 0) || (preUpdate.getImportance() != 0 && update.getImportance() == 0)) {
                getContext().sendBroadcastAsUser(new Intent("android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED").putExtra("android.app.extra.NOTIFICATION_CHANNEL_ID", update.getId()).putExtra("android.app.extra.BLOCKED_STATE", update.getImportance() == 0).addFlags(AudioFormat.EVRC).setPackage(pkg), UserHandle.of(UserHandle.getUserId(uid)), null);
            }
        } catch (SecurityException e) {
            Slog.w(TAG, "Can't notify app about channel change", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createNotificationChannelGroup(String pkg, int uid, NotificationChannelGroup group, boolean fromApp, boolean fromListener) {
        Objects.requireNonNull(group);
        Objects.requireNonNull(pkg);
        NotificationChannelGroup preUpdate = this.mPreferencesHelper.getNotificationChannelGroup(group.getId(), pkg, uid);
        this.mPreferencesHelper.createNotificationChannelGroup(pkg, uid, group, fromApp);
        if (!fromApp) {
            maybeNotifyChannelGroupOwner(pkg, uid, preUpdate, group);
        }
        if (!fromListener) {
            this.mListeners.notifyNotificationChannelGroupChanged(pkg, UserHandle.of(UserHandle.getCallingUserId()), group, 1);
        }
    }

    private void maybeNotifyChannelGroupOwner(String pkg, int uid, NotificationChannelGroup preUpdate, NotificationChannelGroup update) {
        try {
            if (preUpdate.isBlocked() != update.isBlocked()) {
                getContext().sendBroadcastAsUser(new Intent("android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED").putExtra("android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID", update.getId()).putExtra("android.app.extra.BLOCKED_STATE", update.isBlocked()).addFlags(AudioFormat.EVRC).setPackage(pkg), UserHandle.of(UserHandle.getUserId(uid)), null);
            }
        } catch (SecurityException e) {
            Slog.w(TAG, "Can't notify app about group change", e);
        }
    }

    private ArrayList<ComponentName> getSuppressors() {
        ArrayList<ComponentName> names = new ArrayList<>();
        for (int i = this.mListenersDisablingEffects.size() - 1; i >= 0; i--) {
            ArraySet<ComponentName> serviceInfoList = this.mListenersDisablingEffects.valueAt(i);
            for (ComponentName info : serviceInfoList) {
                names.add(info);
            }
        }
        return names;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeDisabledHints(ManagedServices.ManagedServiceInfo info) {
        return removeDisabledHints(info, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeDisabledHints(ManagedServices.ManagedServiceInfo info, int hints) {
        boolean removed = false;
        for (int i = this.mListenersDisablingEffects.size() - 1; i >= 0; i--) {
            int hint = this.mListenersDisablingEffects.keyAt(i);
            ArraySet<ComponentName> listeners = this.mListenersDisablingEffects.valueAt(i);
            if (hints == 0 || (hint & hints) == hint) {
                removed |= listeners.remove(info.component);
            }
        }
        return removed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addDisabledHints(ManagedServices.ManagedServiceInfo info, int hints) {
        if ((hints & 1) != 0) {
            addDisabledHint(info, 1);
        }
        if ((hints & 2) != 0) {
            addDisabledHint(info, 2);
        }
        if ((hints & 4) != 0) {
            addDisabledHint(info, 4);
        }
    }

    private void addDisabledHint(ManagedServices.ManagedServiceInfo info, int hint) {
        if (this.mListenersDisablingEffects.indexOfKey(hint) < 0) {
            this.mListenersDisablingEffects.put(hint, new ArraySet<>());
        }
        ArraySet<ComponentName> hintListeners = this.mListenersDisablingEffects.get(hint);
        hintListeners.add(info.component);
    }

    private int calculateHints() {
        int hints = 0;
        for (int i = this.mListenersDisablingEffects.size() - 1; i >= 0; i--) {
            int hint = this.mListenersDisablingEffects.keyAt(i);
            ArraySet<ComponentName> serviceInfoList = this.mListenersDisablingEffects.valueAt(i);
            if (!serviceInfoList.isEmpty()) {
                hints |= hint;
            }
        }
        return hints;
    }

    private long calculateSuppressedEffects() {
        int hints = calculateHints();
        long suppressedEffects = (hints & 1) != 0 ? 0 | 3 : 0L;
        if ((hints & 2) != 0) {
            suppressedEffects |= 1;
        }
        if ((hints & 4) != 0) {
            return suppressedEffects | 2;
        }
        return suppressedEffects;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInterruptionFilterLocked() {
        int interruptionFilter = this.mZenModeHelper.getZenModeListenerInterruptionFilter();
        if (interruptionFilter == this.mInterruptionFilter) {
            return;
        }
        this.mInterruptionFilter = interruptionFilter;
        scheduleInterruptionFilterChanged(interruptionFilter);
    }

    int correctCategory(int requestedCategoryList, int categoryType, int currentCategoryList) {
        if ((requestedCategoryList & categoryType) != 0 && (currentCategoryList & categoryType) == 0) {
            return requestedCategoryList & (~categoryType);
        }
        if ((requestedCategoryList & categoryType) == 0 && (currentCategoryList & categoryType) != 0) {
            return requestedCategoryList | categoryType;
        }
        return requestedCategoryList;
    }

    INotificationManager getBinderService() {
        return INotificationManager.Stub.asInterface(this.mService);
    }

    protected void reportSeen(NotificationRecord r) {
        if (!r.isProxied()) {
            this.mAppUsageStats.reportEvent(r.getSbn().getPackageName(), getRealUserId(r.getSbn().getUserId()), 10);
        }
    }

    protected int calculateSuppressedVisualEffects(NotificationManager.Policy incomingPolicy, NotificationManager.Policy currPolicy, int targetSdkVersion) {
        if (incomingPolicy.suppressedVisualEffects == -1) {
            return incomingPolicy.suppressedVisualEffects;
        }
        int[] effectsIntroducedInP = {4, 8, 16, 32, 64, 128, 256};
        int newSuppressedVisualEffects = incomingPolicy.suppressedVisualEffects;
        if (targetSdkVersion < 28) {
            for (int i = 0; i < effectsIntroducedInP.length; i++) {
                newSuppressedVisualEffects = (newSuppressedVisualEffects & (~effectsIntroducedInP[i])) | (currPolicy.suppressedVisualEffects & effectsIntroducedInP[i]);
            }
            int i2 = newSuppressedVisualEffects & 1;
            if (i2 != 0) {
                newSuppressedVisualEffects = newSuppressedVisualEffects | 8 | 4;
            }
            if ((newSuppressedVisualEffects & 2) != 0) {
                return newSuppressedVisualEffects | 16;
            }
            return newSuppressedVisualEffects;
        }
        boolean hasNewEffects = (newSuppressedVisualEffects + (-2)) - 1 > 0;
        if (hasNewEffects) {
            int newSuppressedVisualEffects2 = newSuppressedVisualEffects & (-4);
            if ((newSuppressedVisualEffects2 & 16) != 0) {
                newSuppressedVisualEffects2 |= 2;
            }
            if ((newSuppressedVisualEffects2 & 8) != 0 && (newSuppressedVisualEffects2 & 4) != 0 && (newSuppressedVisualEffects2 & 128) != 0) {
                return newSuppressedVisualEffects2 | 1;
            }
            return newSuppressedVisualEffects2;
        }
        if ((newSuppressedVisualEffects & 1) != 0) {
            newSuppressedVisualEffects = newSuppressedVisualEffects | 8 | 4 | 128;
        }
        if ((newSuppressedVisualEffects & 2) != 0) {
            return newSuppressedVisualEffects | 16;
        }
        return newSuppressedVisualEffects;
    }

    protected void maybeRecordInterruptionLocked(NotificationRecord r) {
        if (r.isInterruptive() && !r.hasRecordedInterruption()) {
            this.mAppUsageStats.reportInterruptiveNotification(r.getSbn().getPackageName(), r.getChannel().getId(), getRealUserId(r.getSbn().getUserId()));
            Trace.traceBegin(524288L, "notifHistoryAddItem");
            try {
                this.mHistoryManager.addNotification(new NotificationHistory.HistoricalNotification.Builder().setPackage(r.getSbn().getPackageName()).setUid(r.getSbn().getUid()).setUserId(r.getSbn().getNormalizedUserId()).setChannelId(r.getChannel().getId()).setChannelName(r.getChannel().getName().toString()).setPostedTimeMs(this.mSystemClock.currentTimeMillis()).setTitle(getHistoryTitle(r.getNotification())).setText(getHistoryText(r.getSbn().getPackageContext(getContext()), r.getNotification())).setIcon(r.getNotification().getSmallIcon()).build());
                Trace.traceEnd(524288L);
                r.setRecordedInterruption(true);
            } catch (Throwable th) {
                Trace.traceEnd(524288L);
                throw th;
            }
        }
    }

    private String getHistoryTitle(Notification n) {
        CharSequence title = null;
        if (n.extras != null && (title = n.extras.getCharSequence("android.title")) == null) {
            title = n.extras.getCharSequence("android.title.big");
        }
        return title == null ? getContext().getResources().getString(R.string.kg_invalid_sim_puk_hint) : String.valueOf(title);
    }

    private String getHistoryText(Context appContext, Notification n) {
        CharSequence text = null;
        if (n.extras != null) {
            text = n.extras.getCharSequence("android.text");
            Notification.Builder nb = Notification.Builder.recoverBuilder(appContext, n);
            if (nb.getStyle() instanceof Notification.BigTextStyle) {
                text = ((Notification.BigTextStyle) nb.getStyle()).getBigText();
            } else if (nb.getStyle() instanceof Notification.MessagingStyle) {
                Notification.MessagingStyle ms = (Notification.MessagingStyle) nb.getStyle();
                List<Notification.MessagingStyle.Message> messages = ms.getMessages();
                if (messages != null && messages.size() > 0) {
                    text = messages.get(messages.size() - 1).getText();
                }
            }
            if (TextUtils.isEmpty(text)) {
                text = n.extras.getCharSequence("android.text");
            }
        }
        if (text == null) {
            return null;
        }
        return String.valueOf(text);
    }

    protected void maybeRegisterMessageSent(NotificationRecord r) {
        if (r.isConversation()) {
            if (r.getShortcutInfo() != null) {
                if (this.mPreferencesHelper.setValidMessageSent(r.getSbn().getPackageName(), r.getUid())) {
                    handleSavePolicyFile();
                }
            } else if (this.mPreferencesHelper.setInvalidMessageSent(r.getSbn().getPackageName(), r.getUid())) {
                handleSavePolicyFile();
            }
        }
    }

    protected void reportUserInteraction(NotificationRecord r) {
        this.mAppUsageStats.reportEvent(r.getSbn().getPackageName(), getRealUserId(r.getSbn().getUserId()), 7);
    }

    private int getRealUserId(int userId) {
        if (userId == -1) {
            return 0;
        }
        return userId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ToastRecord getToastRecord(int uid, int pid, String packageName, IBinder token, CharSequence text, ITransientNotification callback, int duration, Binder windowToken, int displayId, ITransientNotificationCallback textCallback) {
        return callback == null ? new TextToastRecord(this, this.mStatusBar, uid, pid, packageName, token, text, duration, windowToken, displayId, textCallback) : new CustomToastRecord(this, uid, pid, packageName, token, callback, duration, windowToken, displayId);
    }

    NotificationManagerInternal getInternalService() {
        return this.mInternalService;
    }

    /* JADX INFO: renamed from: com.android.server.notification.NotificationManagerService$10, reason: invalid class name */
    class AnonymousClass10 extends INotificationManager.Stub {
        AnonymousClass10() {
        }

        public void enqueueTextToast(String pkg, IBinder token, CharSequence text, int duration, int displayId, ITransientNotificationCallback callback) throws Throwable {
            enqueueToast(pkg, token, text, null, duration, displayId, callback);
        }

        public void enqueueToast(String pkg, IBinder token, ITransientNotification callback, int duration, int displayId) throws Throwable {
            enqueueToast(pkg, token, null, callback, duration, displayId, null);
        }

        private void enqueueToast(String pkg, IBinder token, CharSequence text, ITransientNotification callback, int duration, int displayId, ITransientNotificationCallback textCallback) throws Throwable {
            boolean block;
            if (NotificationManagerService.DBG) {
                Slog.i(NotificationManagerService.TAG, "enqueueToast pkg=" + pkg + " token=" + token + " duration=" + duration + " displayId=" + displayId);
            }
            if (pkg == null || ((text == null && callback == null) || (!(text == null || callback == null) || token == null))) {
                Slog.e(NotificationManagerService.TAG, "Not enqueuing toast. pkg=" + pkg + " text=" + ((Object) text) + " callback= token=" + token);
                return;
            }
            int callingUid = Binder.getCallingUid();
            UserHandle callingUser = Binder.getCallingUserHandle();
            boolean isSystemToast = NotificationManagerService.this.isCallerSystemOrPhone() || PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg);
            boolean isPackageSuspended = isPackagePaused(pkg);
            boolean notificationsDisabledForPackage = !areNotificationsEnabledForPackage(pkg, callingUid);
            long callingIdentity = Binder.clearCallingIdentity();
            try {
                boolean appIsForeground = NotificationManagerService.this.mActivityManager.getUidImportance(callingUid) == 100;
                Binder.restoreCallingIdentity(callingIdentity);
                if (!isSystemToast && ((notificationsDisabledForPackage && !appIsForeground) || isPackageSuspended)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Suppressing toast from package ");
                    sb.append(pkg);
                    sb.append(isPackageSuspended ? " due to package suspended." : " by user request.");
                    Slog.e(NotificationManagerService.TAG, sb.toString());
                    return;
                }
                boolean isAppRenderedToast = callback != null;
                if (isAppRenderedToast && !isSystemToast && !isPackageInForegroundForToast(pkg, callingUid)) {
                    long id = Binder.clearCallingIdentity();
                    try {
                        try {
                            block = NotificationManagerService.this.mPlatformCompat.isChangeEnabledByPackageName(NotificationManagerService.CHANGE_BACKGROUND_CUSTOM_TOAST_BLOCK, pkg, callingUser.getIdentifier());
                        } catch (Throwable th) {
                            Binder.restoreCallingIdentity(id);
                            throw th;
                        }
                    } catch (RemoteException e) {
                        Slog.e(NotificationManagerService.TAG, "Unexpected exception while checking block background custom toasts change", e);
                        block = false;
                    }
                    Binder.restoreCallingIdentity(id);
                    if (block) {
                        Slog.w(NotificationManagerService.TAG, "Blocking custom toast from package " + pkg + " due to package not in the foreground");
                        return;
                    }
                }
                synchronized (NotificationManagerService.this.mToastQueue) {
                    try {
                        try {
                            int callingPid = Binder.getCallingPid();
                            long callingId = Binder.clearCallingIdentity();
                            try {
                                int index = NotificationManagerService.this.indexOfToastLocked(pkg, token);
                                try {
                                    if (index >= 0) {
                                        ToastRecord record = NotificationManagerService.this.mToastQueue.get(index);
                                        record.update(duration);
                                    } else {
                                        int N = NotificationManagerService.this.mToastQueue.size();
                                        int i = 0;
                                        int count = 0;
                                        while (i < N) {
                                            ToastRecord r = NotificationManagerService.this.mToastQueue.get(i);
                                            if (r.pkg.equals(pkg)) {
                                                int count2 = count + 1;
                                                if (count2 >= 50) {
                                                    Slog.e(NotificationManagerService.TAG, "Package has already posted " + count2 + " toasts. Not showing more. Package=" + pkg);
                                                    try {
                                                        Binder.restoreCallingIdentity(callingId);
                                                        return;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        throw th;
                                                    }
                                                }
                                                count = count2;
                                            }
                                            i++;
                                            index = index;
                                        }
                                        Binder windowToken = new Binder();
                                        NotificationManagerService.this.mWindowManagerInternal.addWindowToken(windowToken, 2005, displayId);
                                        try {
                                            ToastRecord record2 = NotificationManagerService.this.getToastRecord(callingUid, callingPid, pkg, token, text, callback, duration, windowToken, displayId, textCallback);
                                            NotificationManagerService.this.mToastQueue.add(record2);
                                            int index2 = NotificationManagerService.this.mToastQueue.size() - 1;
                                            NotificationManagerService.this.keepProcessAliveForToastIfNeededLocked(callingPid);
                                            index = index2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            Binder.restoreCallingIdentity(callingId);
                                            throw th;
                                        }
                                    }
                                    if (index == 0) {
                                        NotificationManagerService.this.showNextToastLocked();
                                    }
                                    Binder.restoreCallingIdentity(callingId);
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
                }
            } catch (Throwable th8) {
                Binder.restoreCallingIdentity(callingIdentity);
                throw th8;
            }
        }

        private boolean isPackageInForegroundForToast(String pkg, int callingUid) {
            return NotificationManagerService.this.mAtm.hasResumedActivity(callingUid);
        }

        public void cancelToast(String pkg, IBinder token) {
            Slog.i(NotificationManagerService.TAG, "cancelToast pkg=" + pkg + " token=" + token);
            if (pkg == null || token == null) {
                Slog.e(NotificationManagerService.TAG, "Not cancelling notification. pkg=" + pkg + " token=" + token);
                return;
            }
            synchronized (NotificationManagerService.this.mToastQueue) {
                long callingId = Binder.clearCallingIdentity();
                try {
                    int index = NotificationManagerService.this.indexOfToastLocked(pkg, token);
                    if (index >= 0) {
                        NotificationManagerService.this.cancelToastLocked(index);
                    } else {
                        Slog.w(NotificationManagerService.TAG, "Toast already cancelled. pkg=" + pkg + " token=" + token);
                    }
                    Binder.restoreCallingIdentity(callingId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(callingId);
                    throw th;
                }
            }
        }

        public void finishToken(String pkg, IBinder token) {
            synchronized (NotificationManagerService.this.mToastQueue) {
                long callingId = Binder.clearCallingIdentity();
                try {
                    int index = NotificationManagerService.this.indexOfToastLocked(pkg, token);
                    if (index >= 0) {
                        ToastRecord record = NotificationManagerService.this.mToastQueue.get(index);
                        NotificationManagerService.this.finishWindowTokenLocked(record.windowToken, record.displayId);
                    } else {
                        Slog.w(NotificationManagerService.TAG, "Toast already killed. pkg=" + pkg + " token=" + token);
                    }
                    Binder.restoreCallingIdentity(callingId);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(callingId);
                    throw th;
                }
            }
        }

        public void enqueueNotificationWithTag(String pkg, String opPkg, String tag, int id, Notification notification, int userId) throws RemoteException {
            NotificationManagerService.this.enqueueNotificationInternal(pkg, opPkg, Binder.getCallingUid(), Binder.getCallingPid(), tag, id, notification, userId);
        }

        public void cancelNotificationWithTag(String pkg, String opPkg, String tag, int id, int userId) {
            NotificationManagerService.this.cancelNotificationInternal(pkg, opPkg, Binder.getCallingUid(), Binder.getCallingPid(), tag, id, userId);
        }

        public void cancelAllNotifications(String pkg, int userId) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            NotificationManagerService.this.cancelAllNotificationsInt(Binder.getCallingUid(), Binder.getCallingPid(), pkg, null, 0, 64, true, ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), userId, true, false, "cancelAllNotifications", pkg), 9, null);
        }

        public void silenceNotificationSound() {
            NotificationManagerService.this.checkCallerIsSystem();
            NotificationManagerService.this.mNotificationDelegate.clearEffects();
        }

        public void setNotificationsEnabledForPackage(String str, int i, boolean z) {
            enforceSystemOrSystemUI("setNotificationsEnabledForPackage");
            synchronized (NotificationManagerService.this.mNotificationLock) {
                if ((NotificationManagerService.this.mPreferencesHelper.getImportance(str, i) != 0) == z) {
                    return;
                }
                NotificationManagerService.this.mPreferencesHelper.setEnabled(str, i, z);
                NotificationManagerService.this.mMetricsLogger.write(new LogMaker(CecMessageType.SELECT_DIGITAL_SERVICE).setType(4).setPackageName(str).setSubtype(z ? 1 : 0));
                if (!z) {
                    NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, str, null, 0, 0, true, UserHandle.getUserId(i), 7, null);
                }
                NotificationManagerService.this.mAppOps.setMode(11, i, str, !z ? 1 : 0);
                try {
                    NotificationManagerService.this.getContext().sendBroadcastAsUser(new Intent("android.app.action.APP_BLOCK_STATE_CHANGED").putExtra("android.app.extra.BLOCKED_STATE", !z).addFlags(AudioFormat.EVRC).setPackage(str), UserHandle.of(UserHandle.getUserId(i)), null);
                } catch (SecurityException e) {
                    Slog.w(NotificationManagerService.TAG, "Can't notify app about app block change", e);
                }
                NotificationManagerService.this.handleSavePolicyFile();
            }
        }

        public void setNotificationsEnabledWithImportanceLockForPackage(String pkg, int uid, boolean enabled) {
            setNotificationsEnabledForPackage(pkg, uid, enabled);
            NotificationManagerService.this.mPreferencesHelper.setAppImportanceLocked(pkg, uid);
        }

        public boolean areNotificationsEnabled(String pkg) {
            return areNotificationsEnabledForPackage(pkg, Binder.getCallingUid());
        }

        public boolean areNotificationsEnabledForPackage(String pkg, int uid) {
            enforceSystemOrSystemUIOrSamePackage(pkg, "Caller not system or systemui or same package");
            if (UserHandle.getCallingUserId() != UserHandle.getUserId(uid)) {
                NotificationManagerService.this.getContext().enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS", "canNotifyAsPackage for uid " + uid);
            }
            return NotificationManagerService.this.mPreferencesHelper.getImportance(pkg, uid) != 0;
        }

        public boolean areBubblesAllowed(String pkg) {
            return getBubblePreferenceForPackage(pkg, Binder.getCallingUid()) == 1;
        }

        public int getBubblePreferenceForPackage(String pkg, int uid) {
            enforceSystemOrSystemUIOrSamePackage(pkg, "Caller not system or systemui or same package");
            if (UserHandle.getCallingUserId() != UserHandle.getUserId(uid)) {
                NotificationManagerService.this.getContext().enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS", "getBubblePreferenceForPackage for uid " + uid);
            }
            return NotificationManagerService.this.mPreferencesHelper.getBubblePreference(pkg, uid);
        }

        public void setBubblesAllowed(String pkg, int uid, int bubblePreference) {
            NotificationManagerService.this.checkCallerIsSystemOrSystemUiOrShell("Caller not system or sysui or shell");
            NotificationManagerService.this.mPreferencesHelper.setBubblesAllowed(pkg, uid, bubblePreference);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public boolean shouldHideSilentStatusIcons(String callingPkg) {
            NotificationManagerService.this.checkCallerIsSameApp(callingPkg);
            if (NotificationManagerService.this.isCallerSystemOrPhone() || NotificationManagerService.this.mListeners.isListenerPackage(callingPkg)) {
                return NotificationManagerService.this.mPreferencesHelper.shouldHideSilentStatusIcons();
            }
            throw new SecurityException("Only available for notification listeners");
        }

        public void setHideSilentStatusIcons(boolean hide) {
            NotificationManagerService.this.checkCallerIsSystem();
            NotificationManagerService.this.mPreferencesHelper.setHideSilentStatusIcons(hide);
            NotificationManagerService.this.handleSavePolicyFile();
            NotificationManagerService.this.mListeners.onStatusBarIconsBehaviorChanged(hide);
        }

        public void deleteNotificationHistoryItem(String pkg, int uid, long postedTime) {
            NotificationManagerService.this.checkCallerIsSystem();
            NotificationManagerService.this.mHistoryManager.deleteNotificationHistoryItem(pkg, uid, postedTime);
        }

        public int getPackageImportance(String pkg) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            return NotificationManagerService.this.mPreferencesHelper.getImportance(pkg, Binder.getCallingUid());
        }

        public boolean canShowBadge(String pkg, int uid) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.canShowBadge(pkg, uid);
        }

        public void setShowBadge(String pkg, int uid, boolean showBadge) {
            NotificationManagerService.this.checkCallerIsSystem();
            NotificationManagerService.this.mPreferencesHelper.setShowBadge(pkg, uid, showBadge);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public boolean hasSentValidMsg(String pkg, int uid) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.hasSentValidMsg(pkg, uid);
        }

        public boolean isInInvalidMsgState(String pkg, int uid) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.isInInvalidMsgState(pkg, uid);
        }

        public boolean hasUserDemotedInvalidMsgApp(String pkg, int uid) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.hasUserDemotedInvalidMsgApp(pkg, uid);
        }

        public void setInvalidMsgAppDemoted(String pkg, int uid, boolean isDemoted) {
            NotificationManagerService.this.checkCallerIsSystem();
            NotificationManagerService.this.mPreferencesHelper.setInvalidMsgAppDemoted(pkg, uid, isDemoted);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public void setNotificationDelegate(String callingPkg, String delegate) {
            NotificationManagerService.this.checkCallerIsSameApp(callingPkg);
            int callingUid = Binder.getCallingUid();
            UserHandle user = UserHandle.getUserHandleForUid(callingUid);
            if (delegate == null) {
                NotificationManagerService.this.mPreferencesHelper.revokeNotificationDelegate(callingPkg, Binder.getCallingUid());
                NotificationManagerService.this.handleSavePolicyFile();
                return;
            }
            try {
                ApplicationInfo info = NotificationManagerService.this.mPackageManager.getApplicationInfo(delegate, 786432, user.getIdentifier());
                if (info != null) {
                    NotificationManagerService.this.mPreferencesHelper.setNotificationDelegate(callingPkg, callingUid, delegate, info.uid);
                    NotificationManagerService.this.handleSavePolicyFile();
                }
            } catch (RemoteException e) {
                e.rethrowFromSystemServer();
            }
        }

        public String getNotificationDelegate(String callingPkg) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(callingPkg);
            return NotificationManagerService.this.mPreferencesHelper.getNotificationDelegate(callingPkg, Binder.getCallingUid());
        }

        public boolean canNotifyAsPackage(String callingPkg, String targetPkg, int userId) {
            NotificationManagerService.this.checkCallerIsSameApp(callingPkg);
            int callingUid = Binder.getCallingUid();
            UserHandle user = UserHandle.getUserHandleForUid(callingUid);
            if (user.getIdentifier() != userId) {
                NotificationManagerService.this.getContext().enforceCallingPermission("android.permission.INTERACT_ACROSS_USERS", "canNotifyAsPackage for user " + userId);
            }
            if (!callingPkg.equals(targetPkg)) {
                try {
                    ApplicationInfo info = NotificationManagerService.this.mPackageManager.getApplicationInfo(targetPkg, 786432, userId);
                    if (info != null) {
                        return NotificationManagerService.this.mPreferencesHelper.isDelegateAllowed(targetPkg, info.uid, callingPkg, callingUid);
                    }
                    return false;
                } catch (RemoteException e) {
                    return false;
                }
            }
            return true;
        }

        public void updateNotificationChannelGroupForPackage(String pkg, int uid, NotificationChannelGroup group) throws RemoteException {
            enforceSystemOrSystemUI("Caller not system or systemui");
            NotificationManagerService.this.createNotificationChannelGroup(pkg, uid, group, false, false);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public void createNotificationChannelGroups(String pkg, ParceledListSlice channelGroupList) throws RemoteException {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            List<NotificationChannelGroup> groups = channelGroupList.getList();
            int groupSize = groups.size();
            for (int i = 0; i < groupSize; i++) {
                NotificationChannelGroup group = groups.get(i);
                NotificationManagerService.this.createNotificationChannelGroup(pkg, Binder.getCallingUid(), group, true, false);
            }
            NotificationManagerService.this.handleSavePolicyFile();
        }

        private void createNotificationChannelsImpl(String pkg, int uid, ParceledListSlice channelsList) {
            List<NotificationChannel> channels = channelsList.getList();
            int channelsSize = channels.size();
            boolean needsPolicyFileChange = false;
            for (int i = 0; i < channelsSize; i++) {
                NotificationChannel channel = channels.get(i);
                Objects.requireNonNull(channel, "channel in list is null");
                needsPolicyFileChange = NotificationManagerService.this.mPreferencesHelper.createNotificationChannel(pkg, uid, channel, true, NotificationManagerService.this.mConditionProviders.isPackageOrComponentAllowed(pkg, UserHandle.getUserId(uid)));
                if (needsPolicyFileChange) {
                    NotificationManagerService.this.mListeners.notifyNotificationChannelChanged(pkg, UserHandle.getUserHandleForUid(uid), NotificationManagerService.this.mPreferencesHelper.getNotificationChannel(pkg, uid, channel.getId(), false), 1);
                }
            }
            if (needsPolicyFileChange) {
                NotificationManagerService.this.handleSavePolicyFile();
            }
        }

        public void createNotificationChannels(String pkg, ParceledListSlice channelsList) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            createNotificationChannelsImpl(pkg, Binder.getCallingUid(), channelsList);
        }

        public void createNotificationChannelsForPackage(String pkg, int uid, ParceledListSlice channelsList) {
            enforceSystemOrSystemUI("only system can call this");
            createNotificationChannelsImpl(pkg, uid, channelsList);
        }

        public void createConversationNotificationChannelForPackage(String pkg, int uid, String triggeringKey, NotificationChannel parentChannel, String conversationId) {
            enforceSystemOrSystemUI("only system can call this");
            Preconditions.checkNotNull(parentChannel);
            Preconditions.checkNotNull(conversationId);
            String parentId = parentChannel.getId();
            parentChannel.setId(String.format("%1$s : %2$s", parentId, conversationId));
            parentChannel.setConversationId(parentId, conversationId);
            createNotificationChannelsImpl(pkg, uid, new ParceledListSlice(Arrays.asList(parentChannel)));
            NotificationManagerService.this.mRankingHandler.requestSort();
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public NotificationChannel getNotificationChannel(String callingPkg, int userId, String targetPkg, String channelId) {
            return getConversationNotificationChannel(callingPkg, userId, targetPkg, channelId, true, null);
        }

        public NotificationChannel getConversationNotificationChannel(String callingPkg, int userId, String targetPkg, String channelId, boolean returnParentIfNoConversationChannel, String conversationId) {
            if (canNotifyAsPackage(callingPkg, targetPkg, userId) || NotificationManagerService.this.isCallerIsSystemOrSysemUiOrShell()) {
                int targetUid = -1;
                try {
                    targetUid = NotificationManagerService.this.mPackageManagerClient.getPackageUidAsUser(targetPkg, userId);
                } catch (PackageManager.NameNotFoundException e) {
                }
                return NotificationManagerService.this.mPreferencesHelper.getConversationNotificationChannel(targetPkg, targetUid, channelId, conversationId, returnParentIfNoConversationChannel, false);
            }
            throw new SecurityException("Pkg " + callingPkg + " cannot read channels for " + targetPkg + " in " + userId);
        }

        public NotificationChannel getNotificationChannelForPackage(String pkg, int uid, String channelId, String conversationId, boolean includeDeleted) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.getConversationNotificationChannel(pkg, uid, channelId, conversationId, true, includeDeleted);
        }

        private void enforceDeletingChannelHasNoFgService(String pkg, int userId, String channelId) {
            if (NotificationManagerService.this.mAmi.hasForegroundServiceNotification(pkg, userId, channelId)) {
                Slog.w(NotificationManagerService.TAG, "Package u" + userId + SliceClientPermissions.SliceAuthority.DELIMITER + pkg + " may not delete notification channel '" + channelId + "' with fg service");
                throw new SecurityException("Not allowed to delete channel " + channelId + " with a foreground service");
            }
        }

        public void deleteNotificationChannel(String pkg, String channelId) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            int callingUid = Binder.getCallingUid();
            int callingUser = UserHandle.getUserId(callingUid);
            if ("miscellaneous".equals(channelId)) {
                throw new IllegalArgumentException("Cannot delete default channel");
            }
            enforceDeletingChannelHasNoFgService(pkg, callingUser, channelId);
            NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, pkg, channelId, 0, 0, true, callingUser, 17, null);
            NotificationManagerService.this.mPreferencesHelper.deleteNotificationChannel(pkg, callingUid, channelId);
            NotificationManagerService.this.mListeners.notifyNotificationChannelChanged(pkg, UserHandle.getUserHandleForUid(callingUid), NotificationManagerService.this.mPreferencesHelper.getNotificationChannel(pkg, callingUid, channelId, true), 3);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public void deleteConversationNotificationChannels(String pkg, int uid, String conversationId) {
            NotificationManagerService.this.checkCallerIsSystem();
            List<NotificationChannel> channels = NotificationManagerService.this.mPreferencesHelper.getNotificationChannelsByConversationId(pkg, uid, conversationId);
            if (!channels.isEmpty()) {
                int appUserId = UserHandle.getUserId(uid);
                for (NotificationChannel nc : channels) {
                    String channelId = nc.getId();
                    NotificationManagerService.this.mAmi.stopForegroundServicesForChannel(pkg, appUserId, channelId);
                    NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, pkg, nc.getId(), 0, 0, true, appUserId, 17, null);
                    NotificationManagerService.this.mPreferencesHelper.deleteNotificationChannel(pkg, uid, channelId);
                    NotificationManagerService.this.mListeners.notifyNotificationChannelChanged(pkg, UserHandle.getUserHandleForUid(uid), NotificationManagerService.this.mPreferencesHelper.getNotificationChannel(pkg, uid, channelId, true), 3);
                    appUserId = appUserId;
                }
                NotificationManagerService.this.handleSavePolicyFile();
            }
        }

        public NotificationChannelGroup getNotificationChannelGroup(String pkg, String groupId) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroupWithChannels(pkg, Binder.getCallingUid(), groupId, false);
        }

        public ParceledListSlice<NotificationChannelGroup> getNotificationChannelGroups(String pkg) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroups(pkg, Binder.getCallingUid(), false, false, true);
        }

        public void deleteNotificationChannelGroup(String pkg, String groupId) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            int callingUid = Binder.getCallingUid();
            NotificationChannelGroup groupToDelete = NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroup(groupId, pkg, callingUid);
            if (groupToDelete != null) {
                int userId = UserHandle.getUserId(callingUid);
                List<NotificationChannel> groupChannels = groupToDelete.getChannels();
                for (int i = 0; i < groupChannels.size(); i++) {
                    enforceDeletingChannelHasNoFgService(pkg, userId, groupChannels.get(i).getId());
                }
                List<NotificationChannel> deletedChannels = NotificationManagerService.this.mPreferencesHelper.deleteNotificationChannelGroup(pkg, callingUid, groupId);
                int i2 = 0;
                while (i2 < deletedChannels.size()) {
                    NotificationChannel deletedChannel = deletedChannels.get(i2);
                    NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, pkg, deletedChannel.getId(), 0, 0, true, userId, 17, null);
                    NotificationManagerService.this.mListeners.notifyNotificationChannelChanged(pkg, UserHandle.getUserHandleForUid(callingUid), deletedChannel, 3);
                    i2++;
                    deletedChannels = deletedChannels;
                    groupChannels = groupChannels;
                    userId = userId;
                }
                NotificationManagerService.this.mListeners.notifyNotificationChannelGroupChanged(pkg, UserHandle.getUserHandleForUid(callingUid), groupToDelete, 3);
                NotificationManagerService.this.handleSavePolicyFile();
            }
        }

        public void updateNotificationChannelForPackage(String pkg, int uid, NotificationChannel channel) {
            NotificationManagerService.this.checkCallerIsSystemOrSystemUiOrShell("Caller not system or sysui or shell");
            Objects.requireNonNull(channel);
            NotificationManagerService.this.updateNotificationChannelInt(pkg, uid, channel, false);
        }

        public ParceledListSlice<NotificationChannel> getNotificationChannelsForPackage(String pkg, int uid, boolean includeDeleted) {
            enforceSystemOrSystemUI("getNotificationChannelsForPackage");
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannels(pkg, uid, includeDeleted);
        }

        public int getNumNotificationChannelsForPackage(String pkg, int uid, boolean includeDeleted) {
            enforceSystemOrSystemUI("getNumNotificationChannelsForPackage");
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannels(pkg, uid, includeDeleted).getList().size();
        }

        public boolean onlyHasDefaultChannel(String pkg, int uid) {
            enforceSystemOrSystemUI("onlyHasDefaultChannel");
            return NotificationManagerService.this.mPreferencesHelper.onlyHasDefaultChannel(pkg, uid);
        }

        public int getDeletedChannelCount(String pkg, int uid) {
            enforceSystemOrSystemUI("getDeletedChannelCount");
            return NotificationManagerService.this.mPreferencesHelper.getDeletedChannelCount(pkg, uid);
        }

        public int getBlockedChannelCount(String pkg, int uid) {
            enforceSystemOrSystemUI("getBlockedChannelCount");
            return NotificationManagerService.this.mPreferencesHelper.getBlockedChannelCount(pkg, uid);
        }

        public ParceledListSlice<ConversationChannelWrapper> getConversations(boolean onlyImportant) {
            enforceSystemOrSystemUI("getConversations");
            IntArray userIds = NotificationManagerService.this.mUserProfiles.getCurrentProfileIds();
            ArrayList<ConversationChannelWrapper> conversations = NotificationManagerService.this.mPreferencesHelper.getConversations(userIds, onlyImportant);
            for (ConversationChannelWrapper conversation : conversations) {
                if (NotificationManagerService.this.mShortcutHelper == null) {
                    conversation.setShortcutInfo((ShortcutInfo) null);
                } else {
                    conversation.setShortcutInfo(NotificationManagerService.this.mShortcutHelper.getValidShortcutInfo(conversation.getNotificationChannel().getConversationId(), conversation.getPkg(), UserHandle.of(UserHandle.getUserId(conversation.getUid()))));
                }
            }
            return new ParceledListSlice<>(conversations);
        }

        public ParceledListSlice<NotificationChannelGroup> getNotificationChannelGroupsForPackage(String pkg, int uid, boolean includeDeleted) {
            enforceSystemOrSystemUI("getNotificationChannelGroupsForPackage");
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroups(pkg, uid, includeDeleted, true, false);
        }

        public ParceledListSlice<ConversationChannelWrapper> getConversationsForPackage(String pkg, int uid) {
            enforceSystemOrSystemUI("getConversationsForPackage");
            ArrayList<ConversationChannelWrapper> conversations = NotificationManagerService.this.mPreferencesHelper.getConversations(pkg, uid);
            for (ConversationChannelWrapper conversation : conversations) {
                if (NotificationManagerService.this.mShortcutHelper == null) {
                    conversation.setShortcutInfo((ShortcutInfo) null);
                } else {
                    conversation.setShortcutInfo(NotificationManagerService.this.mShortcutHelper.getValidShortcutInfo(conversation.getNotificationChannel().getConversationId(), pkg, UserHandle.of(UserHandle.getUserId(uid))));
                }
            }
            return new ParceledListSlice<>(conversations);
        }

        public NotificationChannelGroup getPopulatedNotificationChannelGroupForPackage(String pkg, int uid, String groupId, boolean includeDeleted) {
            enforceSystemOrSystemUI("getPopulatedNotificationChannelGroupForPackage");
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroupWithChannels(pkg, uid, groupId, includeDeleted);
        }

        public NotificationChannelGroup getNotificationChannelGroupForPackage(String groupId, String pkg, int uid) {
            enforceSystemOrSystemUI("getNotificationChannelGroupForPackage");
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroup(groupId, pkg, uid);
        }

        public ParceledListSlice<NotificationChannel> getNotificationChannels(String callingPkg, String targetPkg, int userId) {
            if (canNotifyAsPackage(callingPkg, targetPkg, userId) || NotificationManagerService.this.isCallingUidSystem()) {
                int targetUid = -1;
                try {
                    targetUid = NotificationManagerService.this.mPackageManagerClient.getPackageUidAsUser(targetPkg, userId);
                } catch (PackageManager.NameNotFoundException e) {
                }
                return NotificationManagerService.this.mPreferencesHelper.getNotificationChannels(targetPkg, targetUid, false);
            }
            throw new SecurityException("Pkg " + callingPkg + " cannot read channels for " + targetPkg + " in " + userId);
        }

        public int getBlockedAppCount(int userId) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.getBlockedAppCount(userId);
        }

        public int getAppsBypassingDndCount(int userId) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.getAppsBypassingDndCount(userId);
        }

        public ParceledListSlice<NotificationChannel> getNotificationChannelsBypassingDnd(String pkg, int userId) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannelsBypassingDnd(pkg, userId);
        }

        public boolean areChannelsBypassingDnd() {
            return NotificationManagerService.this.mPreferencesHelper.areChannelsBypassingDnd();
        }

        public void clearData(String packageName, int uid, boolean fromApp) throws RemoteException {
            NotificationManagerService.this.checkCallerIsSystem();
            int userId = UserHandle.getUserId(uid);
            NotificationManagerService.this.cancelAllNotificationsInt(NotificationManagerService.MY_UID, NotificationManagerService.MY_PID, packageName, null, 0, 0, true, UserHandle.getUserId(Binder.getCallingUid()), 17, null);
            boolean packagesChanged = NotificationManagerService.this.mConditionProviders.resetPackage(packageName, userId) | false;
            ArrayMap<Boolean, ArrayList<ComponentName>> changedListeners = NotificationManagerService.this.mListeners.resetComponents(packageName, userId);
            boolean packagesChanged2 = packagesChanged | (changedListeners.get(true).size() > 0 || changedListeners.get(false).size() > 0);
            for (int i = 0; i < changedListeners.get(true).size(); i++) {
                NotificationManagerService.this.mConditionProviders.setPackageOrComponentEnabled(changedListeners.get(true).get(i).getPackageName(), userId, false, true);
            }
            ArrayMap<Boolean, ArrayList<ComponentName>> changedAssistants = NotificationManagerService.this.mAssistants.resetComponents(packageName, userId);
            boolean packagesChanged3 = packagesChanged2 | (changedAssistants.get(true).size() > 0 || changedAssistants.get(false).size() > 0);
            for (int i2 = 1; i2 < changedAssistants.get(true).size(); i2++) {
                NotificationManagerService.this.mAssistants.setPackageOrComponentEnabled(changedAssistants.get(true).get(i2).flattenToString(), userId, true, false);
            }
            if (changedAssistants.get(true).size() > 0) {
                NotificationManagerService.this.mConditionProviders.setPackageOrComponentEnabled(changedAssistants.get(true).get(0).getPackageName(), userId, false, true);
            }
            NotificationManagerService.this.mSnoozeHelper.clearData(UserHandle.getUserId(uid), packageName);
            if (!fromApp) {
                NotificationManagerService.this.mPreferencesHelper.clearData(packageName, uid);
            }
            if (packagesChanged3) {
                NotificationManagerService.this.getContext().sendBroadcastAsUser(new Intent("android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED").setPackage(packageName).addFlags(67108864), UserHandle.of(userId), null);
            }
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public List<String> getAllowedAssistantAdjustments(String pkg) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            if (NotificationManagerService.this.isCallerSystemOrPhone() || NotificationManagerService.this.mAssistants.isPackageAllowed(pkg, UserHandle.getCallingUserId())) {
                return NotificationManagerService.this.mAssistants.getAllowedAssistantAdjustments();
            }
            throw new SecurityException("Not currently an assistant");
        }

        public void allowAssistantAdjustment(String adjustmentType) {
            NotificationManagerService.this.checkCallerIsSystemOrSystemUiOrShell();
            NotificationManagerService.this.mAssistants.allowAdjustmentType(adjustmentType);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public void disallowAssistantAdjustment(String adjustmentType) {
            NotificationManagerService.this.checkCallerIsSystemOrSystemUiOrShell();
            NotificationManagerService.this.mAssistants.disallowAdjustmentType(adjustmentType);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        @Deprecated
        public StatusBarNotification[] getActiveNotifications(String callingPkg) {
            return getActiveNotificationsWithAttribution(callingPkg, null);
        }

        public StatusBarNotification[] getActiveNotificationsWithAttribution(String callingPkg, String callingAttributionTag) {
            NotificationManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.ACCESS_NOTIFICATIONS", "NotificationManagerService.getActiveNotifications");
            ArrayList<StatusBarNotification> tmp = new ArrayList<>();
            int uid = Binder.getCallingUid();
            final ArrayList<Integer> currentUsers = new ArrayList<>();
            currentUsers.add(-1);
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$10$Pl6seZa19lQb84DGYmxTOcJw9vU
                public final void runOrThrow() throws Exception {
                    this.f$0.lambda$getActiveNotificationsWithAttribution$0$NotificationManagerService$10(currentUsers);
                }
            });
            if (NotificationManagerService.this.mAppOps.noteOpNoThrow(25, uid, callingPkg, callingAttributionTag, (String) null) == 0) {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    int N = NotificationManagerService.this.mNotificationList.size();
                    for (int i = 0; i < N; i++) {
                        StatusBarNotification sbn = NotificationManagerService.this.mNotificationList.get(i).getSbn();
                        if (currentUsers.contains(Integer.valueOf(sbn.getUserId()))) {
                            tmp.add(sbn);
                        }
                    }
                }
            }
            return (StatusBarNotification[]) tmp.toArray(new StatusBarNotification[tmp.size()]);
        }

        public /* synthetic */ void lambda$getActiveNotificationsWithAttribution$0$NotificationManagerService$10(ArrayList currentUsers) throws Exception {
            for (int user : NotificationManagerService.this.mUm.getProfileIds(ActivityManager.getCurrentUser(), false)) {
                currentUsers.add(Integer.valueOf(user));
            }
        }

        public ParceledListSlice<StatusBarNotification> getAppActiveNotifications(String pkg, int incomingUserId) {
            ParceledListSlice<StatusBarNotification> parceledListSlice;
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            int userId = ActivityManager.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), incomingUserId, true, false, "getAppActiveNotifications", pkg);
            synchronized (NotificationManagerService.this.mNotificationLock) {
                ArrayMap<String, StatusBarNotification> map = new ArrayMap<>(NotificationManagerService.this.mNotificationList.size() + NotificationManagerService.this.mEnqueuedNotifications.size());
                int N = NotificationManagerService.this.mNotificationList.size();
                for (int i = 0; i < N; i++) {
                    StatusBarNotification sbn = sanitizeSbn(pkg, userId, NotificationManagerService.this.mNotificationList.get(i).getSbn());
                    if (sbn != null) {
                        map.put(sbn.getKey(), sbn);
                    }
                }
                for (NotificationRecord snoozed : NotificationManagerService.this.mSnoozeHelper.getSnoozed(userId, pkg)) {
                    StatusBarNotification sbn2 = sanitizeSbn(pkg, userId, snoozed.getSbn());
                    if (sbn2 != null) {
                        map.put(sbn2.getKey(), sbn2);
                    }
                }
                int M = NotificationManagerService.this.mEnqueuedNotifications.size();
                for (int i2 = 0; i2 < M; i2++) {
                    StatusBarNotification sbn3 = sanitizeSbn(pkg, userId, NotificationManagerService.this.mEnqueuedNotifications.get(i2).getSbn());
                    if (sbn3 != null) {
                        map.put(sbn3.getKey(), sbn3);
                    }
                }
                ArrayList<StatusBarNotification> list = new ArrayList<>(map.size());
                list.addAll(map.values());
                parceledListSlice = new ParceledListSlice<>(list);
            }
            return parceledListSlice;
        }

        private StatusBarNotification sanitizeSbn(String pkg, int userId, StatusBarNotification sbn) {
            if (sbn.getUserId() == userId) {
                if (sbn.getPackageName().equals(pkg) || sbn.getOpPkg().equals(pkg)) {
                    Notification notification = sbn.getNotification().clone();
                    notification.clearAllowlistToken();
                    return new StatusBarNotification(sbn.getPackageName(), sbn.getOpPkg(), sbn.getId(), sbn.getTag(), sbn.getUid(), sbn.getInitialPid(), notification, sbn.getUser(), sbn.getOverrideGroupKey(), sbn.getPostTime());
                }
                return null;
            }
            return null;
        }

        @Deprecated
        public StatusBarNotification[] getHistoricalNotifications(String callingPkg, int count, boolean includeSnoozed) {
            return getHistoricalNotificationsWithAttribution(callingPkg, null, count, includeSnoozed);
        }

        public StatusBarNotification[] getHistoricalNotificationsWithAttribution(String callingPkg, String callingAttributionTag, int count, boolean includeSnoozed) {
            NotificationManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.ACCESS_NOTIFICATIONS", "NotificationManagerService.getHistoricalNotifications");
            StatusBarNotification[] tmp = null;
            int uid = Binder.getCallingUid();
            if (NotificationManagerService.this.mAppOps.noteOpNoThrow(25, uid, callingPkg, callingAttributionTag, (String) null) == 0) {
                synchronized (NotificationManagerService.this.mArchive) {
                    tmp = NotificationManagerService.this.mArchive.getArray(NotificationManagerService.this.mUm, count, includeSnoozed);
                }
            }
            return tmp;
        }

        public NotificationHistory getNotificationHistory(String callingPkg, String callingAttributionTag) {
            NotificationManagerService.this.getContext().enforceCallingOrSelfPermission("android.permission.ACCESS_NOTIFICATIONS", "NotificationManagerService.getNotificationHistory");
            int uid = Binder.getCallingUid();
            if (NotificationManagerService.this.mAppOps.noteOpNoThrow(25, uid, callingPkg, callingAttributionTag, (String) null) == 0) {
                IntArray currentUserIds = NotificationManagerService.this.mUserProfiles.getCurrentProfileIds();
                Trace.traceBegin(524288L, "notifHistoryReadHistory");
                try {
                    return NotificationManagerService.this.mHistoryManager.readNotificationHistory(currentUserIds.toArray());
                } finally {
                    Trace.traceEnd(524288L);
                }
            }
            return new NotificationHistory();
        }

        public void registerListener(INotificationListener listener, ComponentName component, int userid) {
            enforceSystemOrSystemUI("INotificationManager.registerListener");
            NotificationManagerService.this.mListeners.registerSystemService(listener, component, userid);
        }

        public void unregisterListener(INotificationListener token, int userid) {
            NotificationManagerService.this.mListeners.unregisterService((IInterface) token, userid);
        }

        public void cancelNotificationsFromListener(INotificationListener token, String[] keys) {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    if (keys != null) {
                        int i = 0;
                        for (int N = keys.length; i < N; N = N) {
                            NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(keys[i]);
                            if (r != null) {
                                int userId = r.getSbn().getUserId();
                                if (userId != info.userid && userId != -1 && !NotificationManagerService.this.mUserProfiles.isCurrentProfile(userId)) {
                                    throw new SecurityException("Disallowed call from listener: " + info.service);
                                }
                                cancelNotificationFromListenerLocked(info, callingUid, callingPid, r.getSbn().getPackageName(), r.getSbn().getTag(), r.getSbn().getId(), userId);
                            }
                            i++;
                        }
                    } else {
                        NotificationManagerService.this.cancelAllLocked(callingUid, callingPid, info.userid, 11, info, info.supportsProfiles());
                    }
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void requestBindListener(ComponentName component) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(component.getPackageName());
            long identity = Binder.clearCallingIdentity();
            try {
                ManagedServices manager = NotificationManagerService.this.mAssistants.isComponentEnabledForCurrentProfiles(component) ? NotificationManagerService.this.mAssistants : NotificationManagerService.this.mListeners;
                manager.setComponentState(component, true);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void requestUnbindListener(INotificationListener token) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    info.getOwner().setComponentState(info.component, false);
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void setNotificationsShownFromListener(INotificationListener token, String[] keys) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    if (keys != null) {
                        ArrayList<NotificationRecord> seen = new ArrayList<>();
                        int n = keys.length;
                        for (int i = 0; i < n; i++) {
                            NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(keys[i]);
                            if (r != null) {
                                int userId = r.getSbn().getUserId();
                                if (userId != info.userid && userId != -1 && !NotificationManagerService.this.mUserProfiles.isCurrentProfile(userId)) {
                                    throw new SecurityException("Disallowed call from listener: " + info.service);
                                }
                                seen.add(r);
                                if (!r.isSeen()) {
                                    if (NotificationManagerService.DBG) {
                                        Slog.d(NotificationManagerService.TAG, "Marking notification as seen " + keys[i]);
                                    }
                                    NotificationManagerService.this.reportSeen(r);
                                    r.setSeen();
                                    NotificationManagerService.this.maybeRecordInterruptionLocked(r);
                                }
                            }
                        }
                        if (!seen.isEmpty()) {
                            NotificationManagerService.this.mAssistants.onNotificationsSeenLocked(seen);
                        }
                        Binder.restoreCallingIdentity(identity);
                        return;
                    }
                    Binder.restoreCallingIdentity(identity);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        private void cancelNotificationFromListenerLocked(ManagedServices.ManagedServiceInfo info, int callingUid, int callingPid, String pkg, String tag, int id, int userId) {
            NotificationManagerService.this.cancelNotification(callingUid, callingPid, pkg, tag, id, 0, 66, true, userId, 10, info);
        }

        public void snoozeNotificationUntilContextFromListener(INotificationListener token, String key, String snoozeCriterionId) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    NotificationManagerService.this.snoozeNotificationInt(key, -1L, snoozeCriterionId, info);
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void snoozeNotificationUntilFromListener(INotificationListener token, String key, long duration) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    NotificationManagerService.this.snoozeNotificationInt(key, duration, null, info);
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void unsnoozeNotificationFromAssistant(INotificationListener token, String key) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mAssistants.checkServiceTokenLocked(token);
                    NotificationManagerService.this.unsnoozeNotificationInt(key, info, false);
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void unsnoozeNotificationFromSystemListener(INotificationListener token, String key) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    if (!info.isSystem) {
                        throw new SecurityException("Not allowed to unsnooze before deadline");
                    }
                    NotificationManagerService.this.unsnoozeNotificationInt(key, info, true);
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void cancelNotificationFromListener(INotificationListener token, String pkg, String tag, int id) throws Throwable {
            int callingUid = Binder.getCallingUid();
            int callingPid = Binder.getCallingPid();
            long identity = Binder.clearCallingIdentity();
            try {
                try {
                    synchronized (NotificationManagerService.this.mNotificationLock) {
                        try {
                            ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                            if (info.supportsProfiles()) {
                                Slog.e(NotificationManagerService.TAG, "Ignoring deprecated cancelNotification(pkg, tag, id) from " + info.component + " use cancelNotification(key) instead.");
                            } else {
                                cancelNotificationFromListenerLocked(info, callingUid, callingPid, pkg, tag, id, info.userid);
                            }
                            Binder.restoreCallingIdentity(identity);
                        } catch (Throwable th) {
                            th = th;
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                                Binder.restoreCallingIdentity(identity);
                                throw th;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }

        public ParceledListSlice<StatusBarNotification> getActiveNotificationsFromListener(INotificationListener token, String[] keys, int trim) {
            ParceledListSlice<StatusBarNotification> parceledListSlice;
            NotificationRecord r;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                boolean getKeys = keys != null;
                int N = getKeys ? keys.length : NotificationManagerService.this.mNotificationList.size();
                ArrayList<StatusBarNotification> list = new ArrayList<>(N);
                for (int i = 0; i < N; i++) {
                    if (getKeys) {
                        r = NotificationManagerService.this.mNotificationsByKey.get(keys[i]);
                    } else {
                        r = NotificationManagerService.this.mNotificationList.get(i);
                    }
                    if (r != null) {
                        StatusBarNotification sbn = r.getSbn();
                        if (NotificationManagerService.this.isVisibleToListener(sbn, info)) {
                            StatusBarNotification sbnToSend = trim == 0 ? sbn : sbn.cloneLight();
                            list.add(sbnToSend);
                        }
                    }
                }
                parceledListSlice = new ParceledListSlice<>(list);
            }
            return parceledListSlice;
        }

        public ParceledListSlice<StatusBarNotification> getSnoozedNotificationsFromListener(INotificationListener token, int trim) {
            ParceledListSlice<StatusBarNotification> parceledListSlice;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                List<NotificationRecord> snoozedRecords = NotificationManagerService.this.mSnoozeHelper.getSnoozed();
                int N = snoozedRecords.size();
                ArrayList<StatusBarNotification> list = new ArrayList<>(N);
                for (int i = 0; i < N; i++) {
                    NotificationRecord r = snoozedRecords.get(i);
                    if (r != null) {
                        StatusBarNotification sbn = r.getSbn();
                        if (NotificationManagerService.this.isVisibleToListener(sbn, info)) {
                            StatusBarNotification sbnToSend = trim == 0 ? sbn : sbn.cloneLight();
                            list.add(sbnToSend);
                        }
                    }
                }
                parceledListSlice = new ParceledListSlice<>(list);
            }
            return parceledListSlice;
        }

        public void clearRequestedListenerHints(INotificationListener token) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    NotificationManagerService.this.removeDisabledHints(info);
                    NotificationManagerService.this.updateListenerHintsLocked();
                    NotificationManagerService.this.updateEffectsSuppressorLocked();
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void requestHintsFromListener(INotificationListener token, int hints) {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    boolean disableEffects = (hints & 7) != 0;
                    if (disableEffects) {
                        NotificationManagerService.this.addDisabledHints(info, hints);
                    } else {
                        NotificationManagerService.this.removeDisabledHints(info, hints);
                    }
                    NotificationManagerService.this.updateListenerHintsLocked();
                    NotificationManagerService.this.updateEffectsSuppressorLocked();
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public int getHintsFromListener(INotificationListener token) {
            int i;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                i = NotificationManagerService.this.mListenerHints;
            }
            return i;
        }

        public void requestInterruptionFilterFromListener(INotificationListener token, int interruptionFilter) throws RemoteException {
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                    NotificationManagerService.this.mZenModeHelper.requestFromListener(info.component, interruptionFilter);
                    NotificationManagerService.this.updateInterruptionFilterLocked();
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public int getInterruptionFilterFromListener(INotificationListener token) throws RemoteException {
            int i;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                i = NotificationManagerService.this.mInterruptionFilter;
            }
            return i;
        }

        public void setOnNotificationPostedTrimFromListener(INotificationListener token, int trim) throws RemoteException {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
                if (info == null) {
                    return;
                }
                NotificationManagerService.this.mListeners.setOnNotificationPostedTrimLocked(info, trim);
            }
        }

        public int getZenMode() {
            return NotificationManagerService.this.mZenModeHelper.getZenMode();
        }

        public ZenModeConfig getZenModeConfig() {
            enforceSystemOrSystemUI("INotificationManager.getZenModeConfig");
            return NotificationManagerService.this.mZenModeHelper.getConfig();
        }

        public void setZenMode(int mode, Uri conditionId, String reason) throws RemoteException {
            enforceSystemOrSystemUI("INotificationManager.setZenMode");
            long identity = Binder.clearCallingIdentity();
            try {
                NotificationManagerService.this.mZenModeHelper.setManualZenMode(mode, conditionId, null, reason);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public List<ZenModeConfig.ZenRule> getZenRules() throws RemoteException {
            enforcePolicyAccess(Binder.getCallingUid(), "getAutomaticZenRules");
            return NotificationManagerService.this.mZenModeHelper.getZenRules();
        }

        public AutomaticZenRule getAutomaticZenRule(String id) throws RemoteException {
            Objects.requireNonNull(id, "Id is null");
            enforcePolicyAccess(Binder.getCallingUid(), "getAutomaticZenRule");
            return NotificationManagerService.this.mZenModeHelper.getAutomaticZenRule(id);
        }

        public String addAutomaticZenRule(AutomaticZenRule automaticZenRule, String pkg) {
            Objects.requireNonNull(automaticZenRule, "automaticZenRule is null");
            Objects.requireNonNull(automaticZenRule.getName(), "Name is null");
            if (automaticZenRule.getOwner() == null && automaticZenRule.getConfigurationActivity() == null) {
                throw new NullPointerException("Rule must have a conditionproviderservice and/or configuration activity");
            }
            Objects.requireNonNull(automaticZenRule.getConditionId(), "ConditionId is null");
            NotificationManagerService.this.checkCallerIsSameApp(pkg);
            if (automaticZenRule.getZenPolicy() != null && automaticZenRule.getInterruptionFilter() != 2) {
                throw new IllegalArgumentException("ZenPolicy is only applicable to INTERRUPTION_FILTER_PRIORITY filters");
            }
            enforcePolicyAccess(Binder.getCallingUid(), "addAutomaticZenRule");
            String rulePkg = pkg;
            if (NotificationManagerService.this.isCallingAppIdSystem() && automaticZenRule.getOwner() != null) {
                rulePkg = automaticZenRule.getOwner().getPackageName();
            }
            return NotificationManagerService.this.mZenModeHelper.addAutomaticZenRule(rulePkg, automaticZenRule, "addAutomaticZenRule");
        }

        public boolean updateAutomaticZenRule(String id, AutomaticZenRule automaticZenRule) throws RemoteException {
            Objects.requireNonNull(automaticZenRule, "automaticZenRule is null");
            Objects.requireNonNull(automaticZenRule.getName(), "Name is null");
            if (automaticZenRule.getOwner() == null && automaticZenRule.getConfigurationActivity() == null) {
                throw new NullPointerException("Rule must have a conditionproviderservice and/or configuration activity");
            }
            Objects.requireNonNull(automaticZenRule.getConditionId(), "ConditionId is null");
            enforcePolicyAccess(Binder.getCallingUid(), "updateAutomaticZenRule");
            return NotificationManagerService.this.mZenModeHelper.updateAutomaticZenRule(id, automaticZenRule, "updateAutomaticZenRule");
        }

        public boolean removeAutomaticZenRule(String id) throws RemoteException {
            Objects.requireNonNull(id, "Id is null");
            enforcePolicyAccess(Binder.getCallingUid(), "removeAutomaticZenRule");
            return NotificationManagerService.this.mZenModeHelper.removeAutomaticZenRule(id, "removeAutomaticZenRule");
        }

        public boolean removeAutomaticZenRules(String packageName) throws RemoteException {
            Objects.requireNonNull(packageName, "Package name is null");
            enforceSystemOrSystemUI("removeAutomaticZenRules");
            return NotificationManagerService.this.mZenModeHelper.removeAutomaticZenRules(packageName, packageName + "|removeAutomaticZenRules");
        }

        public int getRuleInstanceCount(ComponentName owner) throws RemoteException {
            Objects.requireNonNull(owner, "Owner is null");
            enforceSystemOrSystemUI("getRuleInstanceCount");
            return NotificationManagerService.this.mZenModeHelper.getCurrentInstanceCount(owner);
        }

        public void setAutomaticZenRuleState(String id, Condition condition) {
            Objects.requireNonNull(id, "id is null");
            Objects.requireNonNull(condition, "Condition is null");
            enforcePolicyAccess(Binder.getCallingUid(), "setAutomaticZenRuleState");
            NotificationManagerService.this.mZenModeHelper.setAutomaticZenRuleState(id, condition);
        }

        public void setInterruptionFilter(String pkg, int filter) throws RemoteException {
            enforcePolicyAccess(pkg, "setInterruptionFilter");
            int zen = NotificationManager.zenModeFromInterruptionFilter(filter, -1);
            if (zen == -1) {
                throw new IllegalArgumentException("Invalid filter: " + filter);
            }
            long identity = Binder.clearCallingIdentity();
            try {
                NotificationManagerService.this.mZenModeHelper.setManualZenMode(zen, null, pkg, "setInterruptionFilter");
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void notifyConditions(final String pkg, IConditionProvider provider, final Condition[] conditions) {
            final ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mConditionProviders.checkServiceToken(provider);
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.10.1
                @Override // java.lang.Runnable
                public void run() {
                    NotificationManagerService.this.mConditionProviders.notifyConditions(pkg, info, conditions);
                }
            });
        }

        public void requestUnbindProvider(IConditionProvider provider) {
            long identity = Binder.clearCallingIdentity();
            try {
                ManagedServices.ManagedServiceInfo info = NotificationManagerService.this.mConditionProviders.checkServiceToken(provider);
                info.getOwner().setComponentState(info.component, false);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void requestBindProvider(ComponentName component) {
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(component.getPackageName());
            long identity = Binder.clearCallingIdentity();
            try {
                NotificationManagerService.this.mConditionProviders.setComponentState(component, true);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        private void enforceSystemOrSystemUI(String message) {
            if (NotificationManagerService.this.isCallerSystemOrPhone()) {
                return;
            }
            NotificationManagerService.this.getContext().enforceCallingPermission("android.permission.STATUS_BAR_SERVICE", message);
        }

        private void enforceSystemOrSystemUIOrSamePackage(String pkg, String message) {
            try {
                NotificationManagerService.this.checkCallerIsSystemOrSameApp(pkg);
            } catch (SecurityException e) {
                NotificationManagerService.this.getContext().enforceCallingPermission("android.permission.STATUS_BAR_SERVICE", message);
            }
        }

        private void enforcePolicyAccess(int uid, String method) {
            if (NotificationManagerService.this.getContext().checkCallingPermission("android.permission.MANAGE_NOTIFICATIONS") == 0) {
                return;
            }
            boolean accessAllowed = false;
            String[] packages = NotificationManagerService.this.mPackageManagerClient.getPackagesForUid(uid);
            for (String str : packages) {
                if (NotificationManagerService.this.mConditionProviders.isPackageOrComponentAllowed(str, UserHandle.getUserId(uid))) {
                    accessAllowed = true;
                }
            }
            if (!accessAllowed) {
                Slog.w(NotificationManagerService.TAG, "Notification policy access denied calling " + method);
                throw new SecurityException("Notification policy access denied");
            }
        }

        private void enforcePolicyAccess(String pkg, String method) {
            if (NotificationManagerService.this.getContext().checkCallingPermission("android.permission.MANAGE_NOTIFICATIONS") != 0) {
                NotificationManagerService.this.checkCallerIsSameApp(pkg);
                if (!checkPolicyAccess(pkg)) {
                    Slog.w(NotificationManagerService.TAG, "Notification policy access denied calling " + method);
                    throw new SecurityException("Notification policy access denied");
                }
            }
        }

        private boolean checkPackagePolicyAccess(String pkg) {
            return NotificationManagerService.this.mConditionProviders.isPackageOrComponentAllowed(pkg, getCallingUserHandle().getIdentifier());
        }

        private boolean checkPolicyAccess(String pkg) {
            try {
                int uid = NotificationManagerService.this.getContext().getPackageManager().getPackageUidAsUser(pkg, UserHandle.getCallingUserId());
                if (ActivityManager.checkComponentPermission("android.permission.MANAGE_NOTIFICATIONS", uid, -1, true) == 0) {
                    return true;
                }
                return checkPackagePolicyAccess(pkg) || NotificationManagerService.this.mListeners.isComponentEnabledForPackage(pkg) || (NotificationManagerService.this.mDpm != null && NotificationManagerService.this.mDpm.isActiveAdminWithPolicy(Binder.getCallingUid(), -1));
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }

        protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpAndUsageStatsPermission(NotificationManagerService.this.getContext(), NotificationManagerService.TAG, pw)) {
                DumpFilter filter = DumpFilter.parseFromArguments(args);
                long token = Binder.clearCallingIdentity();
                try {
                    if (filter.stats) {
                        NotificationManagerService.this.dumpJson(pw, filter);
                    } else if (filter.rvStats) {
                        NotificationManagerService.this.dumpRemoteViewStats(pw, filter);
                    } else if (filter.proto) {
                        NotificationManagerService.this.dumpProto(fd, filter);
                    } else if (filter.criticalPriority) {
                        NotificationManagerService.this.dumpNotificationRecords(pw, filter);
                    } else {
                        NotificationManagerService.this.dumpImpl(pw, filter);
                    }
                } finally {
                    Binder.restoreCallingIdentity(token);
                }
            }
        }

        public ComponentName getEffectsSuppressor() {
            if (NotificationManagerService.this.mEffectsSuppressors.isEmpty()) {
                return null;
            }
            return (ComponentName) NotificationManagerService.this.mEffectsSuppressors.get(0);
        }

        public boolean matchesCallFilter(Bundle extras) {
            enforceSystemOrSystemUI("INotificationManager.matchesCallFilter");
            return NotificationManagerService.this.mZenModeHelper.matchesCallFilter(Binder.getCallingUserHandle(), extras, (ValidateNotificationPeople) NotificationManagerService.this.mRankingHelper.findExtractor(ValidateNotificationPeople.class), NotificationManagerService.MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS, 1.0f);
        }

        public boolean isSystemConditionProviderEnabled(String path) {
            enforceSystemOrSystemUI("INotificationManager.isSystemConditionProviderEnabled");
            return NotificationManagerService.this.mConditionProviders.isSystemProviderEnabled(path);
        }

        public byte[] getBackupPayload(int user) {
            NotificationManagerService.this.checkCallerIsSystem();
            if (NotificationManagerService.DBG) {
                Slog.d(NotificationManagerService.TAG, "getBackupPayload u=" + user);
            }
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            try {
                NotificationManagerService.this.writePolicyXml(baos, true, user);
                return baos.toByteArray();
            } catch (IOException e) {
                Slog.w(NotificationManagerService.TAG, "getBackupPayload: error writing payload for user " + user, e);
                return null;
            }
        }

        public void applyRestore(byte[] payload, int user) {
            NotificationManagerService.this.checkCallerIsSystem();
            if (NotificationManagerService.DBG) {
                StringBuilder sb = new StringBuilder();
                sb.append("applyRestore u=");
                sb.append(user);
                sb.append(" payload=");
                sb.append(payload != null ? new String(payload, StandardCharsets.UTF_8) : null);
                Slog.d(NotificationManagerService.TAG, sb.toString());
            }
            if (payload == null) {
                Slog.w(NotificationManagerService.TAG, "applyRestore: no payload to restore for user " + user);
                return;
            }
            ByteArrayInputStream bais = new ByteArrayInputStream(payload);
            try {
                NotificationManagerService.this.readPolicyXml(bais, true, user);
                NotificationManagerService.this.handleSavePolicyFile();
            } catch (IOException | NumberFormatException | XmlPullParserException e) {
                Slog.w(NotificationManagerService.TAG, "applyRestore: error reading payload", e);
            }
        }

        public boolean isNotificationPolicyAccessGranted(String pkg) {
            return checkPolicyAccess(pkg);
        }

        public boolean isNotificationPolicyAccessGrantedForPackage(String pkg) {
            enforceSystemOrSystemUIOrSamePackage(pkg, "request policy access status for another package");
            return checkPolicyAccess(pkg);
        }

        public void setNotificationPolicyAccessGranted(String pkg, boolean granted) throws RemoteException {
            setNotificationPolicyAccessGrantedForUser(pkg, getCallingUserHandle().getIdentifier(), granted);
        }

        public void setNotificationPolicyAccessGrantedForUser(String pkg, int userId, boolean granted) {
            NotificationManagerService.this.checkCallerIsSystemOrShell();
            long identity = Binder.clearCallingIdentity();
            try {
                if (NotificationManagerService.this.mAllowedManagedServicePackages.test(pkg, Integer.valueOf(userId), NotificationManagerService.this.mConditionProviders.getRequiredPermission())) {
                    NotificationManagerService.this.mConditionProviders.setPackageOrComponentEnabled(pkg, userId, true, granted);
                    NotificationManagerService.this.getContext().sendBroadcastAsUser(new Intent("android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED").setPackage(pkg).addFlags(67108864), UserHandle.of(userId), null);
                    NotificationManagerService.this.handleSavePolicyFile();
                }
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public NotificationManager.Policy getNotificationPolicy(String pkg) {
            long identity = Binder.clearCallingIdentity();
            try {
                return NotificationManagerService.this.mZenModeHelper.getNotificationPolicy();
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public NotificationManager.Policy getConsolidatedNotificationPolicy() {
            long identity = Binder.clearCallingIdentity();
            try {
                return NotificationManagerService.this.mZenModeHelper.getConsolidatedNotificationPolicy();
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void setNotificationPolicy(String pkg, NotificationManager.Policy policy) throws Throwable {
            NotificationManager.Policy policy2 = policy;
            enforcePolicyAccess(pkg, "setNotificationPolicy");
            long identity = Binder.clearCallingIdentity();
            try {
                ApplicationInfo applicationInfo = NotificationManagerService.this.mPackageManager.getApplicationInfo(pkg, 0, UserHandle.getUserId(NotificationManagerService.MY_UID));
                NotificationManager.Policy currPolicy = NotificationManagerService.this.mZenModeHelper.getNotificationPolicy();
                if (applicationInfo.targetSdkVersion < 28) {
                    int priorityCategories = policy2.priorityCategories;
                    policy2 = new NotificationManager.Policy((priorityCategories & (-33) & (-65) & (-129)) | (currPolicy.priorityCategories & 32) | (currPolicy.priorityCategories & 64) | (currPolicy.priorityCategories & 128), policy2.priorityCallSenders, policy2.priorityMessageSenders, policy2.suppressedVisualEffects);
                }
                try {
                    int priorityCategories2 = applicationInfo.targetSdkVersion;
                    if (priorityCategories2 < 30) {
                        int priorityCategories3 = NotificationManagerService.this.correctCategory(policy2.priorityCategories, 256, currPolicy.priorityCategories);
                        policy2 = new NotificationManager.Policy(priorityCategories3, policy2.priorityCallSenders, policy2.priorityMessageSenders, policy2.suppressedVisualEffects, currPolicy.priorityConversationSenders);
                    }
                    int newVisualEffects = NotificationManagerService.this.calculateSuppressedVisualEffects(policy2, currPolicy, applicationInfo.targetSdkVersion);
                    NotificationManager.Policy policy3 = new NotificationManager.Policy(policy2.priorityCategories, policy2.priorityCallSenders, policy2.priorityMessageSenders, newVisualEffects, policy2.priorityConversationSenders);
                    ZenLog.traceSetNotificationPolicy(pkg, applicationInfo.targetSdkVersion, policy3);
                    NotificationManagerService.this.mZenModeHelper.setNotificationPolicy(policy3);
                } catch (RemoteException e) {
                } catch (Throwable th) {
                    th = th;
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
            } catch (RemoteException e2) {
            } catch (Throwable th2) {
                th = th2;
            }
            Binder.restoreCallingIdentity(identity);
        }

        public List<String> getEnabledNotificationListenerPackages() {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mListeners.getAllowedPackages(getCallingUserHandle().getIdentifier());
        }

        public List<ComponentName> getEnabledNotificationListeners(int userId) {
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mListeners.getAllowedComponents(userId);
        }

        public ComponentName getAllowedNotificationAssistantForUser(int userId) {
            NotificationManagerService.this.checkCallerIsSystemOrSystemUiOrShell();
            List<ComponentName> allowedComponents = NotificationManagerService.this.mAssistants.getAllowedComponents(userId);
            if (allowedComponents.size() > 1) {
                throw new IllegalStateException("At most one NotificationAssistant: " + allowedComponents.size());
            }
            return (ComponentName) CollectionUtils.firstOrNull(allowedComponents);
        }

        public ComponentName getAllowedNotificationAssistant() {
            return getAllowedNotificationAssistantForUser(getCallingUserHandle().getIdentifier());
        }

        public boolean isNotificationListenerAccessGranted(ComponentName listener) {
            Objects.requireNonNull(listener);
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(listener.getPackageName());
            return NotificationManagerService.this.mListeners.isPackageOrComponentAllowed(listener.flattenToString(), getCallingUserHandle().getIdentifier());
        }

        public boolean isNotificationListenerAccessGrantedForUser(ComponentName listener, int userId) {
            Objects.requireNonNull(listener);
            NotificationManagerService.this.checkCallerIsSystem();
            return NotificationManagerService.this.mListeners.isPackageOrComponentAllowed(listener.flattenToString(), userId);
        }

        public boolean isNotificationAssistantAccessGranted(ComponentName assistant) {
            Objects.requireNonNull(assistant);
            NotificationManagerService.this.checkCallerIsSystemOrSameApp(assistant.getPackageName());
            return NotificationManagerService.this.mAssistants.isPackageOrComponentAllowed(assistant.flattenToString(), getCallingUserHandle().getIdentifier());
        }

        public void setNotificationListenerAccessGranted(ComponentName listener, boolean granted) throws RemoteException {
            setNotificationListenerAccessGrantedForUser(listener, getCallingUserHandle().getIdentifier(), granted);
        }

        public void setNotificationAssistantAccessGranted(ComponentName assistant, boolean granted) {
            setNotificationAssistantAccessGrantedForUser(assistant, getCallingUserHandle().getIdentifier(), granted);
        }

        public void setNotificationListenerAccessGrantedForUser(ComponentName listener, int userId, boolean granted) {
            Objects.requireNonNull(listener);
            NotificationManagerService.this.checkCallerIsSystemOrShell();
            long identity = Binder.clearCallingIdentity();
            try {
                if (NotificationManagerService.this.mAllowedManagedServicePackages.test(listener.getPackageName(), Integer.valueOf(userId), NotificationManagerService.this.mListeners.getRequiredPermission())) {
                    NotificationManagerService.this.mConditionProviders.setPackageOrComponentEnabled(listener.flattenToString(), userId, false, granted);
                    NotificationManagerService.this.mListeners.setPackageOrComponentEnabled(listener.flattenToString(), userId, true, granted);
                    NotificationManagerService.this.getContext().sendBroadcastAsUser(new Intent("android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED").setPackage(listener.getPackageName()).addFlags(1073741824), UserHandle.of(userId), null);
                    NotificationManagerService.this.handleSavePolicyFile();
                }
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void setNotificationAssistantAccessGrantedForUser(ComponentName assistant, int userId, boolean granted) {
            NotificationManagerService.this.checkCallerIsSystemOrSystemUiOrShell();
            for (UserInfo ui : NotificationManagerService.this.mUm.getEnabledProfiles(userId)) {
                NotificationManagerService.this.mAssistants.setUserSet(ui.id, true);
            }
            long identity = Binder.clearCallingIdentity();
            try {
                NotificationManagerService.this.setNotificationAssistantAccessGrantedForUserInternal(assistant, userId, granted);
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        public void applyEnqueuedAdjustmentFromAssistant(INotificationListener token, Adjustment adjustment) {
            boolean foundEnqueued = false;
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationManagerService.this.mAssistants.checkServiceTokenLocked(token);
                    int N = NotificationManagerService.this.mEnqueuedNotifications.size();
                    for (int i = 0; i < N; i++) {
                        NotificationRecord r = NotificationManagerService.this.mEnqueuedNotifications.get(i);
                        if (Objects.equals(adjustment.getKey(), r.getKey()) && Objects.equals(Integer.valueOf(adjustment.getUser()), Integer.valueOf(r.getUserId())) && NotificationManagerService.this.mAssistants.isSameUser(token, r.getUserId())) {
                            NotificationManagerService.this.applyAdjustment(r, adjustment);
                            r.applyAdjustments();
                            r.calculateImportance();
                            foundEnqueued = true;
                            break;
                        }
                    }
                    if (!foundEnqueued) {
                        applyAdjustmentFromAssistant(token, adjustment);
                    }
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void applyAdjustmentFromAssistant(INotificationListener token, Adjustment adjustment) {
            List<Adjustment> adjustments = new ArrayList<>();
            adjustments.add(adjustment);
            applyAdjustmentsFromAssistant(token, adjustments);
        }

        public void applyAdjustmentsFromAssistant(INotificationListener token, List<Adjustment> adjustments) {
            boolean needsSort = false;
            long identity = Binder.clearCallingIdentity();
            try {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    NotificationManagerService.this.mAssistants.checkServiceTokenLocked(token);
                    for (Adjustment adjustment : adjustments) {
                        NotificationRecord r = NotificationManagerService.this.mNotificationsByKey.get(adjustment.getKey());
                        if (r != null && NotificationManagerService.this.mAssistants.isSameUser(token, r.getUserId())) {
                            NotificationManagerService.this.applyAdjustment(r, adjustment);
                            if (adjustment.getSignals().containsKey("key_importance") && adjustment.getSignals().getInt("key_importance") == 0) {
                                cancelNotificationsFromListener(token, new String[]{r.getKey()});
                            } else {
                                needsSort = true;
                            }
                        }
                    }
                }
                if (needsSort) {
                    NotificationManagerService.this.mRankingHandler.requestSort();
                }
                Binder.restoreCallingIdentity(identity);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(identity);
                throw th;
            }
        }

        public void updateNotificationChannelGroupFromPrivilegedListener(INotificationListener token, String pkg, UserHandle user, NotificationChannelGroup group) throws RemoteException {
            Objects.requireNonNull(user);
            verifyPrivilegedListener(token, user, false);
            NotificationManagerService.this.createNotificationChannelGroup(pkg, getUidForPackageAndUser(pkg, user), group, false, true);
            NotificationManagerService.this.handleSavePolicyFile();
        }

        public void updateNotificationChannelFromPrivilegedListener(INotificationListener token, String pkg, UserHandle user, NotificationChannel channel) throws RemoteException {
            Objects.requireNonNull(channel);
            Objects.requireNonNull(pkg);
            Objects.requireNonNull(user);
            verifyPrivilegedListener(token, user, false);
            NotificationManagerService.this.updateNotificationChannelInt(pkg, getUidForPackageAndUser(pkg, user), channel, true);
        }

        public ParceledListSlice<NotificationChannel> getNotificationChannelsFromPrivilegedListener(INotificationListener token, String pkg, UserHandle user) throws RemoteException {
            Objects.requireNonNull(pkg);
            Objects.requireNonNull(user);
            verifyPrivilegedListener(token, user, true);
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannels(pkg, getUidForPackageAndUser(pkg, user), false);
        }

        public ParceledListSlice<NotificationChannelGroup> getNotificationChannelGroupsFromPrivilegedListener(INotificationListener token, String pkg, UserHandle user) throws RemoteException {
            Objects.requireNonNull(pkg);
            Objects.requireNonNull(user);
            verifyPrivilegedListener(token, user, true);
            List<NotificationChannelGroup> groups = new ArrayList<>();
            groups.addAll(NotificationManagerService.this.mPreferencesHelper.getNotificationChannelGroups(pkg, getUidForPackageAndUser(pkg, user)));
            return new ParceledListSlice<>(groups);
        }

        public void setPrivateNotificationsAllowed(boolean allow) {
            if (NotificationManagerService.this.getContext().checkCallingPermission("android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS") == 0) {
                if (allow != NotificationManagerService.this.mLockScreenAllowSecureNotifications) {
                    NotificationManagerService.this.mLockScreenAllowSecureNotifications = allow;
                    NotificationManagerService.this.handleSavePolicyFile();
                    return;
                }
                return;
            }
            throw new SecurityException("Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission");
        }

        public boolean getPrivateNotificationsAllowed() {
            if (NotificationManagerService.this.getContext().checkCallingPermission("android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS") == 0) {
                return NotificationManagerService.this.mLockScreenAllowSecureNotifications;
            }
            throw new SecurityException("Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission");
        }

        public boolean isPackagePaused(String pkg) {
            Objects.requireNonNull(pkg);
            NotificationManagerService.this.checkCallerIsSameApp(pkg);
            return NotificationManagerService.this.isPackagePausedOrSuspended(pkg, Binder.getCallingUid());
        }

        private void verifyPrivilegedListener(INotificationListener token, UserHandle user, boolean assistantAllowed) {
            ManagedServices.ManagedServiceInfo info;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                info = NotificationManagerService.this.mListeners.checkServiceTokenLocked(token);
            }
            if (!NotificationManagerService.this.hasCompanionDevice(info)) {
                synchronized (NotificationManagerService.this.mNotificationLock) {
                    if (assistantAllowed) {
                        if (NotificationManagerService.this.mAssistants.isServiceTokenValidLocked(info.service)) {
                        }
                    }
                    throw new SecurityException(info + " does not have access");
                }
            }
            if (!info.enabledAndUserMatches(user.getIdentifier())) {
                throw new SecurityException(info + " does not have access");
            }
        }

        private int getUidForPackageAndUser(String pkg, UserHandle user) throws RemoteException {
            long identity = Binder.clearCallingIdentity();
            try {
                int uid = NotificationManagerService.this.mPackageManager.getPackageUid(pkg, 0, user.getIdentifier());
                return uid;
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) throws RemoteException {
            new NotificationShellCmd(NotificationManagerService.this).exec(this, in, out, err, args, callback, resultReceiver);
        }

        public long pullStats(long startNs, int report, boolean doAgg, List<ParcelFileDescriptor> out) throws IOException {
            NotificationManagerService.this.checkCallerIsSystemOrShell();
            long startMs = TimeUnit.MILLISECONDS.convert(startNs, TimeUnit.NANOSECONDS);
            long identity = Binder.clearCallingIdentity();
            try {
                if (report == 1) {
                    try {
                        Slog.e(NotificationManagerService.TAG, "pullStats REPORT_REMOTE_VIEWS from: " + startMs + "  wtih " + doAgg);
                        PulledStats stats = NotificationManagerService.this.mUsageStats.remoteViewStats(startMs, doAgg);
                        try {
                            if (stats != null) {
                                out.add(stats.toParcelFileDescriptor(report));
                                Slog.e(NotificationManagerService.TAG, "exiting pullStats with: " + out.size());
                                long endNs = TimeUnit.NANOSECONDS.convert(stats.endTimeMs(), TimeUnit.MILLISECONDS);
                                Binder.restoreCallingIdentity(identity);
                                return endNs;
                            }
                            Slog.e(NotificationManagerService.TAG, "null stats for: " + report);
                        } catch (IOException e) {
                            e = e;
                        }
                    } catch (IOException e2) {
                        e = e2;
                    } catch (Throwable th) {
                        e = th;
                        Binder.restoreCallingIdentity(identity);
                        throw e;
                    }
                    Slog.e(NotificationManagerService.TAG, "exiting pullStats: on error", e);
                    Binder.restoreCallingIdentity(identity);
                    return 0L;
                }
                Binder.restoreCallingIdentity(identity);
                Slog.e(NotificationManagerService.TAG, "exiting pullStats: bad request");
                return 0L;
            } catch (Throwable th2) {
                e = th2;
            }
        }
    }

    protected void setNotificationAssistantAccessGrantedForUserInternal(ComponentName assistant, int baseUserId, boolean granted) {
        List<UserInfo> users = this.mUm.getEnabledProfiles(baseUserId);
        if (users != null) {
            for (UserInfo user : users) {
                int userId = user.id;
                if (assistant == null) {
                    ComponentName allowedAssistant = (ComponentName) CollectionUtils.firstOrNull(this.mAssistants.getAllowedComponents(userId));
                    if (allowedAssistant != null) {
                        setNotificationAssistantAccessGrantedForUserInternal(allowedAssistant, userId, false);
                    }
                } else if (!granted || this.mAllowedManagedServicePackages.test(assistant.getPackageName(), Integer.valueOf(userId), this.mAssistants.getRequiredPermission())) {
                    this.mConditionProviders.setPackageOrComponentEnabled(assistant.flattenToString(), userId, false, granted);
                    this.mAssistants.setPackageOrComponentEnabled(assistant.flattenToString(), userId, true, granted);
                    getContext().sendBroadcastAsUser(new Intent("android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED").setPackage(assistant.getPackageName()).addFlags(1073741824), UserHandle.of(userId), null);
                    handleSavePolicyFile();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyAdjustment(NotificationRecord r, Adjustment adjustment) {
        if (r != null && adjustment.getSignals() != null) {
            Bundle adjustments = adjustment.getSignals();
            Bundle.setDefusable(adjustments, true);
            List<String> toRemove = new ArrayList<>();
            for (String potentialKey : adjustments.keySet()) {
                if (!this.mAssistants.isAdjustmentAllowed(potentialKey)) {
                    toRemove.add(potentialKey);
                }
            }
            for (String removeKey : toRemove) {
                adjustments.remove(removeKey);
            }
            r.addAdjustment(adjustment);
        }
    }

    void addAutogroupKeyLocked(String key) {
        NotificationRecord r = this.mNotificationsByKey.get(key);
        if (r != null && r.getSbn().getOverrideGroupKey() == null) {
            addAutoGroupAdjustment(r, "ranker_group");
            EventLogTags.writeNotificationAutogrouped(key);
            this.mRankingHandler.requestSort();
        }
    }

    void removeAutogroupKeyLocked(String key) {
        NotificationRecord r = this.mNotificationsByKey.get(key);
        if (r != null && r.getSbn().getOverrideGroupKey() != null) {
            addAutoGroupAdjustment(r, null);
            EventLogTags.writeNotificationUnautogrouped(key);
            this.mRankingHandler.requestSort();
        }
    }

    private void addAutoGroupAdjustment(NotificationRecord r, String overrideGroupKey) {
        Bundle signals = new Bundle();
        signals.putString("key_group_key", overrideGroupKey);
        Adjustment adjustment = new Adjustment(r.getSbn().getPackageName(), r.getKey(), signals, "", r.getSbn().getUserId());
        r.addAdjustment(adjustment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearAutogroupSummaryLocked(int userId, String pkg) {
        NotificationRecord removed;
        ArrayMap<String, String> summaries = this.mAutobundledSummaries.get(Integer.valueOf(userId));
        if (summaries != null && summaries.containsKey(pkg) && (removed = findNotificationByKeyLocked(summaries.remove(pkg))) != null) {
            boolean wasPosted = removeFromNotificationListsLocked(removed);
            cancelNotificationLocked(removed, false, 16, wasPosted, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasAutoGroupSummaryLocked(StatusBarNotification sbn) {
        ArrayMap<String, String> summaries = this.mAutobundledSummaries.get(Integer.valueOf(sbn.getUserId()));
        return summaries != null && summaries.containsKey(sbn.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:24:0x005b A[Catch: all -> 0x0171, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:18:0x0037, B:22:0x004b, B:24:0x005b, B:28:0x00ea), top: B:55:0x0037 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00d4 A[Catch: all -> 0x0184, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0184, blocks: (B:20:0x0045, B:27:0x00d4, B:32:0x012b, B:51:0x0182), top: B:57:0x0045 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x013f  */
    public void createAutoGroupSummary(int userId, String pkg, String triggeringKey) throws Throwable {
        NotificationRecord summaryRecord;
        Notification summaryNotification;
        Intent appIntent;
        boolean isAppForeground = this.mActivityManager.getPackageImportance(pkg) == 100;
        synchronized (this.mNotificationLock) {
            try {
                try {
                    NotificationRecord notificationRecord = this.mNotificationsByKey.get(triggeringKey);
                    if (notificationRecord == null) {
                        try {
                            return;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        StatusBarNotification adjustedSbn = notificationRecord.getSbn();
                        int userId2 = adjustedSbn.getUser().getIdentifier();
                        try {
                            ArrayMap<String, String> summaries = this.mAutobundledSummaries.get(Integer.valueOf(userId2));
                            if (summaries != null) {
                                this.mAutobundledSummaries.put(Integer.valueOf(userId2), summaries);
                                if (summaries.containsKey(pkg)) {
                                    summaryRecord = null;
                                } else {
                                    ApplicationInfo appInfo = (ApplicationInfo) adjustedSbn.getNotification().extras.getParcelable("android.appInfo");
                                    Bundle extras = new Bundle();
                                    extras.putParcelable("android.appInfo", appInfo);
                                    String channelId = notificationRecord.getChannel().getId();
                                    summaryNotification = new Notification.Builder(getContext(), channelId).setSmallIcon(adjustedSbn.getNotification().getSmallIcon()).setGroupSummary(true).setGroupAlertBehavior(2).setGroup("ranker_group").setFlag(1024, true).setFlag(512, true).setColor(adjustedSbn.getNotification().color).setLocalOnly(true).build();
                                    summaryNotification.extras.putAll(extras);
                                    appIntent = getContext().getPackageManager().getLaunchIntentForPackage(pkg);
                                    if (appIntent != null) {
                                        summaryNotification.contentIntent = PendingIntent.getActivityAsUser(getContext(), 0, appIntent, 67108864, null, UserHandle.of(userId2));
                                    }
                                    StatusBarNotification summarySbn = new StatusBarNotification(adjustedSbn.getPackageName(), adjustedSbn.getOpPkg(), Integer.MAX_VALUE, "ranker_group", adjustedSbn.getUid(), adjustedSbn.getInitialPid(), summaryNotification, adjustedSbn.getUser(), "ranker_group", this.mSystemClock.currentTimeMillis());
                                    NotificationRecord summaryRecord2 = new NotificationRecord(getContext(), summarySbn, notificationRecord.getChannel());
                                    summaryRecord2.setIsAppImportanceLocked(notificationRecord.getIsAppImportanceLocked());
                                    summaries.put(pkg, summarySbn.getKey());
                                    summaryRecord = summaryRecord2;
                                }
                                if (summaryRecord == null) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            try {
                                summaries = new ArrayMap<>();
                                this.mAutobundledSummaries.put(Integer.valueOf(userId2), summaries);
                                if (summaries.containsKey(pkg)) {
                                    ApplicationInfo appInfo2 = (ApplicationInfo) adjustedSbn.getNotification().extras.getParcelable("android.appInfo");
                                    Bundle extras2 = new Bundle();
                                    extras2.putParcelable("android.appInfo", appInfo2);
                                    String channelId2 = notificationRecord.getChannel().getId();
                                    summaryNotification = new Notification.Builder(getContext(), channelId2).setSmallIcon(adjustedSbn.getNotification().getSmallIcon()).setGroupSummary(true).setGroupAlertBehavior(2).setGroup("ranker_group").setFlag(1024, true).setFlag(512, true).setColor(adjustedSbn.getNotification().color).setLocalOnly(true).build();
                                    summaryNotification.extras.putAll(extras2);
                                    appIntent = getContext().getPackageManager().getLaunchIntentForPackage(pkg);
                                    if (appIntent != null) {
                                        summaryNotification.contentIntent = PendingIntent.getActivityAsUser(getContext(), 0, appIntent, 67108864, null, UserHandle.of(userId2));
                                    }
                                    StatusBarNotification summarySbn2 = new StatusBarNotification(adjustedSbn.getPackageName(), adjustedSbn.getOpPkg(), Integer.MAX_VALUE, "ranker_group", adjustedSbn.getUid(), adjustedSbn.getInitialPid(), summaryNotification, adjustedSbn.getUser(), "ranker_group", this.mSystemClock.currentTimeMillis());
                                    try {
                                        NotificationRecord summaryRecord3 = new NotificationRecord(getContext(), summarySbn2, notificationRecord.getChannel());
                                        summaryRecord3.setIsAppImportanceLocked(notificationRecord.getIsAppImportanceLocked());
                                        summaries.put(pkg, summarySbn2.getKey());
                                        summaryRecord = summaryRecord3;
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } else {
                                    summaryRecord = null;
                                }
                                try {
                                    if (summaryRecord == null && checkDisqualifyingFeatures(userId2, MY_UID, summaryRecord.getSbn().getId(), summaryRecord.getSbn().getTag(), summaryRecord, true)) {
                                        this.mHandler.post(new EnqueueNotificationRunnable(userId2, summaryRecord, isAppForeground));
                                        return;
                                    }
                                    return;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String disableNotificationEffects(NotificationRecord record) {
        if (this.mDisableNotificationEffects) {
            return "booleanState";
        }
        if ((this.mListenerHints & 1) != 0) {
            return "listenerHints";
        }
        if (record != null && record.getAudioAttributes() != null) {
            if ((this.mListenerHints & 2) != 0 && record.getAudioAttributes().getUsage() != 6) {
                return "listenerNoti";
            }
            if ((this.mListenerHints & 4) != 0 && record.getAudioAttributes().getUsage() == 6) {
                return "listenerCall";
            }
        }
        if (this.mCallState != 0 && !this.mZenModeHelper.isCall(record)) {
            return "callState";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpJson(PrintWriter pw, DumpFilter filter) {
        JSONObject dump = new JSONObject();
        try {
            dump.put("service", "Notification Manager");
            dump.put("bans", this.mPreferencesHelper.dumpBansJson(filter));
            dump.put("ranking", this.mPreferencesHelper.dumpJson(filter));
            dump.put("stats", this.mUsageStats.dumpJson(filter));
            dump.put("channels", this.mPreferencesHelper.dumpChannelsJson(filter));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        pw.println(dump);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpRemoteViewStats(PrintWriter pw, DumpFilter filter) {
        PulledStats stats = this.mUsageStats.remoteViewStats(filter.since, true);
        if (stats == null) {
            pw.println("no remote view stats reported.");
        } else {
            stats.dump(1, pw, filter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpProto(FileDescriptor fd, DumpFilter filter) {
        ProtoOutputStream proto = new ProtoOutputStream(fd);
        synchronized (this.mNotificationLock) {
            int N = this.mNotificationList.size();
            for (int i = 0; i < N; i++) {
                NotificationRecord nr = this.mNotificationList.get(i);
                if (!filter.filtered || filter.matches(nr.getSbn())) {
                    nr.dump(proto, 2246267895809L, filter.redact, 1);
                }
            }
            int N2 = this.mEnqueuedNotifications.size();
            for (int i2 = 0; i2 < N2; i2++) {
                NotificationRecord nr2 = this.mEnqueuedNotifications.get(i2);
                if (!filter.filtered || filter.matches(nr2.getSbn())) {
                    nr2.dump(proto, 2246267895809L, filter.redact, 0);
                }
            }
            List<NotificationRecord> snoozed = this.mSnoozeHelper.getSnoozed();
            int N3 = snoozed.size();
            for (int i3 = 0; i3 < N3; i3++) {
                NotificationRecord nr3 = snoozed.get(i3);
                if (!filter.filtered || filter.matches(nr3.getSbn())) {
                    nr3.dump(proto, 2246267895809L, filter.redact, 2);
                }
            }
            long zenLog = proto.start(1146756268034L);
            this.mZenModeHelper.dump(proto);
            for (ComponentName suppressor : this.mEffectsSuppressors) {
                suppressor.dumpDebug(proto, 2246267895812L);
            }
            proto.end(zenLog);
            long listenersToken = proto.start(1146756268035L);
            this.mListeners.dump(proto, filter);
            proto.end(listenersToken);
            proto.write(1120986464260L, this.mListenerHints);
            int i4 = 0;
            while (i4 < this.mListenersDisablingEffects.size()) {
                long effectsToken = proto.start(2246267895813L);
                long zenLog2 = zenLog;
                proto.write(1120986464257L, this.mListenersDisablingEffects.keyAt(i4));
                ArraySet<ComponentName> listeners = this.mListenersDisablingEffects.valueAt(i4);
                int j = 0;
                while (j < listeners.size()) {
                    ComponentName componentName = listeners.valueAt(j);
                    componentName.dumpDebug(proto, 2246267895811L);
                    j++;
                    listenersToken = listenersToken;
                }
                proto.end(effectsToken);
                i4++;
                zenLog = zenLog2;
                listenersToken = listenersToken;
            }
            long assistantsToken = proto.start(1146756268038L);
            this.mAssistants.dump(proto, filter);
            proto.end(assistantsToken);
            long conditionsToken = proto.start(1146756268039L);
            this.mConditionProviders.dump(proto, filter);
            proto.end(conditionsToken);
            long rankingToken = proto.start(1146756268040L);
            this.mRankingHelper.dump(proto, filter);
            this.mPreferencesHelper.dump(proto, filter);
            proto.end(rankingToken);
        }
        proto.flush();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpNotificationRecords(PrintWriter pw, DumpFilter filter) {
        synchronized (this.mNotificationLock) {
            int N = this.mNotificationList.size();
            if (N > 0) {
                pw.println("  Notification List:");
                for (int i = 0; i < N; i++) {
                    NotificationRecord nr = this.mNotificationList.get(i);
                    if (!filter.filtered || filter.matches(nr.getSbn())) {
                        nr.dump(pw, "    ", getContext(), filter.redact);
                    }
                }
                pw.println("  ");
            }
        }
    }

    void dumpImpl(PrintWriter pw, DumpFilter filter) {
        pw.print("Current Notification Manager state");
        if (filter.filtered) {
            pw.print(" (filtered to ");
            pw.print(filter);
            pw.print(")");
        }
        pw.println(':');
        boolean zenOnly = filter.filtered && filter.zen;
        if (!zenOnly) {
            synchronized (this.mToastQueue) {
                int N = this.mToastQueue.size();
                if (N > 0) {
                    pw.println("  Toast Queue:");
                    for (int i = 0; i < N; i++) {
                        this.mToastQueue.get(i).dump(pw, "    ", filter);
                    }
                    pw.println("  ");
                }
            }
        }
        synchronized (this.mNotificationLock) {
            if (!zenOnly) {
                try {
                    if (!filter.normalPriority) {
                        dumpNotificationRecords(pw, filter);
                    }
                    if (!filter.filtered) {
                        int N2 = this.mLights.size();
                        if (N2 > 0) {
                            pw.println("  Lights List:");
                            for (int i2 = 0; i2 < N2; i2++) {
                                if (i2 == N2 - 1) {
                                    pw.print("  > ");
                                } else {
                                    pw.print("    ");
                                }
                                pw.println(this.mLights.get(i2));
                            }
                            pw.println("  ");
                        }
                        pw.println("  mUseAttentionLight=" + this.mUseAttentionLight);
                        pw.println("  mHasLight=" + this.mHasLight);
                        pw.println("  mNotificationPulseEnabled=" + this.mNotificationPulseEnabled);
                        pw.println("  mSoundNotificationKey=" + this.mSoundNotificationKey);
                        pw.println("  mVibrateNotificationKey=" + this.mVibrateNotificationKey);
                        pw.println("  mDisableNotificationEffects=" + this.mDisableNotificationEffects);
                        pw.println("  mCallState=" + callStateToString(this.mCallState));
                        pw.println("  mSystemReady=" + this.mSystemReady);
                        pw.println("  mMaxPackageEnqueueRate=" + this.mMaxPackageEnqueueRate);
                    }
                    pw.println("  mArchive=" + this.mArchive.toString());
                    Iterator<Pair<StatusBarNotification, Integer>> iter = this.mArchive.descendingIterator();
                    int j = 0;
                    while (iter.hasNext()) {
                        StatusBarNotification sbn = (StatusBarNotification) iter.next().first;
                        if (filter == null || filter.matches(sbn)) {
                            pw.println("    " + sbn);
                            j++;
                            if (j >= 5) {
                                if (!iter.hasNext()) {
                                    break;
                                }
                                pw.println("    ...");
                                break;
                            }
                        }
                    }
                    if (!zenOnly) {
                        int N3 = this.mEnqueuedNotifications.size();
                        if (N3 > 0) {
                            pw.println("  Enqueued Notification List:");
                            for (int i3 = 0; i3 < N3; i3++) {
                                NotificationRecord nr = this.mEnqueuedNotifications.get(i3);
                                if (!filter.filtered || filter.matches(nr.getSbn())) {
                                    nr.dump(pw, "    ", getContext(), filter.redact);
                                }
                            }
                            pw.println("  ");
                        }
                        this.mSnoozeHelper.dump(pw, filter);
                    }
                    pw.println();
                    pw.println("  Delayed notification cancels:");
                    if (this.mDelayedCancelations.isEmpty()) {
                        pw.println("    None");
                    } else {
                        Set<NotificationRecord> delayedKeys = this.mDelayedCancelations.keySet();
                        for (NotificationRecord record : delayedKeys) {
                            ArrayList<CancelNotificationRunnable> queuedCancels = this.mDelayedCancelations.get(record);
                            pw.println("    (" + queuedCancels.size() + ") cancels enqueued for" + record.getKey());
                        }
                    }
                    pw.println();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (!zenOnly) {
                pw.println("\n  Ranking Config:");
                this.mRankingHelper.dump(pw, "    ", filter);
                pw.println("\n Notification Preferences:");
                this.mPreferencesHelper.dump(pw, "    ", filter);
                pw.println("\n  Notification listeners:");
                this.mListeners.dump(pw, filter);
                pw.print("    mListenerHints: ");
                pw.println(this.mListenerHints);
                pw.print("    mListenersDisablingEffects: (");
                int N4 = this.mListenersDisablingEffects.size();
                for (int i4 = 0; i4 < N4; i4++) {
                    int hint = this.mListenersDisablingEffects.keyAt(i4);
                    if (i4 > 0) {
                        pw.print(';');
                    }
                    pw.print("hint[" + hint + "]:");
                    ArraySet<ComponentName> listeners = this.mListenersDisablingEffects.valueAt(i4);
                    int listenerSize = listeners.size();
                    for (int j2 = 0; j2 < listenerSize; j2++) {
                        if (j2 > 0) {
                            pw.print(',');
                        }
                        ComponentName listener = listeners.valueAt(j2);
                        if (listener != null) {
                            pw.print(listener);
                        }
                    }
                }
                pw.println(')');
                pw.println("\n  Notification assistant services:");
                this.mAssistants.dump(pw, filter);
            }
            if (!filter.filtered || zenOnly) {
                pw.println("\n  Zen Mode:");
                pw.print("    mInterruptionFilter=");
                pw.println(this.mInterruptionFilter);
                this.mZenModeHelper.dump(pw, "    ");
                pw.println("\n  Zen Log:");
                ZenLog.dump(pw, "    ");
            }
            pw.println("\n  Condition providers:");
            this.mConditionProviders.dump(pw, filter);
            pw.println("\n  Group summaries:");
            for (Map.Entry<String, NotificationRecord> entry : this.mSummaryByGroupKey.entrySet()) {
                NotificationRecord r = entry.getValue();
                pw.println("    " + entry.getKey() + " -> " + r.getKey());
                if (this.mNotificationsByKey.get(r.getKey()) != r) {
                    pw.println("!!!!!!LEAK: Record not found in mNotificationsByKey.");
                    r.dump(pw, "      ", getContext(), filter.redact);
                }
            }
            if (!zenOnly) {
                pw.println("\n  Usage Stats:");
                this.mUsageStats.dump(pw, "    ", filter);
            }
        }
    }

    /* JADX INFO: renamed from: com.android.server.notification.NotificationManagerService$11, reason: invalid class name */
    class AnonymousClass11 implements NotificationManagerInternal {
        AnonymousClass11() {
        }

        @Override // com.android.server.notification.NotificationManagerInternal
        public NotificationChannel getNotificationChannel(String pkg, int uid, String channelId) {
            return NotificationManagerService.this.mPreferencesHelper.getNotificationChannel(pkg, uid, channelId, false);
        }

        @Override // com.android.server.notification.NotificationManagerInternal
        public void enqueueNotification(String pkg, String opPkg, int callingUid, int callingPid, String tag, int id, Notification notification, int userId) {
            NotificationManagerService.this.enqueueNotificationInternal(pkg, opPkg, callingUid, callingPid, tag, id, notification, userId);
        }

        @Override // com.android.server.notification.NotificationManagerInternal
        public void cancelNotification(String pkg, String opPkg, int callingUid, int callingPid, String tag, int id, int userId) {
            NotificationManagerService.this.cancelNotificationInternal(pkg, opPkg, callingUid, callingPid, tag, id, userId);
        }

        @Override // com.android.server.notification.NotificationManagerInternal
        public void removeForegroundServiceFlagFromNotification(final String pkg, final int notificationId, final int userId) {
            NotificationManagerService.this.checkCallerIsSystem();
            NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeForegroundServiceFlagFromNotification$0$NotificationManagerService$11(pkg, notificationId, userId);
                }
            });
        }

        public /* synthetic */ void lambda$removeForegroundServiceFlagFromNotification$0$NotificationManagerService$11(String pkg, int notificationId, int userId) {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                List<NotificationRecord> enqueued = NotificationManagerService.this.findNotificationsByListLocked(NotificationManagerService.this.mEnqueuedNotifications, pkg, null, notificationId, userId);
                for (int i = 0; i < enqueued.size(); i++) {
                    removeForegroundServiceFlagLocked(enqueued.get(i));
                }
                NotificationRecord r = NotificationManagerService.this.findNotificationByListLocked(NotificationManagerService.this.mNotificationList, pkg, null, notificationId, userId);
                if (r != null) {
                    removeForegroundServiceFlagLocked(r);
                    NotificationManagerService.this.mRankingHelper.sort(NotificationManagerService.this.mNotificationList);
                    NotificationManagerService.this.mListeners.notifyPostedLocked(r, r);
                }
            }
        }

        @Override // com.android.server.notification.NotificationManagerInternal
        public void onConversationRemoved(String pkg, int uid, String conversationId) {
            NotificationManagerService.this.onConversationRemovedInternal(pkg, uid, conversationId);
        }

        private void removeForegroundServiceFlagLocked(NotificationRecord r) {
            if (r == null) {
                return;
            }
            StatusBarNotification sbn = r.getSbn();
            sbn.getNotification().flags = r.mOriginalFlags & (-65);
        }
    }

    void cancelNotificationInternal(String pkg, String opPkg, int callingUid, int callingPid, String tag, int id, int userId) {
        int userId2 = ActivityManager.handleIncomingUser(callingPid, callingUid, userId, true, false, "cancelNotificationWithTag", pkg);
        int uid = resolveNotificationUid(opPkg, pkg, callingUid, userId2);
        if (uid == -1) {
            Slog.w(TAG, opPkg + ":" + callingUid + " trying to cancel notification for nonexistent pkg " + pkg + " in user " + userId2);
            return;
        }
        if (!Objects.equals(pkg, opPkg)) {
            synchronized (this.mNotificationLock) {
                NotificationRecord r = findNotificationLocked(pkg, tag, id, userId2);
                if (r != null && !Objects.equals(opPkg, r.getSbn().getOpPkg())) {
                    throw new SecurityException(opPkg + " does not have permission to cancel a notification they did not post " + tag + " " + id);
                }
            }
        }
        int mustNotHaveFlags = isCallingUidSystem() ? 0 : 1088;
        cancelNotification(uid, callingPid, pkg, tag, id, 0, mustNotHaveFlags, false, userId2, 8, null);
    }

    void enqueueNotificationInternal(String pkg, String opPkg, int callingUid, int callingPid, String tag, int id, Notification notification, int incomingUserId) {
        enqueueNotificationInternal(pkg, opPkg, callingUid, callingPid, tag, id, notification, incomingUserId, false);
    }

    void enqueueNotificationInternal(String pkg, String opPkg, int callingUid, int callingPid, String tag, int id, Notification notification, int incomingUserId, boolean postSilently) {
        String channelId;
        boolean z;
        UserHandle user;
        ShortcutInfo validShortcutInfo;
        int intentCount;
        if (DBG) {
            Slog.v(TAG, "enqueueNotificationInternal: pkg=" + pkg + " id=" + id + " notification=" + notification);
        }
        if (pkg == null || notification == null) {
            throw new IllegalArgumentException("null not allowed: pkg=" + pkg + " id=" + id + " notification=" + notification);
        }
        int userId = ActivityManager.handleIncomingUser(callingPid, callingUid, incomingUserId, true, false, "enqueueNotification", pkg);
        UserHandle user2 = UserHandle.of(userId);
        int notificationUid = resolveNotificationUid(opPkg, pkg, callingUid, userId);
        if (notificationUid == -1) {
            throw new SecurityException("Caller " + opPkg + ":" + callingUid + " trying to post for invalid pkg " + pkg + " in user " + incomingUserId);
        }
        checkRestrictedCategories(pkg, notification);
        try {
            fixNotification(notification, pkg, tag, id, userId);
            this.mUsageStats.registerEnqueuedByApp(pkg);
            StatusBarNotification n = new StatusBarNotification(pkg, opPkg, id, tag, notificationUid, callingPid, notification, user2, (String) null, this.mSystemClock.currentTimeMillis());
            String channelId2 = notification.getChannelId();
            if (this.mIsTelevision && new Notification.TvExtender(notification).getChannelId() != null) {
                String channelId3 = new Notification.TvExtender(notification).getChannelId();
                channelId = channelId3;
            } else {
                channelId = channelId2;
            }
            String shortcutId = n.getShortcutId();
            NotificationChannel channel = this.mPreferencesHelper.getConversationNotificationChannel(pkg, notificationUid, channelId, shortcutId, true, false);
            if (channel == null) {
                String noChannelStr = "No Channel found for pkg=" + pkg + ", channelId=" + channelId + ", id=" + id + ", tag=" + tag + ", opPkg=" + opPkg + ", callingUid=" + callingUid + ", userId=" + userId + ", incomingUserId=" + incomingUserId + ", notificationUid=" + notificationUid + ", notification=" + notification;
                Slog.e(TAG, noChannelStr);
                boolean appNotificationsOff = this.mPreferencesHelper.getImportance(pkg, notificationUid) == 0;
                if (!appNotificationsOff) {
                    doChannelWarningToast("Developer warning for package \"" + pkg + "\"\nFailed to post notification on channel \"" + channelId + "\"\nSee log for more details");
                    return;
                }
                return;
            }
            NotificationRecord r = new NotificationRecord(getContext(), n, channel);
            r.setIsAppImportanceLocked(this.mPreferencesHelper.getIsAppImportanceLocked(pkg, callingUid));
            r.setPostSilently(postSilently);
            r.setFlagBubbleRemoved(false);
            r.setPkgAllowedAsConvo(this.mMsgPkgsAllowedAsConvos.contains(pkg));
            if ((notification.flags & 64) != 0) {
                boolean fgServiceShown = channel.isFgServiceShown();
                if (((channel.getUserLockedFields() & 4) == 0 || !fgServiceShown) && (r.getImportance() == 1 || r.getImportance() == 0)) {
                    if (TextUtils.isEmpty(channelId) || "miscellaneous".equals(channelId)) {
                        z = false;
                        r.setSystemImportance(2);
                    } else {
                        channel.setImportance(2);
                        r.setSystemImportance(2);
                        if (!fgServiceShown) {
                            channel.unlockFields(4);
                            channel.setFgServiceShown(true);
                        }
                        this.mPreferencesHelper.updateNotificationChannel(pkg, notificationUid, channel, false);
                        r.updateNotificationChannel(channel);
                        z = false;
                    }
                } else if (fgServiceShown || TextUtils.isEmpty(channelId) || "miscellaneous".equals(channelId)) {
                    z = false;
                } else {
                    channel.setFgServiceShown(true);
                    r.updateNotificationChannel(channel);
                    z = false;
                }
            } else {
                z = false;
            }
            ShortcutHelper shortcutHelper = this.mShortcutHelper;
            if (shortcutHelper != null) {
                user = user2;
                validShortcutInfo = shortcutHelper.getValidShortcutInfo(notification.getShortcutId(), pkg, user);
            } else {
                user = user2;
                validShortcutInfo = null;
            }
            ShortcutInfo info = validShortcutInfo;
            if (notification.getShortcutId() != null && info == null) {
                Slog.w(TAG, "notification " + r.getKey() + " added an invalid shortcut");
            }
            r.setShortcutInfo(info);
            r.setHasSentValidMsg(this.mPreferencesHelper.hasSentValidMsg(pkg, notificationUid));
            r.userDemotedAppFromConvoSpace(this.mPreferencesHelper.hasUserDemotedInvalidMsgApp(pkg, notificationUid));
            UserHandle user3 = user;
            if (!checkDisqualifyingFeatures(userId, notificationUid, id, tag, r, r.getSbn().getOverrideGroupKey() != null ? true : z)) {
                return;
            }
            if (info != null) {
                this.mShortcutHelper.cacheShortcut(info, user3);
            }
            if (notification.allPendingIntents != null && (intentCount = notification.allPendingIntents.size()) > 0) {
                ActivityManagerInternal am = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
                long duration = ((DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class)).getNotificationWhitelistDuration();
                int i = 0;
                for (intentCount = notification.allPendingIntents.size(); i < intentCount; intentCount = intentCount) {
                    PendingIntent pendingIntent = (PendingIntent) notification.allPendingIntents.valueAt(i);
                    if (pendingIntent != null) {
                        am.setPendingIntentWhitelistDuration(pendingIntent.getTarget(), WHITELIST_TOKEN, duration);
                        am.setPendingIntentAllowBgActivityStarts(pendingIntent.getTarget(), WHITELIST_TOKEN, 7);
                    }
                    i++;
                }
            }
            long token = Binder.clearCallingIdentity();
            try {
                boolean isAppForeground = this.mActivityManager.getPackageImportance(pkg) == 100 ? true : z;
                Binder.restoreCallingIdentity(token);
                this.mHandler.post(new EnqueueNotificationRunnable(userId, r, isAppForeground));
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        } catch (Exception e) {
            if (notification.isForegroundService()) {
                throw new SecurityException("Invalid FGS notification", e);
            }
            Slog.e(TAG, "Cannot fix notification", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConversationRemovedInternal(String pkg, int uid, String conversationId) {
        checkCallerIsSystem();
        Preconditions.checkStringNotEmpty(pkg);
        Preconditions.checkStringNotEmpty(conversationId);
        this.mHistoryManager.deleteConversation(pkg, uid, conversationId);
        List<String> deletedChannelIds = this.mPreferencesHelper.deleteConversation(pkg, uid, conversationId);
        for (String channelId : deletedChannelIds) {
            cancelAllNotificationsInt(MY_UID, MY_PID, pkg, channelId, 0, 0, true, UserHandle.getUserId(uid), 17, null);
        }
        handleSavePolicyFile();
    }

    protected void fixNotification(Notification notification, String pkg, String tag, int id, int userId) throws PackageManager.NameNotFoundException {
        ApplicationInfo ai = this.mPackageManagerClient.getApplicationInfoAsUser(pkg, AudioFormat.EVRC, userId == -1 ? 0 : userId);
        Notification.addFieldsFromContext(ai, notification);
        int canColorize = this.mPackageManagerClient.checkPermission("android.permission.USE_COLORIZED_NOTIFICATIONS", pkg);
        if (canColorize == 0) {
            notification.flags |= 2048;
        } else {
            notification.flags &= -2049;
        }
        if (notification.fullScreenIntent != null && ai.targetSdkVersion >= 29) {
            int fullscreenIntentPermission = this.mPackageManagerClient.checkPermission("android.permission.USE_FULL_SCREEN_INTENT", pkg);
            if (fullscreenIntentPermission != 0) {
                notification.fullScreenIntent = null;
                Slog.w(TAG, "Package " + pkg + ": Use of fullScreenIntent requires the USE_FULL_SCREEN_INTENT permission");
            }
        }
        checkRemoteViews(pkg, tag, id, notification);
    }

    private void checkRemoteViews(String pkg, String tag, int id, Notification notification) {
        if (removeRemoteView(pkg, tag, id, notification.contentView)) {
            notification.contentView = null;
        }
        if (removeRemoteView(pkg, tag, id, notification.bigContentView)) {
            notification.bigContentView = null;
        }
        if (removeRemoteView(pkg, tag, id, notification.headsUpContentView)) {
            notification.headsUpContentView = null;
        }
        if (notification.publicVersion != null) {
            if (removeRemoteView(pkg, tag, id, notification.publicVersion.contentView)) {
                notification.publicVersion.contentView = null;
            }
            if (removeRemoteView(pkg, tag, id, notification.publicVersion.bigContentView)) {
                notification.publicVersion.bigContentView = null;
            }
            if (removeRemoteView(pkg, tag, id, notification.publicVersion.headsUpContentView)) {
                notification.publicVersion.headsUpContentView = null;
            }
        }
    }

    private boolean removeRemoteView(String pkg, String tag, int id, RemoteViews contentView) {
        if (contentView == null) {
            return false;
        }
        int contentViewSize = contentView.estimateMemoryUsage();
        if (contentViewSize > this.mWarnRemoteViewsSizeBytes && contentViewSize < this.mStripRemoteViewsSizeBytes) {
            Slog.w(TAG, "RemoteViews too large on pkg: " + pkg + " tag: " + tag + " id: " + id + " this might be stripped in a future release");
        }
        if (contentViewSize < this.mStripRemoteViewsSizeBytes) {
            return false;
        }
        this.mUsageStats.registerImageRemoved(pkg);
        Slog.w(TAG, "Removed too large RemoteViews (" + contentViewSize + " bytes) on pkg: " + pkg + " tag: " + tag + " id: " + id);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNotificationBubbleFlags(NotificationRecord r, boolean isAppForeground) {
        Notification notification = r.getNotification();
        Notification.BubbleMetadata metadata = notification.getBubbleMetadata();
        if (!isAppForeground && metadata != null) {
            int flags = metadata.getFlags();
            metadata.setFlags(flags & (-2) & (-3));
        }
    }

    private void doChannelWarningToast(final CharSequence toastText) {
        Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$oBqbud98Vzd9hmZYK-pWIY4cBpI
            public final void runOrThrow() throws Exception {
                this.f$0.lambda$doChannelWarningToast$4$NotificationManagerService(toastText);
            }
        });
    }

    public /* synthetic */ void lambda$doChannelWarningToast$4$NotificationManagerService(CharSequence charSequence) throws Exception {
        if (Settings.Global.getInt(getContext().getContentResolver(), "show_notification_channel_warnings", Build.IS_DEBUGGABLE ? 1 : 0) != 0) {
            Toast.makeText(getContext(), this.mHandler.getLooper(), charSequence, 0).show();
        }
    }

    int resolveNotificationUid(String callingPkg, String targetPkg, int callingUid, int userId) {
        if (userId == -1) {
            userId = 0;
        }
        if (isCallerSameApp(targetPkg, callingUid, userId) && (TextUtils.equals(callingPkg, targetPkg) || isCallerSameApp(callingPkg, callingUid, userId))) {
            return callingUid;
        }
        int targetUid = -1;
        try {
            targetUid = this.mPackageManagerClient.getPackageUidAsUser(targetPkg, userId);
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (isCallerAndroid(callingPkg, callingUid) || this.mPreferencesHelper.isDelegateAllowed(targetPkg, targetUid, callingPkg, callingUid)) {
            return targetUid;
        }
        throw new SecurityException("Caller " + callingPkg + ":" + callingUid + " cannot post for pkg " + targetPkg + " in user " + userId);
    }

    private boolean checkDisqualifyingFeatures(int userId, int uid, int id, String tag, NotificationRecord r, boolean isAutogroup) throws Throwable {
        int count;
        String pkg = r.getSbn().getPackageName();
        boolean isSystemNotification = isUidSystemOrPhone(uid) || PackageManagerService.PLATFORM_PACKAGE_NAME.equals(pkg);
        boolean isNotificationFromListener = this.mListeners.isListenerPackage(pkg);
        if (!isSystemNotification && !isNotificationFromListener) {
            synchronized (this.mNotificationLock) {
                try {
                    try {
                        int callingUid = Binder.getCallingUid();
                        if (this.mNotificationsByKey.get(r.getSbn().getKey()) == null && isCallerInstantApp(callingUid, userId)) {
                            throw new SecurityException("Instant app " + pkg + " cannot create notifications");
                        }
                        if (this.mNotificationsByKey.get(r.getSbn().getKey()) != null && !r.getNotification().hasCompletedProgress() && !isAutogroup) {
                            float appEnqueueRate = this.mUsageStats.getAppEnqueueRate(pkg);
                            if (appEnqueueRate > this.mMaxPackageEnqueueRate) {
                                this.mUsageStats.registerOverRateQuota(pkg);
                                long now = this.mSystemClock.elapsedRealtime();
                                if (now - this.mLastOverRateLogTime > MIN_PACKAGE_OVERRATE_LOG_INTERVAL) {
                                    Slog.e(TAG, "Package enqueue rate is " + appEnqueueRate + ". Shedding " + r.getSbn().getKey() + ". package=" + pkg);
                                    this.mLastOverRateLogTime = now;
                                }
                                return false;
                            }
                        }
                        if (!r.getNotification().isForegroundService() && (count = getNotificationCountLocked(pkg, userId, id, tag)) >= 50) {
                            this.mUsageStats.registerOverCountQuota(pkg);
                            Slog.e(TAG, "Package has already posted or enqueued " + count + " notifications.  Not showing more.  package=" + pkg);
                            return false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    throw th;
                }
            }
        }
        synchronized (this.mNotificationLock) {
            if (!this.mSnoozeHelper.isSnoozed(userId, pkg, r.getKey())) {
                return !isBlocked(r, this.mUsageStats);
            }
            MetricsLogger.action(r.getLogMaker().setType(6).setCategory(831));
            this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.NOTIFICATION_NOT_POSTED_SNOOZED, r);
            if (DBG) {
                Slog.d(TAG, "Ignored enqueue for snoozed notification " + r.getKey());
            }
            this.mSnoozeHelper.update(userId, r);
            handleSavePolicyFile();
            return false;
        }
    }

    protected int getNotificationCountLocked(String pkg, int userId, int excludedId, String excludedTag) {
        int count = 0;
        int N = this.mNotificationList.size();
        for (int i = 0; i < N; i++) {
            NotificationRecord existing = this.mNotificationList.get(i);
            if (existing.getSbn().getPackageName().equals(pkg) && existing.getSbn().getUserId() == userId && (existing.getSbn().getId() != excludedId || !TextUtils.equals(existing.getSbn().getTag(), excludedTag))) {
                count++;
            }
        }
        int M = this.mEnqueuedNotifications.size();
        for (int i2 = 0; i2 < M; i2++) {
            NotificationRecord existing2 = this.mEnqueuedNotifications.get(i2);
            if (existing2.getSbn().getPackageName().equals(pkg) && existing2.getSbn().getUserId() == userId) {
                count++;
            }
        }
        return count;
    }

    protected boolean isBlocked(NotificationRecord r, NotificationUsageStats usageStats) {
        if (isBlocked(r)) {
            if (DBG) {
                Slog.e(TAG, "Suppressing notification from package by user request.");
            }
            usageStats.registerBlocked(r);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBlocked(NotificationRecord r) {
        String pkg = r.getSbn().getPackageName();
        int callingUid = r.getSbn().getUid();
        return this.mPreferencesHelper.isGroupBlocked(pkg, callingUid, r.getChannel().getGroup()) || this.mPreferencesHelper.getImportance(pkg, callingUid) == 0 || r.getImportance() == 0;
    }

    protected class SnoozeNotificationRunnable implements Runnable {
        private final long mDuration;
        private final String mKey;
        private final String mSnoozeCriterionId;

        SnoozeNotificationRunnable(String key, long duration, String snoozeCriterionId) {
            this.mKey = key;
            this.mDuration = duration;
            this.mSnoozeCriterionId = snoozeCriterionId;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = NotificationManagerService.this.findInCurrentAndSnoozedNotificationByKeyLocked(this.mKey);
                if (r != null) {
                    snoozeLocked(r);
                }
            }
        }

        void snoozeLocked(NotificationRecord r) {
            List<NotificationRecord> recordsToSnooze = new ArrayList<>();
            if (r.getSbn().isGroup()) {
                List<NotificationRecord> groupNotifications = NotificationManagerService.this.findCurrentAndSnoozedGroupNotificationsLocked(r.getSbn().getPackageName(), r.getSbn().getGroupKey(), r.getSbn().getUserId());
                if (r.getNotification().isGroupSummary()) {
                    for (int i = 0; i < groupNotifications.size(); i++) {
                        if (!this.mKey.equals(groupNotifications.get(i).getKey())) {
                            recordsToSnooze.add(groupNotifications.get(i));
                        }
                    }
                } else if (NotificationManagerService.this.mSummaryByGroupKey.containsKey(r.getSbn().getGroupKey()) && groupNotifications.size() == 2) {
                    for (int i2 = 0; i2 < groupNotifications.size(); i2++) {
                        if (!this.mKey.equals(groupNotifications.get(i2).getKey())) {
                            recordsToSnooze.add(groupNotifications.get(i2));
                        }
                    }
                }
            }
            recordsToSnooze.add(r);
            if (NotificationManagerService.this.mSnoozeHelper.canSnooze(recordsToSnooze.size())) {
                for (int i3 = 0; i3 < recordsToSnooze.size(); i3++) {
                    snoozeNotificationLocked(recordsToSnooze.get(i3));
                }
                return;
            }
            Log.w(NotificationManagerService.TAG, "Cannot snooze " + r.getKey() + ": too many snoozed notifications");
        }

        void snoozeNotificationLocked(NotificationRecord r) {
            MetricsLogger.action(r.getLogMaker().setCategory(831).setType(2).addTaggedData(1139, Long.valueOf(this.mDuration)).addTaggedData(832, Integer.valueOf(this.mSnoozeCriterionId == null ? 0 : 1)));
            NotificationManagerService.this.mNotificationRecordLogger.log(NotificationRecordLogger.NotificationEvent.NOTIFICATION_SNOOZED, r);
            NotificationManagerService.this.reportUserInteraction(r);
            boolean wasPosted = NotificationManagerService.this.removeFromNotificationListsLocked(r);
            NotificationManagerService.this.cancelNotificationLocked(r, false, 18, wasPosted, null);
            NotificationManagerService.this.updateLightsLocked();
            if (this.mSnoozeCriterionId == null) {
                NotificationManagerService.this.mSnoozeHelper.snooze(r, this.mDuration);
            } else {
                NotificationManagerService.this.mAssistants.notifyAssistantSnoozedLocked(r.getSbn(), this.mSnoozeCriterionId);
                NotificationManagerService.this.mSnoozeHelper.snooze(r, this.mSnoozeCriterionId);
            }
            r.recordSnoozed();
            NotificationManagerService.this.handleSavePolicyFile();
        }
    }

    protected class CancelNotificationRunnable implements Runnable {
        private final int mCallingPid;
        private final int mCallingUid;
        private final int mCount;
        private final int mId;
        private final ManagedServices.ManagedServiceInfo mListener;
        private final int mMustHaveFlags;
        private final int mMustNotHaveFlags;
        private final String mPkg;
        private final int mRank;
        private final int mReason;
        private final boolean mSendDelete;
        private final String mTag;
        private final int mUserId;
        private final long mWhen;

        CancelNotificationRunnable(int callingUid, int callingPid, String pkg, String tag, int id, int mustHaveFlags, int mustNotHaveFlags, boolean sendDelete, int userId, int reason, int rank, int count, ManagedServices.ManagedServiceInfo listener) {
            this.mCallingUid = callingUid;
            this.mCallingPid = callingPid;
            this.mPkg = pkg;
            this.mTag = tag;
            this.mId = id;
            this.mMustHaveFlags = mustHaveFlags;
            this.mMustNotHaveFlags = mustNotHaveFlags;
            this.mSendDelete = sendDelete;
            this.mUserId = userId;
            this.mReason = reason;
            this.mRank = rank;
            this.mCount = count;
            this.mListener = listener;
            this.mWhen = NotificationManagerService.this.mSystemClock.currentTimeMillis();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doNotificationCancelLocked() {
            FlagChecker childrenFlagChecker;
            ManagedServices.ManagedServiceInfo managedServiceInfo = this.mListener;
            String listenerName = managedServiceInfo == null ? null : managedServiceInfo.component.toShortString();
            NotificationManagerService notificationManagerService = NotificationManagerService.this;
            NotificationRecord r = notificationManagerService.findNotificationByListLocked(notificationManagerService.mNotificationList, this.mPkg, this.mTag, this.mId, this.mUserId);
            if (r != null) {
                if (this.mReason == 1) {
                    NotificationManagerService.this.mUsageStats.registerClickedByUser(r);
                }
                if (this.mReason == 10 && (r.getNotification().flags & 4096) != 0) {
                    NotificationManagerService.this.mNotificationDelegate.onBubbleNotificationSuppressionChanged(r.getKey(), true);
                    return;
                }
                int i = r.getNotification().flags;
                int i2 = this.mMustHaveFlags;
                if ((i & i2) != i2 || (r.getNotification().flags & this.mMustNotHaveFlags) != 0) {
                    return;
                }
                int i3 = this.mReason;
                if (i3 != 2 && i3 != 1 && i3 != 3) {
                    childrenFlagChecker = null;
                } else {
                    FlagChecker childrenFlagChecker2 = new FlagChecker() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$CancelNotificationRunnable$XBVTY1rRqCxv8gkX583KsdWKSbE
                        @Override // com.android.server.notification.NotificationManagerService.FlagChecker
                        public final boolean apply(int i4) {
                            return NotificationManagerService.CancelNotificationRunnable.lambda$doNotificationCancelLocked$0(i4);
                        }
                    };
                    childrenFlagChecker = childrenFlagChecker2;
                }
                boolean wasPosted = NotificationManagerService.this.removePreviousFromNotificationListsLocked(r, this.mWhen);
                NotificationManagerService.this.cancelNotificationLocked(r, this.mSendDelete, this.mReason, this.mRank, this.mCount, wasPosted, listenerName);
                NotificationManagerService.this.cancelGroupChildrenLocked(r, this.mCallingUid, this.mCallingPid, listenerName, this.mSendDelete, childrenFlagChecker, this.mReason);
                NotificationManagerService.this.updateLightsLocked();
                if (NotificationManagerService.this.mShortcutHelper != null) {
                    NotificationManagerService.this.mShortcutHelper.maybeListenForShortcutChangesForBubbles(r, true, NotificationManagerService.this.mHandler);
                    return;
                }
                return;
            }
            if (this.mReason != 18) {
                boolean wasSnoozed = NotificationManagerService.this.mSnoozeHelper.cancel(this.mUserId, this.mPkg, this.mTag, this.mId);
                if (wasSnoozed) {
                    NotificationManagerService.this.handleSavePolicyFile();
                }
            }
        }

        static /* synthetic */ boolean lambda$doNotificationCancelLocked$0(int flags) {
            if ((flags & 4096) != 0) {
                return false;
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            ManagedServices.ManagedServiceInfo managedServiceInfo = this.mListener;
            String listenerName = managedServiceInfo == null ? null : managedServiceInfo.component.toShortString();
            if (NotificationManagerService.DBG) {
                EventLogTags.writeNotificationCancel(this.mCallingUid, this.mCallingPid, this.mPkg, this.mId, this.mTag, this.mUserId, this.mMustHaveFlags, this.mMustNotHaveFlags, this.mReason, listenerName);
            }
            synchronized (NotificationManagerService.this.mNotificationLock) {
                List<NotificationRecord> enqueued = NotificationManagerService.this.findEnqueuedNotificationsForCriteria(this.mPkg, this.mTag, this.mId, this.mUserId);
                if (enqueued.size() > 0) {
                    NotificationRecord enqueuedToAttach = enqueued.get(enqueued.size() - 1);
                    ArrayList<CancelNotificationRunnable> delayed = NotificationManagerService.this.mDelayedCancelations.get(enqueuedToAttach);
                    if (delayed == null) {
                        delayed = new ArrayList<>();
                    }
                    delayed.add(this);
                    NotificationManagerService.this.mDelayedCancelations.put(enqueuedToAttach, delayed);
                    return;
                }
                doNotificationCancelLocked();
            }
        }
    }

    protected class EnqueueNotificationRunnable implements Runnable {
        private final boolean isAppForeground;
        private final NotificationRecord r;
        private final int userId;

        EnqueueNotificationRunnable(int userId, NotificationRecord r, boolean foreground) {
            this.userId = userId;
            this.r = r;
            this.isAppForeground = foreground;
        }

        @Override // java.lang.Runnable
        public void run() {
            int enqueueStatus;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                Long snoozeAt = NotificationManagerService.this.mSnoozeHelper.getSnoozeTimeForUnpostedNotification(this.r.getUser().getIdentifier(), this.r.getSbn().getPackageName(), this.r.getSbn().getKey());
                long currentTime = NotificationManagerService.this.mSystemClock.currentTimeMillis();
                if (snoozeAt.longValue() > currentTime) {
                    NotificationManagerService.this.new SnoozeNotificationRunnable(this.r.getSbn().getKey(), snoozeAt.longValue() - currentTime, null).snoozeLocked(this.r);
                    return;
                }
                String contextId = NotificationManagerService.this.mSnoozeHelper.getSnoozeContextForUnpostedNotification(this.r.getUser().getIdentifier(), this.r.getSbn().getPackageName(), this.r.getSbn().getKey());
                if (contextId == null) {
                    NotificationManagerService.this.mEnqueuedNotifications.add(this.r);
                    NotificationManagerService.this.scheduleTimeoutLocked(this.r);
                    StatusBarNotification n = this.r.getSbn();
                    if (NotificationManagerService.DBG) {
                        Slog.d(NotificationManagerService.TAG, "EnqueueNotificationRunnable.run for: " + n.getKey());
                    }
                    NotificationRecord old = NotificationManagerService.this.mNotificationsByKey.get(n.getKey());
                    if (old != null) {
                        this.r.copyRankingInformation(old);
                    }
                    int callingUid = n.getUid();
                    int callingPid = n.getInitialPid();
                    Notification notification = n.getNotification();
                    String pkg = n.getPackageName();
                    int id = n.getId();
                    String tag = n.getTag();
                    NotificationManagerService.this.updateNotificationBubbleFlags(this.r, this.isAppForeground);
                    NotificationManagerService.this.handleGroupedNotificationLocked(this.r, old, callingUid, callingPid);
                    if (n.isGroup() && notification.isGroupChild()) {
                        NotificationManagerService.this.mSnoozeHelper.repostGroupSummary(pkg, this.r.getUserId(), n.getGroupKey());
                    }
                    if (!pkg.equals("com.android.providers.downloads") || Log.isLoggable("DownloadManager", 2)) {
                        if (old == null) {
                            enqueueStatus = 0;
                        } else {
                            enqueueStatus = 1;
                        }
                        EventLogTags.writeNotificationEnqueue(callingUid, callingPid, pkg, id, tag, this.userId, notification.toString(), enqueueStatus);
                    }
                    NotificationManagerService.this.postPostNotificationRunnableMaybeDelayedLocked(this.r, NotificationManagerService.this.new PostNotificationRunnable(this.r.getKey()));
                    return;
                }
                NotificationManagerService.this.new SnoozeNotificationRunnable(this.r.getSbn().getKey(), 0L, contextId).snoozeLocked(this.r);
            }
        }
    }

    protected void postPostNotificationRunnableMaybeDelayedLocked(NotificationRecord r, PostNotificationRunnable runnable) {
        if (!this.mAssistants.isEnabled()) {
            this.mHandler.post(runnable);
        } else {
            this.mAssistants.onNotificationEnqueuedLocked(r);
            this.mHandler.postDelayed(runnable, DELAY_FOR_ASSISTANT_TIME);
        }
    }

    boolean isPackagePausedOrSuspended(String pkg, int uid) {
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        int flags = pmi.getDistractingPackageRestrictions(pkg, Binder.getCallingUserHandle().getIdentifier());
        boolean isPaused = (flags & 2) != 0;
        return isPaused | isPackageSuspendedForUser(pkg, uid);
    }

    protected class PostNotificationRunnable implements Runnable {
        private final String key;

        PostNotificationRunnable(String key) {
            this.key = key;
        }

        @Override // java.lang.Runnable
        public void run() {
            NotificationRecord old;
            int buzzBeepBlinkLoggingCode;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                NotificationRecord r = null;
                try {
                    int N = NotificationManagerService.this.mEnqueuedNotifications.size();
                    for (int i = 0; i < N; i++) {
                        NotificationRecord enqueued = NotificationManagerService.this.mEnqueuedNotifications.get(i);
                        if (Objects.equals(this.key, enqueued.getKey())) {
                            r = enqueued;
                            break;
                        }
                    }
                    if (r == null) {
                        Slog.i(NotificationManagerService.TAG, "Cannot find enqueued record for key: " + this.key);
                        int N2 = NotificationManagerService.this.mEnqueuedNotifications.size();
                        NotificationRecord enqueued2 = null;
                        for (int i2 = 0; i2 < N2; i2++) {
                            enqueued2 = NotificationManagerService.this.mEnqueuedNotifications.get(i2);
                            if (Objects.equals(this.key, enqueued2.getKey())) {
                                NotificationManagerService.this.mEnqueuedNotifications.remove(i2);
                                break;
                            }
                        }
                        if (enqueued2 != null && NotificationManagerService.this.mDelayedCancelations.get(enqueued2) != null) {
                            for (CancelNotificationRunnable r2 : NotificationManagerService.this.mDelayedCancelations.get(enqueued2)) {
                                r2.doNotificationCancelLocked();
                            }
                            NotificationManagerService.this.mDelayedCancelations.remove(enqueued2);
                        }
                        return;
                    }
                    if (NotificationManagerService.this.isBlocked(r)) {
                        Slog.i(NotificationManagerService.TAG, "notification blocked by assistant request");
                        int N3 = NotificationManagerService.this.mEnqueuedNotifications.size();
                        NotificationRecord enqueued3 = null;
                        for (int i3 = 0; i3 < N3; i3++) {
                            enqueued3 = NotificationManagerService.this.mEnqueuedNotifications.get(i3);
                            if (Objects.equals(this.key, enqueued3.getKey())) {
                                NotificationManagerService.this.mEnqueuedNotifications.remove(i3);
                                break;
                            }
                        }
                        if (enqueued3 != null && NotificationManagerService.this.mDelayedCancelations.get(enqueued3) != null) {
                            for (CancelNotificationRunnable r3 : NotificationManagerService.this.mDelayedCancelations.get(enqueued3)) {
                                r3.doNotificationCancelLocked();
                            }
                            NotificationManagerService.this.mDelayedCancelations.remove(enqueued3);
                        }
                        return;
                    }
                    boolean isPackageSuspended = NotificationManagerService.this.isPackagePausedOrSuspended(r.getSbn().getPackageName(), r.getUid());
                    r.setHidden(isPackageSuspended);
                    if (isPackageSuspended) {
                        NotificationManagerService.this.mUsageStats.registerSuspendedByAdmin(r);
                    }
                    NotificationRecord old2 = NotificationManagerService.this.mNotificationsByKey.get(this.key);
                    final StatusBarNotification n = r.getSbn();
                    Notification notification = n.getNotification();
                    if (old2 == null || old2.getSbn().getInstanceId() == null) {
                        n.setInstanceId(NotificationManagerService.this.mNotificationInstanceIdSequence.newInstanceId());
                    } else {
                        n.setInstanceId(old2.getSbn().getInstanceId());
                    }
                    int index = NotificationManagerService.this.indexOfNotificationLocked(n.getKey());
                    if (index < 0) {
                        NotificationManagerService.this.mNotificationList.add(r);
                        NotificationManagerService.this.mUsageStats.registerPostedByApp(r);
                        r.setInterruptive(NotificationManagerService.this.isVisuallyInterruptive(null, r));
                        old = old2;
                    } else {
                        NotificationRecord old3 = NotificationManagerService.this.mNotificationList.get(index);
                        NotificationManagerService.this.mNotificationList.set(index, r);
                        NotificationManagerService.this.mUsageStats.registerUpdatedByApp(r, old3);
                        notification.flags |= old3.getNotification().flags & 64;
                        r.isUpdate = true;
                        boolean isInterruptive = NotificationManagerService.this.isVisuallyInterruptive(old3, r);
                        r.setTextChanged(isInterruptive);
                        r.setInterruptive(isInterruptive);
                        old = old3;
                    }
                    NotificationManagerService.this.mNotificationsByKey.put(n.getKey(), r);
                    if ((notification.flags & 64) != 0) {
                        notification.flags |= 34;
                    }
                    NotificationManagerService.this.mRankingHelper.extractSignals(r);
                    NotificationManagerService.this.mRankingHelper.sort(NotificationManagerService.this.mNotificationList);
                    int position = NotificationManagerService.this.mRankingHelper.indexOf(NotificationManagerService.this.mNotificationList, r);
                    if (r.isHidden()) {
                        buzzBeepBlinkLoggingCode = 0;
                    } else {
                        int buzzBeepBlinkLoggingCode2 = NotificationManagerService.this.buzzBeepBlinkLocked(r);
                        buzzBeepBlinkLoggingCode = buzzBeepBlinkLoggingCode2;
                    }
                    if (notification.getSmallIcon() != null) {
                        StatusBarNotification oldSbn = old != null ? old.getSbn() : null;
                        NotificationManagerService.this.mListeners.notifyPostedLocked(r, old);
                        if ((oldSbn == null || !Objects.equals(oldSbn.getGroup(), n.getGroup())) && !NotificationManagerService.this.isCritical(r)) {
                            NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.PostNotificationRunnable.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    NotificationManagerService.this.mGroupHelper.onNotificationPosted(n, NotificationManagerService.this.hasAutoGroupSummaryLocked(n));
                                }
                            });
                        } else if (oldSbn != null) {
                            final NotificationRecord finalRecord = r;
                            NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$PostNotificationRunnable$9JuPmiaA-c5lGdegev6EaTigwWc
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$run$0$NotificationManagerService$PostNotificationRunnable(finalRecord, n);
                                }
                            });
                        }
                    } else {
                        Slog.e(NotificationManagerService.TAG, "Not posting notification without small icon: " + notification);
                        if (old != null && !old.isCanceled) {
                            NotificationManagerService.this.mListeners.notifyRemovedLocked(r, 4, r.getStats());
                            NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.PostNotificationRunnable.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    NotificationManagerService.this.mGroupHelper.onNotificationRemoved(n);
                                }
                            });
                        }
                        Slog.e(NotificationManagerService.TAG, "WARNING: In a future release this will crash the app: " + n.getPackageName());
                    }
                    if (NotificationManagerService.this.mShortcutHelper != null) {
                        NotificationManagerService.this.mShortcutHelper.maybeListenForShortcutChangesForBubbles(r, false, NotificationManagerService.this.mHandler);
                    }
                    NotificationManagerService.this.maybeRecordInterruptionLocked(r);
                    NotificationManagerService.this.maybeRegisterMessageSent(r);
                    NotificationManagerService.this.mNotificationRecordLogger.maybeLogNotificationPosted(r, old, position, buzzBeepBlinkLoggingCode, NotificationManagerService.this.getGroupInstanceId(n.getGroupKey()));
                    int N4 = NotificationManagerService.this.mEnqueuedNotifications.size();
                    NotificationRecord enqueued4 = null;
                    for (int i4 = 0; i4 < N4; i4++) {
                        enqueued4 = NotificationManagerService.this.mEnqueuedNotifications.get(i4);
                        if (Objects.equals(this.key, enqueued4.getKey())) {
                            NotificationManagerService.this.mEnqueuedNotifications.remove(i4);
                            break;
                        }
                    }
                    if (enqueued4 != null && NotificationManagerService.this.mDelayedCancelations.get(enqueued4) != null) {
                        for (CancelNotificationRunnable r4 : NotificationManagerService.this.mDelayedCancelations.get(enqueued4)) {
                            r4.doNotificationCancelLocked();
                        }
                        NotificationManagerService.this.mDelayedCancelations.remove(enqueued4);
                    }
                } catch (Throwable th) {
                    int N5 = NotificationManagerService.this.mEnqueuedNotifications.size();
                    NotificationRecord enqueued5 = null;
                    for (int i5 = 0; i5 < N5; i5++) {
                        enqueued5 = NotificationManagerService.this.mEnqueuedNotifications.get(i5);
                        if (Objects.equals(this.key, enqueued5.getKey())) {
                            NotificationManagerService.this.mEnqueuedNotifications.remove(i5);
                            break;
                        }
                    }
                    if (enqueued5 != null && NotificationManagerService.this.mDelayedCancelations.get(enqueued5) != null) {
                        for (CancelNotificationRunnable r5 : NotificationManagerService.this.mDelayedCancelations.get(enqueued5)) {
                            r5.doNotificationCancelLocked();
                        }
                        NotificationManagerService.this.mDelayedCancelations.remove(enqueued5);
                    }
                    throw th;
                }
            }
        }

        public /* synthetic */ void lambda$run$0$NotificationManagerService$PostNotificationRunnable(NotificationRecord finalRecord, StatusBarNotification n) {
            NotificationManagerService.this.mGroupHelper.onNotificationUpdated(finalRecord.getSbn(), NotificationManagerService.this.hasAutoGroupSummaryLocked(n));
        }
    }

    InstanceId getGroupInstanceId(String groupKey) {
        NotificationRecord group;
        if (groupKey == null || (group = this.mSummaryByGroupKey.get(groupKey)) == null) {
            return null;
        }
        return group.getSbn().getInstanceId();
    }

    protected boolean isVisuallyInterruptive(NotificationRecord old, NotificationRecord r) {
        if (r.getSbn().isGroup() && r.getSbn().getNotification().isGroupSummary()) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is not interruptive: summary");
            }
            return false;
        }
        if (old == null) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: new notification");
            }
            return true;
        }
        if (r == null) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is not interruptive: null");
            }
            return false;
        }
        Notification oldN = old.getSbn().getNotification();
        Notification newN = r.getSbn().getNotification();
        if (oldN.extras == null || newN.extras == null) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is not interruptive: no extras");
            }
            return false;
        }
        if ((r.getSbn().getNotification().flags & 64) != 0) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is not interruptive: foreground service");
            }
            return false;
        }
        String oldTitle = String.valueOf(oldN.extras.get("android.title"));
        String newTitle = String.valueOf(newN.extras.get("android.title"));
        if (!Objects.equals(oldTitle, newTitle)) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: changed title");
                StringBuilder sb = new StringBuilder();
                sb.append("INTERRUPTIVENESS: ");
                sb.append(String.format("   old title: %s (%s@0x%08x)", oldTitle, oldTitle.getClass(), Integer.valueOf(oldTitle.hashCode())));
                Slog.v(TAG, sb.toString());
                Slog.v(TAG, "INTERRUPTIVENESS: " + String.format("   new title: %s (%s@0x%08x)", newTitle, newTitle.getClass(), Integer.valueOf(newTitle.hashCode())));
            }
            return true;
        }
        String oldText = String.valueOf(oldN.extras.get("android.text"));
        String newText = String.valueOf(newN.extras.get("android.text"));
        if (!Objects.equals(oldText, newText)) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: changed text");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("INTERRUPTIVENESS: ");
                sb2.append(String.format("   old text: %s (%s@0x%08x)", oldText, oldText.getClass(), Integer.valueOf(oldText.hashCode())));
                Slog.v(TAG, sb2.toString());
                Slog.v(TAG, "INTERRUPTIVENESS: " + String.format("   new text: %s (%s@0x%08x)", newText, newText.getClass(), Integer.valueOf(newText.hashCode())));
            }
            return true;
        }
        if (oldN.hasCompletedProgress() != newN.hasCompletedProgress()) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: completed progress");
            }
            return true;
        }
        if (r.canBubble()) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is not interruptive: bubble");
            }
            return false;
        }
        if (Notification.areActionsVisiblyDifferent(oldN, newN)) {
            if (DEBUG_INTERRUPTIVENESS) {
                Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: changed actions");
            }
            return true;
        }
        try {
            Notification.Builder oldB = Notification.Builder.recoverBuilder(getContext(), oldN);
            Notification.Builder newB = Notification.Builder.recoverBuilder(getContext(), newN);
            if (Notification.areStyledNotificationsVisiblyDifferent(oldB, newB)) {
                if (DEBUG_INTERRUPTIVENESS) {
                    Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: styles differ");
                }
                return true;
            }
            if (Notification.areRemoteViewsChanged(oldB, newB)) {
                if (DEBUG_INTERRUPTIVENESS) {
                    Slog.v(TAG, "INTERRUPTIVENESS: " + r.getKey() + " is interruptive: remoteviews differ");
                }
                return true;
            }
            return false;
        } catch (Exception e) {
            Slog.w(TAG, "error recovering builder", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCritical(NotificationRecord record) {
        return record.getCriticality() < 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGroupedNotificationLocked(NotificationRecord r, NotificationRecord old, int callingUid, int callingPid) {
        NotificationRecord removedSummary;
        StatusBarNotification sbn = r.getSbn();
        Notification n = sbn.getNotification();
        if (n.isGroupSummary() && !sbn.isAppGroup()) {
            n.flags &= -513;
        }
        String group = sbn.getGroupKey();
        boolean isSummary = n.isGroupSummary();
        Notification oldN = old != null ? old.getSbn().getNotification() : null;
        String oldGroup = old != null ? old.getSbn().getGroupKey() : null;
        boolean oldIsSummary = old != null && oldN.isGroupSummary();
        if (oldIsSummary && (removedSummary = this.mSummaryByGroupKey.remove(oldGroup)) != old) {
            String removedKey = removedSummary != null ? removedSummary.getKey() : "<null>";
            Slog.w(TAG, "Removed summary didn't match old notification: old=" + old.getKey() + ", removed=" + removedKey);
        }
        if (isSummary) {
            this.mSummaryByGroupKey.put(group, r);
        }
        if (oldIsSummary) {
            if (!isSummary || !oldGroup.equals(group)) {
                cancelGroupChildrenLocked(old, callingUid, callingPid, null, false, null, 8);
            }
        }
    }

    void scheduleTimeoutLocked(NotificationRecord record) {
        if (record.getNotification().getTimeoutAfter() > 0) {
            PendingIntent pi = PendingIntent.getBroadcast(getContext(), 1, new Intent(ACTION_NOTIFICATION_TIMEOUT).setPackage(PackageManagerService.PLATFORM_PACKAGE_NAME).setData(new Uri.Builder().scheme(SCHEME_TIMEOUT).appendPath(record.getKey()).build()).addFlags(AudioFormat.EVRC).putExtra(EXTRA_KEY, record.getKey()), AudioFormat.DTS_HD);
            this.mAlarmManager.setExactAndAllowWhileIdle(2, this.mSystemClock.elapsedRealtime() + record.getNotification().getTimeoutAfter(), pi);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    int buzzBeepBlinkLocked(NotificationRecord record) {
        boolean aboveThreshold;
        ?? r2;
        ?? r9;
        boolean z;
        LogicalLight logicalLight;
        boolean buzz;
        boolean beep;
        boolean beep2;
        if (this.mIsAutomotive && !this.mNotificationEffectsEnabledForAutomotive) {
            return 0;
        }
        int i = 0;
        String key = record.getKey();
        if (this.mIsAutomotive) {
            aboveThreshold = record.getImportance() > 3;
        } else {
            aboveThreshold = record.getImportance() >= 3;
        }
        boolean wasBeep = key != null && key.equals(this.mSoundNotificationKey);
        boolean wasBuzz = key != null && key.equals(this.mVibrateNotificationKey);
        boolean hasValidVibrate = false;
        boolean hasValidSound = false;
        boolean sentAccessibilityEvent = false;
        boolean suppressedByDnd = record.isIntercepted() && (record.getSuppressedVisualEffects() & 32) != 0;
        if (!record.isUpdate && record.getImportance() > 1 && !suppressedByDnd && isNotificationForCurrentUser(record)) {
            sendAccessibilityEvent(record);
            sentAccessibilityEvent = true;
        }
        if (aboveThreshold && isNotificationForCurrentUser(record) && this.mSystemReady && this.mAudioManager != null) {
            Uri soundUri = record.getSound();
            hasValidSound = (soundUri == null || Uri.EMPTY.equals(soundUri)) ? false : true;
            long[] vibration = record.getVibration();
            if (vibration == null && hasValidSound) {
                buzz = false;
                beep = false;
                if (this.mAudioManager.getRingerModeInternal() == 1 && this.mAudioManager.getStreamVolume(AudioAttributes.toLegacyStreamType(record.getAudioAttributes())) == 0) {
                    vibration = this.mFallbackVibrationPattern;
                }
            } else {
                buzz = false;
                beep = false;
            }
            hasValidVibrate = vibration != null;
            boolean hasAudibleAlert = hasValidSound || hasValidVibrate;
            if (hasAudibleAlert && !shouldMuteNotificationLocked(record)) {
                if (!sentAccessibilityEvent) {
                    sendAccessibilityEvent(record);
                }
                if (DBG) {
                    Slog.v(TAG, "Interrupting!");
                }
                if (!hasValidSound) {
                    beep2 = beep;
                } else {
                    if (isInCall()) {
                        playInCallNotification();
                        beep2 = true;
                    } else {
                        beep2 = playSound(record, soundUri);
                    }
                    if (beep2) {
                        this.mSoundNotificationKey = key;
                    }
                }
                boolean ringerModeSilent = this.mAudioManager.getRingerModeInternal() == 0;
                if (!isInCall() && hasValidVibrate && !ringerModeSilent && (buzz = playVibration(record, vibration, hasValidSound))) {
                    this.mVibrateNotificationKey = key;
                }
                r2 = buzz;
                r9 = beep2;
            } else if ((record.getFlags() & 4) == 0) {
                r2 = buzz;
                r9 = beep;
            } else {
                hasValidSound = false;
                r2 = buzz;
                r9 = beep;
            }
        } else {
            r2 = 0;
            r9 = 0;
        }
        if (wasBeep && !hasValidSound) {
            clearSoundLocked();
        }
        if (wasBuzz && !hasValidVibrate) {
            clearVibrateLocked();
        }
        boolean wasShowLights = this.mLights.remove(key);
        if (canShowLightsLocked(record, aboveThreshold)) {
            this.mLights.add(key);
            updateLightsLocked();
            if (this.mUseAttentionLight && (logicalLight = this.mAttentionLight) != null) {
                logicalLight.pulse();
            }
            i = 1;
        } else if (wasShowLights) {
            updateLightsLocked();
        }
        int buzzBeepBlink = (r9 != 0 ? 2 : 0) | r2 | (i != 0 ? 4 : 0);
        if (buzzBeepBlink > 0) {
            if (record.getSbn().isGroup() && record.getSbn().getNotification().isGroupSummary()) {
                if (DEBUG_INTERRUPTIVENESS) {
                    Slog.v(TAG, "INTERRUPTIVENESS: " + record.getKey() + " is not interruptive: summary");
                }
            } else {
                boolean aboveThreshold2 = record.canBubble();
                if (aboveThreshold2) {
                    if (DEBUG_INTERRUPTIVENESS) {
                        Slog.v(TAG, "INTERRUPTIVENESS: " + record.getKey() + " is not interruptive: bubble");
                    }
                } else {
                    record.setInterruptive(true);
                    if (DEBUG_INTERRUPTIVENESS) {
                        Slog.v(TAG, "INTERRUPTIVENESS: " + record.getKey() + " is interruptive: alerted");
                    }
                }
            }
            z = true;
            MetricsLogger.action(record.getLogMaker().setCategory(199).setType(1).setSubtype(buzzBeepBlink));
            EventLogTags.writeNotificationAlert(key, r2, r9, i);
        } else {
            z = true;
        }
        if (r2 == 0 && r9 == 0) {
            z = false;
        }
        record.setAudiblyAlerted(z);
        return buzzBeepBlink;
    }

    boolean canShowLightsLocked(NotificationRecord record, boolean aboveThreshold) {
        if (!this.mHasLight || !this.mNotificationPulseEnabled || record.getLight() == null || !aboveThreshold || (record.getSuppressedVisualEffects() & 8) != 0) {
            return false;
        }
        Notification notification = record.getNotification();
        if (!record.isUpdate || (notification.flags & 8) == 0) {
            return ((record.getSbn().isGroup() && record.getNotification().suppressAlertingDueToGrouping()) || isInCall() || this.mScreenOn) ? false : true;
        }
        return false;
    }

    boolean shouldMuteNotificationLocked(NotificationRecord record) {
        Notification notification = record.getNotification();
        if ((record.isUpdate && (notification.flags & 8) != 0) || record.shouldPostSilently()) {
            return true;
        }
        String disableEffects = disableNotificationEffects(record);
        if (disableEffects != null) {
            ZenLog.traceDisableEffects(record, disableEffects);
            return true;
        }
        if (record.isIntercepted()) {
            return true;
        }
        if (record.getSbn().isGroup() && notification.suppressAlertingDueToGrouping()) {
            return true;
        }
        String pkg = record.getSbn().getPackageName();
        if (!this.mUsageStats.isAlertRateLimited(pkg)) {
            return isLoopingRingtoneNotification(this.mNotificationsByKey.get(this.mSoundNotificationKey)) || isLoopingRingtoneNotification(this.mNotificationsByKey.get(this.mVibrateNotificationKey));
        }
        Slog.e(TAG, "Muting recently noisy " + record.getKey());
        return true;
    }

    private boolean isLoopingRingtoneNotification(NotificationRecord playingRecord) {
        if (playingRecord != null && playingRecord.getAudioAttributes().getUsage() == 6 && (playingRecord.getNotification().flags & 4) != 0) {
            return true;
        }
        return false;
    }

    private boolean playSound(NotificationRecord record, Uri soundUri) {
        boolean looping = (record.getNotification().flags & 4) != 0;
        if (!this.mAudioManager.isAudioFocusExclusive() && this.mAudioManager.getStreamVolume(AudioAttributes.toLegacyStreamType(record.getAudioAttributes())) != 0) {
            long identity = Binder.clearCallingIdentity();
            try {
                IRingtonePlayer player = this.mAudioManager.getRingtonePlayer();
                if (player != null) {
                    Log.i(TAG, "PackageName=" + record.getSbn().getPackageName() + " to playing sound " + soundUri + " with attributes " + record.getAudioAttributes());
                    player.playAsync(soundUri, record.getSbn().getUser(), looping, record.getAudioAttributes());
                    return true;
                }
            } catch (RemoteException e) {
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
        return false;
    }

    private boolean playVibration(final NotificationRecord record, long[] vibration, boolean delayVibForSound) {
        long identity = Binder.clearCallingIdentity();
        try {
            boolean insistent = (record.getNotification().flags & 4) != 0;
            final VibrationEffect effect = VibrationEffect.createWaveform(vibration, insistent ? 0 : -1);
            if (delayVibForSound) {
                new Thread(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$BDavS_Sg4m_dKO3ZgtuCsFeqqms
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$playVibration$5$NotificationManagerService(record, effect);
                    }
                }).start();
            } else {
                vibrate(record, effect, false);
            }
            return true;
        } catch (IllegalArgumentException e) {
            Slog.e(TAG, "Error creating vibration waveform with pattern: " + Arrays.toString(vibration));
            return false;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public /* synthetic */ void lambda$playVibration$5$NotificationManagerService(NotificationRecord record, VibrationEffect effect) {
        int waitMs = this.mAudioManager.getFocusRampTimeMs(3, record.getAudioAttributes());
        if (DBG) {
            Slog.v(TAG, "Delaying vibration by " + waitMs + "ms");
        }
        try {
            Thread.sleep(waitMs);
        } catch (InterruptedException e) {
        }
        synchronized (this.mNotificationLock) {
            if (this.mNotificationsByKey.get(record.getKey()) != null) {
                vibrate(record, effect, true);
            } else {
                Slog.e(TAG, "No vibration for canceled notification : " + record.getKey());
            }
        }
    }

    private void vibrate(NotificationRecord record, VibrationEffect effect, boolean delayed) {
        StringBuilder sb = new StringBuilder();
        sb.append("Notification (");
        sb.append(record.getSbn().getOpPkg());
        sb.append(" ");
        sb.append(record.getSbn().getUid());
        sb.append(") ");
        sb.append(delayed ? "(Delayed)" : "");
        String reason = sb.toString();
        this.mVibrator.vibrate(1000, PackageManagerService.PLATFORM_PACKAGE_NAME, effect, reason, record.getAudioAttributes());
    }

    private boolean isNotificationForCurrentUser(NotificationRecord record) {
        long token = Binder.clearCallingIdentity();
        try {
            int currentUser = ActivityManager.getCurrentUser();
            Binder.restoreCallingIdentity(token);
            return record.getUserId() == -1 || record.getUserId() == currentUser || this.mUserProfiles.isCurrentProfile(record.getUserId());
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.server.notification.NotificationManagerService$13] */
    protected void playInCallNotification() {
        if (this.mAudioManager.getRingerModeInternal() == 2 && Settings.Secure.getInt(getContext().getContentResolver(), "in_call_notification_enabled", 1) != 0) {
            new Thread() { // from class: com.android.server.notification.NotificationManagerService.13
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    long identity = Binder.clearCallingIdentity();
                    try {
                        IRingtonePlayer player = NotificationManagerService.this.mAudioManager.getRingtonePlayer();
                        if (player != null) {
                            if (NotificationManagerService.this.mCallNotificationToken != null) {
                                player.stop(NotificationManagerService.this.mCallNotificationToken);
                            }
                            NotificationManagerService.this.mCallNotificationToken = new Binder();
                            player.play(NotificationManagerService.this.mCallNotificationToken, NotificationManagerService.this.mInCallNotificationUri, NotificationManagerService.this.mInCallNotificationAudioAttributes, NotificationManagerService.this.mInCallNotificationVolume, false);
                        }
                    } catch (RemoteException e) {
                    } finally {
                        Binder.restoreCallingIdentity(identity);
                    }
                }
            }.start();
        }
    }

    void showNextToastLocked() {
        ToastRecord record = this.mToastQueue.get(0);
        while (record != null) {
            if (record.show()) {
                scheduleDurationReachedLocked(record);
                return;
            }
            int index = this.mToastQueue.indexOf(record);
            if (index >= 0) {
                this.mToastQueue.remove(index);
            }
            record = this.mToastQueue.size() > 0 ? this.mToastQueue.get(0) : null;
        }
    }

    void cancelToastLocked(int index) {
        ToastRecord record = this.mToastQueue.get(index);
        record.hide();
        ToastRecord lastToast = this.mToastQueue.remove(index);
        this.mWindowManagerInternal.removeWindowToken(lastToast.windowToken, false, lastToast.displayId);
        scheduleKillTokenTimeout(lastToast);
        keepProcessAliveForToastIfNeededLocked(record.pid);
        if (this.mToastQueue.size() > 0) {
            showNextToastLocked();
        }
    }

    void finishWindowTokenLocked(IBinder t, int displayId) {
        this.mHandler.removeCallbacksAndMessages(t);
        this.mWindowManagerInternal.removeWindowToken(t, true, displayId);
    }

    private void scheduleDurationReachedLocked(ToastRecord r) {
        this.mHandler.removeCallbacksAndMessages(r);
        Message m = Message.obtain(this.mHandler, 2, r);
        int delay = r.getDuration() == 1 ? 3500 : SHORT_DELAY;
        this.mHandler.sendMessageDelayed(m, this.mAccessibilityManager.getRecommendedTimeoutMillis(delay, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDurationReached(ToastRecord record) {
        if (DBG) {
            Slog.d(TAG, "Timeout pkg=" + record.pkg + " token=" + record.token);
        }
        synchronized (this.mToastQueue) {
            int index = indexOfToastLocked(record.pkg, record.token);
            if (index >= 0) {
                cancelToastLocked(index);
            }
        }
    }

    private void scheduleKillTokenTimeout(ToastRecord r) {
        this.mHandler.removeCallbacksAndMessages(r);
        Message m = Message.obtain(this.mHandler, 7, r);
        this.mHandler.sendMessageDelayed(m, 11000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleKillTokenTimeout(ToastRecord record) {
        if (DBG) {
            Slog.d(TAG, "Kill Token Timeout token=" + record.windowToken);
        }
        synchronized (this.mToastQueue) {
            finishWindowTokenLocked(record.windowToken, record.displayId);
        }
    }

    int indexOfToastLocked(String pkg, IBinder token) {
        ArrayList<ToastRecord> list = this.mToastQueue;
        int len = list.size();
        for (int i = 0; i < len; i++) {
            ToastRecord r = list.get(i);
            if (r.pkg.equals(pkg) && r.token == token) {
                return i;
            }
        }
        return -1;
    }

    public void keepProcessAliveForToastIfNeeded(int pid) {
        synchronized (this.mToastQueue) {
            keepProcessAliveForToastIfNeededLocked(pid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void keepProcessAliveForToastIfNeededLocked(int pid) {
        int toastCount = 0;
        ArrayList<ToastRecord> list = this.mToastQueue;
        int n = list.size();
        for (int i = 0; i < n; i++) {
            ToastRecord r = list.get(i);
            if (r.pid == pid) {
                toastCount++;
            }
        }
        try {
            this.mAm.setProcessImportant(this.mForegroundToken, pid, toastCount > 0, "toast");
        } catch (RemoteException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRankingReconsideration(Message message) throws Throwable {
        if (message.obj instanceof RankingReconsideration) {
            RankingReconsideration recon = (RankingReconsideration) message.obj;
            recon.run();
            synchronized (this.mNotificationLock) {
                try {
                    try {
                        NotificationRecord record = this.mNotificationsByKey.get(recon.getKey());
                        try {
                            if (record == null) {
                                return;
                            }
                            int indexBefore = findNotificationRecordIndexLocked(record);
                            boolean interceptBefore = record.isIntercepted();
                            int visibilityBefore = record.getPackageVisibilityOverride();
                            boolean interruptiveBefore = record.isInterruptive();
                            recon.applyChangesLocked(record);
                            applyZenModeLocked(record);
                            this.mRankingHelper.sort(this.mNotificationList);
                            boolean changed = true;
                            boolean indexChanged = indexBefore != findNotificationRecordIndexLocked(record);
                            boolean interceptChanged = interceptBefore != record.isIntercepted();
                            boolean visibilityChanged = visibilityBefore != record.getPackageVisibilityOverride();
                            boolean interruptiveChanged = record.canBubble() && interruptiveBefore != record.isInterruptive();
                            if (!indexChanged && !interceptChanged && !visibilityChanged && !interruptiveChanged) {
                                changed = false;
                            }
                            if (interceptBefore && !record.isIntercepted()) {
                                if (record.isNewEnoughForAlerting(this.mSystemClock.currentTimeMillis())) {
                                    buzzBeepBlinkLocked(record);
                                }
                            }
                            if (changed) {
                                this.mHandler.scheduleSendRankingUpdate();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                throw th;
            }
        }
    }

    void handleRankingSort() throws Throwable {
        NotificationManagerService notificationManagerService = this;
        if (notificationManagerService.mRankingHelper == null) {
            return;
        }
        synchronized (notificationManagerService.mNotificationLock) {
            try {
                int N = notificationManagerService.mNotificationList.size();
                ArrayList<String> orderBefore = new ArrayList<>(N);
                int[] visibilities = new int[N];
                boolean[] showBadges = new boolean[N];
                boolean[] allowBubbles = new boolean[N];
                boolean[] isBubble = new boolean[N];
                ArrayList<NotificationChannel> channelBefore = new ArrayList<>(N);
                ArrayList<String> groupKeyBefore = new ArrayList<>(N);
                ArrayList<ArrayList<String>> overridePeopleBefore = new ArrayList<>(N);
                ArrayList<ArrayList<SnoozeCriterion>> snoozeCriteriaBefore = new ArrayList<>(N);
                ArrayList<Integer> userSentimentBefore = new ArrayList<>(N);
                ArrayList<Integer> suppressVisuallyBefore = new ArrayList<>(N);
                ArrayList<ArrayList<Notification.Action>> systemSmartActionsBefore = new ArrayList<>(N);
                ArrayList<ArrayList<CharSequence>> smartRepliesBefore = new ArrayList<>(N);
                ArrayList<ArrayList<CharSequence>> smartRepliesBefore2 = smartRepliesBefore;
                int[] importancesBefore = new int[N];
                int i = 0;
                while (i < N) {
                    int N2 = N;
                    NotificationRecord r = notificationManagerService.mNotificationList.get(i);
                    try {
                        orderBefore.add(r.getKey());
                        visibilities[i] = r.getPackageVisibilityOverride();
                        showBadges[i] = r.canShowBadge();
                        allowBubbles[i] = r.canBubble();
                        isBubble[i] = r.getNotification().isBubbleNotification();
                        channelBefore.add(r.getChannel());
                        groupKeyBefore.add(r.getGroupKey());
                        overridePeopleBefore.add(r.getPeopleOverride());
                        snoozeCriteriaBefore.add(r.getSnoozeCriteria());
                        userSentimentBefore.add(Integer.valueOf(r.getUserSentiment()));
                        suppressVisuallyBefore.add(Integer.valueOf(r.getSuppressedVisualEffects()));
                        systemSmartActionsBefore.add(r.getSystemGeneratedSmartActions());
                        ArrayList<ArrayList<Notification.Action>> systemSmartActionsBefore2 = systemSmartActionsBefore;
                        ArrayList<ArrayList<CharSequence>> smartRepliesBefore3 = smartRepliesBefore2;
                        smartRepliesBefore3.add(r.getSmartReplies());
                        importancesBefore[i] = r.getImportance();
                        notificationManagerService = this;
                        smartRepliesBefore2 = smartRepliesBefore3;
                        notificationManagerService.mRankingHelper.extractSignals(r);
                        i++;
                        N = N2;
                        systemSmartActionsBefore = systemSmartActionsBefore2;
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                int N3 = N;
                ArrayList<ArrayList<Notification.Action>> systemSmartActionsBefore3 = systemSmartActionsBefore;
                notificationManagerService.mRankingHelper.sort(notificationManagerService.mNotificationList);
                int i2 = 0;
                while (true) {
                    int N4 = N3;
                    if (i2 < N4) {
                        NotificationRecord r2 = notificationManagerService.mNotificationList.get(i2);
                        ArrayList<String> orderBefore2 = orderBefore;
                        N3 = N4;
                        if (!orderBefore.get(i2).equals(r2.getKey()) || visibilities[i2] != r2.getPackageVisibilityOverride() || showBadges[i2] != r2.canShowBadge() || allowBubbles[i2] != r2.canBubble() || isBubble[i2] != r2.getNotification().isBubbleNotification() || !Objects.equals(channelBefore.get(i2), r2.getChannel()) || !Objects.equals(groupKeyBefore.get(i2), r2.getGroupKey()) || !Objects.equals(overridePeopleBefore.get(i2), r2.getPeopleOverride()) || !Objects.equals(snoozeCriteriaBefore.get(i2), r2.getSnoozeCriteria()) || !Objects.equals(userSentimentBefore.get(i2), Integer.valueOf(r2.getUserSentiment())) || !Objects.equals(suppressVisuallyBefore.get(i2), Integer.valueOf(r2.getSuppressedVisualEffects()))) {
                            break;
                        }
                        ArrayList<ArrayList<Notification.Action>> systemSmartActionsBefore4 = systemSmartActionsBefore3;
                        systemSmartActionsBefore3 = systemSmartActionsBefore4;
                        if (!Objects.equals(systemSmartActionsBefore4.get(i2), r2.getSystemGeneratedSmartActions())) {
                            break;
                        }
                        ArrayList<ArrayList<CharSequence>> smartRepliesBefore4 = smartRepliesBefore2;
                        smartRepliesBefore2 = smartRepliesBefore4;
                        if (!Objects.equals(smartRepliesBefore4.get(i2), r2.getSmartReplies()) || importancesBefore[i2] != r2.getImportance()) {
                            break;
                            break;
                        } else {
                            i2++;
                            orderBefore = orderBefore2;
                        }
                    } else {
                        return;
                    }
                }
                notificationManagerService.mHandler.scheduleSendRankingUpdate();
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private void recordCallerLocked(NotificationRecord record) {
        if (this.mZenModeHelper.isCall(record)) {
            this.mZenModeHelper.recordCaller(record);
        }
    }

    private void applyZenModeLocked(NotificationRecord record) {
        record.setIntercepted(this.mZenModeHelper.shouldIntercept(record));
        if (record.isIntercepted()) {
            record.setSuppressedVisualEffects(this.mZenModeHelper.getConsolidatedNotificationPolicy().suppressedVisualEffects);
        } else {
            record.setSuppressedVisualEffects(0);
        }
    }

    private int findNotificationRecordIndexLocked(NotificationRecord target) {
        return this.mRankingHelper.indexOf(this.mNotificationList, target);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSendRankingUpdate() {
        synchronized (this.mNotificationLock) {
            this.mListeners.notifyRankingUpdateLocked(null);
        }
    }

    private void scheduleListenerHintsChanged(int state) {
        this.mHandler.removeMessages(5);
        this.mHandler.obtainMessage(5, state, 0).sendToTarget();
    }

    private void scheduleInterruptionFilterChanged(int listenerInterruptionFilter) {
        this.mHandler.removeMessages(6);
        this.mHandler.obtainMessage(6, listenerInterruptionFilter, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleListenerHintsChanged(int hints) {
        synchronized (this.mNotificationLock) {
            this.mListeners.notifyListenerHintsChangedLocked(hints);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleListenerInterruptionFilterChanged(int interruptionFilter) {
        synchronized (this.mNotificationLock) {
            this.mListeners.notifyInterruptionFilterChanged(interruptionFilter);
        }
    }

    void handleOnPackageChanged(boolean removingPackage, int changeUserId, String[] pkgList, int[] uidList) {
        this.mListeners.onPackagesChanged(removingPackage, pkgList, uidList);
        this.mAssistants.onPackagesChanged(removingPackage, pkgList, uidList);
        this.mConditionProviders.onPackagesChanged(removingPackage, pkgList, uidList);
        boolean preferencesChanged = removingPackage | this.mPreferencesHelper.onPackagesChanged(removingPackage, changeUserId, pkgList, uidList);
        if (removingPackage) {
            int size = Math.min(pkgList.length, uidList.length);
            for (int i = 0; i < size; i++) {
                String pkg = pkgList[i];
                int uid = uidList[i];
                this.mHistoryManager.onPackageRemoved(UserHandle.getUserId(uid), pkg);
            }
        }
        if (preferencesChanged) {
            handleSavePolicyFile();
        }
    }

    protected class WorkerHandler extends Handler {
        public WorkerHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 2:
                    NotificationManagerService.this.handleDurationReached((ToastRecord) msg.obj);
                    break;
                case 4:
                    NotificationManagerService.this.handleSendRankingUpdate();
                    break;
                case 5:
                    NotificationManagerService.this.handleListenerHintsChanged(msg.arg1);
                    break;
                case 6:
                    NotificationManagerService.this.handleListenerInterruptionFilterChanged(msg.arg1);
                    break;
                case 7:
                    NotificationManagerService.this.handleKillTokenTimeout((ToastRecord) msg.obj);
                    break;
                case 8:
                    SomeArgs args = (SomeArgs) msg.obj;
                    NotificationManagerService.this.handleOnPackageChanged(((Boolean) args.arg1).booleanValue(), args.argi1, (String[]) args.arg2, (int[]) args.arg3);
                    args.recycle();
                    break;
            }
        }

        protected void scheduleSendRankingUpdate() {
            if (!hasMessages(4)) {
                Message m = Message.obtain(this, 4);
                sendMessage(m);
            }
        }

        protected void scheduleCancelNotification(CancelNotificationRunnable cancelRunnable) {
            if (!hasCallbacks(cancelRunnable)) {
                sendMessage(Message.obtain(this, cancelRunnable));
            }
        }

        protected void scheduleOnPackageChanged(boolean removingPackage, int changeUserId, String[] pkgList, int[] uidList) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = Boolean.valueOf(removingPackage);
            args.argi1 = changeUserId;
            args.arg2 = pkgList;
            args.arg3 = uidList;
            sendMessage(Message.obtain(this, 8, args));
        }
    }

    private final class RankingHandlerWorker extends Handler implements RankingHandler {
        public RankingHandlerWorker(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) throws Throwable {
            int i = msg.what;
            if (i == 1000) {
                NotificationManagerService.this.handleRankingReconsideration(msg);
            } else if (i == 1001) {
                NotificationManagerService.this.handleRankingSort();
            }
        }

        @Override // com.android.server.notification.RankingHandler
        public void requestSort() {
            removeMessages(1001);
            Message msg = Message.obtain();
            msg.what = 1001;
            sendMessage(msg);
        }

        @Override // com.android.server.notification.RankingHandler
        public void requestReconsideration(RankingReconsideration recon) {
            Message m = Message.obtain(this, 1000, recon);
            long delay = recon.getDelay(TimeUnit.MILLISECONDS);
            sendMessageDelayed(m, delay);
        }
    }

    static int clamp(int x, int low, int high) {
        if (x < low) {
            return low;
        }
        return x > high ? high : x;
    }

    void sendAccessibilityEvent(NotificationRecord record) {
        if (!this.mAccessibilityManager.isEnabled()) {
            return;
        }
        Notification notification = record.getNotification();
        CharSequence packageName = record.getSbn().getPackageName();
        AccessibilityEvent event = AccessibilityEvent.obtain(64);
        event.setPackageName(packageName);
        event.setClassName(Notification.class.getName());
        int visibilityOverride = record.getPackageVisibilityOverride();
        int notifVisibility = visibilityOverride == -1000 ? notification.visibility : visibilityOverride;
        int userId = record.getUser().getIdentifier();
        boolean needPublic = userId >= 0 && this.mKeyguardManager.isDeviceLocked(userId);
        if (needPublic && notifVisibility != 1) {
            event.setParcelableData(notification.publicVersion);
        } else {
            event.setParcelableData(notification);
        }
        CharSequence tickerText = notification.tickerText;
        if (!TextUtils.isEmpty(tickerText)) {
            event.getText().add(tickerText);
        }
        this.mAccessibilityManager.sendAccessibilityEvent(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeFromNotificationListsLocked(NotificationRecord r) {
        boolean wasPosted = false;
        NotificationRecord recordInList = findNotificationByListLocked(this.mNotificationList, r.getKey());
        if (recordInList != null) {
            this.mNotificationList.remove(recordInList);
            this.mNotificationsByKey.remove(recordInList.getSbn().getKey());
            wasPosted = true;
        }
        while (true) {
            NotificationRecord recordInList2 = findNotificationByListLocked(this.mEnqueuedNotifications, r.getKey());
            if (recordInList2 != null) {
                this.mEnqueuedNotifications.remove(recordInList2);
            } else {
                return wasPosted;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removePreviousFromNotificationListsLocked(NotificationRecord r, long removeBefore) {
        boolean wasPosted = false;
        List<NotificationRecord> matching = findNotificationsByListLocked(this.mNotificationList, r.getKey());
        for (NotificationRecord record : matching) {
            this.mNotificationList.remove(record);
            this.mNotificationsByKey.remove(record.getSbn().getKey());
            wasPosted = true;
        }
        List<NotificationRecord> matching2 = findNotificationsByListLocked(this.mEnqueuedNotifications, r.getKey());
        for (NotificationRecord record2 : matching2) {
            if (record2.getUpdateTimeMs() <= removeBefore) {
                this.mNotificationList.remove(record2);
            }
        }
        return wasPosted;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelNotificationLocked(NotificationRecord r, boolean sendDelete, int reason, boolean wasPosted, String listenerName) {
        cancelNotificationLocked(r, sendDelete, reason, -1, -1, wasPosted, listenerName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:47:0x00d5  */
    public void cancelNotificationLocked(final NotificationRecord r, boolean sendDelete, int reason, int rank, int count, boolean wasPosted, String listenerName) {
        PendingIntent deleteIntent;
        String canceledKey = r.getKey();
        recordCallerLocked(r);
        if (r.getStats().getDismissalSurface() == -1) {
            r.recordDismissalSurface(0);
        }
        if (sendDelete && (deleteIntent = r.getNotification().deleteIntent) != null) {
            try {
                ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).clearPendingIntentAllowBgActivityStarts(deleteIntent.getTarget(), WHITELIST_TOKEN);
                deleteIntent.send();
            } catch (PendingIntent.CanceledException ex) {
                Slog.w(TAG, "canceled PendingIntent for " + r.getSbn().getPackageName(), ex);
            }
        }
        if (wasPosted) {
            if (r.getNotification().getSmallIcon() != null) {
                if (reason != 18) {
                    r.isCanceled = true;
                }
                this.mListeners.notifyRemovedLocked(r, reason, r.getStats());
                this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.14
                    @Override // java.lang.Runnable
                    public void run() {
                        NotificationManagerService.this.mGroupHelper.onNotificationRemoved(r.getSbn());
                    }
                });
            }
            if (canceledKey.equals(this.mSoundNotificationKey)) {
                this.mSoundNotificationKey = null;
                long identity = Binder.clearCallingIdentity();
                try {
                    IRingtonePlayer player = this.mAudioManager.getRingtonePlayer();
                    if (player != null) {
                        player.stopAsync();
                    }
                } catch (RemoteException e) {
                } finally {
                    Binder.restoreCallingIdentity(identity);
                }
            }
            if (canceledKey.equals(this.mVibrateNotificationKey)) {
                this.mVibrateNotificationKey = null;
                long identity2 = Binder.clearCallingIdentity();
                try {
                    this.mVibrator.cancel();
                    Binder.restoreCallingIdentity(identity2);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity2);
                    throw th;
                }
            }
            this.mLights.remove(canceledKey);
        }
        if (reason == 2 || reason == 3) {
            this.mUsageStats.registerDismissedByUser(r);
        } else {
            switch (reason) {
                case 8:
                case 9:
                    this.mUsageStats.registerRemovedByApp(r);
                    break;
                case 10:
                case 11:
                    this.mUsageStats.registerDismissedByUser(r);
                    break;
            }
        }
        String groupKey = r.getGroupKey();
        NotificationRecord groupSummary = this.mSummaryByGroupKey.get(groupKey);
        if (groupSummary != null && groupSummary.getKey().equals(canceledKey)) {
            this.mSummaryByGroupKey.remove(groupKey);
        }
        ArrayMap<String, String> summaries = this.mAutobundledSummaries.get(Integer.valueOf(r.getSbn().getUserId()));
        if (summaries != null && r.getSbn().getKey().equals(summaries.get(r.getSbn().getPackageName()))) {
            summaries.remove(r.getSbn().getPackageName());
        }
        this.mArchive.record(r.getSbn(), reason);
        long now = this.mSystemClock.currentTimeMillis();
        LogMaker logMaker = r.getItemLogMaker().setType(5).setSubtype(reason);
        if (rank != -1 && count != -1) {
            logMaker.addTaggedData(798, Integer.valueOf(rank)).addTaggedData(1395, Integer.valueOf(count));
        }
        MetricsLogger.action(logMaker);
        EventLogTags.writeNotificationCanceled(canceledKey, reason, r.getLifespanMs(now), r.getFreshnessMs(now), r.getExposureMs(now), rank, count, listenerName);
        if (wasPosted) {
            this.mNotificationRecordLogger.logNotificationCancelled(r, reason, r.getStats().getDismissalSurface());
        }
    }

    void updateUriPermissions(NotificationRecord newRecord, NotificationRecord oldRecord, String targetPkg, int targetUserId) {
        updateUriPermissions(newRecord, oldRecord, targetPkg, targetUserId, false);
    }

    void updateUriPermissions(NotificationRecord newRecord, NotificationRecord oldRecord, String targetPkg, int targetUserId, boolean onlyRevokeCurrentTarget) {
        IBinder permissionOwner;
        String key = newRecord != null ? newRecord.getKey() : oldRecord.getKey();
        if (DBG) {
            Slog.d(TAG, key + ": updating permissions");
        }
        ArraySet<Uri> newUris = newRecord != null ? newRecord.getGrantableUris() : null;
        ArraySet<Uri> oldUris = oldRecord != null ? oldRecord.getGrantableUris() : null;
        if (newUris == null && oldUris == null) {
            return;
        }
        IBinder permissionOwner2 = null;
        if (newRecord != null && 0 == 0) {
            permissionOwner2 = newRecord.permissionOwner;
        }
        if (oldRecord != null && permissionOwner2 == null) {
            permissionOwner2 = oldRecord.permissionOwner;
        }
        if (newUris != null && permissionOwner2 == null) {
            if (DBG) {
                Slog.d(TAG, key + ": creating owner");
            }
            permissionOwner2 = this.mUgmInternal.newUriPermissionOwner("NOTIF:" + key);
        }
        if (newUris == null && permissionOwner2 != null && !onlyRevokeCurrentTarget) {
            destroyPermissionOwner(permissionOwner2, UserHandle.getUserId(oldRecord.getUid()), key);
            permissionOwner = null;
        } else {
            permissionOwner = permissionOwner2;
        }
        if (newUris != null && permissionOwner != null) {
            for (int i = 0; i < newUris.size(); i++) {
                Uri uri = newUris.valueAt(i);
                if (oldUris == null || !oldUris.contains(uri)) {
                    Slog.d(TAG, key + ": granting " + uri);
                    grantUriPermission(permissionOwner, uri, newRecord.getUid(), targetPkg, targetUserId);
                }
            }
        }
        if (oldUris != null && permissionOwner != null) {
            for (int i2 = 0; i2 < oldUris.size(); i2++) {
                Uri uri2 = oldUris.valueAt(i2);
                if (newUris == null || !newUris.contains(uri2)) {
                    if (DBG) {
                        Slog.d(TAG, key + ": revoking " + uri2);
                    }
                    if (onlyRevokeCurrentTarget) {
                        revokeUriPermission(permissionOwner, uri2, UserHandle.getUserId(oldRecord.getUid()), targetPkg, targetUserId);
                    } else {
                        revokeUriPermission(permissionOwner, uri2, UserHandle.getUserId(oldRecord.getUid()), null, -1);
                    }
                }
            }
        }
        if (newRecord != null) {
            newRecord.permissionOwner = permissionOwner;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void grantUriPermission(IBinder owner, Uri uri, int sourceUid, String targetPkg, int targetUserId) {
        if (uri == null || !ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(uri.getScheme())) {
            return;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            try {
                this.mUgm.grantUriPermissionFromOwner(owner, sourceUid, targetPkg, ContentProvider.getUriWithoutUserId(uri), 1, ContentProvider.getUserIdFromUri(uri, UserHandle.getUserId(sourceUid)), targetUserId);
            } catch (RemoteException e) {
            } catch (SecurityException e2) {
                Slog.e(TAG, "Cannot grant uri access; " + sourceUid + " does not own " + uri);
            }
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private void revokeUriPermission(IBinder owner, Uri uri, int sourceUserId, String targetPkg, int targetUserId) {
        if (uri == null || !ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(uri.getScheme())) {
            return;
        }
        int userId = ContentProvider.getUserIdFromUri(uri, sourceUserId);
        long ident = Binder.clearCallingIdentity();
        try {
            this.mUgmInternal.revokeUriPermissionFromOwner(owner, ContentProvider.getUriWithoutUserId(uri), 1, userId, targetPkg, targetUserId);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyPermissionOwner(IBinder owner, int userId, String logKey) {
        long ident = Binder.clearCallingIdentity();
        try {
            if (DBG) {
                Slog.d(TAG, logKey + ": destroying owner");
            }
            this.mUgmInternal.revokeUriPermissionFromOwner(owner, null, -1, userId);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    void cancelNotification(int callingUid, int callingPid, String pkg, String tag, int id, int mustHaveFlags, int mustNotHaveFlags, boolean sendDelete, int userId, int reason, ManagedServices.ManagedServiceInfo listener) {
        cancelNotification(callingUid, callingPid, pkg, tag, id, mustHaveFlags, mustNotHaveFlags, sendDelete, userId, reason, -1, -1, listener);
    }

    void cancelNotification(int callingUid, int callingPid, String pkg, String tag, int id, int mustHaveFlags, int mustNotHaveFlags, boolean sendDelete, int userId, int reason, int rank, int count, ManagedServices.ManagedServiceInfo listener) {
        this.mHandler.scheduleCancelNotification(new CancelNotificationRunnable(callingUid, callingPid, pkg, tag, id, mustHaveFlags, mustNotHaveFlags, sendDelete, userId, reason, rank, count, listener));
    }

    private boolean notificationMatchesUserId(NotificationRecord r, int userId) {
        return userId == -1 || r.getUserId() == -1 || r.getUserId() == userId;
    }

    private boolean notificationMatchesCurrentProfiles(NotificationRecord r, int userId) {
        return notificationMatchesUserId(r, userId) || this.mUserProfiles.isCurrentProfile(r.getUserId());
    }

    /* JADX INFO: renamed from: com.android.server.notification.NotificationManagerService$15, reason: invalid class name */
    class AnonymousClass15 implements Runnable {
        final /* synthetic */ int val$callingPid;
        final /* synthetic */ int val$callingUid;
        final /* synthetic */ String val$channelId;
        final /* synthetic */ boolean val$doit;
        final /* synthetic */ ManagedServices.ManagedServiceInfo val$listener;
        final /* synthetic */ int val$mustHaveFlags;
        final /* synthetic */ int val$mustNotHaveFlags;
        final /* synthetic */ String val$pkg;
        final /* synthetic */ int val$reason;
        final /* synthetic */ int val$userId;

        AnonymousClass15(ManagedServices.ManagedServiceInfo managedServiceInfo, int i, int i2, String str, int i3, int i4, int i5, int i6, boolean z, String str2) {
            this.val$listener = managedServiceInfo;
            this.val$callingUid = i;
            this.val$callingPid = i2;
            this.val$pkg = str;
            this.val$userId = i3;
            this.val$mustHaveFlags = i4;
            this.val$mustNotHaveFlags = i5;
            this.val$reason = i6;
            this.val$doit = z;
            this.val$channelId = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ManagedServices.ManagedServiceInfo managedServiceInfo = this.val$listener;
            String listenerName = managedServiceInfo == null ? null : managedServiceInfo.component.toShortString();
            EventLogTags.writeNotificationCancelAll(this.val$callingUid, this.val$callingPid, this.val$pkg, this.val$userId, this.val$mustHaveFlags, this.val$mustNotHaveFlags, this.val$reason, listenerName);
            if (!this.val$doit) {
                return;
            }
            synchronized (NotificationManagerService.this.mNotificationLock) {
                final int i = this.val$mustHaveFlags;
                final int i2 = this.val$mustNotHaveFlags;
                FlagChecker flagChecker = new FlagChecker() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA
                    @Override // com.android.server.notification.NotificationManagerService.FlagChecker
                    public final boolean apply(int i3) {
                        return NotificationManagerService.AnonymousClass15.lambda$run$0(i, i2, i3);
                    }
                };
                NotificationManagerService.this.cancelAllNotificationsByListLocked(NotificationManagerService.this.mNotificationList, this.val$callingUid, this.val$callingPid, this.val$pkg, true, this.val$channelId, flagChecker, false, this.val$userId, false, this.val$reason, listenerName, true);
                NotificationManagerService.this.cancelAllNotificationsByListLocked(NotificationManagerService.this.mEnqueuedNotifications, this.val$callingUid, this.val$callingPid, this.val$pkg, true, this.val$channelId, flagChecker, false, this.val$userId, false, this.val$reason, listenerName, false);
                NotificationManagerService.this.mSnoozeHelper.cancel(this.val$userId, this.val$pkg);
            }
        }

        static /* synthetic */ boolean lambda$run$0(int mustHaveFlags, int mustNotHaveFlags, int flags) {
            return (flags & mustHaveFlags) == mustHaveFlags && (flags & mustNotHaveFlags) == 0;
        }
    }

    void cancelAllNotificationsInt(int callingUid, int callingPid, String pkg, String channelId, int mustHaveFlags, int mustNotHaveFlags, boolean doit, int userId, int reason, ManagedServices.ManagedServiceInfo listener) {
        this.mHandler.post(new AnonymousClass15(listener, callingUid, callingPid, pkg, userId, mustHaveFlags, mustNotHaveFlags, reason, doit, channelId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:12:0x0032  */
    /* JADX WARN: Code duplicated, block: B:29:0x0071  */
    public void cancelAllNotificationsByListLocked(ArrayList<NotificationRecord> notificationList, int callingUid, int callingPid, String pkg, boolean nullPkgIndicatesUserSwitch, String channelId, FlagChecker flagChecker, boolean includeCurrentProfiles, int userId, boolean sendDelete, int reason, String listenerName, boolean wasPosted) {
        ArrayList<NotificationRecord> canceledNotifications = null;
        for (int i = notificationList.size() - 1; i >= 0; i--) {
            NotificationRecord r = notificationList.get(i);
            if (includeCurrentProfiles) {
                if (notificationMatchesCurrentProfiles(r, userId)) {
                    if ((nullPkgIndicatesUserSwitch || pkg != null || r.getUserId() != -1) && flagChecker.apply(r.getFlags()) && ((pkg == null || r.getSbn().getPackageName().equals(pkg)) && (channelId == null || channelId.equals(r.getChannel().getId())))) {
                        if (canceledNotifications == null) {
                            canceledNotifications = new ArrayList<>();
                        }
                        notificationList.remove(i);
                        this.mNotificationsByKey.remove(r.getKey());
                        r.recordDismissalSentiment(1);
                        canceledNotifications.add(r);
                        cancelNotificationLocked(r, sendDelete, reason, wasPosted, listenerName);
                    }
                }
            } else if (notificationMatchesUserId(r, userId)) {
                if (nullPkgIndicatesUserSwitch) {
                    if (canceledNotifications == null) {
                        canceledNotifications = new ArrayList<>();
                    }
                    notificationList.remove(i);
                    this.mNotificationsByKey.remove(r.getKey());
                    r.recordDismissalSentiment(1);
                    canceledNotifications.add(r);
                    cancelNotificationLocked(r, sendDelete, reason, wasPosted, listenerName);
                } else {
                    if (canceledNotifications == null) {
                        canceledNotifications = new ArrayList<>();
                    }
                    notificationList.remove(i);
                    this.mNotificationsByKey.remove(r.getKey());
                    r.recordDismissalSentiment(1);
                    canceledNotifications.add(r);
                    cancelNotificationLocked(r, sendDelete, reason, wasPosted, listenerName);
                }
            }
        }
        if (canceledNotifications != null) {
            int M = canceledNotifications.size();
            for (int i2 = 0; i2 < M; i2++) {
                cancelGroupChildrenLocked(canceledNotifications.get(i2), callingUid, callingPid, listenerName, false, flagChecker, reason);
            }
            updateLightsLocked();
        }
    }

    void snoozeNotificationInt(String key, long duration, String snoozeCriterionId, ManagedServices.ManagedServiceInfo listener) {
        String listenerName = listener == null ? null : listener.component.toShortString();
        if ((duration <= 0 && snoozeCriterionId == null) || key == null) {
            return;
        }
        if (DBG) {
            Slog.d(TAG, String.format("snooze event(%s, %d, %s, %s)", key, Long.valueOf(duration), snoozeCriterionId, listenerName));
        }
        this.mHandler.post(new SnoozeNotificationRunnable(key, duration, snoozeCriterionId));
    }

    void unsnoozeNotificationInt(String key, ManagedServices.ManagedServiceInfo listener, boolean muteOnReturn) {
        String listenerName = listener == null ? null : listener.component.toShortString();
        if (DBG) {
            Slog.d(TAG, String.format("unsnooze event(%s, %s)", key, listenerName));
        }
        this.mSnoozeHelper.repost(key, muteOnReturn);
        handleSavePolicyFile();
    }

    /* JADX INFO: renamed from: com.android.server.notification.NotificationManagerService$16, reason: invalid class name */
    class AnonymousClass16 implements Runnable {
        final /* synthetic */ int val$callingPid;
        final /* synthetic */ int val$callingUid;
        final /* synthetic */ boolean val$includeCurrentProfiles;
        final /* synthetic */ ManagedServices.ManagedServiceInfo val$listener;
        final /* synthetic */ int val$reason;
        final /* synthetic */ int val$userId;

        AnonymousClass16(ManagedServices.ManagedServiceInfo managedServiceInfo, int i, int i2, int i3, int i4, boolean z) {
            this.val$listener = managedServiceInfo;
            this.val$callingUid = i;
            this.val$callingPid = i2;
            this.val$userId = i3;
            this.val$reason = i4;
            this.val$includeCurrentProfiles = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (NotificationManagerService.this.mNotificationLock) {
                String listenerName = this.val$listener == null ? null : this.val$listener.component.toShortString();
                EventLogTags.writeNotificationCancelAll(this.val$callingUid, this.val$callingPid, null, this.val$userId, 0, 0, this.val$reason, listenerName);
                final int i = this.val$reason;
                FlagChecker flagChecker = new FlagChecker() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$16$zTgrLv-fwhUBKBfo6G4cZaGAhWs
                    @Override // com.android.server.notification.NotificationManagerService.FlagChecker
                    public final boolean apply(int i2) {
                        return NotificationManagerService.AnonymousClass16.lambda$run$0(i, i2);
                    }
                };
                NotificationManagerService.this.cancelAllNotificationsByListLocked(NotificationManagerService.this.mNotificationList, this.val$callingUid, this.val$callingPid, null, false, null, flagChecker, this.val$includeCurrentProfiles, this.val$userId, true, this.val$reason, listenerName, true);
                NotificationManagerService.this.cancelAllNotificationsByListLocked(NotificationManagerService.this.mEnqueuedNotifications, this.val$callingUid, this.val$callingPid, null, false, null, flagChecker, this.val$includeCurrentProfiles, this.val$userId, true, this.val$reason, listenerName, false);
                NotificationManagerService.this.mSnoozeHelper.cancel(this.val$userId, this.val$includeCurrentProfiles);
            }
        }

        static /* synthetic */ boolean lambda$run$0(int reason, int flags) {
            int flagsToCheck = 34;
            if (11 == reason || 3 == reason) {
                flagsToCheck = 34 | 4096;
            }
            if ((flags & flagsToCheck) != 0) {
                return false;
            }
            return true;
        }
    }

    void cancelAllLocked(int callingUid, int callingPid, int userId, int reason, ManagedServices.ManagedServiceInfo listener, boolean includeCurrentProfiles) {
        this.mHandler.post(new AnonymousClass16(listener, callingUid, callingPid, userId, reason, includeCurrentProfiles));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelGroupChildrenLocked(NotificationRecord r, int callingUid, int callingPid, String listenerName, boolean sendDelete, FlagChecker flagChecker, int reason) {
        Notification n = r.getNotification();
        if (!n.isGroupSummary()) {
            return;
        }
        String pkg = r.getSbn().getPackageName();
        if (pkg == null) {
            if (DBG) {
                Slog.e(TAG, "No package for group summary: " + r.getKey());
                return;
            }
            return;
        }
        cancelGroupChildrenByListLocked(this.mNotificationList, r, callingUid, callingPid, listenerName, sendDelete, true, flagChecker, reason);
        cancelGroupChildrenByListLocked(this.mEnqueuedNotifications, r, callingUid, callingPid, listenerName, sendDelete, false, flagChecker, reason);
    }

    private void cancelGroupChildrenByListLocked(ArrayList<NotificationRecord> notificationList, NotificationRecord parentNotification, int callingUid, int callingPid, String listenerName, boolean sendDelete, boolean wasPosted, FlagChecker flagChecker, int reason) {
        String pkg = parentNotification.getSbn().getPackageName();
        int userId = parentNotification.getUserId();
        for (int i = notificationList.size() - 1; i >= 0; i--) {
            NotificationRecord childR = notificationList.get(i);
            StatusBarNotification childSbn = childR.getSbn();
            if (childSbn.isGroup() && !childSbn.getNotification().isGroupSummary()) {
                if (childR.getGroupKey().equals(parentNotification.getGroupKey()) && (childR.getFlags() & 64) == 0 && ((flagChecker == null || flagChecker.apply(childR.getFlags())) && (!childR.getChannel().isImportantConversation() || reason != 2))) {
                    EventLogTags.writeNotificationCancel(callingUid, callingPid, pkg, childSbn.getId(), childSbn.getTag(), userId, 0, 0, 12, listenerName);
                    notificationList.remove(i);
                    this.mNotificationsByKey.remove(childR.getKey());
                    cancelNotificationLocked(childR, sendDelete, 12, wasPosted, listenerName);
                }
            }
        }
    }

    void updateLightsLocked() {
        if (this.mNotificationLight == null) {
            return;
        }
        NotificationRecord ledNotification = null;
        while (ledNotification == null && !this.mLights.isEmpty()) {
            ArrayList<String> arrayList = this.mLights;
            String owner = arrayList.get(arrayList.size() - 1);
            NotificationRecord ledNotification2 = this.mNotificationsByKey.get(owner);
            ledNotification = ledNotification2;
            if (ledNotification == null) {
                Slog.wtfStack(TAG, "LED Notification does not exist: " + owner);
                this.mLights.remove(owner);
            }
        }
        if (ledNotification == null || isInCall() || this.mScreenOn) {
            this.mNotificationLight.turnOff();
            return;
        }
        NotificationRecord.Light light = ledNotification.getLight();
        if (light != null && this.mNotificationPulseEnabled) {
            this.mNotificationLight.setFlashing(light.color, 1, light.onMs, light.offMs);
        }
    }

    List<NotificationRecord> findCurrentAndSnoozedGroupNotificationsLocked(String pkg, String groupKey, int userId) {
        List<NotificationRecord> records = this.mSnoozeHelper.getNotifications(pkg, groupKey, Integer.valueOf(userId));
        records.addAll(findGroupNotificationsLocked(pkg, groupKey, userId));
        return records;
    }

    List<NotificationRecord> findGroupNotificationsLocked(String pkg, String groupKey, int userId) {
        List<NotificationRecord> records = new ArrayList<>();
        records.addAll(findGroupNotificationByListLocked(this.mNotificationList, pkg, groupKey, userId));
        records.addAll(findGroupNotificationByListLocked(this.mEnqueuedNotifications, pkg, groupKey, userId));
        return records;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NotificationRecord findInCurrentAndSnoozedNotificationByKeyLocked(String key) {
        NotificationRecord r = findNotificationByKeyLocked(key);
        if (r == null) {
            return this.mSnoozeHelper.getNotification(key);
        }
        return r;
    }

    private List<NotificationRecord> findGroupNotificationByListLocked(ArrayList<NotificationRecord> list, String pkg, String groupKey, int userId) {
        List<NotificationRecord> records = new ArrayList<>();
        int len = list.size();
        for (int i = 0; i < len; i++) {
            NotificationRecord r = list.get(i);
            if (notificationMatchesUserId(r, userId) && r.getGroupKey().equals(groupKey) && r.getSbn().getPackageName().equals(pkg)) {
                records.add(r);
            }
        }
        return records;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NotificationRecord findNotificationByKeyLocked(String key) {
        NotificationRecord r = findNotificationByListLocked(this.mNotificationList, key);
        if (r != null) {
            return r;
        }
        NotificationRecord r2 = findNotificationByListLocked(this.mEnqueuedNotifications, key);
        if (r2 != null) {
            return r2;
        }
        return null;
    }

    NotificationRecord findNotificationLocked(String pkg, String tag, int id, int userId) {
        NotificationRecord r = findNotificationByListLocked(this.mNotificationList, pkg, tag, id, userId);
        if (r != null) {
            return r;
        }
        NotificationRecord r2 = findNotificationByListLocked(this.mEnqueuedNotifications, pkg, tag, id, userId);
        if (r2 != null) {
            return r2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NotificationRecord findNotificationByListLocked(ArrayList<NotificationRecord> list, String pkg, String tag, int id, int userId) {
        int len = list.size();
        for (int i = 0; i < len; i++) {
            NotificationRecord r = list.get(i);
            if (notificationMatchesUserId(r, userId) && r.getSbn().getId() == id && TextUtils.equals(r.getSbn().getTag(), tag) && r.getSbn().getPackageName().equals(pkg)) {
                return r;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<NotificationRecord> findNotificationsByListLocked(ArrayList<NotificationRecord> list, String pkg, String tag, int id, int userId) {
        List<NotificationRecord> matching = new ArrayList<>();
        int len = list.size();
        for (int i = 0; i < len; i++) {
            NotificationRecord r = list.get(i);
            if (notificationMatchesUserId(r, userId) && r.getSbn().getId() == id && TextUtils.equals(r.getSbn().getTag(), tag) && r.getSbn().getPackageName().equals(pkg)) {
                matching.add(r);
            }
        }
        return matching;
    }

    private NotificationRecord findNotificationByListLocked(ArrayList<NotificationRecord> list, String key) {
        int N = list.size();
        for (int i = 0; i < N; i++) {
            if (key.equals(list.get(i).getKey())) {
                return list.get(i);
            }
        }
        return null;
    }

    private List<NotificationRecord> findNotificationsByListLocked(ArrayList<NotificationRecord> list, String key) {
        List<NotificationRecord> matching = new ArrayList<>();
        int n = list.size();
        for (int i = 0; i < n; i++) {
            NotificationRecord r = list.get(i);
            if (key.equals(r.getKey())) {
                matching.add(r);
            }
        }
        return matching;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<NotificationRecord> findEnqueuedNotificationsForCriteria(String pkg, String tag, int id, int userId) {
        ArrayList<NotificationRecord> records = new ArrayList<>();
        int n = this.mEnqueuedNotifications.size();
        for (int i = 0; i < n; i++) {
            NotificationRecord r = this.mEnqueuedNotifications.get(i);
            if (notificationMatchesUserId(r, userId) && r.getSbn().getId() == id && TextUtils.equals(r.getSbn().getTag(), tag) && r.getSbn().getPackageName().equals(pkg)) {
                records.add(r);
            }
        }
        return records;
    }

    int indexOfNotificationLocked(String key) {
        int N = this.mNotificationList.size();
        for (int i = 0; i < N; i++) {
            if (key.equals(this.mNotificationList.get(i).getKey())) {
                return i;
            }
        }
        return -1;
    }

    protected void hideNotificationsForPackages(String[] pkgs) {
        synchronized (this.mNotificationLock) {
            List<String> pkgList = Arrays.asList(pkgs);
            List<NotificationRecord> changedNotifications = new ArrayList<>();
            int numNotifications = this.mNotificationList.size();
            for (int i = 0; i < numNotifications; i++) {
                NotificationRecord rec = this.mNotificationList.get(i);
                if (pkgList.contains(rec.getSbn().getPackageName())) {
                    rec.setHidden(true);
                    changedNotifications.add(rec);
                }
            }
            this.mListeners.notifyHiddenLocked(changedNotifications);
        }
    }

    protected void unhideNotificationsForPackages(String[] pkgs) {
        synchronized (this.mNotificationLock) {
            List<String> pkgList = Arrays.asList(pkgs);
            List<NotificationRecord> changedNotifications = new ArrayList<>();
            int numNotifications = this.mNotificationList.size();
            for (int i = 0; i < numNotifications; i++) {
                NotificationRecord rec = this.mNotificationList.get(i);
                if (pkgList.contains(rec.getSbn().getPackageName())) {
                    rec.setHidden(false);
                    changedNotifications.add(rec);
                }
            }
            this.mListeners.notifyUnhiddenLocked(changedNotifications);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNotificationPulse() {
        synchronized (this.mNotificationLock) {
            updateLightsLocked();
        }
    }

    protected boolean isCallingUidSystem() {
        int uid = Binder.getCallingUid();
        return uid == 1000;
    }

    protected boolean isCallingAppIdSystem() {
        int uid = Binder.getCallingUid();
        int appid = UserHandle.getAppId(uid);
        return appid == 1000;
    }

    protected boolean isUidSystemOrPhone(int uid) {
        int appid = UserHandle.getAppId(uid);
        return appid == 1000 || appid == 1001 || uid == 0;
    }

    protected boolean isCallerSystemOrPhone() {
        return isUidSystemOrPhone(Binder.getCallingUid());
    }

    private boolean isCallerIsSystemOrSystemUi() {
        return isCallerSystemOrPhone() || getContext().checkCallingPermission("android.permission.STATUS_BAR_SERVICE") == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCallerIsSystemOrSysemUiOrShell() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == SHORT_DELAY || callingUid == 0) {
            return true;
        }
        return isCallerIsSystemOrSystemUi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCallerIsSystemOrShell() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == SHORT_DELAY || callingUid == 0) {
            return;
        }
        checkCallerIsSystem();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCallerIsSystem() {
        if (isCallerSystemOrPhone()) {
            return;
        }
        throw new SecurityException("Disallowed call for uid " + Binder.getCallingUid());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCallerIsSystemOrSystemUiOrShell() {
        checkCallerIsSystemOrSystemUiOrShell(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCallerIsSystemOrSystemUiOrShell(String message) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == SHORT_DELAY || callingUid == 0 || isCallerSystemOrPhone()) {
            return;
        }
        getContext().enforceCallingPermission("android.permission.STATUS_BAR_SERVICE", message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCallerIsSystemOrSameApp(String pkg) {
        if (isCallerSystemOrPhone()) {
            return;
        }
        checkCallerIsSameApp(pkg);
    }

    private boolean isCallerAndroid(String callingPkg, int uid) {
        return isUidSystemOrPhone(uid) && callingPkg != null && PackageManagerService.PLATFORM_PACKAGE_NAME.equals(callingPkg);
    }

    private void checkRestrictedCategories(String pkg, Notification notification) {
        try {
            if (!this.mPackageManager.hasSystemFeature("android.hardware.type.automotive", 0)) {
                return;
            }
        } catch (RemoteException e) {
            if (DBG) {
                Slog.e(TAG, "Unable to confirm if it's safe to skip category restrictions check thus the check will be done anyway");
            }
        }
        if ("car_emergency".equals(notification.category) || "car_warning".equals(notification.category)) {
            checkCallerIsSystem();
        }
        if ("car_information".equals(notification.category)) {
            checkCallerIsSystemOrSUW(pkg);
        }
    }

    private void checkCallerIsSystemOrSUW(String pkg) {
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        String suwPkg = pmi.getSetupWizardPackageName();
        if (suwPkg != null && suwPkg.equals(pkg)) {
            return;
        }
        checkCallerIsSystem();
    }

    boolean isCallerInstantApp(int callingUid, int userId) {
        if (isUidSystemOrPhone(callingUid)) {
            return false;
        }
        if (userId == -1) {
            userId = 0;
        }
        try {
            String[] pkgs = this.mPackageManager.getPackagesForUid(callingUid);
            if (pkgs == null) {
                throw new SecurityException("Unknown uid " + callingUid);
            }
            String pkg = pkgs[0];
            this.mAppOps.checkPackage(callingUid, pkg);
            ApplicationInfo ai = this.mPackageManager.getApplicationInfo(pkg, 0, userId);
            if (ai == null) {
                throw new SecurityException("Unknown package " + pkg);
            }
            return ai.isInstantApp();
        } catch (RemoteException re) {
            throw new SecurityException("Unknown uid " + callingUid, re);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkCallerIsSameApp(String pkg) {
        checkCallerIsSameApp(pkg, Binder.getCallingUid(), UserHandle.getCallingUserId());
    }

    private void checkCallerIsSameApp(String pkg, int uid, int userId) {
        if (uid == 0 && ROOT_PKG.equals(pkg)) {
            return;
        }
        try {
            ApplicationInfo ai = this.mPackageManager.getApplicationInfo(pkg, 0, userId);
            if (ai == null) {
                throw new SecurityException("Unknown package " + pkg);
            }
            if (!UserHandle.isSameApp(ai.uid, uid)) {
                throw new SecurityException("Calling uid " + uid + " gave package " + pkg + " which is owned by uid " + ai.uid);
            }
        } catch (RemoteException re) {
            throw new SecurityException("Unknown package " + pkg + "\n" + re);
        }
    }

    private boolean isCallerSameApp(String pkg) {
        try {
            checkCallerIsSameApp(pkg);
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }

    private boolean isCallerSameApp(String pkg, int uid, int userId) {
        try {
            checkCallerIsSameApp(pkg, uid, userId);
            return true;
        } catch (SecurityException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String callStateToString(int state) {
        if (state == 0) {
            return "CALL_STATE_IDLE";
        }
        if (state == 1) {
            return "CALL_STATE_RINGING";
        }
        if (state == 2) {
            return "CALL_STATE_OFFHOOK";
        }
        return "CALL_STATE_UNKNOWN_" + state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NotificationRankingUpdate makeRankingUpdateLocked(ManagedServices.ManagedServiceInfo info) {
        NotificationManagerService notificationManagerService = this;
        int N = notificationManagerService.mNotificationList.size();
        ArrayList<NotificationListenerService.Ranking> rankings = new ArrayList<>();
        int i = 0;
        while (true) {
            if (i < N) {
                NotificationRecord record = notificationManagerService.mNotificationList.get(i);
                if (notificationManagerService.isVisibleToListener(record.getSbn(), info)) {
                    String key = record.getSbn().getKey();
                    NotificationListenerService.Ranking ranking = new NotificationListenerService.Ranking();
                    ranking.populate(key, rankings.size(), !record.isIntercepted(), record.getPackageVisibilityOverride(), record.getSuppressedVisualEffects(), record.getImportance(), record.getImportanceExplanation(), record.getSbn().getOverrideGroupKey(), record.getChannel(), record.getPeopleOverride(), record.getSnoozeCriteria(), record.canShowBadge(), record.getUserSentiment(), record.isHidden(), record.getLastAudiblyAlertedMs(), (record.getSound() == null && record.getVibration() == null) ? false : true, record.getSystemGeneratedSmartActions(), record.getSmartReplies(), record.canBubble(), record.isInterruptive(), record.isConversation(), record.getShortcutInfo(), record.getNotification().isBubbleNotification());
                    rankings.add(ranking);
                }
                i++;
                notificationManagerService = this;
            } else {
                return new NotificationRankingUpdate((NotificationListenerService.Ranking[]) rankings.toArray(new NotificationListenerService.Ranking[0]));
            }
        }
    }

    boolean hasCompanionDevice(ManagedServices.ManagedServiceInfo info) {
        if (this.mCompanionManager == null) {
            this.mCompanionManager = getCompanionManager();
        }
        if (this.mCompanionManager == null) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            try {
                try {
                    List<String> associations = this.mCompanionManager.getAssociations(info.component.getPackageName(), info.userid);
                    if (!ArrayUtils.isEmpty(associations)) {
                        Binder.restoreCallingIdentity(identity);
                        return true;
                    }
                } catch (Exception e) {
                    Slog.e(TAG, "Cannot verify listener " + info, e);
                }
            } catch (RemoteException re) {
                Slog.e(TAG, "Cannot reach companion device service", re);
            } catch (SecurityException e2) {
            }
            Binder.restoreCallingIdentity(identity);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    protected ICompanionDeviceManager getCompanionManager() {
        return ICompanionDeviceManager.Stub.asInterface(ServiceManager.getService("companiondevice"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isVisibleToListener(StatusBarNotification sbn, ManagedServices.ManagedServiceInfo listener) {
        if (!listener.enabledAndUserMatches(sbn.getUserId())) {
            return false;
        }
        return true;
    }

    private boolean isPackageSuspendedForUser(String pkg, int uid) {
        long identity = Binder.clearCallingIdentity();
        int userId = UserHandle.getUserId(uid);
        try {
            try {
                boolean zIsPackageSuspendedForUser = this.mPackageManager.isPackageSuspendedForUser(pkg, userId);
                Binder.restoreCallingIdentity(identity);
                return zIsPackageSuspendedForUser;
            } catch (RemoteException e) {
                throw new SecurityException("Could not talk to package manager service");
            } catch (IllegalArgumentException e2) {
                Binder.restoreCallingIdentity(identity);
                return false;
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    boolean canUseManagedServices(String pkg, Integer userId, String requiredPermission) {
        if (requiredPermission == null) {
            return true;
        }
        try {
            if (this.mPackageManager.checkPermission(requiredPermission, pkg, userId.intValue()) == 0) {
                return true;
            }
            return false;
        } catch (RemoteException e) {
            Slog.e(TAG, "can't talk to pm", e);
            return true;
        }
    }

    private class TrimCache {
        StatusBarNotification heavy;
        StatusBarNotification sbnClone;
        StatusBarNotification sbnCloneLight;

        TrimCache(StatusBarNotification sbn) {
            this.heavy = sbn;
        }

        StatusBarNotification ForListener(ManagedServices.ManagedServiceInfo info) {
            if (NotificationManagerService.this.mListeners.getOnNotificationPostedTrim(info) == 1) {
                if (this.sbnCloneLight == null) {
                    this.sbnCloneLight = this.heavy.cloneLight();
                }
                return this.sbnCloneLight;
            }
            if (this.sbnClone == null) {
                this.sbnClone = this.heavy.clone();
            }
            return this.sbnClone;
        }
    }

    private boolean isInCall() {
        int audioMode;
        return this.mInCallStateOffHook || (audioMode = this.mAudioManager.getMode()) == 2 || audioMode == 3;
    }

    public class NotificationAssistants extends ManagedServices {
        private static final String ATT_TYPES = "types";
        private static final String ATT_USER_SET = "user_set";
        private static final String TAG_ALLOWED_ADJUSTMENT_TYPES = "q_allowed_adjustments";
        static final String TAG_ENABLED_NOTIFICATION_ASSISTANTS = "enabled_assistants";
        private Set<String> mAllowedAdjustments;
        private final Object mLock;
        private ArrayMap<Integer, Boolean> mUserSetMap;

        @Override // com.android.server.notification.ManagedServices
        protected void loadDefaultsFromConfig() {
            ArraySet<String> assistants = new ArraySet<>();
            assistants.addAll(Arrays.asList(this.mContext.getResources().getString(R.string.config_deviceConfiguratorPackageName).split(":")));
            for (int i = 0; i < assistants.size(); i++) {
                ComponentName assistantCn = ComponentName.unflattenFromString(assistants.valueAt(i));
                String packageName = assistants.valueAt(i);
                if (assistantCn != null) {
                    packageName = assistantCn.getPackageName();
                }
                if (!TextUtils.isEmpty(packageName)) {
                    ArraySet<ComponentName> approved = queryPackageForServices(packageName, 786432, 0);
                    if (approved.contains(assistantCn)) {
                        addDefaultComponentOrPackage(assistantCn.flattenToString());
                    }
                }
            }
        }

        public NotificationAssistants(Context context, Object lock, ManagedServices.UserProfiles up, IPackageManager pm) {
            super(context, lock, up, pm);
            this.mLock = new Object();
            this.mUserSetMap = new ArrayMap<>();
            this.mAllowedAdjustments = new ArraySet();
            for (int i = 0; i < NotificationManagerService.DEFAULT_ALLOWED_ADJUSTMENTS.length; i++) {
                this.mAllowedAdjustments.add(NotificationManagerService.DEFAULT_ALLOWED_ADJUSTMENTS[i]);
            }
        }

        @Override // com.android.server.notification.ManagedServices
        protected ManagedServices.Config getConfig() {
            ManagedServices.Config c = new ManagedServices.Config();
            c.caption = "notification assistant";
            c.serviceInterface = "android.service.notification.NotificationAssistantService";
            c.xmlTag = TAG_ENABLED_NOTIFICATION_ASSISTANTS;
            c.secureSettingName = "enabled_notification_assistant";
            c.bindPermission = "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE";
            c.settingsAction = "android.settings.MANAGE_DEFAULT_APPS_SETTINGS";
            c.clientLabel = R.string.kg_login_invalid_input;
            return c;
        }

        @Override // com.android.server.notification.ManagedServices
        protected IInterface asInterface(IBinder binder) {
            return INotificationListener.Stub.asInterface(binder);
        }

        @Override // com.android.server.notification.ManagedServices
        protected boolean checkType(IInterface service) {
            return service instanceof INotificationListener;
        }

        @Override // com.android.server.notification.ManagedServices
        protected void onServiceAdded(ManagedServices.ManagedServiceInfo info) {
            NotificationManagerService.this.mListeners.registerGuestService(info);
        }

        @Override // com.android.server.notification.ManagedServices
        protected void onServiceRemovedLocked(ManagedServices.ManagedServiceInfo removed) {
            NotificationManagerService.this.mListeners.unregisterService(removed.service, removed.userid);
        }

        @Override // com.android.server.notification.ManagedServices
        public void onUserUnlocked(int user) {
            if (this.DEBUG) {
                Slog.d(this.TAG, "onUserUnlocked u=" + user);
            }
            rebindServices(true, user);
        }

        @Override // com.android.server.notification.ManagedServices
        protected String getRequiredPermission() {
            return "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE";
        }

        @Override // com.android.server.notification.ManagedServices
        protected void writeExtraXmlTags(XmlSerializer out) throws IOException {
            synchronized (this.mLock) {
                out.startTag(null, TAG_ALLOWED_ADJUSTMENT_TYPES);
                out.attribute(null, ATT_TYPES, TextUtils.join(",", this.mAllowedAdjustments));
                out.endTag(null, TAG_ALLOWED_ADJUSTMENT_TYPES);
            }
        }

        @Override // com.android.server.notification.ManagedServices
        protected void readExtraTag(String tag, XmlPullParser parser) throws IOException {
            if (TAG_ALLOWED_ADJUSTMENT_TYPES.equals(tag)) {
                String types = XmlUtils.readStringAttribute(parser, ATT_TYPES);
                synchronized (this.mLock) {
                    this.mAllowedAdjustments.clear();
                    if (!TextUtils.isEmpty(types)) {
                        this.mAllowedAdjustments.addAll(Arrays.asList(types.split(",")));
                    }
                }
            }
        }

        protected void allowAdjustmentType(String type) {
            synchronized (this.mLock) {
                this.mAllowedAdjustments.add(type);
            }
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$allowAdjustmentType$0$NotificationManagerService$NotificationAssistants(info);
                    }
                });
            }
        }

        protected void disallowAdjustmentType(String type) {
            synchronized (this.mLock) {
                this.mAllowedAdjustments.remove(type);
            }
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$disallowAdjustmentType$1$NotificationManagerService$NotificationAssistants(info);
                    }
                });
            }
        }

        protected List<String> getAllowedAssistantAdjustments() {
            List<String> types;
            synchronized (this.mLock) {
                types = new ArrayList<>();
                types.addAll(this.mAllowedAdjustments);
            }
            return types;
        }

        protected boolean isAdjustmentAllowed(String type) {
            boolean zContains;
            synchronized (this.mLock) {
                zContains = this.mAllowedAdjustments.contains(type);
            }
            return zContains;
        }

        protected void onNotificationsSeenLocked(ArrayList<NotificationRecord> records) {
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                final ArrayList<String> keys = new ArrayList<>(records.size());
                for (NotificationRecord r : records) {
                    boolean sbnVisible = NotificationManagerService.this.isVisibleToListener(r.getSbn(), info) && info.isSameUser(r.getUserId());
                    if (sbnVisible) {
                        keys.add(r.getKey());
                    }
                }
                if (!keys.isEmpty()) {
                    NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onNotificationsSeenLocked$2$NotificationManagerService$NotificationAssistants(info, keys);
                        }
                    });
                }
            }
        }

        protected void onPanelRevealed(final int items) {
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$qNPzonSecZ4lX0Og0m8NERBS_UQ
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onPanelRevealed$3$NotificationManagerService$NotificationAssistants(info, items);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onPanelRevealed$3$NotificationManagerService$NotificationAssistants(ManagedServices.ManagedServiceInfo info, int items) {
            INotificationListener assistant = info.service;
            try {
                assistant.onPanelRevealed(items);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (panel revealed): " + info, ex);
            }
        }

        protected void onPanelHidden() {
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$pzk58E_uhN8zWEPqtMQoUZpAM4k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onPanelHidden$4$NotificationManagerService$NotificationAssistants(info);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onPanelHidden$4$NotificationManagerService$NotificationAssistants(ManagedServices.ManagedServiceInfo info) {
            INotificationListener assistant = info.service;
            try {
                assistant.onPanelHidden();
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (panel hidden): " + info, ex);
            }
        }

        boolean hasUserSet(int userId) {
            boolean zBooleanValue;
            synchronized (this.mLock) {
                zBooleanValue = this.mUserSetMap.getOrDefault(Integer.valueOf(userId), false).booleanValue();
            }
            return zBooleanValue;
        }

        void setUserSet(int userId, boolean set) {
            synchronized (this.mLock) {
                this.mUserSetMap.put(Integer.valueOf(userId), Boolean.valueOf(set));
            }
        }

        @Override // com.android.server.notification.ManagedServices
        protected void writeExtraAttributes(XmlSerializer out, int userId) throws IOException {
            out.attribute(null, ATT_USER_SET, Boolean.toString(hasUserSet(userId)));
        }

        @Override // com.android.server.notification.ManagedServices
        protected void readExtraAttributes(String tag, XmlPullParser parser, int userId) throws IOException {
            boolean userSet = XmlUtils.readBooleanAttribute(parser, ATT_USER_SET, false);
            setUserSet(userId, userSet);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: notifyCapabilitiesChanged, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void lambda$disallowAdjustmentType$1$NotificationManagerService$NotificationAssistants(ManagedServices.ManagedServiceInfo info) {
            INotificationListener assistant = info.service;
            try {
                assistant.onAllowedAdjustmentsChanged();
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (capabilities): " + info, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: notifySeen, reason: merged with bridge method [inline-methods] */
        public void lambda$onNotificationsSeenLocked$2$NotificationManagerService$NotificationAssistants(ManagedServices.ManagedServiceInfo info, ArrayList<String> keys) {
            INotificationListener assistant = info.service;
            try {
                assistant.onNotificationsSeen(keys);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (seen): " + info, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onNotificationEnqueuedLocked(final NotificationRecord r) {
            final boolean debug = isVerboseLogEnabled();
            if (debug) {
                Slog.v(this.TAG, "onNotificationEnqueuedLocked() called with: r = [" + r + "]");
            }
            StatusBarNotification sbn = r.getSbn();
            notifyAssistantLocked(sbn, true, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$S2EUT9RRW0P4hWLU4YD7mrnGPII
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$onNotificationEnqueuedLocked$5$NotificationManagerService$NotificationAssistants(debug, r, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$onNotificationEnqueuedLocked$5$NotificationManagerService$NotificationAssistants(boolean debug, NotificationRecord r, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            if (debug) {
                try {
                    Slog.v(this.TAG, "calling onNotificationEnqueuedWithChannel " + sbnHolder);
                } catch (RemoteException ex) {
                    Slog.e(this.TAG, "unable to notify assistant (enqueued): " + assistant, ex);
                    return;
                }
            }
            assistant.onNotificationEnqueuedWithChannel(sbnHolder, r.getChannel());
        }

        void notifyAssistantVisibilityChangedLocked(StatusBarNotification sbn, final boolean isVisible) {
            final String key = sbn.getKey();
            if (NotificationManagerService.DBG) {
                Slog.d(this.TAG, "notifyAssistantVisibilityChangedLocked: " + key);
            }
            notifyAssistantLocked(sbn, false, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$fguXa8ZWUwjg4Css0w9IvLwqTno
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$notifyAssistantVisibilityChangedLocked$6$NotificationManagerService$NotificationAssistants(key, isVisible, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$notifyAssistantVisibilityChangedLocked$6$NotificationManagerService$NotificationAssistants(String key, boolean isVisible, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            try {
                assistant.onNotificationVisibilityChanged(key, isVisible);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (visible): " + assistant, ex);
            }
        }

        void notifyAssistantExpansionChangedLocked(StatusBarNotification sbn, final boolean isUserAction, final boolean isExpanded) {
            final String key = sbn.getKey();
            notifyAssistantLocked(sbn, false, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$ou_FTabXQDrMmZWvZYfT09jSrKI
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$notifyAssistantExpansionChangedLocked$7$NotificationManagerService$NotificationAssistants(key, isUserAction, isExpanded, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$notifyAssistantExpansionChangedLocked$7$NotificationManagerService$NotificationAssistants(String key, boolean isUserAction, boolean isExpanded, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            try {
                assistant.onNotificationExpansionChanged(key, isUserAction, isExpanded);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (expanded): " + assistant, ex);
            }
        }

        void notifyAssistantNotificationDirectReplyLocked(StatusBarNotification sbn) {
            final String key = sbn.getKey();
            notifyAssistantLocked(sbn, false, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$j__6VKF3Ej58Ecwq9KDrcYMRydI
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$notifyAssistantNotificationDirectReplyLocked$8$NotificationManagerService$NotificationAssistants(key, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$notifyAssistantNotificationDirectReplyLocked$8$NotificationManagerService$NotificationAssistants(String key, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            try {
                assistant.onNotificationDirectReply(key);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (expanded): " + assistant, ex);
            }
        }

        void notifyAssistantSuggestedReplySent(StatusBarNotification sbn, final CharSequence reply, final boolean generatedByAssistant) {
            final String key = sbn.getKey();
            notifyAssistantLocked(sbn, false, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$3ktx5hfF9rabi25qaQLZ-YvqPO4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$notifyAssistantSuggestedReplySent$9$NotificationManagerService$NotificationAssistants(key, reply, generatedByAssistant, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$notifyAssistantSuggestedReplySent$9$NotificationManagerService$NotificationAssistants(String key, CharSequence reply, boolean generatedByAssistant, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            int i;
            if (generatedByAssistant) {
                i = 1;
            } else {
                i = 0;
            }
            try {
                assistant.onSuggestedReplySent(key, reply, i);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (snoozed): " + assistant, ex);
            }
        }

        void notifyAssistantActionClicked(StatusBarNotification sbn, int actionIndex, final Notification.Action action, final boolean generatedByAssistant) {
            final String key = sbn.getKey();
            notifyAssistantLocked(sbn, false, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$uDzVB3NwVCerv0Z5si1fGXZkZu4
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$notifyAssistantActionClicked$10$NotificationManagerService$NotificationAssistants(key, action, generatedByAssistant, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$notifyAssistantActionClicked$10$NotificationManagerService$NotificationAssistants(String key, Notification.Action action, boolean generatedByAssistant, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            int i;
            if (generatedByAssistant) {
                i = 1;
            } else {
                i = 0;
            }
            try {
                assistant.onActionClicked(key, action, i);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (snoozed): " + assistant, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyAssistantSnoozedLocked(StatusBarNotification sbn, final String snoozeCriterionId) {
            notifyAssistantLocked(sbn, false, new BiConsumer() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$-frFvBh01OajP_vj8nGNvXvmX1Y
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    this.f$0.lambda$notifyAssistantSnoozedLocked$11$NotificationManagerService$NotificationAssistants(snoozeCriterionId, (INotificationListener) obj, (NotificationManagerService.StatusBarNotificationHolder) obj2);
                }
            });
        }

        public /* synthetic */ void lambda$notifyAssistantSnoozedLocked$11$NotificationManagerService$NotificationAssistants(String snoozeCriterionId, INotificationListener assistant, StatusBarNotificationHolder sbnHolder) {
            try {
                assistant.onNotificationSnoozedUntilContext(sbnHolder, snoozeCriterionId);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify assistant (snoozed): " + assistant, ex);
            }
        }

        private void notifyAssistantLocked(StatusBarNotification sbn, boolean sameUserOnly, final BiConsumer<INotificationListener, StatusBarNotificationHolder> callback) {
            TrimCache trimCache = NotificationManagerService.this.new TrimCache(sbn);
            boolean debug = isVerboseLogEnabled();
            if (debug) {
                Slog.v(this.TAG, "notifyAssistantLocked() called with: sbn = [" + sbn + "], sameUserOnly = [" + sameUserOnly + "], callback = [" + callback + "]");
            }
            for (ManagedServices.ManagedServiceInfo info : getServices()) {
                boolean sbnVisible = NotificationManagerService.this.isVisibleToListener(sbn, info) && (!sameUserOnly || info.isSameUser(sbn.getUserId()));
                if (debug) {
                    Slog.v(this.TAG, "notifyAssistantLocked info=" + info + " snbVisible=" + sbnVisible);
                }
                if (sbnVisible) {
                    final INotificationListener assistant = info.service;
                    StatusBarNotification sbnToPost = trimCache.ForListener(info);
                    final StatusBarNotificationHolder sbnHolder = new StatusBarNotificationHolder(sbnToPost);
                    NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationAssistants$2uJN0X0VDgKmWRoJqYsux0bhlYo
                        @Override // java.lang.Runnable
                        public final void run() {
                            callback.accept(assistant, sbnHolder);
                        }
                    });
                }
            }
        }

        public boolean isEnabled() {
            return !getServices().isEmpty();
        }

        protected void resetDefaultAssistantsIfNecessary() {
            List<UserInfo> activeUsers = this.mUm.getUsers(true);
            for (UserInfo userInfo : activeUsers) {
                int userId = userInfo.getUserHandle().getIdentifier();
                if (!hasUserSet(userId)) {
                    Slog.d(this.TAG, "Approving default notification assistant for user " + userId);
                    NotificationManagerService.this.setDefaultAssistantForUser(userId);
                }
            }
        }

        @Override // com.android.server.notification.ManagedServices
        protected void setPackageOrComponentEnabled(String pkgOrComponent, int userId, boolean isPrimary, boolean enabled) {
            if (enabled) {
                List<ComponentName> allowedComponents = getAllowedComponents(userId);
                if (!allowedComponents.isEmpty()) {
                    ComponentName currentComponent = (ComponentName) CollectionUtils.firstOrNull(allowedComponents);
                    if (currentComponent.flattenToString().equals(pkgOrComponent)) {
                        return;
                    } else {
                        NotificationManagerService.this.setNotificationAssistantAccessGrantedForUserInternal(currentComponent, userId, false);
                    }
                }
            }
            super.setPackageOrComponentEnabled(pkgOrComponent, userId, isPrimary, enabled);
        }

        @Override // com.android.server.notification.ManagedServices
        public void dump(PrintWriter pw, DumpFilter filter) {
            super.dump(pw, filter);
            pw.println("    Has user set:");
            synchronized (this.mLock) {
                Set<Integer> userIds = this.mUserSetMap.keySet();
                Iterator<Integer> it = userIds.iterator();
                while (it.hasNext()) {
                    int userId = it.next().intValue();
                    pw.println("      userId=" + userId + " value=" + this.mUserSetMap.get(Integer.valueOf(userId)));
                }
            }
        }

        private boolean isVerboseLogEnabled() {
            return Log.isLoggable("notification_assistant", 2);
        }
    }

    public class NotificationListeners extends ManagedServices {
        static final String TAG_ENABLED_NOTIFICATION_LISTENERS = "enabled_listeners";
        private final ArraySet<ManagedServices.ManagedServiceInfo> mLightTrimListeners;

        public NotificationListeners(IPackageManager pm) {
            super(NotificationManagerService.this.getContext(), NotificationManagerService.this.mNotificationLock, NotificationManagerService.this.mUserProfiles, pm);
            this.mLightTrimListeners = new ArraySet<>();
        }

        @Override // com.android.server.notification.ManagedServices
        protected void loadDefaultsFromConfig() {
            String defaultListenerAccess = this.mContext.getResources().getString(R.string.config_displayLightSensorType);
            if (defaultListenerAccess != null) {
                String[] listeners = defaultListenerAccess.split(":");
                for (int i = 0; i < listeners.length; i++) {
                    if (!TextUtils.isEmpty(listeners[i])) {
                        ArraySet<ComponentName> approvedListeners = queryPackageForServices(listeners[i], 786432, 0);
                        for (int k = 0; k < approvedListeners.size(); k++) {
                            ComponentName cn = approvedListeners.valueAt(k);
                            addDefaultComponentOrPackage(cn.flattenToString());
                        }
                    }
                }
            }
        }

        @Override // com.android.server.notification.ManagedServices
        protected int getBindFlags() {
            return 83886337;
        }

        @Override // com.android.server.notification.ManagedServices
        protected ManagedServices.Config getConfig() {
            ManagedServices.Config c = new ManagedServices.Config();
            c.caption = "notification listener";
            c.serviceInterface = "android.service.notification.NotificationListenerService";
            c.xmlTag = TAG_ENABLED_NOTIFICATION_LISTENERS;
            c.secureSettingName = "enabled_notification_listeners";
            c.bindPermission = "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE";
            c.settingsAction = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS";
            c.clientLabel = R.string.kg_login_checking_password;
            return c;
        }

        @Override // com.android.server.notification.ManagedServices
        protected IInterface asInterface(IBinder binder) {
            return INotificationListener.Stub.asInterface(binder);
        }

        @Override // com.android.server.notification.ManagedServices
        protected boolean checkType(IInterface service) {
            return service instanceof INotificationListener;
        }

        @Override // com.android.server.notification.ManagedServices
        public void onServiceAdded(ManagedServices.ManagedServiceInfo info) {
            NotificationRankingUpdate update;
            INotificationListener listener = info.service;
            synchronized (NotificationManagerService.this.mNotificationLock) {
                update = NotificationManagerService.this.makeRankingUpdateLocked(info);
                updateUriPermissionsForActiveNotificationsLocked(info, true);
            }
            try {
                listener.onListenerConnected(update);
            } catch (RemoteException e) {
            }
        }

        @Override // com.android.server.notification.ManagedServices
        protected void onServiceRemovedLocked(ManagedServices.ManagedServiceInfo removed) {
            updateUriPermissionsForActiveNotificationsLocked(removed, false);
            if (NotificationManagerService.this.removeDisabledHints(removed)) {
                NotificationManagerService.this.updateListenerHintsLocked();
                NotificationManagerService.this.updateEffectsSuppressorLocked();
            }
            this.mLightTrimListeners.remove(removed);
        }

        @Override // com.android.server.notification.ManagedServices
        protected String getRequiredPermission() {
            return null;
        }

        public void setOnNotificationPostedTrimLocked(ManagedServices.ManagedServiceInfo info, int trim) {
            if (trim == 1) {
                this.mLightTrimListeners.add(info);
            } else {
                this.mLightTrimListeners.remove(info);
            }
        }

        public int getOnNotificationPostedTrim(ManagedServices.ManagedServiceInfo managedServiceInfo) {
            return this.mLightTrimListeners.contains(managedServiceInfo) ? 1 : 0;
        }

        public void onStatusBarIconsBehaviorChanged(final boolean hideSilentStatusIcons) {
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onStatusBarIconsBehaviorChanged$0$NotificationManagerService$NotificationListeners(info, hideSilentStatusIcons);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onStatusBarIconsBehaviorChanged$0$NotificationManagerService$NotificationListeners(ManagedServices.ManagedServiceInfo info, boolean hideSilentStatusIcons) {
            INotificationListener listener = info.service;
            try {
                listener.onStatusBarIconsBehaviorChanged(hideSilentStatusIcons);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (hideSilentStatusIcons): " + info, ex);
            }
        }

        public void notifyPostedLocked(NotificationRecord r, NotificationRecord old) {
            notifyPostedLocked(r, old, true);
        }

        private void notifyPostedLocked(NotificationRecord r, NotificationRecord old, boolean notifyAllListeners) {
            try {
                StatusBarNotification sbn = r.getSbn();
                StatusBarNotification oldSbn = old != null ? old.getSbn() : null;
                TrimCache trimCache = NotificationManagerService.this.new TrimCache(sbn);
                for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                    boolean sbnVisible = NotificationManagerService.this.isVisibleToListener(sbn, info);
                    int targetUserId = 0;
                    boolean oldSbnVisible = oldSbn != null && NotificationManagerService.this.isVisibleToListener(oldSbn, info);
                    if (oldSbnVisible || sbnVisible) {
                        if (!r.isHidden() || info.targetSdkVersion >= 28) {
                            if (notifyAllListeners || info.targetSdkVersion < 28) {
                                final NotificationRankingUpdate update = NotificationManagerService.this.makeRankingUpdateLocked(info);
                                if (oldSbnVisible && !sbnVisible) {
                                    final StatusBarNotification oldSbnLightClone = oldSbn.cloneLight();
                                    NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$kRSiPnZjTmEMA2HpCtJ2Zu_9WS0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$notifyPostedLocked$1$NotificationManagerService$NotificationListeners(info, oldSbnLightClone, update);
                                        }
                                    });
                                } else {
                                    if (info.userid != -1) {
                                        targetUserId = info.userid;
                                    }
                                    NotificationManagerService.this.updateUriPermissions(r, old, info.component.getPackageName(), targetUserId);
                                    final StatusBarNotification sbnToPost = trimCache.ForListener(info);
                                    NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$uPHnykAZVsO0A9ThsM2s_Hx5qr0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            this.f$0.lambda$notifyPostedLocked$2$NotificationManagerService$NotificationListeners(info, sbnToPost, update);
                                        }
                                    });
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Slog.e(this.TAG, "Could not notify listeners for " + r.getKey(), e);
            }
        }

        public /* synthetic */ void lambda$notifyPostedLocked$1$NotificationManagerService$NotificationListeners(ManagedServices.ManagedServiceInfo info, StatusBarNotification oldSbnLightClone, NotificationRankingUpdate update) {
            lambda$notifyRemovedLocked$3$NotificationManagerService$NotificationListeners(info, oldSbnLightClone, update, null, 6);
        }

        private void updateUriPermissionsForActiveNotificationsLocked(ManagedServices.ManagedServiceInfo info, boolean grant) {
            try {
                for (NotificationRecord r : NotificationManagerService.this.mNotificationList) {
                    if (!grant || NotificationManagerService.this.isVisibleToListener(r.getSbn(), info)) {
                        if (!r.isHidden() || info.targetSdkVersion >= 28) {
                            int targetUserId = info.userid == -1 ? 0 : info.userid;
                            if (grant) {
                                NotificationManagerService.this.updateUriPermissions(r, null, info.component.getPackageName(), targetUserId);
                            } else {
                                NotificationManagerService.this.updateUriPermissions(null, r, info.component.getPackageName(), targetUserId, true);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                String str = this.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Could not ");
                sb.append(grant ? "grant" : "revoke");
                sb.append(" Uri permissions to ");
                sb.append(info.component);
                Slog.e(str, sb.toString(), e);
            }
        }

        public void notifyRemovedLocked(final NotificationRecord r, final int reason, NotificationStats notificationStats) {
            StatusBarNotification sbn = r.getSbn();
            final StatusBarNotification sbnLight = sbn.cloneLight();
            for (final ManagedServices.ManagedServiceInfo info : getServices()) {
                if (NotificationManagerService.this.isVisibleToListener(sbn, info) && (!r.isHidden() || reason == 14 || info.targetSdkVersion >= 28)) {
                    if (reason != 14 || info.targetSdkVersion < 28) {
                        final NotificationStats stats = NotificationManagerService.this.mAssistants.isServiceTokenValidLocked(info.service) ? notificationStats : null;
                        final NotificationRankingUpdate update = NotificationManagerService.this.makeRankingUpdateLocked(info);
                        NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$VL4v-GHh5b5tjmHBSmXr22uokiE
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$notifyRemovedLocked$3$NotificationManagerService$NotificationListeners(info, sbnLight, update, stats, reason);
                            }
                        });
                    }
                }
            }
            NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$RG07DM1XbcUMWDA-6K3k2rRqA7w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$notifyRemovedLocked$4$NotificationManagerService$NotificationListeners(r);
                }
            });
        }

        public /* synthetic */ void lambda$notifyRemovedLocked$4$NotificationManagerService$NotificationListeners(NotificationRecord r) {
            NotificationManagerService.this.updateUriPermissions(null, r, null, 0);
        }

        public void notifyRankingUpdateLocked(List<NotificationRecord> changedHiddenNotifications) {
            boolean isHiddenRankingUpdate = changedHiddenNotifications != null && changedHiddenNotifications.size() > 0;
            for (final ManagedServices.ManagedServiceInfo serviceInfo : getServices()) {
                if (serviceInfo.isEnabledForCurrentProfiles()) {
                    boolean notifyThisListener = false;
                    if (isHiddenRankingUpdate && serviceInfo.targetSdkVersion >= 28) {
                        for (NotificationRecord rec : changedHiddenNotifications) {
                            if (NotificationManagerService.this.isVisibleToListener(rec.getSbn(), serviceInfo)) {
                                notifyThisListener = true;
                                break;
                            }
                        }
                    }
                    if (notifyThisListener || !isHiddenRankingUpdate) {
                        final NotificationRankingUpdate update = NotificationManagerService.this.makeRankingUpdateLocked(serviceInfo);
                        NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.NotificationListeners.1
                            @Override // java.lang.Runnable
                            public void run() {
                                NotificationListeners.this.notifyRankingUpdate(serviceInfo, update);
                            }
                        });
                    }
                }
            }
        }

        public void notifyListenerHintsChangedLocked(final int hints) {
            for (final ManagedServices.ManagedServiceInfo serviceInfo : getServices()) {
                if (serviceInfo.isEnabledForCurrentProfiles()) {
                    NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.NotificationListeners.2
                        @Override // java.lang.Runnable
                        public void run() {
                            NotificationListeners.this.notifyListenerHintsChanged(serviceInfo, hints);
                        }
                    });
                }
            }
        }

        public void notifyHiddenLocked(List<NotificationRecord> changedNotifications) {
            if (changedNotifications == null || changedNotifications.size() == 0) {
                return;
            }
            notifyRankingUpdateLocked(changedNotifications);
            int numChangedNotifications = changedNotifications.size();
            for (int i = 0; i < numChangedNotifications; i++) {
                NotificationRecord rec = changedNotifications.get(i);
                NotificationManagerService.this.mListeners.notifyRemovedLocked(rec, 14, rec.getStats());
            }
        }

        public void notifyUnhiddenLocked(List<NotificationRecord> changedNotifications) {
            if (changedNotifications == null || changedNotifications.size() == 0) {
                return;
            }
            notifyRankingUpdateLocked(changedNotifications);
            int numChangedNotifications = changedNotifications.size();
            for (int i = 0; i < numChangedNotifications; i++) {
                NotificationRecord rec = changedNotifications.get(i);
                NotificationManagerService.this.mListeners.notifyPostedLocked(rec, rec, false);
            }
        }

        public void notifyInterruptionFilterChanged(final int interruptionFilter) {
            for (final ManagedServices.ManagedServiceInfo serviceInfo : getServices()) {
                if (serviceInfo.isEnabledForCurrentProfiles()) {
                    NotificationManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.notification.NotificationManagerService.NotificationListeners.3
                        @Override // java.lang.Runnable
                        public void run() {
                            NotificationListeners.this.notifyInterruptionFilterChanged(serviceInfo, interruptionFilter);
                        }
                    });
                }
            }
        }

        protected void notifyNotificationChannelChanged(final String pkg, final UserHandle user, final NotificationChannel channel, final int modificationType) {
            if (channel == null) {
                return;
            }
            for (final ManagedServices.ManagedServiceInfo serviceInfo : getServices()) {
                if (serviceInfo.enabledAndUserMatches(UserHandle.getCallingUserId())) {
                    BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$T28gkpwvXVt1qU0uY3aIqQzMoCg
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$notifyNotificationChannelChanged$5$NotificationManagerService$NotificationListeners(serviceInfo, pkg, user, channel, modificationType);
                        }
                    });
                }
            }
        }

        public /* synthetic */ void lambda$notifyNotificationChannelChanged$5$NotificationManagerService$NotificationListeners(ManagedServices.ManagedServiceInfo serviceInfo, String pkg, UserHandle user, NotificationChannel channel, int modificationType) {
            if (serviceInfo.isSystem || NotificationManagerService.this.hasCompanionDevice(serviceInfo)) {
                notifyNotificationChannelChanged(serviceInfo, pkg, user, channel, modificationType);
            }
        }

        protected void notifyNotificationChannelGroupChanged(final String pkg, final UserHandle user, final NotificationChannelGroup group, final int modificationType) {
            if (group == null) {
                return;
            }
            for (final ManagedServices.ManagedServiceInfo serviceInfo : getServices()) {
                if (serviceInfo.enabledAndUserMatches(UserHandle.getCallingUserId())) {
                    BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.notification.-$$Lambda$NotificationManagerService$NotificationListeners$X_tduHX_DHuatKnKEYm-qc43YvA
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$notifyNotificationChannelGroupChanged$6$NotificationManagerService$NotificationListeners(serviceInfo, pkg, user, group, modificationType);
                        }
                    });
                }
            }
        }

        public /* synthetic */ void lambda$notifyNotificationChannelGroupChanged$6$NotificationManagerService$NotificationListeners(ManagedServices.ManagedServiceInfo serviceInfo, String pkg, UserHandle user, NotificationChannelGroup group, int modificationType) {
            if (serviceInfo.isSystem || NotificationManagerService.this.hasCompanionDevice(serviceInfo)) {
                notifyNotificationChannelGroupChanged(serviceInfo, pkg, user, group, modificationType);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: notifyPosted, reason: merged with bridge method [inline-methods] */
        public void lambda$notifyPostedLocked$2$NotificationManagerService$NotificationListeners(ManagedServices.ManagedServiceInfo info, StatusBarNotification sbn, NotificationRankingUpdate rankingUpdate) {
            INotificationListener listener = info.service;
            StatusBarNotificationHolder sbnHolder = new StatusBarNotificationHolder(sbn);
            try {
                listener.onNotificationPosted(sbnHolder, rankingUpdate);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (posted): " + info, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: notifyRemoved, reason: merged with bridge method [inline-methods] */
        public void lambda$notifyRemovedLocked$3$NotificationManagerService$NotificationListeners(ManagedServices.ManagedServiceInfo info, StatusBarNotification sbn, NotificationRankingUpdate rankingUpdate, NotificationStats stats, int reason) {
            if (!info.enabledAndUserMatches(sbn.getUserId())) {
                return;
            }
            INotificationListener listener = info.service;
            StatusBarNotificationHolder sbnHolder = new StatusBarNotificationHolder(sbn);
            try {
                listener.onNotificationRemoved(sbnHolder, rankingUpdate, stats, reason);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (removed): " + info, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyRankingUpdate(ManagedServices.ManagedServiceInfo info, NotificationRankingUpdate rankingUpdate) {
            INotificationListener listener = info.service;
            try {
                listener.onNotificationRankingUpdate(rankingUpdate);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (ranking update): " + info, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyListenerHintsChanged(ManagedServices.ManagedServiceInfo info, int hints) {
            INotificationListener listener = info.service;
            try {
                listener.onListenerHintsChanged(hints);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (listener hints): " + info, ex);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifyInterruptionFilterChanged(ManagedServices.ManagedServiceInfo info, int interruptionFilter) {
            INotificationListener listener = info.service;
            try {
                listener.onInterruptionFilterChanged(interruptionFilter);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (interruption filter): " + info, ex);
            }
        }

        void notifyNotificationChannelChanged(ManagedServices.ManagedServiceInfo info, String pkg, UserHandle user, NotificationChannel channel, int modificationType) {
            INotificationListener listener = info.service;
            try {
                listener.onNotificationChannelModification(pkg, user, channel, modificationType);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (channel changed): " + info, ex);
            }
        }

        private void notifyNotificationChannelGroupChanged(ManagedServices.ManagedServiceInfo info, String pkg, UserHandle user, NotificationChannelGroup group, int modificationType) {
            INotificationListener listener = info.service;
            try {
                listener.onNotificationChannelGroupModification(pkg, user, group, modificationType);
            } catch (RemoteException ex) {
                Slog.e(this.TAG, "unable to notify listener (channel group changed): " + info, ex);
            }
        }

        public boolean isListenerPackage(String packageName) {
            if (packageName == null) {
                return false;
            }
            synchronized (NotificationManagerService.this.mNotificationLock) {
                for (ManagedServices.ManagedServiceInfo serviceInfo : getServices()) {
                    if (packageName.equals(serviceInfo.component.getPackageName())) {
                        return true;
                    }
                }
                return false;
            }
        }
    }

    class RoleObserver implements OnRoleHoldersChangedListener {
        private final Executor mExecutor;
        private ArrayMap<String, ArrayMap<Integer, ArraySet<String>>> mNonBlockableDefaultApps;
        private final IPackageManager mPm;
        private final RoleManager mRm;

        RoleObserver(RoleManager roleManager, IPackageManager pkgMgr, Executor executor) {
            this.mRm = roleManager;
            this.mPm = pkgMgr;
            this.mExecutor = executor;
        }

        public void init() {
            List<UserInfo> users = NotificationManagerService.this.mUm.getUsers();
            this.mNonBlockableDefaultApps = new ArrayMap<>();
            for (int i = 0; i < NotificationManagerService.NON_BLOCKABLE_DEFAULT_ROLES.length; i++) {
                ArrayMap<Integer, ArraySet<String>> userToApprovedList = new ArrayMap<>();
                this.mNonBlockableDefaultApps.put(NotificationManagerService.NON_BLOCKABLE_DEFAULT_ROLES[i], userToApprovedList);
                for (int j = 0; j < users.size(); j++) {
                    Integer userId = Integer.valueOf(users.get(j).getUserHandle().getIdentifier());
                    ArraySet<String> approvedForUserId = new ArraySet<>(this.mRm.getRoleHoldersAsUser(NotificationManagerService.NON_BLOCKABLE_DEFAULT_ROLES[i], UserHandle.of(userId.intValue())));
                    ArraySet<Pair<String, Integer>> approvedAppUids = new ArraySet<>();
                    for (String pkg : approvedForUserId) {
                        approvedAppUids.add(new Pair<>(pkg, Integer.valueOf(getUidForPackage(pkg, userId.intValue()))));
                    }
                    userToApprovedList.put(userId, approvedForUserId);
                    NotificationManagerService.this.mPreferencesHelper.updateDefaultApps(userId.intValue(), null, approvedAppUids);
                }
            }
            this.mRm.addOnRoleHoldersChangedListenerAsUser(this.mExecutor, this, UserHandle.ALL);
        }

        public boolean isApprovedPackageForRoleForUser(String role, String pkg, int userId) {
            return this.mNonBlockableDefaultApps.get(role).get(Integer.valueOf(userId)).contains(pkg);
        }

        public void onRoleHoldersChanged(String roleName, UserHandle user) {
            boolean relevantChange = false;
            for (int i = 0; i < NotificationManagerService.NON_BLOCKABLE_DEFAULT_ROLES.length; i++) {
                if (NotificationManagerService.NON_BLOCKABLE_DEFAULT_ROLES[i].equals(roleName)) {
                    relevantChange = true;
                    break;
                }
            }
            if (!relevantChange) {
                return;
            }
            ArraySet<String> roleHolders = new ArraySet<>(this.mRm.getRoleHoldersAsUser(roleName, user));
            ArrayMap<Integer, ArraySet<String>> prevApprovedForRole = this.mNonBlockableDefaultApps.getOrDefault(roleName, new ArrayMap<>());
            ArraySet<String> previouslyApproved = prevApprovedForRole.getOrDefault(Integer.valueOf(user.getIdentifier()), new ArraySet<>());
            ArraySet<String> toRemove = new ArraySet<>();
            ArraySet<Pair<String, Integer>> toAdd = new ArraySet<>();
            for (String previous : previouslyApproved) {
                if (!roleHolders.contains(previous)) {
                    toRemove.add(previous);
                }
            }
            for (String nowApproved : roleHolders) {
                if (!previouslyApproved.contains(nowApproved)) {
                    toAdd.add(new Pair<>(nowApproved, Integer.valueOf(getUidForPackage(nowApproved, user.getIdentifier()))));
                }
            }
            prevApprovedForRole.put(Integer.valueOf(user.getIdentifier()), roleHolders);
            this.mNonBlockableDefaultApps.put(roleName, prevApprovedForRole);
            NotificationManagerService.this.mPreferencesHelper.updateDefaultApps(user.getIdentifier(), toRemove, toAdd);
        }

        private int getUidForPackage(String pkg, int userId) {
            try {
                return this.mPm.getPackageUid(pkg, 131072, userId);
            } catch (RemoteException e) {
                Slog.e(NotificationManagerService.TAG, "role manager has bad default " + pkg + " " + userId);
                return -1;
            }
        }
    }

    public static final class DumpFilter {
        public String pkgFilter;
        public boolean rvStats;
        public long since;
        public boolean stats;
        public boolean zen;
        public boolean filtered = false;
        public boolean redact = true;
        public boolean proto = false;
        public boolean criticalPriority = false;
        public boolean normalPriority = false;

        /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
        public static DumpFilter parseFromArguments(String[] args) {
            DumpFilter filter = new DumpFilter();
            int ai = 0;
            while (ai < args.length) {
                String a = args[ai];
                if (PriorityDump.PROTO_ARG.equals(a)) {
                    filter.proto = true;
                } else {
                    byte b = 0;
                    if ("--noredact".equals(a) || "--reveal".equals(a)) {
                        filter.redact = false;
                    } else if ("p".equals(a) || "pkg".equals(a) || "--package".equals(a)) {
                        if (ai < args.length - 1) {
                            ai++;
                            String lowerCase = args[ai].trim().toLowerCase();
                            filter.pkgFilter = lowerCase;
                            if (lowerCase.isEmpty()) {
                                filter.pkgFilter = null;
                            } else {
                                filter.filtered = true;
                            }
                        }
                    } else if ("--zen".equals(a) || "zen".equals(a)) {
                        filter.filtered = true;
                        filter.zen = true;
                    } else if ("--stats".equals(a)) {
                        filter.stats = true;
                        if (ai < args.length - 1) {
                            ai++;
                            filter.since = Long.parseLong(args[ai]);
                        } else {
                            filter.since = 0L;
                        }
                    } else if ("--remote-view-stats".equals(a)) {
                        filter.rvStats = true;
                        if (ai < args.length - 1) {
                            ai++;
                            filter.since = Long.parseLong(args[ai]);
                        } else {
                            filter.since = 0L;
                        }
                    } else if (PriorityDump.PRIORITY_ARG.equals(a) && ai < args.length - 1) {
                        ai++;
                        String str = args[ai];
                        int iHashCode = str.hashCode();
                        if (iHashCode != -1986416409) {
                            if (iHashCode != -1560189025 || !str.equals(PriorityDump.PRIORITY_ARG_CRITICAL)) {
                                b = -1;
                            }
                        } else if (str.equals(PriorityDump.PRIORITY_ARG_NORMAL)) {
                            b = 1;
                        } else {
                            b = -1;
                        }
                        if (b == 0) {
                            filter.criticalPriority = true;
                        } else if (b == 1) {
                            filter.normalPriority = true;
                        }
                    }
                }
                ai++;
            }
            return filter;
        }

        public boolean matches(StatusBarNotification sbn) {
            if (this.filtered && !this.zen) {
                return sbn != null && (matches(sbn.getPackageName()) || matches(sbn.getOpPkg()));
            }
            return true;
        }

        public boolean matches(ComponentName component) {
            if (this.filtered && !this.zen) {
                return component != null && matches(component.getPackageName());
            }
            return true;
        }

        public boolean matches(String pkg) {
            if (this.filtered && !this.zen) {
                return pkg != null && pkg.toLowerCase().contains(this.pkgFilter);
            }
            return true;
        }

        public String toString() {
            if (this.stats) {
                return "stats";
            }
            if (this.zen) {
                return "zen";
            }
            return '\'' + this.pkgFilter + '\'';
        }
    }

    void resetAssistantUserSet(int userId) {
        checkCallerIsSystemOrShell();
        this.mAssistants.setUserSet(userId, false);
        handleSavePolicyFile();
    }

    ComponentName getApprovedAssistant(int userId) {
        checkCallerIsSystemOrShell();
        List<ComponentName> allowedComponents = this.mAssistants.getAllowedComponents(userId);
        return (ComponentName) CollectionUtils.firstOrNull(allowedComponents);
    }

    protected void simulatePackageSuspendBroadcast(boolean suspend, String pkg) {
        checkCallerIsSystemOrShell();
        Bundle extras = new Bundle();
        extras.putStringArray("android.intent.extra.changed_package_list", new String[]{pkg});
        String action = suspend ? "android.intent.action.PACKAGES_SUSPENDED" : "android.intent.action.PACKAGES_UNSUSPENDED";
        Intent intent = new Intent(action);
        intent.putExtras(extras);
        this.mPackageIntentReceiver.onReceive(getContext(), intent);
    }

    protected void simulatePackageDistractionBroadcast(int flag, String[] pkgs) {
        checkCallerIsSystemOrShell();
        Bundle extras = new Bundle();
        extras.putStringArray("android.intent.extra.changed_package_list", pkgs);
        extras.putInt("android.intent.extra.distraction_restrictions", flag);
        Intent intent = new Intent("android.intent.action.DISTRACTING_PACKAGES_CHANGED");
        intent.putExtras(extras);
        this.mPackageIntentReceiver.onReceive(getContext(), intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class StatusBarNotificationHolder extends IStatusBarNotificationHolder.Stub {
        private StatusBarNotification mValue;

        public StatusBarNotificationHolder(StatusBarNotification value) {
            this.mValue = value;
        }

        public StatusBarNotification get() {
            StatusBarNotification value = this.mValue;
            this.mValue = null;
            return value;
        }
    }

    private void writeSecureNotificationsPolicy(XmlSerializer out) throws IOException {
        out.startTag(null, LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG);
        out.attribute(null, LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_VALUE, Boolean.toString(this.mLockScreenAllowSecureNotifications));
        out.endTag(null, LOCKSCREEN_ALLOW_SECURE_NOTIFICATIONS_TAG);
    }

    private static boolean safeBoolean(String val, boolean defValue) {
        return TextUtils.isEmpty(val) ? defValue : Boolean.parseBoolean(val);
    }
}
