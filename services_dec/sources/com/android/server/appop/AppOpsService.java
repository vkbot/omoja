package com.android.server.appop;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.AppOpsManagerInternal;
import android.app.AsyncNotedAppOp;
import android.app.RuntimeAppOpAccessMessage;
import android.app.SyncNotedAppOp;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PermissionInfo;
import android.content.pm.UserInfo;
import android.content.pm.parsing.component.ParsedAttribution;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.ShellCommand;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.os.storage.StorageManagerInternal;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.KeyValueListParser;
import android.util.LongSparseArray;
import android.util.Pair;
import android.util.Pools;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.Xml;
import com.android.internal.app.IAppOpsActiveCallback;
import com.android.internal.app.IAppOpsAsyncNotedCallback;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsNotedCallback;
import com.android.internal.app.IAppOpsService;
import com.android.internal.app.IAppOpsStartedCallback;
import com.android.internal.app.MessageSamplingConfig;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.function.DecConsumer;
import com.android.internal.util.function.HeptFunction;
import com.android.internal.util.function.HexConsumer;
import com.android.internal.util.function.QuadFunction;
import com.android.internal.util.function.QuintConsumer;
import com.android.internal.util.function.TriConsumer;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.SystemServerInitThreadPool;
import com.android.server.SystemService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.hdmi.HdmiCecKeycode;
import com.android.server.job.controllers.JobStatus;
import com.android.server.net.watchlist.WatchlistLoggingHandler;
import com.android.server.pm.PackageList;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.slice.SliceClientPermissions;
import com.android.server.wm.ActivityTaskManagerService;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.Scanner;
import java.util.concurrent.ThreadLocalRandom;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import libcore.util.EmptyArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class AppOpsService extends IAppOpsService.Stub {
    private static final int CURRENT_VERSION = 1;
    static final boolean DEBUG = false;
    private static final int DEBUG_FGS_ALLOW_WHILE_IN_USE = 0;
    private static final int DEBUG_FGS_ENFORCE_TYPE = 1;
    private static final int MAX_UNFORWARDED_OPS = 10;
    private static final int MAX_UNUSED_POOLED_OBJECTS = 3;
    private static final int NO_VERSION = -1;
    private static final int RARELY_USED_PACKAGES_INITIALIZATION_DELAY_MILLIS = 300000;
    static final String TAG = "AppOps";
    private static final int UID_ANY = -2;
    static final long WRITE_DELAY = 1800000;
    private ActivityManagerInternal mActivityManagerInternal;
    private AppOpsManagerInternal.CheckOpsDelegate mCheckOpsDelegate;
    private RuntimeAppOpAccessMessage mCollectedRuntimePermissionMessage;
    final Constants mConstants;
    final Context mContext;
    boolean mFastWriteScheduled;
    final AtomicFile mFile;
    final Handler mHandler;
    long mLastRealtime;
    private float mMessagesCollectedCount;
    private final File mNoteOpCallerStacktracesFile;
    SparseIntArray mProfileOwners;
    private int mSamplingStrategy;
    boolean mWriteNoteOpsScheduled;
    boolean mWriteScheduled;
    private static final int[] PROCESS_STATE_TO_UID_STATE = {100, 100, DisplayTransformManager.LEVEL_COLOR_MATRIX_GRAYSCALE, 500, 400, 500, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, SystemService.PHASE_THIRD_PARTY_APPS_CAN_START, 700, 700, 700, 700, 700, 700, 700, 700, 700};
    private static final int[] OPS_RESTRICTED_ON_SUSPEND = {28, 27, 26};
    private final ArraySet<NoteOpTrace> mNoteOpCallerStacktraces = new ArraySet<>();
    private final OpEventProxyInfoPool mOpEventProxyInfoPool = new OpEventProxyInfoPool();
    private final InProgressStartOpEventPool mInProgressStartOpEventPool = new InProgressStartOpEventPool();
    private final AppOpsManagerInternalImpl mAppOpsManagerInternal = new AppOpsManagerInternalImpl();
    private final DevicePolicyManagerInternal dpmi = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
    private final ArrayMap<Pair<String, Integer>, RemoteCallbackList<IAppOpsAsyncNotedCallback>> mAsyncOpWatchers = new ArrayMap<>();
    private final ArrayMap<Pair<String, Integer>, ArrayList<AsyncNotedAppOp>> mUnforwardedAsyncNotedOps = new ArrayMap<>();
    final Runnable mWriteRunner = new Runnable() { // from class: com.android.server.appop.AppOpsService.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (AppOpsService.this) {
                AppOpsService.this.mWriteScheduled = false;
                AppOpsService.this.mFastWriteScheduled = false;
                AsyncTask<Void, Void, Void> task = new AsyncTask<Void, Void, Void>() { // from class: com.android.server.appop.AppOpsService.1.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.os.AsyncTask
                    public Void doInBackground(Void... params) {
                        AppOpsService.this.writeState();
                        return null;
                    }
                };
                task.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Void[]) null);
            }
        }
    };
    final SparseArray<UidState> mUidStates = new SparseArray<>();
    volatile HistoricalRegistry mHistoricalRegistry = new HistoricalRegistry(this);
    private final ArrayMap<IBinder, ClientRestrictionState> mOpUserRestrictions = new ArrayMap<>();
    private final SparseArray<int[]> mSwitchedOps = new SparseArray<>();
    private String mSampledPackage = null;
    private int mSampledAppOpCode = -1;
    private int mAcceptableLeftDistance = 0;
    private ArraySet<String> mRarelyUsedPackages = new ArraySet<>();
    final SparseArray<ArraySet<ModeCallback>> mOpModeWatchers = new SparseArray<>();
    final ArrayMap<String, ArraySet<ModeCallback>> mPackageModeWatchers = new ArrayMap<>();
    final ArrayMap<IBinder, ModeCallback> mModeWatchers = new ArrayMap<>();
    final ArrayMap<IBinder, SparseArray<ActiveCallback>> mActiveWatchers = new ArrayMap<>();
    final ArrayMap<IBinder, SparseArray<StartedCallback>> mStartedWatchers = new ArrayMap<>();
    final ArrayMap<IBinder, SparseArray<NotedCallback>> mNotedWatchers = new ArrayMap<>();
    final AudioRestrictionManager mAudioRestrictionManager = new AudioRestrictionManager();
    private BroadcastReceiver mOnPackageUpdatedReceiver = new BroadcastReceiver() { // from class: com.android.server.appop.AppOpsService.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AndroidPackage pkg;
            String action = intent.getAction();
            String pkgName = intent.getData().getEncodedSchemeSpecificPart();
            int uid = intent.getIntExtra("android.intent.extra.UID", -1);
            if (action.equals("android.intent.action.PACKAGE_REMOVED") && !intent.hasExtra("android.intent.extra.REPLACING")) {
                synchronized (AppOpsService.this) {
                    UidState uidState = AppOpsService.this.mUidStates.get(uid);
                    if (uidState != null && uidState.pkgOps != null) {
                        Ops removedOps = uidState.pkgOps.remove(pkgName);
                        if (removedOps != null) {
                            AppOpsService.this.scheduleFastWriteLocked();
                        }
                        return;
                    }
                    return;
                }
            }
            if (!action.equals("android.intent.action.PACKAGE_REPLACED") || (pkg = ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackage(pkgName)) == null) {
                return;
            }
            ArrayMap<String, String> dstAttributionTags = new ArrayMap<>();
            ArraySet<String> attributionTags = new ArraySet<>();
            attributionTags.add(null);
            if (pkg.getAttributions() != null) {
                int numAttributions = pkg.getAttributions().size();
                for (int attributionNum = 0; attributionNum < numAttributions; attributionNum++) {
                    ParsedAttribution attribution = pkg.getAttributions().get(attributionNum);
                    attributionTags.add(attribution.tag);
                    int numInheritFrom = attribution.inheritFrom.size();
                    for (int inheritFromNum = 0; inheritFromNum < numInheritFrom; inheritFromNum++) {
                        dstAttributionTags.put((String) attribution.inheritFrom.get(inheritFromNum), attribution.tag);
                    }
                }
            }
            synchronized (AppOpsService.this) {
                UidState uidState2 = AppOpsService.this.mUidStates.get(uid);
                if (uidState2 != null && uidState2.pkgOps != null) {
                    Ops ops = uidState2.pkgOps.get(pkgName);
                    if (ops == null) {
                        return;
                    }
                    ops.bypass = null;
                    ops.knownAttributionTags.clear();
                    int numOps = ops.size();
                    for (int opNum = 0; opNum < numOps; opNum++) {
                        Op op = ops.valueAt(opNum);
                        int numAttributions2 = op.mAttributions.size();
                        int attributionNum2 = numAttributions2 - 1;
                        while (attributionNum2 >= 0) {
                            int numOps2 = numOps;
                            String attributionTag = op.mAttributions.keyAt(attributionNum2);
                            if (!attributionTags.contains(attributionTag)) {
                                String newAttributionTag = dstAttributionTags.get(attributionTag);
                                AttributedOp newAttributedOp = op.getOrCreateAttribution(op, newAttributionTag);
                                newAttributedOp.add(op.mAttributions.valueAt(attributionNum2));
                                op.mAttributions.removeAt(attributionNum2);
                                AppOpsService.this.scheduleFastWriteLocked();
                            }
                            attributionNum2--;
                            numOps = numOps2;
                        }
                    }
                }
            }
        }
    };

    private class OpEventProxyInfoPool extends Pools.SimplePool<AppOpsManager.OpEventProxyInfo> {
        OpEventProxyInfoPool() {
            super(3);
        }

        AppOpsManager.OpEventProxyInfo acquire(int uid, String packageName, String attributionTag) {
            AppOpsManager.OpEventProxyInfo recycled = (AppOpsManager.OpEventProxyInfo) acquire();
            if (recycled != null) {
                recycled.reinit(uid, packageName, attributionTag);
                return recycled;
            }
            return new AppOpsManager.OpEventProxyInfo(uid, packageName, attributionTag);
        }
    }

    private class InProgressStartOpEventPool extends Pools.SimplePool<InProgressStartOpEvent> {
        InProgressStartOpEventPool() {
            super(3);
        }

        InProgressStartOpEvent acquire(long startTime, long elapsedTime, IBinder clientId, Runnable onDeath, int uidState) throws RemoteException {
            InProgressStartOpEvent recycled = (InProgressStartOpEvent) acquire();
            if (recycled != null) {
                recycled.reinit(startTime, elapsedTime, clientId, onDeath, uidState);
                return recycled;
            }
            return new InProgressStartOpEvent(startTime, elapsedTime, clientId, onDeath, uidState);
        }
    }

    final class Constants extends ContentObserver {
        public long BG_STATE_SETTLE_TIME;
        public long FG_SERVICE_STATE_SETTLE_TIME;
        public long TOP_STATE_SETTLE_TIME;
        private final KeyValueListParser mParser;
        private ContentResolver mResolver;

        public Constants(Handler handler) {
            super(handler);
            this.mParser = new KeyValueListParser(',');
            updateConstants();
        }

        public void startMonitoring(ContentResolver resolver) {
            this.mResolver = resolver;
            resolver.registerContentObserver(Settings.Global.getUriFor("app_ops_constants"), false, this);
            updateConstants();
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            updateConstants();
        }

        private void updateConstants() {
            ContentResolver contentResolver = this.mResolver;
            String value = contentResolver != null ? Settings.Global.getString(contentResolver, "app_ops_constants") : "";
            synchronized (AppOpsService.this) {
                try {
                    this.mParser.setString(value);
                } catch (IllegalArgumentException e) {
                    Slog.e(AppOpsService.TAG, "Bad app ops settings", e);
                }
                this.TOP_STATE_SETTLE_TIME = this.mParser.getDurationMillis("top_state_settle_time", 5000L);
                this.FG_SERVICE_STATE_SETTLE_TIME = this.mParser.getDurationMillis("fg_service_state_settle_time", 5000L);
                this.BG_STATE_SETTLE_TIME = this.mParser.getDurationMillis("bg_state_settle_time", 1000L);
            }
        }

        void dump(PrintWriter pw) {
            pw.println("  Settings:");
            pw.print("    ");
            pw.print("top_state_settle_time");
            pw.print("=");
            TimeUtils.formatDuration(this.TOP_STATE_SETTLE_TIME, pw);
            pw.println();
            pw.print("    ");
            pw.print("fg_service_state_settle_time");
            pw.print("=");
            TimeUtils.formatDuration(this.FG_SERVICE_STATE_SETTLE_TIME, pw);
            pw.println();
            pw.print("    ");
            pw.print("bg_state_settle_time");
            pw.print("=");
            TimeUtils.formatDuration(this.BG_STATE_SETTLE_TIME, pw);
            pw.println();
        }
    }

    final class UidState {
        public boolean appWidgetVisible;
        public int capability;
        public SparseBooleanArray foregroundOps;
        public boolean hasForegroundWatchers;
        public SparseIntArray opModes;
        public boolean pendingAppWidgetVisible;
        public int pendingCapability;
        public long pendingStateCommitTime;
        public ArrayMap<String, Ops> pkgOps;
        public final int uid;
        public int state = 700;
        public int pendingState = 700;

        public UidState(int uid) {
            this.uid = uid;
        }

        public void clear() {
            this.pkgOps = null;
            this.opModes = null;
        }

        public boolean isDefault() {
            SparseIntArray sparseIntArray;
            ArrayMap<String, Ops> arrayMap = this.pkgOps;
            return (arrayMap == null || arrayMap.isEmpty()) && ((sparseIntArray = this.opModes) == null || sparseIntArray.size() <= 0) && this.state == 700 && this.pendingState == 700;
        }

        int evalMode(int op, int mode) {
            int i;
            if (mode == 4) {
                if (this.appWidgetVisible) {
                    return 0;
                }
                if ((AppOpsService.this.mActivityManagerInternal != null && AppOpsService.this.mActivityManagerInternal.isPendingTopUid(this.uid)) || (i = this.state) <= 200) {
                    return 0;
                }
                if (i > AppOpsManager.resolveFirstUnrestrictedUidState(op)) {
                    return 1;
                }
                if (op != 0 && op != 1) {
                    if (op == 26) {
                        return (this.capability & 2) != 0 ? 0 : 1;
                    }
                    if (op == 27) {
                        return (this.capability & 4) != 0 ? 0 : 1;
                    }
                    if (op != 41 && op != 42) {
                        return 0;
                    }
                }
                return (this.capability & 1) != 0 ? 0 : 1;
            }
            if (mode == 0) {
                if (op == 26) {
                    if (AppOpsService.this.mActivityManagerInternal == null || !AppOpsService.this.mActivityManagerInternal.isPendingTopUid(this.uid)) {
                        return ((AppOpsService.this.mActivityManagerInternal == null || !AppOpsService.this.mActivityManagerInternal.isTempAllowlistedForFgsWhileInUse(this.uid)) && (this.capability & 2) == 0) ? 1 : 0;
                    }
                    return 0;
                }
                if (op != 27) {
                    return 0;
                }
                if (AppOpsService.this.mActivityManagerInternal == null || !AppOpsService.this.mActivityManagerInternal.isPendingTopUid(this.uid)) {
                    return ((AppOpsService.this.mActivityManagerInternal == null || !AppOpsService.this.mActivityManagerInternal.isTempAllowlistedForFgsWhileInUse(this.uid)) && (this.capability & 4) == 0) ? 1 : 0;
                }
                return 0;
            }
            return mode;
        }

        private void evalForegroundWatchers(int op, SparseArray<ArraySet<ModeCallback>> watchers, SparseBooleanArray which) {
            boolean curValue = which.get(op, false);
            ArraySet<ModeCallback> callbacks = watchers.get(op);
            if (callbacks != null) {
                for (int cbi = callbacks.size() - 1; !curValue && cbi >= 0; cbi--) {
                    if ((callbacks.valueAt(cbi).mFlags & 1) != 0) {
                        this.hasForegroundWatchers = true;
                        curValue = true;
                    }
                }
            }
            which.put(op, curValue);
        }

        public void evalForegroundOps(SparseArray<ArraySet<ModeCallback>> watchers) {
            SparseBooleanArray which = null;
            this.hasForegroundWatchers = false;
            SparseIntArray sparseIntArray = this.opModes;
            if (sparseIntArray != null) {
                for (int i = sparseIntArray.size() - 1; i >= 0; i--) {
                    if (this.opModes.valueAt(i) == 4) {
                        if (which == null) {
                            which = new SparseBooleanArray();
                        }
                        evalForegroundWatchers(this.opModes.keyAt(i), watchers, which);
                    }
                }
            }
            ArrayMap<String, Ops> arrayMap = this.pkgOps;
            if (arrayMap != null) {
                for (int i2 = arrayMap.size() - 1; i2 >= 0; i2--) {
                    Ops ops = this.pkgOps.valueAt(i2);
                    for (int j = ops.size() - 1; j >= 0; j--) {
                        if (ops.valueAt(j).mode == 4) {
                            if (which == null) {
                                which = new SparseBooleanArray();
                            }
                            evalForegroundWatchers(ops.keyAt(j), watchers, which);
                        }
                    }
                }
            }
            this.foregroundOps = which;
        }
    }

    static final class Ops extends SparseArray<Op> {
        AppOpsManager.RestrictionBypass bypass;
        final ArraySet<String> knownAttributionTags = new ArraySet<>();
        final String packageName;
        final UidState uidState;

        Ops(String _packageName, UidState _uidState) {
            this.packageName = _packageName;
            this.uidState = _uidState;
        }
    }

    private static final class InProgressStartOpEvent implements IBinder.DeathRecipient {
        private IBinder mClientId;
        private Runnable mOnDeath;
        private long mStartElapsedTime;
        private long mStartTime;
        private int mUidState;
        int numUnfinishedStarts;

        private InProgressStartOpEvent(long startTime, long startElapsedTime, IBinder clientId, Runnable onDeath, int uidState) throws RemoteException {
            this.mStartTime = startTime;
            this.mStartElapsedTime = startElapsedTime;
            this.mClientId = clientId;
            this.mOnDeath = onDeath;
            this.mUidState = uidState;
            clientId.linkToDeath(this, 0);
        }

        public void finish() {
            this.mClientId.unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.mOnDeath.run();
        }

        public void reinit(long startTime, long startElapsedTime, IBinder clientId, Runnable onDeath, int uidState) throws RemoteException {
            this.mStartTime = startTime;
            this.mStartElapsedTime = startElapsedTime;
            this.mClientId = clientId;
            this.mOnDeath = onDeath;
            this.mUidState = uidState;
            clientId.linkToDeath(this, 0);
        }

        public long getStartTime() {
            return this.mStartTime;
        }

        public long getStartElapsedTime() {
            return this.mStartElapsedTime;
        }

        public IBinder getClientId() {
            return this.mClientId;
        }

        public int getUidState() {
            return this.mUidState;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class AttributedOp {
        private LongSparseArray<AppOpsManager.NoteOpEvent> mAccessEvents;
        private ArrayMap<IBinder, InProgressStartOpEvent> mInProgressEvents;
        private LongSparseArray<AppOpsManager.NoteOpEvent> mRejectEvents;
        public final Op parent;
        public final String tag;

        AttributedOp(String tag, Op parent) {
            this.tag = tag;
            this.parent = parent;
        }

        public void accessed(int proxyUid, String proxyPackageName, String proxyAttributionTag, int uidState, int flags) {
            accessed(System.currentTimeMillis(), -1L, proxyUid, proxyPackageName, proxyAttributionTag, uidState, flags);
            AppOpsService.this.mHistoricalRegistry.incrementOpAccessedCount(this.parent.op, this.parent.uid, this.parent.packageName, this.tag, uidState, flags);
        }

        public void accessed(long noteTime, long duration, int proxyUid, String proxyPackageName, String proxyAttributionTag, int uidState, int flags) {
            long key = AppOpsManager.makeKey(uidState, flags);
            if (this.mAccessEvents == null) {
                this.mAccessEvents = new LongSparseArray<>(1);
            }
            AppOpsManager.OpEventProxyInfo proxyInfo = null;
            if (proxyUid != -1) {
                proxyInfo = AppOpsService.this.mOpEventProxyInfoPool.acquire(proxyUid, proxyPackageName, proxyAttributionTag);
            }
            AppOpsManager.NoteOpEvent existingEvent = this.mAccessEvents.get(key);
            if (existingEvent != null) {
                existingEvent.reinit(noteTime, duration, proxyInfo, AppOpsService.this.mOpEventProxyInfoPool);
            } else {
                this.mAccessEvents.put(key, new AppOpsManager.NoteOpEvent(noteTime, duration, proxyInfo));
            }
        }

        public void rejected(int uidState, int flags) {
            rejected(System.currentTimeMillis(), uidState, flags);
            AppOpsService.this.mHistoricalRegistry.incrementOpRejected(this.parent.op, this.parent.uid, this.parent.packageName, this.tag, uidState, flags);
        }

        public void rejected(long noteTime, int uidState, int flags) {
            long key = AppOpsManager.makeKey(uidState, flags);
            if (this.mRejectEvents == null) {
                this.mRejectEvents = new LongSparseArray<>(1);
            }
            AppOpsManager.NoteOpEvent existingEvent = this.mRejectEvents.get(key);
            if (existingEvent != null) {
                existingEvent.reinit(noteTime, -1L, (AppOpsManager.OpEventProxyInfo) null, AppOpsService.this.mOpEventProxyInfoPool);
            } else {
                this.mRejectEvents.put(key, new AppOpsManager.NoteOpEvent(noteTime, -1L, (AppOpsManager.OpEventProxyInfo) null));
            }
        }

        public void started(IBinder clientId, int uidState) throws RemoteException {
            started(clientId, uidState, true);
        }

        private void started(IBinder clientId, int uidState, boolean triggerCallbackIfNeeded) throws RemoteException {
            if (triggerCallbackIfNeeded && !this.parent.isRunning()) {
                AppOpsService.this.scheduleOpActiveChangedIfNeededLocked(this.parent.op, this.parent.uid, this.parent.packageName, true);
            }
            if (this.mInProgressEvents == null) {
                this.mInProgressEvents = new ArrayMap<>(1);
            }
            InProgressStartOpEvent event = this.mInProgressEvents.get(clientId);
            if (event != null) {
                if (uidState != event.mUidState) {
                    onUidStateChanged(uidState);
                }
            } else {
                event = AppOpsService.this.mInProgressStartOpEventPool.acquire(System.currentTimeMillis(), SystemClock.elapsedRealtime(), clientId, PooledLambda.obtainRunnable(new BiConsumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$AttributedOp$V-rw7b6Fbkw73kXYw1qrXKPwDIQ
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        AppOpsService.onClientDeath((AppOpsService.AttributedOp) obj, (IBinder) obj2);
                    }
                }, this, clientId), uidState);
                this.mInProgressEvents.put(clientId, event);
            }
            event.numUnfinishedStarts++;
            AppOpsService.this.mHistoricalRegistry.incrementOpAccessedCount(this.parent.op, this.parent.uid, this.parent.packageName, this.tag, uidState, 1);
        }

        public void finished(IBinder clientId) {
            finished(clientId, true);
        }

        private void finished(IBinder clientId, boolean triggerCallbackIfNeeded) {
            ArrayMap<IBinder, InProgressStartOpEvent> arrayMap = this.mInProgressEvents;
            if (arrayMap == null) {
                Slog.wtf(AppOpsService.TAG, "No ops running");
                return;
            }
            int indexOfToken = arrayMap.indexOfKey(clientId);
            if (indexOfToken < 0) {
                Slog.wtf(AppOpsService.TAG, "No op running for the client");
                return;
            }
            InProgressStartOpEvent event = this.mInProgressEvents.valueAt(indexOfToken);
            event.numUnfinishedStarts--;
            if (event.numUnfinishedStarts == 0) {
                event.finish();
                this.mInProgressEvents.removeAt(indexOfToken);
                if (this.mAccessEvents == null) {
                    this.mAccessEvents = new LongSparseArray<>(1);
                }
                AppOpsManager.NoteOpEvent finishedEvent = new AppOpsManager.NoteOpEvent(event.getStartTime(), SystemClock.elapsedRealtime() - event.getStartElapsedTime(), (AppOpsManager.OpEventProxyInfo) null);
                this.mAccessEvents.put(AppOpsManager.makeKey(event.getUidState(), 1), finishedEvent);
                AppOpsService.this.mHistoricalRegistry.increaseOpAccessDuration(this.parent.op, this.parent.uid, this.parent.packageName, this.tag, event.getUidState(), 1, finishedEvent.getDuration());
                AppOpsService.this.mInProgressStartOpEventPool.release(event);
                if (this.mInProgressEvents.isEmpty()) {
                    this.mInProgressEvents = null;
                    if (triggerCallbackIfNeeded && !this.parent.isRunning()) {
                        AppOpsService.this.scheduleOpActiveChangedIfNeededLocked(this.parent.op, this.parent.uid, this.parent.packageName, false);
                    }
                }
            }
        }

        void onClientDeath(IBinder clientId) {
            synchronized (AppOpsService.this) {
                if (this.mInProgressEvents == null) {
                    return;
                }
                InProgressStartOpEvent deadEvent = this.mInProgressEvents.get(clientId);
                if (deadEvent != null) {
                    deadEvent.numUnfinishedStarts = 1;
                }
                finished(clientId);
            }
        }

        public void onUidStateChanged(int newState) {
            ArrayMap<IBinder, InProgressStartOpEvent> arrayMap = this.mInProgressEvents;
            if (arrayMap == null) {
                return;
            }
            int numInProgressEvents = arrayMap.size();
            List<IBinder> binders = new ArrayList<>(this.mInProgressEvents.keySet());
            for (int i = 0; i < numInProgressEvents; i++) {
                InProgressStartOpEvent event = this.mInProgressEvents.get(binders.get(i));
                if (event != null && event.getUidState() != newState) {
                    try {
                        int numPreviousUnfinishedStarts = event.numUnfinishedStarts;
                        event.numUnfinishedStarts = 1;
                        finished(event.getClientId(), false);
                        started(event.getClientId(), newState, false);
                        InProgressStartOpEvent newEvent = this.mInProgressEvents.get(binders.get(i));
                        if (newEvent != null) {
                            newEvent.numUnfinishedStarts += numPreviousUnfinishedStarts - 1;
                        }
                    } catch (RemoteException e) {
                    }
                }
            }
        }

        private LongSparseArray<AppOpsManager.NoteOpEvent> add(LongSparseArray<AppOpsManager.NoteOpEvent> a, LongSparseArray<AppOpsManager.NoteOpEvent> b) {
            if (a == null) {
                return b;
            }
            if (b == null) {
                return a;
            }
            int numEventsToAdd = b.size();
            for (int i = 0; i < numEventsToAdd; i++) {
                long keyOfEventToAdd = b.keyAt(i);
                AppOpsManager.NoteOpEvent bEvent = b.valueAt(i);
                AppOpsManager.NoteOpEvent aEvent = a.get(keyOfEventToAdd);
                if (aEvent == null || bEvent.getNoteTime() > aEvent.getNoteTime()) {
                    a.put(keyOfEventToAdd, bEvent);
                }
            }
            return a;
        }

        public void add(AttributedOp opToAdd) {
            if (opToAdd.mInProgressEvents != null) {
                Slog.w(AppOpsService.TAG, "Ignoring " + opToAdd.mInProgressEvents.size() + " running app-ops");
                int numInProgressEvents = opToAdd.mInProgressEvents.size();
                for (int i = 0; i < numInProgressEvents; i++) {
                    InProgressStartOpEvent event = opToAdd.mInProgressEvents.valueAt(i);
                    event.finish();
                    AppOpsService.this.mInProgressStartOpEventPool.release(event);
                }
            }
            this.mAccessEvents = add(this.mAccessEvents, opToAdd.mAccessEvents);
            this.mRejectEvents = add(this.mRejectEvents, opToAdd.mRejectEvents);
        }

        public boolean isRunning() {
            return this.mInProgressEvents != null;
        }

        boolean hasAnyTime() {
            LongSparseArray<AppOpsManager.NoteOpEvent> longSparseArray;
            LongSparseArray<AppOpsManager.NoteOpEvent> longSparseArray2 = this.mAccessEvents;
            return (longSparseArray2 != null && longSparseArray2.size() > 0) || ((longSparseArray = this.mRejectEvents) != null && longSparseArray.size() > 0);
        }

        private LongSparseArray<AppOpsManager.NoteOpEvent> deepClone(LongSparseArray<AppOpsManager.NoteOpEvent> original) {
            if (original == null) {
                return original;
            }
            int size = original.size();
            LongSparseArray<AppOpsManager.NoteOpEvent> clone = new LongSparseArray<>(size);
            for (int i = 0; i < size; i++) {
                clone.put(original.keyAt(i), new AppOpsManager.NoteOpEvent(original.valueAt(i)));
            }
            return clone;
        }

        AppOpsManager.AttributedOpEntry createAttributedOpEntryLocked() {
            LongSparseArray<AppOpsManager.NoteOpEvent> accessEvents = deepClone(this.mAccessEvents);
            if (this.mInProgressEvents != null) {
                long now = SystemClock.elapsedRealtime();
                int numInProgressEvents = this.mInProgressEvents.size();
                if (accessEvents == null) {
                    accessEvents = new LongSparseArray<>(numInProgressEvents);
                }
                for (int i = 0; i < numInProgressEvents; i++) {
                    InProgressStartOpEvent event = this.mInProgressEvents.valueAt(i);
                    accessEvents.append(AppOpsManager.makeKey(event.getUidState(), 1), new AppOpsManager.NoteOpEvent(event.getStartTime(), now - event.getStartElapsedTime(), (AppOpsManager.OpEventProxyInfo) null));
                }
            }
            LongSparseArray<AppOpsManager.NoteOpEvent> rejectEvents = deepClone(this.mRejectEvents);
            return new AppOpsManager.AttributedOpEntry(this.parent.op, isRunning(), accessEvents, rejectEvents);
        }
    }

    final class Op {
        final ArrayMap<String, AttributedOp> mAttributions = new ArrayMap<>(1);
        private int mode;
        int op;
        final String packageName;
        int uid;
        final UidState uidState;

        Op(UidState uidState, String packageName, int op, int uid) {
            this.op = op;
            this.uid = uid;
            this.uidState = uidState;
            this.packageName = packageName;
            this.mode = AppOpsManager.opToDefaultMode(op);
        }

        int getMode() {
            return this.mode;
        }

        int evalMode() {
            return this.uidState.evalMode(this.op, this.mode);
        }

        void removeAttributionsWithNoTime() {
            for (int i = this.mAttributions.size() - 1; i >= 0; i--) {
                if (!this.mAttributions.valueAt(i).hasAnyTime()) {
                    this.mAttributions.removeAt(i);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AttributedOp getOrCreateAttribution(Op parent, String attributionTag) {
            AttributedOp attributedOp = this.mAttributions.get(attributionTag);
            if (attributedOp == null) {
                AttributedOp attributedOp2 = AppOpsService.this.new AttributedOp(attributionTag, parent);
                this.mAttributions.put(attributionTag, attributedOp2);
                return attributedOp2;
            }
            return attributedOp;
        }

        AppOpsManager.OpEntry createEntryLocked() {
            int numAttributions = this.mAttributions.size();
            ArrayMap<String, AppOpsManager.AttributedOpEntry> attributionEntries = new ArrayMap<>(numAttributions);
            for (int i = 0; i < numAttributions; i++) {
                attributionEntries.put(this.mAttributions.keyAt(i), this.mAttributions.valueAt(i).createAttributedOpEntryLocked());
            }
            return new AppOpsManager.OpEntry(this.op, this.mode, attributionEntries);
        }

        AppOpsManager.OpEntry createSingleAttributionEntryLocked(String attributionTag) {
            int numAttributions = this.mAttributions.size();
            ArrayMap<String, AppOpsManager.AttributedOpEntry> attributionEntries = new ArrayMap<>(1);
            for (int i = 0; i < numAttributions; i++) {
                if (Objects.equals(this.mAttributions.keyAt(i), attributionTag)) {
                    attributionEntries.put(this.mAttributions.keyAt(i), this.mAttributions.valueAt(i).createAttributedOpEntryLocked());
                    break;
                }
            }
            return new AppOpsManager.OpEntry(this.op, this.mode, attributionEntries);
        }

        boolean isRunning() {
            int numAttributions = this.mAttributions.size();
            for (int i = 0; i < numAttributions; i++) {
                if (this.mAttributions.valueAt(i).isRunning()) {
                    return true;
                }
            }
            return false;
        }
    }

    final class ModeCallback implements IBinder.DeathRecipient {
        public static final int ALL_OPS = -2;
        final IAppOpsCallback mCallback;
        final int mCallingPid;
        final int mCallingUid;
        final int mFlags;
        final int mWatchedOpCode;
        final int mWatchingUid;

        ModeCallback(IAppOpsCallback callback, int watchingUid, int flags, int watchedOp, int callingUid, int callingPid) {
            this.mCallback = callback;
            this.mWatchingUid = watchingUid;
            this.mFlags = flags;
            this.mWatchedOpCode = watchedOp;
            this.mCallingUid = callingUid;
            this.mCallingPid = callingPid;
            try {
                callback.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        public boolean isWatchingUid(int uid) {
            int i;
            return uid == -2 || (i = this.mWatchingUid) < 0 || i == uid;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ModeCallback{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" watchinguid=");
            UserHandle.formatUid(sb, this.mWatchingUid);
            sb.append(" flags=0x");
            sb.append(Integer.toHexString(this.mFlags));
            int i = this.mWatchedOpCode;
            if (i == -2) {
                sb.append(" op=(all)");
            } else if (i != -1) {
                sb.append(" op=");
                sb.append(AppOpsManager.opToName(this.mWatchedOpCode));
            }
            sb.append(" from uid=");
            UserHandle.formatUid(sb, this.mCallingUid);
            sb.append(" pid=");
            sb.append(this.mCallingPid);
            sb.append('}');
            return sb.toString();
        }

        void unlinkToDeath() {
            this.mCallback.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AppOpsService.this.stopWatchingMode(this.mCallback);
        }
    }

    final class ActiveCallback implements IBinder.DeathRecipient {
        final IAppOpsActiveCallback mCallback;
        final int mCallingPid;
        final int mCallingUid;
        final int mWatchingUid;

        ActiveCallback(IAppOpsActiveCallback callback, int watchingUid, int callingUid, int callingPid) {
            this.mCallback = callback;
            this.mWatchingUid = watchingUid;
            this.mCallingUid = callingUid;
            this.mCallingPid = callingPid;
            try {
                callback.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ActiveCallback{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" watchinguid=");
            UserHandle.formatUid(sb, this.mWatchingUid);
            sb.append(" from uid=");
            UserHandle.formatUid(sb, this.mCallingUid);
            sb.append(" pid=");
            sb.append(this.mCallingPid);
            sb.append('}');
            return sb.toString();
        }

        void destroy() {
            this.mCallback.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AppOpsService.this.stopWatchingActive(this.mCallback);
        }
    }

    final class StartedCallback implements IBinder.DeathRecipient {
        final IAppOpsStartedCallback mCallback;
        final int mCallingPid;
        final int mCallingUid;
        final int mWatchingUid;

        StartedCallback(IAppOpsStartedCallback callback, int watchingUid, int callingUid, int callingPid) {
            this.mCallback = callback;
            this.mWatchingUid = watchingUid;
            this.mCallingUid = callingUid;
            this.mCallingPid = callingPid;
            try {
                callback.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("StartedCallback{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" watchinguid=");
            UserHandle.formatUid(sb, this.mWatchingUid);
            sb.append(" from uid=");
            UserHandle.formatUid(sb, this.mCallingUid);
            sb.append(" pid=");
            sb.append(this.mCallingPid);
            sb.append('}');
            return sb.toString();
        }

        void destroy() {
            this.mCallback.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AppOpsService.this.stopWatchingStarted(this.mCallback);
        }
    }

    final class NotedCallback implements IBinder.DeathRecipient {
        final IAppOpsNotedCallback mCallback;
        final int mCallingPid;
        final int mCallingUid;
        final int mWatchingUid;

        NotedCallback(IAppOpsNotedCallback callback, int watchingUid, int callingUid, int callingPid) {
            this.mCallback = callback;
            this.mWatchingUid = watchingUid;
            this.mCallingUid = callingUid;
            this.mCallingPid = callingPid;
            try {
                callback.asBinder().linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("NotedCallback{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" watchinguid=");
            UserHandle.formatUid(sb, this.mWatchingUid);
            sb.append(" from uid=");
            UserHandle.formatUid(sb, this.mCallingUid);
            sb.append(" pid=");
            sb.append(this.mCallingPid);
            sb.append('}');
            return sb.toString();
        }

        void destroy() {
            this.mCallback.asBinder().unlinkToDeath(this, 0);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            AppOpsService.this.stopWatchingNoted(this.mCallback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void onClientDeath(AttributedOp attributedOp, IBinder clientId) {
        attributedOp.onClientDeath(clientId);
    }

    private void readNoteOpCallerStackTraces() {
        try {
            if (!this.mNoteOpCallerStacktracesFile.exists()) {
                this.mNoteOpCallerStacktracesFile.createNewFile();
                return;
            }
            Scanner read = new Scanner(this.mNoteOpCallerStacktracesFile);
            try {
                read.useDelimiter("\\},");
                while (read.hasNext()) {
                    String jsonOps = read.next();
                    this.mNoteOpCallerStacktraces.add(NoteOpTrace.fromJson(jsonOps));
                }
                read.close();
            } catch (Throwable th) {
                try {
                    read.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e) {
            Slog.e(TAG, "Cannot parse traces noteOps", e);
        }
    }

    public AppOpsService(File storagePath, Handler handler, Context context) {
        this.mContext = context;
        LockGuard.installLock(this, 0);
        this.mFile = new AtomicFile(storagePath, "appops");
        this.mNoteOpCallerStacktracesFile = null;
        this.mHandler = handler;
        this.mConstants = new Constants(this.mHandler);
        readState();
        for (int switchedCode = 0; switchedCode < 103; switchedCode++) {
            int switchCode = AppOpsManager.opToSwitch(switchedCode);
            SparseArray<int[]> sparseArray = this.mSwitchedOps;
            sparseArray.put(switchCode, ArrayUtils.appendInt(sparseArray.get(switchCode), switchedCode));
        }
    }

    public void publish() {
        ServiceManager.addService("appops", asBinder());
        LocalServices.addService(AppOpsManagerInternal.class, this.mAppOpsManagerInternal);
    }

    public void systemReady() {
        final String action;
        this.mConstants.startMonitoring(this.mContext.getContentResolver());
        this.mHistoricalRegistry.systemReady(this.mContext.getContentResolver());
        IntentFilter packageUpdateFilter = new IntentFilter();
        packageUpdateFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        packageUpdateFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        packageUpdateFilter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(this.mOnPackageUpdatedReceiver, UserHandle.ALL, packageUpdateFilter, null, null);
        synchronized (this) {
            for (int uidNum = this.mUidStates.size() - 1; uidNum >= 0; uidNum--) {
                final int uid = this.mUidStates.keyAt(uidNum);
                UidState uidState = this.mUidStates.valueAt(uidNum);
                String[] pkgsInUid = getPackagesForUid(uidState.uid);
                if (ArrayUtils.isEmpty(pkgsInUid)) {
                    uidState.clear();
                    this.mUidStates.removeAt(uidNum);
                    scheduleFastWriteLocked();
                } else {
                    ArrayMap<String, Ops> pkgs = uidState.pkgOps;
                    if (pkgs != null) {
                        int numPkgs = pkgs.size();
                        for (int pkgNum = 0; pkgNum < numPkgs; pkgNum++) {
                            final String pkg = pkgs.keyAt(pkgNum);
                            if (!ArrayUtils.contains(pkgsInUid, pkg)) {
                                action = "android.intent.action.PACKAGE_REMOVED";
                            } else {
                                action = "android.intent.action.PACKAGE_REPLACED";
                            }
                            SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$zN6prp9KCBI96qJ_QVmqGh-kpB8
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$systemReady$0$AppOpsService(action, pkg, uid);
                                }
                            }, "Update app-ops uidState in case package " + pkg + " changed");
                        }
                    }
                }
            }
        }
        IntentFilter packageSuspendFilter = new IntentFilter();
        packageSuspendFilter.addAction("android.intent.action.PACKAGES_UNSUSPENDED");
        packageSuspendFilter.addAction("android.intent.action.PACKAGES_SUSPENDED");
        this.mContext.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.appop.AppOpsService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int[] changedUids = intent.getIntArrayExtra("android.intent.extra.changed_uid_list");
                String[] changedPkgs = intent.getStringArrayExtra("android.intent.extra.changed_package_list");
                for (int code : AppOpsService.OPS_RESTRICTED_ON_SUSPEND) {
                    synchronized (AppOpsService.this) {
                        ArraySet<ModeCallback> callbacks = AppOpsService.this.mOpModeWatchers.get(code);
                        if (callbacks != null) {
                            ArraySet<ModeCallback> callbacks2 = new ArraySet<>(callbacks);
                            for (int i = 0; i < changedUids.length; i++) {
                                int changedUid = changedUids[i];
                                String changedPkg = changedPkgs[i];
                                AppOpsService.this.notifyOpChanged(callbacks2, code, changedUid, changedPkg);
                            }
                        }
                    }
                }
            }
        }, UserHandle.ALL, packageSuspendFilter, null, null);
        IntentFilter packageAddedFilter = new IntentFilter();
        packageAddedFilter.addAction("android.intent.action.PACKAGE_ADDED");
        packageAddedFilter.addDataScheme(com.android.server.pm.Settings.ATTR_PACKAGE);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.appop.AppOpsService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Uri data = intent.getData();
                String packageName = data.getSchemeSpecificPart();
                PackageInfo pi = ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackageInfo(packageName, 4096, Process.myUid(), AppOpsService.this.mContext.getUserId());
                if (AppOpsService.this.isSamplingTarget(pi)) {
                    synchronized (this) {
                        AppOpsService.this.mRarelyUsedPackages.add(packageName);
                    }
                }
            }
        }, packageAddedFilter);
        this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.appop.AppOpsService.5
            @Override // java.lang.Runnable
            public void run() {
                List<String> packageNames = AppOpsService.this.getPackageListAndResample();
                AppOpsService.this.initializeRarelyUsedPackagesList(new ArraySet(packageNames));
            }
        }, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        packageManagerInternal.setExternalSourcesPolicy(new PackageManagerInternal.ExternalSourcesPolicy() { // from class: com.android.server.appop.AppOpsService.6
            @Override // android.content.pm.PackageManagerInternal.ExternalSourcesPolicy
            public int getPackageTrustedToInstallApps(String packageName, int uid2) {
                int appOpMode = AppOpsService.this.checkOperation(66, uid2, packageName);
                if (appOpMode != 0) {
                    return appOpMode != 2 ? 2 : 1;
                }
                return 0;
            }
        });
        if (!StorageManager.hasIsolatedStorage()) {
            StorageManagerInternal storageManagerInternal = (StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class);
            storageManagerInternal.addExternalStoragePolicy(new StorageManagerInternal.ExternalStorageMountPolicy() { // from class: com.android.server.appop.AppOpsService.7
                public int getMountMode(int uid2, String packageName) {
                    if (Process.isIsolated(uid2) || AppOpsService.this.noteOperation(59, uid2, packageName, null, true, "External storage policy", true) != 0) {
                        return 0;
                    }
                    if (AppOpsService.this.noteOperation(60, uid2, packageName, null, true, "External storage policy", true) != 0) {
                        return 2;
                    }
                    return 3;
                }

                public boolean hasExternalStorage(int uid2, String packageName) {
                    int mountMode = getMountMode(uid2, packageName);
                    return mountMode == 2 || mountMode == 3;
                }
            });
        }
        this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
    }

    public /* synthetic */ void lambda$systemReady$0$AppOpsService(String action, String pkg, int uid) {
        this.mOnPackageUpdatedReceiver.onReceive(this.mContext, new Intent(action).setData(Uri.fromParts(com.android.server.pm.Settings.ATTR_PACKAGE, pkg, null)).putExtra("android.intent.extra.UID", uid));
    }

    public void packageRemoved(int uid, String packageName) {
        synchronized (this) {
            UidState uidState = this.mUidStates.get(uid);
            if (uidState == null) {
                return;
            }
            Ops ops = null;
            if (uidState.pkgOps != null) {
                ops = uidState.pkgOps.remove(packageName);
            }
            if (ops != null && uidState.pkgOps.isEmpty() && getPackagesForUid(uid).length <= 0) {
                this.mUidStates.remove(uid);
            }
            if (ops != null) {
                scheduleFastWriteLocked();
                int numOps = ops.size();
                for (int opNum = 0; opNum < numOps; opNum++) {
                    Op op = ops.valueAt(opNum);
                    int numAttributions = op.mAttributions.size();
                    for (int attributionNum = 0; attributionNum < numAttributions; attributionNum++) {
                        AttributedOp attributedOp = op.mAttributions.valueAt(attributionNum);
                        while (attributedOp.mInProgressEvents != null) {
                            attributedOp.finished((IBinder) attributedOp.mInProgressEvents.keyAt(0));
                        }
                    }
                }
            }
            this.mHistoricalRegistry.clearHistory(uid, packageName);
        }
    }

    public void uidRemoved(int uid) {
        synchronized (this) {
            if (this.mUidStates.indexOfKey(uid) >= 0) {
                this.mUidStates.remove(uid);
                scheduleFastWriteLocked();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePendingState(long currentTime, int uid) {
        synchronized (this) {
            this.mLastRealtime = Long.max(currentTime, this.mLastRealtime);
            updatePendingStateIfNeededLocked(this.mUidStates.get(uid));
        }
    }

    public void updateUidProcState(int uid, int procState, int capability) {
        long settleTime;
        synchronized (this) {
            UidState uidState = getUidStateLocked(uid, true);
            int newState = PROCESS_STATE_TO_UID_STATE[procState];
            if (uidState != null && (uidState.pendingState != newState || uidState.pendingCapability != capability)) {
                int i = uidState.pendingState;
                uidState.pendingState = newState;
                uidState.pendingCapability = capability;
                if (newState < uidState.state || (newState <= 500 && uidState.state > 500)) {
                    commitUidPendingStateLocked(uidState);
                } else if (newState == uidState.state && capability != uidState.capability) {
                    commitUidPendingStateLocked(uidState);
                } else if (uidState.pendingStateCommitTime == 0) {
                    if (uidState.state <= 200) {
                        settleTime = this.mConstants.TOP_STATE_SETTLE_TIME;
                    } else if (uidState.state <= 400) {
                        settleTime = this.mConstants.FG_SERVICE_STATE_SETTLE_TIME;
                    } else {
                        settleTime = this.mConstants.BG_STATE_SETTLE_TIME;
                    }
                    long commitTime = SystemClock.elapsedRealtime() + settleTime;
                    uidState.pendingStateCommitTime = commitTime;
                    this.mHandler.sendMessageDelayed(PooledLambda.obtainMessage(new TriConsumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$CVMS-lLMRyZYA1tmqvyuOloKBu0
                        public final void accept(Object obj, Object obj2, Object obj3) {
                            ((AppOpsService) obj).updatePendingState(((Long) obj2).longValue(), ((Integer) obj3).intValue());
                        }
                    }, this, Long.valueOf(commitTime + 1), Integer.valueOf(uid)), 1 + settleTime);
                }
                if (uidState.pkgOps != null) {
                    int numPkgs = uidState.pkgOps.size();
                    for (int pkgNum = 0; pkgNum < numPkgs; pkgNum++) {
                        Ops ops = uidState.pkgOps.valueAt(pkgNum);
                        int numOps = ops.size();
                        for (int opNum = 0; opNum < numOps; opNum++) {
                            Op op = ops.valueAt(opNum);
                            int numAttributions = op.mAttributions.size();
                            for (int attributionNum = 0; attributionNum < numAttributions; attributionNum++) {
                                AttributedOp attributedOp = op.mAttributions.valueAt(attributionNum);
                                attributedOp.onUidStateChanged(newState);
                            }
                        }
                    }
                }
            }
        }
    }

    public void shutdown() {
        Slog.w(TAG, "Writing app ops before shutdown...");
        boolean doWrite = false;
        synchronized (this) {
            if (this.mWriteScheduled) {
                this.mWriteScheduled = false;
                doWrite = true;
            }
        }
        if (doWrite) {
            writeState();
        }
        this.mHistoricalRegistry.shutdown();
    }

    private ArrayList<AppOpsManager.OpEntry> collectOps(Ops pkgOps, int[] ops) {
        ArrayList<AppOpsManager.OpEntry> resOps = null;
        long elapsedNow = SystemClock.elapsedRealtime();
        if (ops == null) {
            resOps = new ArrayList<>();
            for (int j = 0; j < pkgOps.size(); j++) {
                resOps.add(getOpEntryForResult(pkgOps.valueAt(j), elapsedNow));
            }
        } else {
            for (int i : ops) {
                Op curOp = pkgOps.get(i);
                if (curOp != null) {
                    if (resOps == null) {
                        resOps = new ArrayList<>();
                    }
                    resOps.add(getOpEntryForResult(curOp, elapsedNow));
                }
            }
        }
        return resOps;
    }

    private ArrayList<AppOpsManager.OpEntry> collectUidOps(UidState uidState, int[] ops) {
        int opModeCount;
        if (uidState.opModes == null || (opModeCount = uidState.opModes.size()) == 0) {
            return null;
        }
        ArrayList<AppOpsManager.OpEntry> resOps = null;
        if (ops == null) {
            resOps = new ArrayList<>();
            for (int i = 0; i < opModeCount; i++) {
                int code = uidState.opModes.keyAt(i);
                resOps.add(new AppOpsManager.OpEntry(code, uidState.opModes.get(code), Collections.emptyMap()));
            }
        } else {
            for (int code2 : ops) {
                if (uidState.opModes.indexOfKey(code2) >= 0) {
                    if (resOps == null) {
                        resOps = new ArrayList<>();
                    }
                    resOps.add(new AppOpsManager.OpEntry(code2, uidState.opModes.get(code2), Collections.emptyMap()));
                }
            }
        }
        return resOps;
    }

    private static AppOpsManager.OpEntry getOpEntryForResult(Op op, long elapsedNow) {
        return op.createEntryLocked();
    }

    public List<AppOpsManager.PackageOps> getPackagesForOps(int[] ops) {
        this.mContext.enforcePermission("android.permission.GET_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
        ArrayList<AppOpsManager.PackageOps> res = null;
        synchronized (this) {
            int uidStateCount = this.mUidStates.size();
            for (int i = 0; i < uidStateCount; i++) {
                UidState uidState = this.mUidStates.valueAt(i);
                if (uidState.pkgOps != null && !uidState.pkgOps.isEmpty()) {
                    ArrayMap<String, Ops> packages = uidState.pkgOps;
                    int packageCount = packages.size();
                    for (int j = 0; j < packageCount; j++) {
                        Ops pkgOps = packages.valueAt(j);
                        ArrayList<AppOpsManager.OpEntry> resOps = collectOps(pkgOps, ops);
                        if (resOps != null) {
                            if (res == null) {
                                res = new ArrayList<>();
                            }
                            AppOpsManager.PackageOps resPackage = new AppOpsManager.PackageOps(pkgOps.packageName, pkgOps.uidState.uid, resOps);
                            res.add(resPackage);
                        }
                    }
                }
            }
        }
        return res;
    }

    public List<AppOpsManager.PackageOps> getOpsForPackage(int uid, String packageName, int[] ops) {
        this.mContext.enforcePermission("android.permission.GET_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
        String resolvedPackageName = resolvePackageName(uid, packageName);
        if (resolvedPackageName == null) {
            return Collections.emptyList();
        }
        synchronized (this) {
            Ops pkgOps = getOpsLocked(uid, resolvedPackageName, null, null, false);
            if (pkgOps == null) {
                return null;
            }
            ArrayList<AppOpsManager.OpEntry> resOps = collectOps(pkgOps, ops);
            if (resOps == null) {
                return null;
            }
            ArrayList<AppOpsManager.PackageOps> res = new ArrayList<>();
            AppOpsManager.PackageOps resPackage = new AppOpsManager.PackageOps(pkgOps.packageName, pkgOps.uidState.uid, resOps);
            res.add(resPackage);
            return res;
        }
    }

    private void ensureHistoricalOpRequestIsValid(int uid, String packageName, String attributionTag, List<String> opNames, int filter, long beginTimeMillis, long endTimeMillis, int flags) {
        if ((filter & 1) != 0) {
            Preconditions.checkArgument(uid != -1);
        } else {
            Preconditions.checkArgument(uid == -1);
        }
        if ((filter & 2) != 0) {
            Objects.requireNonNull(packageName);
        } else {
            Preconditions.checkArgument(packageName == null);
        }
        if ((filter & 4) == 0) {
            Preconditions.checkArgument(attributionTag == null);
        }
        if ((filter & 8) != 0) {
            Objects.requireNonNull(opNames);
        } else {
            Preconditions.checkArgument(opNames == null);
        }
        Preconditions.checkFlagsArgument(filter, 15);
        Preconditions.checkArgumentNonnegative(beginTimeMillis);
        Preconditions.checkArgument(endTimeMillis > beginTimeMillis);
        Preconditions.checkFlagsArgument(flags, 31);
    }

    public void getHistoricalOps(int uid, String packageName, String attributionTag, List<String> opNames, int filter, long beginTimeMillis, long endTimeMillis, int flags, final RemoteCallback callback) {
        PackageManager pm = this.mContext.getPackageManager();
        ensureHistoricalOpRequestIsValid(uid, packageName, attributionTag, opNames, filter, beginTimeMillis, endTimeMillis, flags);
        Objects.requireNonNull(callback, "callback cannot be null");
        ActivityManagerInternal ami = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        boolean isCallerInstrumented = ami.isUidCurrentlyInstrumented(Binder.getCallingUid());
        boolean isCallerSystem = Binder.getCallingPid() == Process.myPid();
        try {
            boolean isCallerPermissionController = pm.getPackageUid(this.mContext.getPackageManager().getPermissionControllerPackageName(), 0) == Binder.getCallingUid();
            if (!isCallerSystem && !isCallerInstrumented && !isCallerPermissionController) {
                this.mHandler.post(new Runnable() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$JHjaGTUaQHugMX7TLydyaTrbPFw
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.sendResult(new Bundle());
                    }
                });
                return;
            }
            this.mContext.enforcePermission("android.permission.GET_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), "getHistoricalOps");
            String[] opNamesArray = opNames != null ? (String[]) opNames.toArray(new String[opNames.size()]) : null;
            this.mHandler.post(PooledLambda.obtainRunnable(new DecConsumer() { // from class: com.android.server.appop.-$$Lambda$9PbhNRcJKpFejdnfSDhPa_VHrMY
                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10) throws Throwable {
                    ((HistoricalRegistry) obj).getHistoricalOps(((Integer) obj2).intValue(), (String) obj3, (String) obj4, (String[]) obj5, ((Integer) obj6).intValue(), ((Long) obj7).longValue(), ((Long) obj8).longValue(), ((Integer) obj9).intValue(), (RemoteCallback) obj10);
                }
            }, this.mHistoricalRegistry, Integer.valueOf(uid), packageName, attributionTag, opNamesArray, Integer.valueOf(filter), Long.valueOf(beginTimeMillis), Long.valueOf(endTimeMillis), Integer.valueOf(flags), callback).recycleOnUse());
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    public void getHistoricalOpsFromDiskRaw(int uid, String packageName, String attributionTag, List<String> opNames, int filter, long beginTimeMillis, long endTimeMillis, int flags, RemoteCallback callback) {
        ensureHistoricalOpRequestIsValid(uid, packageName, attributionTag, opNames, filter, beginTimeMillis, endTimeMillis, flags);
        Objects.requireNonNull(callback, "callback cannot be null");
        this.mContext.enforcePermission("android.permission.MANAGE_APPOPS", Binder.getCallingPid(), Binder.getCallingUid(), "getHistoricalOps");
        String[] opNamesArray = opNames != null ? (String[]) opNames.toArray(new String[opNames.size()]) : null;
        this.mHandler.post(PooledLambda.obtainRunnable(new DecConsumer() { // from class: com.android.server.appop.-$$Lambda$ztf_FWUCLkjfRoVMTTWb7ZsjhNk
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10) {
                ((HistoricalRegistry) obj).getHistoricalOpsFromDiskRaw(((Integer) obj2).intValue(), (String) obj3, (String) obj4, (String[]) obj5, ((Integer) obj6).intValue(), ((Long) obj7).longValue(), ((Long) obj8).longValue(), ((Integer) obj9).intValue(), (RemoteCallback) obj10);
            }
        }, this.mHistoricalRegistry, Integer.valueOf(uid), packageName, attributionTag, opNamesArray, Integer.valueOf(filter), Long.valueOf(beginTimeMillis), Long.valueOf(endTimeMillis), Integer.valueOf(flags), callback).recycleOnUse());
    }

    public void reloadNonHistoricalState() {
        this.mContext.enforcePermission("android.permission.MANAGE_APPOPS", Binder.getCallingPid(), Binder.getCallingUid(), "reloadNonHistoricalState");
        writeState();
        readState();
    }

    public List<AppOpsManager.PackageOps> getUidOps(int uid, int[] ops) {
        this.mContext.enforcePermission("android.permission.GET_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
        synchronized (this) {
            UidState uidState = getUidStateLocked(uid, false);
            if (uidState == null) {
                return null;
            }
            ArrayList<AppOpsManager.OpEntry> resOps = collectUidOps(uidState, ops);
            if (resOps == null) {
                return null;
            }
            ArrayList<AppOpsManager.PackageOps> res = new ArrayList<>();
            AppOpsManager.PackageOps resPackage = new AppOpsManager.PackageOps((String) null, uidState.uid, resOps);
            res.add(resPackage);
            return res;
        }
    }

    private void pruneOpLocked(Op op, int uid, String packageName) {
        Ops ops;
        UidState uidState;
        ArrayMap<String, Ops> pkgOps;
        op.removeAttributionsWithNoTime();
        if (op.mAttributions.isEmpty() && (ops = getOpsLocked(uid, packageName, null, null, false)) != null) {
            ops.remove(op.op);
            if (ops.size() <= 0 && (pkgOps = (uidState = ops.uidState).pkgOps) != null) {
                pkgOps.remove(ops.packageName);
                if (pkgOps.isEmpty()) {
                    uidState.pkgOps = null;
                }
                if (uidState.isDefault()) {
                    this.mUidStates.remove(uid);
                }
            }
        }
    }

    private void enforceManageAppOpsModes(int callingPid, int callingUid, int targetUid) {
        if (callingPid == Process.myPid()) {
            return;
        }
        int callingUser = UserHandle.getUserId(callingUid);
        synchronized (this) {
            if (this.mProfileOwners == null || this.mProfileOwners.get(callingUser, -1) != callingUid || targetUid < 0 || callingUser != UserHandle.getUserId(targetUid)) {
                this.mContext.enforcePermission("android.permission.MANAGE_APP_OPS_MODES", Binder.getCallingPid(), Binder.getCallingUid(), null);
            }
        }
    }

    public void setUidMode(int code, int uid, int mode) throws Throwable {
        setUidMode(code, uid, mode, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUidMode(int code, int uid, int mode, IAppOpsCallback permissionPolicyCallback) throws Throwable {
        int previousMode;
        enforceManageAppOpsModes(Binder.getCallingPid(), Binder.getCallingUid(), uid);
        verifyIncomingOp(code);
        int code2 = AppOpsManager.opToSwitch(code);
        if (permissionPolicyCallback == null) {
            updatePermissionRevokedCompat(uid, code2, mode);
        }
        synchronized (this) {
            int defaultMode = AppOpsManager.opToDefaultMode(code2);
            UidState uidState = getUidStateLocked(uid, false);
            if (uidState == null) {
                if (mode == defaultMode) {
                    return;
                }
                uidState = new UidState(uid);
                uidState.opModes = new SparseIntArray();
                uidState.opModes.put(code2, mode);
                this.mUidStates.put(uid, uidState);
                scheduleWriteLocked();
                previousMode = 3;
            } else if (uidState.opModes == null) {
                if (mode != defaultMode) {
                    uidState.opModes = new SparseIntArray();
                    uidState.opModes.put(code2, mode);
                    scheduleWriteLocked();
                }
                previousMode = 3;
            } else {
                if (uidState.opModes.indexOfKey(code2) >= 0 && uidState.opModes.get(code2) == mode) {
                    return;
                }
                int previousMode2 = uidState.opModes.get(code2);
                if (mode == defaultMode) {
                    uidState.opModes.delete(code2);
                    if (uidState.opModes.size() <= 0) {
                        uidState.opModes = null;
                    }
                } else {
                    uidState.opModes.put(code2, mode);
                }
                scheduleWriteLocked();
                previousMode = previousMode2;
            }
            uidState.evalForegroundOps(this.mOpModeWatchers);
            notifyOpChangedForAllPkgsInUid(code2, uid, false, permissionPolicyCallback);
            notifyOpChangedSync(code2, uid, null, mode, previousMode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x012d */
    /* JADX WARN: Code duplicated, block: B:27:0x0057 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0059 A[Catch: all -> 0x0098, TRY_LEAVE, TryCatch #3 {all -> 0x0098, blocks: (B:25:0x004a, B:28:0x0059, B:51:0x00a2), top: B:83:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:30:0x005f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0067 A[Catch: all -> 0x008f, TryCatch #6 {all -> 0x008f, blocks: (B:31:0x0060, B:33:0x0067, B:35:0x006f, B:38:0x0076, B:40:0x007e, B:41:0x0087), top: B:89:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0076 A[Catch: all -> 0x008f, TryCatch #6 {all -> 0x008f, blocks: (B:31:0x0060, B:33:0x0067, B:35:0x006f, B:38:0x0076, B:40:0x007e, B:41:0x0087), top: B:89:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x007e A[Catch: all -> 0x008f, TryCatch #6 {all -> 0x008f, blocks: (B:31:0x0060, B:33:0x0067, B:35:0x006f, B:38:0x0076, B:40:0x007e, B:41:0x0087), top: B:89:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00b2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:55:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:61:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ef A[LOOP:4: B:62:0x00ed->B:63:0x00ef, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0095 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void notifyOpChangedForAllPkgsInUid(int r18, int r19, boolean r20, com.android.internal.app.IAppOpsCallback r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.appop.AppOpsService.notifyOpChangedForAllPkgsInUid(int, int, boolean, com.android.internal.app.IAppOpsCallback):void");
    }

    private void updatePermissionRevokedCompat(int uid, int switchCode, int mode) throws Throwable {
        boolean isRevokedCompat;
        PackageManager packageManager = this.mContext.getPackageManager();
        if (packageManager == null) {
            return;
        }
        String[] packageNames = packageManager.getPackagesForUid(uid);
        if (ArrayUtils.isEmpty(packageNames)) {
            return;
        }
        int i = 0;
        String packageName = packageNames[0];
        int[] ops = this.mSwitchedOps.get(switchCode);
        int length = ops.length;
        int i2 = 0;
        while (i2 < length) {
            int code = ops[i2];
            String permissionName = AppOpsManager.opToPermission(code);
            if (permissionName == null) {
                i2 = i2;
                length = length;
                ops = ops;
            } else if (packageManager.checkPermission(permissionName, packageName) != 0) {
                i2 = i2;
                length = length;
                ops = ops;
            } else {
                try {
                    PermissionInfo permissionInfo = packageManager.getPermissionInfo(permissionName, i);
                    if (!permissionInfo.isRuntime()) {
                        i2 = i2;
                        length = length;
                        ops = ops;
                    } else {
                        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                        int i3 = packageManagerInternal.getUidTargetSdkVersion(uid) >= 23 ? 1 : i;
                        UserHandle user = UserHandle.getUserHandleForUid(uid);
                        String str = ", permission=";
                        String permissionName2 = permissionName;
                        String permissionName3 = ", switchCode=";
                        if (permissionInfo.backgroundPermission != null) {
                            if (packageManager.checkPermission(permissionInfo.backgroundPermission, packageName) == 0) {
                                boolean isBackgroundRevokedCompat = mode != 0;
                                if (isBackgroundRevokedCompat && i3 != 0) {
                                    Slog.w(TAG, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid=" + uid + ", switchCode=" + switchCode + ", mode=" + mode + ", permission=" + permissionInfo.backgroundPermission);
                                }
                                long identity = Binder.clearCallingIdentity();
                                try {
                                    try {
                                        packageManager.updatePermissionFlags(permissionInfo.backgroundPermission, packageName, 8, isBackgroundRevokedCompat ? 8 : 0, user);
                                        Binder.restoreCallingIdentity(identity);
                                    } catch (Throwable th) {
                                        th = th;
                                        Binder.restoreCallingIdentity(identity);
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            isRevokedCompat = (mode == 0 || mode == 4) ? false : true;
                        } else {
                            str = ", permission=";
                            permissionName3 = ", switchCode=";
                            length = length;
                            ops = ops;
                            permissionName2 = permissionName2;
                            i2 = i2;
                            isRevokedCompat = mode != 0;
                        }
                        if (isRevokedCompat && i3 != 0) {
                            Slog.w(TAG, "setUidMode() called with a mode inconsistent with runtime permission state, this is discouraged and you should revoke the runtime permission instead: uid=" + uid + permissionName3 + switchCode + ", mode=" + mode + str + permissionName2);
                        }
                        long identity2 = Binder.clearCallingIdentity();
                        try {
                            packageManager.updatePermissionFlags(permissionName2, packageName, 8, isRevokedCompat ? 8 : 0, user);
                            Binder.restoreCallingIdentity(identity2);
                        } catch (Throwable th3) {
                            Binder.restoreCallingIdentity(identity2);
                            throw th3;
                        }
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    i2 = i2;
                    length = length;
                    ops = ops;
                    e.printStackTrace();
                }
            }
            i2++;
            packageNames = packageNames;
            length = length;
            ops = ops;
            i = 0;
        }
    }

    private void notifyOpChangedSync(int code, int uid, String packageName, int mode, int previousMode) {
        StorageManagerInternal storageManagerInternal = (StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class);
        if (storageManagerInternal != null) {
            storageManagerInternal.onAppOpsChanged(code, uid, packageName, mode, previousMode);
        }
    }

    public void setMode(int code, int uid, String packageName, int mode) {
        setMode(code, uid, packageName, mode, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Bottom block not found for handler: all -> 0x00d4 */
    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setMode(int r17, int r18, java.lang.String r19, int r20, com.android.internal.app.IAppOpsCallback r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.appop.AppOpsService.setMode(int, int, java.lang.String, int, com.android.internal.app.IAppOpsCallback):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOpChanged(ArraySet<ModeCallback> callbacks, int code, int uid, String packageName) {
        for (int i = 0; i < callbacks.size(); i++) {
            ModeCallback callback = callbacks.valueAt(i);
            notifyOpChanged(callback, code, uid, packageName);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOpChanged(ModeCallback callback, int code, int uid, String packageName) {
        int[] switchedCodes;
        if (uid == -2 || callback.mWatchingUid < 0 || callback.mWatchingUid == uid) {
            if (callback.mWatchedOpCode == -2) {
                switchedCodes = this.mSwitchedOps.get(code);
            } else if (callback.mWatchedOpCode == -1) {
                switchedCodes = new int[]{code};
            } else {
                switchedCodes = new int[]{callback.mWatchedOpCode};
            }
            for (int switchedCode : switchedCodes) {
                long identity = Binder.clearCallingIdentity();
                try {
                    callback.mCallback.opChanged(switchedCode, uid, packageName);
                } catch (RemoteException e) {
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(identity);
                    throw th;
                }
                Binder.restoreCallingIdentity(identity);
            }
        }
    }

    private static ArrayList<ChangeRec> addChange(ArrayList<ChangeRec> reports, int op, int uid, String packageName, int previousMode) {
        boolean duplicate = false;
        if (reports == null) {
            reports = new ArrayList<>();
        } else {
            int reportCount = reports.size();
            for (int j = 0; j < reportCount; j++) {
                ChangeRec report = reports.get(j);
                if (report.op == op && report.pkg.equals(packageName)) {
                    duplicate = true;
                    break;
                }
            }
        }
        if (!duplicate) {
            reports.add(new ChangeRec(op, uid, packageName, previousMode));
        }
        return reports;
    }

    private static HashMap<ModeCallback, ArrayList<ChangeRec>> addCallbacks(HashMap<ModeCallback, ArrayList<ChangeRec>> callbacks, int op, int uid, String packageName, int previousMode, ArraySet<ModeCallback> cbs) {
        if (cbs == null) {
            return callbacks;
        }
        if (callbacks == null) {
            callbacks = new HashMap<>();
        }
        int N = cbs.size();
        for (int i = 0; i < N; i++) {
            ModeCallback cb = cbs.valueAt(i);
            ArrayList<ChangeRec> reports = callbacks.get(cb);
            ArrayList<ChangeRec> changed = addChange(reports, op, uid, packageName, previousMode);
            if (changed != reports) {
                callbacks.put(cb, changed);
            }
        }
        return callbacks;
    }

    static final class ChangeRec {
        final int op;
        final String pkg;
        final int previous_mode;
        final int uid;

        ChangeRec(int _op, int _uid, String _pkg, int _previous_mode) {
            this.op = _op;
            this.uid = _uid;
            this.pkg = _pkg;
            this.previous_mode = _previous_mode;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x03b9 */
    /* JADX WARN: Code duplicated, block: B:113:0x02a6 A[Catch: all -> 0x02e2, TryCatch #2 {all -> 0x02e2, blocks: (B:92:0x0201, B:111:0x02a0, B:113:0x02a6, B:115:0x02b7, B:117:0x02c5, B:119:0x02ce), top: B:162:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02c5 A[Catch: all -> 0x02e2, TryCatch #2 {all -> 0x02e2, blocks: (B:92:0x0201, B:111:0x02a0, B:113:0x02a6, B:115:0x02b7, B:117:0x02c5, B:119:0x02ce), top: B:162:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:119:0x02ce A[Catch: all -> 0x02e2, TRY_LEAVE, TryCatch #2 {all -> 0x02e2, blocks: (B:92:0x0201, B:111:0x02a0, B:113:0x02a6, B:115:0x02b7, B:117:0x02c5, B:119:0x02ce), top: B:162:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:158:0x014e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x01ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:0x014b  */
    /* JADX WARN: Code duplicated, block: B:63:0x0157  */
    /* JADX WARN: Code duplicated, block: B:69:0x017d A[Catch: all -> 0x02ea, TRY_LEAVE, TryCatch #7 {all -> 0x02ea, blocks: (B:56:0x0146, B:66:0x016c, B:67:0x0177, B:69:0x017d, B:74:0x0192, B:76:0x01a4), top: B:172:0x0146 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01a4 A[Catch: all -> 0x02ea, TRY_LEAVE, TryCatch #7 {all -> 0x02ea, blocks: (B:56:0x0146, B:66:0x016c, B:67:0x0177, B:69:0x017d, B:74:0x0192, B:76:0x01a4), top: B:172:0x0146 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01d2 A[Catch: all -> 0x028b, TRY_ENTER, TryCatch #8 {all -> 0x028b, blocks: (B:78:0x01b2, B:84:0x01d2, B:86:0x01da, B:88:0x01e6), top: B:174:0x01b2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void resetAllModes(int r29, java.lang.String r30) {
        /*
            Method dump skipped, instruction units count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.appop.AppOpsService.resetAllModes(int, java.lang.String):void");
    }

    private boolean shouldDeferResetOpToDpm(int op) {
        DevicePolicyManagerInternal devicePolicyManagerInternal = this.dpmi;
        return devicePolicyManagerInternal != null && devicePolicyManagerInternal.supportsResetOp(op);
    }

    private void deferResetOpToDpm(int op, String packageName, int userId) {
        this.dpmi.resetOp(op, packageName, userId);
    }

    private void evalAllForegroundOpsLocked() {
        for (int uidi = this.mUidStates.size() - 1; uidi >= 0; uidi--) {
            UidState uidState = this.mUidStates.valueAt(uidi);
            if (uidState.foregroundOps != null) {
                uidState.evalForegroundOps(this.mOpModeWatchers);
            }
        }
    }

    public void startWatchingMode(int op, String packageName, IAppOpsCallback callback) {
        startWatchingModeWithFlags(op, packageName, 0, callback);
    }

    public void startWatchingModeWithFlags(int op, String packageName, int flags, IAppOpsCallback callback) {
        int switchOp;
        int notifiedOps;
        ModeCallback cb;
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        Preconditions.checkArgumentInRange(op, -1, HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION, "Invalid op code: " + op);
        if (callback == null) {
            return;
        }
        synchronized (this) {
            if (op == -1) {
                switchOp = op;
            } else {
                try {
                    switchOp = AppOpsManager.opToSwitch(op);
                } catch (Throwable th) {
                    throw th;
                }
            }
            if ((flags & 2) == 0) {
                if (op == -1) {
                    notifiedOps = -2;
                } else {
                    notifiedOps = op;
                }
            } else {
                int notifiedOps2 = switchOp;
                notifiedOps = notifiedOps2;
            }
            ModeCallback cb2 = this.mModeWatchers.get(callback.asBinder());
            if (cb2 == null) {
                cb = new ModeCallback(callback, -1, flags, notifiedOps, callingUid, callingPid);
                this.mModeWatchers.put(callback.asBinder(), cb);
            }
            if (switchOp != -1) {
                cb = cb2;
                ArraySet<ModeCallback> cbs = this.mOpModeWatchers.get(switchOp);
                if (cbs == null) {
                    cbs = new ArraySet<>();
                    this.mOpModeWatchers.put(switchOp, cbs);
                }
                cbs.add(cb);
            }
            if (packageName != null) {
                ArraySet<ModeCallback> cbs2 = this.mPackageModeWatchers.get(packageName);
                if (cbs2 == null) {
                    cbs2 = new ArraySet<>();
                    this.mPackageModeWatchers.put(packageName, cbs2);
                }
                cbs2.add(cb);
            }
            evalAllForegroundOpsLocked();
        }
    }

    public void stopWatchingMode(IAppOpsCallback callback) {
        if (callback == null) {
            return;
        }
        synchronized (this) {
            ModeCallback cb = this.mModeWatchers.remove(callback.asBinder());
            if (cb != null) {
                cb.unlinkToDeath();
                for (int i = this.mOpModeWatchers.size() - 1; i >= 0; i--) {
                    ArraySet<ModeCallback> cbs = this.mOpModeWatchers.valueAt(i);
                    cbs.remove(cb);
                    if (cbs.size() <= 0) {
                        this.mOpModeWatchers.removeAt(i);
                    }
                }
                for (int i2 = this.mPackageModeWatchers.size() - 1; i2 >= 0; i2--) {
                    ArraySet<ModeCallback> cbs2 = this.mPackageModeWatchers.valueAt(i2);
                    cbs2.remove(cb);
                    if (cbs2.size() <= 0) {
                        this.mPackageModeWatchers.removeAt(i2);
                    }
                }
            }
            evalAllForegroundOpsLocked();
        }
    }

    public AppOpsManagerInternal.CheckOpsDelegate getAppOpsServiceDelegate() {
        AppOpsManagerInternal.CheckOpsDelegate checkOpsDelegate;
        synchronized (this) {
            checkOpsDelegate = this.mCheckOpsDelegate;
        }
        return checkOpsDelegate;
    }

    public void setAppOpsServiceDelegate(AppOpsManagerInternal.CheckOpsDelegate delegate) {
        synchronized (this) {
            this.mCheckOpsDelegate = delegate;
        }
    }

    public int checkOperationRaw(int code, int uid, String packageName) {
        return checkOperationInternal(code, uid, packageName, true);
    }

    public int checkOperation(int code, int uid, String packageName) {
        return checkOperationInternal(code, uid, packageName, false);
    }

    private int checkOperationInternal(int code, int uid, String packageName, boolean raw) {
        AppOpsManagerInternal.CheckOpsDelegate delegate;
        synchronized (this) {
            delegate = this.mCheckOpsDelegate;
        }
        if (delegate == null) {
            return checkOperationImpl(code, uid, packageName, raw);
        }
        return delegate.checkOperation(code, uid, packageName, raw, new QuadFunction() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$gQy7GOuCV6GbjQtdNhNG6xld8I4
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return Integer.valueOf(this.f$0.checkOperationImpl(((Integer) obj).intValue(), ((Integer) obj2).intValue(), (String) obj3, ((Boolean) obj4).booleanValue()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkOperationImpl(int code, int uid, String packageName, boolean raw) {
        verifyIncomingOp(code);
        String resolvedPackageName = resolvePackageName(uid, packageName);
        if (resolvedPackageName == null) {
            return 1;
        }
        return checkOperationUnchecked(code, uid, resolvedPackageName, raw);
    }

    private int checkOperationUnchecked(int code, int uid, String packageName, boolean raw) {
        try {
            AppOpsManager.RestrictionBypass bypass = verifyAndGetBypass(uid, packageName, null);
            if (isOpRestrictedDueToSuspend(code, packageName, uid)) {
                return 1;
            }
            synchronized (this) {
                if (isOpRestrictedLocked(uid, code, packageName, bypass)) {
                    return 1;
                }
                int code2 = AppOpsManager.opToSwitch(code);
                UidState uidState = getUidStateLocked(uid, false);
                if (uidState != null && uidState.opModes != null && uidState.opModes.indexOfKey(code2) >= 0) {
                    int rawMode = uidState.opModes.get(code2);
                    return raw ? rawMode : uidState.evalMode(code2, rawMode);
                }
                Op op = getOpLocked(code2, uid, packageName, null, bypass, false);
                if (op == null) {
                    return AppOpsManager.opToDefaultMode(code2);
                }
                return raw ? op.mode : op.evalMode();
            }
        } catch (SecurityException e) {
            Slog.e(TAG, "checkOperation", e);
            return AppOpsManager.opToDefaultMode(code);
        }
    }

    public int checkAudioOperation(int code, int usage, int uid, String packageName) {
        AppOpsManagerInternal.CheckOpsDelegate delegate;
        synchronized (this) {
            delegate = this.mCheckOpsDelegate;
        }
        if (delegate == null) {
            return checkAudioOperationImpl(code, usage, uid, packageName);
        }
        return delegate.checkAudioOperation(code, usage, uid, packageName, new QuadFunction() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$mfUWTdGevxEoIUv1cEPEFG0qAaI
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4) {
                return Integer.valueOf(this.f$0.checkAudioOperationImpl(((Integer) obj).intValue(), ((Integer) obj2).intValue(), ((Integer) obj3).intValue(), (String) obj4));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int checkAudioOperationImpl(int code, int usage, int uid, String packageName) {
        int mode = this.mAudioRestrictionManager.checkAudioOperation(code, usage, uid, packageName);
        if (mode != 0) {
            return mode;
        }
        return checkOperation(code, uid, packageName);
    }

    public void setAudioRestriction(int code, int usage, int uid, int mode, String[] exceptionPackages) {
        enforceManageAppOpsModes(Binder.getCallingPid(), Binder.getCallingUid(), uid);
        verifyIncomingUid(uid);
        verifyIncomingOp(code);
        this.mAudioRestrictionManager.setZenModeAudioRestriction(code, usage, uid, mode, exceptionPackages);
        this.mHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw.INSTANCE, this, Integer.valueOf(code), -2));
    }

    public void setCameraAudioRestriction(int mode) {
        enforceManageAppOpsModes(Binder.getCallingPid(), Binder.getCallingUid(), -1);
        this.mAudioRestrictionManager.setCameraAudioRestriction(mode);
        this.mHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw.INSTANCE, this, 28, -2));
        this.mHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw.INSTANCE, this, 3, -2));
    }

    public int checkPackage(int uid, String packageName) {
        Objects.requireNonNull(packageName);
        try {
            verifyAndGetBypass(uid, packageName, null);
            return 0;
        } catch (SecurityException e) {
            return 2;
        }
    }

    public int noteProxyOperation(int code, int proxiedUid, String proxiedPackageName, String proxiedAttributionTag, int proxyUid, String proxyPackageName, String proxyAttributionTag, boolean shouldCollectAsyncNotedOp, String message, boolean shouldCollectMessage) {
        verifyIncomingUid(proxyUid);
        verifyIncomingOp(code);
        String resolveProxyPackageName = resolvePackageName(proxyUid, proxyPackageName);
        if (resolveProxyPackageName == null) {
            return 1;
        }
        boolean isTrustVoiceServiceProxy = AppOpsManager.isTrustedVoiceServiceProxy(this.mContext, proxyPackageName, code, UserHandle.getUserId(proxyUid));
        boolean isSelfBlame = Binder.getCallingUid() == proxiedUid;
        boolean isProxyTrusted = this.mContext.checkPermission("android.permission.UPDATE_APP_OPS_STATS", -1, proxyUid) == 0 || isTrustVoiceServiceProxy || isSelfBlame;
        int proxyFlags = isProxyTrusted ? 2 : 4;
        int proxyMode = noteOperationUnchecked(code, proxyUid, resolveProxyPackageName, proxyAttributionTag, -1, null, null, proxyFlags, !isProxyTrusted, "proxy " + message, shouldCollectMessage);
        if (proxyMode != 0 || Binder.getCallingUid() == proxiedUid) {
            return proxyMode;
        }
        String resolveProxiedPackageName = resolvePackageName(proxiedUid, proxiedPackageName);
        if (resolveProxiedPackageName == null) {
            return 1;
        }
        int proxiedFlags = isProxyTrusted ? 8 : 16;
        return noteOperationUnchecked(code, proxiedUid, resolveProxiedPackageName, proxiedAttributionTag, proxyUid, resolveProxyPackageName, proxyAttributionTag, proxiedFlags, shouldCollectAsyncNotedOp, message, shouldCollectMessage);
    }

    public int noteOperation(int code, int uid, String packageName, String attributionTag, boolean shouldCollectAsyncNotedOp, String message, boolean shouldCollectMessage) {
        AppOpsManagerInternal.CheckOpsDelegate delegate;
        synchronized (this) {
            delegate = this.mCheckOpsDelegate;
        }
        if (delegate == null) {
            return noteOperationImpl(code, uid, packageName, attributionTag, shouldCollectAsyncNotedOp, message, shouldCollectMessage);
        }
        return delegate.noteOperation(code, uid, packageName, attributionTag, shouldCollectAsyncNotedOp, message, shouldCollectMessage, new HeptFunction() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$p0ZLmKR_KoZGKlw2X3zSLMlh_MU
            public final Object apply(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
                return Integer.valueOf(this.f$0.noteOperationImpl(((Integer) obj).intValue(), ((Integer) obj2).intValue(), (String) obj3, (String) obj4, ((Boolean) obj5).booleanValue(), (String) obj6, ((Boolean) obj7).booleanValue()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int noteOperationImpl(int code, int uid, String packageName, String attributionTag, boolean shouldCollectAsyncNotedOp, String message, boolean shouldCollectMessage) {
        verifyIncomingUid(uid);
        verifyIncomingOp(code);
        String resolvedPackageName = resolvePackageName(uid, packageName);
        if (resolvedPackageName == null) {
            return 1;
        }
        return noteOperationUnchecked(code, uid, resolvedPackageName, attributionTag, -1, null, null, 1, shouldCollectAsyncNotedOp, message, shouldCollectMessage);
    }

    private int noteOperationUnchecked(int code, int uid, String packageName, String attributionTag, int proxyUid, String proxyPackageName, String proxyAttributionTag, int flags, boolean shouldCollectAsyncNotedOp, String message, boolean shouldCollectMessage) {
        Op switchOp;
        try {
            AppOpsManager.RestrictionBypass bypass = verifyAndGetBypass(uid, packageName, attributionTag);
            synchronized (this) {
                Ops ops = getOpsLocked(uid, packageName, attributionTag, bypass, true);
                if (ops == null) {
                    scheduleOpNotedIfNeededLocked(code, uid, packageName, 1);
                    return 2;
                }
                Op op = getOpLocked(ops, code, uid, true);
                if (!isOpRestrictedLocked(uid, code, packageName, bypass)) {
                    AttributedOp attributedOp = op.getOrCreateAttribution(op, attributionTag);
                    if (attributedOp.isRunning()) {
                        Slog.w(TAG, "Noting op not finished: uid " + uid + " pkg " + packageName + " code " + code + " startTime of in progress event=" + ((InProgressStartOpEvent) attributedOp.mInProgressEvents.valueAt(0)).getStartTime());
                    }
                    int switchCode = AppOpsManager.opToSwitch(code);
                    UidState uidState = ops.uidState;
                    if (uidState.opModes != null && uidState.opModes.indexOfKey(switchCode) >= 0) {
                        int uidMode = uidState.evalMode(code, uidState.opModes.get(switchCode));
                        if (uidMode != 0) {
                            attributedOp.rejected(uidState.state, flags);
                            scheduleOpNotedIfNeededLocked(code, uid, packageName, uidMode);
                            return uidMode;
                        }
                    } else {
                        if (switchCode != code) {
                            switchOp = getOpLocked(ops, switchCode, uid, true);
                        } else {
                            switchOp = op;
                        }
                        int mode = switchOp.evalMode();
                        if (mode != 0) {
                            attributedOp.rejected(uidState.state, flags);
                            scheduleOpNotedIfNeededLocked(code, uid, packageName, mode);
                            return mode;
                        }
                    }
                    scheduleOpNotedIfNeededLocked(code, uid, packageName, 0);
                    attributedOp.accessed(proxyUid, proxyPackageName, proxyAttributionTag, uidState.state, flags);
                    if (shouldCollectAsyncNotedOp) {
                        collectAsyncNotedOp(uid, packageName, code, attributionTag, flags, message, shouldCollectMessage);
                    }
                    return 0;
                }
                scheduleOpNotedIfNeededLocked(code, uid, packageName, 1);
                return 1;
            }
        } catch (SecurityException e) {
            Slog.e(TAG, "noteOperation", e);
            return 2;
        }
    }

    public void startWatchingActive(int[] ops, IAppOpsActiveCallback callback) {
        SparseArray<ActiveCallback> callbacks;
        int watchedUid = -1;
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WATCH_APPOPS") != 0) {
            watchedUid = callingUid;
        }
        if (ops != null) {
            Preconditions.checkArrayElementsInRange(ops, 0, HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION, "Invalid op code in: " + Arrays.toString(ops));
        }
        if (callback == null) {
            return;
        }
        synchronized (this) {
            SparseArray<ActiveCallback> callbacks2 = this.mActiveWatchers.get(callback.asBinder());
            if (callbacks2 != null) {
                callbacks = callbacks2;
            } else {
                SparseArray<ActiveCallback> callbacks3 = new SparseArray<>();
                this.mActiveWatchers.put(callback.asBinder(), callbacks3);
                callbacks = callbacks3;
            }
            ActiveCallback activeCallback = new ActiveCallback(callback, watchedUid, callingUid, callingPid);
            for (int op : ops) {
                callbacks.put(op, activeCallback);
            }
        }
    }

    public void stopWatchingActive(IAppOpsActiveCallback callback) {
        if (callback == null) {
            return;
        }
        synchronized (this) {
            SparseArray<ActiveCallback> activeCallbacks = this.mActiveWatchers.remove(callback.asBinder());
            if (activeCallbacks == null) {
                return;
            }
            int callbackCount = activeCallbacks.size();
            for (int i = 0; i < callbackCount; i++) {
                activeCallbacks.valueAt(i).destroy();
            }
        }
    }

    public void startWatchingStarted(int[] ops, IAppOpsStartedCallback callback) {
        SparseArray<StartedCallback> callbacks;
        int watchedUid = -1;
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WATCH_APPOPS") != 0) {
            watchedUid = callingUid;
        }
        Preconditions.checkArgument(!ArrayUtils.isEmpty(ops), "Ops cannot be null or empty");
        Preconditions.checkArrayElementsInRange(ops, 0, HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION, "Invalid op code in: " + Arrays.toString(ops));
        Objects.requireNonNull(callback, "Callback cannot be null");
        synchronized (this) {
            SparseArray<StartedCallback> callbacks2 = this.mStartedWatchers.get(callback.asBinder());
            if (callbacks2 != null) {
                callbacks = callbacks2;
            } else {
                SparseArray<StartedCallback> callbacks3 = new SparseArray<>();
                this.mStartedWatchers.put(callback.asBinder(), callbacks3);
                callbacks = callbacks3;
            }
            StartedCallback startedCallback = new StartedCallback(callback, watchedUid, callingUid, callingPid);
            for (int op : ops) {
                callbacks.put(op, startedCallback);
            }
        }
    }

    public void stopWatchingStarted(IAppOpsStartedCallback callback) {
        Objects.requireNonNull(callback, "Callback cannot be null");
        synchronized (this) {
            SparseArray<StartedCallback> startedCallbacks = this.mStartedWatchers.remove(callback.asBinder());
            if (startedCallbacks == null) {
                return;
            }
            int callbackCount = startedCallbacks.size();
            for (int i = 0; i < callbackCount; i++) {
                startedCallbacks.valueAt(i).destroy();
            }
        }
    }

    public void startWatchingNoted(int[] ops, IAppOpsNotedCallback callback) {
        SparseArray<NotedCallback> callbacks;
        int watchedUid = -1;
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        if (this.mContext.checkCallingOrSelfPermission("android.permission.WATCH_APPOPS") != 0) {
            watchedUid = callingUid;
        }
        Preconditions.checkArgument(!ArrayUtils.isEmpty(ops), "Ops cannot be null or empty");
        Preconditions.checkArrayElementsInRange(ops, 0, HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION, "Invalid op code in: " + Arrays.toString(ops));
        Objects.requireNonNull(callback, "Callback cannot be null");
        synchronized (this) {
            SparseArray<NotedCallback> callbacks2 = this.mNotedWatchers.get(callback.asBinder());
            if (callbacks2 != null) {
                callbacks = callbacks2;
            } else {
                SparseArray<NotedCallback> callbacks3 = new SparseArray<>();
                this.mNotedWatchers.put(callback.asBinder(), callbacks3);
                callbacks = callbacks3;
            }
            NotedCallback notedCallback = new NotedCallback(callback, watchedUid, callingUid, callingPid);
            for (int op : ops) {
                callbacks.put(op, notedCallback);
            }
        }
    }

    public void stopWatchingNoted(IAppOpsNotedCallback callback) {
        Objects.requireNonNull(callback, "Callback cannot be null");
        synchronized (this) {
            SparseArray<NotedCallback> notedCallbacks = this.mNotedWatchers.remove(callback.asBinder());
            if (notedCallbacks == null) {
                return;
            }
            int callbackCount = notedCallbacks.size();
            for (int i = 0; i < callbackCount; i++) {
                notedCallbacks.valueAt(i).destroy();
            }
        }
    }

    private void collectAsyncNotedOp(final int uid, final String packageName, final int opCode, final String attributionTag, int flags, String message, boolean shouldCollectMessage) {
        Objects.requireNonNull(message);
        int callingUid = Binder.getCallingUid();
        long token = Binder.clearCallingIdentity();
        try {
            synchronized (this) {
                Pair<String, Integer> key = getAsyncNotedOpsKey(packageName, uid);
                RemoteCallbackList<IAppOpsAsyncNotedCallback> callbacks = this.mAsyncOpWatchers.get(key);
                final AsyncNotedAppOp asyncNotedOp = new AsyncNotedAppOp(opCode, callingUid, attributionTag, message, System.currentTimeMillis());
                final boolean[] wasNoteForwarded = {false};
                if ((flags & 9) != 0 && shouldCollectMessage) {
                    reportRuntimeAppOpAccessMessageAsyncLocked(uid, packageName, opCode, attributionTag, message);
                }
                if (r4 != 0) {
                    callbacks.broadcast(new Consumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$mWtZBFm5Ggi69Tx6HVKXLYiPWt4
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            AppOpsService.lambda$collectAsyncNotedOp$2(asyncNotedOp, wasNoteForwarded, opCode, packageName, uid, attributionTag, (IAppOpsAsyncNotedCallback) obj);
                        }
                    });
                }
                if (!wasNoteForwarded[r12]) {
                    ArrayList<AsyncNotedAppOp> unforwardedOps = this.mUnforwardedAsyncNotedOps.get(key);
                    if (unforwardedOps == null) {
                        unforwardedOps = new ArrayList<>(1);
                        this.mUnforwardedAsyncNotedOps.put(key, unforwardedOps);
                    }
                    unforwardedOps.add(asyncNotedOp);
                    if (unforwardedOps.size() > 10) {
                        unforwardedOps.remove(0);
                    }
                }
            }
            Binder.restoreCallingIdentity(token);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(token);
            throw th;
        }
    }

    static /* synthetic */ void lambda$collectAsyncNotedOp$2(AsyncNotedAppOp asyncNotedOp, boolean[] wasNoteForwarded, int opCode, String packageName, int uid, String attributionTag, IAppOpsAsyncNotedCallback cb) {
        try {
            cb.opNoted(asyncNotedOp);
            wasNoteForwarded[0] = true;
        } catch (RemoteException e) {
            Slog.e(TAG, "Could not forward noteOp of " + opCode + " to " + packageName + SliceClientPermissions.SliceAuthority.DELIMITER + uid + "(" + attributionTag + ")", e);
        }
    }

    private Pair<String, Integer> getAsyncNotedOpsKey(String packageName, int uid) {
        return new Pair<>(packageName, Integer.valueOf(uid));
    }

    public void startWatchingAsyncNoted(String packageName, IAppOpsAsyncNotedCallback callback) {
        Objects.requireNonNull(packageName);
        Objects.requireNonNull(callback);
        int uid = Binder.getCallingUid();
        final Pair<String, Integer> key = getAsyncNotedOpsKey(packageName, uid);
        verifyAndGetBypass(uid, packageName, null);
        synchronized (this) {
            RemoteCallbackList<IAppOpsAsyncNotedCallback> callbacks = this.mAsyncOpWatchers.get(key);
            if (callbacks == null) {
                callbacks = new RemoteCallbackList<IAppOpsAsyncNotedCallback>() { // from class: com.android.server.appop.AppOpsService.8
                    @Override // android.os.RemoteCallbackList
                    public void onCallbackDied(IAppOpsAsyncNotedCallback callback2) {
                        synchronized (AppOpsService.this) {
                            if (getRegisteredCallbackCount() == 0) {
                                AppOpsService.this.mAsyncOpWatchers.remove(key);
                            }
                        }
                    }
                };
                this.mAsyncOpWatchers.put(key, callbacks);
            }
            callbacks.register(callback);
        }
    }

    public void stopWatchingAsyncNoted(String packageName, IAppOpsAsyncNotedCallback callback) {
        Objects.requireNonNull(packageName);
        Objects.requireNonNull(callback);
        int uid = Binder.getCallingUid();
        Pair<String, Integer> key = getAsyncNotedOpsKey(packageName, uid);
        verifyAndGetBypass(uid, packageName, null);
        synchronized (this) {
            RemoteCallbackList<IAppOpsAsyncNotedCallback> callbacks = this.mAsyncOpWatchers.get(key);
            if (callbacks != null) {
                callbacks.unregister(callback);
                if (callbacks.getRegisteredCallbackCount() == 0) {
                    this.mAsyncOpWatchers.remove(key);
                }
            }
        }
    }

    public List<AsyncNotedAppOp> extractAsyncOps(String packageName) {
        ArrayList<AsyncNotedAppOp> arrayListRemove;
        Objects.requireNonNull(packageName);
        int uid = Binder.getCallingUid();
        verifyAndGetBypass(uid, packageName, null);
        synchronized (this) {
            arrayListRemove = this.mUnforwardedAsyncNotedOps.remove(getAsyncNotedOpsKey(packageName, uid));
        }
        return arrayListRemove;
    }

    public int startOperation(IBinder clientId, int code, int uid, String packageName, String attributionTag, boolean startIfModeDefault, boolean shouldCollectAsyncNotedOp, String message, boolean shouldCollectMessage) {
        Op switchOp;
        int result;
        verifyIncomingUid(uid);
        verifyIncomingOp(code);
        String resolvedPackageName = resolvePackageName(uid, packageName);
        if (resolvedPackageName == null) {
            return 1;
        }
        if (code != 102 || (result = checkOperation(27, uid, packageName)) == 0) {
            try {
                AppOpsManager.RestrictionBypass bypass = verifyAndGetBypass(uid, packageName, attributionTag);
                synchronized (this) {
                    Ops ops = getOpsLocked(uid, resolvedPackageName, attributionTag, bypass, true);
                    if (ops == null) {
                        scheduleOpStartedIfNeededLocked(code, uid, packageName, 1);
                        return 2;
                    }
                    Op op = getOpLocked(ops, code, uid, true);
                    if (!isOpRestrictedLocked(uid, code, resolvedPackageName, bypass)) {
                        AttributedOp attributedOp = op.getOrCreateAttribution(op, attributionTag);
                        int switchCode = AppOpsManager.opToSwitch(code);
                        UidState uidState = ops.uidState;
                        if (uidState.opModes != null && uidState.opModes.indexOfKey(switchCode) >= 0) {
                            int uidMode = uidState.evalMode(code, uidState.opModes.get(switchCode));
                            if (uidMode != 0 && (!startIfModeDefault || uidMode != 3)) {
                                attributedOp.rejected(uidState.state, 1);
                                scheduleOpStartedIfNeededLocked(code, uid, packageName, uidMode);
                                return uidMode;
                            }
                        } else {
                            if (switchCode != code) {
                                switchOp = getOpLocked(ops, switchCode, uid, true);
                            } else {
                                switchOp = op;
                            }
                            int mode = switchOp.evalMode();
                            if (mode != 0 && (!startIfModeDefault || mode != 3)) {
                                attributedOp.rejected(uidState.state, 1);
                                scheduleOpStartedIfNeededLocked(code, uid, packageName, mode);
                                return mode;
                            }
                        }
                        scheduleOpStartedIfNeededLocked(code, uid, packageName, 0);
                        try {
                            attributedOp.started(clientId, uidState.state);
                            if (shouldCollectAsyncNotedOp) {
                                collectAsyncNotedOp(uid, packageName, code, attributionTag, 1, message, shouldCollectMessage);
                            }
                            return 0;
                        } catch (RemoteException e) {
                            throw new RuntimeException(e);
                        }
                    }
                    scheduleOpStartedIfNeededLocked(code, uid, packageName, 1);
                    return 1;
                }
            } catch (SecurityException e2) {
                Slog.e(TAG, "startOperation", e2);
                return 2;
            }
        }
        return result;
    }

    public void finishOperation(IBinder clientId, int code, int uid, String packageName, String attributionTag) {
        verifyIncomingUid(uid);
        verifyIncomingOp(code);
        String resolvedPackageName = resolvePackageName(uid, packageName);
        if (resolvedPackageName == null) {
            return;
        }
        try {
            AppOpsManager.RestrictionBypass bypass = verifyAndGetBypass(uid, packageName, attributionTag);
            synchronized (this) {
                Op op = getOpLocked(code, uid, resolvedPackageName, attributionTag, bypass, true);
                if (op == null) {
                    Slog.e(TAG, "Operation not found: uid=" + uid + " pkg=" + packageName + "(" + attributionTag + ") op=" + AppOpsManager.opToName(code));
                    return;
                }
                AttributedOp attributedOp = op.mAttributions.get(attributionTag);
                if (attributedOp == null) {
                    Slog.e(TAG, "Attribution not found: uid=" + uid + " pkg=" + packageName + "(" + attributionTag + ") op=" + AppOpsManager.opToName(code));
                    return;
                }
                if (attributedOp.isRunning()) {
                    attributedOp.finished(clientId);
                } else {
                    Slog.e(TAG, "Operation not started: uid=" + uid + " pkg=" + packageName + "(" + attributionTag + ") op=" + AppOpsManager.opToName(code));
                }
            }
        } catch (SecurityException e) {
            Slog.e(TAG, "Cannot finishOperation", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleOpActiveChangedIfNeededLocked(int code, int uid, String packageName, boolean active) {
        ArraySet<ActiveCallback> dispatchedCallbacks = null;
        int callbackListCount = this.mActiveWatchers.size();
        for (int i = 0; i < callbackListCount; i++) {
            SparseArray<ActiveCallback> callbacks = this.mActiveWatchers.valueAt(i);
            ActiveCallback callback = callbacks.get(code);
            if (callback != null && (callback.mWatchingUid < 0 || callback.mWatchingUid == uid)) {
                if (dispatchedCallbacks == null) {
                    dispatchedCallbacks = new ArraySet<>();
                }
                dispatchedCallbacks.add(callback);
            }
        }
        if (dispatchedCallbacks == null) {
            return;
        }
        this.mHandler.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$ac4Ra3Yhj0OQzvkaL2dLbsuLAmQ
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                ((AppOpsService) obj).notifyOpActiveChanged((ArraySet) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), (String) obj5, ((Boolean) obj6).booleanValue());
            }
        }, this, dispatchedCallbacks, Integer.valueOf(code), Integer.valueOf(uid), packageName, Boolean.valueOf(active)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOpActiveChanged(ArraySet<ActiveCallback> callbacks, int code, int uid, String packageName, boolean active) {
        long identity = Binder.clearCallingIdentity();
        try {
            int callbackCount = callbacks.size();
            for (int i = 0; i < callbackCount; i++) {
                ActiveCallback callback = callbacks.valueAt(i);
                try {
                    callback.mCallback.opActiveChanged(code, uid, packageName, active);
                } catch (RemoteException e) {
                }
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    private void scheduleOpStartedIfNeededLocked(int code, int uid, String pkgName, int result) {
        ArraySet<StartedCallback> dispatchedCallbacks = null;
        int callbackListCount = this.mStartedWatchers.size();
        for (int i = 0; i < callbackListCount; i++) {
            SparseArray<StartedCallback> callbacks = this.mStartedWatchers.valueAt(i);
            StartedCallback callback = callbacks.get(code);
            if (callback != null && (callback.mWatchingUid < 0 || callback.mWatchingUid == uid)) {
                if (dispatchedCallbacks == null) {
                    dispatchedCallbacks = new ArraySet<>();
                }
                dispatchedCallbacks.add(callback);
            }
        }
        if (dispatchedCallbacks == null) {
            return;
        }
        this.mHandler.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$7TpfX4NXXUoI4jqIGxhEk65lHLs
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                ((AppOpsService) obj).notifyOpStarted((ArraySet) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), (String) obj5, ((Integer) obj6).intValue());
            }
        }, this, dispatchedCallbacks, Integer.valueOf(code), Integer.valueOf(uid), pkgName, Integer.valueOf(result)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOpStarted(ArraySet<StartedCallback> callbacks, int code, int uid, String packageName, int result) {
        long identity = Binder.clearCallingIdentity();
        try {
            int callbackCount = callbacks.size();
            for (int i = 0; i < callbackCount; i++) {
                StartedCallback callback = callbacks.valueAt(i);
                try {
                    callback.mCallback.opStarted(code, uid, packageName, result);
                } catch (RemoteException e) {
                }
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    private void scheduleOpNotedIfNeededLocked(int code, int uid, String packageName, int result) {
        ArraySet<NotedCallback> dispatchedCallbacks = null;
        int callbackListCount = this.mNotedWatchers.size();
        for (int i = 0; i < callbackListCount; i++) {
            SparseArray<NotedCallback> callbacks = this.mNotedWatchers.valueAt(i);
            NotedCallback callback = callbacks.get(code);
            if (callback != null && (callback.mWatchingUid < 0 || callback.mWatchingUid == uid)) {
                if (dispatchedCallbacks == null) {
                    dispatchedCallbacks = new ArraySet<>();
                }
                dispatchedCallbacks.add(callback);
            }
        }
        if (dispatchedCallbacks == null) {
            return;
        }
        this.mHandler.sendMessage(PooledLambda.obtainMessage(new HexConsumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$AfBLuTvVESlqN91IyRX84hMV5nE
            public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
                ((AppOpsService) obj).notifyOpChecked((ArraySet) obj2, ((Integer) obj3).intValue(), ((Integer) obj4).intValue(), (String) obj5, ((Integer) obj6).intValue());
            }
        }, this, dispatchedCallbacks, Integer.valueOf(code), Integer.valueOf(uid), packageName, Integer.valueOf(result)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyOpChecked(ArraySet<NotedCallback> callbacks, int code, int uid, String packageName, int result) {
        long identity = Binder.clearCallingIdentity();
        try {
            int callbackCount = callbacks.size();
            for (int i = 0; i < callbackCount; i++) {
                NotedCallback callback = callbacks.valueAt(i);
                try {
                    callback.mCallback.opNoted(code, uid, packageName, result);
                } catch (RemoteException e) {
                }
            }
            Binder.restoreCallingIdentity(identity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public int permissionToOpCode(String permission) {
        if (permission == null) {
            return -1;
        }
        return AppOpsManager.permissionToOpCode(permission);
    }

    public boolean shouldCollectNotes(int opCode) {
        Preconditions.checkArgumentInRange(opCode, 0, HdmiCecKeycode.CEC_KEYCODE_RESTORE_VOLUME_FUNCTION, "opCode");
        String perm = AppOpsManager.opToPermission(opCode);
        if (perm == null) {
            return false;
        }
        try {
            PermissionInfo permInfo = this.mContext.getPackageManager().getPermissionInfo(perm, 0);
            return permInfo.getProtection() == 1 || (permInfo.getProtectionFlags() & 64) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private void verifyIncomingUid(int uid) {
        if (uid == Binder.getCallingUid() || Binder.getCallingPid() == Process.myPid()) {
            return;
        }
        this.mContext.enforcePermission("android.permission.UPDATE_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
    }

    private void verifyIncomingOp(int op) {
        if (op >= 0 && op < 103) {
            return;
        }
        throw new IllegalArgumentException("Bad operation #" + op);
    }

    private UidState getUidStateLocked(int uid, boolean edit) {
        UidState uidState = this.mUidStates.get(uid);
        if (uidState == null) {
            if (!edit) {
                return null;
            }
            UidState uidState2 = new UidState(uid);
            this.mUidStates.put(uid, uidState2);
            return uidState2;
        }
        updatePendingStateIfNeededLocked(uidState);
        return uidState;
    }

    private void updatePendingStateIfNeededLocked(UidState uidState) {
        if (uidState == null || uidState.pendingStateCommitTime == 0) {
            return;
        }
        if (uidState.pendingStateCommitTime < this.mLastRealtime) {
            commitUidPendingStateLocked(uidState);
            return;
        }
        this.mLastRealtime = SystemClock.elapsedRealtime();
        if (uidState.pendingStateCommitTime < this.mLastRealtime) {
            commitUidPendingStateLocked(uidState);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v32, types: [int] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v4, types: [int] */
    /* JADX WARN: Type inference failed for: r8v7 */
    private void commitUidPendingStateLocked(UidState uidState) {
        ArraySet<ModeCallback> arraySet;
        ?? r8;
        if (uidState.hasForegroundWatchers) {
            boolean z = true;
            int size = uidState.foregroundOps.size() - 1;
            while (size >= 0) {
                if (uidState.foregroundOps.valueAt(size)) {
                    int iKeyAt = uidState.foregroundOps.keyAt(size);
                    long jResolveFirstUnrestrictedUidState = AppOpsManager.resolveFirstUnrestrictedUidState(iKeyAt);
                    if ((((long) uidState.state) <= jResolveFirstUnrestrictedUidState ? z ? 1 : 0 : false) != (((long) uidState.pendingState) <= jResolveFirstUnrestrictedUidState ? z ? 1 : 0 : false) || uidState.capability != uidState.pendingCapability || uidState.appWidgetVisible != uidState.pendingAppWidgetVisible) {
                        int i = 4;
                        if (uidState.opModes != null && uidState.opModes.indexOfKey(iKeyAt) >= 0 && uidState.opModes.get(iKeyAt) == 4) {
                            this.mHandler.sendMessage(PooledLambda.obtainMessage(new QuintConsumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$1CB62TNmPVdrHvls01D5LKYSp4w
                                public final void accept(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) throws Throwable {
                                    ((AppOpsService) obj).notifyOpChangedForAllPkgsInUid(((Integer) obj2).intValue(), ((Integer) obj3).intValue(), ((Boolean) obj4).booleanValue(), (IAppOpsCallback) obj5);
                                }
                            }, this, Integer.valueOf(iKeyAt), Integer.valueOf(uidState.uid), Boolean.valueOf(z), (Object) null));
                        } else if (uidState.pkgOps != null && (arraySet = this.mOpModeWatchers.get(iKeyAt)) != null) {
                            int size2 = arraySet.size() - (z ? 1 : 0);
                            while (size2 >= 0) {
                                ModeCallback modeCallbackValueAt = arraySet.valueAt(size2);
                                if ((modeCallbackValueAt.mFlags & r8) == 0) {
                                    r8 = z;
                                } else if (modeCallbackValueAt.isWatchingUid(uidState.uid)) {
                                    int size3 = uidState.pkgOps.size() - r8;
                                    while (size3 >= 0) {
                                        Op op = uidState.pkgOps.valueAt(size3).get(iKeyAt);
                                        if (op == null) {
                                            r8 = z;
                                        } else if (op.mode == i) {
                                            r8 = z;
                                            this.mHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AppOpsService$FYLTtxqrHmv8Y5UdZ9ybXKsSJhs.INSTANCE, this, modeCallbackValueAt, Integer.valueOf(iKeyAt), Integer.valueOf(uidState.uid), uidState.pkgOps.keyAt(size3)));
                                        } else {
                                            r8 = z;
                                        }
                                        size3--;
                                        i = 4;
                                        this = this;
                                        arraySet = arraySet;
                                        size2 = size2;
                                        modeCallbackValueAt = modeCallbackValueAt;
                                    }
                                    r8 = z;
                                } else {
                                    r8 = z;
                                }
                                size2--;
                                i = 4;
                                this = this;
                                arraySet = arraySet;
                                r8 = 1;
                            }
                            r8 = z;
                        }
                    }
                }
                size--;
                z = true;
            }
        }
        uidState.state = uidState.pendingState;
        uidState.capability = uidState.pendingCapability;
        uidState.appWidgetVisible = uidState.pendingAppWidgetVisible;
        uidState.pendingStateCommitTime = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAppWidgetVisibility(SparseArray<String> uidPackageNames, boolean visible) {
        synchronized (this) {
            for (int i = uidPackageNames.size() - 1; i >= 0; i--) {
                int uid = uidPackageNames.keyAt(i);
                UidState uidState = getUidStateLocked(uid, true);
                if (uidState != null && uidState.pendingAppWidgetVisible != visible) {
                    uidState.pendingAppWidgetVisible = visible;
                    if (uidState.pendingAppWidgetVisible != uidState.appWidgetVisible) {
                        commitUidPendingStateLocked(uidState);
                    }
                }
            }
        }
    }

    private AppOpsManager.RestrictionBypass getBypassforPackage(AndroidPackage pkg) {
        return new AppOpsManager.RestrictionBypass(pkg.isPrivileged(), this.mContext.checkPermission("android.permission.EXEMPT_FROM_AUDIO_RECORD_RESTRICTIONS", -1, pkg.getUid()) == 0);
    }

    private AppOpsManager.RestrictionBypass verifyAndGetBypass(int uid, String packageName, String attributionTag) {
        int pkgUid;
        Ops ops;
        if (uid == 0) {
            return null;
        }
        synchronized (this) {
            UidState uidState = this.mUidStates.get(uid);
            if (uidState != null && uidState.pkgOps != null && (ops = uidState.pkgOps.get(packageName)) != null && ((attributionTag == null || ops.knownAttributionTags.contains(attributionTag)) && ops.bypass != null)) {
                return ops.bypass;
            }
            AppOpsManager.RestrictionBypass bypass = null;
            long ident = Binder.clearCallingIdentity();
            try {
                AndroidPackage pkg = ((PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class)).getPackage(packageName);
                boolean isAttributionTagValid = false;
                if (pkg != null) {
                    if (attributionTag == null) {
                        isAttributionTagValid = true;
                    } else if (pkg.getAttributions() != null) {
                        int numAttributions = pkg.getAttributions().size();
                        for (int i = 0; i < numAttributions; i++) {
                            if (pkg.getAttributions().get(i).tag.equals(attributionTag)) {
                                isAttributionTagValid = true;
                            }
                        }
                    }
                    pkgUid = UserHandle.getUid(UserHandle.getUserId(uid), UserHandle.getAppId(pkg.getUid()));
                    bypass = getBypassforPackage(pkg);
                } else {
                    isAttributionTagValid = true;
                    pkgUid = resolveUid(packageName);
                    if (pkgUid >= 0) {
                        bypass = AppOpsManager.RestrictionBypass.UNRESTRICTED;
                    }
                }
                if (pkgUid != uid) {
                    throw new SecurityException("Specified package " + packageName + " under uid " + uid + " but it is really " + pkgUid);
                }
                if (!isAttributionTagValid) {
                    Slog.e(TAG, "attributionTag " + attributionTag + " not declared in manifest of " + packageName);
                }
                Binder.restoreCallingIdentity(ident);
                return bypass;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(ident);
                throw th;
            }
        }
    }

    private Ops getOpsLocked(int uid, String packageName, String attributionTag, AppOpsManager.RestrictionBypass bypass, boolean edit) {
        UidState uidState = getUidStateLocked(uid, edit);
        if (uidState == null) {
            return null;
        }
        if (uidState.pkgOps == null) {
            if (!edit) {
                return null;
            }
            uidState.pkgOps = new ArrayMap<>();
        }
        Ops ops = uidState.pkgOps.get(packageName);
        if (ops == null) {
            if (!edit) {
                return null;
            }
            ops = new Ops(packageName, uidState);
            uidState.pkgOps.put(packageName, ops);
        }
        if (edit) {
            if (bypass != null) {
                ops.bypass = bypass;
            }
            if (attributionTag != null) {
                ops.knownAttributionTags.add(attributionTag);
            }
        }
        return ops;
    }

    private void scheduleWriteLocked() {
        if (!this.mWriteScheduled) {
            this.mWriteScheduled = true;
            this.mHandler.postDelayed(this.mWriteRunner, 1800000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleFastWriteLocked() {
        if (!this.mFastWriteScheduled) {
            this.mWriteScheduled = true;
            this.mFastWriteScheduled = true;
            this.mHandler.removeCallbacks(this.mWriteRunner);
            this.mHandler.postDelayed(this.mWriteRunner, JobStatus.DEFAULT_TRIGGER_UPDATE_DELAY);
        }
    }

    private Op getOpLocked(int code, int uid, String packageName, String attributionTag, AppOpsManager.RestrictionBypass bypass, boolean edit) {
        Ops ops = getOpsLocked(uid, packageName, attributionTag, bypass, edit);
        if (ops == null) {
            return null;
        }
        return getOpLocked(ops, code, uid, edit);
    }

    private Op getOpLocked(Ops ops, int code, int uid, boolean edit) {
        Op op = ops.get(code);
        if (op == null) {
            if (!edit) {
                return null;
            }
            op = new Op(ops.uidState, ops.packageName, code, uid);
            ops.put(code, op);
        }
        if (edit) {
            scheduleWriteLocked();
        }
        return op;
    }

    private boolean isOpRestrictedDueToSuspend(int code, String packageName, int uid) {
        if (!ArrayUtils.contains(OPS_RESTRICTED_ON_SUSPEND, code)) {
            return false;
        }
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        return pmi.isPackageSuspended(packageName, UserHandle.getUserId(uid));
    }

    private boolean isOpRestrictedLocked(int uid, int code, String packageName, AppOpsManager.RestrictionBypass appBypass) {
        int userHandle = UserHandle.getUserId(uid);
        int restrictionSetCount = this.mOpUserRestrictions.size();
        for (int i = 0; i < restrictionSetCount; i++) {
            ClientRestrictionState restrictionState = this.mOpUserRestrictions.valueAt(i);
            if (restrictionState.hasRestriction(code, packageName, userHandle)) {
                AppOpsManager.RestrictionBypass opBypass = AppOpsManager.opAllowSystemBypassRestriction(code);
                if (opBypass != null) {
                    synchronized (this) {
                        if ((opBypass.isPrivileged && appBypass != null && appBypass.isPrivileged) || 1000 == uid) {
                            return false;
                        }
                        return (opBypass.isRecordAudioRestrictionExcept && appBypass != null && appBypass.isRecordAudioRestrictionExcept) ? false : true;
                    }
                }
                return true;
            }
        }
        return false;
    }

    void readState() {
        int type;
        int oldVersion = -1;
        synchronized (this.mFile) {
            synchronized (this) {
                try {
                    try {
                        FileInputStream stream = this.mFile.openRead();
                        try {
                            this.mUidStates.clear();
                            try {
                                try {
                                    try {
                                        try {
                                            try {
                                                try {
                                                    XmlPullParser parser = Xml.newPullParser();
                                                    parser.setInput(stream, StandardCharsets.UTF_8.name());
                                                    do {
                                                        type = parser.next();
                                                        if (type == 2) {
                                                            break;
                                                        }
                                                    } while (type != 1);
                                                    if (type != 2) {
                                                        throw new IllegalStateException("no start tag found");
                                                    }
                                                    String versionString = parser.getAttributeValue(null, "v");
                                                    oldVersion = versionString != null ? Integer.parseInt(versionString) : -1;
                                                    int outerDepth = parser.getDepth();
                                                    while (true) {
                                                        int type2 = parser.next();
                                                        if (type2 == 1 || (type2 == 3 && parser.getDepth() <= outerDepth)) {
                                                            break;
                                                        }
                                                        if (type2 != 3 && type2 != 4) {
                                                            String tagName = parser.getName();
                                                            if (tagName.equals("pkg")) {
                                                                readPackage(parser);
                                                            } else if (tagName.equals(WatchlistLoggingHandler.WatchlistEventKeys.UID)) {
                                                                readUidOps(parser);
                                                            } else {
                                                                Slog.w(TAG, "Unknown element under <app-ops>: " + parser.getName());
                                                                XmlUtils.skipCurrentTag(parser);
                                                            }
                                                        }
                                                    }
                                                    if (1 == 0) {
                                                        this.mUidStates.clear();
                                                    }
                                                    stream.close();
                                                } catch (IllegalStateException e) {
                                                    Slog.w(TAG, "Failed parsing " + e);
                                                    if (0 == 0) {
                                                        this.mUidStates.clear();
                                                    }
                                                    stream.close();
                                                }
                                            } catch (NumberFormatException e2) {
                                                Slog.w(TAG, "Failed parsing " + e2);
                                                if (0 == 0) {
                                                    this.mUidStates.clear();
                                                }
                                                stream.close();
                                            }
                                        } catch (IndexOutOfBoundsException e3) {
                                            Slog.w(TAG, "Failed parsing " + e3);
                                            if (0 == 0) {
                                                this.mUidStates.clear();
                                            }
                                            stream.close();
                                        }
                                    } catch (NullPointerException e4) {
                                        Slog.w(TAG, "Failed parsing " + e4);
                                        if (0 == 0) {
                                            this.mUidStates.clear();
                                        }
                                        stream.close();
                                    }
                                } catch (IOException e5) {
                                    Slog.w(TAG, "Failed parsing " + e5);
                                    if (0 == 0) {
                                        this.mUidStates.clear();
                                    }
                                    stream.close();
                                } catch (XmlPullParserException e6) {
                                    Slog.w(TAG, "Failed parsing " + e6);
                                    if (0 == 0) {
                                        this.mUidStates.clear();
                                    }
                                    stream.close();
                                }
                            } catch (Throwable th) {
                                if (0 == 0) {
                                    this.mUidStates.clear();
                                }
                                try {
                                    stream.close();
                                } catch (IOException e7) {
                                }
                                throw th;
                            }
                        } catch (IOException e8) {
                        }
                    } catch (FileNotFoundException e9) {
                        Slog.i(TAG, "No existing app ops " + this.mFile.getBaseFile() + "; starting empty");
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        synchronized (this) {
            upgradeLocked(oldVersion);
        }
    }

    private void upgradeRunAnyInBackgroundLocked() {
        Op op;
        int idx;
        for (int i = 0; i < this.mUidStates.size(); i++) {
            UidState uidState = this.mUidStates.valueAt(i);
            if (uidState != null) {
                if (uidState.opModes != null && (idx = uidState.opModes.indexOfKey(63)) >= 0) {
                    uidState.opModes.put(70, uidState.opModes.valueAt(idx));
                }
                if (uidState.pkgOps != null) {
                    boolean changed = false;
                    for (int j = 0; j < uidState.pkgOps.size(); j++) {
                        Ops ops = uidState.pkgOps.valueAt(j);
                        if (ops != null && (op = ops.get(63)) != null && op.mode != AppOpsManager.opToDefaultMode(op.op)) {
                            Op copy = new Op(op.uidState, op.packageName, 70, uidState.uid);
                            copy.mode = op.mode;
                            ops.put(70, copy);
                            changed = true;
                        }
                    }
                    if (changed) {
                        uidState.evalForegroundOps(this.mOpModeWatchers);
                    }
                }
            }
        }
    }

    private void upgradeLocked(int oldVersion) {
        if (oldVersion >= 1) {
            return;
        }
        Slog.d(TAG, "Upgrading app-ops xml from version " + oldVersion + " to 1");
        if (oldVersion == -1) {
            upgradeRunAnyInBackgroundLocked();
        }
        scheduleFastWriteLocked();
    }

    private void readUidOps(XmlPullParser parser) throws Throwable {
        int uid = Integer.parseInt(parser.getAttributeValue(null, "n"));
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals("op")) {
                            int code = Integer.parseInt(parser.getAttributeValue(null, "n"));
                            int mode = Integer.parseInt(parser.getAttributeValue(null, "m"));
                            setUidMode(code, uid, mode);
                        } else {
                            Slog.w(TAG, "Unknown element under <uid-ops>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readPackage(XmlPullParser parser) throws XmlPullParserException, IOException, NumberFormatException {
        String pkgName = parser.getAttributeValue(null, "n");
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        String tagName = parser.getName();
                        if (tagName.equals(WatchlistLoggingHandler.WatchlistEventKeys.UID)) {
                            readUid(parser, pkgName);
                        } else {
                            Slog.w(TAG, "Unknown element under <pkg>: " + parser.getName());
                            XmlUtils.skipCurrentTag(parser);
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    private void readUid(XmlPullParser parser, String pkgName) throws XmlPullParserException, IOException, NumberFormatException {
        int uid = Integer.parseInt(parser.getAttributeValue(null, "n"));
        UidState uidState = getUidStateLocked(uid, true);
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4) {
                String tagName = parser.getName();
                if (tagName.equals("op")) {
                    readOp(parser, uidState, pkgName);
                } else {
                    Slog.w(TAG, "Unknown element under <pkg>: " + parser.getName());
                    XmlUtils.skipCurrentTag(parser);
                }
            }
        }
        uidState.evalForegroundOps(this.mOpModeWatchers);
    }

    private void readAttributionOp(XmlPullParser parser, Op parent, String attribution) throws NumberFormatException, IOException {
        int opFlags;
        AttributedOp attributedOp = parent.getOrCreateAttribution(parent, attribution);
        long key = XmlUtils.readLongAttribute(parser, "n");
        int uidState = AppOpsManager.extractUidStateFromKey(key);
        int opFlags2 = AppOpsManager.extractFlagsFromKey(key);
        long accessTime = XmlUtils.readLongAttribute(parser, "t", 0L);
        long longAttribute = XmlUtils.readLongAttribute(parser, ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD, 0L);
        long accessDuration = XmlUtils.readLongAttribute(parser, "d", -1L);
        String proxyPkg = XmlUtils.readStringAttribute(parser, "pp");
        int proxyUid = XmlUtils.readIntAttribute(parser, "pu", -1);
        String proxyAttributionTag = XmlUtils.readStringAttribute(parser, "pc");
        if (accessTime > 0) {
            opFlags = opFlags2;
            attributedOp.accessed(accessTime, accessDuration, proxyUid, proxyPkg, proxyAttributionTag, uidState, opFlags);
        } else {
            opFlags = opFlags2;
        }
        if (longAttribute > 0) {
            attributedOp.rejected(longAttribute, uidState, opFlags);
        }
    }

    private void readOp(XmlPullParser parser, UidState uidState, String pkgName) throws XmlPullParserException, IOException, NumberFormatException {
        int opCode = Integer.parseInt(parser.getAttributeValue(null, "n"));
        Op op = new Op(uidState, pkgName, opCode, uidState.uid);
        int mode = XmlUtils.readIntAttribute(parser, "m", AppOpsManager.opToDefaultMode(op.op));
        op.mode = mode;
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type == 1 || (type == 3 && parser.getDepth() <= outerDepth)) {
                break;
            }
            if (type != 3 && type != 4) {
                String tagName = parser.getName();
                if (tagName.equals("st")) {
                    readAttributionOp(parser, op, XmlUtils.readStringAttribute(parser, "id"));
                } else {
                    Slog.w(TAG, "Unknown element under <op>: " + parser.getName());
                    XmlUtils.skipCurrentTag(parser);
                }
            }
        }
        if (uidState.pkgOps == null) {
            uidState.pkgOps = new ArrayMap<>();
        }
        Ops ops = uidState.pkgOps.get(pkgName);
        if (ops == null) {
            ops = new Ops(pkgName, uidState);
            uidState.pkgOps.put(pkgName, ops);
        }
        ops.put(op.op, op);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0342 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void writeState() {
        /*
            Method dump skipped, instruction units count: 882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.appop.AppOpsService.writeState():void");
    }

    static class Shell extends ShellCommand {
        static final Binder sBinder = new Binder();
        String attributionTag;
        final IAppOpsService mInterface;
        final AppOpsService mInternal;
        int mode;
        String modeStr;
        int nonpackageUid;
        int op;
        String opStr;
        String packageName;
        int packageUid;
        boolean targetsUid;
        int userId = 0;
        IBinder mToken = AppOpsManager.getClientId();

        Shell(IAppOpsService iface, AppOpsService internal) {
            this.mInterface = iface;
            this.mInternal = internal;
        }

        public int onCommand(String cmd) {
            return AppOpsService.onShellCommand(this, cmd);
        }

        public void onHelp() {
            PrintWriter pw = getOutPrintWriter();
            AppOpsService.dumpCommandHelp(pw);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int strOpToOp(String op, PrintWriter err) {
            try {
                return AppOpsManager.strOpToOp(op);
            } catch (IllegalArgumentException e) {
                try {
                    return Integer.parseInt(op);
                } catch (NumberFormatException e2) {
                    try {
                        return AppOpsManager.strDebugOpToOp(op);
                    } catch (IllegalArgumentException e3) {
                        err.println("Error: " + e3.getMessage());
                        return -1;
                    }
                }
            }
        }

        static int strModeToMode(String modeStr, PrintWriter err) {
            for (int i = AppOpsManager.MODE_NAMES.length - 1; i >= 0; i--) {
                if (AppOpsManager.MODE_NAMES[i].equals(modeStr)) {
                    return i;
                }
            }
            try {
                int i2 = Integer.parseInt(modeStr);
                return i2;
            } catch (NumberFormatException e) {
                err.println("Error: Mode " + modeStr + " is not valid");
                return -1;
            }
        }

        int parseUserOpMode(int defMode, PrintWriter err) throws RemoteException {
            this.userId = -2;
            this.opStr = null;
            this.modeStr = null;
            while (true) {
                String argument = getNextArg();
                if (argument == null) {
                    break;
                }
                if ("--user".equals(argument)) {
                    this.userId = UserHandle.parseUserArg(getNextArgRequired());
                } else if (this.opStr == null) {
                    this.opStr = argument;
                } else if (this.modeStr == null) {
                    this.modeStr = argument;
                    break;
                }
            }
            String str = this.opStr;
            if (str == null) {
                err.println("Error: Operation not specified.");
                return -1;
            }
            int iStrOpToOp = strOpToOp(str, err);
            this.op = iStrOpToOp;
            if (iStrOpToOp < 0) {
                return -1;
            }
            String str2 = this.modeStr;
            if (str2 != null) {
                int iStrModeToMode = strModeToMode(str2, err);
                this.mode = iStrModeToMode;
                return iStrModeToMode < 0 ? -1 : 0;
            }
            this.mode = defMode;
            return 0;
        }

        int parseUserPackageOp(boolean reqOp, PrintWriter err) throws RemoteException {
            this.userId = -2;
            this.packageName = null;
            this.opStr = null;
            while (true) {
                String argument = getNextArg();
                if (argument == null) {
                    break;
                }
                if ("--user".equals(argument)) {
                    this.userId = UserHandle.parseUserArg(getNextArgRequired());
                } else if ("--uid".equals(argument)) {
                    this.targetsUid = true;
                } else if ("--attribution".equals(argument)) {
                    this.attributionTag = getNextArgRequired();
                } else if (this.packageName == null) {
                    this.packageName = argument;
                } else if (this.opStr == null) {
                    this.opStr = argument;
                    break;
                }
            }
            if (this.packageName == null) {
                err.println("Error: Package name not specified.");
                return -1;
            }
            if (this.opStr == null && reqOp) {
                err.println("Error: Operation not specified.");
                return -1;
            }
            String str = this.opStr;
            if (str != null) {
                int iStrOpToOp = strOpToOp(str, err);
                this.op = iStrOpToOp;
                if (iStrOpToOp < 0) {
                    return -1;
                }
            } else {
                this.op = -1;
            }
            if (this.userId == -2) {
                this.userId = ActivityManager.getCurrentUser();
            }
            this.nonpackageUid = -1;
            try {
                this.nonpackageUid = Integer.parseInt(this.packageName);
            } catch (NumberFormatException e) {
            }
            if (this.nonpackageUid == -1 && this.packageName.length() > 1 && this.packageName.charAt(0) == 'u' && this.packageName.indexOf(46) < 0) {
                int i = 1;
                while (i < this.packageName.length() && this.packageName.charAt(i) >= '0' && this.packageName.charAt(i) <= '9') {
                    i++;
                }
                if (i > 1 && i < this.packageName.length()) {
                    String userStr = this.packageName.substring(1, i);
                    try {
                        int user = Integer.parseInt(userStr);
                        char type = this.packageName.charAt(i);
                        int i2 = i + 1;
                        while (i2 < this.packageName.length() && this.packageName.charAt(i2) >= '0' && this.packageName.charAt(i2) <= '9') {
                            i2++;
                        }
                        if (i2 > i2) {
                            String typeValStr = this.packageName.substring(i2, i2);
                            try {
                                int typeVal = Integer.parseInt(typeValStr);
                                if (type == 'a') {
                                    this.nonpackageUid = UserHandle.getUid(user, typeVal + 10000);
                                } else if (type == 's') {
                                    this.nonpackageUid = UserHandle.getUid(user, typeVal);
                                }
                            } catch (NumberFormatException e2) {
                            }
                        }
                    } catch (NumberFormatException e3) {
                    }
                }
            }
            int i3 = this.nonpackageUid;
            if (i3 == -1) {
                int iResolveUid = AppOpsService.resolveUid(this.packageName);
                this.packageUid = iResolveUid;
                if (iResolveUid < 0) {
                    this.packageUid = AppGlobals.getPackageManager().getPackageUid(this.packageName, 8192, this.userId);
                }
                if (this.packageUid < 0) {
                    err.println("Error: No UID for " + this.packageName + " in user " + this.userId);
                    return -1;
                }
            } else {
                this.packageName = null;
            }
            return 0;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor in, FileDescriptor out, FileDescriptor err, String[] args, ShellCallback callback, ResultReceiver resultReceiver) {
        new Shell(this, this).exec(this, in, out, err, args, callback, resultReceiver);
    }

    static void dumpCommandHelp(PrintWriter pw) {
        pw.println("AppOps service (appops) commands:");
        pw.println("  help");
        pw.println("    Print this help text.");
        pw.println("  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> ");
        pw.println("    Starts a given operation for a particular application.");
        pw.println("  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> ");
        pw.println("    Stops a given operation for a particular application.");
        pw.println("  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>");
        pw.println("    Set the mode for a particular application and operation.");
        pw.println("  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]");
        pw.println("    Return the mode for a particular application and optional operation.");
        pw.println("  query-op [--user <USER_ID>] <OP> [<MODE>]");
        pw.println("    Print all packages that currently have the given op in the given mode.");
        pw.println("  reset [--user <USER_ID>] [<PACKAGE>]");
        pw.println("    Reset the given application or all applications to default modes.");
        pw.println("  write-settings");
        pw.println("    Immediately write pending changes to storage.");
        pw.println("  read-settings");
        pw.println("    Read the last written settings, replacing current state in RAM.");
        pw.println("  options:");
        pw.println("    <PACKAGE> an Android package name or its UID if prefixed by --uid");
        pw.println("    <OP>      an AppOps operation.");
        pw.println("    <MODE>    one of allow, ignore, deny, or default");
        pw.println("    <USER_ID> the user id under which the package is installed. If --user is");
        pw.println("              not specified, the current user is assumed.");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:117:0x01e1 A[Catch: RemoteException -> 0x042d, TryCatch #1 {RemoteException -> 0x042d, blocks: (B:7:0x0014, B:8:0x001a, B:35:0x0076, B:36:0x0079, B:37:0x007f, B:40:0x0086, B:42:0x008a, B:45:0x009b, B:48:0x00a2, B:50:0x00a6, B:53:0x00bd, B:55:0x00d8, B:58:0x00de, B:59:0x00e2, B:60:0x00e3, B:66:0x010d, B:72:0x0116, B:73:0x011a, B:75:0x011d, B:77:0x0124, B:79:0x012c, B:82:0x013a, B:86:0x0152, B:87:0x0157, B:89:0x0163, B:91:0x0172, B:93:0x0179, B:94:0x017f, B:90:0x0169, B:96:0x0189, B:99:0x0190, B:101:0x019e, B:105:0x01a6, B:107:0x01ac, B:108:0x01be, B:110:0x01c4, B:112:0x01d2, B:115:0x01dc, B:117:0x01e1, B:118:0x01e8, B:120:0x01ec, B:122:0x01f2, B:125:0x01f9, B:127:0x0203, B:129:0x020b, B:131:0x0213, B:133:0x0219, B:134:0x021c, B:136:0x0226, B:137:0x022c, B:139:0x0232, B:146:0x024b, B:195:0x039b, B:197:0x03a5, B:199:0x03ab, B:149:0x0255, B:150:0x025a, B:152:0x0260, B:154:0x026c, B:155:0x0271, B:156:0x0276, B:158:0x027c, B:160:0x02a5, B:162:0x02ad, B:164:0x02c6, B:166:0x02ce, B:167:0x02e2, B:169:0x02e8, B:190:0x0380, B:170:0x02f0, B:172:0x02f8, B:174:0x030a, B:176:0x031a, B:178:0x0322, B:180:0x0339, B:182:0x0343, B:183:0x0359, B:185:0x035f, B:186:0x0365, B:188:0x036f, B:191:0x038c, B:141:0x0236, B:143:0x023e, B:144:0x0244, B:202:0x03cb, B:205:0x03d3, B:207:0x03da, B:209:0x03e1, B:213:0x03ea, B:215:0x03ee, B:217:0x03f2, B:218:0x03fe, B:220:0x0402, B:222:0x0406, B:227:0x0421, B:10:0x001e, B:13:0x0029, B:16:0x0034, B:19:0x003f, B:22:0x004a, B:25:0x0055, B:28:0x005f, B:31:0x006a, B:61:0x00f4, B:62:0x00f6, B:65:0x0103, B:70:0x0114, B:54:0x00ce), top: B:236:0x0014, inners: #2, #4 }] */
    /* JADX WARN: Code duplicated, block: B:251:0x01e8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x001d  */
    static int onShellCommand(Shell shell, String cmd) {
        if (cmd == null) {
            return shell.handleDefaultCommands(cmd);
        }
        PrintWriter pw = shell.getOutPrintWriter();
        PrintWriter err = shell.getErrPrintWriter();
        try {
            switch (cmd) {
                case "set":
                    int res = shell.parseUserPackageOp(true, err);
                    if (res < 0) {
                        return res;
                    }
                    String modeStr = shell.getNextArg();
                    if (modeStr == null) {
                        err.println("Error: Mode not specified.");
                        return -1;
                    }
                    int mode = Shell.strModeToMode(modeStr, err);
                    if (mode < 0) {
                        return -1;
                    }
                    if (!shell.targetsUid && shell.packageName != null) {
                        shell.mInterface.setMode(shell.op, shell.packageUid, shell.packageName, mode);
                        return 0;
                    }
                    if (!shell.targetsUid || shell.packageName == null) {
                        shell.mInterface.setUidMode(shell.op, shell.nonpackageUid, mode);
                        return 0;
                    }
                    try {
                        int uid = shell.mInternal.mContext.getPackageManager().getPackageUidAsUser(shell.packageName, shell.userId);
                        shell.mInterface.setUidMode(shell.op, uid, mode);
                        return 0;
                    } catch (PackageManager.NameNotFoundException e) {
                        return -1;
                    }
                case "get":
                    int res2 = shell.parseUserPackageOp(false, err);
                    if (res2 < 0) {
                        return res2;
                    }
                    List<AppOpsManager.PackageOps> ops = new ArrayList<>();
                    if (shell.packageName != null) {
                        List<AppOpsManager.PackageOps> r = shell.mInterface.getUidOps(shell.packageUid, shell.op != -1 ? new int[]{shell.op} : null);
                        if (r != null) {
                            ops.addAll(r);
                        }
                        List<AppOpsManager.PackageOps> r2 = shell.mInterface.getOpsForPackage(shell.packageUid, shell.packageName, shell.op != -1 ? new int[]{shell.op} : null);
                        if (r2 != null) {
                            ops.addAll(r2);
                        }
                    } else {
                        ops = shell.mInterface.getUidOps(shell.nonpackageUid, shell.op != -1 ? new int[]{shell.op} : null);
                    }
                    if (ops == null || ops.size() <= 0) {
                        pw.println("No operations.");
                        if (shell.op > -1 && shell.op < 103) {
                            pw.println("Default mode: " + AppOpsManager.modeToName(AppOpsManager.opToDefaultMode(shell.op)));
                            return 0;
                        }
                        return 0;
                    }
                    long now = System.currentTimeMillis();
                    int i = 0;
                    while (i < ops.size()) {
                        AppOpsManager.PackageOps packageOps = ops.get(i);
                        if (packageOps.getPackageName() == null) {
                            pw.print("Uid mode: ");
                        }
                        List<AppOpsManager.OpEntry> entries = packageOps.getOps();
                        int j = 0;
                        while (j < entries.size()) {
                            AppOpsManager.OpEntry ent = entries.get(j);
                            pw.print(AppOpsManager.opToName(ent.getOp()));
                            pw.print(": ");
                            pw.print(AppOpsManager.modeToName(ent.getMode()));
                            if (shell.attributionTag == null) {
                                if (ent.getLastAccessTime(31) != -1) {
                                    pw.print("; time=");
                                    TimeUtils.formatDuration(now - ent.getLastAccessTime(31), pw);
                                    pw.print(" ago");
                                }
                                if (ent.getLastRejectTime(31) != -1) {
                                    pw.print("; rejectTime=");
                                    TimeUtils.formatDuration(now - ent.getLastRejectTime(31), pw);
                                    pw.print(" ago");
                                }
                                if (ent.isRunning()) {
                                    pw.print(" (running)");
                                    i = i;
                                } else if (ent.getLastDuration(31) == -1) {
                                    i = i;
                                } else {
                                    pw.print("; duration=");
                                    TimeUtils.formatDuration(ent.getLastDuration(31), pw);
                                    i = i;
                                }
                            } else {
                                ops = ops;
                                AppOpsManager.AttributedOpEntry attributionEnt = (AppOpsManager.AttributedOpEntry) ent.getAttributedOpEntries().get(shell.attributionTag);
                                if (attributionEnt == null) {
                                    i = i;
                                } else {
                                    if (attributionEnt.getLastAccessTime(31) != -1) {
                                        pw.print("; time=");
                                        TimeUtils.formatDuration(now - attributionEnt.getLastAccessTime(31), pw);
                                        pw.print(" ago");
                                    }
                                    if (attributionEnt.getLastRejectTime(31) != -1) {
                                        pw.print("; rejectTime=");
                                        TimeUtils.formatDuration(now - attributionEnt.getLastRejectTime(31), pw);
                                        pw.print(" ago");
                                    }
                                    if (attributionEnt.isRunning()) {
                                        pw.print(" (running)");
                                    } else if (attributionEnt.getLastDuration(31) != -1) {
                                        pw.print("; duration=");
                                        TimeUtils.formatDuration(attributionEnt.getLastDuration(31), pw);
                                    }
                                }
                            }
                            pw.println();
                            j++;
                            i = i;
                            ops = ops;
                        }
                        i++;
                        ops = ops;
                    }
                    return 0;
                case "query-op":
                    int res3 = shell.parseUserOpMode(1, err);
                    if (res3 < 0) {
                        return res3;
                    }
                    List<AppOpsManager.PackageOps> ops2 = shell.mInterface.getPackagesForOps(new int[]{shell.op});
                    if (ops2 != null && ops2.size() > 0) {
                        for (int i2 = 0; i2 < ops2.size(); i2++) {
                            AppOpsManager.PackageOps pkg = ops2.get(i2);
                            boolean hasMatch = false;
                            List<AppOpsManager.OpEntry> entries2 = ops2.get(i2).getOps();
                            for (int j2 = 0; j2 < entries2.size(); j2++) {
                                AppOpsManager.OpEntry ent2 = entries2.get(j2);
                                if (ent2.getOp() == shell.op && ent2.getMode() == shell.mode) {
                                    hasMatch = true;
                                    if (hasMatch) {
                                        pw.println(pkg.getPackageName());
                                    }
                                }
                            }
                            if (hasMatch) {
                                pw.println(pkg.getPackageName());
                            }
                        }
                        return 0;
                    }
                    pw.println("No operations.");
                    return 0;
                case "reset":
                    String packageName = null;
                    int userId = -2;
                    while (true) {
                        String argument = shell.getNextArg();
                        if (argument != null) {
                            if ("--user".equals(argument)) {
                                String userStr = shell.getNextArgRequired();
                                userId = UserHandle.parseUserArg(userStr);
                            } else {
                                if (packageName != null) {
                                    err.println("Error: Unsupported argument: " + argument);
                                    return -1;
                                }
                                packageName = argument;
                            }
                        } else {
                            if (userId == -2) {
                                userId = ActivityManager.getCurrentUser();
                            }
                            shell.mInterface.resetAllModes(userId, packageName);
                            pw.print("Reset all modes for: ");
                            if (userId == -1) {
                                pw.print("all users");
                            } else {
                                pw.print("user ");
                                pw.print(userId);
                            }
                            pw.print(", ");
                            if (packageName == null) {
                                pw.println("all packages");
                            } else {
                                pw.print("package ");
                                pw.println(packageName);
                            }
                            return 0;
                        }
                    }
                    break;
                case "write-settings":
                    shell.mInternal.enforceManageAppOpsModes(Binder.getCallingPid(), Binder.getCallingUid(), -1);
                    long token = Binder.clearCallingIdentity();
                    try {
                        synchronized (shell.mInternal) {
                            shell.mInternal.mHandler.removeCallbacks(shell.mInternal.mWriteRunner);
                            break;
                        }
                        shell.mInternal.writeState();
                        pw.println("Current settings written.");
                        Binder.restoreCallingIdentity(token);
                        return 0;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(token);
                        throw th;
                    }
                case "read-settings":
                    shell.mInternal.enforceManageAppOpsModes(Binder.getCallingPid(), Binder.getCallingUid(), -1);
                    long token2 = Binder.clearCallingIdentity();
                    try {
                        shell.mInternal.readState();
                        pw.println("Last settings read.");
                        return 0;
                    } finally {
                        Binder.restoreCallingIdentity(token2);
                    }
                case "start":
                    int res4 = shell.parseUserPackageOp(true, err);
                    if (res4 < 0) {
                        return res4;
                    }
                    if (shell.packageName != null) {
                        shell.mInterface.startOperation(shell.mToken, shell.op, shell.packageUid, shell.packageName, shell.attributionTag, true, true, "appops start shell command", true);
                        return 0;
                    }
                    return -1;
                case "stop":
                    int res5 = shell.parseUserPackageOp(true, err);
                    if (res5 < 0) {
                        return res5;
                    }
                    if (shell.packageName != null) {
                        shell.mInterface.finishOperation(shell.mToken, shell.op, shell.packageUid, shell.packageName, shell.attributionTag);
                        return 0;
                    }
                    return -1;
                default:
                    return shell.handleDefaultCommands(cmd);
            }
        } catch (RemoteException e2) {
            pw.println("Remote exception: " + e2);
            return -1;
        }
        pw.println("Remote exception: " + e2);
        return -1;
    }

    private void dumpHelp(PrintWriter pw) {
        pw.println("AppOps service (appops) dump options:");
        pw.println("  -h");
        pw.println("    Print this help text.");
        pw.println("  --op [OP]");
        pw.println("    Limit output to data associated with the given app op code.");
        pw.println("  --mode [MODE]");
        pw.println("    Limit output to data associated with the given app op mode.");
        pw.println("  --package [PACKAGE]");
        pw.println("    Limit output to data associated with the given package name.");
        pw.println("  --attributionTag [attributionTag]");
        pw.println("    Limit output to data associated with the given attribution tag.");
        pw.println("  --watchers");
        pw.println("    Only output the watcher sections.");
    }

    private void dumpStatesLocked(PrintWriter pw, String filterAttributionTag, int filter, long nowElapsed, Op op, long now, SimpleDateFormat sdf, Date date, String prefix) {
        int numAttributions = op.mAttributions.size();
        for (int i = 0; i < numAttributions; i++) {
            if ((filter & 4) == 0 || Objects.equals(op.mAttributions.keyAt(i), filterAttributionTag)) {
                pw.print(prefix + op.mAttributions.keyAt(i) + "=[\n");
                dumpStatesLocked(pw, nowElapsed, op, op.mAttributions.keyAt(i), now, sdf, date, prefix + "  ");
                pw.print(prefix + "]\n");
            }
        }
    }

    private void dumpStatesLocked(PrintWriter pw, long nowElapsed, Op op, String attributionTag, long now, SimpleDateFormat sdf, Date date, String prefix) {
        String proxyPkg;
        String proxyAttributionTag;
        int flags;
        String proxyAttributionTag2;
        String str;
        String str2;
        String str3;
        String str4 = prefix;
        AppOpsManager.AttributedOpEntry entry = (AppOpsManager.AttributedOpEntry) op.createSingleAttributionEntryLocked(attributionTag).getAttributedOpEntries().get(attributionTag);
        ArraySet<Long> keys = entry.collectKeys();
        int keyCount = keys.size();
        int k = 0;
        while (k < keyCount) {
            long key = keys.valueAt(k).longValue();
            int uidState = AppOpsManager.extractUidStateFromKey(key);
            int flags2 = AppOpsManager.extractFlagsFromKey(key);
            long accessTime = entry.getLastAccessTime(uidState, uidState, flags2);
            long rejectTime = entry.getLastRejectTime(uidState, uidState, flags2);
            ArraySet<Long> keys2 = keys;
            int keyCount2 = keyCount;
            long accessDuration = entry.getLastDuration(uidState, uidState, flags2);
            AppOpsManager.OpEventProxyInfo proxy = entry.getLastProxyInfo(uidState, uidState, flags2);
            if (proxy == null) {
                proxyPkg = null;
                proxyAttributionTag = null;
                flags = -1;
            } else {
                String proxyPkg2 = proxy.getPackageName();
                String proxyAttributionTag3 = proxy.getAttributionTag();
                int proxyUid = proxy.getUid();
                proxyPkg = proxyPkg2;
                proxyAttributionTag = proxyAttributionTag3;
                flags = proxyUid;
            }
            int k2 = k;
            String proxyAttributionTag4 = proxyAttributionTag;
            if (accessTime <= 0) {
                proxyAttributionTag2 = proxyAttributionTag4;
                str = ", attributionTag=";
                str2 = "]";
            } else {
                pw.print(str4);
                pw.print("Access: ");
                pw.print(AppOpsManager.keyToString(key));
                pw.print(" ");
                date.setTime(accessTime);
                pw.print(sdf.format(date));
                pw.print(" (");
                TimeUtils.formatDuration(accessTime - now, pw);
                pw.print(")");
                if (accessDuration > 0) {
                    pw.print(" duration=");
                    TimeUtils.formatDuration(accessDuration, pw);
                }
                if (flags < 0) {
                    proxyAttributionTag2 = proxyAttributionTag4;
                    str = ", attributionTag=";
                    str2 = "]";
                } else {
                    pw.print(" proxy[");
                    pw.print("uid=");
                    pw.print(flags);
                    pw.print(", pkg=");
                    pw.print(proxyPkg);
                    str = ", attributionTag=";
                    pw.print(str);
                    proxyAttributionTag2 = proxyAttributionTag4;
                    pw.print(proxyAttributionTag2);
                    str2 = "]";
                    pw.print(str2);
                }
                pw.println();
            }
            if (rejectTime <= 0) {
                str3 = prefix;
            } else {
                str3 = prefix;
                pw.print(str3);
                pw.print("Reject: ");
                pw.print(AppOpsManager.keyToString(key));
                date.setTime(rejectTime);
                pw.print(sdf.format(date));
                pw.print(" (");
                TimeUtils.formatDuration(rejectTime - now, pw);
                pw.print(")");
                if (flags >= 0) {
                    pw.print(" proxy[");
                    pw.print("uid=");
                    pw.print(flags);
                    pw.print(", pkg=");
                    pw.print(proxyPkg);
                    pw.print(str);
                    pw.print(proxyAttributionTag2);
                    pw.print(str2);
                }
                pw.println();
            }
            k = k2 + 1;
            str4 = str3;
            keys = keys2;
            keyCount = keyCount2;
            entry = entry;
        }
        String str5 = str4;
        AttributedOp attributedOp = op.mAttributions.get(attributionTag);
        if (attributedOp.isRunning()) {
            long earliestElapsedTime = JobStatus.NO_LATEST_RUNTIME;
            long maxNumStarts = 0;
            int numInProgressEvents = attributedOp.mInProgressEvents.size();
            for (int i = 0; i < numInProgressEvents; i++) {
                InProgressStartOpEvent event = (InProgressStartOpEvent) attributedOp.mInProgressEvents.valueAt(i);
                earliestElapsedTime = Math.min(earliestElapsedTime, event.getStartElapsedTime());
                maxNumStarts = Math.max(maxNumStarts, event.numUnfinishedStarts);
            }
            pw.print(str5 + "Running start at: ");
            TimeUtils.formatDuration(nowElapsed - earliestElapsedTime, pw);
            pw.println();
            if (maxNumStarts > 1) {
                pw.print(str5 + "startNesting=");
                pw.println(maxNumStarts);
            }
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0ba9 */
    /* JADX WARN: Code duplicated, block: B:299:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:300:0x05cf  */
    /* JADX WARN: Code duplicated, block: B:313:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:315:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:321:0x060d A[Catch: all -> 0x066a, TryCatch #8 {all -> 0x066a, blocks: (B:361:0x06bb, B:364:0x06dc, B:367:0x06f9, B:372:0x070e, B:378:0x0724, B:379:0x072a, B:382:0x0734, B:390:0x0764, B:385:0x073d, B:389:0x0761, B:391:0x0767, B:394:0x0775, B:396:0x077c, B:403:0x078e, B:413:0x07cb, B:424:0x0803, B:428:0x0829, B:434:0x0861, B:436:0x0875, B:438:0x087e, B:437:0x087a, B:306:0x05e1, B:308:0x05e7, B:311:0x05ef, B:352:0x067d, B:321:0x060d, B:323:0x0615, B:326:0x061f, B:332:0x0630, B:334:0x0638, B:337:0x0646, B:341:0x0654), top: B:585:0x06bb }] */
    /* JADX WARN: Code duplicated, block: B:323:0x0615 A[Catch: all -> 0x066a, TryCatch #8 {all -> 0x066a, blocks: (B:361:0x06bb, B:364:0x06dc, B:367:0x06f9, B:372:0x070e, B:378:0x0724, B:379:0x072a, B:382:0x0734, B:390:0x0764, B:385:0x073d, B:389:0x0761, B:391:0x0767, B:394:0x0775, B:396:0x077c, B:403:0x078e, B:413:0x07cb, B:424:0x0803, B:428:0x0829, B:434:0x0861, B:436:0x0875, B:438:0x087e, B:437:0x087a, B:306:0x05e1, B:308:0x05e7, B:311:0x05ef, B:352:0x067d, B:321:0x060d, B:323:0x0615, B:326:0x061f, B:332:0x0630, B:334:0x0638, B:337:0x0646, B:341:0x0654), top: B:585:0x06bb }] */
    /* JADX WARN: Code duplicated, block: B:325:0x061d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:330:0x0628  */
    /* JADX WARN: Code duplicated, block: B:332:0x0630 A[Catch: all -> 0x066a, TryCatch #8 {all -> 0x066a, blocks: (B:361:0x06bb, B:364:0x06dc, B:367:0x06f9, B:372:0x070e, B:378:0x0724, B:379:0x072a, B:382:0x0734, B:390:0x0764, B:385:0x073d, B:389:0x0761, B:391:0x0767, B:394:0x0775, B:396:0x077c, B:403:0x078e, B:413:0x07cb, B:424:0x0803, B:428:0x0829, B:434:0x0861, B:436:0x0875, B:438:0x087e, B:437:0x087a, B:306:0x05e1, B:308:0x05e7, B:311:0x05ef, B:352:0x067d, B:321:0x060d, B:323:0x0615, B:326:0x061f, B:332:0x0630, B:334:0x0638, B:337:0x0646, B:341:0x0654), top: B:585:0x06bb }] */
    /* JADX WARN: Code duplicated, block: B:334:0x0638 A[Catch: all -> 0x066a, TryCatch #8 {all -> 0x066a, blocks: (B:361:0x06bb, B:364:0x06dc, B:367:0x06f9, B:372:0x070e, B:378:0x0724, B:379:0x072a, B:382:0x0734, B:390:0x0764, B:385:0x073d, B:389:0x0761, B:391:0x0767, B:394:0x0775, B:396:0x077c, B:403:0x078e, B:413:0x07cb, B:424:0x0803, B:428:0x0829, B:434:0x0861, B:436:0x0875, B:438:0x087e, B:437:0x087a, B:306:0x05e1, B:308:0x05e7, B:311:0x05ef, B:352:0x067d, B:321:0x060d, B:323:0x0615, B:326:0x061f, B:332:0x0630, B:334:0x0638, B:337:0x0646, B:341:0x0654), top: B:585:0x06bb }] */
    /* JADX WARN: Code duplicated, block: B:336:0x0644  */
    /* JADX WARN: Code duplicated, block: B:339:0x064e  */
    /* JADX WARN: Code duplicated, block: B:341:0x0654 A[Catch: all -> 0x066a, TRY_LEAVE, TryCatch #8 {all -> 0x066a, blocks: (B:361:0x06bb, B:364:0x06dc, B:367:0x06f9, B:372:0x070e, B:378:0x0724, B:379:0x072a, B:382:0x0734, B:390:0x0764, B:385:0x073d, B:389:0x0761, B:391:0x0767, B:394:0x0775, B:396:0x077c, B:403:0x078e, B:413:0x07cb, B:424:0x0803, B:428:0x0829, B:434:0x0861, B:436:0x0875, B:438:0x087e, B:437:0x087a, B:306:0x05e1, B:308:0x05e7, B:311:0x05ef, B:352:0x067d, B:321:0x060d, B:323:0x0615, B:326:0x061f, B:332:0x0630, B:334:0x0638, B:337:0x0646, B:341:0x0654), top: B:585:0x06bb }] */
    /* JADX WARN: Code duplicated, block: B:348:0x0671  */
    /* JADX WARN: Code duplicated, block: B:660:0x0667 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:663:0x065e A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:665:0x064b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:666:0x0652 A[EDGE_INSN: B:666:0x0652->B:340:0x0652 BREAK  A[LOOP:21: B:331:0x062e->B:337:0x0646], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:668:0x0646 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v20 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v33 */
    /* JADX WARN: Type inference failed for: r14v38 */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v40 */
    /* JADX WARN: Type inference failed for: r14v41 */
    /* JADX WARN: Type inference failed for: r14v42 */
    /* JADX WARN: Type inference failed for: r14v43 */
    /* JADX WARN: Type inference failed for: r14v44 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.server.appop.HistoricalRegistry] */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v33 */
    /* JADX WARN: Type inference failed for: r24v34 */
    /* JADX WARN: Type inference failed for: r24v35 */
    /* JADX WARN: Type inference failed for: r24v36 */
    /* JADX WARN: Type inference failed for: r24v37 */
    /* JADX WARN: Type inference failed for: r24v4 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r41v0, types: [com.android.server.appop.AppOpsService] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v26 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v36 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v38 */
    /* JADX WARN: Type inference failed for: r6v39 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v63 */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dump(java.io.FileDescriptor r42, java.io.PrintWriter r43, java.lang.String[] r44) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2987
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.appop.AppOpsService.dump(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    public void setUserRestrictions(Bundle restrictions, IBinder token, int userHandle) {
        checkSystemUid("setUserRestrictions");
        Objects.requireNonNull(restrictions);
        Objects.requireNonNull(token);
        for (int i = 0; i < 103; i++) {
            String restriction = AppOpsManager.opToRestriction(i);
            if (restriction != null) {
                setUserRestrictionNoCheck(i, restrictions.getBoolean(restriction, false), token, userHandle, null);
            }
        }
    }

    public void setUserRestriction(int code, boolean restricted, IBinder token, int userHandle, String[] exceptionPackages) {
        if (Binder.getCallingPid() != Process.myPid()) {
            this.mContext.enforcePermission("android.permission.MANAGE_APP_OPS_RESTRICTIONS", Binder.getCallingPid(), Binder.getCallingUid(), null);
        }
        if (userHandle != UserHandle.getCallingUserId() && this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0 && this.mContext.checkCallingOrSelfPermission("android.permission.INTERACT_ACROSS_USERS") != 0) {
            throw new SecurityException("Need INTERACT_ACROSS_USERS_FULL or INTERACT_ACROSS_USERS to interact cross user ");
        }
        verifyIncomingOp(code);
        Objects.requireNonNull(token);
        setUserRestrictionNoCheck(code, restricted, token, userHandle, exceptionPackages);
    }

    private void setUserRestrictionNoCheck(int code, boolean restricted, IBinder token, int userHandle, String[] exceptionPackages) {
        synchronized (this) {
            ClientRestrictionState restrictionState = this.mOpUserRestrictions.get(token);
            if (restrictionState == null) {
                try {
                    restrictionState = new ClientRestrictionState(token);
                    this.mOpUserRestrictions.put(token, restrictionState);
                } catch (RemoteException e) {
                    return;
                }
            }
            if (restrictionState.setRestriction(code, restricted, exceptionPackages, userHandle)) {
                this.mHandler.sendMessage(PooledLambda.obtainMessage($$Lambda$AppOpsService$GUeKjlbzT65s86vaxy5gvOajuhw.INSTANCE, this, Integer.valueOf(code), -2));
            }
            if (restrictionState.isDefault()) {
                this.mOpUserRestrictions.remove(token);
                restrictionState.destroy();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyWatchersOfChange(int code, int uid) {
        synchronized (this) {
            ArraySet<ModeCallback> callbacks = this.mOpModeWatchers.get(code);
            if (callbacks == null) {
                return;
            }
            ArraySet<ModeCallback> clonedCallbacks = new ArraySet<>(callbacks);
            notifyOpChanged(clonedCallbacks, code, uid, (String) null);
        }
    }

    public void removeUser(int userHandle) throws RemoteException {
        checkSystemUid("removeUser");
        synchronized (this) {
            int tokenCount = this.mOpUserRestrictions.size();
            for (int i = tokenCount - 1; i >= 0; i--) {
                ClientRestrictionState opRestrictions = this.mOpUserRestrictions.valueAt(i);
                opRestrictions.removeUser(userHandle);
            }
            removeUidsForUserLocked(userHandle);
        }
    }

    public boolean isOperationActive(int code, int uid, String packageName) {
        if (Binder.getCallingUid() != uid && this.mContext.checkCallingOrSelfPermission("android.permission.WATCH_APPOPS") != 0) {
            return false;
        }
        verifyIncomingOp(code);
        String resolvedPackageName = resolvePackageName(uid, packageName);
        if (resolvedPackageName == null) {
            return false;
        }
        synchronized (this) {
            Ops pkgOps = getOpsLocked(uid, resolvedPackageName, null, null, false);
            if (pkgOps == null) {
                return false;
            }
            Op op = pkgOps.get(code);
            if (op == null) {
                return false;
            }
            return op.isRunning();
        }
    }

    public void setHistoryParameters(int mode, long baseSnapshotInterval, int compressionStep) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_APPOPS", "setHistoryParameters");
        this.mHistoricalRegistry.setHistoryParameters(mode, baseSnapshotInterval, compressionStep);
    }

    public void offsetHistory(long offsetMillis) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_APPOPS", "offsetHistory");
        this.mHistoricalRegistry.offsetHistory(offsetMillis);
    }

    public void addHistoricalOps(AppOpsManager.HistoricalOps ops) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_APPOPS", "addHistoricalOps");
        this.mHistoricalRegistry.addHistoricalOps(ops);
    }

    public void resetHistoryParameters() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_APPOPS", "resetHistoryParameters");
        this.mHistoricalRegistry.resetHistoryParameters();
    }

    public void clearHistory() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_APPOPS", "clearHistory");
        this.mHistoricalRegistry.clearHistory();
    }

    public void rebootHistory(long offlineDurationMillis) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_APPOPS", "rebootHistory");
        Preconditions.checkArgument(offlineDurationMillis >= 0);
        this.mHistoricalRegistry.shutdown();
        if (offlineDurationMillis > 0) {
            SystemClock.sleep(offlineDurationMillis);
        }
        this.mHistoricalRegistry = new HistoricalRegistry(this.mHistoricalRegistry);
        this.mHistoricalRegistry.systemReady(this.mContext.getContentResolver());
        this.mHistoricalRegistry.persistPendingHistory();
    }

    public MessageSamplingConfig reportRuntimeAppOpAccessMessageAndGetConfig(String packageName, SyncNotedAppOp notedAppOp, String message) {
        int uid = Binder.getCallingUid();
        Objects.requireNonNull(packageName);
        synchronized (this) {
            switchPackageIfBootTimeOrRarelyUsedLocked(packageName);
            if (!packageName.equals(this.mSampledPackage)) {
                return new MessageSamplingConfig(-1, 0, Instant.now().plus(1L, (TemporalUnit) ChronoUnit.HOURS).toEpochMilli());
            }
            Objects.requireNonNull(notedAppOp);
            Objects.requireNonNull(message);
            reportRuntimeAppOpAccessMessageInternalLocked(uid, packageName, AppOpsManager.strOpToOp(notedAppOp.getOp()), notedAppOp.getAttributionTag(), message);
            return new MessageSamplingConfig(this.mSampledAppOpCode, this.mAcceptableLeftDistance, Instant.now().plus(1L, (TemporalUnit) ChronoUnit.HOURS).toEpochMilli());
        }
    }

    private void reportRuntimeAppOpAccessMessageAsyncLocked(int uid, String packageName, int opCode, String attributionTag, String message) {
        switchPackageIfBootTimeOrRarelyUsedLocked(packageName);
        if (!Objects.equals(this.mSampledPackage, packageName)) {
            return;
        }
        reportRuntimeAppOpAccessMessageInternalLocked(uid, packageName, opCode, attributionTag, message);
    }

    private void reportRuntimeAppOpAccessMessageInternalLocked(int uid, String packageName, int opCode, String attributionTag, String message) {
        int newLeftDistance = AppOpsManager.leftCircularDistance(opCode, this.mSampledAppOpCode, 103);
        int i = this.mAcceptableLeftDistance;
        if (i < newLeftDistance) {
            return;
        }
        if (i > newLeftDistance) {
            this.mAcceptableLeftDistance = newLeftDistance;
            this.mMessagesCollectedCount = 0.0f;
        }
        this.mMessagesCollectedCount += 1.0f;
        if (ThreadLocalRandom.current().nextFloat() <= 1.0f / this.mMessagesCollectedCount) {
            this.mCollectedRuntimePermissionMessage = new RuntimeAppOpAccessMessage(uid, opCode, packageName, attributionTag, message, this.mSamplingStrategy);
        }
    }

    public RuntimeAppOpAccessMessage collectRuntimeAppOpAccessMessage() {
        RuntimeAppOpAccessMessage result;
        this.mContext.enforcePermission("android.permission.GET_APP_OPS_STATS", Binder.getCallingPid(), Binder.getCallingUid(), null);
        synchronized (this) {
            result = this.mCollectedRuntimePermissionMessage;
            this.mCollectedRuntimePermissionMessage = null;
        }
        this.mHandler.sendMessage(PooledLambda.obtainMessage(new Consumer() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$m04KE9D7Jmkj_GEr7pcdIY29xtA
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((AppOpsService) obj).getPackageListAndResample();
            }
        }, this));
        return result;
    }

    private void switchPackageIfBootTimeOrRarelyUsedLocked(String packageName) {
        if (this.mSampledPackage == null) {
            if (ThreadLocalRandom.current().nextFloat() < 0.5f) {
                this.mSamplingStrategy = 3;
                resampleAppOpForPackageLocked(packageName);
                return;
            }
            return;
        }
        if (this.mRarelyUsedPackages.contains(packageName)) {
            this.mRarelyUsedPackages.remove(packageName);
            if (ThreadLocalRandom.current().nextFloat() < 0.5f) {
                this.mSamplingStrategy = 2;
                resampleAppOpForPackageLocked(packageName);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> getPackageListAndResample() {
        List<String> packageNames = getPackageNamesForSampling();
        synchronized (this) {
            resamplePackageAndAppOpLocked(packageNames);
        }
        return packageNames;
    }

    private void resamplePackageAndAppOpLocked(List<String> packageNames) {
        if (!packageNames.isEmpty()) {
            this.mSamplingStrategy = 1;
            resampleAppOpForPackageLocked(packageNames.get(ThreadLocalRandom.current().nextInt(packageNames.size())));
        }
    }

    private void resampleAppOpForPackageLocked(String packageName) {
        this.mMessagesCollectedCount = 0.0f;
        this.mSampledAppOpCode = ThreadLocalRandom.current().nextInt(103);
        this.mAcceptableLeftDistance = 103;
        this.mSampledPackage = packageName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeRarelyUsedPackagesList(final ArraySet<String> candidates) {
        AppOpsManager appOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        List<String> runtimeAppOpsList = getRuntimeAppOpsList();
        AppOpsManager.HistoricalOpsRequest histOpsRequest = new AppOpsManager.HistoricalOpsRequest.Builder(Math.max(Instant.now().minus(7L, (TemporalUnit) ChronoUnit.DAYS).toEpochMilli(), 0L), JobStatus.NO_LATEST_RUNTIME).setOpNames(runtimeAppOpsList).setFlags(9).build();
        appOps.getHistoricalOps(histOpsRequest, AsyncTask.THREAD_POOL_EXECUTOR, new Consumer<AppOpsManager.HistoricalOps>() { // from class: com.android.server.appop.AppOpsService.9
            @Override // java.util.function.Consumer
            public void accept(AppOpsManager.HistoricalOps histOps) {
                int uidCount = histOps.getUidCount();
                for (int uidIdx = 0; uidIdx < uidCount; uidIdx++) {
                    AppOpsManager.HistoricalUidOps uidOps = histOps.getUidOpsAt(uidIdx);
                    int pkgCount = uidOps.getPackageCount();
                    for (int pkgIdx = 0; pkgIdx < pkgCount; pkgIdx++) {
                        String packageName = uidOps.getPackageOpsAt(pkgIdx).getPackageName();
                        if (candidates.contains(packageName)) {
                            AppOpsManager.HistoricalPackageOps packageOps = uidOps.getPackageOpsAt(pkgIdx);
                            if (packageOps.getOpCount() != 0) {
                                candidates.remove(packageName);
                            }
                        }
                    }
                }
                synchronized (this) {
                    int numPkgs = AppOpsService.this.mRarelyUsedPackages.size();
                    for (int i = 0; i < numPkgs; i++) {
                        candidates.add((String) AppOpsService.this.mRarelyUsedPackages.valueAt(i));
                    }
                    AppOpsService.this.mRarelyUsedPackages = candidates;
                }
            }
        });
    }

    private List<String> getRuntimeAppOpsList() {
        ArrayList<String> result = new ArrayList<>();
        for (int i = 0; i < 103; i++) {
            if (shouldCollectNotes(i)) {
                result.add(AppOpsManager.opToPublicName(i));
            }
        }
        return result;
    }

    private List<String> getPackageNamesForSampling() {
        List<String> packageNames = new ArrayList<>();
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        PackageList packages = packageManagerInternal.getPackageList();
        for (String packageName : packages.getPackageNames()) {
            PackageInfo pkg = packageManagerInternal.getPackageInfo(packageName, 4096, Process.myUid(), this.mContext.getUserId());
            if (isSamplingTarget(pkg)) {
                packageNames.add(pkg.packageName);
            }
        }
        return packageNames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSamplingTarget(PackageInfo pkg) {
        String[] requestedPermissions;
        if (pkg == null || (requestedPermissions = pkg.requestedPermissions) == null) {
            return false;
        }
        for (String permission : requestedPermissions) {
            try {
                PermissionInfo permissionInfo = this.mContext.getPackageManager().getPermissionInfo(permission, 0);
                if (permissionInfo.getProtection() == 1) {
                    return true;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        return false;
    }

    private void removeUidsForUserLocked(int userHandle) {
        for (int i = this.mUidStates.size() - 1; i >= 0; i--) {
            int uid = this.mUidStates.keyAt(i);
            if (UserHandle.getUserId(uid) == userHandle) {
                this.mUidStates.removeAt(i);
            }
        }
    }

    private void checkSystemUid(String function) {
        int uid = Binder.getCallingUid();
        if (uid != 1000) {
            throw new SecurityException(function + " must by called by the system");
        }
    }

    private static String resolvePackageName(int uid, String packageName) {
        if (uid == 0) {
            return "root";
        }
        if (uid == 2000) {
            return "com.android.shell";
        }
        if (uid == 1013) {
            return "media";
        }
        if (uid == 1041) {
            return "audioserver";
        }
        if (uid == 1047) {
            return "cameraserver";
        }
        if (uid == 1000 && packageName == null) {
            return PackageManagerService.PLATFORM_PACKAGE_NAME;
        }
        return packageName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int resolveUid(String packageName) {
        byte b;
        if (packageName == null) {
            return -1;
        }
        switch (packageName) {
            case "cameraserver":
                b = 4;
                break;
            case "root":
                b = 0;
                break;
            case "media":
                b = 2;
                break;
            case "shell":
                b = 1;
                break;
            case "audioserver":
                b = 3;
                break;
            default:
                b = -1;
                break;
        }
        if (b == 0) {
            return 0;
        }
        if (b == 1) {
            return 2000;
        }
        if (b == 2) {
            return 1013;
        }
        if (b == 3) {
            return 1041;
        }
        if (b != 4) {
            return -1;
        }
        return 1047;
    }

    private static String[] getPackagesForUid(int uid) {
        String[] packageNames = null;
        if (AppGlobals.getPackageManager() != null) {
            try {
                packageNames = AppGlobals.getPackageManager().getPackagesForUid(uid);
            } catch (RemoteException e) {
            }
        }
        if (packageNames == null) {
            return EmptyArray.STRING;
        }
        return packageNames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class ClientRestrictionState implements IBinder.DeathRecipient {
        SparseArray<String[]> perUserExcludedPackages;
        SparseArray<boolean[]> perUserRestrictions;
        private final IBinder token;

        public ClientRestrictionState(IBinder token) throws RemoteException {
            token.linkToDeath(this, 0);
            this.token = token;
        }

        public boolean setRestriction(int code, boolean restricted, String[] excludedPackages, int userId) {
            int[] users;
            boolean changed = false;
            if (this.perUserRestrictions == null && restricted) {
                this.perUserRestrictions = new SparseArray<>();
            }
            if (userId == -1) {
                List<UserInfo> liveUsers = UserManager.get(AppOpsService.this.mContext).getUsers(false);
                users = new int[liveUsers.size()];
                for (int i = 0; i < liveUsers.size(); i++) {
                    users[i] = liveUsers.get(i).id;
                }
            } else {
                users = new int[]{userId};
            }
            if (this.perUserRestrictions != null) {
                for (int thisUserId : users) {
                    boolean[] userRestrictions = this.perUserRestrictions.get(thisUserId);
                    if (userRestrictions == null && restricted) {
                        userRestrictions = new boolean[103];
                        this.perUserRestrictions.put(thisUserId, userRestrictions);
                    }
                    if (userRestrictions != null && userRestrictions[code] != restricted) {
                        userRestrictions[code] = restricted;
                        if (!restricted && isDefault(userRestrictions)) {
                            this.perUserRestrictions.remove(thisUserId);
                            userRestrictions = null;
                        }
                        changed = true;
                    }
                    if (userRestrictions != null) {
                        boolean noExcludedPackages = ArrayUtils.isEmpty(excludedPackages);
                        if (this.perUserExcludedPackages == null && !noExcludedPackages) {
                            this.perUserExcludedPackages = new SparseArray<>();
                        }
                        SparseArray<String[]> sparseArray = this.perUserExcludedPackages;
                        if (sparseArray != null && !Arrays.equals(excludedPackages, sparseArray.get(thisUserId))) {
                            if (noExcludedPackages) {
                                this.perUserExcludedPackages.remove(thisUserId);
                                if (this.perUserExcludedPackages.size() <= 0) {
                                    this.perUserExcludedPackages = null;
                                }
                            } else {
                                this.perUserExcludedPackages.put(thisUserId, excludedPackages);
                            }
                            changed = true;
                        }
                    }
                }
            }
            return changed;
        }

        public boolean hasRestriction(int restriction, String packageName, int userId) {
            boolean[] restrictions;
            String[] perUserExclusions;
            SparseArray<boolean[]> sparseArray = this.perUserRestrictions;
            if (sparseArray == null || (restrictions = sparseArray.get(userId)) == null || !restrictions[restriction]) {
                return false;
            }
            SparseArray<String[]> sparseArray2 = this.perUserExcludedPackages;
            if (sparseArray2 == null || (perUserExclusions = sparseArray2.get(userId)) == null) {
                return true;
            }
            return true ^ ArrayUtils.contains(perUserExclusions, packageName);
        }

        public void removeUser(int userId) {
            SparseArray<String[]> sparseArray = this.perUserExcludedPackages;
            if (sparseArray != null) {
                sparseArray.remove(userId);
                if (this.perUserExcludedPackages.size() <= 0) {
                    this.perUserExcludedPackages = null;
                }
            }
            SparseArray<boolean[]> sparseArray2 = this.perUserRestrictions;
            if (sparseArray2 != null) {
                sparseArray2.remove(userId);
                if (this.perUserRestrictions.size() <= 0) {
                    this.perUserRestrictions = null;
                }
            }
        }

        public boolean isDefault() {
            SparseArray<boolean[]> sparseArray = this.perUserRestrictions;
            return sparseArray == null || sparseArray.size() <= 0;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (AppOpsService.this) {
                AppOpsService.this.mOpUserRestrictions.remove(this.token);
                if (this.perUserRestrictions == null) {
                    return;
                }
                int userCount = this.perUserRestrictions.size();
                for (int i = 0; i < userCount; i++) {
                    boolean[] restrictions = this.perUserRestrictions.valueAt(i);
                    int restrictionCount = restrictions.length;
                    for (int j = 0; j < restrictionCount; j++) {
                        if (restrictions[j]) {
                            final int changedCode = j;
                            AppOpsService.this.mHandler.post(new Runnable() { // from class: com.android.server.appop.-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$binderDied$0$AppOpsService$ClientRestrictionState(changedCode);
                                }
                            });
                        }
                    }
                }
                destroy();
            }
        }

        public /* synthetic */ void lambda$binderDied$0$AppOpsService$ClientRestrictionState(int changedCode) {
            AppOpsService.this.notifyWatchersOfChange(changedCode, -2);
        }

        public void destroy() {
            this.token.unlinkToDeath(this, 0);
        }

        private boolean isDefault(boolean[] array) {
            if (ArrayUtils.isEmpty(array)) {
                return true;
            }
            for (boolean value : array) {
                if (value) {
                    return false;
                }
            }
            return true;
        }
    }

    private final class AppOpsManagerInternalImpl extends AppOpsManagerInternal {
        private AppOpsManagerInternalImpl() {
        }

        public void setDeviceAndProfileOwners(SparseIntArray owners) {
            synchronized (AppOpsService.this) {
                AppOpsService.this.mProfileOwners = owners;
            }
        }

        public void updateAppWidgetVisibility(SparseArray<String> uidPackageNames, boolean visible) {
            AppOpsService.this.updateAppWidgetVisibility(uidPackageNames, visible);
        }

        public void setUidModeFromPermissionPolicy(int code, int uid, int mode, IAppOpsCallback callback) throws Throwable {
            AppOpsService.this.setUidMode(code, uid, mode, callback);
        }

        public void setModeFromPermissionPolicy(int code, int uid, String packageName, int mode, IAppOpsCallback callback) throws Throwable {
            AppOpsService.this.setMode(code, uid, packageName, mode, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeNoteOps() {
        synchronized (this) {
            this.mWriteNoteOpsScheduled = false;
        }
        synchronized (this.mNoteOpCallerStacktracesFile) {
            try {
                FileWriter writer = new FileWriter(this.mNoteOpCallerStacktracesFile);
                try {
                    int numTraces = this.mNoteOpCallerStacktraces.size();
                    for (int i = 0; i < numTraces; i++) {
                        writer.write(this.mNoteOpCallerStacktraces.valueAt(i).asJson());
                        writer.write(",");
                    }
                    writer.close();
                } catch (Throwable th) {
                    try {
                        writer.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                Slog.w(TAG, "Failed to load opsValidation file for FileWriter", e);
            }
        }
    }

    static class NoteOpTrace {
        static final String OP = "op";
        static final String PACKAGENAME = "packageName";
        static final String STACKTRACE = "stackTrace";
        static final String VERSION = "version";
        private final int mOp;
        private final String mPackageName;
        private final String mStackTrace;
        private final long mVersion;

        static NoteOpTrace fromJson(String jsonTrace) {
            try {
                JSONObject obj = new JSONObject(jsonTrace.concat("}"));
                return new NoteOpTrace(obj.getString(STACKTRACE), obj.getInt(OP), obj.getString(PACKAGENAME), obj.getLong(VERSION));
            } catch (JSONException e) {
                Slog.e(AppOpsService.TAG, "Error constructing NoteOpTrace object JSON trace format incorrect", e);
                return null;
            }
        }

        NoteOpTrace(String stackTrace, int op, String packageName, long version) {
            this.mStackTrace = stackTrace;
            this.mOp = op;
            this.mPackageName = packageName;
            this.mVersion = version;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            NoteOpTrace that = (NoteOpTrace) o;
            if (this.mOp == that.mOp && this.mVersion == that.mVersion && this.mStackTrace.equals(that.mStackTrace) && Objects.equals(this.mPackageName, that.mPackageName)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.mStackTrace, Integer.valueOf(this.mOp), this.mPackageName, Long.valueOf(this.mVersion));
        }

        public String asJson() {
            return "{\"stackTrace\":\"" + this.mStackTrace.replace("\n", "\\n") + "\",\"" + OP + "\":" + this.mOp + ",\"" + PACKAGENAME + "\":\"" + this.mPackageName + "\",\"" + VERSION + "\":" + this.mVersion + '}';
        }
    }

    public void collectNoteOpCallsForValidation(String stackTrace, int op, String packageName, long version) {
    }
}
