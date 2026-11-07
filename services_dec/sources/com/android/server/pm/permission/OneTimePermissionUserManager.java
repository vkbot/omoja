package com.android.server.pm.permission;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.permission.PermissionControllerManager;
import android.provider.DeviceConfig;
import android.util.Log;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class OneTimePermissionUserManager {
    private static final boolean DEBUG = false;
    private static final long DEFAULT_KILLED_DELAY_MILLIS = 5000;
    private static final String LOG_TAG = OneTimePermissionUserManager.class.getSimpleName();
    public static final String PROPERTY_KILLED_DELAY_CONFIG_KEY = "one_time_permissions_killed_delay_millis";
    private final ActivityManager mActivityManager;
    private final AlarmManager mAlarmManager;
    private final Context mContext;
    private final Handler mHandler;
    private final PermissionControllerManager mPermissionControllerManager;
    private final Object mLock = new Object();
    private final BroadcastReceiver mUninstallListener = new BroadcastReceiver() { // from class: com.android.server.pm.permission.OneTimePermissionUserManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.UID_REMOVED".equals(intent.getAction())) {
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                PackageInactivityListener listener = (PackageInactivityListener) OneTimePermissionUserManager.this.mListeners.get(uid);
                if (listener == null) {
                    return;
                }
                listener.cancel();
                OneTimePermissionUserManager.this.mListeners.remove(uid);
            }
        }
    };
    private final SparseArray<PackageInactivityListener> mListeners = new SparseArray<>();

    OneTimePermissionUserManager(Context context) {
        this.mContext = context;
        this.mActivityManager = (ActivityManager) context.getSystemService(ActivityManager.class);
        this.mAlarmManager = (AlarmManager) context.getSystemService(AlarmManager.class);
        this.mPermissionControllerManager = (PermissionControllerManager) context.getSystemService(PermissionControllerManager.class);
        this.mHandler = context.getMainThreadHandler();
    }

    void startPackageOneTimeSession(String packageName, long timeoutMillis, int importanceToResetTimer, int importanceToKeepSessionAlive) {
        try {
            int uid = this.mContext.getPackageManager().getPackageUid(packageName, 0);
            synchronized (this.mLock) {
                PackageInactivityListener listener = this.mListeners.get(uid);
                if (listener == null) {
                    PackageInactivityListener listener2 = new PackageInactivityListener(uid, packageName, timeoutMillis, importanceToResetTimer, importanceToKeepSessionAlive);
                    this.mListeners.put(uid, listener2);
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(LOG_TAG, "Unknown package name " + packageName, e);
        }
    }

    void stopPackageOneTimeSession(String packageName) {
        try {
            int uid = this.mContext.getPackageManager().getPackageUid(packageName, 0);
            synchronized (this.mLock) {
                PackageInactivityListener listener = this.mListeners.get(uid);
                if (listener != null) {
                    this.mListeners.remove(uid);
                    listener.cancel();
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(LOG_TAG, "Unknown package name " + packageName, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getKilledDelayMillis() {
        return DeviceConfig.getLong("permissions", PROPERTY_KILLED_DELAY_CONFIG_KEY, DEFAULT_KILLED_DELAY_MILLIS);
    }

    void registerUninstallListener() {
        this.mContext.registerReceiver(this.mUninstallListener, new IntentFilter("android.intent.action.UID_REMOVED"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    class PackageInactivityListener implements AlarmManager.OnAlarmListener {
        private static final long TIMER_INACTIVE = -1;
        private final ActivityManager.OnUidImportanceListener mGoneListener;
        private final int mImportanceToKeepSessionAlive;
        private final int mImportanceToResetTimer;
        private final Object mInnerLock;
        private boolean mIsAlarmSet;
        private boolean mIsFinished;
        private final String mPackageName;
        private final ActivityManager.OnUidImportanceListener mSessionKillableListener;
        private final ActivityManager.OnUidImportanceListener mStartTimerListener;
        private final long mTimeout;
        private long mTimerStart;
        private final Object mToken;
        private final int mUid;

        private PackageInactivityListener(int uid, String packageName, long timeout, int importanceToResetTimer, int importanceToKeepSessionAlive) {
            this.mTimerStart = -1L;
            this.mInnerLock = new Object();
            this.mToken = new Object();
            Log.i(OneTimePermissionUserManager.LOG_TAG, "Start tracking " + packageName + ". uid=" + uid + " timeout=" + timeout + " importanceToResetTimer=" + importanceToResetTimer + " importanceToKeepSessionAlive=" + importanceToKeepSessionAlive);
            this.mUid = uid;
            this.mPackageName = packageName;
            this.mTimeout = timeout;
            this.mImportanceToResetTimer = importanceToResetTimer;
            this.mImportanceToKeepSessionAlive = importanceToKeepSessionAlive;
            this.mStartTimerListener = new ActivityManager.OnUidImportanceListener() { // from class: com.android.server.pm.permission.-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$SVoloDDAPWRycmaRhugBlXuSVeI
                public final void onUidImportance(int i, int i2) {
                    this.f$0.lambda$new$0$OneTimePermissionUserManager$PackageInactivityListener(i, i2);
                }
            };
            this.mSessionKillableListener = new ActivityManager.OnUidImportanceListener() { // from class: com.android.server.pm.permission.-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$6-ufctMfTfrbd3URDMlB0Ywd8Ik
                public final void onUidImportance(int i, int i2) {
                    this.f$0.lambda$new$1$OneTimePermissionUserManager$PackageInactivityListener(i, i2);
                }
            };
            this.mGoneListener = new ActivityManager.OnUidImportanceListener() { // from class: com.android.server.pm.permission.-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$lKEtuzRRYU8MegOihXQiXrZ0ZaM
                public final void onUidImportance(int i, int i2) {
                    this.f$0.lambda$new$2$OneTimePermissionUserManager$PackageInactivityListener(i, i2);
                }
            };
            OneTimePermissionUserManager.this.mActivityManager.addOnUidImportanceListener(this.mStartTimerListener, importanceToResetTimer);
            OneTimePermissionUserManager.this.mActivityManager.addOnUidImportanceListener(this.mSessionKillableListener, importanceToKeepSessionAlive);
            OneTimePermissionUserManager.this.mActivityManager.addOnUidImportanceListener(this.mGoneListener, 400);
            lambda$new$2$OneTimePermissionUserManager$PackageInactivityListener(this.mUid, OneTimePermissionUserManager.this.mActivityManager.getPackageImportance(packageName));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onImportanceChanged, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public void lambda$new$2$OneTimePermissionUserManager$PackageInactivityListener(int uid, int importance) {
            if (uid == this.mUid) {
                Log.v(OneTimePermissionUserManager.LOG_TAG, "Importance changed for " + this.mPackageName + " (" + this.mUid + "). importance=" + importance);
                synchronized (this.mInnerLock) {
                    OneTimePermissionUserManager.this.mHandler.removeCallbacksAndMessages(this.mToken);
                    if (importance > 400) {
                        OneTimePermissionUserManager.this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.pm.permission.-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$QvMmrihy_HaJZiB1gxMOFQ1HgzM
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onImportanceChanged$3$OneTimePermissionUserManager$PackageInactivityListener();
                            }
                        }, this.mToken, OneTimePermissionUserManager.getKilledDelayMillis());
                        return;
                    }
                    if (importance <= this.mImportanceToResetTimer) {
                        this.mTimerStart = -1L;
                    } else if (this.mTimerStart == -1) {
                        this.mTimerStart = System.currentTimeMillis();
                    }
                    if (importance > this.mImportanceToKeepSessionAlive) {
                        setAlarmLocked();
                    } else {
                        cancelAlarmLocked();
                    }
                }
            }
        }

        public /* synthetic */ void lambda$onImportanceChanged$3$OneTimePermissionUserManager$PackageInactivityListener() {
            int imp = OneTimePermissionUserManager.this.mActivityManager.getUidImportance(this.mUid);
            if (imp > 400) {
                onPackageInactiveLocked();
            } else {
                lambda$new$2$OneTimePermissionUserManager$PackageInactivityListener(this.mUid, imp);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            synchronized (this.mInnerLock) {
                this.mIsFinished = true;
                cancelAlarmLocked();
                OneTimePermissionUserManager.this.mActivityManager.removeOnUidImportanceListener(this.mStartTimerListener);
                OneTimePermissionUserManager.this.mActivityManager.removeOnUidImportanceListener(this.mSessionKillableListener);
                OneTimePermissionUserManager.this.mActivityManager.removeOnUidImportanceListener(this.mGoneListener);
            }
        }

        private void setAlarmLocked() {
            if (this.mIsAlarmSet) {
                return;
            }
            long revokeTime = this.mTimerStart + this.mTimeout;
            if (revokeTime > System.currentTimeMillis()) {
                OneTimePermissionUserManager.this.mAlarmManager.setExact(0, revokeTime, OneTimePermissionUserManager.LOG_TAG, this, OneTimePermissionUserManager.this.mHandler);
                this.mIsAlarmSet = true;
            } else {
                this.mIsAlarmSet = true;
                onAlarm();
            }
        }

        private void cancelAlarmLocked() {
            if (this.mIsAlarmSet) {
                OneTimePermissionUserManager.this.mAlarmManager.cancel(this);
                this.mIsAlarmSet = false;
            }
        }

        private void onPackageInactiveLocked() {
            if (this.mIsFinished) {
                return;
            }
            this.mIsFinished = true;
            cancelAlarmLocked();
            OneTimePermissionUserManager.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.permission.-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$f-F2UvCQ9fPh351VSZEjDGyLjBw
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPackageInactiveLocked$4$OneTimePermissionUserManager$PackageInactivityListener();
                }
            });
            OneTimePermissionUserManager.this.mActivityManager.removeOnUidImportanceListener(this.mStartTimerListener);
            OneTimePermissionUserManager.this.mActivityManager.removeOnUidImportanceListener(this.mSessionKillableListener);
            OneTimePermissionUserManager.this.mActivityManager.removeOnUidImportanceListener(this.mGoneListener);
            synchronized (OneTimePermissionUserManager.this.mLock) {
                OneTimePermissionUserManager.this.mListeners.remove(this.mUid);
            }
        }

        public /* synthetic */ void lambda$onPackageInactiveLocked$4$OneTimePermissionUserManager$PackageInactivityListener() {
            Log.i(OneTimePermissionUserManager.LOG_TAG, "One time session expired for " + this.mPackageName + " (" + this.mUid + ").");
            OneTimePermissionUserManager.this.mPermissionControllerManager.notifyOneTimePermissionSessionTimeout(this.mPackageName);
        }

        @Override // android.app.AlarmManager.OnAlarmListener
        public void onAlarm() {
            synchronized (this.mInnerLock) {
                if (this.mIsAlarmSet) {
                    this.mIsAlarmSet = false;
                    onPackageInactiveLocked();
                }
            }
        }
    }
}
