package com.android.server.notification;

import android.R;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.metrics.LogMaker;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.notification.ConversationChannelWrapper;
import android.service.notification.NotificationListenerService;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.IntArray;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseBooleanArray;
import android.util.StatsEvent;
import android.util.proto.ProtoOutputStream;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.Preconditions;
import com.android.server.job.JobSchedulerShellCommand;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class PreferencesHelper implements RankingConfig {
    private static final String ATT_ALLOW_BUBBLE = "allow_bubble";
    private static final String ATT_APP_USER_LOCKED_FIELDS = "app_user_locked_fields";
    private static final String ATT_ENABLED = "enabled";
    private static final String ATT_HIDE_SILENT = "hide_gentle";
    private static final String ATT_ID = "id";
    private static final String ATT_IMPORTANCE = "importance";
    private static final String ATT_NAME = "name";
    private static final String ATT_PRIORITY = "priority";
    private static final String ATT_SENT_INVALID_MESSAGE = "sent_invalid_msg";
    private static final String ATT_SENT_VALID_MESSAGE = "sent_valid_msg";
    private static final String ATT_SHOW_BADGE = "show_badge";
    private static final String ATT_UID = "uid";
    private static final String ATT_USER_ALLOWED = "allowed";
    private static final String ATT_USER_DEMOTED_INVALID_MSG_APP = "user_demote_msg_app";
    private static final String ATT_VERSION = "version";
    private static final String ATT_VISIBILITY = "visibility";
    private static final boolean DEFAULT_APP_LOCKED_IMPORTANCE = false;
    static final int DEFAULT_BUBBLE_PREFERENCE = 0;
    static final boolean DEFAULT_GLOBAL_ALLOW_BUBBLE = true;
    static final boolean DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS = false;
    private static final int DEFAULT_IMPORTANCE = -1000;
    private static final int DEFAULT_LOCKED_APP_FIELDS = 0;
    static final boolean DEFAULT_MEDIA_NOTIFICATION_FILTERING = true;
    private static final boolean DEFAULT_OEM_LOCKED_IMPORTANCE = false;
    private static final int DEFAULT_PRIORITY = 0;
    private static final boolean DEFAULT_SHOW_BADGE = true;
    private static final int DEFAULT_VISIBILITY = -1000;
    private static final String NON_BLOCKABLE_CHANNEL_DELIM = ":";
    static final int NOTIFICATION_CHANNEL_COUNT_LIMIT = 5000;
    static final int NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT = 6000;
    private static final int NOTIFICATION_CHANNEL_GROUP_PULL_LIMIT = 1000;
    private static final int NOTIFICATION_CHANNEL_PULL_LIMIT = 2000;
    private static final int NOTIFICATION_PREFERENCES_PULL_LIMIT = 1000;
    private static final String TAG = "NotificationPrefHelper";
    private static final String TAG_CHANNEL = "channel";
    private static final String TAG_DELEGATE = "delegate";
    private static final String TAG_GROUP = "channelGroup";
    private static final String TAG_PACKAGE = "package";
    static final String TAG_RANKING = "ranking";
    private static final String TAG_STATUS_ICONS = "silent_status_icons";
    static final int UNKNOWN_UID = -10000;
    private static final int XML_VERSION = 2;
    private static final int XML_VERSION_BUBBLES_UPGRADE = 1;
    private final AppOpsManager mAppOps;
    private boolean mAreChannelsBypassingDnd;
    private SparseBooleanArray mBadgingEnabled;
    private final Context mContext;
    private final NotificationChannelLogger mNotificationChannelLogger;
    private final PackageManager mPm;
    private final RankingHandler mRankingHandler;
    private final SysUiStatsEvent.BuilderFactory mStatsEventBuilderFactory;
    private final ZenModeHelper mZenModeHelper;
    private final ArrayMap<String, PackagePreferences> mPackagePreferences = new ArrayMap<>();
    private final ArrayMap<String, PackagePreferences> mRestoredWithoutUids = new ArrayMap<>();
    private boolean mBubblesEnabledGlobally = true;
    private final boolean mIsMediaNotificationFilteringEnabled = true;
    private boolean mHideSilentStatusBarIcons = false;
    private boolean mAllowInvalidShortcuts = false;
    private Map<String, List<String>> mOemLockedApps = new HashMap();

    public @interface LockableAppFields {
        public static final int USER_LOCKED_BUBBLE = 2;
        public static final int USER_LOCKED_IMPORTANCE = 1;
    }

    public PreferencesHelper(Context context, PackageManager pm, RankingHandler rankingHandler, ZenModeHelper zenHelper, NotificationChannelLogger notificationChannelLogger, AppOpsManager appOpsManager, SysUiStatsEvent.BuilderFactory statsEventBuilderFactory) {
        this.mContext = context;
        this.mZenModeHelper = zenHelper;
        this.mRankingHandler = rankingHandler;
        this.mPm = pm;
        this.mNotificationChannelLogger = notificationChannelLogger;
        this.mAppOps = appOpsManager;
        this.mStatsEventBuilderFactory = statsEventBuilderFactory;
        updateBadgingEnabled();
        updateBubblesEnabled();
        syncChannelsBypassingDnd(this.mContext.getUserId());
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x034d */
    /* JADX WARN: Code duplicated, block: B:136:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:159:0x017e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:179:0x0325 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x0076 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x0325 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x009b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0082 A[Catch: all -> 0x0064, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x0064, blocks: (B:27:0x0059, B:29:0x0062, B:39:0x0082, B:46:0x00b6, B:52:0x00c7), top: B:167:0x0059 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0092 A[Catch: all -> 0x0313, TRY_ENTER, TryCatch #2 {all -> 0x0313, blocks: (B:34:0x006d, B:41:0x0092, B:43:0x009b, B:61:0x00ef, B:60:0x00e8), top: B:161:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00b4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e8 A[Catch: all -> 0x0313, TRY_ENTER, TryCatch #2 {all -> 0x0313, blocks: (B:34:0x006d, B:41:0x0092, B:43:0x009b, B:61:0x00ef, B:60:0x00e8), top: B:161:0x006d }] */
    /* JADX WARN: Code duplicated, block: B:67:0x017b  */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0182, code lost:
    
        if (r27.getDepth() > r2) goto L71;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void readXml(org.xmlpull.v1.XmlPullParser r27, boolean r28, int r29) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 847
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.notification.PreferencesHelper.readXml(org.xmlpull.v1.XmlPullParser, boolean, int):void");
    }

    private PackagePreferences getPackagePreferencesLocked(String pkg, int uid) {
        String key = packagePreferencesKey(pkg, uid);
        return this.mPackagePreferences.get(key);
    }

    private PackagePreferences getOrCreatePackagePreferencesLocked(String pkg, int uid) {
        return getOrCreatePackagePreferencesLocked(pkg, UserHandle.getUserId(uid), uid, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE, 0, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE, true, 0);
    }

    private PackagePreferences getOrCreatePackagePreferencesLocked(String pkg, int userId, int uid) {
        return getOrCreatePackagePreferencesLocked(pkg, userId, uid, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE, 0, JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE, true, 0);
    }

    private PackagePreferences getOrCreatePackagePreferencesLocked(String pkg, int userId, int uid, int importance, int priority, int visibility, boolean showBadge, int bubblePreference) {
        PackagePreferences r;
        String key = packagePreferencesKey(pkg, uid);
        if (uid == UNKNOWN_UID) {
            r = this.mRestoredWithoutUids.get(unrestoredPackageKey(pkg, userId));
        } else {
            r = this.mPackagePreferences.get(key);
        }
        if (r == null) {
            r = new PackagePreferences();
            r.pkg = pkg;
            r.uid = uid;
            r.importance = importance;
            r.priority = priority;
            r.visibility = visibility;
            r.showBadge = showBadge;
            r.bubblePreference = bubblePreference;
            if (this.mOemLockedApps.containsKey(r.pkg)) {
                List<String> channels = this.mOemLockedApps.get(r.pkg);
                if (channels == null || channels.isEmpty()) {
                    r.oemLockedImportance = true;
                } else {
                    r.oemLockedChannels = channels;
                }
            }
            try {
                createDefaultChannelIfNeededLocked(r);
            } catch (PackageManager.NameNotFoundException e) {
                Slog.e(TAG, "createDefaultChannelIfNeededLocked - Exception: " + e);
            }
            if (r.uid == UNKNOWN_UID) {
                this.mRestoredWithoutUids.put(unrestoredPackageKey(pkg, userId), r);
            } else {
                this.mPackagePreferences.put(key, r);
            }
        }
        return r;
    }

    private boolean shouldHaveDefaultChannel(PackagePreferences r) throws PackageManager.NameNotFoundException {
        int userId = UserHandle.getUserId(r.uid);
        ApplicationInfo applicationInfo = this.mPm.getApplicationInfoAsUser(r.pkg, 0, userId);
        if (applicationInfo.targetSdkVersion >= 26) {
            return false;
        }
        return true;
    }

    private boolean deleteDefaultChannelIfNeededLocked(PackagePreferences r) throws PackageManager.NameNotFoundException {
        if (!r.channels.containsKey("miscellaneous") || shouldHaveDefaultChannel(r)) {
            return false;
        }
        r.channels.remove("miscellaneous");
        return true;
    }

    private boolean createDefaultChannelIfNeededLocked(PackagePreferences r) throws PackageManager.NameNotFoundException {
        if (r.uid == UNKNOWN_UID) {
            return false;
        }
        if (r.channels.containsKey("miscellaneous")) {
            r.channels.get("miscellaneous").setName(this.mContext.getString(R.string.contentServiceSyncNotificationTitle));
            return false;
        }
        if (!shouldHaveDefaultChannel(r)) {
            return false;
        }
        NotificationChannel channel = new NotificationChannel("miscellaneous", this.mContext.getString(R.string.contentServiceSyncNotificationTitle), r.importance);
        channel.setBypassDnd(r.priority == 2);
        channel.setLockscreenVisibility(r.visibility);
        if (r.importance != -1000) {
            channel.lockFields(4);
        }
        if (r.priority != 0) {
            channel.lockFields(1);
        }
        if (r.visibility != -1000) {
            channel.lockFields(2);
        }
        r.channels.put(channel.getId(), channel);
        return true;
    }

    public void writeXml(XmlSerializer out, boolean forBackup, int userId) throws IOException {
        out.startTag(null, TAG_RANKING);
        out.attribute(null, ATT_VERSION, Integer.toString(2));
        if (this.mHideSilentStatusBarIcons && (!forBackup || userId == 0)) {
            out.startTag(null, TAG_STATUS_ICONS);
            out.attribute(null, ATT_HIDE_SILENT, String.valueOf(this.mHideSilentStatusBarIcons));
            out.endTag(null, TAG_STATUS_ICONS);
        }
        synchronized (this.mPackagePreferences) {
            int N = this.mPackagePreferences.size();
            for (int i = 0; i < N; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                if (!forBackup || UserHandle.getUserId(r.uid) == userId) {
                    boolean hasNonDefaultSettings = (r.importance == -1000 && r.priority == 0 && r.visibility == -1000 && r.showBadge && r.lockedAppFields == 0 && r.channels.size() <= 0 && r.groups.size() <= 0 && r.delegate == null && r.bubblePreference == 0 && !r.hasSentInvalidMessage && !r.userDemotedMsgApp && !r.hasSentValidMessage) ? false : true;
                    if (hasNonDefaultSettings) {
                        out.startTag(null, "package");
                        out.attribute(null, "name", r.pkg);
                        if (r.importance != -1000) {
                            out.attribute(null, ATT_IMPORTANCE, Integer.toString(r.importance));
                        }
                        if (r.priority != 0) {
                            out.attribute(null, ATT_PRIORITY, Integer.toString(r.priority));
                        }
                        if (r.visibility != -1000) {
                            out.attribute(null, ATT_VISIBILITY, Integer.toString(r.visibility));
                        }
                        if (r.bubblePreference != 0) {
                            out.attribute(null, ATT_ALLOW_BUBBLE, Integer.toString(r.bubblePreference));
                        }
                        out.attribute(null, ATT_SHOW_BADGE, Boolean.toString(r.showBadge));
                        out.attribute(null, ATT_APP_USER_LOCKED_FIELDS, Integer.toString(r.lockedAppFields));
                        out.attribute(null, ATT_SENT_INVALID_MESSAGE, Boolean.toString(r.hasSentInvalidMessage));
                        out.attribute(null, ATT_SENT_VALID_MESSAGE, Boolean.toString(r.hasSentValidMessage));
                        out.attribute(null, ATT_USER_DEMOTED_INVALID_MSG_APP, Boolean.toString(r.userDemotedMsgApp));
                        if (!forBackup) {
                            out.attribute(null, "uid", Integer.toString(r.uid));
                        }
                        if (r.delegate != null) {
                            out.startTag(null, TAG_DELEGATE);
                            out.attribute(null, "name", r.delegate.mPkg);
                            out.attribute(null, "uid", Integer.toString(r.delegate.mUid));
                            if (!r.delegate.mEnabled) {
                                out.attribute(null, ATT_ENABLED, Boolean.toString(r.delegate.mEnabled));
                            }
                            if (!r.delegate.mUserAllowed) {
                                out.attribute(null, ATT_USER_ALLOWED, Boolean.toString(r.delegate.mUserAllowed));
                            }
                            out.endTag(null, TAG_DELEGATE);
                        }
                        for (NotificationChannelGroup group : r.groups.values()) {
                            group.writeXml(out);
                        }
                        for (NotificationChannel channel : r.channels.values()) {
                            if (forBackup) {
                                if (!channel.isDeleted()) {
                                    channel.writeXmlForBackup(out, this.mContext);
                                }
                            } else {
                                channel.writeXml(out);
                            }
                        }
                        out.endTag(null, "package");
                    }
                }
            }
        }
        out.endTag(null, TAG_RANKING);
    }

    public void setBubblesAllowed(String pkg, int uid, int bubblePreference) {
        boolean changed;
        synchronized (this.mPackagePreferences) {
            PackagePreferences p = getOrCreatePackagePreferencesLocked(pkg, uid);
            changed = p.bubblePreference != bubblePreference;
            p.bubblePreference = bubblePreference;
            p.lockedAppFields |= 2;
        }
        if (changed) {
            updateConfig();
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public int getBubblePreference(String pkg, int uid) {
        int i;
        synchronized (this.mPackagePreferences) {
            i = getOrCreatePackagePreferencesLocked(pkg, uid).bubblePreference;
        }
        return i;
    }

    public int getAppLockedFields(String pkg, int uid) {
        int i;
        synchronized (this.mPackagePreferences) {
            i = getOrCreatePackagePreferencesLocked(pkg, uid).lockedAppFields;
        }
        return i;
    }

    @Override // com.android.server.notification.RankingConfig
    public int getImportance(String packageName, int uid) {
        int i;
        synchronized (this.mPackagePreferences) {
            i = getOrCreatePackagePreferencesLocked(packageName, uid).importance;
        }
        return i;
    }

    public boolean getIsAppImportanceLocked(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            int userLockedFields = getOrCreatePackagePreferencesLocked(packageName, uid).lockedAppFields;
            z = (userLockedFields & 1) != 0;
        }
        return z;
    }

    @Override // com.android.server.notification.RankingConfig
    public boolean canShowBadge(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            z = getOrCreatePackagePreferencesLocked(packageName, uid).showBadge;
        }
        return z;
    }

    @Override // com.android.server.notification.RankingConfig
    public void setShowBadge(String packageName, int uid, boolean showBadge) {
        synchronized (this.mPackagePreferences) {
            getOrCreatePackagePreferencesLocked(packageName, uid).showBadge = showBadge;
        }
        updateConfig();
    }

    public boolean isInInvalidMsgState(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            z = r.hasSentInvalidMessage && !r.hasSentValidMessage;
        }
        return z;
    }

    public boolean hasUserDemotedInvalidMsgApp(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            z = isInInvalidMsgState(packageName, uid) ? r.userDemotedMsgApp : false;
        }
        return z;
    }

    public void setInvalidMsgAppDemoted(String packageName, int uid, boolean isDemoted) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            r.userDemotedMsgApp = isDemoted;
        }
    }

    public boolean setInvalidMessageSent(String packageName, int uid) {
        boolean valueChanged;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            valueChanged = !r.hasSentInvalidMessage;
            r.hasSentInvalidMessage = true;
        }
        return valueChanged;
    }

    public boolean setValidMessageSent(String packageName, int uid) {
        boolean valueChanged;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            valueChanged = !r.hasSentValidMessage;
            r.hasSentValidMessage = true;
        }
        return valueChanged;
    }

    boolean hasSentInvalidMsg(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            z = r.hasSentInvalidMessage;
        }
        return z;
    }

    boolean hasSentValidMsg(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            z = r.hasSentValidMessage;
        }
        return z;
    }

    boolean didUserEverDemoteInvalidMsgApp(String packageName, int uid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            z = r.userDemotedMsgApp;
        }
        return z;
    }

    @Override // com.android.server.notification.RankingConfig
    public boolean isGroupBlocked(String packageName, int uid, String groupId) {
        if (groupId == null) {
            return false;
        }
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(packageName, uid);
            NotificationChannelGroup group = r.groups.get(groupId);
            if (group == null) {
                return false;
            }
            return group.isBlocked();
        }
    }

    int getPackagePriority(String pkg, int uid) {
        int i;
        synchronized (this.mPackagePreferences) {
            i = getOrCreatePackagePreferencesLocked(pkg, uid).priority;
        }
        return i;
    }

    int getPackageVisibility(String pkg, int uid) {
        int i;
        synchronized (this.mPackagePreferences) {
            i = getOrCreatePackagePreferencesLocked(pkg, uid).visibility;
        }
        return i;
    }

    @Override // com.android.server.notification.RankingConfig
    public void createNotificationChannelGroup(String pkg, int uid, NotificationChannelGroup group, boolean fromTargetApp) {
        Objects.requireNonNull(pkg);
        Objects.requireNonNull(group);
        Objects.requireNonNull(group.getId());
        Objects.requireNonNull(Boolean.valueOf(!TextUtils.isEmpty(group.getName())));
        synchronized (this.mPackagePreferences) {
            try {
                try {
                    PackagePreferences r = getOrCreatePackagePreferencesLocked(pkg, uid);
                    if (r == null) {
                        throw new IllegalArgumentException("Invalid package");
                    }
                    if (fromTargetApp) {
                        group.setBlocked(false);
                        if (r.groups.size() >= NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT) {
                            throw new IllegalStateException("Limit exceed; cannot create more groups");
                        }
                    }
                    NotificationChannelGroup oldGroup = r.groups.get(group.getId());
                    if (oldGroup != null) {
                        group.setChannels(oldGroup.getChannels());
                        if (fromTargetApp) {
                            group.setBlocked(oldGroup.isBlocked());
                            group.unlockFields(group.getUserLockedFields());
                            group.lockFields(oldGroup.getUserLockedFields());
                        } else if (group.isBlocked() != oldGroup.isBlocked()) {
                            group.lockFields(1);
                            updateChannelsBypassingDnd(this.mContext.getUserId());
                        }
                    }
                    if (!group.equals(oldGroup)) {
                        MetricsLogger.action(getChannelGroupLog(group.getId(), pkg));
                        this.mNotificationChannelLogger.logNotificationChannelGroup(group, uid, pkg, oldGroup == null, oldGroup != null && oldGroup.isBlocked());
                    }
                    r.groups.put(group.getId(), group);
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public boolean createNotificationChannel(String pkg, int uid, NotificationChannel channel, boolean fromTargetApp, boolean hasDndAccess) {
        int allowBubbles;
        boolean wasUndeleted;
        boolean needsPolicyFileChange;
        boolean bypassDnd;
        Objects.requireNonNull(pkg);
        Objects.requireNonNull(channel);
        Objects.requireNonNull(channel.getId());
        Preconditions.checkArgument(!TextUtils.isEmpty(channel.getName()));
        boolean needsPolicyFileChange2 = false;
        synchronized (this.mPackagePreferences) {
            try {
                PackagePreferences r = getOrCreatePackagePreferencesLocked(pkg, uid);
                if (r == null) {
                    throw new IllegalArgumentException("Invalid package");
                }
                if (channel.getGroup() != null && !r.groups.containsKey(channel.getGroup())) {
                    throw new IllegalArgumentException("NotificationChannelGroup doesn't exist");
                }
                if ("miscellaneous".equals(channel.getId())) {
                    throw new IllegalArgumentException("Reserved id");
                }
                NotificationChannel existing = r.channels.get(channel.getId());
                if (existing != null && fromTargetApp) {
                    if (!existing.isDeleted()) {
                        wasUndeleted = false;
                    } else {
                        existing.setDeleted(false);
                        needsPolicyFileChange2 = true;
                        MetricsLogger.action(getChannelLog(channel, pkg).setType(1));
                        this.mNotificationChannelLogger.logNotificationChannelCreated(channel, uid, pkg);
                        wasUndeleted = true;
                    }
                    try {
                        if (!Objects.equals(channel.getName().toString(), existing.getName().toString())) {
                            existing.setName(channel.getName().toString());
                            needsPolicyFileChange2 = true;
                        }
                        if (!Objects.equals(channel.getDescription(), existing.getDescription())) {
                            existing.setDescription(channel.getDescription());
                            needsPolicyFileChange2 = true;
                        }
                        if (channel.isBlockable() != existing.isBlockable()) {
                            existing.setBlockable(channel.isBlockable());
                            needsPolicyFileChange2 = true;
                        }
                        if (channel.getGroup() != null && existing.getGroup() == null) {
                            existing.setGroup(channel.getGroup());
                            needsPolicyFileChange2 = true;
                        }
                        int previousExistingImportance = existing.getImportance();
                        int previousLoggingImportance = NotificationChannelLogger.getLoggingImportance(existing);
                        if (existing.getUserLockedFields() == 0 && channel.getImportance() < existing.getImportance()) {
                            existing.setImportance(channel.getImportance());
                            needsPolicyFileChange2 = true;
                        }
                        if (existing.getUserLockedFields() == 0 && hasDndAccess && (bypassDnd = channel.canBypassDnd()) != existing.canBypassDnd()) {
                            existing.setBypassDnd(bypassDnd);
                            needsPolicyFileChange2 = true;
                            if (bypassDnd != this.mAreChannelsBypassingDnd || previousExistingImportance != existing.getImportance()) {
                                updateChannelsBypassingDnd(this.mContext.getUserId());
                            }
                        }
                        if (existing.getOriginalImportance() != -1000) {
                            needsPolicyFileChange = needsPolicyFileChange2;
                        } else {
                            existing.setOriginalImportance(channel.getImportance());
                            needsPolicyFileChange = true;
                        }
                        try {
                            updateConfig();
                            if (needsPolicyFileChange && !wasUndeleted) {
                                this.mNotificationChannelLogger.logNotificationChannelModified(existing, uid, pkg, previousLoggingImportance, false);
                            }
                            return needsPolicyFileChange;
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    if (r.channels.size() >= 5000) {
                        throw new IllegalStateException("Limit exceed; cannot create more channels");
                    }
                    if (channel.getImportance() < 0 || channel.getImportance() > 5) {
                        throw new IllegalArgumentException("Invalid importance level");
                    }
                    if (fromTargetApp && !hasDndAccess) {
                        channel.setBypassDnd(r.priority == 2);
                    }
                    if (fromTargetApp) {
                        channel.setLockscreenVisibility(r.visibility);
                        if (existing != null) {
                            allowBubbles = existing.getAllowBubbles();
                        } else {
                            allowBubbles = -1;
                        }
                        channel.setAllowBubbles(allowBubbles);
                    }
                    clearLockedFieldsLocked(channel);
                    channel.setImportanceLockedByOEM(r.oemLockedImportance);
                    if (!channel.isImportanceLockedByOEM() && r.oemLockedChannels.contains(channel.getId())) {
                        channel.setImportanceLockedByOEM(true);
                    }
                    channel.setImportanceLockedByCriticalDeviceFunction(r.defaultAppLockedImportance);
                    if (channel.getLockscreenVisibility() == 1) {
                        channel.setLockscreenVisibility(JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE);
                    }
                    if (!r.showBadge) {
                        channel.setShowBadge(false);
                    }
                    channel.setOriginalImportance(channel.getImportance());
                    if (channel.getParentChannelId() != null) {
                        Preconditions.checkArgument(r.channels.containsKey(channel.getParentChannelId()), "Tried to create a conversation channel without a preexisting parent");
                    }
                    r.channels.put(channel.getId(), channel);
                    if (channel.canBypassDnd() != this.mAreChannelsBypassingDnd) {
                        updateChannelsBypassingDnd(this.mContext.getUserId());
                    }
                    MetricsLogger.action(getChannelLog(channel, pkg).setType(1));
                    this.mNotificationChannelLogger.logNotificationChannelCreated(channel, uid, pkg);
                    return true;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    void clearLockedFieldsLocked(NotificationChannel channel) {
        channel.unlockFields(channel.getUserLockedFields());
    }

    @Override // com.android.server.notification.RankingConfig
    public void updateNotificationChannel(String pkg, int uid, NotificationChannel updatedChannel, boolean fromUser) {
        Objects.requireNonNull(updatedChannel);
        Objects.requireNonNull(updatedChannel.getId());
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(pkg, uid);
            if (r == null) {
                throw new IllegalArgumentException("Invalid package");
            }
            NotificationChannel channel = r.channels.get(updatedChannel.getId());
            if (channel == null || channel.isDeleted()) {
                throw new IllegalArgumentException("Channel does not exist");
            }
            int i = 1;
            if (updatedChannel.getLockscreenVisibility() == 1) {
                updatedChannel.setLockscreenVisibility(JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE);
            }
            if (fromUser) {
                updatedChannel.lockFields(channel.getUserLockedFields());
                lockFieldsForUpdateLocked(channel, updatedChannel);
            } else {
                updatedChannel.unlockFields(updatedChannel.getUserLockedFields());
            }
            updatedChannel.setImportanceLockedByOEM(channel.isImportanceLockedByOEM());
            if (updatedChannel.isImportanceLockedByOEM()) {
                updatedChannel.setImportance(channel.getImportance());
            }
            updatedChannel.setImportanceLockedByCriticalDeviceFunction(r.defaultAppLockedImportance);
            if (updatedChannel.isImportanceLockedByCriticalDeviceFunction() && updatedChannel.getImportance() == 0) {
                updatedChannel.setImportance(channel.getImportance());
            }
            r.channels.put(updatedChannel.getId(), updatedChannel);
            if (onlyHasDefaultChannel(pkg, uid)) {
                r.importance = updatedChannel.getImportance();
                r.priority = updatedChannel.canBypassDnd() ? 2 : 0;
                r.visibility = updatedChannel.getLockscreenVisibility();
                r.showBadge = updatedChannel.canShowBadge();
            }
            if (!channel.equals(updatedChannel)) {
                LogMaker channelLog = getChannelLog(updatedChannel, pkg);
                if (!fromUser) {
                    i = 0;
                }
                MetricsLogger.action(channelLog.setSubtype(i));
                this.mNotificationChannelLogger.logNotificationChannelModified(updatedChannel, uid, pkg, NotificationChannelLogger.getLoggingImportance(channel), fromUser);
            }
            if (updatedChannel.canBypassDnd() != this.mAreChannelsBypassingDnd || channel.getImportance() != updatedChannel.getImportance()) {
                updateChannelsBypassingDnd(this.mContext.getUserId());
            }
        }
        updateConfig();
    }

    @Override // com.android.server.notification.RankingConfig
    public NotificationChannel getNotificationChannel(String pkg, int uid, String channelId, boolean includeDeleted) {
        Objects.requireNonNull(pkg);
        return getConversationNotificationChannel(pkg, uid, channelId, null, true, includeDeleted);
    }

    @Override // com.android.server.notification.RankingConfig
    public NotificationChannel getConversationNotificationChannel(String pkg, int uid, String channelId, String conversationId, boolean returnParentIfNoConversationChannel, boolean includeDeleted) {
        NotificationChannel nc;
        Preconditions.checkNotNull(pkg);
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return null;
            }
            if (channelId == null) {
                channelId = "miscellaneous";
            }
            NotificationChannel channel = null;
            if (conversationId != null) {
                channel = findConversationChannel(r, channelId, conversationId, includeDeleted);
            }
            return (channel != null || !returnParentIfNoConversationChannel || (nc = r.channels.get(channelId)) == null || (!includeDeleted && nc.isDeleted())) ? channel : nc;
        }
    }

    private NotificationChannel findConversationChannel(PackagePreferences p, String parentId, String conversationId, boolean includeDeleted) {
        for (NotificationChannel nc : p.channels.values()) {
            if (conversationId.equals(nc.getConversationId()) && parentId.equals(nc.getParentChannelId()) && (includeDeleted || !nc.isDeleted())) {
                return nc;
            }
        }
        return null;
    }

    public List<NotificationChannel> getNotificationChannelsByConversationId(String pkg, int uid, String conversationId) {
        Preconditions.checkNotNull(pkg);
        Preconditions.checkNotNull(conversationId);
        List<NotificationChannel> channels = new ArrayList<>();
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return channels;
            }
            for (NotificationChannel nc : r.channels.values()) {
                if (conversationId.equals(nc.getConversationId()) && !nc.isDeleted()) {
                    channels.add(nc);
                }
            }
            return channels;
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public void deleteNotificationChannel(String pkg, int uid, String channelId) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return;
            }
            NotificationChannel channel = r.channels.get(channelId);
            if (channel != null) {
                deleteNotificationChannelLocked(channel, pkg, uid);
            }
        }
    }

    private void deleteNotificationChannelLocked(NotificationChannel channel, String pkg, int uid) {
        if (!channel.isDeleted()) {
            channel.setDeleted(true);
            LogMaker lm = getChannelLog(channel, pkg);
            lm.setType(2);
            MetricsLogger.action(lm);
            this.mNotificationChannelLogger.logNotificationChannelDeleted(channel, uid, pkg);
            if (this.mAreChannelsBypassingDnd && channel.canBypassDnd()) {
                updateChannelsBypassingDnd(this.mContext.getUserId());
            }
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public void permanentlyDeleteNotificationChannel(String pkg, int uid, String channelId) {
        Objects.requireNonNull(pkg);
        Objects.requireNonNull(channelId);
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return;
            }
            r.channels.remove(channelId);
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public void permanentlyDeleteNotificationChannels(String pkg, int uid) {
        Objects.requireNonNull(pkg);
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return;
            }
            int N = r.channels.size() - 1;
            for (int i = N; i >= 0; i--) {
                String key = r.channels.keyAt(i);
                if (!"miscellaneous".equals(key)) {
                    r.channels.remove(key);
                }
            }
        }
    }

    public boolean shouldHideSilentStatusIcons() {
        return this.mHideSilentStatusBarIcons;
    }

    public void setHideSilentStatusIcons(boolean hide) {
        this.mHideSilentStatusBarIcons = hide;
    }

    public void lockChannelsForOEM(String[] appOrChannelList) {
        String[] appSplit;
        if (appOrChannelList == null) {
            return;
        }
        for (String appOrChannel : appOrChannelList) {
            if (!TextUtils.isEmpty(appOrChannel) && (appSplit = appOrChannel.split(NON_BLOCKABLE_CHANNEL_DELIM)) != null && appSplit.length > 0) {
                String appName = appSplit[0];
                String channelId = appSplit.length == 2 ? appSplit[1] : null;
                synchronized (this.mPackagePreferences) {
                    boolean foundApp = false;
                    for (PackagePreferences r : this.mPackagePreferences.values()) {
                        if (r.pkg.equals(appName)) {
                            foundApp = true;
                            if (channelId == null) {
                                r.oemLockedImportance = true;
                                Iterator<NotificationChannel> it = r.channels.values().iterator();
                                while (it.hasNext()) {
                                    it.next().setImportanceLockedByOEM(true);
                                }
                            } else {
                                NotificationChannel channel = r.channels.get(channelId);
                                if (channel != null) {
                                    channel.setImportanceLockedByOEM(true);
                                }
                                r.oemLockedChannels.add(channelId);
                            }
                        }
                    }
                    if (!foundApp) {
                        List<String> channels = this.mOemLockedApps.getOrDefault(appName, new ArrayList());
                        if (channelId != null) {
                            channels.add(channelId);
                        }
                        this.mOemLockedApps.put(appName, channels);
                    }
                }
            }
        }
    }

    public void updateDefaultApps(int userId, ArraySet<String> toRemove, ArraySet<Pair<String, Integer>> toAdd) {
        synchronized (this.mPackagePreferences) {
            for (PackagePreferences p : this.mPackagePreferences.values()) {
                if (userId == UserHandle.getUserId(p.uid) && toRemove != null && toRemove.contains(p.pkg)) {
                    p.defaultAppLockedImportance = false;
                    for (NotificationChannel channel : p.channels.values()) {
                        channel.setImportanceLockedByCriticalDeviceFunction(false);
                    }
                }
            }
            if (toAdd != null) {
                for (Pair<String, Integer> approvedApp : toAdd) {
                    PackagePreferences p2 = getOrCreatePackagePreferencesLocked((String) approvedApp.first, ((Integer) approvedApp.second).intValue());
                    p2.defaultAppLockedImportance = true;
                    for (NotificationChannel channel2 : p2.channels.values()) {
                        channel2.setImportanceLockedByCriticalDeviceFunction(true);
                    }
                }
            }
        }
    }

    public NotificationChannelGroup getNotificationChannelGroupWithChannels(String pkg, int uid, String groupId, boolean includeDeleted) {
        Objects.requireNonNull(pkg);
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r != null && groupId != null && r.groups.containsKey(groupId)) {
                NotificationChannelGroup group = r.groups.get(groupId).clone();
                group.setChannels(new ArrayList());
                int N = r.channels.size();
                for (int i = 0; i < N; i++) {
                    NotificationChannel nc = r.channels.valueAt(i);
                    if ((includeDeleted || !nc.isDeleted()) && groupId.equals(nc.getGroup())) {
                        group.addChannel(nc);
                    }
                }
                return group;
            }
            return null;
        }
    }

    public NotificationChannelGroup getNotificationChannelGroup(String groupId, String pkg, int uid) {
        Objects.requireNonNull(pkg);
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return null;
            }
            return r.groups.get(groupId);
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public ParceledListSlice<NotificationChannelGroup> getNotificationChannelGroups(String pkg, int uid, boolean includeDeleted, boolean includeNonGrouped, boolean includeEmpty) {
        Objects.requireNonNull(pkg);
        Map<String, NotificationChannelGroup> groups = new ArrayMap<>();
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return ParceledListSlice.emptyList();
            }
            NotificationChannelGroup nonGrouped = new NotificationChannelGroup(null, null);
            int N = r.channels.size();
            for (int i = 0; i < N; i++) {
                NotificationChannel nc = r.channels.valueAt(i);
                if (includeDeleted || !nc.isDeleted()) {
                    if (nc.getGroup() != null) {
                        if (r.groups.get(nc.getGroup()) != null) {
                            NotificationChannelGroup ncg = groups.get(nc.getGroup());
                            if (ncg == null) {
                                ncg = r.groups.get(nc.getGroup()).clone();
                                ncg.setChannels(new ArrayList());
                                groups.put(nc.getGroup(), ncg);
                            }
                            ncg.addChannel(nc);
                        }
                    } else {
                        nonGrouped.addChannel(nc);
                    }
                }
            }
            if (includeNonGrouped && nonGrouped.getChannels().size() > 0) {
                groups.put(null, nonGrouped);
            }
            if (includeEmpty) {
                for (NotificationChannelGroup group : r.groups.values()) {
                    if (!groups.containsKey(group.getId())) {
                        groups.put(group.getId(), group);
                    }
                }
            }
            return new ParceledListSlice<>(new ArrayList(groups.values()));
        }
    }

    public List<NotificationChannel> deleteNotificationChannelGroup(String pkg, int uid, String groupId) {
        List<NotificationChannel> deletedChannels = new ArrayList<>();
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r != null && !TextUtils.isEmpty(groupId)) {
                NotificationChannelGroup channelGroup = r.groups.remove(groupId);
                if (channelGroup != null) {
                    this.mNotificationChannelLogger.logNotificationChannelGroupDeleted(channelGroup, uid, pkg);
                }
                int N = r.channels.size();
                for (int i = 0; i < N; i++) {
                    NotificationChannel nc = r.channels.valueAt(i);
                    if (groupId.equals(nc.getGroup())) {
                        deleteNotificationChannelLocked(nc, pkg, uid);
                        deletedChannels.add(nc);
                    }
                }
                return deletedChannels;
            }
            return deletedChannels;
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public Collection<NotificationChannelGroup> getNotificationChannelGroups(String pkg, int uid) {
        List<NotificationChannelGroup> groups = new ArrayList<>();
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return groups;
            }
            groups.addAll(r.groups.values());
            return groups;
        }
    }

    public ArrayList<ConversationChannelWrapper> getConversations(IntArray userIds, boolean onlyImportant) {
        ArrayList<ConversationChannelWrapper> conversations;
        NotificationChannelGroup group;
        synchronized (this.mPackagePreferences) {
            conversations = new ArrayList<>();
            for (PackagePreferences p : this.mPackagePreferences.values()) {
                if (userIds.binarySearch(UserHandle.getUserId(p.uid)) >= 0) {
                    int N = p.channels.size();
                    for (int i = 0; i < N; i++) {
                        NotificationChannel nc = p.channels.valueAt(i);
                        if (!TextUtils.isEmpty(nc.getConversationId()) && !nc.isDeleted() && !nc.isDemoted() && (nc.isImportantConversation() || !onlyImportant)) {
                            ConversationChannelWrapper conversation = new ConversationChannelWrapper();
                            conversation.setPkg(p.pkg);
                            conversation.setUid(p.uid);
                            conversation.setNotificationChannel(nc);
                            conversation.setParentChannelLabel(p.channels.get(nc.getParentChannelId()).getName());
                            boolean blockedByGroup = false;
                            if (nc.getGroup() != null && (group = p.groups.get(nc.getGroup())) != null) {
                                if (group.isBlocked()) {
                                    blockedByGroup = true;
                                } else {
                                    conversation.setGroupLabel(group.getName());
                                }
                            }
                            if (!blockedByGroup) {
                                conversations.add(conversation);
                            }
                        }
                    }
                }
            }
        }
        return conversations;
    }

    public ArrayList<ConversationChannelWrapper> getConversations(String pkg, int uid) {
        NotificationChannelGroup group;
        Objects.requireNonNull(pkg);
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return new ArrayList<>();
            }
            ArrayList<ConversationChannelWrapper> conversations = new ArrayList<>();
            int N = r.channels.size();
            for (int i = 0; i < N; i++) {
                NotificationChannel nc = r.channels.valueAt(i);
                if (!TextUtils.isEmpty(nc.getConversationId()) && !nc.isDeleted() && !nc.isDemoted()) {
                    ConversationChannelWrapper conversation = new ConversationChannelWrapper();
                    conversation.setPkg(r.pkg);
                    conversation.setUid(r.uid);
                    conversation.setNotificationChannel(nc);
                    conversation.setParentChannelLabel(r.channels.get(nc.getParentChannelId()).getName());
                    boolean blockedByGroup = false;
                    if (nc.getGroup() != null && (group = r.groups.get(nc.getGroup())) != null) {
                        if (group.isBlocked()) {
                            blockedByGroup = true;
                        } else {
                            conversation.setGroupLabel(group.getName());
                        }
                    }
                    if (!blockedByGroup) {
                        conversations.add(conversation);
                    }
                }
            }
            return conversations;
        }
    }

    public List<String> deleteConversation(String pkg, int uid, String conversationId) {
        synchronized (this.mPackagePreferences) {
            List<String> deletedChannelIds = new ArrayList<>();
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return deletedChannelIds;
            }
            int N = r.channels.size();
            for (int i = 0; i < N; i++) {
                NotificationChannel nc = r.channels.valueAt(i);
                if (conversationId.equals(nc.getConversationId())) {
                    nc.setDeleted(true);
                    LogMaker lm = getChannelLog(nc, pkg);
                    lm.setType(2);
                    MetricsLogger.action(lm);
                    this.mNotificationChannelLogger.logNotificationChannelDeleted(nc, uid, pkg);
                    deletedChannelIds.add(nc.getId());
                }
            }
            if (!deletedChannelIds.isEmpty() && this.mAreChannelsBypassingDnd) {
                updateChannelsBypassingDnd(this.mContext.getUserId());
            }
            return deletedChannelIds;
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public ParceledListSlice<NotificationChannel> getNotificationChannels(String pkg, int uid, boolean includeDeleted) {
        Objects.requireNonNull(pkg);
        List<NotificationChannel> channels = new ArrayList<>();
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return ParceledListSlice.emptyList();
            }
            int N = r.channels.size();
            for (int i = 0; i < N; i++) {
                NotificationChannel nc = r.channels.valueAt(i);
                if (includeDeleted || !nc.isDeleted()) {
                    channels.add(nc);
                }
            }
            return new ParceledListSlice<>(channels);
        }
    }

    public ParceledListSlice<NotificationChannel> getNotificationChannelsBypassingDnd(String pkg, int userId) {
        List<NotificationChannel> channels = new ArrayList<>();
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = this.mPackagePreferences.get(packagePreferencesKey(pkg, userId));
            if (r != null && r.importance != 0) {
                for (NotificationChannel channel : r.channels.values()) {
                    if (channelIsLiveLocked(r, channel) && channel.canBypassDnd()) {
                        channels.add(channel);
                    }
                }
            }
        }
        return new ParceledListSlice<>(channels);
    }

    public boolean onlyHasDefaultChannel(String pkg, int uid) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getOrCreatePackagePreferencesLocked(pkg, uid);
            return r.channels.size() == 1 && r.channels.containsKey("miscellaneous");
        }
    }

    public int getDeletedChannelCount(String pkg, int uid) {
        Objects.requireNonNull(pkg);
        int deletedCount = 0;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return 0;
            }
            int N = r.channels.size();
            for (int i = 0; i < N; i++) {
                NotificationChannel nc = r.channels.valueAt(i);
                if (nc.isDeleted()) {
                    deletedCount++;
                }
            }
            return deletedCount;
        }
    }

    public int getBlockedChannelCount(String pkg, int uid) {
        Objects.requireNonNull(pkg);
        int blockedCount = 0;
        synchronized (this.mPackagePreferences) {
            PackagePreferences r = getPackagePreferencesLocked(pkg, uid);
            if (r == null) {
                return 0;
            }
            int N = r.channels.size();
            for (int i = 0; i < N; i++) {
                NotificationChannel nc = r.channels.valueAt(i);
                if (!nc.isDeleted() && nc.getImportance() == 0) {
                    blockedCount++;
                }
            }
            return blockedCount;
        }
    }

    public int getBlockedAppCount(int userId) {
        int count = 0;
        synchronized (this.mPackagePreferences) {
            int N = this.mPackagePreferences.size();
            for (int i = 0; i < N; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                if (userId == UserHandle.getUserId(r.uid) && r.importance == 0) {
                    count++;
                }
            }
        }
        return count;
    }

    public int getAppsBypassingDndCount(int userId) {
        int count = 0;
        synchronized (this.mPackagePreferences) {
            int numPackagePreferences = this.mPackagePreferences.size();
            for (int i = 0; i < numPackagePreferences; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                if (userId == UserHandle.getUserId(r.uid) && r.importance != 0) {
                    for (NotificationChannel channel : r.channels.values()) {
                        if (channelIsLiveLocked(r, channel) && channel.canBypassDnd()) {
                            count++;
                            break;
                        }
                    }
                }
            }
        }
        return count;
    }

    private void syncChannelsBypassingDnd(int userId) {
        this.mAreChannelsBypassingDnd = (this.mZenModeHelper.getNotificationPolicy().state & 1) == 1;
        updateChannelsBypassingDnd(userId);
    }

    private void updateChannelsBypassingDnd(int userId) {
        synchronized (this.mPackagePreferences) {
            int numPackagePreferences = this.mPackagePreferences.size();
            for (int i = 0; i < numPackagePreferences; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                if (userId == UserHandle.getUserId(r.uid) && r.importance != 0) {
                    for (NotificationChannel channel : r.channels.values()) {
                        if (channelIsLiveLocked(r, channel) && channel.canBypassDnd()) {
                            if (!this.mAreChannelsBypassingDnd) {
                                this.mAreChannelsBypassingDnd = true;
                                updateZenPolicy(true);
                            }
                            return;
                        }
                    }
                }
            }
            if (this.mAreChannelsBypassingDnd) {
                this.mAreChannelsBypassingDnd = false;
                updateZenPolicy(false);
            }
        }
    }

    private boolean channelIsLiveLocked(PackagePreferences pkgPref, NotificationChannel channel) {
        return (isGroupBlocked(pkgPref.pkg, pkgPref.uid, channel.getGroup()) || channel.isDeleted() || channel.getImportance() == 0) ? false : true;
    }

    public void updateZenPolicy(boolean areChannelsBypassingDnd) {
        NotificationManager.Policy policy = this.mZenModeHelper.getNotificationPolicy();
        this.mZenModeHelper.setNotificationPolicy(new NotificationManager.Policy(policy.priorityCategories, policy.priorityCallSenders, policy.priorityMessageSenders, policy.suppressedVisualEffects, areChannelsBypassingDnd ? 1 : 0, policy.priorityConversationSenders));
    }

    public boolean areChannelsBypassingDnd() {
        return this.mAreChannelsBypassingDnd;
    }

    @Override // com.android.server.notification.RankingConfig
    public void setImportance(String pkgName, int uid, int importance) {
        synchronized (this.mPackagePreferences) {
            getOrCreatePackagePreferencesLocked(pkgName, uid).importance = importance;
        }
        updateConfig();
    }

    public void setEnabled(String packageName, int uid, boolean enabled) {
        boolean wasEnabled = getImportance(packageName, uid) != 0;
        if (wasEnabled == enabled) {
            return;
        }
        setImportance(packageName, uid, enabled ? JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE : 0);
        this.mNotificationChannelLogger.logAppNotificationsAllowed(uid, packageName, enabled);
    }

    public void setAppImportanceLocked(String packageName, int uid) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences prefs = getOrCreatePackagePreferencesLocked(packageName, uid);
            if ((prefs.lockedAppFields & 1) != 0) {
                return;
            }
            prefs.lockedAppFields |= 1;
            updateConfig();
        }
    }

    public String getNotificationDelegate(String sourcePkg, int sourceUid) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences prefs = getPackagePreferencesLocked(sourcePkg, sourceUid);
            if (prefs != null && prefs.delegate != null) {
                if (prefs.delegate.mUserAllowed && prefs.delegate.mEnabled) {
                    return prefs.delegate.mPkg;
                }
                return null;
            }
            return null;
        }
    }

    public void setNotificationDelegate(String sourcePkg, int sourceUid, String delegatePkg, int delegateUid) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences prefs = getOrCreatePackagePreferencesLocked(sourcePkg, sourceUid);
            boolean userAllowed = prefs.delegate == null || prefs.delegate.mUserAllowed;
            Delegate delegate = new Delegate(delegatePkg, delegateUid, true, userAllowed);
            prefs.delegate = delegate;
        }
        updateConfig();
    }

    public void revokeNotificationDelegate(String sourcePkg, int sourceUid) {
        boolean changed = false;
        synchronized (this.mPackagePreferences) {
            PackagePreferences prefs = getPackagePreferencesLocked(sourcePkg, sourceUid);
            if (prefs != null && prefs.delegate != null) {
                prefs.delegate.mEnabled = false;
                changed = true;
            }
        }
        if (changed) {
            updateConfig();
        }
    }

    public void toggleNotificationDelegate(String sourcePkg, int sourceUid, boolean userAllowed) {
        boolean changed = false;
        synchronized (this.mPackagePreferences) {
            PackagePreferences prefs = getPackagePreferencesLocked(sourcePkg, sourceUid);
            if (prefs != null && prefs.delegate != null) {
                prefs.delegate.mUserAllowed = userAllowed;
                changed = true;
            }
        }
        if (changed) {
            updateConfig();
        }
    }

    public boolean isDelegateAllowed(String sourcePkg, int sourceUid, String potentialDelegatePkg, int potentialDelegateUid) {
        boolean z;
        synchronized (this.mPackagePreferences) {
            PackagePreferences prefs = getPackagePreferencesLocked(sourcePkg, sourceUid);
            z = prefs != null && prefs.isValidDelegate(potentialDelegatePkg, potentialDelegateUid);
        }
        return z;
    }

    void lockFieldsForUpdateLocked(NotificationChannel original, NotificationChannel update) {
        if (original.canBypassDnd() != update.canBypassDnd()) {
            update.lockFields(1);
        }
        if (original.getLockscreenVisibility() != update.getLockscreenVisibility()) {
            update.lockFields(2);
        }
        if (original.getImportance() != update.getImportance()) {
            update.lockFields(4);
        }
        if (original.shouldShowLights() != update.shouldShowLights() || original.getLightColor() != update.getLightColor()) {
            update.lockFields(8);
        }
        if (!Objects.equals(original.getSound(), update.getSound())) {
            update.lockFields(32);
        }
        if (!Arrays.equals(original.getVibrationPattern(), update.getVibrationPattern()) || original.shouldVibrate() != update.shouldVibrate()) {
            update.lockFields(16);
        }
        if (original.canShowBadge() != update.canShowBadge()) {
            update.lockFields(128);
        }
        if (original.getAllowBubbles() != update.getAllowBubbles()) {
            update.lockFields(256);
        }
    }

    public void dump(PrintWriter pw, String prefix, NotificationManagerService.DumpFilter filter) {
        pw.print(prefix);
        pw.println("per-package config:");
        pw.println("PackagePreferences:");
        synchronized (this.mPackagePreferences) {
            dumpPackagePreferencesLocked(pw, prefix, filter, this.mPackagePreferences);
        }
        pw.println("Restored without uid:");
        dumpPackagePreferencesLocked(pw, prefix, filter, this.mRestoredWithoutUids);
    }

    public void dump(ProtoOutputStream proto, NotificationManagerService.DumpFilter filter) {
        synchronized (this.mPackagePreferences) {
            dumpPackagePreferencesLocked(proto, 2246267895810L, filter, this.mPackagePreferences);
        }
        dumpPackagePreferencesLocked(proto, 2246267895811L, filter, this.mRestoredWithoutUids);
    }

    private static void dumpPackagePreferencesLocked(PrintWriter pw, String prefix, NotificationManagerService.DumpFilter filter, ArrayMap<String, PackagePreferences> packagePreferences) {
        int N = packagePreferences.size();
        for (int i = 0; i < N; i++) {
            PackagePreferences r = packagePreferences.valueAt(i);
            if (filter.matches(r.pkg)) {
                pw.print(prefix);
                pw.print("  AppSettings: ");
                pw.print(r.pkg);
                pw.print(" (");
                pw.print(r.uid == UNKNOWN_UID ? "UNKNOWN_UID" : Integer.toString(r.uid));
                pw.print(')');
                if (r.importance != -1000) {
                    pw.print(" importance=");
                    pw.print(NotificationListenerService.Ranking.importanceToString(r.importance));
                }
                if (r.priority != 0) {
                    pw.print(" priority=");
                    pw.print(Notification.priorityToString(r.priority));
                }
                if (r.visibility != -1000) {
                    pw.print(" visibility=");
                    pw.print(Notification.visibilityToString(r.visibility));
                }
                if (!r.showBadge) {
                    pw.print(" showBadge=");
                    pw.print(r.showBadge);
                }
                if (r.defaultAppLockedImportance) {
                    pw.print(" defaultAppLocked=");
                    pw.print(r.defaultAppLockedImportance);
                }
                if (r.oemLockedImportance) {
                    pw.print(" oemLocked=");
                    pw.print(r.oemLockedImportance);
                }
                if (!r.oemLockedChannels.isEmpty()) {
                    pw.print(" futureLockedChannels=");
                    pw.print(r.oemLockedChannels);
                }
                pw.println();
                for (NotificationChannel channel : r.channels.values()) {
                    pw.print(prefix);
                    channel.dump(pw, "    ", filter.redact);
                }
                for (NotificationChannelGroup group : r.groups.values()) {
                    pw.print(prefix);
                    pw.print("  ");
                    pw.print("  ");
                    pw.println(group);
                }
            }
        }
    }

    private static void dumpPackagePreferencesLocked(ProtoOutputStream proto, long fieldId, NotificationManagerService.DumpFilter filter, ArrayMap<String, PackagePreferences> packagePreferences) {
        int N = packagePreferences.size();
        for (int i = 0; i < N; i++) {
            PackagePreferences r = packagePreferences.valueAt(i);
            if (filter.matches(r.pkg)) {
                long fToken = proto.start(fieldId);
                proto.write(1138166333441L, r.pkg);
                proto.write(1120986464258L, r.uid);
                proto.write(1172526071811L, r.importance);
                proto.write(1120986464260L, r.priority);
                proto.write(1172526071813L, r.visibility);
                proto.write(1133871366150L, r.showBadge);
                for (NotificationChannel channel : r.channels.values()) {
                    channel.dumpDebug(proto, 2246267895815L);
                }
                for (NotificationChannelGroup group : r.groups.values()) {
                    group.dumpDebug(proto, 2246267895816L);
                }
                proto.end(fToken);
            }
        }
    }

    public void pullPackagePreferencesStats(List<StatsEvent> events) {
        synchronized (this.mPackagePreferences) {
            for (int i = 0; i < this.mPackagePreferences.size() && i <= 1000; i++) {
                SysUiStatsEvent.Builder event = this.mStatsEventBuilderFactory.newBuilder().setAtomId(10071);
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                event.writeInt(r.uid);
                event.addBooleanAnnotation((byte) 1, true);
                event.writeInt(r.importance);
                event.writeInt(r.visibility);
                event.writeInt(r.lockedAppFields);
                events.add(event.build());
            }
        }
    }

    public void pullPackageChannelPreferencesStats(List<StatsEvent> events) {
        synchronized (this.mPackagePreferences) {
            int totalChannelsPulled = 0;
            for (int i = 0; i < this.mPackagePreferences.size() && totalChannelsPulled <= NOTIFICATION_CHANNEL_PULL_LIMIT; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                for (NotificationChannel channel : r.channels.values()) {
                    totalChannelsPulled++;
                    if (totalChannelsPulled > NOTIFICATION_CHANNEL_PULL_LIMIT) {
                        break;
                    }
                    SysUiStatsEvent.Builder event = this.mStatsEventBuilderFactory.newBuilder().setAtomId(10072);
                    event.writeInt(r.uid);
                    boolean z = true;
                    event.addBooleanAnnotation((byte) 1, true);
                    event.writeString(channel.getId());
                    event.writeString(channel.getName().toString());
                    event.writeString(channel.getDescription());
                    event.writeInt(channel.getImportance());
                    event.writeInt(channel.getUserLockedFields());
                    event.writeBoolean(channel.isDeleted());
                    if (channel.getConversationId() == null) {
                        z = false;
                    }
                    event.writeBoolean(z);
                    event.writeBoolean(channel.isDemoted());
                    event.writeBoolean(channel.isImportantConversation());
                    events.add(event.build());
                }
            }
        }
    }

    public void pullPackageChannelGroupPreferencesStats(List<StatsEvent> events) {
        synchronized (this.mPackagePreferences) {
            int totalGroupsPulled = 0;
            for (int i = 0; i < this.mPackagePreferences.size() && totalGroupsPulled <= 1000; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                for (NotificationChannelGroup groupChannel : r.groups.values()) {
                    totalGroupsPulled++;
                    if (totalGroupsPulled > 1000) {
                        break;
                    }
                    SysUiStatsEvent.Builder event = this.mStatsEventBuilderFactory.newBuilder().setAtomId(10073);
                    event.writeInt(r.uid);
                    event.addBooleanAnnotation((byte) 1, true);
                    event.writeString(groupChannel.getId());
                    event.writeString(groupChannel.getName().toString());
                    event.writeString(groupChannel.getDescription());
                    event.writeBoolean(groupChannel.isBlocked());
                    event.writeInt(groupChannel.getUserLockedFields());
                    events.add(event.build());
                }
            }
        }
    }

    public JSONObject dumpJson(NotificationManagerService.DumpFilter filter) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject.put("noUid", this.mRestoredWithoutUids.size());
        } catch (JSONException e) {
        }
        synchronized (this.mPackagePreferences) {
            int N = this.mPackagePreferences.size();
            for (int i = 0; i < N; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                if (filter == null || filter.matches(r.pkg)) {
                    JSONObject PackagePreferences2 = new JSONObject();
                    try {
                        PackagePreferences2.put("userId", UserHandle.getUserId(r.uid));
                        PackagePreferences2.put("packageName", r.pkg);
                        if (r.importance != -1000) {
                            PackagePreferences2.put(ATT_IMPORTANCE, NotificationListenerService.Ranking.importanceToString(r.importance));
                        }
                        if (r.priority != 0) {
                            PackagePreferences2.put(ATT_PRIORITY, Notification.priorityToString(r.priority));
                        }
                        if (r.visibility != -1000) {
                            PackagePreferences2.put(ATT_VISIBILITY, Notification.visibilityToString(r.visibility));
                        }
                        if (!r.showBadge) {
                            PackagePreferences2.put("showBadge", Boolean.valueOf(r.showBadge));
                        }
                        JSONArray channels = new JSONArray();
                        for (NotificationChannel channel : r.channels.values()) {
                            channels.put(channel.toJson());
                        }
                        PackagePreferences2.put("channels", channels);
                        JSONArray groups = new JSONArray();
                        for (NotificationChannelGroup group : r.groups.values()) {
                            groups.put(group.toJson());
                        }
                        PackagePreferences2.put("groups", groups);
                    } catch (JSONException e2) {
                    }
                    jSONArray.put(PackagePreferences2);
                }
            }
        }
        try {
            jSONObject.put("PackagePreferencess", jSONArray);
        } catch (JSONException e3) {
        }
        return jSONObject;
    }

    public JSONArray dumpBansJson(NotificationManagerService.DumpFilter filter) {
        JSONArray bans = new JSONArray();
        Map<Integer, String> packageBans = getPackageBans();
        for (Map.Entry<Integer, String> ban : packageBans.entrySet()) {
            int userId = UserHandle.getUserId(ban.getKey().intValue());
            String packageName = ban.getValue();
            if (filter == null || filter.matches(packageName)) {
                JSONObject banJson = new JSONObject();
                try {
                    banJson.put("userId", userId);
                    banJson.put("packageName", packageName);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                bans.put(banJson);
            }
        }
        return bans;
    }

    public Map<Integer, String> getPackageBans() {
        ArrayMap<Integer, String> packageBans;
        synchronized (this.mPackagePreferences) {
            int N = this.mPackagePreferences.size();
            packageBans = new ArrayMap<>(N);
            for (int i = 0; i < N; i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                if (r.importance == 0) {
                    packageBans.put(Integer.valueOf(r.uid), r.pkg);
                }
            }
        }
        return packageBans;
    }

    public JSONArray dumpChannelsJson(NotificationManagerService.DumpFilter filter) {
        JSONArray channels = new JSONArray();
        Map<String, Integer> packageChannels = getPackageChannels();
        for (Map.Entry<String, Integer> channelCount : packageChannels.entrySet()) {
            String packageName = channelCount.getKey();
            if (filter == null || filter.matches(packageName)) {
                JSONObject channelCountJson = new JSONObject();
                try {
                    channelCountJson.put("packageName", packageName);
                    channelCountJson.put("channelCount", channelCount.getValue());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                channels.put(channelCountJson);
            }
        }
        return channels;
    }

    private Map<String, Integer> getPackageChannels() {
        ArrayMap<String, Integer> packageChannels = new ArrayMap<>();
        synchronized (this.mPackagePreferences) {
            for (int i = 0; i < this.mPackagePreferences.size(); i++) {
                PackagePreferences r = this.mPackagePreferences.valueAt(i);
                int channelCount = 0;
                for (int j = 0; j < r.channels.size(); j++) {
                    if (!r.channels.valueAt(j).isDeleted()) {
                        channelCount++;
                    }
                }
                packageChannels.put(r.pkg, Integer.valueOf(channelCount));
            }
        }
        return packageChannels;
    }

    public void onUserSwitched(int userId) {
        syncChannelsBypassingDnd(userId);
    }

    public void onUserUnlocked(int userId) {
        syncChannelsBypassingDnd(userId);
    }

    public void onUserRemoved(int userId) {
        synchronized (this.mPackagePreferences) {
            int N = this.mPackagePreferences.size();
            for (int i = N - 1; i >= 0; i--) {
                PackagePreferences PackagePreferences2 = this.mPackagePreferences.valueAt(i);
                if (UserHandle.getUserId(PackagePreferences2.uid) == userId) {
                    this.mPackagePreferences.removeAt(i);
                }
            }
        }
    }

    protected void onLocaleChanged(Context context, int userId) {
        synchronized (this.mPackagePreferences) {
            int N = this.mPackagePreferences.size();
            for (int i = 0; i < N; i++) {
                PackagePreferences PackagePreferences2 = this.mPackagePreferences.valueAt(i);
                if (UserHandle.getUserId(PackagePreferences2.uid) == userId && PackagePreferences2.channels.containsKey("miscellaneous")) {
                    PackagePreferences2.channels.get("miscellaneous").setName(context.getResources().getString(R.string.contentServiceSyncNotificationTitle));
                }
            }
        }
    }

    public boolean onPackagesChanged(boolean removingPackage, int changeUserId, String[] pkgList, int[] uidList) {
        if (pkgList == null || pkgList.length == 0) {
            return false;
        }
        boolean updated = false;
        if (removingPackage) {
            int size = Math.min(pkgList.length, uidList.length);
            for (int i = 0; i < size; i++) {
                String pkg = pkgList[i];
                int uid = uidList[i];
                synchronized (this.mPackagePreferences) {
                    this.mPackagePreferences.remove(packagePreferencesKey(pkg, uid));
                }
                this.mRestoredWithoutUids.remove(unrestoredPackageKey(pkg, changeUserId));
                updated = true;
            }
        } else {
            for (String pkg2 : pkgList) {
                PackagePreferences r = this.mRestoredWithoutUids.get(unrestoredPackageKey(pkg2, changeUserId));
                if (r != null) {
                    try {
                        r.uid = this.mPm.getPackageUidAsUser(r.pkg, changeUserId);
                        this.mRestoredWithoutUids.remove(unrestoredPackageKey(pkg2, changeUserId));
                        synchronized (this.mPackagePreferences) {
                            try {
                                this.mPackagePreferences.put(packagePreferencesKey(r.pkg, r.uid), r);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        updated = true;
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                try {
                    synchronized (this.mPackagePreferences) {
                        try {
                            PackagePreferences fullPackagePreferences = getPackagePreferencesLocked(pkg2, this.mPm.getPackageUidAsUser(pkg2, changeUserId));
                            if (fullPackagePreferences != null) {
                                updated = updated | createDefaultChannelIfNeededLocked(fullPackagePreferences) | deleteDefaultChannelIfNeededLocked(fullPackagePreferences);
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e2) {
                }
            }
        }
        if (updated) {
            updateConfig();
        }
        return updated;
    }

    public void clearData(String pkg, int uid) {
        synchronized (this.mPackagePreferences) {
            PackagePreferences p = getPackagePreferencesLocked(pkg, uid);
            if (p != null) {
                p.channels = new ArrayMap<>();
                p.groups = new ArrayMap();
                p.delegate = null;
                p.lockedAppFields = 0;
                p.bubblePreference = 0;
                p.importance = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                p.priority = 0;
                p.visibility = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
                p.showBadge = true;
            }
        }
    }

    private LogMaker getChannelLog(NotificationChannel channel, String pkg) {
        return new LogMaker(856).setType(6).setPackageName(pkg).addTaggedData(857, channel.getId()).addTaggedData(858, Integer.valueOf(channel.getImportance()));
    }

    private LogMaker getChannelGroupLog(String groupId, String pkg) {
        return new LogMaker(859).setType(6).addTaggedData(860, groupId).setPackageName(pkg);
    }

    public void updateBubblesEnabled() {
        boolean newValue = Settings.Global.getInt(this.mContext.getContentResolver(), "notification_bubbles", 1) == 1;
        if (newValue != this.mBubblesEnabledGlobally) {
            this.mBubblesEnabledGlobally = newValue;
            updateConfig();
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public boolean bubblesEnabled() {
        return this.mBubblesEnabledGlobally;
    }

    @Override // com.android.server.notification.RankingConfig
    public boolean isMediaNotificationFilteringEnabled() {
        return true;
    }

    public void updateBadgingEnabled() {
        if (this.mBadgingEnabled == null) {
            this.mBadgingEnabled = new SparseBooleanArray();
        }
        boolean changed = false;
        for (int index = 0; index < this.mBadgingEnabled.size(); index++) {
            int userId = this.mBadgingEnabled.keyAt(index);
            boolean oldValue = this.mBadgingEnabled.get(userId);
            boolean z = true;
            boolean newValue = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "notification_badging", 1, userId) != 0;
            this.mBadgingEnabled.put(userId, newValue);
            if (oldValue == newValue) {
                z = false;
            }
            changed |= z;
        }
        if (changed) {
            updateConfig();
        }
    }

    @Override // com.android.server.notification.RankingConfig
    public boolean badgingEnabled(UserHandle userHandle) {
        int userId = userHandle.getIdentifier();
        if (userId == -1) {
            return false;
        }
        if (this.mBadgingEnabled.indexOfKey(userId) < 0) {
            this.mBadgingEnabled.put(userId, Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "notification_badging", 1, userId) != 0);
        }
        return this.mBadgingEnabled.get(userId, true);
    }

    private void updateConfig() {
        this.mRankingHandler.requestSort();
    }

    private static String packagePreferencesKey(String pkg, int uid) {
        return pkg + "|" + uid;
    }

    private static String unrestoredPackageKey(String pkg, int userId) {
        return pkg + "|" + userId;
    }

    private static class PackagePreferences {
        int bubblePreference;
        ArrayMap<String, NotificationChannel> channels;
        boolean defaultAppLockedImportance;
        Delegate delegate;
        Map<String, NotificationChannelGroup> groups;
        boolean hasSentInvalidMessage;
        boolean hasSentValidMessage;
        int importance;
        int lockedAppFields;
        List<String> oemLockedChannels;
        boolean oemLockedImportance;
        String pkg;
        int priority;
        boolean showBadge;
        int uid;
        boolean userDemotedMsgApp;
        int visibility;

        private PackagePreferences() {
            this.uid = PreferencesHelper.UNKNOWN_UID;
            this.importance = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
            this.priority = 0;
            this.visibility = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
            this.showBadge = true;
            this.bubblePreference = 0;
            this.lockedAppFields = 0;
            this.oemLockedImportance = false;
            this.oemLockedChannels = new ArrayList();
            this.defaultAppLockedImportance = false;
            this.hasSentInvalidMessage = false;
            this.hasSentValidMessage = false;
            this.userDemotedMsgApp = false;
            this.delegate = null;
            this.channels = new ArrayMap<>();
            this.groups = new ConcurrentHashMap();
        }

        public boolean isValidDelegate(String pkg, int uid) {
            Delegate delegate = this.delegate;
            return delegate != null && delegate.isAllowed(pkg, uid);
        }
    }

    private static class Delegate {
        static final boolean DEFAULT_ENABLED = true;
        static final boolean DEFAULT_USER_ALLOWED = true;
        boolean mEnabled;
        String mPkg;
        int mUid;
        boolean mUserAllowed;

        Delegate(String pkg, int uid, boolean enabled, boolean userAllowed) {
            this.mUid = PreferencesHelper.UNKNOWN_UID;
            this.mEnabled = true;
            this.mUserAllowed = true;
            this.mPkg = pkg;
            this.mUid = uid;
            this.mEnabled = enabled;
            this.mUserAllowed = userAllowed;
        }

        public boolean isAllowed(String pkg, int uid) {
            return pkg != null && uid != PreferencesHelper.UNKNOWN_UID && pkg.equals(this.mPkg) && uid == this.mUid && this.mUserAllowed && this.mEnabled;
        }
    }
}
