package com.android.server.pm;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityManagerNative;
import android.app.IActivityManager;
import android.app.IStopUserCallback;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.CrossProfileAppsInternal;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.IProgressListener;
import android.os.IUserManager;
import android.os.IUserRestrictionsListener;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SELinux;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.UserManagerInternal;
import android.os.storage.StorageManager;
import android.security.GateKeeper;
import android.service.gatekeeper.IGateKeeperService;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.Xml;
import com.android.internal.app.IAppOpsService;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.internal.widget.LockPatternUtils;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.SystemService;
import com.android.server.am.UserState;
import com.android.server.job.JobSchedulerShellCommand;
import com.android.server.job.controllers.JobStatus;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ThreadLocalRandom;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class UserManagerService extends IUserManager.Stub {
    private static final int ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION = 812;
    private static final String ATTR_CONVERTED_FROM_PRE_CREATED = "convertedFromPreCreated";
    private static final String ATTR_CREATION_TIME = "created";
    private static final String ATTR_FLAGS = "flags";
    private static final String ATTR_GUEST_TO_REMOVE = "guestToRemove";
    private static final String ATTR_ICON_PATH = "icon";
    private static final String ATTR_ID = "id";
    private static final String ATTR_KEY = "key";
    private static final String ATTR_LAST_LOGGED_IN_FINGERPRINT = "lastLoggedInFingerprint";
    private static final String ATTR_LAST_LOGGED_IN_TIME = "lastLoggedIn";
    private static final String ATTR_MULTIPLE = "m";
    private static final String ATTR_NEXT_SERIAL_NO = "nextSerialNumber";
    private static final String ATTR_PARTIAL = "partial";
    private static final String ATTR_PRE_CREATED = "preCreated";
    private static final String ATTR_PROFILE_BADGE = "profileBadge";
    private static final String ATTR_PROFILE_GROUP_ID = "profileGroupId";
    private static final String ATTR_RESTRICTED_PROFILE_PARENT_ID = "restrictedProfileParentId";
    private static final String ATTR_SEED_ACCOUNT_NAME = "seedAccountName";
    private static final String ATTR_SEED_ACCOUNT_TYPE = "seedAccountType";
    private static final String ATTR_SERIAL_NO = "serialNumber";
    private static final String ATTR_TYPE = "type";
    private static final String ATTR_TYPE_BOOLEAN = "b";
    private static final String ATTR_TYPE_BUNDLE = "B";
    private static final String ATTR_TYPE_BUNDLE_ARRAY = "BA";
    private static final String ATTR_TYPE_INTEGER = "i";
    private static final String ATTR_TYPE_STRING = "s";
    private static final String ATTR_TYPE_STRING_ARRAY = "sa";
    private static final String ATTR_USER_VERSION = "version";
    private static final String ATTR_VALUE_TYPE = "type";
    static final boolean DBG = false;
    private static final boolean DBG_WITH_STACKTRACE = false;
    private static final long EPOCH_PLUS_30_YEARS = 946080000000L;
    private static final String LOG_TAG = "UserManagerService";
    static final int MAX_RECENTLY_REMOVED_IDS_SIZE = 100;
    static final int MAX_USER_ID = 21474;
    static final int MIN_USER_ID = 10;
    private static final boolean RELEASE_DELETED_USER_ID = false;
    private static final String RESTRICTIONS_FILE_PREFIX = "res_";
    private static final String TAG_ACCOUNT = "account";
    private static final String TAG_DEVICE_OWNER_USER_ID = "deviceOwnerUserId";
    private static final String TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS = "device_policy_global_restrictions";
    private static final String TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS = "device_policy_local_restrictions";
    private static final String TAG_DEVICE_POLICY_RESTRICTIONS = "device_policy_restrictions";
    private static final String TAG_ENTRY = "entry";
    private static final String TAG_GLOBAL_RESTRICTION_OWNER_ID = "globalRestrictionOwnerUserId";
    private static final String TAG_GUEST_RESTRICTIONS = "guestRestrictions";
    private static final String TAG_IGNORE_PREPARE_STORAGE_ERRORS = "ignorePrepareStorageErrors";
    private static final String TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL = "lastRequestQuietModeEnabledCall";
    private static final String TAG_NAME = "name";
    private static final String TAG_RESTRICTIONS = "restrictions";
    private static final String TAG_SEED_ACCOUNT_OPTIONS = "seedAccountOptions";
    private static final String TAG_USER = "user";
    private static final String TAG_USERS = "users";
    private static final String TAG_VALUE = "value";
    private static final String TRON_DEMO_CREATED = "users_demo_created";
    private static final String TRON_GUEST_CREATED = "users_guest_created";
    private static final String TRON_USER_CREATED = "users_user_created";
    private static final String USER_LIST_FILENAME = "userlist.xml";
    private static final String USER_PHOTO_FILENAME = "photo.png";
    private static final String USER_PHOTO_FILENAME_TMP = "photo.png.tmp";
    private static final int USER_VERSION = 9;
    static final int WRITE_USER_DELAY = 2000;
    static final int WRITE_USER_MSG = 1;
    private static final String XML_SUFFIX = ".xml";
    private static UserManagerService sInstance;
    private final String ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK;
    private IAppOpsService mAppOpsService;
    private final Object mAppRestrictionsLock;
    private final RestrictionsSet mAppliedUserRestrictions;
    private final RestrictionsSet mBaseUserRestrictions;
    private final RestrictionsSet mCachedEffectiveUserRestrictions;
    private final Context mContext;
    private CrossProfileAppsInternal mCrossProfileAppsInternal;
    private int mDeviceOwnerUserId;
    private final RestrictionsSet mDevicePolicyGlobalUserRestrictions;
    private final SparseArray<RestrictionsSet> mDevicePolicyLocalUserRestrictions;
    private DevicePolicyManagerInternal mDevicePolicyManagerInternal;
    private final BroadcastReceiver mDisableQuietModeCallback;
    private boolean mForceEphemeralUsers;
    private final Bundle mGuestRestrictions;
    private final Handler mHandler;
    private boolean mIsDeviceManaged;
    private final SparseBooleanArray mIsUserManaged;
    private final LocalService mLocalService;
    private final LockPatternUtils mLockPatternUtils;
    private int mNextSerialNumber;
    private final Object mPackagesLock;
    private final PackageManagerService mPm;
    private PackageManagerInternal mPmInternal;
    private final LinkedList<Integer> mRecentlyRemovedIds;
    private final SparseBooleanArray mRemovingUserIds;
    private final Object mRestrictionsLock;
    private final UserSystemPackageInstaller mSystemPackageInstaller;
    private final UserDataPreparer mUserDataPreparer;
    private int[] mUserIds;
    private int[] mUserIdsIncludingPreCreated;
    private final File mUserListFile;
    private final ArrayList<UserManagerInternal.UserRestrictionsListener> mUserRestrictionsListeners;
    private final WatchedUserStates mUserStates;
    private final ArrayMap<String, UserTypeDetails> mUserTypes;
    private int mUserVersion;
    private final SparseArray<UserData> mUsers;
    private final File mUsersDir;
    private final Object mUsersLock;
    private static final String USER_INFO_DIR = "system" + File.separator + "users";
    private static final IBinder mUserRestriconToken = new Binder();

    static class UserData {
        String account;
        UserInfo info;
        private boolean mIgnorePrepareStorageErrors;
        private long mLastRequestQuietModeEnabledMillis;
        boolean persistSeedData;
        String seedAccountName;
        PersistableBundle seedAccountOptions;
        String seedAccountType;
        long startRealtime;
        long unlockRealtime;

        UserData() {
        }

        void setLastRequestQuietModeEnabledMillis(long millis) {
            this.mLastRequestQuietModeEnabledMillis = millis;
        }

        long getLastRequestQuietModeEnabledMillis() {
            return this.mLastRequestQuietModeEnabledMillis;
        }

        boolean getIgnorePrepareStorageErrors() {
            return this.mIgnorePrepareStorageErrors;
        }

        void setIgnorePrepareStorageErrors() {
            this.mIgnorePrepareStorageErrors = true;
        }

        void clearSeedAccountData() {
            this.seedAccountName = null;
            this.seedAccountType = null;
            this.seedAccountOptions = null;
            this.persistSeedData = false;
        }
    }

    /* JADX INFO: renamed from: com.android.server.pm.UserManagerService$1, reason: invalid class name */
    class AnonymousClass1 extends BroadcastReceiver {
        AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK".equals(intent.getAction())) {
                return;
            }
            final IntentSender target = (IntentSender) intent.getParcelableExtra("android.intent.extra.INTENT");
            final int userId = intent.getIntExtra("android.intent.extra.USER_ID", -10000);
            BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.pm.-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onReceive$0$UserManagerService$1(userId, target);
                }
            });
        }

        public /* synthetic */ void lambda$onReceive$0$UserManagerService$1(int userId, IntentSender target) {
            UserManagerService.this.setQuietModeEnabled(userId, false, target, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DisableQuietModeUserUnlockedCallback extends IProgressListener.Stub {
        private final IntentSender mTarget;

        public DisableQuietModeUserUnlockedCallback(IntentSender target) {
            Objects.requireNonNull(target);
            this.mTarget = target;
        }

        public void onStarted(int id, Bundle extras) {
        }

        public void onProgress(int id, int progress, Bundle extras) {
        }

        public void onFinished(int id, Bundle extras) {
            UserManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.-$$Lambda$UserManagerService$DisableQuietModeUserUnlockedCallback$Xj5Vf2ikWbZ5QWza6wyZQhLIFdE
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFinished$0$UserManagerService$DisableQuietModeUserUnlockedCallback();
                }
            });
        }

        public /* synthetic */ void lambda$onFinished$0$UserManagerService$DisableQuietModeUserUnlockedCallback() {
            try {
                UserManagerService.this.mContext.startIntentSender(this.mTarget, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                Slog.e(UserManagerService.LOG_TAG, "Failed to start the target in the callback", e);
            }
        }
    }

    private class WatchedUserStates {
        final SparseIntArray states = new SparseIntArray();

        public WatchedUserStates() {
            invalidateIsUserUnlockedCache();
        }

        public int get(int userId) {
            return this.states.get(userId);
        }

        public int get(int userId, int fallback) {
            return this.states.indexOfKey(userId) >= 0 ? this.states.get(userId) : fallback;
        }

        public void put(int userId, int state) {
            this.states.put(userId, state);
            invalidateIsUserUnlockedCache();
        }

        public void delete(int userId) {
            this.states.delete(userId);
            invalidateIsUserUnlockedCache();
        }

        public String toString() {
            return this.states.toString();
        }

        private void invalidateIsUserUnlockedCache() {
            UserManager.invalidateIsUserUnlockedCache();
        }
    }

    public static UserManagerService getInstance() {
        UserManagerService userManagerService;
        synchronized (UserManagerService.class) {
            userManagerService = sInstance;
        }
        return userManagerService;
    }

    public static class LifeCycle extends SystemService {
        private UserManagerService mUms;

        public LifeCycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [android.os.IBinder, com.android.server.pm.UserManagerService] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? userManagerService = UserManagerService.getInstance();
            this.mUms = userManagerService;
            publishBinderService(UserManagerService.TAG_USER, userManagerService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int phase) {
            if (phase == 550) {
                this.mUms.cleanupPartialUsers();
                if (this.mUms.mPm.isDeviceUpgrading()) {
                    this.mUms.cleanupPreCreatedUsers();
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onStartUser(int userId) {
            synchronized (this.mUms.mUsersLock) {
                UserData user = this.mUms.getUserDataLU(userId);
                if (user != null) {
                    user.startRealtime = SystemClock.elapsedRealtime();
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onUnlockUser(int userId) {
            synchronized (this.mUms.mUsersLock) {
                UserData user = this.mUms.getUserDataLU(userId);
                if (user != null) {
                    user.unlockRealtime = SystemClock.elapsedRealtime();
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onStopUser(int userId) {
            synchronized (this.mUms.mUsersLock) {
                UserData user = this.mUms.getUserDataLU(userId);
                if (user != null) {
                    user.startRealtime = 0L;
                    user.unlockRealtime = 0L;
                }
            }
        }
    }

    UserManagerService(Context context) {
        this(context, null, null, new Object(), context.getCacheDir());
    }

    UserManagerService(Context context, PackageManagerService pm, UserDataPreparer userDataPreparer, Object packagesLock) {
        this(context, pm, userDataPreparer, packagesLock, Environment.getDataDirectory());
    }

    private UserManagerService(Context context, PackageManagerService pm, UserDataPreparer userDataPreparer, Object packagesLock, File dataDir) {
        this.mUsersLock = LockGuard.installNewLock(2);
        this.mRestrictionsLock = new Object();
        this.mAppRestrictionsLock = new Object();
        this.mUsers = new SparseArray<>();
        this.mBaseUserRestrictions = new RestrictionsSet();
        this.mCachedEffectiveUserRestrictions = new RestrictionsSet();
        this.mAppliedUserRestrictions = new RestrictionsSet();
        this.mDevicePolicyGlobalUserRestrictions = new RestrictionsSet();
        this.mDeviceOwnerUserId = -10000;
        this.mDevicePolicyLocalUserRestrictions = new SparseArray<>();
        this.mGuestRestrictions = new Bundle();
        this.mRemovingUserIds = new SparseBooleanArray();
        this.mRecentlyRemovedIds = new LinkedList<>();
        this.mUserVersion = 0;
        this.mIsUserManaged = new SparseBooleanArray();
        this.mUserRestrictionsListeners = new ArrayList<>();
        this.ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK = "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK";
        this.mDisableQuietModeCallback = new AnonymousClass1();
        this.mUserStates = new WatchedUserStates();
        this.mContext = context;
        this.mPm = pm;
        this.mPackagesLock = packagesLock;
        this.mHandler = new MainHandler();
        this.mUserDataPreparer = userDataPreparer;
        this.mUserTypes = UserTypeFactory.getUserTypes();
        synchronized (this.mPackagesLock) {
            File file = new File(dataDir, USER_INFO_DIR);
            this.mUsersDir = file;
            file.mkdirs();
            File userZeroDir = new File(this.mUsersDir, String.valueOf(0));
            userZeroDir.mkdirs();
            FileUtils.setPermissions(this.mUsersDir.toString(), 509, -1, -1);
            this.mUserListFile = new File(this.mUsersDir, USER_LIST_FILENAME);
            initDefaultGuestRestrictions();
            readUserListLP();
            Slog.d(LOG_TAG, "Get userIds after readUserListLP():" + Arrays.toString(this.mUserIds));
            sInstance = this;
        }
        this.mSystemPackageInstaller = new UserSystemPackageInstaller(this, this.mUserTypes);
        LocalService localService = new LocalService(this, null);
        this.mLocalService = localService;
        LocalServices.addService(UserManagerInternal.class, localService);
        this.mLockPatternUtils = new LockPatternUtils(this.mContext);
        this.mUserStates.put(0, 0);
    }

    void systemReady() {
        this.mAppOpsService = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        synchronized (this.mRestrictionsLock) {
            applyUserRestrictionsLR(0);
        }
        this.mContext.registerReceiver(this.mDisableQuietModeCallback, new IntentFilter("com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"), null, this.mHandler);
    }

    UserManagerInternal getInternalForInjectorOnly() {
        return this.mLocalService;
    }

    void cleanupPartialUsers() {
        ArrayList<UserInfo> partials = new ArrayList<>();
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo ui = this.mUsers.valueAt(i).info;
                if ((ui.partial || ui.guestToRemove || (ui.isEphemeral() && !ui.preCreated)) && i != 0) {
                    partials.add(ui);
                    addRemovingUserIdLocked(ui.id);
                    ui.partial = true;
                }
            }
        }
        int partialsSize = partials.size();
        for (int i2 = 0; i2 < partialsSize; i2++) {
            UserInfo ui2 = partials.get(i2);
            Slog.w(LOG_TAG, "Removing partially created user " + ui2.id + " (name=" + ui2.name + ")");
            removeUserState(ui2.id);
        }
    }

    void cleanupPreCreatedUsers() {
        ArrayList<UserInfo> preCreatedUsers;
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            preCreatedUsers = new ArrayList<>(userSize);
            for (int i = 0; i < userSize; i++) {
                UserInfo ui = this.mUsers.valueAt(i).info;
                if (ui.preCreated) {
                    preCreatedUsers.add(ui);
                    addRemovingUserIdLocked(ui.id);
                    ui.flags |= 64;
                    ui.partial = true;
                }
            }
        }
        int preCreatedSize = preCreatedUsers.size();
        for (int i2 = 0; i2 < preCreatedSize; i2++) {
            UserInfo ui2 = preCreatedUsers.get(i2);
            Slog.i(LOG_TAG, "Removing pre-created user " + ui2.id);
            removeUserState(ui2.id);
        }
    }

    public String getUserAccount(int userId) {
        String str;
        checkManageUserAndAcrossUsersFullPermission("get user account");
        synchronized (this.mUsersLock) {
            str = this.mUsers.get(userId).account;
        }
        return str;
    }

    public void setUserAccount(int userId, String accountName) {
        checkManageUserAndAcrossUsersFullPermission("set user account");
        UserData userToUpdate = null;
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userData = this.mUsers.get(userId);
                if (userData == null) {
                    Slog.e(LOG_TAG, "User not found for setting user account: u" + userId);
                    return;
                }
                String currentAccount = userData.account;
                if (!Objects.equals(currentAccount, accountName)) {
                    userData.account = accountName;
                    userToUpdate = userData;
                }
                if (userToUpdate != null) {
                    writeUserLP(userToUpdate);
                }
            }
        }
    }

    public UserInfo getPrimaryUser() {
        checkManageUsersPermission("query users");
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo ui = this.mUsers.valueAt(i).info;
                if (ui.isPrimary() && !this.mRemovingUserIds.get(ui.id)) {
                    return ui;
                }
            }
            return null;
        }
    }

    public List<UserInfo> getUsers(boolean excludeDying) {
        return getUsers(true, excludeDying, true);
    }

    public List<UserInfo> getUsers(boolean excludePartial, boolean excludeDying, boolean excludePreCreated) {
        checkManageOrCreateUsersPermission("query users");
        return getUsersInternal(excludePartial, excludeDying, excludePreCreated);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<UserInfo> getUsersInternal(boolean excludePartial, boolean excludeDying, boolean excludePreCreated) {
        ArrayList<UserInfo> users;
        synchronized (this.mUsersLock) {
            users = new ArrayList<>(this.mUsers.size());
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo ui = this.mUsers.valueAt(i).info;
                if ((!excludePartial || !ui.partial) && ((!excludeDying || !this.mRemovingUserIds.get(ui.id)) && (!excludePreCreated || !ui.preCreated))) {
                    users.add(userWithName(ui));
                }
            }
        }
        return users;
    }

    public List<UserInfo> getProfiles(int userId, boolean enabledOnly) {
        List<UserInfo> profilesLU;
        boolean returnFullInfo = true;
        if (userId != UserHandle.getCallingUserId()) {
            checkManageOrCreateUsersPermission("getting profiles related to user " + userId);
        } else {
            returnFullInfo = hasManageUsersPermission();
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mUsersLock) {
                profilesLU = getProfilesLU(userId, null, enabledOnly, returnFullInfo);
            }
            Binder.restoreCallingIdentity(ident);
            return profilesLU;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public int[] getProfileIds(int userId, boolean enabledOnly) {
        return getProfileIds(userId, null, enabledOnly);
    }

    public int[] getProfileIds(int userId, String userType, boolean enabledOnly) {
        int[] array;
        if (userId != UserHandle.getCallingUserId()) {
            checkManageOrCreateUsersPermission("getting profiles related to user " + userId);
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mUsersLock) {
                array = getProfileIdsLU(userId, userType, enabledOnly).toArray();
            }
            Binder.restoreCallingIdentity(ident);
            return array;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    private List<UserInfo> getProfilesLU(int userId, String userType, boolean enabledOnly, boolean fullInfo) {
        UserInfo userInfo;
        IntArray profileIds = getProfileIdsLU(userId, userType, enabledOnly);
        ArrayList<UserInfo> users = new ArrayList<>(profileIds.size());
        for (int i = 0; i < profileIds.size(); i++) {
            int profileId = profileIds.get(i);
            UserInfo userInfo2 = this.mUsers.get(profileId).info;
            if (!fullInfo) {
                userInfo = new UserInfo(userInfo2);
                userInfo.name = null;
                userInfo.iconPath = null;
            } else {
                userInfo = userWithName(userInfo2);
            }
            users.add(userInfo);
        }
        return users;
    }

    private IntArray getProfileIdsLU(int userId, String userType, boolean enabledOnly) {
        UserInfo user = getUserInfoLU(userId);
        IntArray result = new IntArray(this.mUsers.size());
        if (user == null) {
            return result;
        }
        int userSize = this.mUsers.size();
        for (int i = 0; i < userSize; i++) {
            UserInfo profile = this.mUsers.valueAt(i).info;
            if (isProfileOf(user, profile) && ((!enabledOnly || profile.isEnabled()) && !this.mRemovingUserIds.get(profile.id) && !profile.partial && (userType == null || userType.equals(profile.userType)))) {
                result.add(profile.id);
            }
        }
        return result;
    }

    public int getCredentialOwnerProfile(int userId) {
        checkManageUsersPermission("get the credential owner");
        if (!this.mLockPatternUtils.isSeparateProfileChallengeEnabled(userId)) {
            synchronized (this.mUsersLock) {
                UserInfo profileParent = getProfileParentLU(userId);
                if (profileParent != null) {
                    return profileParent.id;
                }
            }
        }
        return userId;
    }

    public boolean isSameProfileGroup(int userId, int otherUserId) {
        if (userId == otherUserId) {
            return true;
        }
        checkManageUsersPermission("check if in the same profile group");
        return isSameProfileGroupNoChecks(userId, otherUserId);
    }

    private boolean isSameProfileGroupNoChecks(int userId, int otherUserId) {
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            if (userInfo != null && userInfo.profileGroupId != -10000) {
                UserInfo otherUserInfo = getUserInfoLU(otherUserId);
                if (otherUserInfo != null && otherUserInfo.profileGroupId != -10000) {
                    return userInfo.profileGroupId == otherUserInfo.profileGroupId;
                }
                return false;
            }
            return false;
        }
    }

    public UserInfo getProfileParent(int userId) {
        UserInfo profileParentLU;
        checkManageUsersPermission("get the profile parent");
        synchronized (this.mUsersLock) {
            profileParentLU = getProfileParentLU(userId);
        }
        return profileParentLU;
    }

    public int getProfileParentId(int userId) {
        checkManageUsersPermission("get the profile parent");
        return this.mLocalService.getProfileParentId(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserInfo getProfileParentLU(int userId) {
        int parentUserId;
        UserInfo profile = getUserInfoLU(userId);
        if (profile == null || (parentUserId = profile.profileGroupId) == userId || parentUserId == -10000) {
            return null;
        }
        return getUserInfoLU(parentUserId);
    }

    private static boolean isProfileOf(UserInfo user, UserInfo profile) {
        return user.id == profile.id || (user.profileGroupId != -10000 && user.profileGroupId == profile.profileGroupId);
    }

    private void broadcastProfileAvailabilityChanges(UserHandle profileHandle, UserHandle parentHandle, boolean inQuietMode) {
        Intent intent = new Intent();
        if (inQuietMode) {
            intent.setAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        } else {
            intent.setAction("android.intent.action.MANAGED_PROFILE_AVAILABLE");
        }
        intent.putExtra("android.intent.extra.QUIET_MODE", inQuietMode);
        intent.putExtra("android.intent.extra.USER", profileHandle);
        intent.putExtra("android.intent.extra.user_handle", profileHandle.getIdentifier());
        getDevicePolicyManagerInternal().broadcastIntentToCrossProfileManifestReceiversAsUser(intent, parentHandle, true);
        intent.addFlags(1073741824);
        this.mContext.sendBroadcastAsUser(intent, parentHandle);
    }

    public boolean requestQuietModeEnabled(String callingPackage, boolean enableQuietMode, int userId, IntentSender target, int flags) {
        Objects.requireNonNull(callingPackage);
        if (enableQuietMode && target != null) {
            throw new IllegalArgumentException("target should only be specified when we are disabling quiet mode.");
        }
        boolean dontAskCredential = (flags & 2) != 0;
        boolean onlyIfCredentialNotRequired = (flags & 1) != 0;
        if (dontAskCredential && onlyIfCredentialNotRequired) {
            throw new IllegalArgumentException("invalid flags: " + flags);
        }
        ensureCanModifyQuietMode(callingPackage, Binder.getCallingUid(), userId, target != null, dontAskCredential);
        if (onlyIfCredentialNotRequired && callingPackage.equals(getPackageManagerInternal().getSystemUiServiceComponent().getPackageName())) {
            throw new SecurityException("SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED");
        }
        long identity = Binder.clearCallingIdentity();
        try {
            if (enableQuietMode) {
                setQuietModeEnabled(userId, true, target, callingPackage);
                Binder.restoreCallingIdentity(identity);
                return true;
            }
            if (this.mLockPatternUtils.isManagedProfileWithUnifiedChallenge(userId)) {
                KeyguardManager km = (KeyguardManager) this.mContext.getSystemService(KeyguardManager.class);
                if (!km.isDeviceLocked(this.mLocalService.getProfileParentId(userId)) || onlyIfCredentialNotRequired) {
                    this.mLockPatternUtils.tryUnlockWithCachedUnifiedChallenge(userId);
                }
            }
            boolean needToShowConfirmCredential = (dontAskCredential || !this.mLockPatternUtils.isSecure(userId) || StorageManager.isUserKeyUnlocked(userId)) ? false : true;
            if (!needToShowConfirmCredential) {
                setQuietModeEnabled(userId, false, target, callingPackage);
                Binder.restoreCallingIdentity(identity);
                return true;
            }
            if (onlyIfCredentialNotRequired) {
                Binder.restoreCallingIdentity(identity);
                return false;
            }
            showConfirmCredentialToDisableQuietMode(userId, target);
            Binder.restoreCallingIdentity(identity);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    private void ensureCanModifyQuietMode(String callingPackage, int callingUid, int targetUserId, boolean startIntent, boolean dontAskCredential) {
        verifyCallingPackage(callingPackage, callingUid);
        if (hasManageUsersPermission()) {
            return;
        }
        if (startIntent) {
            throw new SecurityException("MANAGE_USERS permission is required to start intent after disabling quiet mode.");
        }
        if (dontAskCredential) {
            throw new SecurityException("MANAGE_USERS permission is required to disable quiet mode without credentials.");
        }
        if (!isSameProfileGroupNoChecks(UserHandle.getUserId(callingUid), targetUserId)) {
            throw new SecurityException("MANAGE_USERS permission is required to modify quiet mode for a different profile group.");
        }
        boolean hasModifyQuietModePermission = hasPermissionGranted("android.permission.MODIFY_QUIET_MODE", callingUid);
        if (hasModifyQuietModePermission) {
            return;
        }
        ShortcutServiceInternal shortcutInternal = (ShortcutServiceInternal) LocalServices.getService(ShortcutServiceInternal.class);
        if (shortcutInternal != null) {
            boolean isForegroundLauncher = shortcutInternal.isForegroundDefaultLauncher(callingPackage, callingUid);
            if (isForegroundLauncher) {
                return;
            }
        }
        throw new SecurityException("Can't modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setQuietModeEnabled(int userId, boolean enableQuietMode, IntentSender target, String callingPackage) {
        synchronized (this.mUsersLock) {
            UserInfo profile = getUserInfoLU(userId);
            UserInfo parent = getProfileParentLU(userId);
            if (profile == null || !profile.isManagedProfile()) {
                throw new IllegalArgumentException("User " + userId + " is not a profile");
            }
            if (profile.isQuietModeEnabled() == enableQuietMode) {
                Slog.i(LOG_TAG, "Quiet mode is already " + enableQuietMode);
                return;
            }
            profile.flags ^= 128;
            UserData profileUserData = getUserDataLU(profile.id);
            synchronized (this.mPackagesLock) {
                writeUserLP(profileUserData);
            }
            DisableQuietModeUserUnlockedCallback disableQuietModeUserUnlockedCallback = null;
            try {
                if (enableQuietMode) {
                    ActivityManager.getService().stopUser(userId, true, (IStopUserCallback) null);
                    ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).killForegroundAppsForUser(userId);
                } else {
                    if (target != null) {
                        disableQuietModeUserUnlockedCallback = new DisableQuietModeUserUnlockedCallback(target);
                    }
                    ActivityManager.getService().startUserInBackgroundWithListener(userId, disableQuietModeUserUnlockedCallback);
                }
                logQuietModeEnabled(userId, enableQuietMode, callingPackage);
            } catch (RemoteException e) {
                e.rethrowAsRuntimeException();
            }
            broadcastProfileAvailabilityChanges(profile.getUserHandle(), parent.getUserHandle(), enableQuietMode);
        }
    }

    private void logQuietModeEnabled(int userId, boolean enableQuietMode, String callingPackage) {
        UserData userData;
        long period;
        synchronized (this.mUsersLock) {
            userData = getUserDataLU(userId);
        }
        if (userData == null) {
            return;
        }
        long now = System.currentTimeMillis();
        if (userData.getLastRequestQuietModeEnabledMillis() != 0) {
            period = now - userData.getLastRequestQuietModeEnabledMillis();
        } else {
            period = now - userData.info.creationTime;
        }
        DevicePolicyEventLogger.createEvent(55).setStrings(new String[]{callingPackage}).setBoolean(enableQuietMode).setTimePeriod(period).write();
        userData.setLastRequestQuietModeEnabledMillis(now);
    }

    public boolean isQuietModeEnabled(int userId) {
        UserInfo info;
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                info = getUserInfoLU(userId);
            }
            if (info != null && info.isManagedProfile()) {
                return info.isQuietModeEnabled();
            }
            return false;
        }
    }

    private void showConfirmCredentialToDisableQuietMode(int userId, IntentSender target) {
        KeyguardManager km = (KeyguardManager) this.mContext.getSystemService("keyguard");
        Intent unlockIntent = km.createConfirmDeviceCredentialIntent(null, null, userId);
        if (unlockIntent == null) {
            return;
        }
        Intent callBackIntent = new Intent("com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK");
        if (target != null) {
            callBackIntent.putExtra("android.intent.extra.INTENT", target);
        }
        callBackIntent.putExtra("android.intent.extra.USER_ID", userId);
        callBackIntent.setPackage(this.mContext.getPackageName());
        callBackIntent.addFlags(AudioFormat.EVRC);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(this.mContext, 0, callBackIntent, 1409286144);
        unlockIntent.putExtra("android.intent.extra.INTENT", pendingIntent.getIntentSender());
        unlockIntent.setFlags(276824064);
        this.mContext.startActivity(unlockIntent);
    }

    public void setUserEnabled(int userId) {
        UserInfo info;
        checkManageUsersPermission("enable user");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                info = getUserInfoLU(userId);
            }
            if (info != null && !info.isEnabled()) {
                info.flags ^= 64;
                writeUserLP(getUserDataLU(info.id));
            }
        }
    }

    public void setUserAdmin(int userId) {
        UserInfo info;
        checkManageUserAndAcrossUsersFullPermission("set user admin");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                info = getUserInfoLU(userId);
            }
            if (info != null && !info.isAdmin()) {
                info.flags ^= 2;
                writeUserLP(getUserDataLU(info.id));
            }
        }
    }

    public void evictCredentialEncryptionKey(int userId) {
        checkManageUsersPermission("evict CE key");
        IActivityManager am = ActivityManagerNative.getDefault();
        long identity = Binder.clearCallingIdentity();
        try {
            try {
                am.restartUserInBackground(userId);
                Binder.restoreCallingIdentity(identity);
            } catch (RemoteException re) {
                throw re.rethrowAsRuntimeException();
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public boolean isUserOfType(int userId, String userType) {
        checkManageUsersPermission("check user type");
        return userType != null && userType.equals(getUserTypeNoChecks(userId));
    }

    private String getUserTypeNoChecks(int userId) {
        String str;
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            str = userInfo != null ? userInfo.userType : null;
        }
        return str;
    }

    private UserTypeDetails getUserTypeDetailsNoChecks(int userId) {
        String typeStr = getUserTypeNoChecks(userId);
        if (typeStr != null) {
            return this.mUserTypes.get(typeStr);
        }
        return null;
    }

    private UserTypeDetails getUserTypeDetails(UserInfo userInfo) {
        String typeStr = userInfo != null ? userInfo.userType : null;
        if (typeStr != null) {
            return this.mUserTypes.get(typeStr);
        }
        return null;
    }

    public UserInfo getUserInfo(int userId) {
        UserInfo userInfoUserWithName;
        checkManageOrCreateUsersPermission("query user");
        synchronized (this.mUsersLock) {
            userInfoUserWithName = userWithName(getUserInfoLU(userId));
        }
        return userInfoUserWithName;
    }

    private UserInfo userWithName(UserInfo orig) {
        if (orig != null && orig.name == null && orig.id == 0) {
            UserInfo withName = new UserInfo(orig);
            withName.name = getOwnerName();
            return withName;
        }
        return orig;
    }

    boolean isUserTypeSubtypeOfFull(String userType) {
        UserTypeDetails userTypeDetails = this.mUserTypes.get(userType);
        return userTypeDetails != null && userTypeDetails.isFull();
    }

    boolean isUserTypeSubtypeOfProfile(String userType) {
        UserTypeDetails userTypeDetails = this.mUserTypes.get(userType);
        return userTypeDetails != null && userTypeDetails.isProfile();
    }

    boolean isUserTypeSubtypeOfSystem(String userType) {
        UserTypeDetails userTypeDetails = this.mUserTypes.get(userType);
        return userTypeDetails != null && userTypeDetails.isSystem();
    }

    public boolean hasBadge(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "hasBadge");
        UserTypeDetails userTypeDetails = getUserTypeDetailsNoChecks(userId);
        return userTypeDetails != null && userTypeDetails.hasBadge();
    }

    public int getUserBadgeLabelResId(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserBadgeLabelResId");
        UserInfo userInfo = getUserInfoNoChecks(userId);
        UserTypeDetails userTypeDetails = getUserTypeDetails(userInfo);
        if (userInfo == null || userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e(LOG_TAG, "Requested badge label for non-badged user " + userId);
            return 0;
        }
        int badgeIndex = userInfo.profileBadge;
        return userTypeDetails.getBadgeLabel(badgeIndex);
    }

    public int getUserBadgeColorResId(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserBadgeColorResId");
        UserInfo userInfo = getUserInfoNoChecks(userId);
        UserTypeDetails userTypeDetails = getUserTypeDetails(userInfo);
        if (userInfo == null || userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e(LOG_TAG, "Requested badge dark color for non-badged user " + userId);
            return 0;
        }
        return userTypeDetails.getBadgeColor(userInfo.profileBadge);
    }

    public int getUserBadgeDarkColorResId(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserBadgeDarkColorResId");
        UserInfo userInfo = getUserInfoNoChecks(userId);
        UserTypeDetails userTypeDetails = getUserTypeDetails(userInfo);
        if (userInfo == null || userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e(LOG_TAG, "Requested badge color for non-badged user " + userId);
            return 0;
        }
        return userTypeDetails.getDarkThemeBadgeColor(userInfo.profileBadge);
    }

    public int getUserIconBadgeResId(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserIconBadgeResId");
        UserTypeDetails userTypeDetails = getUserTypeDetailsNoChecks(userId);
        if (userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e(LOG_TAG, "Requested icon badge for non-badged user " + userId);
            return 0;
        }
        return userTypeDetails.getIconBadge();
    }

    public int getUserBadgeResId(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserBadgeResId");
        UserTypeDetails userTypeDetails = getUserTypeDetailsNoChecks(userId);
        if (userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e(LOG_TAG, "Requested badge for non-badged user " + userId);
            return 0;
        }
        return userTypeDetails.getBadgePlain();
    }

    public int getUserBadgeNoBackgroundResId(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserBadgeNoBackgroundResId");
        UserTypeDetails userTypeDetails = getUserTypeDetailsNoChecks(userId);
        if (userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e(LOG_TAG, "Requested badge (no background) for non-badged user " + userId);
            return 0;
        }
        return userTypeDetails.getBadgeNoBackground();
    }

    public boolean isProfile(int userId) {
        boolean z;
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "isProfile");
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            z = userInfo != null && userInfo.isProfile();
        }
        return z;
    }

    public boolean isManagedProfile(int userId) {
        boolean z;
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "isManagedProfile");
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            z = userInfo != null && userInfo.isManagedProfile();
        }
        return z;
    }

    public boolean isUserUnlockingOrUnlocked(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "isUserUnlockingOrUnlocked");
        return this.mLocalService.isUserUnlockingOrUnlocked(userId);
    }

    public boolean isUserUnlocked(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "isUserUnlocked");
        return this.mLocalService.isUserUnlocked(userId);
    }

    public boolean isUserRunning(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "isUserRunning");
        return this.mLocalService.isUserRunning(userId);
    }

    public String getUserName() {
        String str;
        if (!hasManageUsersOrPermission("android.permission.GET_ACCOUNTS_PRIVILEGED")) {
            throw new SecurityException("You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user name");
        }
        int userId = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mUsersLock) {
            UserInfo userInfo = userWithName(getUserInfoLU(userId));
            str = userInfo == null ? "" : userInfo.name;
        }
        return str;
    }

    public long getUserStartRealtime() {
        int userId = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mUsersLock) {
            UserData user = getUserDataLU(userId);
            if (user != null) {
                return user.startRealtime;
            }
            return 0L;
        }
    }

    public long getUserUnlockRealtime() {
        synchronized (this.mUsersLock) {
            UserData user = getUserDataLU(UserHandle.getUserId(Binder.getCallingUid()));
            if (user != null) {
                return user.unlockRealtime;
            }
            return 0L;
        }
    }

    private void checkManageOrInteractPermissionIfCallerInOtherProfileGroup(int userId, String name) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId != userId && !isSameProfileGroupNoChecks(callingUserId, userId) && !hasManageUsersPermission() && !hasPermissionGranted("android.permission.INTERACT_ACROSS_USERS", Binder.getCallingUid())) {
            throw new SecurityException("You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check " + name);
        }
    }

    public boolean isDemoUser(int userId) {
        boolean z;
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId != userId && !hasManageUsersPermission()) {
            throw new SecurityException("You need MANAGE_USERS permission to query if u=" + userId + " is a demo user");
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            z = userInfo != null && userInfo.isDemo();
        }
        return z;
    }

    public boolean isPreCreated(int userId) {
        boolean z;
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "isPreCreated");
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            z = userInfo != null && userInfo.preCreated;
        }
        return z;
    }

    public boolean isRestricted() {
        boolean zIsRestricted;
        synchronized (this.mUsersLock) {
            zIsRestricted = getUserInfoLU(UserHandle.getCallingUserId()).isRestricted();
        }
        return zIsRestricted;
    }

    public boolean canHaveRestrictedProfile(int userId) {
        checkManageUsersPermission("canHaveRestrictedProfile");
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            boolean z = false;
            if (userInfo != null && userInfo.canHaveProfile()) {
                if (!userInfo.isAdmin()) {
                    return false;
                }
                if (!this.mIsDeviceManaged && !this.mIsUserManaged.get(userId)) {
                    z = true;
                }
                return z;
            }
            return false;
        }
    }

    public boolean hasRestrictedProfiles() {
        checkManageUsersPermission("hasRestrictedProfiles");
        int callingUserId = UserHandle.getCallingUserId();
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo profile = this.mUsers.valueAt(i).info;
                if (callingUserId != profile.id && profile.restrictedProfileParentId == callingUserId) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserInfo getUserInfoLU(int userId) {
        UserData userData = this.mUsers.get(userId);
        if (userData != null && userData.info.partial && !this.mRemovingUserIds.get(userId)) {
            Slog.w(LOG_TAG, "getUserInfo: unknown user #" + userId);
            return null;
        }
        if (userData != null) {
            return userData.info;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserData getUserDataLU(int userId) {
        UserData userData = this.mUsers.get(userId);
        if (userData != null && userData.info.partial && !this.mRemovingUserIds.get(userId)) {
            return null;
        }
        return userData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserInfo getUserInfoNoChecks(int userId) {
        UserInfo userInfo;
        synchronized (this.mUsersLock) {
            UserData userData = this.mUsers.get(userId);
            userInfo = userData != null ? userData.info : null;
        }
        return userInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserData getUserDataNoChecks(int userId) {
        UserData userData;
        synchronized (this.mUsersLock) {
            userData = this.mUsers.get(userId);
        }
        return userData;
    }

    public boolean exists(int userId) {
        return this.mLocalService.exists(userId);
    }

    public void setUserName(int userId, String name) {
        checkManageUsersPermission("rename users");
        boolean changed = false;
        synchronized (this.mPackagesLock) {
            UserData userData = getUserDataNoChecks(userId);
            if (userData != null && !userData.info.partial) {
                if (name != null && !name.equals(userData.info.name)) {
                    userData.info.name = name;
                    writeUserLP(userData);
                    changed = true;
                }
                if (changed) {
                    long ident = Binder.clearCallingIdentity();
                    try {
                        sendUserInfoChangedBroadcast(userId);
                        return;
                    } finally {
                        Binder.restoreCallingIdentity(ident);
                    }
                }
                return;
            }
            Slog.w(LOG_TAG, "setUserName: unknown user #" + userId);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.UserManager$CheckedUserOperationException */
    public void setUserIcon(int userId, Bitmap bitmap) throws ServiceSpecificException {
        try {
            checkManageUsersPermission("update users");
            enforceUserRestriction("no_set_user_icon", userId, "Cannot set user icon");
            this.mLocalService.setUserIcon(userId, bitmap);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendUserInfoChangedBroadcast(int userId) {
        Intent changedIntent = new Intent("android.intent.action.USER_INFO_CHANGED");
        changedIntent.putExtra("android.intent.extra.user_handle", userId);
        changedIntent.addFlags(1073741824);
        this.mContext.sendBroadcastAsUser(changedIntent, UserHandle.ALL);
    }

    public ParcelFileDescriptor getUserIcon(int targetUserId) {
        if (!hasManageUsersOrPermission("android.permission.GET_ACCOUNTS_PRIVILEGED")) {
            throw new SecurityException("You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon");
        }
        synchronized (this.mPackagesLock) {
            UserInfo targetUserInfo = getUserInfoNoChecks(targetUserId);
            if (targetUserInfo != null && !targetUserInfo.partial) {
                int callingUserId = UserHandle.getCallingUserId();
                int callingGroupId = getUserInfoNoChecks(callingUserId).profileGroupId;
                int targetGroupId = targetUserInfo.profileGroupId;
                boolean sameGroup = callingGroupId != -10000 && callingGroupId == targetGroupId;
                if (callingUserId != targetUserId && !sameGroup) {
                    checkManageUsersPermission("get the icon of a user who is not related");
                }
                if (targetUserInfo.iconPath == null) {
                    return null;
                }
                String iconPath = targetUserInfo.iconPath;
                try {
                    return ParcelFileDescriptor.open(new File(iconPath), AudioFormat.EVRC);
                } catch (FileNotFoundException e) {
                    Slog.e(LOG_TAG, "Couldn't find icon file", e);
                    return null;
                }
            }
            Slog.w(LOG_TAG, "getUserIcon: unknown user #" + targetUserId);
            return null;
        }
    }

    public void makeInitialized(int userId) {
        checkManageUsersPermission("makeInitialized");
        boolean scheduleWriteUser = false;
        synchronized (this.mUsersLock) {
            UserData userData = this.mUsers.get(userId);
            if (userData != null && !userData.info.partial) {
                if ((userData.info.flags & 16) == 0) {
                    userData.info.flags |= 16;
                    scheduleWriteUser = true;
                }
                if (scheduleWriteUser) {
                    scheduleWriteUser(userData);
                    return;
                }
                return;
            }
            Slog.w(LOG_TAG, "makeInitialized: unknown user #" + userId);
        }
    }

    private void initDefaultGuestRestrictions() {
        synchronized (this.mGuestRestrictions) {
            if (this.mGuestRestrictions.isEmpty()) {
                UserTypeDetails guestType = this.mUserTypes.get("android.os.usertype.full.GUEST");
                if (guestType == null) {
                    Slog.wtf(LOG_TAG, "Can't set default guest restrictions: type doesn't exist.");
                    return;
                }
                guestType.addDefaultRestrictionsTo(this.mGuestRestrictions);
            }
        }
    }

    public Bundle getDefaultGuestRestrictions() {
        Bundle bundle;
        checkManageUsersPermission("getDefaultGuestRestrictions");
        synchronized (this.mGuestRestrictions) {
            bundle = new Bundle(this.mGuestRestrictions);
        }
        return bundle;
    }

    public void setDefaultGuestRestrictions(Bundle restrictions) {
        checkManageUsersPermission("setDefaultGuestRestrictions");
        synchronized (this.mGuestRestrictions) {
            this.mGuestRestrictions.clear();
            this.mGuestRestrictions.putAll(restrictions);
        }
        synchronized (this.mPackagesLock) {
            writeUserListLP();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDevicePolicyUserRestrictionsInner(int originatingUserId, Bundle global, RestrictionsSet local, boolean isDeviceOwner) {
        boolean globalChanged;
        List<Integer> updatedLocalTargetUserIds;
        boolean localChanged;
        synchronized (this.mRestrictionsLock) {
            globalChanged = this.mDevicePolicyGlobalUserRestrictions.updateRestrictions(originatingUserId, global);
            updatedLocalTargetUserIds = getUpdatedTargetUserIdsFromLocalRestrictions(originatingUserId, local);
            localChanged = updateLocalRestrictionsForTargetUsersLR(originatingUserId, local, updatedLocalTargetUserIds);
            if (isDeviceOwner) {
                this.mDeviceOwnerUserId = originatingUserId;
            } else if (this.mDeviceOwnerUserId == originatingUserId) {
                this.mDeviceOwnerUserId = -10000;
            }
        }
        synchronized (this.mPackagesLock) {
            if (globalChanged || localChanged) {
                if (updatedLocalTargetUserIds.size() == 1 && updatedLocalTargetUserIds.contains(Integer.valueOf(originatingUserId))) {
                    writeUserLP(getUserDataNoChecks(originatingUserId));
                } else {
                    if (globalChanged) {
                        writeUserLP(getUserDataNoChecks(originatingUserId));
                    }
                    if (localChanged) {
                        Iterator<Integer> it = updatedLocalTargetUserIds.iterator();
                        while (it.hasNext()) {
                            int targetUserId = it.next().intValue();
                            writeAllTargetUsersLP(targetUserId);
                        }
                    }
                }
            }
        }
        synchronized (this.mRestrictionsLock) {
            try {
                if (globalChanged) {
                    applyUserRestrictionsForAllUsersLR();
                } else if (localChanged) {
                    Iterator<Integer> it2 = updatedLocalTargetUserIds.iterator();
                    while (it2.hasNext()) {
                        int targetUserId2 = it2.next().intValue();
                        applyUserRestrictionsLR(targetUserId2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private List<Integer> getUpdatedTargetUserIdsFromLocalRestrictions(int originatingUserId, RestrictionsSet local) {
        List<Integer> targetUserIds = new ArrayList<>();
        for (int i = 0; i < local.size(); i++) {
            targetUserIds.add(Integer.valueOf(local.keyAt(i)));
        }
        for (int i2 = 0; i2 < this.mDevicePolicyLocalUserRestrictions.size(); i2++) {
            int targetUserId = this.mDevicePolicyLocalUserRestrictions.keyAt(i2);
            RestrictionsSet restrictionsSet = this.mDevicePolicyLocalUserRestrictions.valueAt(i2);
            if (!local.containsKey(targetUserId) && restrictionsSet.containsKey(originatingUserId)) {
                targetUserIds.add(Integer.valueOf(targetUserId));
            }
        }
        return targetUserIds;
    }

    private boolean updateLocalRestrictionsForTargetUsersLR(int originatingUserId, RestrictionsSet local, List<Integer> updatedTargetUserIds) {
        boolean changed = false;
        Iterator<Integer> it = updatedTargetUserIds.iterator();
        while (it.hasNext()) {
            int targetUserId = it.next().intValue();
            Bundle restrictions = local.getRestrictions(targetUserId);
            if (restrictions == null) {
                restrictions = new Bundle();
            }
            if (getDevicePolicyLocalRestrictionsForTargetUserLR(targetUserId).updateRestrictions(originatingUserId, restrictions)) {
                changed = true;
            }
        }
        return changed;
    }

    private RestrictionsSet getDevicePolicyLocalRestrictionsForTargetUserLR(int targetUserId) {
        RestrictionsSet result = this.mDevicePolicyLocalUserRestrictions.get(targetUserId);
        if (result == null) {
            RestrictionsSet result2 = new RestrictionsSet();
            this.mDevicePolicyLocalUserRestrictions.put(targetUserId, result2);
            return result2;
        }
        return result;
    }

    private Bundle computeEffectiveUserRestrictionsLR(int userId) {
        Bundle baseRestrictions = UserRestrictionsUtils.nonNull(this.mBaseUserRestrictions.getRestrictions(userId));
        Bundle global = this.mDevicePolicyGlobalUserRestrictions.mergeAll();
        RestrictionsSet local = getDevicePolicyLocalRestrictionsForTargetUserLR(userId);
        if (UserRestrictionsUtils.isEmpty(global) && local.isEmpty()) {
            return baseRestrictions;
        }
        Bundle effective = UserRestrictionsUtils.clone(baseRestrictions);
        UserRestrictionsUtils.merge(effective, global);
        UserRestrictionsUtils.merge(effective, local.mergeAll());
        return effective;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateEffectiveUserRestrictionsLR(int userId) {
        this.mCachedEffectiveUserRestrictions.remove(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle getEffectiveUserRestrictions(int userId) {
        Bundle restrictions;
        synchronized (this.mRestrictionsLock) {
            restrictions = this.mCachedEffectiveUserRestrictions.getRestrictions(userId);
            if (restrictions == null) {
                restrictions = computeEffectiveUserRestrictionsLR(userId);
                this.mCachedEffectiveUserRestrictions.updateRestrictions(userId, restrictions);
            }
        }
        return restrictions;
    }

    public boolean hasUserRestriction(String restrictionKey, int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "hasUserRestriction");
        return this.mLocalService.hasUserRestriction(restrictionKey, userId);
    }

    public boolean hasUserRestrictionOnAnyUser(String restrictionKey) {
        if (!UserRestrictionsUtils.isValidRestriction(restrictionKey)) {
            return false;
        }
        List<UserInfo> users = getUsers(true);
        for (int i = 0; i < users.size(); i++) {
            int userId = users.get(i).id;
            Bundle restrictions = getEffectiveUserRestrictions(userId);
            if (restrictions != null && restrictions.getBoolean(restrictionKey)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSettingRestrictedForUser(String setting, int userId, String value, int callingUid) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Non-system caller");
        }
        return UserRestrictionsUtils.isSettingRestrictedForUser(this.mContext, setting, userId, value, callingUid);
    }

    public void addUserRestrictionsListener(final IUserRestrictionsListener listener) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Non-system caller");
        }
        this.mLocalService.addUserRestrictionsListener(new UserManagerInternal.UserRestrictionsListener() { // from class: com.android.server.pm.-$$Lambda$UserManagerService$s1AxethOTPU7NQ5LXxyP4etLk7E
            @Override // android.os.UserManagerInternal.UserRestrictionsListener
            public final void onUserRestrictionsChanged(int i, Bundle bundle, Bundle bundle2) {
                UserManagerService.lambda$addUserRestrictionsListener$0(listener, i, bundle, bundle2);
            }
        });
    }

    static /* synthetic */ void lambda$addUserRestrictionsListener$0(IUserRestrictionsListener listener, int userId, Bundle newRestrict, Bundle prevRestrict) {
        try {
            listener.onUserRestrictionsChanged(userId, newRestrict, prevRestrict);
        } catch (RemoteException re) {
            Slog.e("IUserRestrictionsListener", "Unable to invoke listener: " + re.getMessage());
        }
    }

    public int getUserRestrictionSource(String restrictionKey, int userId) {
        List<UserManager.EnforcingUser> enforcingUsers = getUserRestrictionSources(restrictionKey, userId);
        int result = 0;
        for (int i = enforcingUsers.size() - 1; i >= 0; i--) {
            result |= enforcingUsers.get(i).getUserRestrictionSource();
        }
        return result;
    }

    public List<UserManager.EnforcingUser> getUserRestrictionSources(String restrictionKey, int userId) {
        checkManageUsersPermission("getUserRestrictionSource");
        if (!hasUserRestriction(restrictionKey, userId)) {
            return Collections.emptyList();
        }
        List<UserManager.EnforcingUser> result = new ArrayList<>();
        if (hasBaseUserRestriction(restrictionKey, userId)) {
            result.add(new UserManager.EnforcingUser(-10000, 1));
        }
        synchronized (this.mRestrictionsLock) {
            result.addAll(getDevicePolicyLocalRestrictionsForTargetUserLR(userId).getEnforcingUsers(restrictionKey, this.mDeviceOwnerUserId));
            result.addAll(this.mDevicePolicyGlobalUserRestrictions.getEnforcingUsers(restrictionKey, this.mDeviceOwnerUserId));
        }
        return result;
    }

    public Bundle getUserRestrictions(int userId) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(userId, "getUserRestrictions");
        return UserRestrictionsUtils.clone(getEffectiveUserRestrictions(userId));
    }

    public boolean hasBaseUserRestriction(String restrictionKey, int userId) {
        checkManageOrCreateUsersPermission("hasBaseUserRestriction");
        boolean z = false;
        if (!UserRestrictionsUtils.isValidRestriction(restrictionKey)) {
            return false;
        }
        synchronized (this.mRestrictionsLock) {
            Bundle bundle = this.mBaseUserRestrictions.getRestrictions(userId);
            if (bundle != null && bundle.getBoolean(restrictionKey, false)) {
                z = true;
            }
        }
        return z;
    }

    public void setUserRestriction(String key, boolean value, int userId) {
        checkManageUsersPermission("setUserRestriction");
        if (!UserRestrictionsUtils.isValidRestriction(key)) {
            return;
        }
        synchronized (this.mRestrictionsLock) {
            Bundle newRestrictions = UserRestrictionsUtils.clone(this.mBaseUserRestrictions.getRestrictions(userId));
            newRestrictions.putBoolean(key, value);
            updateUserRestrictionsInternalLR(newRestrictions, userId);
        }
    }

    private void updateUserRestrictionsInternalLR(Bundle newBaseRestrictions, final int userId) {
        Bundle prevAppliedRestrictions = UserRestrictionsUtils.nonNull(this.mAppliedUserRestrictions.getRestrictions(userId));
        if (newBaseRestrictions != null) {
            Bundle prevBaseRestrictions = this.mBaseUserRestrictions.getRestrictions(userId);
            Preconditions.checkState(prevBaseRestrictions != newBaseRestrictions);
            Preconditions.checkState(this.mCachedEffectiveUserRestrictions.getRestrictions(userId) != newBaseRestrictions);
            if (this.mBaseUserRestrictions.updateRestrictions(userId, newBaseRestrictions)) {
                scheduleWriteUser(getUserDataNoChecks(userId));
            }
        }
        final Bundle effective = computeEffectiveUserRestrictionsLR(userId);
        this.mCachedEffectiveUserRestrictions.updateRestrictions(userId, effective);
        if (this.mAppOpsService != null) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        UserManagerService.this.mAppOpsService.setUserRestrictions(effective, UserManagerService.mUserRestriconToken, userId);
                    } catch (RemoteException e) {
                        Slog.w(UserManagerService.LOG_TAG, "Unable to notify AppOpsService of UserRestrictions");
                    }
                }
            });
        }
        propagateUserRestrictionsLR(userId, effective, prevAppliedRestrictions);
        this.mAppliedUserRestrictions.updateRestrictions(userId, new Bundle(effective));
    }

    private void propagateUserRestrictionsLR(final int userId, Bundle newRestrictions, Bundle prevRestrictions) {
        if (UserRestrictionsUtils.areEqual(newRestrictions, prevRestrictions)) {
            return;
        }
        final Bundle newRestrictionsFinal = new Bundle(newRestrictions);
        final Bundle prevRestrictionsFinal = new Bundle(prevRestrictions);
        this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService.3
            @Override // java.lang.Runnable
            public void run() {
                UserManagerInternal.UserRestrictionsListener[] listeners;
                UserRestrictionsUtils.applyUserRestrictions(UserManagerService.this.mContext, userId, newRestrictionsFinal, prevRestrictionsFinal);
                synchronized (UserManagerService.this.mUserRestrictionsListeners) {
                    listeners = new UserManagerInternal.UserRestrictionsListener[UserManagerService.this.mUserRestrictionsListeners.size()];
                    UserManagerService.this.mUserRestrictionsListeners.toArray(listeners);
                }
                for (UserManagerInternal.UserRestrictionsListener userRestrictionsListener : listeners) {
                    userRestrictionsListener.onUserRestrictionsChanged(userId, newRestrictionsFinal, prevRestrictionsFinal);
                }
                Intent broadcast = new Intent("android.os.action.USER_RESTRICTIONS_CHANGED").setFlags(1073741824);
                UserManagerService.this.mContext.sendBroadcastAsUser(broadcast, UserHandle.of(userId));
            }
        });
    }

    void applyUserRestrictionsLR(int userId) {
        updateUserRestrictionsInternalLR(null, userId);
    }

    void applyUserRestrictionsForAllUsersLR() {
        this.mCachedEffectiveUserRestrictions.removeAllRestrictions();
        Runnable r = new Runnable() { // from class: com.android.server.pm.UserManagerService.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int[] runningUsers = ActivityManager.getService().getRunningUserIds();
                    synchronized (UserManagerService.this.mRestrictionsLock) {
                        for (int i : runningUsers) {
                            UserManagerService.this.applyUserRestrictionsLR(i);
                        }
                    }
                } catch (RemoteException e) {
                    Slog.w(UserManagerService.LOG_TAG, "Unable to access ActivityManagerService");
                }
            }
        };
        this.mHandler.post(r);
    }

    private boolean isUserLimitReached() {
        int count;
        synchronized (this.mUsersLock) {
            count = getAliveUsersExcludingGuestsCountLU();
        }
        return count >= UserManager.getMaxSupportedUsers();
    }

    private boolean canAddMoreUsersOfType(UserTypeDetails userTypeDetails) {
        int max = userTypeDetails.getMaxAllowed();
        return max == -1 || getNumberOfUsersOfType(userTypeDetails.getName()) < max;
    }

    private int getNumberOfUsersOfType(String userType) {
        int count = 0;
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo user = this.mUsers.valueAt(i).info;
                if (user.userType.equals(userType) && !user.guestToRemove && !this.mRemovingUserIds.get(user.id) && !user.preCreated) {
                    count++;
                }
            }
        }
        return count;
    }

    public boolean canAddMoreManagedProfiles(int userId, boolean allowedToRemoveOne) {
        return canAddMoreProfilesToUser("android.os.usertype.profile.MANAGED", userId, allowedToRemoveOne);
    }

    public boolean canAddMoreProfilesToUser(String userType, int userId, boolean allowedToRemoveOne) {
        checkManageUsersPermission("check if more profiles can be added.");
        UserTypeDetails type = this.mUserTypes.get(userType);
        if (type == null) {
            return false;
        }
        boolean isManagedProfile = type.isManagedProfile();
        if (isManagedProfile && !this.mContext.getPackageManager().hasSystemFeature("android.software.managed_users")) {
            return false;
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            if (userInfo != null && userInfo.canHaveProfile()) {
                int maxUsersOfType = getMaxUsersOfTypePerParent(type);
                if (maxUsersOfType != -1) {
                    int userTypeCount = getProfileIds(userId, userType, false).length;
                    int profilesRemovedCount = (userTypeCount <= 0 || !allowedToRemoveOne) ? 0 : 1;
                    if (userTypeCount - profilesRemovedCount >= maxUsersOfType) {
                        return false;
                    }
                    if (isManagedProfile) {
                        int usersCountAfterRemoving = getAliveUsersExcludingGuestsCountLU() - profilesRemovedCount;
                        return usersCountAfterRemoving == 1 || usersCountAfterRemoving < UserManager.getMaxSupportedUsers();
                    }
                }
                return true;
            }
            return false;
        }
    }

    private int getAliveUsersExcludingGuestsCountLU() {
        int aliveUserCount = 0;
        int totalUserCount = this.mUsers.size();
        for (int i = 0; i < totalUserCount; i++) {
            UserInfo user = this.mUsers.valueAt(i).info;
            if (!this.mRemovingUserIds.get(user.id) && !user.isGuest() && !user.preCreated) {
                aliveUserCount++;
            }
        }
        return aliveUserCount;
    }

    private static final void checkManageUserAndAcrossUsersFullPermission(String message) {
        int uid = Binder.getCallingUid();
        if (uid == 1000 || uid == 0) {
            return;
        }
        if (hasPermissionGranted("android.permission.MANAGE_USERS", uid) && hasPermissionGranted("android.permission.INTERACT_ACROSS_USERS_FULL", uid)) {
            return;
        }
        throw new SecurityException("You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: " + message);
    }

    private static boolean hasPermissionGranted(String permission, int uid) {
        return ActivityManager.checkComponentPermission(permission, uid, -1, true) == 0;
    }

    private static final void checkManageUsersPermission(String message) {
        if (!hasManageUsersPermission()) {
            throw new SecurityException("You need MANAGE_USERS permission to: " + message);
        }
    }

    private static final void checkManageOrCreateUsersPermission(String message) {
        if (!hasManageOrCreateUsersPermission()) {
            throw new SecurityException("You either need MANAGE_USERS or CREATE_USERS permission to: " + message);
        }
    }

    private static final void checkManageOrCreateUsersPermission(int creationFlags) {
        if ((creationFlags & (-813)) == 0) {
            if (!hasManageOrCreateUsersPermission()) {
                throw new SecurityException("You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: " + creationFlags);
            }
            return;
        }
        if (!hasManageUsersPermission()) {
            throw new SecurityException("You need MANAGE_USERS permission to create an user  with flags: " + creationFlags);
        }
    }

    private static final boolean hasManageUsersPermission() {
        int callingUid = Binder.getCallingUid();
        return UserHandle.isSameApp(callingUid, 1000) || callingUid == 0 || hasPermissionGranted("android.permission.MANAGE_USERS", callingUid);
    }

    private static final boolean hasManageUsersOrPermission(String alternativePermission) {
        int callingUid = Binder.getCallingUid();
        return UserHandle.isSameApp(callingUid, 1000) || callingUid == 0 || hasPermissionGranted("android.permission.MANAGE_USERS", callingUid) || hasPermissionGranted(alternativePermission, callingUid);
    }

    private static final boolean hasManageOrCreateUsersPermission() {
        return hasManageUsersOrPermission("android.permission.CREATE_USERS");
    }

    private static void checkSystemOrRoot(String message) {
        int uid = Binder.getCallingUid();
        if (!UserHandle.isSameApp(uid, 1000) && uid != 0) {
            throw new SecurityException("Only system may: " + message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeBitmapLP(UserInfo info, Bitmap bitmap) {
        try {
            File dir = new File(this.mUsersDir, Integer.toString(info.id));
            File file = new File(dir, USER_PHOTO_FILENAME);
            File tmp = new File(dir, USER_PHOTO_FILENAME_TMP);
            if (!dir.exists()) {
                dir.mkdir();
                FileUtils.setPermissions(dir.getPath(), 505, -1, -1);
            }
            Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
            FileOutputStream os = new FileOutputStream(tmp);
            if (bitmap.compress(compressFormat, 100, os) && tmp.renameTo(file) && SELinux.restorecon(file)) {
                info.iconPath = file.getAbsolutePath();
            }
            try {
                os.close();
            } catch (IOException e) {
            }
            tmp.delete();
        } catch (FileNotFoundException e2) {
            Slog.w(LOG_TAG, "Error setting photo for user ", e2);
        }
    }

    public int[] getUserIds() {
        int[] iArr;
        synchronized (this.mUsersLock) {
            iArr = this.mUserIds;
        }
        return iArr;
    }

    public int[] getUserIdsIncludingPreCreated() {
        int[] iArr;
        synchronized (this.mUsersLock) {
            iArr = this.mUserIdsIncludingPreCreated;
        }
        return iArr;
    }

    private void readUserListLP() {
        int type;
        if (!this.mUserListFile.exists()) {
            fallbackToSingleUserLP();
            return;
        }
        FileInputStream fis = null;
        AtomicFile userListFile = new AtomicFile(this.mUserListFile);
        try {
            try {
                fis = userListFile.openRead();
                XmlPullParser parser = Xml.newPullParser();
                parser.setInput(fis, StandardCharsets.UTF_8.name());
                do {
                    type = parser.next();
                    if (type == 2) {
                        break;
                    }
                } while (type != 1);
                if (type != 2) {
                    Slog.e(LOG_TAG, "Unable to read user list");
                    fallbackToSingleUserLP();
                    IoUtils.closeQuietly(fis);
                    return;
                }
                this.mNextSerialNumber = -1;
                if (parser.getName().equals("users")) {
                    String lastSerialNumber = parser.getAttributeValue(null, ATTR_NEXT_SERIAL_NO);
                    if (lastSerialNumber != null) {
                        this.mNextSerialNumber = Integer.parseInt(lastSerialNumber);
                    }
                    String versionNumber = parser.getAttributeValue(null, ATTR_USER_VERSION);
                    if (versionNumber != null) {
                        this.mUserVersion = Integer.parseInt(versionNumber);
                    }
                }
                Bundle oldDevicePolicyGlobalUserRestrictions = null;
                while (true) {
                    int type2 = parser.next();
                    if (type2 == 1) {
                        break;
                    }
                    if (type2 == 2) {
                        String name = parser.getName();
                        if (name.equals(TAG_USER)) {
                            String id = parser.getAttributeValue(null, ATTR_ID);
                            UserData userData = readUserLP(Integer.parseInt(id));
                            if (userData != null) {
                                synchronized (this.mUsersLock) {
                                    this.mUsers.put(userData.info.id, userData);
                                    if (this.mNextSerialNumber < 0 || this.mNextSerialNumber <= userData.info.id) {
                                        this.mNextSerialNumber = userData.info.id + 1;
                                    }
                                }
                            }
                        } else if (name.equals(TAG_GUEST_RESTRICTIONS)) {
                            while (true) {
                                int type3 = parser.next();
                                if (type3 == 1 || type3 == 3) {
                                    break;
                                }
                                if (type3 == 2) {
                                    if (!parser.getName().equals(TAG_RESTRICTIONS)) {
                                        break;
                                    }
                                    synchronized (this.mGuestRestrictions) {
                                        UserRestrictionsUtils.readRestrictions(parser, this.mGuestRestrictions);
                                    }
                                    break;
                                }
                            }
                        } else if (name.equals(TAG_DEVICE_OWNER_USER_ID) || name.equals(TAG_GLOBAL_RESTRICTION_OWNER_ID)) {
                            String ownerUserId = parser.getAttributeValue(null, ATTR_ID);
                            if (ownerUserId != null) {
                                this.mDeviceOwnerUserId = Integer.parseInt(ownerUserId);
                            }
                        } else if (name.equals(TAG_DEVICE_POLICY_RESTRICTIONS)) {
                            oldDevicePolicyGlobalUserRestrictions = UserRestrictionsUtils.readRestrictions(parser);
                        }
                    }
                }
                updateUserIds();
                upgradeIfNecessaryLP(oldDevicePolicyGlobalUserRestrictions);
                IoUtils.closeQuietly(fis);
            } catch (IOException | XmlPullParserException e) {
                fallbackToSingleUserLP();
            }
        } catch (Throwable th) {
            IoUtils.closeQuietly((AutoCloseable) null);
            throw th;
        }
    }

    private void upgradeIfNecessaryLP(Bundle oldGlobalUserRestrictions) {
        upgradeIfNecessaryLP(oldGlobalUserRestrictions, this.mUserVersion);
    }

    void upgradeIfNecessaryLP(Bundle oldGlobalUserRestrictions, int userVersion) {
        Set<Integer> userIdsToWrite = new ArraySet<>();
        int originalVersion = this.mUserVersion;
        if (userVersion < 1) {
            UserData userData = getUserDataNoChecks(0);
            if ("Primary".equals(userData.info.name)) {
                userData.info.name = this.mContext.getResources().getString(R.string.kg_wrong_pattern);
                userIdsToWrite.add(Integer.valueOf(userData.info.id));
            }
            userVersion = 1;
        }
        if (userVersion < 2) {
            UserData userData2 = getUserDataNoChecks(0);
            if ((userData2.info.flags & 16) == 0) {
                userData2.info.flags |= 16;
                userIdsToWrite.add(Integer.valueOf(userData2.info.id));
            }
            userVersion = 2;
        }
        if (userVersion < 4) {
            userVersion = 4;
        }
        if (userVersion < 5) {
            initDefaultGuestRestrictions();
            userVersion = 5;
        }
        if (userVersion < 6) {
            boolean splitSystemUser = UserManager.isSplitSystemUser();
            synchronized (this.mUsersLock) {
                for (int i = 0; i < this.mUsers.size(); i++) {
                    UserData userData3 = this.mUsers.valueAt(i);
                    if (!splitSystemUser && userData3.info.isRestricted() && userData3.info.restrictedProfileParentId == -10000) {
                        userData3.info.restrictedProfileParentId = 0;
                        userIdsToWrite.add(Integer.valueOf(userData3.info.id));
                    }
                }
            }
            userVersion = 6;
        }
        if (userVersion < 7) {
            synchronized (this.mRestrictionsLock) {
                if (!UserRestrictionsUtils.isEmpty(oldGlobalUserRestrictions) && this.mDeviceOwnerUserId != -10000) {
                    this.mDevicePolicyGlobalUserRestrictions.updateRestrictions(this.mDeviceOwnerUserId, oldGlobalUserRestrictions);
                }
                UserRestrictionsUtils.moveRestriction("ensure_verify_apps", this.mDevicePolicyLocalUserRestrictions, this.mDevicePolicyGlobalUserRestrictions);
            }
            UserInfo currentGuestUser = findCurrentGuestUser();
            if (currentGuestUser != null && !hasUserRestriction("no_config_wifi", currentGuestUser.id)) {
                setUserRestriction("no_config_wifi", true, currentGuestUser.id);
            }
            userVersion = 7;
        }
        if (userVersion < 8) {
            synchronized (this.mUsersLock) {
                UserData userData4 = this.mUsers.get(0);
                userData4.info.flags |= 2048;
                if (!UserManager.isHeadlessSystemUserMode()) {
                    userData4.info.flags |= 1024;
                }
                userIdsToWrite.add(Integer.valueOf(userData4.info.id));
                for (int i2 = 1; i2 < this.mUsers.size(); i2++) {
                    UserData userData5 = this.mUsers.valueAt(i2);
                    if ((userData5.info.flags & 32) == 0) {
                        userData5.info.flags |= 1024;
                        userIdsToWrite.add(Integer.valueOf(userData5.info.id));
                    }
                }
            }
            userVersion = 8;
        }
        if (userVersion < 9) {
            synchronized (this.mUsersLock) {
                for (int i3 = 0; i3 < this.mUsers.size(); i3++) {
                    UserData userData6 = this.mUsers.valueAt(i3);
                    int flags = userData6.info.flags;
                    if ((flags & 2048) != 0) {
                        if ((flags & 1024) != 0) {
                            userData6.info.userType = "android.os.usertype.full.SYSTEM";
                        } else {
                            userData6.info.userType = "android.os.usertype.system.HEADLESS";
                        }
                    } else {
                        try {
                            userData6.info.userType = UserInfo.getDefaultUserType(flags);
                        } catch (IllegalArgumentException e) {
                            throw new IllegalStateException("Cannot upgrade user with flags " + Integer.toHexString(flags) + " because it doesn't correspond to a valid user type.", e);
                        }
                    }
                    UserTypeDetails userTypeDetails = this.mUserTypes.get(userData6.info.userType);
                    if (userTypeDetails == null) {
                        throw new IllegalStateException("Cannot upgrade user with flags " + Integer.toHexString(flags) + " because " + userData6.info.userType + " isn't defined on this device!");
                    }
                    userData6.info.flags |= userTypeDetails.getDefaultUserInfoFlags();
                    userIdsToWrite.add(Integer.valueOf(userData6.info.id));
                }
            }
            userVersion = 9;
        }
        if (userVersion < 9) {
            Slog.w(LOG_TAG, "User version " + this.mUserVersion + " didn't upgrade as expected to 9");
            return;
        }
        this.mUserVersion = userVersion;
        if (originalVersion < userVersion) {
            Iterator<Integer> it = userIdsToWrite.iterator();
            while (it.hasNext()) {
                int userId = it.next().intValue();
                UserData userData7 = getUserDataNoChecks(userId);
                if (userData7 != null) {
                    writeUserLP(userData7);
                }
            }
            writeUserListLP();
        }
    }

    private void fallbackToSingleUserLP() {
        String systemUserType = UserManager.isHeadlessSystemUserMode() ? "android.os.usertype.system.HEADLESS" : "android.os.usertype.full.SYSTEM";
        int flags = 2067 | this.mUserTypes.get(systemUserType).getDefaultUserInfoFlags();
        UserInfo system = new UserInfo(0, (String) null, (String) null, flags, systemUserType);
        UserData userData = putUserInfo(system);
        this.mNextSerialNumber = 10;
        this.mUserVersion = 9;
        Bundle restrictions = new Bundle();
        try {
            String[] defaultFirstUserRestrictions = this.mContext.getResources().getStringArray(R.array.config_cameraPrivacyLightColors);
            for (String userRestriction : defaultFirstUserRestrictions) {
                if (UserRestrictionsUtils.isValidRestriction(userRestriction)) {
                    restrictions.putBoolean(userRestriction, true);
                }
            }
        } catch (Resources.NotFoundException e) {
            Slog.e(LOG_TAG, "Couldn't find resource: config_defaultFirstUserRestrictions", e);
        }
        if (!restrictions.isEmpty()) {
            synchronized (this.mRestrictionsLock) {
                this.mBaseUserRestrictions.updateRestrictions(0, restrictions);
            }
        }
        updateUserIds();
        initDefaultGuestRestrictions();
        writeUserLP(userData);
        writeUserListLP();
    }

    private String getOwnerName() {
        return this.mContext.getResources().getString(R.string.kg_wrong_pattern);
    }

    private void scheduleWriteUser(UserData userData) {
        if (!this.mHandler.hasMessages(1, userData)) {
            Message msg = this.mHandler.obtainMessage(1, userData);
            this.mHandler.sendMessageDelayed(msg, 2000L);
        }
    }

    private void writeAllTargetUsersLP(int originatingUserId) {
        for (int i = 0; i < this.mDevicePolicyLocalUserRestrictions.size(); i++) {
            int targetUserId = this.mDevicePolicyLocalUserRestrictions.keyAt(i);
            RestrictionsSet restrictionsSet = this.mDevicePolicyLocalUserRestrictions.valueAt(i);
            if (restrictionsSet.containsKey(originatingUserId)) {
                writeUserLP(getUserDataNoChecks(targetUserId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeUserLP(UserData userData) {
        FileOutputStream fos = null;
        AtomicFile userFile = new AtomicFile(new File(this.mUsersDir, userData.info.id + XML_SUFFIX));
        try {
            fos = userFile.startWrite();
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            writeUserLP(userData, bos);
            userFile.finishWrite(fos);
        } catch (Exception ioe) {
            Slog.e(LOG_TAG, "Error writing user info " + userData.info.id, ioe);
            userFile.failWrite(fos);
        }
    }

    void writeUserLP(UserData userData, OutputStream os) throws XmlPullParserException, IOException {
        XmlSerializer serializer = new FastXmlSerializer();
        serializer.setOutput(os, StandardCharsets.UTF_8.name());
        serializer.startDocument(null, true);
        serializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        UserInfo userInfo = userData.info;
        serializer.startTag(null, TAG_USER);
        serializer.attribute(null, ATTR_ID, Integer.toString(userInfo.id));
        serializer.attribute(null, ATTR_SERIAL_NO, Integer.toString(userInfo.serialNumber));
        serializer.attribute(null, ATTR_FLAGS, Integer.toString(userInfo.flags));
        serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, userInfo.userType);
        serializer.attribute(null, ATTR_CREATION_TIME, Long.toString(userInfo.creationTime));
        serializer.attribute(null, ATTR_LAST_LOGGED_IN_TIME, Long.toString(userInfo.lastLoggedInTime));
        if (userInfo.lastLoggedInFingerprint != null) {
            serializer.attribute(null, ATTR_LAST_LOGGED_IN_FINGERPRINT, userInfo.lastLoggedInFingerprint);
        }
        if (userInfo.iconPath != null) {
            serializer.attribute(null, ATTR_ICON_PATH, userInfo.iconPath);
        }
        if (userInfo.partial) {
            serializer.attribute(null, ATTR_PARTIAL, "true");
        }
        if (userInfo.preCreated) {
            serializer.attribute(null, ATTR_PRE_CREATED, "true");
        }
        if (userInfo.convertedFromPreCreated) {
            serializer.attribute(null, ATTR_CONVERTED_FROM_PRE_CREATED, "true");
        }
        if (userInfo.guestToRemove) {
            serializer.attribute(null, ATTR_GUEST_TO_REMOVE, "true");
        }
        if (userInfo.profileGroupId != -10000) {
            serializer.attribute(null, ATTR_PROFILE_GROUP_ID, Integer.toString(userInfo.profileGroupId));
        }
        serializer.attribute(null, ATTR_PROFILE_BADGE, Integer.toString(userInfo.profileBadge));
        if (userInfo.restrictedProfileParentId != -10000) {
            serializer.attribute(null, ATTR_RESTRICTED_PROFILE_PARENT_ID, Integer.toString(userInfo.restrictedProfileParentId));
        }
        if (userData.persistSeedData) {
            if (userData.seedAccountName != null) {
                serializer.attribute(null, ATTR_SEED_ACCOUNT_NAME, userData.seedAccountName);
            }
            if (userData.seedAccountType != null) {
                serializer.attribute(null, ATTR_SEED_ACCOUNT_TYPE, userData.seedAccountType);
            }
        }
        if (userInfo.name != null) {
            serializer.startTag(null, "name");
            serializer.text(userInfo.name);
            serializer.endTag(null, "name");
        }
        synchronized (this.mRestrictionsLock) {
            UserRestrictionsUtils.writeRestrictions(serializer, this.mBaseUserRestrictions.getRestrictions(userInfo.id), TAG_RESTRICTIONS);
            getDevicePolicyLocalRestrictionsForTargetUserLR(userInfo.id).writeRestrictions(serializer, TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS);
            UserRestrictionsUtils.writeRestrictions(serializer, this.mDevicePolicyGlobalUserRestrictions.getRestrictions(userInfo.id), TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS);
        }
        if (userData.account != null) {
            serializer.startTag(null, TAG_ACCOUNT);
            serializer.text(userData.account);
            serializer.endTag(null, TAG_ACCOUNT);
        }
        if (userData.persistSeedData && userData.seedAccountOptions != null) {
            serializer.startTag(null, TAG_SEED_ACCOUNT_OPTIONS);
            userData.seedAccountOptions.saveToXml(serializer);
            serializer.endTag(null, TAG_SEED_ACCOUNT_OPTIONS);
        }
        if (userData.getLastRequestQuietModeEnabledMillis() != 0) {
            serializer.startTag(null, TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL);
            serializer.text(String.valueOf(userData.getLastRequestQuietModeEnabledMillis()));
            serializer.endTag(null, TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL);
        }
        serializer.startTag(null, TAG_IGNORE_PREPARE_STORAGE_ERRORS);
        serializer.text(String.valueOf(userData.getIgnorePrepareStorageErrors()));
        serializer.endTag(null, TAG_IGNORE_PREPARE_STORAGE_ERRORS);
        serializer.endTag(null, TAG_USER);
        serializer.endDocument();
    }

    private void writeUserListLP() {
        int[] userIdsToWrite;
        FileOutputStream fos = null;
        AtomicFile userListFile = new AtomicFile(this.mUserListFile);
        try {
            fos = userListFile.startWrite();
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(bos, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            fastXmlSerializer.startTag(null, "users");
            fastXmlSerializer.attribute(null, ATTR_NEXT_SERIAL_NO, Integer.toString(this.mNextSerialNumber));
            fastXmlSerializer.attribute(null, ATTR_USER_VERSION, Integer.toString(this.mUserVersion));
            fastXmlSerializer.startTag(null, TAG_GUEST_RESTRICTIONS);
            synchronized (this.mGuestRestrictions) {
                UserRestrictionsUtils.writeRestrictions(fastXmlSerializer, this.mGuestRestrictions, TAG_RESTRICTIONS);
            }
            fastXmlSerializer.endTag(null, TAG_GUEST_RESTRICTIONS);
            fastXmlSerializer.startTag(null, TAG_DEVICE_OWNER_USER_ID);
            fastXmlSerializer.attribute(null, ATTR_ID, Integer.toString(this.mDeviceOwnerUserId));
            fastXmlSerializer.endTag(null, TAG_DEVICE_OWNER_USER_ID);
            synchronized (this.mUsersLock) {
                userIdsToWrite = new int[this.mUsers.size()];
                for (int i = 0; i < userIdsToWrite.length; i++) {
                    UserInfo user = this.mUsers.valueAt(i).info;
                    userIdsToWrite[i] = user.id;
                }
            }
            for (int id : userIdsToWrite) {
                fastXmlSerializer.startTag(null, TAG_USER);
                fastXmlSerializer.attribute(null, ATTR_ID, Integer.toString(id));
                fastXmlSerializer.endTag(null, TAG_USER);
            }
            fastXmlSerializer.endTag(null, "users");
            fastXmlSerializer.endDocument();
            userListFile.finishWrite(fos);
        } catch (Exception e) {
            userListFile.failWrite(fos);
            Slog.e(LOG_TAG, "Error writing user list");
        }
    }

    private UserData readUserLP(int id) {
        FileInputStream fis = null;
        try {
            try {
                try {
                    AtomicFile userFile = new AtomicFile(new File(this.mUsersDir, Integer.toString(id) + XML_SUFFIX));
                    fis = userFile.openRead();
                    UserData userLP = readUserLP(id, fis);
                    IoUtils.closeQuietly(fis);
                    return userLP;
                } catch (XmlPullParserException e) {
                    Slog.e(LOG_TAG, "Error reading user list");
                    IoUtils.closeQuietly(fis);
                    return null;
                }
            } catch (IOException e2) {
                Slog.e(LOG_TAG, "Error reading user list");
                IoUtils.closeQuietly(fis);
                return null;
            }
        } catch (Throwable th) {
            IoUtils.closeQuietly(fis);
            throw th;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    UserData readUserLP(int id, InputStream is) throws Throwable {
        int type;
        int flags;
        String userType;
        int flags2;
        long lastRequestQuietModeEnabledTimestamp;
        boolean partial;
        boolean preCreated;
        boolean converted;
        boolean guestToRemove;
        boolean persistSeedData;
        String seedAccountName;
        String seedAccountType;
        PersistableBundle seedAccountOptions;
        Bundle baseRestrictions;
        Bundle legacyLocalRestrictions;
        RestrictionsSet localRestrictions;
        Bundle globalRestrictions;
        String account;
        String iconPath;
        int profileBadge;
        int restrictedProfileParentId;
        int profileGroupId;
        String name;
        String lastLoggedInFingerprint;
        long creationTime;
        long lastLoggedInTime;
        int restrictedProfileParentId2;
        int flags3 = 0;
        String name2 = null;
        String account2 = null;
        long lastRequestQuietModeEnabledTimestamp2 = 0;
        PersistableBundle seedAccountOptions2 = null;
        Bundle baseRestrictions2 = null;
        Bundle legacyLocalRestrictions2 = null;
        RestrictionsSet localRestrictions2 = null;
        Bundle globalRestrictions2 = null;
        boolean ignorePrepareStorageErrors = true;
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(is, StandardCharsets.UTF_8.name());
        while (true) {
            type = parser.next();
            flags = flags3;
            if (type == 2 || type == 1) {
                break;
            }
            flags3 = flags;
        }
        if (type != 2) {
            Slog.e(LOG_TAG, "Unable to read user " + id);
            return null;
        }
        if (type == 2 && parser.getName().equals(TAG_USER)) {
            int storedId = readIntAttribute(parser, ATTR_ID, -1);
            if (storedId != id) {
                Slog.e(LOG_TAG, "User id does not match the file name");
                return null;
            }
            int serialNumber = readIntAttribute(parser, ATTR_SERIAL_NO, id);
            int flags4 = readIntAttribute(parser, ATTR_FLAGS, 0);
            String userType2 = parser.getAttributeValue(null, DatabaseHelper.SoundModelContract.KEY_TYPE);
            String userType3 = userType2 != null ? userType2.intern() : null;
            String iconPath2 = parser.getAttributeValue(null, ATTR_ICON_PATH);
            long creationTime2 = readLongAttribute(parser, ATTR_CREATION_TIME, 0L);
            long lastLoggedInTime2 = readLongAttribute(parser, ATTR_LAST_LOGGED_IN_TIME, 0L);
            String lastLoggedInFingerprint2 = parser.getAttributeValue(null, ATTR_LAST_LOGGED_IN_FINGERPRINT);
            int profileGroupId2 = readIntAttribute(parser, ATTR_PROFILE_GROUP_ID, -10000);
            int profileBadge2 = readIntAttribute(parser, ATTR_PROFILE_BADGE, 0);
            int restrictedProfileParentId3 = readIntAttribute(parser, ATTR_RESTRICTED_PROFILE_PARENT_ID, -10000);
            String valueString = parser.getAttributeValue(null, ATTR_PARTIAL);
            boolean partial2 = "true".equals(valueString);
            String valueString2 = parser.getAttributeValue(null, ATTR_PRE_CREATED);
            boolean preCreated2 = "true".equals(valueString2);
            String valueString3 = parser.getAttributeValue(null, ATTR_CONVERTED_FROM_PRE_CREATED);
            boolean converted2 = "true".equals(valueString3);
            String valueString4 = parser.getAttributeValue(null, ATTR_GUEST_TO_REMOVE);
            boolean guestToRemove2 = "true".equals(valueString4);
            String seedAccountName2 = parser.getAttributeValue(null, ATTR_SEED_ACCOUNT_NAME);
            String seedAccountType2 = parser.getAttributeValue(null, ATTR_SEED_ACCOUNT_TYPE);
            boolean persistSeedData2 = (seedAccountName2 == null && seedAccountType2 == null) ? false : true;
            int outerDepth = parser.getDepth();
            while (true) {
                int type2 = parser.next();
                valueString4 = valueString4;
                if (type2 == 1 || (type2 == 3 && parser.getDepth() <= outerDepth)) {
                    break;
                }
                if (type2 != 3 && type2 != 4) {
                    String tag = parser.getName();
                    if ("name".equals(tag)) {
                        if (parser.next() == 4) {
                            name2 = parser.getText();
                        }
                    } else if (TAG_RESTRICTIONS.equals(tag)) {
                        baseRestrictions2 = UserRestrictionsUtils.readRestrictions(parser);
                    } else if (TAG_DEVICE_POLICY_RESTRICTIONS.equals(tag)) {
                        legacyLocalRestrictions2 = UserRestrictionsUtils.readRestrictions(parser);
                    } else if (TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS.equals(tag)) {
                        localRestrictions2 = RestrictionsSet.readRestrictions(parser, TAG_DEVICE_POLICY_LOCAL_RESTRICTIONS);
                    } else if (TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS.equals(tag)) {
                        globalRestrictions2 = UserRestrictionsUtils.readRestrictions(parser);
                    } else if (TAG_ACCOUNT.equals(tag)) {
                        if (parser.next() == 4) {
                            account2 = parser.getText();
                        }
                    } else if (TAG_SEED_ACCOUNT_OPTIONS.equals(tag)) {
                        seedAccountOptions2 = PersistableBundle.restoreFromXml(parser);
                        persistSeedData2 = true;
                    } else if (TAG_LAST_REQUEST_QUIET_MODE_ENABLED_CALL.equals(tag)) {
                        if (parser.next() == 4) {
                            lastRequestQuietModeEnabledTimestamp2 = Long.parseLong(parser.getText());
                        }
                    } else if (TAG_IGNORE_PREPARE_STORAGE_ERRORS.equals(tag) && parser.next() == 4) {
                        ignorePrepareStorageErrors = Boolean.parseBoolean(parser.getText());
                    }
                }
            }
            lastRequestQuietModeEnabledTimestamp = lastRequestQuietModeEnabledTimestamp2;
            partial = partial2;
            preCreated = preCreated2;
            converted = converted2;
            guestToRemove = guestToRemove2;
            persistSeedData = persistSeedData2;
            seedAccountName = seedAccountName2;
            seedAccountType = seedAccountType2;
            seedAccountOptions = seedAccountOptions2;
            baseRestrictions = baseRestrictions2;
            legacyLocalRestrictions = legacyLocalRestrictions2;
            localRestrictions = localRestrictions2;
            globalRestrictions = globalRestrictions2;
            userType = userType3;
            account = account2;
            iconPath = iconPath2;
            flags = flags4;
            profileBadge = profileBadge2;
            restrictedProfileParentId = restrictedProfileParentId3;
            flags2 = serialNumber;
            profileGroupId = profileGroupId2;
            name = name2;
            lastLoggedInFingerprint = lastLoggedInFingerprint2;
            creationTime = creationTime2;
            lastLoggedInTime = lastLoggedInTime2;
        } else {
            userType = null;
            flags2 = id;
            lastRequestQuietModeEnabledTimestamp = 0;
            partial = false;
            preCreated = false;
            converted = false;
            guestToRemove = false;
            persistSeedData = false;
            seedAccountName = null;
            seedAccountType = null;
            seedAccountOptions = null;
            baseRestrictions = null;
            legacyLocalRestrictions = null;
            localRestrictions = null;
            globalRestrictions = null;
            account = null;
            iconPath = null;
            profileBadge = 0;
            restrictedProfileParentId = -10000;
            profileGroupId = -10000;
            name = null;
            lastLoggedInFingerprint = null;
            creationTime = 0;
            lastLoggedInTime = 0;
        }
        long lastRequestQuietModeEnabledTimestamp3 = lastRequestQuietModeEnabledTimestamp;
        UserInfo userInfo = new UserInfo(id, name, iconPath, flags, userType);
        userInfo.serialNumber = flags2;
        userInfo.creationTime = creationTime;
        userInfo.lastLoggedInTime = lastLoggedInTime;
        userInfo.lastLoggedInFingerprint = lastLoggedInFingerprint;
        userInfo.partial = partial;
        userInfo.preCreated = preCreated;
        userInfo.convertedFromPreCreated = converted;
        userInfo.guestToRemove = guestToRemove;
        userInfo.profileGroupId = profileGroupId;
        userInfo.profileBadge = profileBadge;
        userInfo.restrictedProfileParentId = restrictedProfileParentId;
        UserData userData = new UserData();
        userData.info = userInfo;
        userData.account = account;
        String account3 = seedAccountName;
        userData.seedAccountName = account3;
        String seedAccountName3 = seedAccountType;
        userData.seedAccountType = seedAccountName3;
        userData.persistSeedData = persistSeedData;
        userData.seedAccountOptions = seedAccountOptions;
        userData.setLastRequestQuietModeEnabledMillis(lastRequestQuietModeEnabledTimestamp3);
        if (ignorePrepareStorageErrors) {
            userData.setIgnorePrepareStorageErrors();
        }
        synchronized (this.mRestrictionsLock) {
            Bundle baseRestrictions3 = baseRestrictions;
            try {
                if (baseRestrictions3 != null) {
                    try {
                        restrictedProfileParentId2 = id;
                        try {
                            this.mBaseUserRestrictions.updateRestrictions(restrictedProfileParentId2, baseRestrictions3);
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } else {
                    restrictedProfileParentId2 = id;
                }
                RestrictionsSet localRestrictions3 = localRestrictions;
                try {
                    if (localRestrictions3 != null) {
                        try {
                            this.mDevicePolicyLocalUserRestrictions.put(restrictedProfileParentId2, localRestrictions3);
                            if (legacyLocalRestrictions != null) {
                                Slog.wtf(LOG_TAG, "Seeing both legacy and current local restrictions in xml");
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            throw th;
                        }
                    } else {
                        Bundle legacyLocalRestrictions3 = legacyLocalRestrictions;
                        if (legacyLocalRestrictions3 != null) {
                            this.mDevicePolicyLocalUserRestrictions.put(restrictedProfileParentId2, new RestrictionsSet(restrictedProfileParentId2, legacyLocalRestrictions3));
                        }
                    }
                    Bundle globalRestrictions3 = globalRestrictions;
                    if (globalRestrictions3 != null) {
                        this.mDevicePolicyGlobalUserRestrictions.updateRestrictions(restrictedProfileParentId2, globalRestrictions3);
                    }
                    return userData;
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    private int readIntAttribute(XmlPullParser parser, String attr, int defaultValue) {
        String valueString = parser.getAttributeValue(null, attr);
        if (valueString == null) {
            return defaultValue;
        }
        try {
            return Integer.parseInt(valueString);
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    private long readLongAttribute(XmlPullParser parser, String attr, long defaultValue) {
        String valueString = parser.getAttributeValue(null, attr);
        if (valueString == null) {
            return defaultValue;
        }
        try {
            return Long.parseLong(valueString);
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    private static boolean cleanAppRestrictionsForPackageLAr(String pkg, int userId) {
        File dir = Environment.getUserSystemDirectory(userId);
        File resFile = new File(dir, packageToRestrictionsFileName(pkg));
        if (resFile.exists()) {
            resFile.delete();
            return true;
        }
        return false;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public UserInfo createProfileForUserWithThrow(String name, String userType, int flags, int userId, String[] disallowedPackages) throws ServiceSpecificException {
        checkManageOrCreateUsersPermission(flags);
        try {
            return createUserInternal(name, userType, flags, userId, disallowedPackages);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public UserInfo createProfileForUserEvenWhenDisallowedWithThrow(String name, String userType, int flags, int userId, String[] disallowedPackages) throws ServiceSpecificException {
        checkManageOrCreateUsersPermission(flags);
        try {
            return createUserInternalUnchecked(name, userType, flags, userId, false, disallowedPackages);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public UserInfo createUserWithThrow(String name, String userType, int flags) throws ServiceSpecificException {
        checkManageOrCreateUsersPermission(flags);
        try {
            return createUserInternal(name, userType, flags, -10000, null);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public UserInfo preCreateUserWithThrow(String userType) throws ServiceSpecificException {
        UserTypeDetails userTypeDetails = this.mUserTypes.get(userType);
        int flags = userTypeDetails != null ? userTypeDetails.getDefaultUserInfoFlags() : 0;
        checkManageOrCreateUsersPermission(flags);
        Preconditions.checkArgument(isUserTypeEligibleForPreCreation(userTypeDetails), "cannot pre-create user of type " + userType);
        Slog.i(LOG_TAG, "Pre-creating user of type " + userType);
        try {
            return createUserInternalUnchecked(null, userType, flags, -10000, true, null);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.UserManager$CheckedUserOperationException */
    private UserInfo createUserInternal(String name, String userType, int flags, int parentId, String[] disallowedPackages) throws UserManager.CheckedUserOperationException {
        String restriction;
        if (UserManager.isUserTypeManagedProfile(userType)) {
            restriction = "no_add_managed_profile";
        } else {
            restriction = "no_add_user";
        }
        enforceUserRestriction(restriction, UserHandle.getCallingUserId(), "Cannot add user");
        return createUserInternalUnchecked(name, userType, flags, parentId, false, disallowedPackages);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UserInfo createUserInternalUnchecked(String name, String userType, int flags, int parentId, boolean preCreate, String[] disallowedPackages) throws UserManager.CheckedUserOperationException {
        int nextProbableUserId = getNextAvailableId();
        TimingsTraceAndSlog t = new TimingsTraceAndSlog();
        t.traceBegin("createUser-" + flags);
        long sessionId = logUserCreateJourneyBegin(nextProbableUserId, userType, flags);
        UserInfo newUser = null;
        try {
            newUser = createUserInternalUncheckedNoTracing(name, userType, flags, parentId, preCreate, disallowedPackages, t);
            return newUser;
        } finally {
            logUserCreateJourneyFinish(sessionId, nextProbableUserId, newUser != null);
            t.traceEnd();
        }
    }

    private long logUserCreateJourneyBegin(int userId, String userType, int flags) {
        long sessionId = ThreadLocalRandom.current().nextLong(1L, JobStatus.NO_LATEST_RUNTIME);
        FrameworkStatsLog.write(264, sessionId, 4, -1, userId, UserManager.getUserTypeForStatsd(userType), flags);
        FrameworkStatsLog.write(265, sessionId, userId, 3, 1);
        return sessionId;
    }

    private void logUserCreateJourneyFinish(long sessionId, int userId, boolean finish) {
        FrameworkStatsLog.write(265, sessionId, userId, 3, finish ? 2 : 0);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.UserManager$CheckedUserOperationException */
    /* JADX WARN: Bottom block not found for handler: all -> 0x0368 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.content.pm.UserInfo createUserInternalUncheckedNoTracing(java.lang.String r26, java.lang.String r27, int r28, int r29, boolean r30, java.lang.String[] r31, com.android.server.utils.TimingsTraceAndSlog r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 874
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.createUserInternalUncheckedNoTracing(java.lang.String, java.lang.String, int, int, boolean, java.lang.String[], com.android.server.utils.TimingsTraceAndSlog):android.content.pm.UserInfo");
    }

    private UserInfo convertPreCreatedUserIfPossible(String userType, int flags, String name) {
        UserData preCreatedUserData;
        synchronized (this.mUsersLock) {
            preCreatedUserData = getPreCreatedUserLU(userType);
        }
        if (preCreatedUserData == null) {
            return null;
        }
        UserInfo preCreatedUser = preCreatedUserData.info;
        int newFlags = preCreatedUser.flags | flags;
        if (!checkUserTypeConsistency(newFlags)) {
            Slog.wtf(LOG_TAG, "Cannot reuse pre-created user " + preCreatedUser.id + " of type " + userType + " because flags are inconsistent. Flags (" + Integer.toHexString(flags) + "); preCreatedUserFlags ( " + Integer.toHexString(preCreatedUser.flags) + ").");
            return null;
        }
        Slog.i(LOG_TAG, "Reusing pre-created user " + preCreatedUser.id + " of type " + userType + " and bestowing on it flags " + UserInfo.flagsToString(flags));
        preCreatedUser.name = name;
        preCreatedUser.flags = newFlags;
        preCreatedUser.preCreated = false;
        preCreatedUser.convertedFromPreCreated = true;
        preCreatedUser.creationTime = getCreationTime();
        synchronized (this.mPackagesLock) {
            writeUserLP(preCreatedUserData);
            writeUserListLP();
        }
        updateUserIds();
        if (!this.mPm.readPermissionStateForUser(preCreatedUser.id)) {
            this.mPm.onNewUserCreated(preCreatedUser.id);
        }
        dispatchUserAdded(preCreatedUser);
        return preCreatedUser;
    }

    static boolean checkUserTypeConsistency(int flags) {
        return isAtMostOneFlag(flags & 4620) && isAtMostOneFlag(flags & 5120) && isAtMostOneFlag(flags & 6144);
    }

    private static boolean isAtMostOneFlag(int flags) {
        return ((flags + (-1)) & flags) == 0;
    }

    boolean installWhitelistedSystemPackages(boolean isFirstBoot, boolean isUpgrade, ArraySet<String> existingPackages) {
        return this.mSystemPackageInstaller.installWhitelistedSystemPackages(isFirstBoot, isUpgrade, existingPackages);
    }

    private long getCreationTime() {
        long now = System.currentTimeMillis();
        if (now > EPOCH_PLUS_30_YEARS) {
            return now;
        }
        return 0L;
    }

    private void dispatchUserAdded(UserInfo userInfo) {
        String str;
        Intent addedIntent = new Intent("android.intent.action.USER_ADDED");
        addedIntent.putExtra("android.intent.extra.user_handle", userInfo.id);
        addedIntent.putExtra("android.intent.extra.USER", UserHandle.of(userInfo.id));
        this.mContext.sendBroadcastAsUser(addedIntent, UserHandle.ALL, "android.permission.MANAGE_USERS");
        Context context = this.mContext;
        if (userInfo.isGuest()) {
            str = TRON_GUEST_CREATED;
        } else {
            str = userInfo.isDemo() ? TRON_DEMO_CREATED : TRON_USER_CREATED;
        }
        MetricsLogger.count(context, str, 1);
        if (!userInfo.isProfile() && android.provider.Settings.Global.getString(this.mContext.getContentResolver(), "user_switcher_enabled") == null) {
            android.provider.Settings.Global.putInt(this.mContext.getContentResolver(), "user_switcher_enabled", 1);
        }
    }

    private UserData getPreCreatedUserLU(String userType) {
        int userSize = this.mUsers.size();
        for (int i = 0; i < userSize; i++) {
            UserData user = this.mUsers.valueAt(i);
            if (user.info.preCreated && user.info.userType.equals(userType)) {
                if (!user.info.isInitialized()) {
                    Slog.w(LOG_TAG, "found pre-created user of type " + userType + ", but it's not initialized yet: " + user.info.toFullString());
                } else {
                    return user;
                }
            }
        }
        return null;
    }

    private static boolean isUserTypeEligibleForPreCreation(UserTypeDetails userTypeDetails) {
        return (userTypeDetails == null || userTypeDetails.isProfile() || userTypeDetails.getName().equals("android.os.usertype.full.RESTRICTED")) ? false : true;
    }

    UserData putUserInfo(UserInfo userInfo) {
        UserData userData = new UserData();
        userData.info = userInfo;
        synchronized (this.mUsers) {
            this.mUsers.put(userInfo.id, userData);
        }
        return userData;
    }

    void removeUserInfo(int userId) {
        synchronized (this.mUsers) {
            this.mUsers.remove(userId);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ServiceSpecificException */
    public UserInfo createRestrictedProfileWithThrow(String name, int parentUserId) throws ServiceSpecificException {
        checkManageOrCreateUsersPermission("setupRestrictedProfile");
        UserInfo user = createProfileForUserWithThrow(name, "android.os.usertype.full.RESTRICTED", 0, parentUserId, null);
        if (user == null) {
            return null;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            setUserRestriction("no_modify_accounts", true, user.id);
            android.provider.Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "location_mode", 0, user.id);
            setUserRestriction("no_share_location", true, user.id);
            return user;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public UserInfo findCurrentGuestUser() {
        checkManageUsersPermission("findCurrentGuestUser");
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo user = this.mUsers.valueAt(i).info;
                if (user.isGuest() && !user.guestToRemove && !user.preCreated && !this.mRemovingUserIds.get(user.id)) {
                    return user;
                }
            }
            return null;
        }
    }

    public boolean markGuestForDeletion(int userId) {
        checkManageUsersPermission("Only the system can remove users");
        if (getUserRestrictions(UserHandle.getCallingUserId()).getBoolean("no_remove_user", false)) {
            Slog.w(LOG_TAG, "Cannot remove user. DISALLOW_REMOVE_USER is enabled.");
            return false;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            synchronized (this.mPackagesLock) {
                synchronized (this.mUsersLock) {
                    UserData userData = this.mUsers.get(userId);
                    if (userId != 0 && userData != null && !this.mRemovingUserIds.get(userId)) {
                        if (!userData.info.isGuest()) {
                            Binder.restoreCallingIdentity(ident);
                            return false;
                        }
                        userData.info.guestToRemove = true;
                        userData.info.flags |= 64;
                        writeUserLP(userData);
                        Binder.restoreCallingIdentity(ident);
                        return true;
                    }
                    Binder.restoreCallingIdentity(ident);
                    return false;
                }
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public boolean removeUser(int userId) {
        boolean isManagedProfile;
        Slog.i(LOG_TAG, "removeUser u" + userId);
        checkManageOrCreateUsersPermission("Only the system can remove users");
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            isManagedProfile = userInfo != null && userInfo.isManagedProfile();
        }
        String restriction = isManagedProfile ? "no_remove_managed_profile" : "no_remove_user";
        if (getUserRestrictions(UserHandle.getCallingUserId()).getBoolean(restriction, false)) {
            Slog.w(LOG_TAG, "Cannot remove user. " + restriction + " is enabled.");
            return false;
        }
        return removeUserUnchecked(userId);
    }

    public boolean removeUserEvenWhenDisallowed(int userId) {
        checkManageOrCreateUsersPermission("Only the system can remove users");
        return removeUserUnchecked(userId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeUserUnchecked(int userId) {
        long ident = Binder.clearCallingIdentity();
        try {
            int currentUser = ActivityManager.getCurrentUser();
            if (currentUser == userId) {
                Slog.w(LOG_TAG, "Current user cannot be removed.");
                Binder.restoreCallingIdentity(ident);
                return false;
            }
            synchronized (this.mPackagesLock) {
                synchronized (this.mUsersLock) {
                    UserData userData = this.mUsers.get(userId);
                    if (userId == 0) {
                        Slog.e(LOG_TAG, "System user cannot be removed.");
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                    if (userData == null) {
                        Slog.e(LOG_TAG, String.format("Cannot remove user %d, invalid user id provided.", Integer.valueOf(userId)));
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                    if (this.mRemovingUserIds.get(userId)) {
                        Slog.e(LOG_TAG, String.format("User %d is already scheduled for removal.", Integer.valueOf(userId)));
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                    addRemovingUserIdLocked(userId);
                    userData.info.partial = true;
                    userData.info.flags |= 64;
                    writeUserLP(userData);
                    try {
                        this.mAppOpsService.removeUser(userId);
                    } catch (RemoteException e) {
                        Slog.w(LOG_TAG, "Unable to notify AppOpsService of removing user.", e);
                    }
                    if (userData.info.profileGroupId != -10000 && userData.info.isManagedProfile()) {
                        sendProfileRemovedBroadcast(userData.info.profileGroupId, userData.info.id);
                    }
                    try {
                        int res = ActivityManager.getService().stopUser(userId, true, new IStopUserCallback.Stub() { // from class: com.android.server.pm.UserManagerService.5
                            public void userStopped(int userIdParam) {
                                UserManagerService.this.finishRemoveUser(userIdParam);
                            }

                            public void userStopAborted(int userIdParam) {
                            }
                        });
                        boolean z = res == 0;
                        Binder.restoreCallingIdentity(ident);
                        return z;
                    } catch (RemoteException e2) {
                        Slog.w(LOG_TAG, "Failed to stop user during removal.", e2);
                        Binder.restoreCallingIdentity(ident);
                        return false;
                    }
                }
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    void addRemovingUserIdLocked(int userId) {
        this.mRemovingUserIds.put(userId, true);
        this.mRecentlyRemovedIds.add(Integer.valueOf(userId));
        if (this.mRecentlyRemovedIds.size() > 100) {
            this.mRecentlyRemovedIds.removeFirst();
        }
    }

    void finishRemoveUser(final int userId) {
        long ident = Binder.clearCallingIdentity();
        try {
            Intent removedIntent = new Intent("android.intent.action.USER_REMOVED");
            removedIntent.putExtra("android.intent.extra.user_handle", userId);
            removedIntent.putExtra("android.intent.extra.USER", UserHandle.of(userId));
            this.mContext.sendOrderedBroadcastAsUser(removedIntent, UserHandle.ALL, "android.permission.MANAGE_USERS", new BroadcastReceiver() { // from class: com.android.server.pm.UserManagerService.6
                /* JADX WARN: Type inference failed for: r0v0, types: [com.android.server.pm.UserManagerService$6$1] */
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    new Thread() { // from class: com.android.server.pm.UserManagerService.6.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).onUserRemoved(userId);
                            UserManagerService.this.removeUserState(userId);
                        }
                    }.start();
                }
            }, null, -1, null, null);
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUserState(int userId) {
        try {
            ((StorageManager) this.mContext.getSystemService(StorageManager.class)).destroyUserKey(userId);
        } catch (IllegalStateException e) {
            Slog.i(LOG_TAG, "Destroying key for user " + userId + " failed, continuing anyway", e);
        }
        try {
            IGateKeeperService gk = GateKeeper.getService();
            if (gk != null) {
                gk.clearSecureUserId(userId);
            }
        } catch (Exception e2) {
            Slog.w(LOG_TAG, "unable to clear GK secure user id");
        }
        this.mPm.cleanUpUser(this, userId);
        this.mUserDataPreparer.destroyUserData(userId, 3);
        synchronized (this.mUsersLock) {
            this.mUsers.remove(userId);
            this.mIsUserManaged.delete(userId);
        }
        synchronized (this.mUserStates) {
            this.mUserStates.delete(userId);
        }
        synchronized (this.mRestrictionsLock) {
            this.mBaseUserRestrictions.remove(userId);
            this.mAppliedUserRestrictions.remove(userId);
            this.mCachedEffectiveUserRestrictions.remove(userId);
            this.mDevicePolicyLocalUserRestrictions.delete(userId);
            boolean changed = false;
            for (int i = 0; i < this.mDevicePolicyLocalUserRestrictions.size(); i++) {
                int targetUserId = this.mDevicePolicyLocalUserRestrictions.keyAt(i);
                changed |= getDevicePolicyLocalRestrictionsForTargetUserLR(targetUserId).remove(userId);
            }
            if (changed | this.mDevicePolicyGlobalUserRestrictions.remove(userId)) {
                applyUserRestrictionsForAllUsersLR();
            }
        }
        synchronized (this.mPackagesLock) {
            writeUserListLP();
        }
        AtomicFile userFile = new AtomicFile(new File(this.mUsersDir, userId + XML_SUFFIX));
        userFile.delete();
        updateUserIds();
    }

    private void sendProfileRemovedBroadcast(int parentUserId, int removedUserId) {
        Intent managedProfileIntent = new Intent("android.intent.action.MANAGED_PROFILE_REMOVED");
        managedProfileIntent.putExtra("android.intent.extra.USER", new UserHandle(removedUserId));
        managedProfileIntent.putExtra("android.intent.extra.user_handle", removedUserId);
        UserHandle parentHandle = new UserHandle(parentUserId);
        getDevicePolicyManagerInternal().broadcastIntentToCrossProfileManifestReceiversAsUser(managedProfileIntent, parentHandle, false);
        managedProfileIntent.addFlags(1342177280);
        this.mContext.sendBroadcastAsUser(managedProfileIntent, parentHandle, null);
    }

    public Bundle getApplicationRestrictions(String packageName) {
        return getApplicationRestrictionsForUser(packageName, UserHandle.getCallingUserId());
    }

    public Bundle getApplicationRestrictionsForUser(String packageName, int userId) {
        Bundle applicationRestrictionsLAr;
        if (UserHandle.getCallingUserId() != userId || !UserHandle.isSameApp(Binder.getCallingUid(), getUidForPackage(packageName))) {
            checkSystemOrRoot("get application restrictions for other user/app " + packageName);
        }
        synchronized (this.mAppRestrictionsLock) {
            applicationRestrictionsLAr = readApplicationRestrictionsLAr(packageName, userId);
        }
        return applicationRestrictionsLAr;
    }

    public void setApplicationRestrictions(String packageName, Bundle restrictions, int userId) {
        boolean changed;
        checkSystemOrRoot("set application restrictions");
        String validationResult = validateName(packageName);
        if (validationResult != null) {
            if (packageName.contains("../")) {
                EventLog.writeEvent(1397638484, "239701237", -1, "");
            }
            throw new IllegalArgumentException("Invalid package name: " + validationResult);
        }
        if (restrictions != null) {
            restrictions.setDefusable(true);
        }
        synchronized (this.mAppRestrictionsLock) {
            if (restrictions == null) {
                changed = cleanAppRestrictionsForPackageLAr(packageName, userId);
            } else if (restrictions.isEmpty()) {
                changed = cleanAppRestrictionsForPackageLAr(packageName, userId);
            } else {
                writeApplicationRestrictionsLAr(packageName, restrictions, userId);
                changed = true;
            }
            throw th;
        }
        if (!changed) {
            return;
        }
        Intent changeIntent = new Intent("android.intent.action.APPLICATION_RESTRICTIONS_CHANGED");
        changeIntent.setPackage(packageName);
        changeIntent.addFlags(1073741824);
        this.mContext.sendBroadcastAsUser(changeIntent, UserHandle.of(userId));
    }

    static String validateName(String name) {
        int n = name.length();
        boolean front = true;
        for (int i = 0; i < n; i++) {
            char c = name.charAt(i);
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
                front = false;
            } else {
                if (!front) {
                    if ((c < '0' || c > '9') && c != '_') {
                        if (c == '.') {
                            front = true;
                        }
                    }
                }
                return "bad character '" + c + "'";
            }
        }
        return null;
    }

    private int getUidForPackage(String packageName) {
        long ident = Binder.clearCallingIdentity();
        try {
            return this.mContext.getPackageManager().getApplicationInfo(packageName, 4194304).uid;
        } catch (PackageManager.NameNotFoundException e) {
            return -1;
        } finally {
            Binder.restoreCallingIdentity(ident);
        }
    }

    private static Bundle readApplicationRestrictionsLAr(String packageName, int userId) {
        AtomicFile restrictionsFile = new AtomicFile(new File(Environment.getUserSystemDirectory(userId), packageToRestrictionsFileName(packageName)));
        return readApplicationRestrictionsLAr(restrictionsFile);
    }

    static Bundle readApplicationRestrictionsLAr(AtomicFile restrictionsFile) {
        Bundle restrictions = new Bundle();
        ArrayList<String> values = new ArrayList<>();
        if (!restrictionsFile.getBaseFile().exists()) {
            return restrictions;
        }
        FileInputStream fis = null;
        try {
            fis = restrictionsFile.openRead();
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(fis, StandardCharsets.UTF_8.name());
            XmlUtils.nextElement(parser);
            if (parser.getEventType() == 2) {
                while (parser.next() != 1) {
                    readEntry(restrictions, values, parser);
                }
                return restrictions;
            }
            Slog.e(LOG_TAG, "Unable to read restrictions file " + restrictionsFile.getBaseFile());
            return restrictions;
        } catch (IOException | XmlPullParserException e) {
            Slog.w(LOG_TAG, "Error parsing " + restrictionsFile.getBaseFile(), e);
        } finally {
            IoUtils.closeQuietly((AutoCloseable) null);
        }
    }

    private static void readEntry(Bundle restrictions, ArrayList<String> values, XmlPullParser parser) throws XmlPullParserException, IOException {
        if (parser.getEventType() == 2 && parser.getName().equals(TAG_ENTRY)) {
            String key = parser.getAttributeValue(null, ATTR_KEY);
            String valType = parser.getAttributeValue(null, DatabaseHelper.SoundModelContract.KEY_TYPE);
            String multiple = parser.getAttributeValue(null, ATTR_MULTIPLE);
            if (multiple != null) {
                values.clear();
                int count = Integer.parseInt(multiple);
                while (count > 0) {
                    int type = parser.next();
                    if (type == 1) {
                        break;
                    }
                    if (type == 2 && parser.getName().equals(TAG_VALUE)) {
                        values.add(parser.nextText().trim());
                        count--;
                    }
                }
                String[] valueStrings = new String[values.size()];
                values.toArray(valueStrings);
                restrictions.putStringArray(key, valueStrings);
                return;
            }
            if (ATTR_TYPE_BUNDLE.equals(valType)) {
                restrictions.putBundle(key, readBundleEntry(parser, values));
                return;
            }
            if (ATTR_TYPE_BUNDLE_ARRAY.equals(valType)) {
                int outerDepth = parser.getDepth();
                ArrayList<Bundle> bundleList = new ArrayList<>();
                while (XmlUtils.nextElementWithin(parser, outerDepth)) {
                    Bundle childBundle = readBundleEntry(parser, values);
                    bundleList.add(childBundle);
                }
                restrictions.putParcelableArray(key, (Parcelable[]) bundleList.toArray(new Bundle[bundleList.size()]));
                return;
            }
            String value = parser.nextText().trim();
            if (ATTR_TYPE_BOOLEAN.equals(valType)) {
                restrictions.putBoolean(key, Boolean.parseBoolean(value));
            } else if (ATTR_TYPE_INTEGER.equals(valType)) {
                restrictions.putInt(key, Integer.parseInt(value));
            } else {
                restrictions.putString(key, value);
            }
        }
    }

    private static Bundle readBundleEntry(XmlPullParser parser, ArrayList<String> values) throws XmlPullParserException, IOException {
        Bundle childBundle = new Bundle();
        int outerDepth = parser.getDepth();
        while (XmlUtils.nextElementWithin(parser, outerDepth)) {
            readEntry(childBundle, values, parser);
        }
        return childBundle;
    }

    private static void writeApplicationRestrictionsLAr(String packageName, Bundle restrictions, int userId) {
        AtomicFile restrictionsFile = new AtomicFile(new File(Environment.getUserSystemDirectory(userId), packageToRestrictionsFileName(packageName)));
        writeApplicationRestrictionsLAr(restrictions, restrictionsFile);
    }

    static void writeApplicationRestrictionsLAr(Bundle restrictions, AtomicFile restrictionsFile) {
        FileOutputStream fos = null;
        try {
            fos = restrictionsFile.startWrite();
            BufferedOutputStream bos = new BufferedOutputStream(fos);
            FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
            fastXmlSerializer.setOutput(bos, StandardCharsets.UTF_8.name());
            fastXmlSerializer.startDocument(null, true);
            fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
            fastXmlSerializer.startTag(null, TAG_RESTRICTIONS);
            writeBundle(restrictions, fastXmlSerializer);
            fastXmlSerializer.endTag(null, TAG_RESTRICTIONS);
            fastXmlSerializer.endDocument();
            restrictionsFile.finishWrite(fos);
        } catch (Exception e) {
            restrictionsFile.failWrite(fos);
            Slog.e(LOG_TAG, "Error writing application restrictions list", e);
        }
    }

    private static void writeBundle(Bundle restrictions, XmlSerializer serializer) throws IOException {
        for (String key : restrictions.keySet()) {
            Object value = restrictions.get(key);
            serializer.startTag(null, TAG_ENTRY);
            serializer.attribute(null, ATTR_KEY, key);
            if (value instanceof Boolean) {
                serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_BOOLEAN);
                serializer.text(value.toString());
            } else if (value instanceof Integer) {
                serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_INTEGER);
                serializer.text(value.toString());
            } else if (value == null || (value instanceof String)) {
                serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_STRING);
                serializer.text(value != null ? (String) value : "");
            } else if (value instanceof Bundle) {
                serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_BUNDLE);
                writeBundle((Bundle) value, serializer);
            } else {
                int i = 0;
                if (value instanceof Parcelable[]) {
                    serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_BUNDLE_ARRAY);
                    Parcelable[] array = (Parcelable[]) value;
                    int length = array.length;
                    while (i < length) {
                        Parcelable parcelable = array[i];
                        if (!(parcelable instanceof Bundle)) {
                            throw new IllegalArgumentException("bundle-array can only hold Bundles");
                        }
                        serializer.startTag(null, TAG_ENTRY);
                        serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_BUNDLE);
                        writeBundle((Bundle) parcelable, serializer);
                        serializer.endTag(null, TAG_ENTRY);
                        i++;
                    }
                } else {
                    serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, ATTR_TYPE_STRING_ARRAY);
                    String[] values = (String[]) value;
                    serializer.attribute(null, ATTR_MULTIPLE, Integer.toString(values.length));
                    int length2 = values.length;
                    while (i < length2) {
                        String choice = values[i];
                        serializer.startTag(null, TAG_VALUE);
                        serializer.text(choice != null ? choice : "");
                        serializer.endTag(null, TAG_VALUE);
                        i++;
                    }
                }
            }
            serializer.endTag(null, TAG_ENTRY);
        }
    }

    public int getUserSerialNumber(int userId) {
        int i;
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            i = userInfo != null ? userInfo.serialNumber : -1;
        }
        return i;
    }

    public boolean isUserNameSet(int userId) {
        boolean z;
        if (!hasManageUsersOrPermission("android.permission.GET_ACCOUNTS_PRIVILEGED")) {
            throw new SecurityException("You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set");
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            z = (userInfo == null || userInfo.name == null) ? false : true;
        }
        return z;
    }

    public int getUserHandle(int userSerialNumber) {
        synchronized (this.mUsersLock) {
            for (int userId : this.mUserIds) {
                UserInfo info = getUserInfoLU(userId);
                if (info != null && info.serialNumber == userSerialNumber) {
                    return userId;
                }
            }
            return -1;
        }
    }

    public long getUserCreationTime(int userId) {
        int callingUserId = UserHandle.getCallingUserId();
        UserInfo userInfo = null;
        synchronized (this.mUsersLock) {
            try {
                if (callingUserId == userId) {
                    userInfo = getUserInfoLU(userId);
                } else {
                    UserInfo parent = getProfileParentLU(userId);
                    if (parent != null && parent.id == callingUserId) {
                        userInfo = getUserInfoLU(userId);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (userInfo == null) {
            throw new SecurityException("userId can only be the calling user or a managed profile associated with this user");
        }
        return userInfo.creationTime;
    }

    private void updateUserIds() {
        int num = 0;
        int numIncludingPreCreated = 0;
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo userInfo = this.mUsers.valueAt(i).info;
                if (!userInfo.partial) {
                    numIncludingPreCreated++;
                    if (!userInfo.preCreated) {
                        num++;
                    }
                }
            }
            int[] newUsers = new int[num];
            int[] newUsersIncludingPreCreated = new int[numIncludingPreCreated];
            int n = 0;
            int n2 = 0;
            for (int i2 = 0; i2 < userSize; i2++) {
                UserInfo userInfo2 = this.mUsers.valueAt(i2).info;
                if (!userInfo2.partial) {
                    int userId = this.mUsers.keyAt(i2);
                    int nIncludingPreCreated = n2 + 1;
                    newUsersIncludingPreCreated[n2] = userId;
                    if (userInfo2.preCreated) {
                        n2 = nIncludingPreCreated;
                    } else {
                        newUsers[n] = userId;
                        n++;
                        n2 = nIncludingPreCreated;
                    }
                }
            }
            this.mUserIds = newUsers;
            this.mUserIdsIncludingPreCreated = newUsersIncludingPreCreated;
        }
    }

    public void onBeforeStartUser(int userId) {
        UserInfo userInfo = getUserInfo(userId);
        if (userInfo == null) {
            return;
        }
        TimingsTraceAndSlog t = new TimingsTraceAndSlog();
        t.traceBegin("onBeforeStartUser-" + userId);
        int userSerial = userInfo.serialNumber;
        boolean migrateAppsData = Build.FINGERPRINT.equals(userInfo.lastLoggedInFingerprint) ^ true;
        t.traceBegin("prepareUserData");
        this.mUserDataPreparer.prepareUserData(userId, userSerial, 1);
        t.traceEnd();
        t.traceBegin("reconcileAppsData");
        this.mPm.reconcileAppsData(userId, 1, migrateAppsData);
        t.traceEnd();
        if (userId != 0) {
            t.traceBegin("applyUserRestrictions");
            synchronized (this.mRestrictionsLock) {
                applyUserRestrictionsLR(userId);
            }
            t.traceEnd();
        }
        t.traceEnd();
    }

    public void onBeforeUnlockUser(int userId) {
        UserInfo userInfo = getUserInfo(userId);
        if (userInfo == null) {
            return;
        }
        int userSerial = userInfo.serialNumber;
        boolean migrateAppsData = !Build.FINGERPRINT.equals(userInfo.lastLoggedInFingerprint);
        this.mUserDataPreparer.prepareUserData(userId, userSerial, 2);
        this.mPm.reconcileAppsData(userId, 2, migrateAppsData);
    }

    void reconcileUsers(String volumeUuid) {
        this.mUserDataPreparer.reconcileUsers(volumeUuid, getUsers(true, true, false));
    }

    public void onUserLoggedIn(int userId) {
        UserData userData = getUserDataNoChecks(userId);
        if (userData == null || userData.info.partial) {
            Slog.w(LOG_TAG, "userForeground: unknown user #" + userId);
            return;
        }
        long now = System.currentTimeMillis();
        if (now > EPOCH_PLUS_30_YEARS) {
            userData.info.lastLoggedInTime = now;
        }
        userData.info.lastLoggedInFingerprint = Build.FINGERPRINT;
        scheduleWriteUser(userData);
    }

    int getNextAvailableId() {
        synchronized (this.mUsersLock) {
            int nextId = scanNextAvailableIdLocked();
            if (nextId >= 0) {
                return nextId;
            }
            if (this.mRemovingUserIds.size() > 0) {
                Slog.i(LOG_TAG, "All available IDs are used. Recycling LRU ids.");
                this.mRemovingUserIds.clear();
                for (Integer recentlyRemovedId : this.mRecentlyRemovedIds) {
                    this.mRemovingUserIds.put(recentlyRemovedId.intValue(), true);
                }
                nextId = scanNextAvailableIdLocked();
            }
            if (nextId < 0) {
                throw new IllegalStateException("No user id available!");
            }
            return nextId;
        }
    }

    private int scanNextAvailableIdLocked() {
        for (int i = 10; i < MAX_USER_ID; i++) {
            if (this.mUsers.indexOfKey(i) < 0 && !this.mRemovingUserIds.get(i)) {
                return i;
            }
        }
        return -1;
    }

    private static String packageToRestrictionsFileName(String packageName) {
        return RESTRICTIONS_FILE_PREFIX + packageName + XML_SUFFIX;
    }

    public void setSeedAccountData(int userId, String accountName, String accountType, PersistableBundle accountOptions, boolean persist) {
        checkManageUsersPermission("Require MANAGE_USERS permission to set user seed data");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userData = getUserDataLU(userId);
                if (userData == null) {
                    Slog.e(LOG_TAG, "No such user for settings seed data u=" + userId);
                    return;
                }
                userData.seedAccountName = accountName;
                userData.seedAccountType = accountType;
                userData.seedAccountOptions = accountOptions;
                userData.persistSeedData = persist;
                if (persist) {
                    writeUserLP(userData);
                }
            }
        }
    }

    public String getSeedAccountName() throws RemoteException {
        String str;
        checkManageUsersPermission("Cannot get seed account information");
        synchronized (this.mUsersLock) {
            UserData userData = getUserDataLU(UserHandle.getCallingUserId());
            str = userData.seedAccountName;
        }
        return str;
    }

    public String getSeedAccountType() throws RemoteException {
        String str;
        checkManageUsersPermission("Cannot get seed account information");
        synchronized (this.mUsersLock) {
            UserData userData = getUserDataLU(UserHandle.getCallingUserId());
            str = userData.seedAccountType;
        }
        return str;
    }

    public PersistableBundle getSeedAccountOptions() throws RemoteException {
        PersistableBundle persistableBundle;
        checkManageUsersPermission("Cannot get seed account information");
        synchronized (this.mUsersLock) {
            UserData userData = getUserDataLU(UserHandle.getCallingUserId());
            persistableBundle = userData.seedAccountOptions;
        }
        return persistableBundle;
    }

    public void clearSeedAccountData() throws RemoteException {
        checkManageUsersPermission("Cannot clear seed account information");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userData = getUserDataLU(UserHandle.getCallingUserId());
                if (userData == null) {
                    return;
                }
                userData.clearSeedAccountData();
                writeUserLP(userData);
            }
        }
    }

    public boolean someUserHasSeedAccount(String accountName, String accountType) throws RemoteException {
        checkManageUsersPermission("Cannot check seed account information");
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserData data = this.mUsers.valueAt(i);
                if (!data.info.isInitialized() && data.seedAccountName != null && data.seedAccountName.equals(accountName) && data.seedAccountType != null && data.seedAccountType.equals(accountType)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new Shell(this, null).exec(this, in, out, err, args, callback, resultReceiver);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001b  */
    int onShellCommand(Shell shell, String cmd) {
        byte b;
        if (cmd == null) {
            return shell.handleDefaultCommands(cmd);
        }
        PrintWriter pw = shell.getOutPrintWriter();
        try {
            int iHashCode = cmd.hashCode();
            if (iHashCode != 3322014) {
                b = (iHashCode == 1085270974 && cmd.equals("report-system-user-package-whitelist-problems")) ? (byte) 1 : (byte) -1;
            } else if (cmd.equals("list")) {
                b = 0;
            }
            if (b == 0) {
                return runList(pw, shell);
            }
            if (b == 1) {
                return runReportPackageWhitelistProblems(pw, shell);
            }
            return shell.handleDefaultCommands(cmd);
        } catch (RemoteException e) {
            pw.println("Remote exception: " + e);
            return -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    private int runList(PrintWriter pw, Shell shell) throws RemoteException {
        boolean all = false;
        boolean verbose = false;
        while (true) {
            String opt = shell.getNextOption();
            int i = 0;
            int i2 = 1;
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != 1513) {
                    if (iHashCode == 42995713 && opt.equals("--all")) {
                        i = 1;
                    } else {
                        i = -1;
                    }
                } else if (!opt.equals("-v")) {
                    i = -1;
                }
                if (i == 0) {
                    verbose = true;
                } else if (i == 1) {
                    all = true;
                } else {
                    pw.println("Invalid option: " + opt);
                    return -1;
                }
            } else {
                IActivityManager am = ActivityManager.getService();
                List<UserInfo> users = getUsers(!all, false, !all);
                if (users == null) {
                    pw.println("Error: couldn't get users");
                    return 1;
                }
                int size = users.size();
                int currentUser = -10000;
                if (verbose) {
                    pw.printf("%d users:\n\n", Integer.valueOf(size));
                    currentUser = am.getCurrentUser().id;
                } else {
                    pw.println("Users:");
                }
                int i3 = 0;
                while (i3 < size) {
                    UserInfo user = users.get(i3);
                    boolean running = am.isUserRunning(user.id, i);
                    int i4 = user.id == currentUser ? i2 : i;
                    if (verbose) {
                        Object[] objArr = new Object[9];
                        objArr[i] = Integer.valueOf(i3);
                        objArr[i2] = Integer.valueOf(user.id);
                        objArr[2] = user.name;
                        objArr[3] = UserInfo.flagsToString(user.flags);
                        objArr[4] = running ? " (running)" : "";
                        objArr[5] = user.partial ? " (partial)" : "";
                        objArr[6] = user.preCreated ? " (pre-created)" : "";
                        objArr[7] = user.convertedFromPreCreated ? " (converted)" : "";
                        objArr[8] = i4 != 0 ? " (current)" : "";
                        pw.printf("%d: id=%d, name=%s, flags=%s%s%s%s%s\n", objArr);
                        i2 = 1;
                    } else {
                        Object[] objArr2 = new Object[2];
                        objArr2[0] = user;
                        i2 = 1;
                        objArr2[1] = running ? " running" : "";
                        pw.printf("\t%s%s\n", objArr2);
                    }
                    i3++;
                    i = 0;
                }
                return 0;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    private int runReportPackageWhitelistProblems(PrintWriter pw, Shell shell) {
        boolean verbose = false;
        boolean criticalOnly = false;
        int mode = JobSchedulerShellCommand.CMD_ERR_NO_PACKAGE;
        while (true) {
            String opt = shell.getNextOption();
            byte b = 0;
            if (opt != null) {
                int iHashCode = opt.hashCode();
                if (iHashCode != -1362766982) {
                    if (iHashCode != 1513) {
                        if (iHashCode != 1333227331) {
                            if (iHashCode == 1737088994 && opt.equals("--verbose")) {
                                b = 1;
                            } else {
                                b = -1;
                            }
                        } else if (opt.equals("--mode")) {
                            b = 3;
                        } else {
                            b = -1;
                        }
                    } else if (!opt.equals("-v")) {
                        b = -1;
                    }
                } else if (opt.equals("--critical-only")) {
                    b = 2;
                } else {
                    b = -1;
                }
                if (b == 0 || b == 1) {
                    verbose = true;
                } else if (b == 2) {
                    criticalOnly = true;
                } else if (b == 3) {
                    mode = Integer.parseInt(shell.getNextArgRequired());
                } else {
                    pw.println("Invalid option: " + opt);
                    return -1;
                }
            } else {
                Slog.d(LOG_TAG, "runReportPackageWhitelistProblems(): verbose=" + verbose + ", criticalOnly=" + criticalOnly + ", mode=" + UserSystemPackageInstaller.modeToString(mode));
                IndentingPrintWriter ipw = new IndentingPrintWriter(pw, "  ");
                try {
                    this.mSystemPackageInstaller.dumpPackageWhitelistProblems(ipw, mode, verbose, criticalOnly);
                    ipw.close();
                    return 0;
                } catch (Throwable th) {
                    try {
                        ipw.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
    }

    protected void dump(FileDescriptor fd, PrintWriter pw, String[] args) throws Throwable {
        Object obj;
        Object obj2;
        int state;
        UserManagerService userManagerService = this;
        if (!DumpUtils.checkDumpPermission(userManagerService.mContext, LOG_TAG, pw)) {
            return;
        }
        long now = System.currentTimeMillis();
        long nowRealtime = SystemClock.elapsedRealtime();
        ActivityManagerInternal amInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        pw.print("Current user: ");
        if (amInternal != null) {
            pw.println(amInternal.getCurrentUserId());
        } else {
            pw.println("N/A");
        }
        StringBuilder sb = new StringBuilder();
        Object obj3 = userManagerService.mPackagesLock;
        synchronized (obj3) {
            try {
                try {
                    Object obj4 = userManagerService.mUsersLock;
                    synchronized (obj4) {
                        try {
                            pw.println("Users:");
                            int i = 0;
                            while (i < userManagerService.mUsers.size()) {
                                UserData userData = userManagerService.mUsers.valueAt(i);
                                if (userData == null) {
                                    obj2 = obj4;
                                } else {
                                    UserInfo userInfo = userData.info;
                                    int userId = userInfo.id;
                                    pw.print("  ");
                                    pw.print(userInfo);
                                    pw.print(" serialNo=");
                                    pw.print(userInfo.serialNumber);
                                    pw.print(" isPrimary=");
                                    pw.print(userInfo.isPrimary());
                                    if (userManagerService.mRemovingUserIds.get(userId)) {
                                        try {
                                            pw.print(" <removing> ");
                                        } catch (Throwable th) {
                                            th = th;
                                            obj2 = obj4;
                                            throw th;
                                        }
                                    }
                                    if (userInfo.partial) {
                                        pw.print(" <partial>");
                                    }
                                    if (userInfo.preCreated) {
                                        pw.print(" <pre-created>");
                                    }
                                    if (userInfo.convertedFromPreCreated) {
                                        pw.print(" <converted>");
                                    }
                                    pw.println();
                                    pw.print("    Type: ");
                                    pw.println(userInfo.userType);
                                    pw.print("    Flags: ");
                                    pw.print(userInfo.flags);
                                    pw.print(" (");
                                    pw.print(UserInfo.flagsToString(userInfo.flags));
                                    pw.println(")");
                                    pw.print("    State: ");
                                    synchronized (userManagerService.mUserStates) {
                                        try {
                                            try {
                                                state = userManagerService.mUserStates.get(userId, -1);
                                            } catch (Throwable th2) {
                                                th = th2;
                                                while (true) {
                                                    try {
                                                        throw th;
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                        }
                                    }
                                    pw.println(UserState.stateToString(state));
                                    pw.print("    Created: ");
                                    try {
                                        dumpTimeAgo(pw, sb, now, userInfo.creationTime);
                                        pw.print("    Last logged in: ");
                                        obj2 = obj4;
                                        try {
                                            dumpTimeAgo(pw, sb, now, userInfo.lastLoggedInTime);
                                            pw.print("    Last logged in fingerprint: ");
                                            pw.println(userInfo.lastLoggedInFingerprint);
                                            pw.print("    Start time: ");
                                            dumpTimeAgo(pw, sb, nowRealtime, userData.startRealtime);
                                            pw.print("    Unlock time: ");
                                            dumpTimeAgo(pw, sb, nowRealtime, userData.unlockRealtime);
                                            pw.print("    Has profile owner: ");
                                            userManagerService = this;
                                            try {
                                                pw.println(userManagerService.mIsUserManaged.get(userId));
                                                pw.println("    Restrictions:");
                                                synchronized (userManagerService.mRestrictionsLock) {
                                                    UserRestrictionsUtils.dumpRestrictions(pw, "      ", userManagerService.mBaseUserRestrictions.getRestrictions(userInfo.id));
                                                    pw.println("    Device policy global restrictions:");
                                                    UserRestrictionsUtils.dumpRestrictions(pw, "      ", userManagerService.mDevicePolicyGlobalUserRestrictions.getRestrictions(userInfo.id));
                                                    pw.println("    Device policy local restrictions:");
                                                    userManagerService.getDevicePolicyLocalRestrictionsForTargetUserLR(userInfo.id).dumpRestrictions(pw, "      ");
                                                    pw.println("    Effective restrictions:");
                                                    UserRestrictionsUtils.dumpRestrictions(pw, "      ", userManagerService.mCachedEffectiveUserRestrictions.getRestrictions(userInfo.id));
                                                }
                                                if (userData.account != null) {
                                                    pw.print("    Account name: " + userData.account);
                                                    pw.println();
                                                }
                                                if (userData.seedAccountName != null) {
                                                    pw.print("    Seed account name: " + userData.seedAccountName);
                                                    pw.println();
                                                    if (userData.seedAccountType != null) {
                                                        pw.print("         account type: " + userData.seedAccountType);
                                                        pw.println();
                                                    }
                                                    if (userData.seedAccountOptions != null) {
                                                        pw.print("         account options exist");
                                                        pw.println();
                                                    }
                                                }
                                                pw.println("    Ignore errors preparing storage: " + userData.getIgnorePrepareStorageErrors());
                                            } catch (Throwable th5) {
                                                th = th5;
                                                throw th;
                                            }
                                        } catch (Throwable th6) {
                                            th = th6;
                                        }
                                    } catch (Throwable th7) {
                                        th = th7;
                                        obj2 = obj4;
                                    }
                                }
                                i++;
                                obj3 = obj3;
                                amInternal = amInternal;
                                obj4 = obj2;
                            }
                            obj = obj3;
                            pw.println();
                            pw.println("  Device owner id:" + userManagerService.mDeviceOwnerUserId);
                            pw.println();
                            pw.println("  Guest restrictions:");
                            synchronized (userManagerService.mGuestRestrictions) {
                                UserRestrictionsUtils.dumpRestrictions(pw, "    ", userManagerService.mGuestRestrictions);
                            }
                            synchronized (userManagerService.mUsersLock) {
                                pw.println();
                                pw.println("  Device managed: " + userManagerService.mIsDeviceManaged);
                                if (userManagerService.mRemovingUserIds.size() > 0) {
                                    pw.println();
                                    pw.println("  Recently removed userIds: " + userManagerService.mRecentlyRemovedIds);
                                }
                            }
                            synchronized (userManagerService.mUserStates) {
                                pw.println("  Started users state: " + userManagerService.mUserStates);
                            }
                            synchronized (userManagerService.mUsersLock) {
                                pw.print("  Cached user IDs: ");
                                pw.println(Arrays.toString(userManagerService.mUserIds));
                                pw.print("  Cached user IDs (including pre-created): ");
                                pw.println(Arrays.toString(userManagerService.mUserIdsIncludingPreCreated));
                            }
                            pw.println();
                            pw.print("  Max users: " + UserManager.getMaxSupportedUsers());
                            pw.println(" (limit reached: " + isUserLimitReached() + ")");
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("  Supports switchable users: ");
                            sb2.append(UserManager.supportsMultipleUsers());
                            pw.println(sb2.toString());
                            pw.println("  All guests ephemeral: " + Resources.getSystem().getBoolean(R.bool.config_cecQuerySadDst_userConfigurable));
                            pw.println("  Force ephemeral users: " + userManagerService.mForceEphemeralUsers);
                            pw.println("  Is split-system user: " + UserManager.isSplitSystemUser());
                            pw.println("  Is headless-system mode: " + UserManager.isHeadlessSystemUserMode());
                            pw.println("  User version: " + userManagerService.mUserVersion);
                            pw.println();
                            pw.println("  User types (" + userManagerService.mUserTypes.size() + " types):");
                            for (int i2 = 0; i2 < userManagerService.mUserTypes.size(); i2++) {
                                pw.println("    " + userManagerService.mUserTypes.keyAt(i2) + ": ");
                                userManagerService.mUserTypes.valueAt(i2).dump(pw);
                            }
                            pw.println();
                            userManagerService.mSystemPackageInstaller.dump(pw);
                        } catch (Throwable th8) {
                            th = th8;
                            obj2 = obj4;
                        }
                    }
                } catch (Throwable th9) {
                    th = th9;
                    obj = obj3;
                    throw th;
                }
            } catch (Throwable th10) {
                th = th10;
                throw th;
            }
        }
    }

    private static void dumpTimeAgo(PrintWriter pw, StringBuilder sb, long nowTime, long time) {
        if (time == 0) {
            pw.println("<unknown>");
            return;
        }
        sb.setLength(0);
        TimeUtils.formatDuration(nowTime - time, sb);
        sb.append(" ago");
        pw.println(sb);
    }

    final class MainHandler extends Handler {
        MainHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                removeMessages(1, msg.obj);
                synchronized (UserManagerService.this.mPackagesLock) {
                    int userId = ((UserData) msg.obj).info.id;
                    UserData userData = UserManagerService.this.getUserDataNoChecks(userId);
                    if (userData != null) {
                        UserManagerService.this.writeUserLP(userData);
                    }
                }
            }
        }
    }

    boolean isUserInitialized(int userId) {
        return this.mLocalService.isUserInitialized(userId);
    }

    private class LocalService extends UserManagerInternal {
        private LocalService() {
        }

        /* synthetic */ LocalService(UserManagerService x0, AnonymousClass1 x1) {
            this();
        }

        @Override // android.os.UserManagerInternal
        public void setDevicePolicyUserRestrictions(int originatingUserId, Bundle global, RestrictionsSet local, boolean isDeviceOwner) {
            UserManagerService.this.setDevicePolicyUserRestrictionsInner(originatingUserId, global, local, isDeviceOwner);
        }

        @Override // android.os.UserManagerInternal
        public Bundle getBaseUserRestrictions(int userId) {
            Bundle restrictions;
            synchronized (UserManagerService.this.mRestrictionsLock) {
                restrictions = UserManagerService.this.mBaseUserRestrictions.getRestrictions(userId);
            }
            return restrictions;
        }

        @Override // android.os.UserManagerInternal
        public void setBaseUserRestrictionsByDpmsForMigration(int userId, Bundle baseRestrictions) {
            synchronized (UserManagerService.this.mRestrictionsLock) {
                if (UserManagerService.this.mBaseUserRestrictions.updateRestrictions(userId, new Bundle(baseRestrictions))) {
                    UserManagerService.this.invalidateEffectiveUserRestrictionsLR(userId);
                }
            }
            UserData userData = UserManagerService.this.getUserDataNoChecks(userId);
            synchronized (UserManagerService.this.mPackagesLock) {
                try {
                    if (userData != null) {
                        UserManagerService.this.writeUserLP(userData);
                    } else {
                        Slog.w(UserManagerService.LOG_TAG, "UserInfo not found for " + userId);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.os.UserManagerInternal
        public boolean getUserRestriction(int userId, String key) {
            return UserManagerService.this.getUserRestrictions(userId).getBoolean(key);
        }

        @Override // android.os.UserManagerInternal
        public void addUserRestrictionsListener(UserManagerInternal.UserRestrictionsListener listener) {
            synchronized (UserManagerService.this.mUserRestrictionsListeners) {
                UserManagerService.this.mUserRestrictionsListeners.add(listener);
            }
        }

        @Override // android.os.UserManagerInternal
        public void removeUserRestrictionsListener(UserManagerInternal.UserRestrictionsListener listener) {
            synchronized (UserManagerService.this.mUserRestrictionsListeners) {
                UserManagerService.this.mUserRestrictionsListeners.remove(listener);
            }
        }

        @Override // android.os.UserManagerInternal
        public void setDeviceManaged(boolean isManaged) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserManagerService.this.mIsDeviceManaged = isManaged;
            }
        }

        @Override // android.os.UserManagerInternal
        public boolean isDeviceManaged() {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                z = UserManagerService.this.mIsDeviceManaged;
            }
            return z;
        }

        @Override // android.os.UserManagerInternal
        public void setUserManaged(int userId, boolean isManaged) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserManagerService.this.mIsUserManaged.put(userId, isManaged);
            }
        }

        @Override // android.os.UserManagerInternal
        public boolean isUserManaged(int userId) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                z = UserManagerService.this.mIsUserManaged.get(userId);
            }
            return z;
        }

        @Override // android.os.UserManagerInternal
        public void setUserIcon(int userId, Bitmap bitmap) {
            long ident = Binder.clearCallingIdentity();
            try {
                synchronized (UserManagerService.this.mPackagesLock) {
                    UserData userData = UserManagerService.this.getUserDataNoChecks(userId);
                    if (userData != null && !userData.info.partial) {
                        UserManagerService.this.writeBitmapLP(userData.info, bitmap);
                        UserManagerService.this.writeUserLP(userData);
                        UserManagerService.this.sendUserInfoChangedBroadcast(userId);
                        Binder.restoreCallingIdentity(ident);
                        return;
                    }
                    Slog.w(UserManagerService.LOG_TAG, "setUserIcon: unknown user #" + userId);
                    Binder.restoreCallingIdentity(ident);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }

        @Override // android.os.UserManagerInternal
        public void setForceEphemeralUsers(boolean forceEphemeralUsers) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserManagerService.this.mForceEphemeralUsers = forceEphemeralUsers;
            }
        }

        @Override // android.os.UserManagerInternal
        public void removeAllUsers() {
            if (ActivityManager.getCurrentUser() == 0) {
                UserManagerService.this.removeNonSystemUsers();
                return;
            }
            BroadcastReceiver userSwitchedReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.UserManagerService.LocalService.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                    if (userId == 0) {
                        UserManagerService.this.mContext.unregisterReceiver(this);
                        UserManagerService.this.removeNonSystemUsers();
                    }
                }
            };
            IntentFilter userSwitchedFilter = new IntentFilter();
            userSwitchedFilter.addAction("android.intent.action.USER_SWITCHED");
            UserManagerService.this.mContext.registerReceiver(userSwitchedReceiver, userSwitchedFilter, null, UserManagerService.this.mHandler);
            ActivityManager am = (ActivityManager) UserManagerService.this.mContext.getSystemService("activity");
            am.switchUser(0);
        }

        @Override // android.os.UserManagerInternal
        public void onEphemeralUserStop(int userId) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserInfo userInfo = UserManagerService.this.getUserInfoLU(userId);
                if (userInfo != null && userInfo.isEphemeral()) {
                    userInfo.flags |= 64;
                    if (userInfo.isGuest()) {
                        userInfo.guestToRemove = true;
                    }
                }
            }
        }

        @Override // android.os.UserManagerInternal
        public UserInfo createUserEvenWhenDisallowed(String name, String userType, int flags, String[] disallowedPackages) throws UserManager.CheckedUserOperationException {
            return UserManagerService.this.createUserInternalUnchecked(name, userType, flags, -10000, false, disallowedPackages);
        }

        @Override // android.os.UserManagerInternal
        public boolean removeUserEvenWhenDisallowed(int userId) {
            return UserManagerService.this.removeUserUnchecked(userId);
        }

        @Override // android.os.UserManagerInternal
        public boolean isUserRunning(int userId) {
            boolean z;
            synchronized (UserManagerService.this.mUserStates) {
                z = UserManagerService.this.mUserStates.get(userId, -1) >= 0;
            }
            return z;
        }

        @Override // android.os.UserManagerInternal
        public void setUserState(int userId, int userState) {
            synchronized (UserManagerService.this.mUserStates) {
                UserManagerService.this.mUserStates.put(userId, userState);
            }
        }

        @Override // android.os.UserManagerInternal
        public void removeUserState(int userId) {
            synchronized (UserManagerService.this.mUserStates) {
                UserManagerService.this.mUserStates.delete(userId);
            }
        }

        @Override // android.os.UserManagerInternal
        public int[] getUserIds() {
            return UserManagerService.this.getUserIds();
        }

        @Override // android.os.UserManagerInternal
        public List<UserInfo> getUsers(boolean excludeDying) {
            return getUsers(true, excludeDying, true);
        }

        @Override // android.os.UserManagerInternal
        public List<UserInfo> getUsers(boolean excludePartial, boolean excludeDying, boolean excludePreCreated) {
            return UserManagerService.this.getUsersInternal(excludePartial, excludeDying, excludePreCreated);
        }

        @Override // android.os.UserManagerInternal
        public boolean isUserUnlockingOrUnlocked(int userId) {
            int state;
            synchronized (UserManagerService.this.mUserStates) {
                state = UserManagerService.this.mUserStates.get(userId, -1);
            }
            if (state == 4 || state == 5) {
                return StorageManager.isUserKeyUnlocked(userId);
            }
            return state == 2 || state == 3;
        }

        @Override // android.os.UserManagerInternal
        public boolean isUserUnlocked(int userId) {
            int state;
            synchronized (UserManagerService.this.mUserStates) {
                state = UserManagerService.this.mUserStates.get(userId, -1);
            }
            if (state == 4 || state == 5) {
                return StorageManager.isUserKeyUnlocked(userId);
            }
            return state == 3;
        }

        @Override // android.os.UserManagerInternal
        public boolean isUserInitialized(int userId) {
            return (getUserInfo(userId).flags & 16) != 0;
        }

        @Override // android.os.UserManagerInternal
        public boolean exists(int userId) {
            return UserManagerService.this.getUserInfoNoChecks(userId) != null;
        }

        @Override // android.os.UserManagerInternal
        public boolean isProfileAccessible(int callingUserId, int targetUserId, String debugMsg, boolean throwSecurityException) {
            if (targetUserId != callingUserId) {
                synchronized (UserManagerService.this.mUsersLock) {
                    UserInfo callingUserInfo = UserManagerService.this.getUserInfoLU(callingUserId);
                    if ((callingUserInfo != null && !callingUserInfo.isProfile()) || !throwSecurityException) {
                        UserInfo targetUserInfo = UserManagerService.this.getUserInfoLU(targetUserId);
                        if (targetUserInfo != null && targetUserInfo.isEnabled()) {
                            if (targetUserInfo.profileGroupId != -10000 && targetUserInfo.profileGroupId == callingUserInfo.profileGroupId) {
                                return true;
                            }
                            if (!throwSecurityException) {
                                return false;
                            }
                            throw new SecurityException(debugMsg + " for unrelated profile " + targetUserId);
                        }
                        if (throwSecurityException) {
                            Slog.w(UserManagerService.LOG_TAG, debugMsg + " for disabled profile " + targetUserId + " from " + callingUserId);
                        }
                        return false;
                    }
                    throw new SecurityException(debugMsg + " for another profile " + targetUserId + " from " + callingUserId);
                }
            }
            return true;
        }

        @Override // android.os.UserManagerInternal
        public int getProfileParentId(int userId) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserInfo profileParent = UserManagerService.this.getProfileParentLU(userId);
                if (profileParent == null) {
                    return userId;
                }
                return profileParent.id;
            }
        }

        @Override // android.os.UserManagerInternal
        public boolean isSettingRestrictedForUser(String setting, int userId, String value, int callingUid) {
            return UserManagerService.this.isSettingRestrictedForUser(setting, userId, value, callingUid);
        }

        @Override // android.os.UserManagerInternal
        public boolean hasUserRestriction(String restrictionKey, int userId) {
            Bundle restrictions;
            return UserRestrictionsUtils.isValidRestriction(restrictionKey) && (restrictions = UserManagerService.this.getEffectiveUserRestrictions(userId)) != null && restrictions.getBoolean(restrictionKey);
        }

        @Override // android.os.UserManagerInternal
        public UserInfo getUserInfo(int userId) {
            UserData userData;
            synchronized (UserManagerService.this.mUsersLock) {
                userData = (UserData) UserManagerService.this.mUsers.get(userId);
            }
            if (userData == null) {
                return null;
            }
            return userData.info;
        }

        @Override // android.os.UserManagerInternal
        public UserInfo[] getUserInfos() {
            UserInfo[] allInfos;
            synchronized (UserManagerService.this.mUsersLock) {
                int userSize = UserManagerService.this.mUsers.size();
                allInfos = new UserInfo[userSize];
                for (int i = 0; i < userSize; i++) {
                    allInfos[i] = ((UserData) UserManagerService.this.mUsers.valueAt(i)).info;
                }
            }
            return allInfos;
        }

        @Override // android.os.UserManagerInternal
        public boolean shouldIgnorePrepareStorageErrors(int userId) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                UserData userData = (UserData) UserManagerService.this.mUsers.get(userId);
                z = userData != null && userData.getIgnorePrepareStorageErrors();
            }
            return z;
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.UserManager$CheckedUserOperationException */
    private void enforceUserRestriction(String restriction, int userId, String message) throws UserManager.CheckedUserOperationException {
        String str;
        if (hasUserRestriction(restriction, userId)) {
            StringBuilder sb = new StringBuilder();
            if (message != null) {
                str = message + ": ";
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(restriction);
            sb.append(" is enabled.");
            String errorMessage = sb.toString();
            Slog.w(LOG_TAG, errorMessage);
            throw new UserManager.CheckedUserOperationException(errorMessage, 1);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.UserManager$CheckedUserOperationException */
    private void throwCheckedUserOperationException(String message, int userOperationResult) throws UserManager.CheckedUserOperationException {
        Slog.e(LOG_TAG, message);
        throw new UserManager.CheckedUserOperationException(message, userOperationResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNonSystemUsers() {
        ArrayList<UserInfo> usersToRemove = new ArrayList<>();
        synchronized (this.mUsersLock) {
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo ui = this.mUsers.valueAt(i).info;
                if (ui.id != 0) {
                    usersToRemove.add(ui);
                }
            }
        }
        Iterator<UserInfo> it = usersToRemove.iterator();
        while (it.hasNext()) {
            removeUser(it.next().id);
        }
    }

    private class Shell extends ShellCommand {
        private Shell() {
        }

        /* synthetic */ Shell(UserManagerService x0, AnonymousClass1 x1) {
            this();
        }

        public int onCommand(String cmd) {
            return UserManagerService.this.onShellCommand(this, cmd);
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            pw.println("User manager (user) commands:");
            pw.println("  help");
            pw.println("    Prints this help text.");
            pw.println("");
            pw.println("  list [-v] [-all]");
            pw.println("    Prints all users on the system.");
            pw.println("  report-system-user-package-whitelist-problems [-v | --verbose] [--critical-only] [--mode MODE]");
            pw.println("    Reports all issues on user-type package whitelist XML files. Options:");
            pw.println("    -v | --verbose : shows extra info, like number of issues");
            pw.println("    --critical-only: show only critical issues, excluding warnings");
            pw.println("    --mode MODE: shows what errors would be if device used mode MODE (where MODE is the whitelist mode integer as defined by config_userTypePackageWhitelistMode)");
        }
    }

    private static void debug(String message) {
        Slog.d(LOG_TAG, message + "");
    }

    int getMaxUsersOfTypePerParent(String userType) {
        UserTypeDetails type = this.mUserTypes.get(userType);
        if (type == null) {
            return 0;
        }
        return getMaxUsersOfTypePerParent(type);
    }

    private static int getMaxUsersOfTypePerParent(UserTypeDetails userTypeDetails) {
        int defaultMax = userTypeDetails.getMaxAllowedPerParent();
        if (Build.IS_DEBUGGABLE && userTypeDetails.isManagedProfile()) {
            return SystemProperties.getInt("persist.sys.max_profiles", defaultMax);
        }
        return defaultMax;
    }

    int getFreeProfileBadgeLU(int parentUserId, String userType) {
        Set<Integer> usedBadges = new ArraySet<>();
        int userSize = this.mUsers.size();
        for (int i = 0; i < userSize; i++) {
            UserInfo ui = this.mUsers.valueAt(i).info;
            if (ui.userType.equals(userType) && ui.profileGroupId == parentUserId && !this.mRemovingUserIds.get(ui.id)) {
                usedBadges.add(Integer.valueOf(ui.profileBadge));
            }
        }
        int maxUsersOfType = getMaxUsersOfTypePerParent(userType);
        if (maxUsersOfType == -1) {
            maxUsersOfType = Integer.MAX_VALUE;
        }
        for (int i2 = 0; i2 < maxUsersOfType; i2++) {
            if (!usedBadges.contains(Integer.valueOf(i2))) {
                return i2;
            }
        }
        return 0;
    }

    boolean hasManagedProfile(int userId) {
        synchronized (this.mUsersLock) {
            UserInfo userInfo = getUserInfoLU(userId);
            int userSize = this.mUsers.size();
            for (int i = 0; i < userSize; i++) {
                UserInfo profile = this.mUsers.valueAt(i).info;
                if (userId != profile.id && isProfileOf(userInfo, profile)) {
                    return true;
                }
            }
            return false;
        }
    }

    private void verifyCallingPackage(String callingPackage, int callingUid) {
        int packageUid = this.mPm.getPackageUid(callingPackage, 0, UserHandle.getUserId(callingUid));
        if (packageUid != callingUid) {
            throw new SecurityException("Specified package " + callingPackage + " does not match the calling uid " + callingUid);
        }
    }

    private PackageManagerInternal getPackageManagerInternal() {
        if (this.mPmInternal == null) {
            this.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }
        return this.mPmInternal;
    }

    private CrossProfileAppsInternal getCrossProfileAppsInternal() {
        if (this.mCrossProfileAppsInternal == null) {
            this.mCrossProfileAppsInternal = (CrossProfileAppsInternal) LocalServices.getService(CrossProfileAppsInternal.class);
        }
        return this.mCrossProfileAppsInternal;
    }

    private DevicePolicyManagerInternal getDevicePolicyManagerInternal() {
        if (this.mDevicePolicyManagerInternal == null) {
            this.mDevicePolicyManagerInternal = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        }
        return this.mDevicePolicyManagerInternal;
    }
}
