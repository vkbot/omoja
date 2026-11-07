package com.android.server.media;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.INotificationManager;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ParceledListSlice;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.media.AudioManagerInternal;
import android.media.AudioPlaybackConfiguration;
import android.media.AudioSystem;
import android.media.IRemoteVolumeController;
import android.media.Session2Token;
import android.media.session.IActiveSessionsListener;
import android.media.session.IOnMediaKeyEventDispatchedListener;
import android.media.session.IOnMediaKeyEventSessionChangedListener;
import android.media.session.IOnMediaKeyListener;
import android.media.session.IOnVolumeKeyLongPressListener;
import android.media.session.ISession;
import android.media.session.ISession2TokensListener;
import android.media.session.ISessionCallback;
import android.media.session.ISessionManager;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.android.internal.util.DumpUtils;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.Watchdog;
import com.android.server.job.controllers.JobStatus;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MediaSessionService extends SystemService implements Watchdog.Monitor {
    static final boolean DEBUG_KEY_EVENT = true;
    private static final int MEDIA_KEY_LISTENER_TIMEOUT = 1000;
    private static final int SESSION_CREATION_LIMIT_PER_UID = 100;
    private static final int TEMP_ALLOW_WHILE_IN_USE_PERMISSION_IN_FGS_DURATION_MS = 10000;
    private static final int WAKELOCK_TIMEOUT = 5000;
    private ActivityManagerInternal mActivityManagerInternal;
    private AudioManagerInternal mAudioManagerInternal;
    private AudioPlayerStateMonitor mAudioPlayerStateMonitor;
    private ContentResolver mContentResolver;
    private final Context mContext;
    private FullUserRecord mCurrentFullUserRecord;
    private MediaKeyDispatcher mCustomMediaKeyDispatcher;
    private SessionPolicyProvider mCustomSessionPolicyProvider;
    private boolean mEnableMediaButtonReceiverConfig;
    private final SparseIntArray mFullUserIds;
    private MediaSessionRecord mGlobalPrioritySession;
    private final MessageHandler mHandler;
    private boolean mHasFeatureLeanback;
    private KeyguardManager mKeyguardManager;
    private final Object mLock;
    private String[] mMediaButtonReceiverPackageWhiteList;
    private final PowerManager.WakeLock mMediaEventWakeLock;
    private final INotificationManager mNotificationManager;
    private Map<Integer, Integer> mOverriddenKeyEventsMap;
    private final HandlerThread mRecordThread;
    final RemoteCallbackList<IRemoteVolumeController> mRemoteVolumeControllers;
    private final List<Session2TokensListenerRecord> mSession2TokensListenerRecords;
    private final SessionManagerImpl mSessionManagerImpl;
    private final ArrayList<SessionsListenerRecord> mSessionsListeners;
    private SettingsObserver mSettingsObserver;
    private final SparseArray<FullUserRecord> mUserRecords;
    private static final String TAG = "MediaSessionService";
    static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final int LONG_PRESS_TIMEOUT = ViewConfiguration.getLongPressTimeout() + 50;
    private static final int MULTI_TAP_TIMEOUT = ViewConfiguration.getMultiPressTimeout();

    public MediaSessionService(Context context) {
        super(context);
        this.mHandler = new MessageHandler();
        this.mLock = new Object();
        this.mRecordThread = new HandlerThread("SessionRecordThread");
        this.mFullUserIds = new SparseIntArray();
        this.mUserRecords = new SparseArray<>();
        this.mSessionsListeners = new ArrayList<>();
        this.mSession2TokensListenerRecords = new ArrayList();
        this.mRemoteVolumeControllers = new RemoteCallbackList<>();
        this.mContext = context;
        this.mSessionManagerImpl = new SessionManagerImpl();
        PowerManager pm = (PowerManager) context.getSystemService("power");
        this.mMediaEventWakeLock = pm.newWakeLock(1, "handleMediaEvent");
        this.mNotificationManager = INotificationManager.Stub.asInterface(ServiceManager.getService("notification"));
        this.mEnableMediaButtonReceiverConfig = this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadAacDisabled_allowed);
        this.mMediaButtonReceiverPackageWhiteList = this.mContext.getResources().getStringArray(R.array.config_network_type_tcp_buffers);
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("media_session", this.mSessionManagerImpl);
        Watchdog.getInstance().addMonitor(this);
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        this.mKeyguardManager = (KeyguardManager) this.mContext.getSystemService("keyguard");
        this.mAudioManagerInternal = (AudioManagerInternal) LocalServices.getService(AudioManagerInternal.class);
        AudioPlayerStateMonitor audioPlayerStateMonitor = AudioPlayerStateMonitor.getInstance(this.mContext);
        this.mAudioPlayerStateMonitor = audioPlayerStateMonitor;
        audioPlayerStateMonitor.registerListener(new AudioPlayerStateMonitor.OnAudioPlayerActiveStateChangedListener() { // from class: com.android.server.media.-$$Lambda$MediaSessionService$za_9dlUSlnaiZw6eCdPVEZq0XLw
            @Override // com.android.server.media.AudioPlayerStateMonitor.OnAudioPlayerActiveStateChangedListener
            public final void onAudioPlayerActiveStateChanged(AudioPlaybackConfiguration audioPlaybackConfiguration, boolean z) {
                this.f$0.lambda$onStart$0$MediaSessionService(audioPlaybackConfiguration, z);
            }
        }, null);
        this.mContentResolver = this.mContext.getContentResolver();
        SettingsObserver settingsObserver = new SettingsObserver();
        this.mSettingsObserver = settingsObserver;
        settingsObserver.observe();
        this.mHasFeatureLeanback = this.mContext.getPackageManager().hasSystemFeature("android.software.leanback");
        updateUser();
        instantiateCustomProvider(null);
        instantiateCustomDispatcher(null);
        this.mRecordThread.start();
    }

    public /* synthetic */ void lambda$onStart$0$MediaSessionService(AudioPlaybackConfiguration config, boolean isRemoved) {
        if (DEBUG) {
            Log.d(TAG, "Audio playback is changed, config=" + config + ", removed=" + isRemoved);
        }
        if (config.getPlayerType() == 3) {
            return;
        }
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(UserHandle.getUserHandleForUid(config.getClientUid()).getIdentifier());
            if (user != null) {
                user.mPriorityStack.updateMediaButtonSessionIfNeeded();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isGlobalPriorityActiveLocked() {
        MediaSessionRecord mediaSessionRecord = this.mGlobalPrioritySession;
        return mediaSessionRecord != null && mediaSessionRecord.isActive();
    }

    void onSessionActiveStateChanged(MediaSessionRecordImpl record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (user == null) {
                Log.w(TAG, "Unknown session updated. Ignoring.");
                return;
            }
            if (record.isSystemPriority()) {
                Log.d(TAG, "Global priority session is updated, active=" + record.isActive());
                user.pushAddressedPlayerChangedLocked();
            } else {
                if (!user.mPriorityStack.contains(record)) {
                    Log.w(TAG, "Unknown session updated. Ignoring.");
                    return;
                }
                user.mPriorityStack.onSessionActiveStateChanged(record);
            }
            this.mHandler.postSessionsChanged(record);
        }
    }

    void setGlobalPrioritySession(MediaSessionRecord record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (this.mGlobalPrioritySession != record) {
                Log.d(TAG, "Global priority session is changed from " + this.mGlobalPrioritySession + " to " + record);
                this.mGlobalPrioritySession = record;
                if (user != null && user.mPriorityStack.contains(record)) {
                    user.mPriorityStack.removeSession(record);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaSessionRecord> getActiveSessionsLocked(int userId) {
        List<MediaSessionRecord> records = new ArrayList<>();
        if (userId == -1) {
            int size = this.mUserRecords.size();
            for (int i = 0; i < size; i++) {
                records.addAll(this.mUserRecords.valueAt(i).mPriorityStack.getActiveSessions(userId));
            }
        } else {
            FullUserRecord user = getFullUserRecordLocked(userId);
            if (user == null) {
                Log.w(TAG, "getSessions failed. Unknown user " + userId);
                return records;
            }
            records.addAll(user.mPriorityStack.getActiveSessions(userId));
        }
        if (isGlobalPriorityActiveLocked() && (userId == -1 || userId == this.mGlobalPrioritySession.getUserId())) {
            records.add(0, this.mGlobalPrioritySession);
        }
        return records;
    }

    List<Session2Token> getSession2TokensLocked(int userId) {
        List<Session2Token> list = new ArrayList<>();
        if (userId == -1) {
            int size = this.mUserRecords.size();
            for (int i = 0; i < size; i++) {
                list.addAll(this.mUserRecords.valueAt(i).mPriorityStack.getSession2Tokens(userId));
            }
        } else {
            FullUserRecord user = getFullUserRecordLocked(userId);
            list.addAll(user.mPriorityStack.getSession2Tokens(userId));
        }
        return list;
    }

    public void notifyRemoteVolumeChanged(int flags, MediaSessionRecord session) {
        if (!session.isActive()) {
            return;
        }
        synchronized (this.mLock) {
            int size = this.mRemoteVolumeControllers.beginBroadcast();
            MediaSession.Token token = session.getSessionToken();
            for (int i = size - 1; i >= 0; i--) {
                try {
                    IRemoteVolumeController cb = this.mRemoteVolumeControllers.getBroadcastItem(i);
                    cb.remoteVolumeChanged(token, flags);
                } catch (Exception e) {
                    Log.w(TAG, "Error sending volume change.", e);
                }
            }
            this.mRemoteVolumeControllers.finishBroadcast();
        }
    }

    void onSessionPlaybackStateChanged(MediaSessionRecordImpl record, boolean shouldUpdatePriority) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (user != null && user.mPriorityStack.contains(record)) {
                user.mPriorityStack.onPlaybackStateChanged(record, shouldUpdatePriority);
                return;
            }
            Log.d(TAG, "Unknown session changed playback state. Ignoring.");
        }
    }

    void onSessionPlaybackTypeChanged(MediaSessionRecord record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            if (user != null && user.mPriorityStack.contains(record)) {
                pushRemoteVolumeUpdateLocked(record.getUserId());
                return;
            }
            Log.d(TAG, "Unknown session changed playback type. Ignoring.");
        }
    }

    @Override // com.android.server.SystemService
    public void onStartUser(int userId) {
        if (DEBUG) {
            Log.d(TAG, "onStartUser: " + userId);
        }
        updateUser();
    }

    @Override // com.android.server.SystemService
    public void onSwitchUser(int userId) {
        if (DEBUG) {
            Log.d(TAG, "onSwitchUser: " + userId);
        }
        updateUser();
    }

    @Override // com.android.server.SystemService
    public void onCleanupUser(int userId) {
        if (DEBUG) {
            Log.d(TAG, "onCleanupUser: " + userId);
        }
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(userId);
            if (user != null) {
                if (user.mFullUserId == userId) {
                    user.destroySessionsForUserLocked(-1);
                    this.mUserRecords.remove(userId);
                } else {
                    user.destroySessionsForUserLocked(userId);
                }
            }
            updateUser();
        }
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        synchronized (this.mLock) {
        }
    }

    protected void enforcePhoneStatePermission(int pid, int uid) {
        if (this.mContext.checkPermission("android.permission.MODIFY_PHONE_STATE", pid, uid) != 0) {
            throw new SecurityException("Must hold the MODIFY_PHONE_STATE permission.");
        }
    }

    void onSessionDied(MediaSessionRecordImpl session) {
        synchronized (this.mLock) {
            destroySessionLocked(session);
        }
    }

    private void updateUser() {
        synchronized (this.mLock) {
            UserManager manager = (UserManager) this.mContext.getSystemService("user");
            this.mFullUserIds.clear();
            List<UserInfo> allUsers = manager.getUsers();
            if (allUsers != null) {
                for (UserInfo userInfo : allUsers) {
                    if (userInfo.isManagedProfile()) {
                        this.mFullUserIds.put(userInfo.id, userInfo.profileGroupId);
                    } else {
                        this.mFullUserIds.put(userInfo.id, userInfo.id);
                        if (this.mUserRecords.get(userInfo.id) == null) {
                            this.mUserRecords.put(userInfo.id, new FullUserRecord(userInfo.id));
                        }
                    }
                }
            }
            int currentFullUserId = ActivityManager.getCurrentUser();
            FullUserRecord fullUserRecord = this.mUserRecords.get(currentFullUserId);
            this.mCurrentFullUserRecord = fullUserRecord;
            if (fullUserRecord == null) {
                Log.w(TAG, "Cannot find FullUserInfo for the current user " + currentFullUserId);
                FullUserRecord fullUserRecord2 = new FullUserRecord(currentFullUserId);
                this.mCurrentFullUserRecord = fullUserRecord2;
                this.mUserRecords.put(currentFullUserId, fullUserRecord2);
            }
            this.mFullUserIds.put(currentFullUserId, currentFullUserId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateActiveSessionListeners() {
        synchronized (this.mLock) {
            for (int i = this.mSessionsListeners.size() - 1; i >= 0; i--) {
                SessionsListenerRecord listener = this.mSessionsListeners.get(i);
                try {
                    enforceMediaPermissions(listener.componentName, listener.pid, listener.uid, listener.userId);
                } catch (SecurityException e) {
                    Log.i(TAG, "ActiveSessionsListener " + listener.componentName + " is no longer authorized. Disconnecting.");
                    this.mSessionsListeners.remove(i);
                    try {
                        listener.listener.onActiveSessionsChanged(new ArrayList());
                    } catch (Exception e2) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroySessionLocked(MediaSessionRecordImpl session) {
        if (DEBUG) {
            Log.d(TAG, "Destroying " + session);
        }
        if (session.isClosed()) {
            Log.w(TAG, "Destroying already destroyed session. Ignoring.");
            return;
        }
        FullUserRecord user = getFullUserRecordLocked(session.getUserId());
        if (user != null && (session instanceof MediaSessionRecord)) {
            int uid = session.getUid();
            int sessionCount = user.mUidToSessionCount.get(uid, 0);
            if (sessionCount <= 0) {
                Log.w(TAG, "destroySessionLocked: sessionCount should be positive. sessionCount=" + sessionCount);
            } else {
                user.mUidToSessionCount.put(uid, sessionCount - 1);
            }
        }
        if (this.mGlobalPrioritySession == session) {
            this.mGlobalPrioritySession = null;
            if (session.isActive() && user != null) {
                user.pushAddressedPlayerChangedLocked();
            }
        } else if (user != null) {
            user.mPriorityStack.removeSession(session);
        }
        session.close();
        this.mHandler.postSessionsChanged(session);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforcePackageName(String packageName, int uid) {
        if (TextUtils.isEmpty(packageName)) {
            throw new IllegalArgumentException("packageName may not be empty");
        }
        String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
        for (String str : packages) {
            if (packageName.equals(str)) {
                return;
            }
        }
        throw new IllegalArgumentException("packageName is not owned by the calling process");
    }

    void tempAllowlistTargetPkgIfPossible(int targetUid, String targetPackage, int callingPid, int callingUid, String callingPackage, String reason) {
        long token = Binder.clearCallingIdentity();
        try {
            enforcePackageName(callingPackage, callingUid);
            if (targetUid != callingUid && this.mActivityManagerInternal.canAllowWhileInUsePermissionInFgs(callingPid, callingUid, callingPackage)) {
                Log.d(TAG, "tempAllowlistTargetPkgIfPossible callingPackage:" + callingPackage + " targetPackage:" + targetPackage + " reason:" + reason);
                this.mActivityManagerInternal.tempAllowWhileInUsePermissionInFgs(targetUid, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
            }
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceMediaPermissions(ComponentName compName, int pid, int uid, int resolvedUserId) {
        if (!hasStatusBarServicePermission(pid, uid) && this.mContext.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", pid, uid) != 0 && !isEnabledNotificationListener(compName, UserHandle.getUserHandleForUid(uid).getIdentifier(), resolvedUserId)) {
            throw new SecurityException("Missing permission to control media.");
        }
    }

    private boolean hasStatusBarServicePermission(int pid, int uid) {
        return this.mContext.checkPermission("android.permission.STATUS_BAR_SERVICE", pid, uid) == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enforceStatusBarServicePermission(String action, int pid, int uid) {
        if (!hasStatusBarServicePermission(pid, uid)) {
            throw new SecurityException("Only System UI and Settings may " + action);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hasMediaControlPermission(int pid, int uid) {
        if (uid == 1000 || this.mContext.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", pid, uid) == 0) {
            return true;
        }
        if (DEBUG) {
            Log.d(TAG, "uid(" + uid + ") hasn't granted MEDIA_CONTENT_CONTROL");
            return false;
        }
        return false;
    }

    private boolean isEnabledNotificationListener(ComponentName compName, int userId, int forUserId) {
        if (userId != forUserId) {
            return false;
        }
        if (DEBUG) {
            Log.d(TAG, "Checking if enabled notification listener " + compName);
        }
        if (compName != null) {
            try {
                return this.mNotificationManager.isNotificationListenerAccessGrantedForUser(compName, userId);
            } catch (RemoteException e) {
                Log.w(TAG, "Dead NotificationManager in isEnabledNotificationListener", e);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaSessionRecord createSessionInternal(int callerPid, int callerUid, int userId, String callerPackageName, ISessionCallback cb, String tag, Bundle sessionInfo) throws Throwable {
        Object obj;
        int policies;
        Object obj2 = this.mLock;
        synchronized (obj2) {
            try {
                try {
                    if (this.mCustomSessionPolicyProvider == null) {
                        policies = 0;
                    } else {
                        int policies2 = this.mCustomSessionPolicyProvider.getSessionPoliciesForApplication(callerUid, callerPackageName);
                        policies = policies2;
                    }
                    FullUserRecord user = getFullUserRecordLocked(userId);
                    if (user == null) {
                        Log.w(TAG, "Request from invalid user: " + userId + ", pkg=" + callerPackageName);
                        throw new RuntimeException("Session request from invalid user.");
                    }
                    int sessionCount = user.mUidToSessionCount.get(callerUid, 0);
                    if (sessionCount >= 100 && !hasMediaControlPermission(callerPid, callerUid)) {
                        throw new RuntimeException("Created too many sessions. count=" + sessionCount + ")");
                    }
                    try {
                        obj = obj2;
                        try {
                            try {
                                MediaSessionRecord session = new MediaSessionRecord(callerPid, callerUid, userId, callerPackageName, cb, tag, sessionInfo, this, this.mRecordThread.getLooper(), policies);
                                user.mUidToSessionCount.put(callerUid, sessionCount + 1);
                                user.mPriorityStack.addSession(session);
                                this.mHandler.postSessionsChanged(session);
                                if (DEBUG) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Created session for ");
                                    sb.append(callerPackageName);
                                    sb.append(" with tag ");
                                    sb.append(tag);
                                    Log.d(TAG, sb.toString());
                                }
                                return session;
                            } catch (RemoteException e) {
                                e = e;
                                throw new RuntimeException("Media Session owner died prematurely.", e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    } catch (RemoteException e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findIndexOfSessionsListenerLocked(IActiveSessionsListener listener) {
        for (int i = this.mSessionsListeners.size() - 1; i >= 0; i--) {
            if (this.mSessionsListeners.get(i).listener.asBinder() == listener.asBinder()) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findIndexOfSession2TokensListenerLocked(ISession2TokensListener listener) {
        for (int i = this.mSession2TokensListenerRecords.size() - 1; i >= 0; i--) {
            if (this.mSession2TokensListenerRecords.get(i).listener.asBinder() == listener.asBinder()) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pushSession1Changed(int userId) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(userId);
            if (user == null) {
                Log.w(TAG, "pushSession1ChangedOnHandler failed. No user with id=" + userId);
                return;
            }
            List<MediaSessionRecord> records = getActiveSessionsLocked(userId);
            int size = records.size();
            ArrayList<MediaSession.Token> tokens = new ArrayList<>();
            for (int i = 0; i < size; i++) {
                tokens.add(records.get(i).getSessionToken());
            }
            pushRemoteVolumeUpdateLocked(userId);
            for (int i2 = this.mSessionsListeners.size() - 1; i2 >= 0; i2--) {
                SessionsListenerRecord record = this.mSessionsListeners.get(i2);
                if (record.userId == -1 || record.userId == userId) {
                    try {
                        record.listener.onActiveSessionsChanged(tokens);
                    } catch (RemoteException e) {
                        Log.w(TAG, "Dead ActiveSessionsListener in pushSessionsChanged, removing", e);
                        this.mSessionsListeners.remove(i2);
                    }
                }
            }
        }
    }

    void pushSession2Changed(int userId) {
        synchronized (this.mLock) {
            List<Session2Token> allSession2Tokens = getSession2TokensLocked(-1);
            List<Session2Token> session2Tokens = getSession2TokensLocked(userId);
            for (int i = this.mSession2TokensListenerRecords.size() - 1; i >= 0; i--) {
                Session2TokensListenerRecord listenerRecord = this.mSession2TokensListenerRecords.get(i);
                try {
                    if (listenerRecord.userId == -1) {
                        listenerRecord.listener.onSession2TokensChanged(allSession2Tokens);
                    } else if (listenerRecord.userId == userId) {
                        listenerRecord.listener.onSession2TokensChanged(session2Tokens);
                    }
                } catch (RemoteException e) {
                    Log.w(TAG, "Failed to notify Session2Token change. Removing listener.", e);
                    this.mSession2TokensListenerRecords.remove(i);
                }
            }
        }
    }

    private void pushRemoteVolumeUpdateLocked(int userId) {
        FullUserRecord user = getFullUserRecordLocked(userId);
        if (user == null) {
            Log.w(TAG, "pushRemoteVolumeUpdateLocked failed. No user with id=" + userId);
            return;
        }
        synchronized (this.mLock) {
            int size = this.mRemoteVolumeControllers.beginBroadcast();
            MediaSessionRecordImpl record = user.mPriorityStack.getDefaultRemoteSession(userId);
            if (record instanceof MediaSession2Record) {
                return;
            }
            MediaSession.Token token = record == null ? null : ((MediaSessionRecord) record).getSessionToken();
            for (int i = size - 1; i >= 0; i--) {
                try {
                    IRemoteVolumeController cb = this.mRemoteVolumeControllers.getBroadcastItem(i);
                    cb.updateRemoteController(token);
                } catch (Exception e) {
                    Log.w(TAG, "Error sending default remote volume.", e);
                }
            }
            this.mRemoteVolumeControllers.finishBroadcast();
        }
    }

    public void onMediaButtonReceiverChanged(MediaSessionRecordImpl record) {
        synchronized (this.mLock) {
            FullUserRecord user = getFullUserRecordLocked(record.getUserId());
            MediaSessionRecordImpl mediaButtonSession = user.mPriorityStack.getMediaButtonSession();
            if (record == mediaButtonSession) {
                user.rememberMediaButtonReceiverLocked(mediaButtonSession);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCallingPackageName(int uid) {
        String[] packages = this.mContext.getPackageManager().getPackagesForUid(uid);
        if (packages != null && packages.length > 0) {
            return packages[0];
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchVolumeKeyLongPressLocked(KeyEvent keyEvent) {
        if (this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener == null) {
            return;
        }
        try {
            this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener.onVolumeKeyLongPress(keyEvent);
        } catch (RemoteException e) {
            Log.w(TAG, "Failed to send " + keyEvent + " to volume key long-press listener");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FullUserRecord getFullUserRecordLocked(int userId) {
        int fullUserId = this.mFullUserIds.get(userId, -1);
        if (fullUserId < 0) {
            return null;
        }
        return this.mUserRecords.get(fullUserId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaSessionRecord getMediaSessionRecordLocked(MediaSession.Token sessionToken) {
        FullUserRecord user = getFullUserRecordLocked(UserHandle.getUserId(sessionToken.getUid()));
        if (user == null) {
            return null;
        }
        return user.mPriorityStack.getMediaSessionRecord(sessionToken);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void instantiateCustomDispatcher(String nameFromTesting) {
        String customDispatcherClassName;
        synchronized (this.mLock) {
            this.mCustomMediaKeyDispatcher = null;
            this.mOverriddenKeyEventsMap = null;
            if (nameFromTesting == null) {
                customDispatcherClassName = this.mContext.getResources().getString(R.string.config_defaultSupervisionProfileOwnerComponent);
            } else {
                customDispatcherClassName = nameFromTesting;
            }
            try {
                if (!TextUtils.isEmpty(customDispatcherClassName)) {
                    MediaKeyDispatcher mediaKeyDispatcher = (MediaKeyDispatcher) Class.forName(customDispatcherClassName).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    this.mCustomMediaKeyDispatcher = mediaKeyDispatcher;
                    this.mOverriddenKeyEventsMap = mediaKeyDispatcher.getOverriddenKeyEvents();
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                this.mCustomMediaKeyDispatcher = null;
                Log.w(TAG, "Encountered problem while using reflection", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void instantiateCustomProvider(String nameFromTesting) {
        String customProviderClassName;
        synchronized (this.mLock) {
            this.mCustomSessionPolicyProvider = null;
            if (nameFromTesting == null) {
                customProviderClassName = this.mContext.getResources().getString(R.string.config_defaultTextClassifierPackage);
            } else {
                customProviderClassName = nameFromTesting;
            }
            try {
                if (!TextUtils.isEmpty(customProviderClassName)) {
                    this.mCustomSessionPolicyProvider = (SessionPolicyProvider) Class.forName(customProviderClassName).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                Log.w(TAG, "Encountered problem while using reflection", e);
            }
        }
    }

    final class FullUserRecord implements MediaSessionStack.OnMediaButtonSessionChangedListener {
        private final int mFullUserId;
        private MediaButtonReceiverHolder mLastMediaButtonReceiverHolder;
        private IOnMediaKeyListener mOnMediaKeyListener;
        private int mOnMediaKeyListenerUid;
        private IOnVolumeKeyLongPressListener mOnVolumeKeyLongPressListener;
        private int mOnVolumeKeyLongPressListenerUid;
        private final MediaSessionStack mPriorityStack;
        private final HashMap<IBinder, OnMediaKeyEventDispatchedListenerRecord> mOnMediaKeyEventDispatchedListeners = new HashMap<>();
        private final HashMap<IBinder, OnMediaKeyEventSessionChangedListenerRecord> mOnMediaKeyEventSessionChangedListeners = new HashMap<>();
        private final SparseIntArray mUidToSessionCount = new SparseIntArray();

        FullUserRecord(int fullUserId) {
            this.mFullUserId = fullUserId;
            this.mPriorityStack = new MediaSessionStack(MediaSessionService.this.mContext, MediaSessionService.this.mAudioPlayerStateMonitor, this);
            String mediaButtonReceiverInfo = Settings.Secure.getStringForUser(MediaSessionService.this.mContentResolver, "media_button_receiver", this.mFullUserId);
            if (TextUtils.isEmpty(mediaButtonReceiverInfo)) {
                boolean isSupportRestore = MediaSessionService.this.mContext.getResources().getBoolean(R.bool.config_cecQuerySadTruehdEnabled_allowed);
                boolean isSupportMultiUser = SystemProperties.getBoolean("ro.fw.mu.headless_system_user", true);
                if (isSupportRestore && (!isSupportMultiUser || this.mFullUserId != 0)) {
                    String defaultMediaButtonReceiver = MediaSessionService.this.mContext.getResources().getString(R.string.config_emergency_call_number);
                    mediaButtonReceiverInfo = String.join(",", defaultMediaButtonReceiver, String.valueOf(this.mFullUserId), String.valueOf(1));
                    Log.d(MediaSessionService.TAG, "Restore the MegaMedia's MediaButtonReceiver: " + mediaButtonReceiverInfo);
                }
            }
            this.mLastMediaButtonReceiverHolder = MediaButtonReceiverHolder.unflattenFromString(MediaSessionService.this.mContext, mediaButtonReceiverInfo);
        }

        public void destroySessionsForUserLocked(int userId) {
            List<MediaSessionRecord> sessions = this.mPriorityStack.getPriorityList(false, userId);
            for (MediaSessionRecord session : sessions) {
                MediaSessionService.this.destroySessionLocked(session);
            }
        }

        public void addOnMediaKeyEventDispatchedListenerLocked(IOnMediaKeyEventDispatchedListener listener, int uid) {
            IBinder cbBinder = listener.asBinder();
            OnMediaKeyEventDispatchedListenerRecord cr = new OnMediaKeyEventDispatchedListenerRecord(listener, uid);
            this.mOnMediaKeyEventDispatchedListeners.put(cbBinder, cr);
            try {
                cbBinder.linkToDeath(cr, 0);
            } catch (RemoteException e) {
                Log.w(MediaSessionService.TAG, "Failed to add listener", e);
                this.mOnMediaKeyEventDispatchedListeners.remove(cbBinder);
            }
        }

        public void removeOnMediaKeyEventDispatchedListenerLocked(IOnMediaKeyEventDispatchedListener listener) {
            IBinder cbBinder = listener.asBinder();
            OnMediaKeyEventDispatchedListenerRecord cr = this.mOnMediaKeyEventDispatchedListeners.remove(cbBinder);
            cbBinder.unlinkToDeath(cr, 0);
        }

        public void addOnMediaKeyEventSessionChangedListenerLocked(IOnMediaKeyEventSessionChangedListener listener, int uid) {
            IBinder cbBinder = listener.asBinder();
            OnMediaKeyEventSessionChangedListenerRecord cr = new OnMediaKeyEventSessionChangedListenerRecord(listener, uid);
            this.mOnMediaKeyEventSessionChangedListeners.put(cbBinder, cr);
            try {
                cbBinder.linkToDeath(cr, 0);
            } catch (RemoteException e) {
                Log.w(MediaSessionService.TAG, "Failed to add listener", e);
                this.mOnMediaKeyEventSessionChangedListeners.remove(cbBinder);
            }
        }

        public void removeOnMediaKeyEventSessionChangedListener(IOnMediaKeyEventSessionChangedListener listener) {
            IBinder cbBinder = listener.asBinder();
            OnMediaKeyEventSessionChangedListenerRecord cr = this.mOnMediaKeyEventSessionChangedListeners.remove(cbBinder);
            cbBinder.unlinkToDeath(cr, 0);
        }

        public void dumpLocked(PrintWriter pw, String prefix) {
            pw.print(prefix + "Record for full_user=" + this.mFullUserId);
            int size = MediaSessionService.this.mFullUserIds.size();
            for (int i = 0; i < size; i++) {
                if (MediaSessionService.this.mFullUserIds.keyAt(i) != MediaSessionService.this.mFullUserIds.valueAt(i) && MediaSessionService.this.mFullUserIds.valueAt(i) == this.mFullUserId) {
                    pw.print(", profile_user=" + MediaSessionService.this.mFullUserIds.keyAt(i));
                }
            }
            pw.println();
            String indent = prefix + "  ";
            pw.println(indent + "Volume key long-press listener: " + this.mOnVolumeKeyLongPressListener);
            pw.println(indent + "Volume key long-press listener package: " + MediaSessionService.this.getCallingPackageName(this.mOnVolumeKeyLongPressListenerUid));
            pw.println(indent + "Media key listener: " + this.mOnMediaKeyListener);
            pw.println(indent + "Media key listener package: " + MediaSessionService.this.getCallingPackageName(this.mOnMediaKeyListenerUid));
            pw.println(indent + "OnMediaKeyEventDispatchedListener: added " + this.mOnMediaKeyEventDispatchedListeners.size() + " listener(s)");
            for (OnMediaKeyEventDispatchedListenerRecord cr : this.mOnMediaKeyEventDispatchedListeners.values()) {
                pw.println(indent + "  from " + MediaSessionService.this.getCallingPackageName(cr.uid));
            }
            pw.println(indent + "OnMediaKeyEventSessionChangedListener: added " + this.mOnMediaKeyEventSessionChangedListeners.size() + " listener(s)");
            for (OnMediaKeyEventSessionChangedListenerRecord cr2 : this.mOnMediaKeyEventSessionChangedListeners.values()) {
                pw.println(indent + "  from " + MediaSessionService.this.getCallingPackageName(cr2.uid));
            }
            pw.println(indent + "Last MediaButtonReceiver: " + this.mLastMediaButtonReceiverHolder);
            this.mPriorityStack.dump(pw, indent);
        }

        @Override // com.android.server.media.MediaSessionStack.OnMediaButtonSessionChangedListener
        public void onMediaButtonSessionChanged(MediaSessionRecordImpl oldMediaButtonSession, MediaSessionRecordImpl newMediaButtonSession) {
            Log.d(MediaSessionService.TAG, "Media button session is changed to " + newMediaButtonSession);
            synchronized (MediaSessionService.this.mLock) {
                if (oldMediaButtonSession != null) {
                    try {
                        MediaSessionService.this.mHandler.postSessionsChanged(oldMediaButtonSession);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (newMediaButtonSession != null) {
                    rememberMediaButtonReceiverLocked(newMediaButtonSession);
                    MediaSessionService.this.mHandler.postSessionsChanged(newMediaButtonSession);
                }
                pushAddressedPlayerChangedLocked();
            }
        }

        public void rememberMediaButtonReceiverLocked(MediaSessionRecordImpl record) {
            if (record instanceof MediaSession2Record) {
                return;
            }
            MediaSessionRecord sessionRecord = (MediaSessionRecord) record;
            if (MediaSessionService.this.mEnableMediaButtonReceiverConfig) {
                MediaButtonReceiverHolder mediaButtonReceiverHolder = sessionRecord.getMediaButtonReceiver();
                if (mediaButtonReceiverHolder != null) {
                    if (MediaSessionService.this.mMediaButtonReceiverPackageWhiteList == null || MediaSessionService.this.mMediaButtonReceiverPackageWhiteList.length == 0) {
                        Log.e(MediaSessionService.TAG, "mMediaButtonReceiverPackageWhiteList is null or empty");
                        return;
                    }
                    String allowPackageName = null;
                    for (String packageName : MediaSessionService.this.mMediaButtonReceiverPackageWhiteList) {
                        if (packageName != null && packageName.equals(mediaButtonReceiverHolder.getPackageName())) {
                            allowPackageName = packageName;
                            break;
                        }
                    }
                    if (allowPackageName == null) {
                        return;
                    }
                    Log.d(MediaSessionService.TAG, "allow mLastMediaButtonReceiverHolder：" + this.mLastMediaButtonReceiverHolder.flattenToString());
                } else {
                    Log.e(MediaSessionService.TAG, "mediaButtonReceiverHolder is null");
                    return;
                }
            }
            MediaButtonReceiverHolder mediaButtonReceiverHolder2 = sessionRecord.getMediaButtonReceiver();
            this.mLastMediaButtonReceiverHolder = mediaButtonReceiverHolder2;
            String mediaButtonReceiverInfo = mediaButtonReceiverHolder2 == null ? "" : mediaButtonReceiverHolder2.flattenToString();
            Settings.Secure.putStringForUser(MediaSessionService.this.mContentResolver, "media_button_receiver", mediaButtonReceiverInfo, this.mFullUserId);
        }

        private void pushAddressedPlayerChangedLocked(IOnMediaKeyEventSessionChangedListener callback) {
            try {
                MediaSessionRecordImpl mediaButtonSession = getMediaButtonSessionLocked();
                if (mediaButtonSession == null) {
                    if (MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiverHolder != null) {
                        String packageName = this.mLastMediaButtonReceiverHolder.getPackageName();
                        callback.onMediaKeyEventSessionChanged(packageName, (MediaSession.Token) null);
                    }
                } else if (mediaButtonSession instanceof MediaSessionRecord) {
                    MediaSessionRecord session1 = (MediaSessionRecord) mediaButtonSession;
                    callback.onMediaKeyEventSessionChanged(session1.getPackageName(), session1.getSessionToken());
                }
            } catch (RemoteException e) {
                Log.w(MediaSessionService.TAG, "Failed to pushAddressedPlayerChangedLocked", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void pushAddressedPlayerChangedLocked() {
            for (OnMediaKeyEventSessionChangedListenerRecord cr : this.mOnMediaKeyEventSessionChangedListeners.values()) {
                pushAddressedPlayerChangedLocked(cr.callback);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public MediaSessionRecordImpl getMediaButtonSessionLocked() {
            return MediaSessionService.this.isGlobalPriorityActiveLocked() ? MediaSessionService.this.mGlobalPrioritySession : this.mPriorityStack.getMediaButtonSession();
        }

        final class OnMediaKeyEventDispatchedListenerRecord implements IBinder.DeathRecipient {
            public final IOnMediaKeyEventDispatchedListener callback;
            public final int uid;

            OnMediaKeyEventDispatchedListenerRecord(IOnMediaKeyEventDispatchedListener callback, int uid) {
                this.callback = callback;
                this.uid = uid;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (MediaSessionService.this.mLock) {
                    FullUserRecord.this.mOnMediaKeyEventDispatchedListeners.remove(this.callback.asBinder());
                }
            }
        }

        final class OnMediaKeyEventSessionChangedListenerRecord implements IBinder.DeathRecipient {
            public final IOnMediaKeyEventSessionChangedListener callback;
            public final int uid;

            OnMediaKeyEventSessionChangedListenerRecord(IOnMediaKeyEventSessionChangedListener callback, int uid) {
                this.callback = callback;
                this.uid = uid;
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (MediaSessionService.this.mLock) {
                    FullUserRecord.this.mOnMediaKeyEventSessionChangedListeners.remove(this.callback.asBinder());
                }
            }
        }
    }

    final class SessionsListenerRecord implements IBinder.DeathRecipient {
        public final ComponentName componentName;
        public final IActiveSessionsListener listener;
        public final int pid;
        public final int uid;
        public final int userId;

        SessionsListenerRecord(IActiveSessionsListener listener, ComponentName componentName, int userId, int pid, int uid) {
            this.listener = listener;
            this.componentName = componentName;
            this.userId = userId;
            this.pid = pid;
            this.uid = uid;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (MediaSessionService.this.mLock) {
                MediaSessionService.this.mSessionsListeners.remove(this);
            }
        }
    }

    final class Session2TokensListenerRecord implements IBinder.DeathRecipient {
        public final ISession2TokensListener listener;
        public final int userId;

        Session2TokensListenerRecord(ISession2TokensListener listener, int userId) {
            this.listener = listener;
            this.userId = userId;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (MediaSessionService.this.mLock) {
                MediaSessionService.this.mSession2TokensListenerRecords.remove(this);
            }
        }
    }

    final class SettingsObserver extends ContentObserver {
        private final Uri mSecureSettingsUri;

        private SettingsObserver() {
            super(null);
            this.mSecureSettingsUri = Settings.Secure.getUriFor("enabled_notification_listeners");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void observe() {
            MediaSessionService.this.mContentResolver.registerContentObserver(this.mSecureSettingsUri, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            MediaSessionService.this.updateActiveSessionListeners();
        }
    }

    class SessionManagerImpl extends ISessionManager.Stub {
        private static final String EXTRA_WAKELOCK_ACQUIRED = "android.media.AudioService.WAKELOCK_ACQUIRED";
        private static final int WAKELOCK_RELEASE_ON_FINISHED = 1980;
        private KeyEventWakeLockReceiver mKeyEventReceiver;
        private KeyEventHandler mMediaKeyEventHandler = new KeyEventHandler(0);
        private KeyEventHandler mVolumeKeyEventHandler = new KeyEventHandler(1);

        SessionManagerImpl() {
            this.mKeyEventReceiver = new KeyEventWakeLockReceiver(MediaSessionService.this.mHandler);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
            new MediaShellCommand().exec(this, in, out, err, args, callback, resultReceiver);
        }

        public ISession createSession(String packageName, ISessionCallback cb, String tag, Bundle sessionInfo, int userId) throws Exception {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                try {
                    try {
                        MediaSessionService.this.enforcePackageName(packageName, uid);
                        int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, false, true, "createSession", packageName);
                        if (cb == null) {
                            throw new IllegalArgumentException("Controller callback cannot be null");
                        }
                        MediaSessionRecord session = MediaSessionService.this.createSessionInternal(pid, uid, resolvedUserId, packageName, cb, tag, sessionInfo);
                        if (session == null) {
                            throw new IllegalStateException("Failed to create a new session record");
                        }
                        ISession sessionBinder = session.getSessionBinder();
                        if (sessionBinder == null) {
                            throw new IllegalStateException("Invalid session record");
                        }
                        Binder.restoreCallingIdentity(token);
                        return sessionBinder;
                    } catch (Exception e) {
                        e = e;
                        Slog.w(MediaSessionService.TAG, "Exception in creating a new session", e);
                        throw e;
                    }
                } catch (Throwable th) {
                    e = th;
                    Binder.restoreCallingIdentity(token);
                    throw e;
                }
            } catch (Exception e2) {
                e = e2;
            } catch (Throwable th2) {
                e = th2;
                Binder.restoreCallingIdentity(token);
                throw e;
            }
        }

        public void notifySession2Created(Session2Token sessionToken) throws RemoteException {
            Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.DEBUG) {
                    Log.d(MediaSessionService.TAG, "Session2 is created " + sessionToken);
                }
                if (uid != sessionToken.getUid()) {
                    throw new SecurityException("Unexpected Session2Token's UID, expected=" + uid + " but actually=" + sessionToken.getUid());
                }
                MediaSession2Record record = new MediaSession2Record(sessionToken, MediaSessionService.this, MediaSessionService.this.mRecordThread.getLooper(), 0);
                synchronized (MediaSessionService.this.mLock) {
                    FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(record.getUserId());
                    user.mPriorityStack.addSession(record);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public List<MediaSession.Token> getSessions(ComponentName componentName, int userId) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = verifySessionsRequest(componentName, userId, pid, uid);
                ArrayList<MediaSession.Token> tokens = new ArrayList<>();
                synchronized (MediaSessionService.this.mLock) {
                    List<MediaSessionRecord> records = MediaSessionService.this.getActiveSessionsLocked(resolvedUserId);
                    for (MediaSessionRecord record : records) {
                        tokens.add(record.getSessionToken());
                    }
                }
                Binder.restoreCallingIdentity(token);
                return tokens;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public ParceledListSlice getSession2Tokens(int userId) {
            List<Session2Token> result;
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, true, true, "getSession2Tokens", null);
                synchronized (MediaSessionService.this.mLock) {
                    FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                    result = user.mPriorityStack.getSession2Tokens(resolvedUserId);
                }
                ParceledListSlice parceledListSlice = new ParceledListSlice(result);
                Binder.restoreCallingIdentity(token);
                return parceledListSlice;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void addSessionsListener(IActiveSessionsListener listener, ComponentName componentName, int userId) throws RemoteException {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = verifySessionsRequest(componentName, userId, pid, uid);
                synchronized (MediaSessionService.this.mLock) {
                    int index = MediaSessionService.this.findIndexOfSessionsListenerLocked(listener);
                    if (index != -1) {
                        Log.w(MediaSessionService.TAG, "ActiveSessionsListener is already added, ignoring");
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    SessionsListenerRecord record = MediaSessionService.this.new SessionsListenerRecord(listener, componentName, resolvedUserId, pid, uid);
                    try {
                        listener.asBinder().linkToDeath(record, 0);
                        MediaSessionService.this.mSessionsListeners.add(record);
                        Binder.restoreCallingIdentity(token);
                    } catch (RemoteException e) {
                        Log.e(MediaSessionService.TAG, "ActiveSessionsListener is dead, ignoring it", e);
                        Binder.restoreCallingIdentity(token);
                    }
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void removeSessionsListener(IActiveSessionsListener listener) throws RemoteException {
            synchronized (MediaSessionService.this.mLock) {
                int index = MediaSessionService.this.findIndexOfSessionsListenerLocked(listener);
                if (index != -1) {
                    SessionsListenerRecord record = (SessionsListenerRecord) MediaSessionService.this.mSessionsListeners.remove(index);
                    try {
                        record.listener.asBinder().unlinkToDeath(record, 0);
                    } catch (Exception e) {
                    }
                }
            }
        }

        public void addSession2TokensListener(ISession2TokensListener listener, int userId) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, true, true, "addSession2TokensListener", null);
                synchronized (MediaSessionService.this.mLock) {
                    int index = MediaSessionService.this.findIndexOfSession2TokensListenerLocked(listener);
                    if (index < 0) {
                        MediaSessionService.this.mSession2TokensListenerRecords.add(MediaSessionService.this.new Session2TokensListenerRecord(listener, resolvedUserId));
                        Binder.restoreCallingIdentity(token);
                    } else {
                        Log.w(MediaSessionService.TAG, "addSession2TokensListener is already added, ignoring");
                        Binder.restoreCallingIdentity(token);
                    }
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void removeSession2TokensListener(ISession2TokensListener listener) {
            Binder.getCallingPid();
            Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    int index = MediaSessionService.this.findIndexOfSession2TokensListenerLocked(listener);
                    if (index >= 0) {
                        Session2TokensListenerRecord listenerRecord = (Session2TokensListenerRecord) MediaSessionService.this.mSession2TokensListenerRecords.remove(index);
                        try {
                            listenerRecord.listener.asBinder().unlinkToDeath(listenerRecord, 0);
                        } catch (Exception e) {
                        }
                    }
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void dispatchMediaKeyEvent(String packageName, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) throws Throwable {
            if (keyEvent == null || !KeyEvent.isMediaSessionKey(keyEvent.getKeyCode())) {
                Log.w(MediaSessionService.TAG, "Attempted to dispatch null or non-media key event.");
                return;
            }
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.DEBUG) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        sb.append("dispatchMediaKeyEvent, pkg=");
                        try {
                            sb.append(packageName);
                            sb.append(" pid=");
                            sb.append(pid);
                            sb.append(", uid=");
                            sb.append(uid);
                            sb.append(", asSystem=");
                            sb.append(asSystemService);
                            sb.append(", event=");
                            sb.append(keyEvent);
                            Log.d(MediaSessionService.TAG, sb.toString());
                        } catch (Throwable th) {
                            th = th;
                            Binder.restoreCallingIdentity(token);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                if (!isUserSetupComplete()) {
                    Slog.i(MediaSessionService.TAG, "Not dispatching media key event because user setup is in progress.");
                    Binder.restoreCallingIdentity(token);
                    return;
                }
                synchronized (MediaSessionService.this.mLock) {
                    boolean isGlobalPriorityActive = MediaSessionService.this.isGlobalPriorityActiveLocked();
                    if (isGlobalPriorityActive && uid != 1000) {
                        Slog.i(MediaSessionService.TAG, "Only the system can dispatch media key event to the global priority session.");
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    if (!isGlobalPriorityActive && MediaSessionService.this.mCurrentFullUserRecord.mOnMediaKeyListener != null) {
                        Log.d(MediaSessionService.TAG, "Send " + keyEvent + " to the media key listener");
                        try {
                            MediaSessionService.this.mCurrentFullUserRecord.mOnMediaKeyListener.onMediaKey(keyEvent, new MediaKeyListenerResultReceiver(packageName, pid, uid, asSystemService, keyEvent, needWakeLock));
                            Binder.restoreCallingIdentity(token);
                            return;
                        } catch (RemoteException e) {
                            Log.w(MediaSessionService.TAG, "Failed to send " + keyEvent + " to the media key listener");
                        }
                    }
                    if (isGlobalPriorityActive) {
                        dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock);
                    } else {
                        this.mMediaKeyEventHandler.handleMediaKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock);
                    }
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th3) {
                th = th3;
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public boolean dispatchMediaKeyEventToSessionAsSystemService(String packageName, MediaSession.Token sessionToken, KeyEvent keyEvent) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    MediaSessionRecord record = MediaSessionService.this.getMediaSessionRecordLocked(sessionToken);
                    Log.d(MediaSessionService.TAG, "dispatchMediaKeyEventToSessionAsSystemService, pkg=" + packageName + ", pid=" + pid + ", uid=" + uid + ", sessionToken=" + sessionToken + ", event=" + keyEvent + ", session=" + record);
                    if (record == null) {
                        Log.w(MediaSessionService.TAG, "Failed to find session to dispatch key event.");
                        Binder.restoreCallingIdentity(token);
                        return false;
                    }
                    boolean zSendMediaButton = record.sendMediaButton(packageName, pid, uid, true, keyEvent, 0, null);
                    Binder.restoreCallingIdentity(token);
                    return zSendMediaButton;
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void addOnMediaKeyEventDispatchedListener(IOnMediaKeyEventDispatchedListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.hasMediaControlPermission(pid, uid)) {
                    synchronized (MediaSessionService.this.mLock) {
                        FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null && user.mFullUserId == userId) {
                            user.addOnMediaKeyEventDispatchedListenerLocked(listener, uid);
                            Log.d(MediaSessionService.TAG, "The MediaKeyEventDispatchedListener (" + listener.asBinder() + ") is added by " + MediaSessionService.this.getCallingPackageName(uid));
                            Binder.restoreCallingIdentity(token);
                            return;
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can add the listener, userId=" + userId);
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                }
                throw new SecurityException("MEDIA_CONTENT_CONTROL permission is required to  add MediaKeyEventDispatchedListener");
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void removeOnMediaKeyEventDispatchedListener(IOnMediaKeyEventDispatchedListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.hasMediaControlPermission(pid, uid)) {
                    synchronized (MediaSessionService.this.mLock) {
                        FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null && user.mFullUserId == userId) {
                            user.removeOnMediaKeyEventDispatchedListenerLocked(listener);
                            Log.d(MediaSessionService.TAG, "The MediaKeyEventDispatchedListener (" + listener.asBinder() + ") is removed by " + MediaSessionService.this.getCallingPackageName(uid));
                            Binder.restoreCallingIdentity(token);
                            return;
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can remove the listener, userId=" + userId);
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                }
                throw new SecurityException("MEDIA_CONTENT_CONTROL permission is required to  remove MediaKeyEventDispatchedListener");
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void addOnMediaKeyEventSessionChangedListener(IOnMediaKeyEventSessionChangedListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.hasMediaControlPermission(pid, uid)) {
                    synchronized (MediaSessionService.this.mLock) {
                        FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null && user.mFullUserId == userId) {
                            user.addOnMediaKeyEventSessionChangedListenerLocked(listener, uid);
                            Log.d(MediaSessionService.TAG, "The MediaKeyEventSessionChangedListener (" + listener.asBinder() + ") is added by " + MediaSessionService.this.getCallingPackageName(uid));
                            Binder.restoreCallingIdentity(token);
                            return;
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can add the listener, userId=" + userId);
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                }
                throw new SecurityException("MEDIA_CONTENT_CONTROL permission is required to  add MediaKeyEventSessionChangedListener");
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void removeOnMediaKeyEventSessionChangedListener(IOnMediaKeyEventSessionChangedListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.hasMediaControlPermission(pid, uid)) {
                    synchronized (MediaSessionService.this.mLock) {
                        FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                        if (user != null && user.mFullUserId == userId) {
                            user.removeOnMediaKeyEventSessionChangedListener(listener);
                            Log.d(MediaSessionService.TAG, "The MediaKeyEventSessionChangedListener (" + listener.asBinder() + ") is removed by " + MediaSessionService.this.getCallingPackageName(uid));
                            Binder.restoreCallingIdentity(token);
                            return;
                        }
                        Log.w(MediaSessionService.TAG, "Only the full user can remove the listener, userId=" + userId);
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                }
                throw new SecurityException("MEDIA_CONTENT_CONTROL permission is required to  remove MediaKeyEventSessionChangedListener");
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setOnVolumeKeyLongPressListener(IOnVolumeKeyLongPressListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.mContext.checkPermission("android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER", pid, uid) != 0) {
                    throw new SecurityException("Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission.");
                }
                synchronized (MediaSessionService.this.mLock) {
                    int userId = UserHandle.getUserId(uid);
                    final FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                    if (user != null && user.mFullUserId == userId) {
                        if (user.mOnVolumeKeyLongPressListener != null && user.mOnVolumeKeyLongPressListenerUid != uid) {
                            Log.w(MediaSessionService.TAG, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener=" + user.mOnVolumeKeyLongPressListenerUid + ", uid=" + uid);
                            Binder.restoreCallingIdentity(token);
                            return;
                        }
                        user.mOnVolumeKeyLongPressListener = listener;
                        user.mOnVolumeKeyLongPressListenerUid = uid;
                        Log.d(MediaSessionService.TAG, "The volume key long-press listener " + listener + " is set by " + MediaSessionService.this.getCallingPackageName(uid));
                        if (user.mOnVolumeKeyLongPressListener != null) {
                            try {
                                user.mOnVolumeKeyLongPressListener.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.media.MediaSessionService.SessionManagerImpl.1
                                    @Override // android.os.IBinder.DeathRecipient
                                    public void binderDied() {
                                        synchronized (MediaSessionService.this.mLock) {
                                            user.mOnVolumeKeyLongPressListener = null;
                                        }
                                    }
                                }, 0);
                            } catch (RemoteException e) {
                                Log.w(MediaSessionService.TAG, "Failed to set death recipient " + user.mOnVolumeKeyLongPressListener);
                                user.mOnVolumeKeyLongPressListener = null;
                            }
                        }
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    Log.w(MediaSessionService.TAG, "Only the full user can set the volume key long-press listener, userId=" + userId);
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void setOnMediaKeyListener(IOnMediaKeyListener listener) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                if (MediaSessionService.this.mContext.checkPermission("android.permission.SET_MEDIA_KEY_LISTENER", pid, uid) != 0) {
                    throw new SecurityException("Must hold the SET_MEDIA_KEY_LISTENER permission.");
                }
                synchronized (MediaSessionService.this.mLock) {
                    int userId = UserHandle.getUserId(uid);
                    final FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(userId);
                    if (user != null && user.mFullUserId == userId) {
                        if (user.mOnMediaKeyListener != null && user.mOnMediaKeyListenerUid != uid) {
                            Log.w(MediaSessionService.TAG, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid=" + user.mOnMediaKeyListenerUid + ", uid=" + uid);
                            Binder.restoreCallingIdentity(token);
                            return;
                        }
                        user.mOnMediaKeyListener = listener;
                        user.mOnMediaKeyListenerUid = uid;
                        Log.d(MediaSessionService.TAG, "The media key listener " + user.mOnMediaKeyListener + " is set by " + MediaSessionService.this.getCallingPackageName(uid));
                        if (user.mOnMediaKeyListener != null) {
                            try {
                                user.mOnMediaKeyListener.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.media.MediaSessionService.SessionManagerImpl.2
                                    @Override // android.os.IBinder.DeathRecipient
                                    public void binderDied() {
                                        synchronized (MediaSessionService.this.mLock) {
                                            user.mOnMediaKeyListener = null;
                                        }
                                    }
                                }, 0);
                            } catch (RemoteException e) {
                                Log.w(MediaSessionService.TAG, "Failed to set death recipient " + user.mOnMediaKeyListener);
                                user.mOnMediaKeyListener = null;
                            }
                        }
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    Log.w(MediaSessionService.TAG, "Only the full user can set the media key listener, userId=" + userId);
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void dispatchVolumeKeyEvent(String packageName, String opPackageName, boolean asSystemService, KeyEvent keyEvent, int stream, boolean musicOnly) {
            if (keyEvent == null || (keyEvent.getKeyCode() != 24 && keyEvent.getKeyCode() != 25 && keyEvent.getKeyCode() != 164)) {
                Log.w(MediaSessionService.TAG, "Attempted to dispatch null or non-volume key event.");
                return;
            }
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            Log.d(MediaSessionService.TAG, "dispatchVolumeKeyEvent, pkg=" + packageName + ", opPkg=" + opPackageName + ", pid=" + pid + ", uid=" + uid + ", asSystem=" + asSystemService + ", event=" + keyEvent + ", stream=" + stream + ", musicOnly=" + musicOnly);
            try {
                synchronized (MediaSessionService.this.mLock) {
                    if (MediaSessionService.this.isGlobalPriorityActiveLocked()) {
                        dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, keyEvent, stream, musicOnly);
                    } else {
                        this.mVolumeKeyEventHandler.handleVolumeKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, opPackageName, stream, musicOnly);
                    }
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dispatchVolumeKeyEventLocked(String packageName, String opPackageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, int stream, boolean musicOnly) {
            int flags;
            boolean down = keyEvent.getAction() == 0;
            boolean up = keyEvent.getAction() == 1;
            int direction = 0;
            boolean isMute = false;
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 24) {
                direction = 1;
            } else if (keyCode == 25) {
                direction = -1;
            } else if (keyCode == 164) {
                isMute = true;
            }
            if (down || up) {
                if (musicOnly) {
                    flags = 4096 | 512;
                } else if (up) {
                    flags = 4096 | 20;
                } else {
                    flags = 4096 | 17;
                }
                if (direction != 0) {
                    if (up) {
                        direction = 0;
                    }
                    dispatchAdjustVolumeLocked(packageName, opPackageName, pid, uid, asSystemService, stream, direction, flags);
                } else if (isMute && down && keyEvent.getRepeatCount() == 0) {
                    dispatchAdjustVolumeLocked(packageName, opPackageName, pid, uid, asSystemService, stream, 101, flags);
                }
            }
        }

        public void dispatchVolumeKeyEventToSessionAsSystemService(String packageName, String opPackageName, MediaSession.Token sessionToken, KeyEvent keyEvent) {
            int direction;
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    MediaSessionRecord record = MediaSessionService.this.getMediaSessionRecordLocked(sessionToken);
                    Log.d(MediaSessionService.TAG, "dispatchVolumeKeyEventToSessionAsSystemService, pkg=" + packageName + ", opPkg=" + opPackageName + ", pid=" + pid + ", uid=" + uid + ", sessionToken=" + sessionToken + ", event=" + keyEvent + ", session=" + record);
                    if (record == null) {
                        Log.w(MediaSessionService.TAG, "Failed to find session to dispatch key event, token=" + sessionToken + ". Fallbacks to the default handling.");
                        dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, true, keyEvent, Integer.MIN_VALUE, false);
                        Binder.restoreCallingIdentity(token);
                        return;
                    }
                    int action = keyEvent.getAction();
                    if (action == 0) {
                        int keyCode = keyEvent.getKeyCode();
                        if (keyCode == 24) {
                            direction = 1;
                        } else if (keyCode == 25) {
                            direction = -1;
                        } else if (keyCode != 164) {
                            direction = 0;
                        } else {
                            direction = 101;
                        }
                        record.adjustVolume(packageName, opPackageName, pid, uid, true, direction, 1, false);
                    } else if (action == 1) {
                        record.adjustVolume(packageName, opPackageName, pid, uid, true, 0, 4116, false);
                    }
                    Binder.restoreCallingIdentity(token);
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void dispatchAdjustVolume(String packageName, String opPackageName, int suggestedStream, int delta, int flags) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    dispatchAdjustVolumeLocked(packageName, opPackageName, pid, uid, false, suggestedStream, delta, flags);
                }
                Binder.restoreCallingIdentity(token);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(token);
                throw th;
            }
        }

        public void registerRemoteVolumeController(IRemoteVolumeController rvc) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            synchronized (MediaSessionService.this.mLock) {
                try {
                    MediaSessionService.this.enforceStatusBarServicePermission("listen for volume changes", pid, uid);
                    MediaSessionService.this.mRemoteVolumeControllers.register(rvc);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }

        public void unregisterRemoteVolumeController(IRemoteVolumeController rvc) {
            int pid = Binder.getCallingPid();
            int uid = Binder.getCallingUid();
            long token = Binder.clearCallingIdentity();
            synchronized (MediaSessionService.this.mLock) {
                try {
                    MediaSessionService.this.enforceStatusBarServicePermission("listen for volume changes", pid, uid);
                    MediaSessionService.this.mRemoteVolumeControllers.unregister(rvc);
                    Binder.restoreCallingIdentity(token);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(token);
                    throw th;
                }
            }
        }

        public boolean isGlobalPriorityActive() {
            boolean zIsGlobalPriorityActiveLocked;
            synchronized (MediaSessionService.this.mLock) {
                zIsGlobalPriorityActiveLocked = MediaSessionService.this.isGlobalPriorityActiveLocked();
            }
            return zIsGlobalPriorityActiveLocked;
        }

        public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
            if (DumpUtils.checkDumpPermission(MediaSessionService.this.mContext, MediaSessionService.TAG, pw)) {
                pw.println("MEDIA SESSION SERVICE (dumpsys media_session)");
                pw.println();
                synchronized (MediaSessionService.this.mLock) {
                    pw.println(MediaSessionService.this.mSessionsListeners.size() + " sessions listeners.");
                    pw.println("Global priority session is " + MediaSessionService.this.mGlobalPrioritySession);
                    if (MediaSessionService.this.mGlobalPrioritySession != null) {
                        MediaSessionService.this.mGlobalPrioritySession.dump(pw, "  ");
                    }
                    pw.println("User Records:");
                    int count = MediaSessionService.this.mUserRecords.size();
                    for (int i = 0; i < count; i++) {
                        ((FullUserRecord) MediaSessionService.this.mUserRecords.valueAt(i)).dumpLocked(pw, "");
                    }
                    MediaSessionService.this.mAudioPlayerStateMonitor.dump(MediaSessionService.this.mContext, pw, "");
                }
            }
        }

        public boolean isTrusted(String controllerPackageName, int controllerPid, int controllerUid) throws RemoteException {
            int uid = Binder.getCallingUid();
            int userId = UserHandle.getUserId(uid);
            long token = Binder.clearCallingIdentity();
            try {
                return MediaSessionService.this.hasMediaControlPermission(controllerPid, controllerUid) || hasEnabledNotificationListener(userId, controllerPackageName, controllerUid);
            } finally {
                Binder.restoreCallingIdentity(token);
            }
        }

        public void setCustomMediaKeyDispatcherForTesting(String name) {
            MediaSessionService.this.instantiateCustomDispatcher(name);
        }

        public void setCustomSessionPolicyProviderForTesting(String name) {
            MediaSessionService.this.instantiateCustomProvider(name);
        }

        public int getSessionPolicies(MediaSession.Token token) {
            synchronized (MediaSessionService.this.mLock) {
                MediaSessionRecord record = MediaSessionService.this.getMediaSessionRecordLocked(token);
                if (record != null) {
                    return record.getSessionPolicies();
                }
                return 0;
            }
        }

        public void setSessionPolicies(MediaSession.Token token, int policies) {
            long callingIdentityToken = Binder.clearCallingIdentity();
            try {
                synchronized (MediaSessionService.this.mLock) {
                    MediaSessionRecord record = MediaSessionService.this.getMediaSessionRecordLocked(token);
                    FullUserRecord user = MediaSessionService.this.getFullUserRecordLocked(record.getUserId());
                    if (record != null && user != null) {
                        record.setSessionPolicies(policies);
                        user.mPriorityStack.updateMediaButtonSessionBySessionPolicyChange(record);
                    }
                }
                Binder.restoreCallingIdentity(callingIdentityToken);
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(callingIdentityToken);
                throw th;
            }
        }

        private int verifySessionsRequest(ComponentName componentName, int userId, int pid, int uid) {
            String packageName = null;
            if (componentName != null) {
                packageName = componentName.getPackageName();
                MediaSessionService.this.enforcePackageName(packageName, uid);
            }
            int resolvedUserId = ActivityManager.handleIncomingUser(pid, uid, userId, true, true, "getSessions", packageName);
            MediaSessionService.this.enforceMediaPermissions(componentName, pid, uid, resolvedUserId);
            return resolvedUserId;
        }

        private boolean hasEnabledNotificationListener(int callingUserId, String controllerPackageName, int controllerUid) throws RemoteException {
            int controllerUserId = UserHandle.getUserHandleForUid(controllerUid).getIdentifier();
            if (callingUserId == controllerUserId) {
                List<ComponentName> enabledNotificationListeners = MediaSessionService.this.mNotificationManager.getEnabledNotificationListeners(controllerUserId);
                if (enabledNotificationListeners != null) {
                    for (int i = 0; i < enabledNotificationListeners.size(); i++) {
                        if (TextUtils.equals(controllerPackageName, enabledNotificationListeners.get(i).getPackageName())) {
                            return true;
                        }
                    }
                }
                if (MediaSessionService.DEBUG) {
                    Log.d(MediaSessionService.TAG, controllerPackageName + " (uid=" + controllerUid + ") doesn't have an enabled notification listener");
                }
                return false;
            }
            return false;
        }

        private void dispatchAdjustVolumeLocked(final String packageName, final String opPackageName, final int pid, final int uid, final boolean asSystemService, final int suggestedStream, final int direction, final int flags) {
            MediaSessionRecordImpl defaultVolumeSession;
            boolean preferSuggestedStream;
            if (MediaSessionService.this.isGlobalPriorityActiveLocked()) {
                defaultVolumeSession = MediaSessionService.this.mGlobalPrioritySession;
            } else {
                defaultVolumeSession = MediaSessionService.this.mCurrentFullUserRecord.mPriorityStack.getDefaultVolumeSession();
            }
            MediaSessionRecordImpl session = defaultVolumeSession;
            if (isValidLocalStreamType(suggestedStream) && AudioSystem.isStreamActive(suggestedStream, 0)) {
                preferSuggestedStream = true;
            } else {
                preferSuggestedStream = false;
            }
            if (session == null || preferSuggestedStream) {
                Log.d(MediaSessionService.TAG, "Adjusting suggestedStream=" + suggestedStream + " by " + direction + ". flags=" + flags + ", preferSuggestedStream=" + preferSuggestedStream + ", session=" + session);
                if ((flags & 512) == 0 || AudioSystem.isStreamActive(3, 0)) {
                    MediaSessionService.this.mHandler.post(new Runnable() { // from class: com.android.server.media.MediaSessionService.SessionManagerImpl.3
                        @Override // java.lang.Runnable
                        public void run() {
                            String callingOpPackageName;
                            int callingUid;
                            int callingPid;
                            if (asSystemService) {
                                callingOpPackageName = MediaSessionService.this.mContext.getOpPackageName();
                                callingUid = Process.myUid();
                                callingPid = Process.myPid();
                            } else {
                                callingOpPackageName = opPackageName;
                                callingUid = uid;
                                callingPid = pid;
                            }
                            try {
                                MediaSessionService.this.mAudioManagerInternal.adjustSuggestedStreamVolumeForUid(suggestedStream, direction, flags, callingOpPackageName, callingUid, callingPid);
                            } catch (IllegalArgumentException | SecurityException e) {
                                Log.e(MediaSessionService.TAG, "Cannot adjust volume: direction=" + direction + ", suggestedStream=" + suggestedStream + ", flags=" + flags + ", packageName=" + packageName + ", uid=" + uid + ", asSystemService=" + asSystemService, e);
                            }
                        }
                    });
                    return;
                }
                Log.d(MediaSessionService.TAG, "Nothing is playing on the music stream. Skipping volume event, flags=" + flags);
                return;
            }
            Log.d(MediaSessionService.TAG, "Adjusting " + session + " by " + direction + ". flags=" + flags + ", suggestedStream=" + suggestedStream + ", preferSuggestedStream=" + preferSuggestedStream);
            session.adjustVolume(packageName, opPackageName, pid, uid, asSystemService, direction, flags, true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dispatchMediaKeyEventLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) {
            MediaSessionRecord session;
            MediaButtonReceiverHolder mediaButtonReceiverHolder;
            PendingIntent pi;
            if (MediaSessionService.this.mCurrentFullUserRecord.getMediaButtonSessionLocked() instanceof MediaSession2Record) {
                return;
            }
            MediaSessionRecord session2 = null;
            MediaButtonReceiverHolder mediaButtonReceiverHolder2 = null;
            if (MediaSessionService.this.mCustomMediaKeyDispatcher != null) {
                MediaSession.Token token = MediaSessionService.this.mCustomMediaKeyDispatcher.getMediaSession(keyEvent, uid, asSystemService);
                if (token != null) {
                    session2 = MediaSessionService.this.getMediaSessionRecordLocked(token);
                }
                if (session2 == null && (pi = MediaSessionService.this.mCustomMediaKeyDispatcher.getMediaButtonReceiver(keyEvent, uid, asSystemService)) != null) {
                    mediaButtonReceiverHolder2 = MediaButtonReceiverHolder.create(MediaSessionService.this.mContext, MediaSessionService.this.mCurrentFullUserRecord.mFullUserId, pi);
                }
            }
            if (session2 == null && mediaButtonReceiverHolder2 == null) {
                MediaSessionRecord session3 = (MediaSessionRecord) MediaSessionService.this.mCurrentFullUserRecord.getMediaButtonSessionLocked();
                if (session3 == null) {
                    session = session3;
                    mediaButtonReceiverHolder = MediaSessionService.this.mCurrentFullUserRecord.mLastMediaButtonReceiverHolder;
                } else {
                    session = session3;
                    mediaButtonReceiverHolder = mediaButtonReceiverHolder2;
                }
            } else {
                session = session2;
                mediaButtonReceiverHolder = mediaButtonReceiverHolder2;
            }
            if (session != null) {
                Log.d(MediaSessionService.TAG, "Sending " + keyEvent + " to " + session);
                if (needWakeLock) {
                    this.mKeyEventReceiver.acquireWakeLockLocked();
                }
                session.sendMediaButton(packageName, pid, uid, asSystemService, keyEvent, needWakeLock ? this.mKeyEventReceiver.mLastTimeoutId : -1, this.mKeyEventReceiver);
                try {
                    Iterator it = MediaSessionService.this.mCurrentFullUserRecord.mOnMediaKeyEventDispatchedListeners.values().iterator();
                    while (it.hasNext()) {
                        ((FullUserRecord.OnMediaKeyEventDispatchedListenerRecord) it.next()).callback.onMediaKeyEventDispatched(keyEvent, session.getPackageName(), session.getSessionToken());
                    }
                    return;
                } catch (RemoteException e) {
                    Log.w(MediaSessionService.TAG, "Failed to send callback", e);
                    return;
                }
            }
            if (mediaButtonReceiverHolder != null) {
                if (needWakeLock) {
                    this.mKeyEventReceiver.acquireWakeLockLocked();
                }
                String callingPackageName = asSystemService ? MediaSessionService.this.mContext.getPackageName() : packageName;
                boolean sent = mediaButtonReceiverHolder.send(MediaSessionService.this.mContext, keyEvent, callingPackageName, needWakeLock ? this.mKeyEventReceiver.mLastTimeoutId : -1, this.mKeyEventReceiver, MediaSessionService.this.mHandler);
                if (sent) {
                    String pkgName = mediaButtonReceiverHolder.getPackageName();
                    for (FullUserRecord.OnMediaKeyEventDispatchedListenerRecord cr : MediaSessionService.this.mCurrentFullUserRecord.mOnMediaKeyEventDispatchedListeners.values()) {
                        try {
                            cr.callback.onMediaKeyEventDispatched(keyEvent, pkgName, (MediaSession.Token) null);
                        } catch (RemoteException e2) {
                            Log.w(MediaSessionService.TAG, "Failed notify key event dispatch, uid=" + cr.uid, e2);
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startVoiceInput(boolean needWakeLock) {
            Intent voiceIntent;
            PowerManager pm = (PowerManager) MediaSessionService.this.mContext.getSystemService("power");
            boolean isLocked = MediaSessionService.this.mKeyguardManager != null && MediaSessionService.this.mKeyguardManager.isKeyguardLocked();
            if (isLocked || !pm.isScreenOn()) {
                voiceIntent = new Intent("android.speech.action.VOICE_SEARCH_HANDS_FREE");
                voiceIntent.putExtra("android.speech.extras.EXTRA_SECURE", isLocked && MediaSessionService.this.mKeyguardManager.isKeyguardSecure());
                Log.i(MediaSessionService.TAG, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE");
            } else {
                voiceIntent = new Intent("android.speech.action.WEB_SEARCH");
                Log.i(MediaSessionService.TAG, "voice-based interactions: about to use ACTION_WEB_SEARCH");
            }
            if (needWakeLock) {
                MediaSessionService.this.mMediaEventWakeLock.acquire();
            }
            try {
                voiceIntent.setFlags(276824064);
                if (MediaSessionService.DEBUG) {
                    Log.d(MediaSessionService.TAG, "voiceIntent: " + voiceIntent);
                }
                MediaSessionService.this.mContext.startActivityAsUser(voiceIntent, UserHandle.CURRENT);
            } catch (ActivityNotFoundException e) {
                Log.w(MediaSessionService.TAG, "No activity for search: " + e);
            } finally {
                if (needWakeLock) {
                    MediaSessionService.this.mMediaEventWakeLock.release();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isVoiceKey(int keyCode) {
            return keyCode == 79 || (!MediaSessionService.this.mHasFeatureLeanback && keyCode == 85);
        }

        private boolean isUserSetupComplete() {
            return Settings.Secure.getIntForUser(MediaSessionService.this.mContext.getContentResolver(), "user_setup_complete", 0, -2) != 0;
        }

        private boolean isValidLocalStreamType(int streamType) {
            return streamType >= 0 && streamType <= 5;
        }

        private class MediaKeyListenerResultReceiver extends ResultReceiver implements Runnable {
            private final boolean mAsSystemService;
            private boolean mHandled;
            private final KeyEvent mKeyEvent;
            private final boolean mNeedWakeLock;
            private final String mPackageName;
            private final int mPid;
            private final int mUid;

            private MediaKeyListenerResultReceiver(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) {
                super(MediaSessionService.this.mHandler);
                MediaSessionService.this.mHandler.postDelayed(this, 1000L);
                this.mPackageName = packageName;
                this.mPid = pid;
                this.mUid = uid;
                this.mAsSystemService = asSystemService;
                this.mKeyEvent = keyEvent;
                this.mNeedWakeLock = needWakeLock;
            }

            @Override // java.lang.Runnable
            public void run() {
                Log.d(MediaSessionService.TAG, "The media key listener is timed-out for " + this.mKeyEvent);
                dispatchMediaKeyEvent();
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int resultCode, Bundle resultData) {
                if (resultCode == 1) {
                    this.mHandled = true;
                    MediaSessionService.this.mHandler.removeCallbacks(this);
                } else {
                    dispatchMediaKeyEvent();
                }
            }

            private void dispatchMediaKeyEvent() {
                if (this.mHandled) {
                    return;
                }
                this.mHandled = true;
                MediaSessionService.this.mHandler.removeCallbacks(this);
                synchronized (MediaSessionService.this.mLock) {
                    if (MediaSessionService.this.isGlobalPriorityActiveLocked()) {
                        SessionManagerImpl.this.dispatchMediaKeyEventLocked(this.mPackageName, this.mPid, this.mUid, this.mAsSystemService, this.mKeyEvent, this.mNeedWakeLock);
                    } else {
                        SessionManagerImpl.this.mMediaKeyEventHandler.handleMediaKeyEventLocked(this.mPackageName, this.mPid, this.mUid, this.mAsSystemService, this.mKeyEvent, this.mNeedWakeLock);
                    }
                }
            }
        }

        class KeyEventWakeLockReceiver extends ResultReceiver implements Runnable, PendingIntent.OnFinished {
            private final Handler mHandler;
            private int mLastTimeoutId;
            private int mRefCount;

            KeyEventWakeLockReceiver(Handler handler) {
                super(handler);
                this.mRefCount = 0;
                this.mLastTimeoutId = 0;
                this.mHandler = handler;
            }

            public void onTimeout() {
                synchronized (MediaSessionService.this.mLock) {
                    if (this.mRefCount == 0) {
                        return;
                    }
                    this.mLastTimeoutId++;
                    this.mRefCount = 0;
                    releaseWakeLockLocked();
                }
            }

            public void acquireWakeLockLocked() {
                if (this.mRefCount == 0) {
                    MediaSessionService.this.mMediaEventWakeLock.acquire();
                }
                this.mRefCount++;
                this.mHandler.removeCallbacks(this);
                this.mHandler.postDelayed(this, 5000L);
            }

            @Override // java.lang.Runnable
            public void run() {
                onTimeout();
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int resultCode, Bundle resultData) {
                if (resultCode >= this.mLastTimeoutId) {
                    synchronized (MediaSessionService.this.mLock) {
                        if (this.mRefCount > 0) {
                            int i = this.mRefCount - 1;
                            this.mRefCount = i;
                            if (i == 0) {
                                releaseWakeLockLocked();
                            }
                        }
                    }
                }
            }

            private void releaseWakeLockLocked() {
                MediaSessionService.this.mMediaEventWakeLock.release();
                this.mHandler.removeCallbacks(this);
            }

            @Override // android.app.PendingIntent.OnFinished
            public void onSendFinished(PendingIntent pendingIntent, Intent intent, int resultCode, String resultData, Bundle resultExtras) {
                onReceiveResult(resultCode, null);
            }
        }

        class KeyEventHandler {
            private static final int KEY_TYPE_MEDIA = 0;
            private static final int KEY_TYPE_VOLUME = 1;
            private boolean mIsLongPressing;
            private int mKeyType;
            private Runnable mLongPressTimeoutRunnable;
            private int mMultiTapCount;
            private int mMultiTapKeyCode;
            private Runnable mMultiTapTimeoutRunnable;
            private KeyEvent mTrackingFirstDownKeyEvent;

            KeyEventHandler(int keyType) {
                this.mKeyType = keyType;
            }

            void handleMediaKeyEventLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock) {
                handleKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, null, 0, false);
            }

            void handleVolumeKeyEventLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, String opPackageName, int stream, boolean musicOnly) {
                handleKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, false, opPackageName, stream, musicOnly);
            }

            void handleKeyEventLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock, String opPackageName, int stream, boolean musicOnly) {
                if (keyEvent.isCanceled()) {
                    return;
                }
                int overriddenKeyEvents = MediaSessionService.this.mCustomMediaKeyDispatcher == null ? 0 : MediaSessionService.this.mCustomMediaKeyDispatcher.getOverriddenKeyEvents().get(Integer.valueOf(keyEvent.getKeyCode())).intValue();
                cancelTrackingIfNeeded(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly, overriddenKeyEvents);
                if (!needTracking(keyEvent, overriddenKeyEvents)) {
                    if (this.mKeyType == 1) {
                        SessionManagerImpl.this.dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, keyEvent, stream, musicOnly);
                        return;
                    } else {
                        SessionManagerImpl.this.dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock);
                        return;
                    }
                }
                if (isFirstDownKeyEvent(keyEvent)) {
                    this.mTrackingFirstDownKeyEvent = keyEvent;
                    this.mIsLongPressing = false;
                    return;
                }
                if (isFirstLongPressKeyEvent(keyEvent)) {
                    this.mIsLongPressing = true;
                }
                if (this.mIsLongPressing) {
                    handleLongPressLocked(keyEvent, needWakeLock, overriddenKeyEvents);
                    return;
                }
                if (keyEvent.getAction() == 1) {
                    this.mTrackingFirstDownKeyEvent = null;
                    if (shouldTrackForMultipleTapsLocked(overriddenKeyEvents)) {
                        int i = this.mMultiTapCount;
                        if (i == 0) {
                            this.mMultiTapTimeoutRunnable = createSingleTapRunnable(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly, MediaKeyDispatcher.isSingleTapOverridden(overriddenKeyEvents));
                            if (MediaKeyDispatcher.isSingleTapOverridden(overriddenKeyEvents) && !MediaKeyDispatcher.isDoubleTapOverridden(overriddenKeyEvents) && !MediaKeyDispatcher.isTripleTapOverridden(overriddenKeyEvents)) {
                                this.mMultiTapTimeoutRunnable.run();
                                return;
                            }
                            MediaSessionService.this.mHandler.postDelayed(this.mMultiTapTimeoutRunnable, MediaSessionService.MULTI_TAP_TIMEOUT);
                            this.mMultiTapCount = 1;
                            this.mMultiTapKeyCode = keyEvent.getKeyCode();
                            return;
                        }
                        if (i == 1) {
                            MediaSessionService.this.mHandler.removeCallbacks(this.mMultiTapTimeoutRunnable);
                            this.mMultiTapTimeoutRunnable = createDoubleTapRunnable(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly, MediaKeyDispatcher.isSingleTapOverridden(overriddenKeyEvents), MediaKeyDispatcher.isDoubleTapOverridden(overriddenKeyEvents));
                            if (MediaKeyDispatcher.isTripleTapOverridden(overriddenKeyEvents)) {
                                MediaSessionService.this.mHandler.postDelayed(this.mMultiTapTimeoutRunnable, MediaSessionService.MULTI_TAP_TIMEOUT);
                                this.mMultiTapCount = 2;
                                return;
                            } else {
                                this.mMultiTapTimeoutRunnable.run();
                                return;
                            }
                        }
                        if (i == 2) {
                            MediaSessionService.this.mHandler.removeCallbacks(this.mMultiTapTimeoutRunnable);
                            onTripleTap(keyEvent);
                            return;
                        }
                        return;
                    }
                    dispatchDownAndUpKeyEventsLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly);
                }
            }

            private boolean shouldTrackForMultipleTapsLocked(int overriddenKeyEvents) {
                return MediaKeyDispatcher.isSingleTapOverridden(overriddenKeyEvents) || MediaKeyDispatcher.isDoubleTapOverridden(overriddenKeyEvents) || MediaKeyDispatcher.isTripleTapOverridden(overriddenKeyEvents);
            }

            private void cancelTrackingIfNeeded(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock, String opPackageName, int stream, boolean musicOnly, int overriddenKeyEvents) {
                if (this.mTrackingFirstDownKeyEvent == null && this.mMultiTapTimeoutRunnable == null) {
                    return;
                }
                if (isFirstDownKeyEvent(keyEvent)) {
                    if (this.mLongPressTimeoutRunnable != null) {
                        MediaSessionService.this.mHandler.removeCallbacks(this.mLongPressTimeoutRunnable);
                        this.mLongPressTimeoutRunnable.run();
                    }
                    if (this.mMultiTapTimeoutRunnable != null && keyEvent.getKeyCode() != this.mMultiTapKeyCode) {
                        runExistingMultiTapRunnableLocked();
                    }
                    resetLongPressTracking();
                    return;
                }
                KeyEvent keyEvent2 = this.mTrackingFirstDownKeyEvent;
                if (keyEvent2 != null && keyEvent2.getDownTime() == keyEvent.getDownTime() && this.mTrackingFirstDownKeyEvent.getKeyCode() == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                    if (isFirstLongPressKeyEvent(keyEvent)) {
                        if (this.mMultiTapTimeoutRunnable != null) {
                            runExistingMultiTapRunnableLocked();
                        }
                        if ((overriddenKeyEvents & 8) == 0) {
                            if (this.mKeyType == 1) {
                                if (MediaSessionService.this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener == null) {
                                    SessionManagerImpl.this.dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, keyEvent, stream, musicOnly);
                                    this.mTrackingFirstDownKeyEvent = null;
                                    return;
                                }
                                return;
                            }
                            if (!SessionManagerImpl.this.isVoiceKey(keyEvent.getKeyCode())) {
                                SessionManagerImpl.this.dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock);
                                this.mTrackingFirstDownKeyEvent = null;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (keyEvent.getRepeatCount() > 1 && !this.mIsLongPressing) {
                        resetLongPressTracking();
                    }
                }
            }

            private boolean needTracking(KeyEvent keyEvent, int overriddenKeyEvents) {
                KeyEvent keyEvent2;
                if (!isFirstDownKeyEvent(keyEvent) && ((keyEvent2 = this.mTrackingFirstDownKeyEvent) == null || keyEvent2.getDownTime() != keyEvent.getDownTime() || this.mTrackingFirstDownKeyEvent.getKeyCode() != keyEvent.getKeyCode())) {
                    return false;
                }
                if (overriddenKeyEvents == 0) {
                    if (this.mKeyType == 1) {
                        if (MediaSessionService.this.mCurrentFullUserRecord.mOnVolumeKeyLongPressListener == null) {
                            return false;
                        }
                    } else if (!SessionManagerImpl.this.isVoiceKey(keyEvent.getKeyCode())) {
                        return false;
                    }
                }
                return true;
            }

            private void runExistingMultiTapRunnableLocked() {
                MediaSessionService.this.mHandler.removeCallbacks(this.mMultiTapTimeoutRunnable);
                this.mMultiTapTimeoutRunnable.run();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void resetMultiTapTrackingLocked() {
                this.mMultiTapCount = 0;
                this.mMultiTapTimeoutRunnable = null;
                this.mMultiTapKeyCode = 0;
            }

            private void handleLongPressLocked(KeyEvent keyEvent, boolean needWakeLock, int overriddenKeyEvents) {
                if (MediaSessionService.this.mCustomMediaKeyDispatcher != null && MediaKeyDispatcher.isLongPressOverridden(overriddenKeyEvents)) {
                    MediaSessionService.this.mCustomMediaKeyDispatcher.onLongPress(keyEvent);
                    if (this.mLongPressTimeoutRunnable != null) {
                        MediaSessionService.this.mHandler.removeCallbacks(this.mLongPressTimeoutRunnable);
                    }
                    if (keyEvent.getAction() == 0) {
                        if (this.mLongPressTimeoutRunnable == null) {
                            this.mLongPressTimeoutRunnable = createLongPressTimeoutRunnable(keyEvent);
                        }
                        MediaSessionService.this.mHandler.postDelayed(this.mLongPressTimeoutRunnable, MediaSessionService.LONG_PRESS_TIMEOUT);
                        return;
                    }
                    resetLongPressTracking();
                    return;
                }
                if (this.mKeyType == 1) {
                    if (isFirstLongPressKeyEvent(keyEvent)) {
                        MediaSessionService.this.dispatchVolumeKeyLongPressLocked(this.mTrackingFirstDownKeyEvent);
                    }
                    MediaSessionService.this.dispatchVolumeKeyLongPressLocked(keyEvent);
                } else if (isFirstLongPressKeyEvent(keyEvent) && SessionManagerImpl.this.isVoiceKey(keyEvent.getKeyCode())) {
                    SessionManagerImpl.this.startVoiceInput(needWakeLock);
                    resetLongPressTracking();
                }
            }

            private Runnable createLongPressTimeoutRunnable(final KeyEvent keyEvent) {
                return new Runnable() { // from class: com.android.server.media.MediaSessionService.SessionManagerImpl.KeyEventHandler.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MediaSessionService.this.mCustomMediaKeyDispatcher != null) {
                            MediaSessionService.this.mCustomMediaKeyDispatcher.onLongPress(KeyEventHandler.this.createCanceledKeyEvent(keyEvent));
                        }
                        KeyEventHandler.this.resetLongPressTracking();
                    }
                };
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void resetLongPressTracking() {
                this.mTrackingFirstDownKeyEvent = null;
                this.mIsLongPressing = false;
                this.mLongPressTimeoutRunnable = null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public KeyEvent createCanceledKeyEvent(KeyEvent keyEvent) {
                KeyEvent upEvent = KeyEvent.changeAction(keyEvent, 1);
                return KeyEvent.changeTimeRepeat(upEvent, System.currentTimeMillis(), 0, 32);
            }

            private boolean isFirstLongPressKeyEvent(KeyEvent keyEvent) {
                return (keyEvent.getFlags() & 128) != 0 && keyEvent.getRepeatCount() == 1;
            }

            private boolean isFirstDownKeyEvent(KeyEvent keyEvent) {
                return keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void dispatchDownAndUpKeyEventsLocked(String packageName, int pid, int uid, boolean asSystemService, KeyEvent keyEvent, boolean needWakeLock, String opPackageName, int stream, boolean musicOnly) {
                KeyEvent downEvent = KeyEvent.changeAction(keyEvent, 0);
                if (this.mKeyType == 1) {
                    SessionManagerImpl.this.dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, downEvent, stream, musicOnly);
                    SessionManagerImpl.this.dispatchVolumeKeyEventLocked(packageName, opPackageName, pid, uid, asSystemService, keyEvent, stream, musicOnly);
                } else {
                    SessionManagerImpl.this.dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, downEvent, needWakeLock);
                    SessionManagerImpl.this.dispatchMediaKeyEventLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock);
                }
            }

            Runnable createSingleTapRunnable(final String packageName, final int pid, final int uid, final boolean asSystemService, final KeyEvent keyEvent, final boolean needWakeLock, final String opPackageName, final int stream, final boolean musicOnly, final boolean overridden) {
                return new Runnable() { // from class: com.android.server.media.MediaSessionService.SessionManagerImpl.KeyEventHandler.2
                    @Override // java.lang.Runnable
                    public void run() {
                        KeyEventHandler.this.resetMultiTapTrackingLocked();
                        if (overridden) {
                            MediaSessionService.this.mCustomMediaKeyDispatcher.onSingleTap(keyEvent);
                        } else {
                            KeyEventHandler.this.dispatchDownAndUpKeyEventsLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly);
                        }
                    }
                };
            }

            Runnable createDoubleTapRunnable(final String packageName, final int pid, final int uid, final boolean asSystemService, final KeyEvent keyEvent, final boolean needWakeLock, final String opPackageName, final int stream, final boolean musicOnly, final boolean singleTapOverridden, final boolean doubleTapOverridden) {
                return new Runnable() { // from class: com.android.server.media.MediaSessionService.SessionManagerImpl.KeyEventHandler.3
                    @Override // java.lang.Runnable
                    public void run() {
                        KeyEventHandler.this.resetMultiTapTrackingLocked();
                        if (doubleTapOverridden) {
                            MediaSessionService.this.mCustomMediaKeyDispatcher.onDoubleTap(keyEvent);
                        } else if (!singleTapOverridden) {
                            KeyEventHandler.this.dispatchDownAndUpKeyEventsLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly);
                            KeyEventHandler.this.dispatchDownAndUpKeyEventsLocked(packageName, pid, uid, asSystemService, keyEvent, needWakeLock, opPackageName, stream, musicOnly);
                        } else {
                            MediaSessionService.this.mCustomMediaKeyDispatcher.onSingleTap(keyEvent);
                            MediaSessionService.this.mCustomMediaKeyDispatcher.onSingleTap(keyEvent);
                        }
                    }
                };
            }

            private void onTripleTap(KeyEvent keyEvent) {
                resetMultiTapTrackingLocked();
                MediaSessionService.this.mCustomMediaKeyDispatcher.onTripleTap(keyEvent);
            }
        }
    }

    final class MessageHandler extends Handler {
        private static final int MSG_SESSIONS_1_CHANGED = 1;
        private static final int MSG_SESSIONS_2_CHANGED = 2;
        private final SparseArray<Integer> mIntegerCache = new SparseArray<>();

        MessageHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i = msg.what;
            if (i == 1) {
                MediaSessionService.this.pushSession1Changed(((Integer) msg.obj).intValue());
            } else if (i == 2) {
                MediaSessionService.this.pushSession2Changed(((Integer) msg.obj).intValue());
            }
        }

        public void postSessionsChanged(MediaSessionRecordImpl record) {
            Integer userIdInteger = this.mIntegerCache.get(record.getUserId());
            if (userIdInteger == null) {
                userIdInteger = Integer.valueOf(record.getUserId());
                this.mIntegerCache.put(record.getUserId(), userIdInteger);
            }
            int msg = record instanceof MediaSessionRecord ? 1 : 2;
            removeMessages(msg, userIdInteger);
            obtainMessage(msg, userIdInteger).sendToTarget();
        }
    }
}
