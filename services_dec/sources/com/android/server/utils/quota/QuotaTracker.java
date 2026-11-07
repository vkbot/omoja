package com.android.server.utils.quota;

import android.app.AlarmManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArraySet;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArrayMap;
import android.util.proto.ProtoOutputStream;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.FgThread;
import com.android.server.LocalServices;
import com.android.server.SystemServiceManager;
import com.android.server.pm.Settings;
import java.util.Comparator;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
abstract class QuotaTracker {
    private static final boolean DEBUG = false;
    static final long MAX_WINDOW_SIZE_MS = 2592000000L;
    static final long MIN_WINDOW_SIZE_MS = 30000;
    private final AlarmManager mAlarmManager;
    final Categorizer mCategorizer;
    protected final Context mContext;
    protected final Injector mInjector;
    private boolean mIsQuotaFree;
    private static final String TAG = QuotaTracker.class.getSimpleName();
    private static final String ALARM_TAG_QUOTA_CHECK = "*" + TAG + ".quota_check*";
    final Object mLock = new Object();
    private final ArraySet<QuotaChangeListener> mQuotaChangeListeners = new ArraySet<>();
    private final InQuotaAlarmListener mInQuotaAlarmListener = new InQuotaAlarmListener();
    private final SparseArrayMap<Boolean> mFreeQuota = new SparseArrayMap<>();
    private boolean mIsEnabled = true;
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.utils.quota.QuotaTracker.1
        private String getPackageName(Intent intent) {
            Uri uri = intent.getData();
            if (uri != null) {
                return uri.getSchemeSpecificPart();
            }
            return null;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0042  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            if (intent == null || intent.getBooleanExtra("android.intent.extra.REPLACING", false)) {
                return;
            }
            String action = intent.getAction();
            if (action == null) {
                Slog.e(QuotaTracker.TAG, "Received intent with null action");
                return;
            }
            int iHashCode = action.hashCode();
            if (iHashCode != -2061058799) {
                if (iHashCode == 1580442797 && action.equals("android.intent.action.PACKAGE_FULLY_REMOVED")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (action.equals("android.intent.action.USER_REMOVED")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0) {
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                synchronized (QuotaTracker.this.mLock) {
                    QuotaTracker.this.onAppRemovedLocked(getPackageName(intent), uid);
                }
                return;
            }
            if (b == 1) {
                int userId = intent.getIntExtra("android.intent.extra.user_handle", 0);
                synchronized (QuotaTracker.this.mLock) {
                    QuotaTracker.this.onUserRemovedLocked(userId);
                }
            }
        }
    };

    abstract void dropEverythingLocked();

    abstract Handler getHandler();

    abstract long getInQuotaTimeElapsedLocked(int i, String str, String str2);

    abstract void handleRemovedAppLocked(String str, int i);

    abstract void handleRemovedUserLocked(int i);

    abstract boolean isWithinQuotaLocked(int i, String str, String str2);

    abstract void maybeUpdateAllQuotaStatusLocked();

    abstract void maybeUpdateQuotaStatus(int i, String str, String str2);

    abstract void onQuotaFreeChangedLocked(int i, String str, boolean z);

    abstract void onQuotaFreeChangedLocked(boolean z);

    static class Injector {
        Injector() {
        }

        long getElapsedRealtime() {
            return SystemClock.elapsedRealtime();
        }

        boolean isAlarmManagerReady() {
            return ((SystemServiceManager) LocalServices.getService(SystemServiceManager.class)).isBootCompleted();
        }
    }

    QuotaTracker(Context context, Categorizer categorizer, Injector injector) {
        this.mCategorizer = categorizer;
        this.mContext = context;
        this.mInjector = injector;
        this.mAlarmManager = (AlarmManager) context.getSystemService(AlarmManager.class);
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.PACKAGE_FULLY_REMOVED");
        filter.addDataScheme(Settings.ATTR_PACKAGE);
        context.registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, filter, null, BackgroundThread.getHandler());
        IntentFilter userFilter = new IntentFilter("android.intent.action.USER_REMOVED");
        context.registerReceiverAsUser(this.mBroadcastReceiver, UserHandle.ALL, userFilter, null, BackgroundThread.getHandler());
    }

    public void clear() {
        synchronized (this.mLock) {
            this.mInQuotaAlarmListener.clearLocked();
            this.mFreeQuota.clear();
            dropEverythingLocked();
        }
    }

    public boolean isWithinQuota(int userId, String packageName, String tag) {
        boolean zIsWithinQuotaLocked;
        synchronized (this.mLock) {
            zIsWithinQuotaLocked = isWithinQuotaLocked(userId, packageName, tag);
        }
        return zIsWithinQuotaLocked;
    }

    public void setQuotaFree(int userId, String packageName, boolean isFree) {
        synchronized (this.mLock) {
            boolean wasFree = ((Boolean) this.mFreeQuota.getOrDefault(userId, packageName, Boolean.FALSE)).booleanValue();
            if (wasFree != isFree) {
                this.mFreeQuota.add(userId, packageName, Boolean.valueOf(isFree));
                onQuotaFreeChangedLocked(userId, packageName, isFree);
            }
        }
    }

    public void setQuotaFree(boolean isFree) {
        synchronized (this.mLock) {
            if (this.mIsQuotaFree == isFree) {
                return;
            }
            this.mIsQuotaFree = isFree;
            if (this.mIsEnabled) {
                onQuotaFreeChangedLocked(isFree);
                scheduleQuotaCheck();
            }
        }
    }

    public void registerQuotaChangeListener(QuotaChangeListener listener) {
        synchronized (this.mLock) {
            if (this.mQuotaChangeListeners.add(listener) && this.mQuotaChangeListeners.size() == 1) {
                scheduleQuotaCheck();
            }
        }
    }

    public void unregisterQuotaChangeListener(QuotaChangeListener listener) {
        synchronized (this.mLock) {
            this.mQuotaChangeListeners.remove(listener);
        }
    }

    public void setEnabled(boolean enable) {
        synchronized (this.mLock) {
            if (this.mIsEnabled == enable) {
                return;
            }
            this.mIsEnabled = enable;
            if (!enable) {
                clear();
            }
        }
    }

    boolean isEnabledLocked() {
        return this.mIsEnabled;
    }

    boolean isQuotaFreeLocked() {
        return this.mIsQuotaFree;
    }

    boolean isQuotaFreeLocked(int userId, String packageName) {
        return this.mIsQuotaFree || ((Boolean) this.mFreeQuota.getOrDefault(userId, packageName, Boolean.FALSE)).booleanValue();
    }

    boolean isIndividualQuotaFreeLocked(int userId, String packageName) {
        return ((Boolean) this.mFreeQuota.getOrDefault(userId, packageName, Boolean.FALSE)).booleanValue();
    }

    void scheduleAlarm(final int type, final long triggerAtMillis, final String tag, final AlarmManager.OnAlarmListener listener) {
        FgThread.getHandler().post(new Runnable() { // from class: com.android.server.utils.quota.-$$Lambda$QuotaTracker$QGqhRiGVlazdG76r-Ich6VZnho4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleAlarm$0$QuotaTracker(type, triggerAtMillis, tag, listener);
            }
        });
    }

    public /* synthetic */ void lambda$scheduleAlarm$0$QuotaTracker(int type, long triggerAtMillis, String tag, AlarmManager.OnAlarmListener listener) {
        if (this.mInjector.isAlarmManagerReady()) {
            this.mAlarmManager.set(type, triggerAtMillis, tag, listener, getHandler());
        } else {
            Slog.w(TAG, "Alarm not scheduled because boot isn't completed");
        }
    }

    void cancelAlarm(final AlarmManager.OnAlarmListener listener) {
        FgThread.getHandler().post(new Runnable() { // from class: com.android.server.utils.quota.-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelAlarm$1$QuotaTracker(listener);
            }
        });
    }

    public /* synthetic */ void lambda$cancelAlarm$1$QuotaTracker(AlarmManager.OnAlarmListener listener) {
        if (this.mInjector.isAlarmManagerReady()) {
            this.mAlarmManager.cancel(listener);
        } else {
            Slog.w(TAG, "Alarm not cancelled because boot isn't completed");
        }
    }

    void scheduleQuotaCheck() {
        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.utils.quota.-$$Lambda$QuotaTracker$cKEDVJtC0LHULuSrH0-B6zQBe3g
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$scheduleQuotaCheck$2$QuotaTracker();
            }
        });
    }

    public /* synthetic */ void lambda$scheduleQuotaCheck$2$QuotaTracker() {
        synchronized (this.mLock) {
            if (this.mQuotaChangeListeners.size() > 0) {
                maybeUpdateAllQuotaStatusLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppRemovedLocked(String packageName, int uid) {
        if (packageName == null) {
            Slog.wtf(TAG, "Told app removed but given null package name.");
            return;
        }
        int userId = UserHandle.getUserId(uid);
        this.mInQuotaAlarmListener.removeAlarmsLocked(userId, packageName);
        this.mFreeQuota.delete(userId, packageName);
        handleRemovedAppLocked(packageName, uid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUserRemovedLocked(int userId) {
        this.mInQuotaAlarmListener.removeAlarmsLocked(userId);
        this.mFreeQuota.delete(userId);
        handleRemovedUserLocked(userId);
    }

    void postQuotaStatusChanged(final int userId, final String packageName, final String tag) {
        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.utils.quota.-$$Lambda$QuotaTracker$XRuiZQg4lOmWE1kXJjjkatdBgB8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$postQuotaStatusChanged$3$QuotaTracker(userId, packageName, tag);
            }
        });
    }

    public /* synthetic */ void lambda$postQuotaStatusChanged$3$QuotaTracker(int userId, String packageName, String tag) {
        QuotaChangeListener[] listeners;
        synchronized (this.mLock) {
            listeners = (QuotaChangeListener[]) this.mQuotaChangeListeners.toArray(new QuotaChangeListener[this.mQuotaChangeListeners.size()]);
        }
        for (QuotaChangeListener listener : listeners) {
            listener.onQuotaStateChanged(userId, packageName, tag);
        }
    }

    void maybeScheduleStartAlarmLocked(int userId, String packageName, String tag) {
        if (this.mQuotaChangeListeners.size() == 0) {
            return;
        }
        Uptc.string(userId, packageName, tag);
        if (isWithinQuota(userId, packageName, tag)) {
            this.mInQuotaAlarmListener.removeAlarmLocked(new Uptc(userId, packageName, tag));
            maybeUpdateQuotaStatus(userId, packageName, tag);
        } else {
            this.mInQuotaAlarmListener.addAlarmLocked(new Uptc(userId, packageName, tag), getInQuotaTimeElapsedLocked(userId, packageName, tag));
        }
    }

    void cancelScheduledStartAlarmLocked(int userId, String packageName, String tag) {
        this.mInQuotaAlarmListener.removeAlarmLocked(new Uptc(userId, packageName, tag));
    }

    static class AlarmQueue extends PriorityQueue<Pair<Uptc, Long>> {
        AlarmQueue() {
            super(1, new Comparator() { // from class: com.android.server.utils.quota.-$$Lambda$QuotaTracker$AlarmQueue$9XqssygjZyzGRYPaPGM34LNECH0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return QuotaTracker.AlarmQueue.lambda$new$0((Pair) obj, (Pair) obj2);
                }
            });
        }

        static /* synthetic */ int lambda$new$0(Pair o1, Pair o2) {
            return (int) (((Long) o1.second).longValue() - ((Long) o2.second).longValue());
        }

        boolean remove(Uptc uptc) {
            boolean removed = false;
            Pair[] alarms = (Pair[]) toArray(new Pair[size()]);
            for (int i = alarms.length - 1; i >= 0; i--) {
                if (uptc.equals(alarms[i].first)) {
                    remove(alarms[i]);
                    removed = true;
                }
            }
            return removed;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class InQuotaAlarmListener implements AlarmManager.OnAlarmListener {
        private final AlarmQueue mAlarmQueue;
        private long mTriggerTimeElapsed;

        private InQuotaAlarmListener() {
            this.mAlarmQueue = new AlarmQueue();
            this.mTriggerTimeElapsed = 0L;
        }

        void addAlarmLocked(Uptc uptc, long inQuotaTimeElapsed) {
            this.mAlarmQueue.remove(uptc);
            this.mAlarmQueue.offer(new Pair(uptc, Long.valueOf(inQuotaTimeElapsed)));
            setNextAlarmLocked();
        }

        void clearLocked() {
            QuotaTracker.this.cancelAlarm(this);
            this.mAlarmQueue.clear();
            this.mTriggerTimeElapsed = 0L;
        }

        void removeAlarmLocked(Uptc uptc) {
            if (this.mAlarmQueue.remove(uptc)) {
                if (this.mAlarmQueue.size() == 0) {
                    QuotaTracker.this.cancelAlarm(this);
                } else {
                    setNextAlarmLocked();
                }
            }
        }

        void removeAlarmsLocked(int userId) {
            boolean removed = false;
            AlarmQueue alarmQueue = this.mAlarmQueue;
            Pair[] alarms = (Pair[]) alarmQueue.toArray(new Pair[alarmQueue.size()]);
            for (int i = alarms.length - 1; i >= 0; i--) {
                Uptc uptc = (Uptc) alarms[i].first;
                if (userId == uptc.userId) {
                    this.mAlarmQueue.remove(alarms[i]);
                    removed = true;
                }
            }
            if (removed) {
                setNextAlarmLocked();
            }
        }

        void removeAlarmsLocked(int userId, String packageName) {
            boolean removed = false;
            AlarmQueue alarmQueue = this.mAlarmQueue;
            Pair[] alarms = (Pair[]) alarmQueue.toArray(new Pair[alarmQueue.size()]);
            for (int i = alarms.length - 1; i >= 0; i--) {
                Uptc uptc = (Uptc) alarms[i].first;
                if (userId == uptc.userId && packageName.equals(uptc.packageName)) {
                    this.mAlarmQueue.remove(alarms[i]);
                    removed = true;
                }
            }
            if (removed) {
                setNextAlarmLocked();
            }
        }

        private void setNextAlarmLocked() {
            if (this.mAlarmQueue.size() > 0) {
                long nextTriggerTimeElapsed = ((Long) this.mAlarmQueue.peek().second).longValue();
                long j = this.mTriggerTimeElapsed;
                if (j == 0 || nextTriggerTimeElapsed < j - 180000 || j < nextTriggerTimeElapsed) {
                    QuotaTracker.this.scheduleAlarm(3, nextTriggerTimeElapsed, QuotaTracker.ALARM_TAG_QUOTA_CHECK, this);
                    this.mTriggerTimeElapsed = nextTriggerTimeElapsed;
                    return;
                }
                return;
            }
            QuotaTracker.this.cancelAlarm(this);
            this.mTriggerTimeElapsed = 0L;
        }

        @Override // android.app.AlarmManager.OnAlarmListener
        public void onAlarm() {
            synchronized (QuotaTracker.this.mLock) {
                while (this.mAlarmQueue.size() > 0) {
                    final Pair<Uptc, Long> alarm = this.mAlarmQueue.peek();
                    if (((Long) alarm.second).longValue() > QuotaTracker.this.mInjector.getElapsedRealtime()) {
                        break;
                    }
                    QuotaTracker.this.getHandler().post(new Runnable() { // from class: com.android.server.utils.quota.-$$Lambda$QuotaTracker$InQuotaAlarmListener$soj539BGmQ3unUf9-_Ugq8KVOxI
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onAlarm$0$QuotaTracker$InQuotaAlarmListener(alarm);
                        }
                    });
                    this.mAlarmQueue.remove(alarm);
                }
                setNextAlarmLocked();
            }
        }

        public /* synthetic */ void lambda$onAlarm$0$QuotaTracker$InQuotaAlarmListener(Pair alarm) {
            QuotaTracker.this.maybeUpdateQuotaStatus(((Uptc) alarm.first).userId, ((Uptc) alarm.first).packageName, ((Uptc) alarm.first).tag);
        }

        void dumpLocked(IndentingPrintWriter pw) {
            pw.println("In quota alarms:");
            pw.increaseIndent();
            if (this.mAlarmQueue.size() == 0) {
                pw.println("NOT WAITING");
            } else {
                AlarmQueue alarmQueue = this.mAlarmQueue;
                Pair[] alarms = (Pair[]) alarmQueue.toArray(new Pair[alarmQueue.size()]);
                for (int i = 0; i < alarms.length; i++) {
                    Uptc uptc = (Uptc) alarms[i].first;
                    pw.print(uptc);
                    pw.print(": ");
                    pw.print(alarms[i].second);
                    pw.println();
                }
            }
            pw.decreaseIndent();
        }

        void dumpLocked(ProtoOutputStream proto, long fieldId) {
            long token = proto.start(fieldId);
            proto.write(1112396529665L, this.mTriggerTimeElapsed);
            AlarmQueue alarmQueue = this.mAlarmQueue;
            Pair[] alarms = (Pair[]) alarmQueue.toArray(new Pair[alarmQueue.size()]);
            for (int i = 0; i < alarms.length; i++) {
                long aToken = proto.start(2246267895810L);
                Uptc uptc = (Uptc) alarms[i].first;
                uptc.dumpDebug(proto, 1146756268033L);
                proto.write(1112396529666L, ((Long) alarms[i].second).longValue());
                proto.end(aToken);
            }
            proto.end(token);
        }
    }

    public void dump(IndentingPrintWriter pw) {
        synchronized (this.mLock) {
            pw.println("Is enabled: " + this.mIsEnabled);
            pw.println("Is global quota free: " + this.mIsQuotaFree);
            pw.println("Current elapsed time: " + this.mInjector.getElapsedRealtime());
            pw.println();
            pw.println();
            this.mInQuotaAlarmListener.dumpLocked(pw);
            pw.println();
            pw.println("Per-app free quota:");
            pw.increaseIndent();
            for (int u = 0; u < this.mFreeQuota.numMaps(); u++) {
                int userId = this.mFreeQuota.keyAt(u);
                for (int p = 0; p < this.mFreeQuota.numElementsForKey(userId); p++) {
                    String pkgName = this.mFreeQuota.keyAt(u, p);
                    pw.print(Uptc.string(userId, pkgName, null));
                    pw.print(": ");
                    pw.println(this.mFreeQuota.get(userId, pkgName));
                }
            }
            pw.decreaseIndent();
        }
    }

    public void dump(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        synchronized (this.mLock) {
            proto.write(1133871366145L, this.mIsEnabled);
            proto.write(1133871366146L, this.mIsQuotaFree);
            proto.write(1112396529667L, this.mInjector.getElapsedRealtime());
            this.mInQuotaAlarmListener.dumpLocked(proto, 1146756268036L);
        }
        proto.end(token);
    }
}
