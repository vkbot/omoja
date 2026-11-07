package com.android.server.blob;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.StatsManager;
import android.app.blob.BlobHandle;
import android.app.blob.BlobInfo;
import android.app.blob.IBlobStoreManager;
import android.app.blob.IBlobStoreSession;
import android.app.blob.LeaseInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageStats;
import android.content.res.ResourceId;
import android.content.res.Resources;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.LimitExceededException;
import android.os.ParcelFileDescriptor;
import android.os.ParcelableException;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManagerInternal;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.ExceptionUtils;
import android.util.LongSparseArray;
import android.util.Slog;
import android.util.SparseArray;
import android.util.StatsEvent;
import android.util.Xml;
import com.android.internal.os.BackgroundThread;
import com.android.internal.util.CollectionUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.internal.util.function.LongObjPredicate;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.LocalServices;
import com.android.server.ServiceThread;
import com.android.server.SystemService;
import com.android.server.Watchdog;
import com.android.server.display.color.DisplayTransformManager;
import com.android.server.net.watchlist.WatchlistLoggingHandler;
import com.android.server.pm.Settings;
import com.android.server.usage.StorageStatsManagerInternal;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class BlobStoreManagerService extends SystemService {
    private final ArraySet<Long> mActiveBlobIds;
    private final Handler mBackgroundHandler;
    private final Object mBlobsLock;
    private final SparseArray<ArrayMap<BlobHandle, BlobMetadata>> mBlobsMap;
    private final Context mContext;
    private long mCurrentMaxSessionId;
    private final Handler mHandler;
    private final Injector mInjector;
    private final ArraySet<Long> mKnownBlobIds;
    private PackageManagerInternal mPackageManagerInternal;
    private final Random mRandom;
    private final Runnable mSaveBlobsInfoRunnable;
    private final Runnable mSaveSessionsRunnable;
    private final SessionStateChangeListener mSessionStateChangeListener;
    private final SparseArray<LongSparseArray<BlobStoreSession>> mSessions;
    private StatsPullAtomCallbackImpl mStatsCallbackImpl;
    private StatsManager mStatsManager;

    public BlobStoreManagerService(Context context) {
        this(context, new Injector());
    }

    BlobStoreManagerService(Context context, Injector injector) {
        super(context);
        this.mBlobsLock = new Object();
        this.mSessions = new SparseArray<>();
        this.mBlobsMap = new SparseArray<>();
        this.mActiveBlobIds = new ArraySet<>();
        this.mKnownBlobIds = new ArraySet<>();
        this.mRandom = new SecureRandom();
        this.mSessionStateChangeListener = new SessionStateChangeListener();
        this.mStatsCallbackImpl = new StatsPullAtomCallbackImpl();
        this.mSaveBlobsInfoRunnable = new Runnable() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$0WauOYQXWD9rogYgvnCLUb176wA
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.writeBlobsInfo();
            }
        };
        this.mSaveSessionsRunnable = new Runnable() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$TQmyogoz-iYWcrNcnMqwFDg6S5A
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.writeBlobSessions();
            }
        };
        this.mContext = context;
        this.mInjector = injector;
        this.mHandler = injector.initializeMessageHandler();
        this.mBackgroundHandler = this.mInjector.getBackgroundHandler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Handler initializeMessageHandler() {
        HandlerThread handlerThread = new ServiceThread(BlobStoreConfig.TAG, 0, true);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        Watchdog.getInstance().addThread(handler);
        return handler;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        publishBinderService("blob_store", new Stub());
        LocalServices.addService(BlobStoreManagerInternal.class, new LocalService());
        this.mPackageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        this.mStatsManager = (StatsManager) getContext().getSystemService(StatsManager.class);
        registerReceivers();
        ((StorageStatsManagerInternal) LocalServices.getService(StorageStatsManagerInternal.class)).registerStorageStatsAugmenter(new BlobStorageStatsAugmenter(), BlobStoreConfig.TAG);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 550) {
            BlobStoreConfig.initialize(this.mContext);
            return;
        }
        if (phase == 600) {
            synchronized (this.mBlobsLock) {
                SparseArray<SparseArray<String>> allPackages = getAllPackages();
                readBlobSessionsLocked(allPackages);
                readBlobsInfoLocked(allPackages);
            }
            registerBlobStorePuller();
            return;
        }
        if (phase == 1000) {
            BlobStoreIdleJobService.schedule(this.mContext);
        }
    }

    private long generateNextSessionIdLocked() {
        int n = 0;
        while (true) {
            long randomLong = this.mRandom.nextLong();
            long sessionId = randomLong == Long.MIN_VALUE ? 0L : Math.abs(randomLong);
            if (this.mKnownBlobIds.indexOf(Long.valueOf(sessionId)) < 0 && sessionId != 0) {
                return sessionId;
            }
            int n2 = n + 1;
            if (n >= 32) {
                throw new IllegalStateException("Failed to allocate session ID");
            }
            n = n2;
        }
    }

    private void registerReceivers() {
        IntentFilter packageChangedFilter = new IntentFilter();
        packageChangedFilter.addAction("android.intent.action.PACKAGE_FULLY_REMOVED");
        packageChangedFilter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        packageChangedFilter.addDataScheme(Settings.ATTR_PACKAGE);
        this.mContext.registerReceiverAsUser(new PackageChangedReceiver(), UserHandle.ALL, packageChangedFilter, null, this.mHandler);
        IntentFilter userActionFilter = new IntentFilter();
        userActionFilter.addAction("android.intent.action.USER_REMOVED");
        this.mContext.registerReceiverAsUser(new UserActionReceiver(), UserHandle.ALL, userActionFilter, null, this.mHandler);
    }

    private LongSparseArray<BlobStoreSession> getUserSessionsLocked(int userId) {
        LongSparseArray<BlobStoreSession> userSessions = this.mSessions.get(userId);
        if (userSessions == null) {
            LongSparseArray<BlobStoreSession> userSessions2 = new LongSparseArray<>();
            this.mSessions.put(userId, userSessions2);
            return userSessions2;
        }
        return userSessions;
    }

    private ArrayMap<BlobHandle, BlobMetadata> getUserBlobsLocked(int userId) {
        ArrayMap<BlobHandle, BlobMetadata> userBlobs = this.mBlobsMap.get(userId);
        if (userBlobs == null) {
            ArrayMap<BlobHandle, BlobMetadata> userBlobs2 = new ArrayMap<>();
            this.mBlobsMap.put(userId, userBlobs2);
            return userBlobs2;
        }
        return userBlobs;
    }

    void addUserSessionsForTest(LongSparseArray<BlobStoreSession> userSessions, int userId) {
        synchronized (this.mBlobsLock) {
            this.mSessions.put(userId, userSessions);
        }
    }

    void addUserBlobsForTest(ArrayMap<BlobHandle, BlobMetadata> userBlobs, int userId) {
        synchronized (this.mBlobsLock) {
            this.mBlobsMap.put(userId, userBlobs);
        }
    }

    void addActiveIdsForTest(long... activeIds) {
        synchronized (this.mBlobsLock) {
            for (long id : activeIds) {
                addActiveBlobIdLocked(id);
            }
        }
    }

    Set<Long> getActiveIdsForTest() {
        ArraySet<Long> arraySet;
        synchronized (this.mBlobsLock) {
            arraySet = this.mActiveBlobIds;
        }
        return arraySet;
    }

    Set<Long> getKnownIdsForTest() {
        ArraySet<Long> arraySet;
        synchronized (this.mBlobsLock) {
            arraySet = this.mKnownBlobIds;
        }
        return arraySet;
    }

    private void addSessionForUserLocked(BlobStoreSession session, int userId) {
        getUserSessionsLocked(userId).put(session.getSessionId(), session);
        addActiveBlobIdLocked(session.getSessionId());
    }

    private void addBlobForUserLocked(BlobMetadata blobMetadata, int userId) {
        addBlobForUserLocked(blobMetadata, getUserBlobsLocked(userId));
    }

    private void addBlobForUserLocked(BlobMetadata blobMetadata, ArrayMap<BlobHandle, BlobMetadata> userBlobs) {
        userBlobs.put(blobMetadata.getBlobHandle(), blobMetadata);
        addActiveBlobIdLocked(blobMetadata.getBlobId());
    }

    private void addActiveBlobIdLocked(long id) {
        this.mActiveBlobIds.add(Long.valueOf(id));
        this.mKnownBlobIds.add(Long.valueOf(id));
    }

    private int getSessionsCountLocked(final int uid, final String packageName) {
        final AtomicInteger sessionsCount = new AtomicInteger(0);
        forEachSessionInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$iguqWcdQtO7XSEFCDVTzkcChqjE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlobStoreManagerService.lambda$getSessionsCountLocked$0(uid, packageName, sessionsCount, (BlobStoreSession) obj);
            }
        }, UserHandle.getUserId(uid));
        return sessionsCount.get();
    }

    static /* synthetic */ void lambda$getSessionsCountLocked$0(int uid, String packageName, AtomicInteger sessionsCount, BlobStoreSession session) {
        if (session.getOwnerUid() == uid && session.getOwnerPackageName().equals(packageName)) {
            sessionsCount.getAndIncrement();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long createSessionInternal(BlobHandle blobHandle, int callingUid, String callingPackage) throws Throwable {
        synchronized (this.mBlobsLock) {
            try {
                try {
                    int sessionsCount = getSessionsCountLocked(callingUid, callingPackage);
                    if (sessionsCount >= BlobStoreConfig.getMaxActiveSessions()) {
                        throw new LimitExceededException("Too many active sessions for the caller: " + sessionsCount);
                    }
                    long sessionId = generateNextSessionIdLocked();
                    BlobStoreSession session = new BlobStoreSession(this.mContext, sessionId, blobHandle, callingUid, callingPackage, this.mSessionStateChangeListener);
                    addSessionForUserLocked(session, UserHandle.getUserId(callingUid));
                    if (BlobStoreConfig.LOGV) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Created session for ");
                        sb.append(blobHandle);
                        sb.append("; callingUid=");
                        sb.append(callingUid);
                        sb.append(", callingPackage=");
                        sb.append(callingPackage);
                        Slog.v(BlobStoreConfig.TAG, sb.toString());
                    }
                    writeBlobSessionsAsync();
                    return sessionId;
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

    /* JADX INFO: Access modifiers changed from: private */
    public BlobStoreSession openSessionInternal(long sessionId, int callingUid, String callingPackage) {
        BlobStoreSession session;
        synchronized (this.mBlobsLock) {
            session = getUserSessionsLocked(UserHandle.getUserId(callingUid)).get(sessionId);
            if (session == null || !session.hasAccess(callingUid, callingPackage) || session.isFinalized()) {
                throw new SecurityException("Session not found: " + sessionId);
            }
        }
        session.open();
        return session;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abandonSessionInternal(long sessionId, int callingUid, String callingPackage) {
        synchronized (this.mBlobsLock) {
            BlobStoreSession session = openSessionInternal(sessionId, callingUid, callingPackage);
            session.open();
            session.abandon();
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Abandoned session with id " + sessionId + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
            }
            writeBlobSessionsAsync();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ParcelFileDescriptor openBlobInternal(BlobHandle blobHandle, int callingUid, String callingPackage) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenForRead;
        synchronized (this.mBlobsLock) {
            BlobMetadata blobMetadata = getUserBlobsLocked(UserHandle.getUserId(callingUid)).get(blobHandle);
            if (blobMetadata != null && blobMetadata.isAccessAllowedForCaller(callingPackage, callingUid)) {
                FrameworkStatsLog.write(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR, callingUid, blobMetadata.getBlobId(), blobMetadata.getSize(), 1);
                parcelFileDescriptorOpenForRead = blobMetadata.openForRead(callingPackage);
            }
            if (blobMetadata == null) {
                FrameworkStatsLog.write(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR, callingUid, 0L, 0L, 2);
            } else {
                FrameworkStatsLog.write(DisplayTransformManager.LEVEL_COLOR_MATRIX_INVERT_COLOR, callingUid, blobMetadata.getBlobId(), blobMetadata.getSize(), 3);
            }
            throw new SecurityException("Caller not allowed to access " + blobHandle + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
        }
        return parcelFileDescriptorOpenForRead;
    }

    private int getCommittedBlobsCountLocked(final int uid, final String packageName) {
        final AtomicInteger blobsCount = new AtomicInteger(0);
        forEachBlobInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$shuup-g9zPirCAR3mwbzlpwbvzg
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlobStoreManagerService.lambda$getCommittedBlobsCountLocked$1(packageName, uid, blobsCount, (BlobMetadata) obj);
            }
        }, UserHandle.getUserId(uid));
        return blobsCount.get();
    }

    static /* synthetic */ void lambda$getCommittedBlobsCountLocked$1(String packageName, int uid, AtomicInteger blobsCount, BlobMetadata blobMetadata) {
        if (blobMetadata.isACommitter(packageName, uid)) {
            blobsCount.getAndIncrement();
        }
    }

    private int getLeasedBlobsCountLocked(final int uid, final String packageName) {
        final AtomicInteger blobsCount = new AtomicInteger(0);
        forEachBlobInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$ueUCJvv_tifFj4N2TVHvG9LPJDc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlobStoreManagerService.lambda$getLeasedBlobsCountLocked$2(packageName, uid, blobsCount, (BlobMetadata) obj);
            }
        }, UserHandle.getUserId(uid));
        return blobsCount.get();
    }

    static /* synthetic */ void lambda$getLeasedBlobsCountLocked$2(String packageName, int uid, AtomicInteger blobsCount, BlobMetadata blobMetadata) {
        if (blobMetadata.isALeasee(packageName, uid)) {
            blobsCount.getAndIncrement();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acquireLeaseInternal(BlobHandle blobHandle, int descriptionResId, CharSequence description, long leaseExpiryTimeMillis, int callingUid, String callingPackage) {
        synchronized (this.mBlobsLock) {
            int leasesCount = getLeasedBlobsCountLocked(callingUid, callingPackage);
            if (leasesCount >= BlobStoreConfig.getMaxLeasedBlobs()) {
                FrameworkStatsLog.write(299, callingUid, 0L, 0L, 6);
                throw new LimitExceededException("Too many leased blobs for the caller: " + leasesCount);
            }
            BlobMetadata blobMetadata = getUserBlobsLocked(UserHandle.getUserId(callingUid)).get(blobHandle);
            if (blobMetadata != null && blobMetadata.isAccessAllowedForCaller(callingPackage, callingUid)) {
                if (leaseExpiryTimeMillis != 0 && blobHandle.expiryTimeMillis != 0 && leaseExpiryTimeMillis > blobHandle.expiryTimeMillis) {
                    FrameworkStatsLog.write(299, callingUid, blobMetadata.getBlobId(), blobMetadata.getSize(), 4);
                    throw new IllegalArgumentException("Lease expiry cannot be later than blobs expiry time");
                }
                if (blobMetadata.getSize() > getRemainingLeaseQuotaBytesInternal(callingUid, callingPackage)) {
                    FrameworkStatsLog.write(299, callingUid, blobMetadata.getBlobId(), blobMetadata.getSize(), 5);
                    throw new LimitExceededException("Total amount of data with an active lease is exceeding the max limit");
                }
                FrameworkStatsLog.write(299, callingUid, blobMetadata.getBlobId(), blobMetadata.getSize(), 1);
                blobMetadata.addOrReplaceLeasee(callingPackage, callingUid, descriptionResId, description, leaseExpiryTimeMillis);
                if (BlobStoreConfig.LOGV) {
                    Slog.v(BlobStoreConfig.TAG, "Acquired lease on " + blobHandle + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
                }
                writeBlobsInfoAsync();
            }
            if (blobMetadata == null) {
                FrameworkStatsLog.write(299, callingUid, 0L, 0L, 2);
            } else {
                FrameworkStatsLog.write(299, callingUid, blobMetadata.getBlobId(), blobMetadata.getSize(), 3);
            }
            throw new SecurityException("Caller not allowed to access " + blobHandle + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
        }
    }

    long getTotalUsageBytesLocked(final int callingUid, final String callingPackage) {
        final AtomicLong totalBytes = new AtomicLong(0L);
        forEachBlobInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$4X5X-d6CkyxPjpme-NpFgH7rQX0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlobStoreManagerService.lambda$getTotalUsageBytesLocked$3(callingPackage, callingUid, totalBytes, (BlobMetadata) obj);
            }
        }, UserHandle.getUserId(callingUid));
        return totalBytes.get();
    }

    static /* synthetic */ void lambda$getTotalUsageBytesLocked$3(String callingPackage, int callingUid, AtomicLong totalBytes, BlobMetadata blobMetadata) {
        if (blobMetadata.isALeasee(callingPackage, callingUid)) {
            totalBytes.getAndAdd(blobMetadata.getSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseLeaseInternal(final BlobHandle blobHandle, int callingUid, String callingPackage) {
        synchronized (this.mBlobsLock) {
            final ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(UserHandle.getUserId(callingUid));
            final BlobMetadata blobMetadata = userBlobs.get(blobHandle);
            if (blobMetadata == null || !blobMetadata.isAccessAllowedForCaller(callingPackage, callingUid)) {
                throw new SecurityException("Caller not allowed to access " + blobHandle + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
            }
            blobMetadata.removeLeasee(callingPackage, callingUid);
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Released lease on " + blobHandle + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
            }
            if (!blobMetadata.hasValidLeases()) {
                this.mHandler.postDelayed(new Runnable() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$B6INu6yYNZbmMBINR4KMMCBToN4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$releaseLeaseInternal$4$BlobStoreManagerService(userBlobs, blobHandle, blobMetadata);
                    }
                }, BlobStoreConfig.getDeletionOnLastLeaseDelayMs());
            }
            writeBlobsInfoAsync();
        }
    }

    public /* synthetic */ void lambda$releaseLeaseInternal$4$BlobStoreManagerService(ArrayMap userBlobs, BlobHandle blobHandle, BlobMetadata blobMetadata) {
        synchronized (this.mBlobsLock) {
            if (Objects.equals(userBlobs.get(blobHandle), blobMetadata)) {
                if (blobMetadata.shouldBeDeleted(true)) {
                    deleteBlobLocked(blobMetadata);
                    userBlobs.remove(blobHandle);
                }
                writeBlobsInfoAsync();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getRemainingLeaseQuotaBytesInternal(int callingUid, String callingPackage) {
        long j;
        synchronized (this.mBlobsLock) {
            long remainingQuota = BlobStoreConfig.getAppDataBytesLimit() - getTotalUsageBytesLocked(callingUid, callingPackage);
            j = remainingQuota > 0 ? remainingQuota : 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<BlobInfo> queryBlobsForUserInternal(final int userId) {
        final ArrayList<BlobInfo> blobInfos = new ArrayList<>();
        synchronized (this.mBlobsLock) {
            final ArrayMap<String, WeakReference<Resources>> resources = new ArrayMap<>();
            final Function<String, Resources> resourcesGetter = new Function() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$dS4fzn6rXwz2QRynrQJnomB_CcU
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return this.f$0.lambda$queryBlobsForUserInternal$5$BlobStoreManagerService(resources, userId, (String) obj);
                }
            };
            getUserBlobsLocked(userId).forEach(new BiConsumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$vLEQSKdoEZ9cTJdF33Gj6FReI8k
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    BlobStoreManagerService.lambda$queryBlobsForUserInternal$7(resourcesGetter, blobInfos, (BlobHandle) obj, (BlobMetadata) obj2);
                }
            });
        }
        return blobInfos;
    }

    public /* synthetic */ Resources lambda$queryBlobsForUserInternal$5$BlobStoreManagerService(ArrayMap resources, int userId, String packageName) {
        WeakReference<Resources> resourcesRef = (WeakReference) resources.get(packageName);
        Resources packageResources = resourcesRef == null ? null : resourcesRef.get();
        if (packageResources == null) {
            Resources packageResources2 = BlobStoreUtils.getPackageResources(this.mContext, packageName, userId);
            resources.put(packageName, new WeakReference(packageResources2));
            return packageResources2;
        }
        return packageResources;
    }

    static /* synthetic */ void lambda$queryBlobsForUserInternal$7(final Function resourcesGetter, ArrayList blobInfos, final BlobHandle blobHandle, BlobMetadata blobMetadata) {
        final ArrayList<LeaseInfo> leaseInfos = new ArrayList<>();
        blobMetadata.forEachLeasee(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$BUTOhgP9JLOMPxsEmHKh1cRuMiU
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlobStoreManagerService.lambda$queryBlobsForUserInternal$6(resourcesGetter, blobHandle, leaseInfos, (BlobMetadata.Leasee) obj);
            }
        });
        blobInfos.add(new BlobInfo(blobMetadata.getBlobId(), blobHandle.getExpiryTimeMillis(), blobHandle.getLabel(), blobMetadata.getSize(), leaseInfos));
    }

    static /* synthetic */ void lambda$queryBlobsForUserInternal$6(Function resourcesGetter, BlobHandle blobHandle, ArrayList leaseInfos, BlobMetadata.Leasee leasee) {
        int descriptionResId;
        if (!leasee.isStillValid()) {
            return;
        }
        if (leasee.descriptionResEntryName == null) {
            descriptionResId = 0;
        } else {
            descriptionResId = BlobStoreUtils.getDescriptionResourceId((Resources) resourcesGetter.apply(leasee.packageName), leasee.descriptionResEntryName, leasee.packageName);
        }
        long expiryTimeMs = leasee.expiryTimeMillis == 0 ? blobHandle.getExpiryTimeMillis() : leasee.expiryTimeMillis;
        leaseInfos.add(new LeaseInfo(leasee.packageName, expiryTimeMs, descriptionResId, leasee.description));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteBlobInternal(final long blobId, int callingUid) {
        synchronized (this.mBlobsLock) {
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(UserHandle.getUserId(callingUid));
            userBlobs.entrySet().removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$Mr19cV2OEeKTtbpkiW3uytTABZY
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$deleteBlobInternal$8$BlobStoreManagerService(blobId, (Map.Entry) obj);
                }
            });
            writeBlobsInfoAsync();
        }
    }

    public /* synthetic */ boolean lambda$deleteBlobInternal$8$BlobStoreManagerService(long blobId, Map.Entry entry) {
        BlobMetadata blobMetadata = (BlobMetadata) entry.getValue();
        if (blobMetadata.getBlobId() == blobId) {
            deleteBlobLocked(blobMetadata);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<BlobHandle> getLeasedBlobsInternal(final int callingUid, final String callingPackage) {
        final ArrayList<BlobHandle> leasedBlobs = new ArrayList<>();
        forEachBlobInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$b9RctA3_v-s-QYN6fm28pdpoNOw
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BlobStoreManagerService.lambda$getLeasedBlobsInternal$9(callingPackage, callingUid, leasedBlobs, (BlobMetadata) obj);
            }
        }, UserHandle.getUserId(callingUid));
        return leasedBlobs;
    }

    static /* synthetic */ void lambda$getLeasedBlobsInternal$9(String callingPackage, int callingUid, ArrayList leasedBlobs, BlobMetadata blobMetadata) {
        if (blobMetadata.isALeasee(callingPackage, callingUid)) {
            leasedBlobs.add(blobMetadata.getBlobHandle());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public LeaseInfo getLeaseInfoInternal(BlobHandle blobHandle, int callingUid, String callingPackage) {
        LeaseInfo leaseInfo;
        synchronized (this.mBlobsLock) {
            BlobMetadata blobMetadata = getUserBlobsLocked(UserHandle.getUserId(callingUid)).get(blobHandle);
            if (blobMetadata == null || !blobMetadata.isAccessAllowedForCaller(callingPackage, callingUid)) {
                throw new SecurityException("Caller not allowed to access " + blobHandle + "; callingUid=" + callingUid + ", callingPackage=" + callingPackage);
            }
            leaseInfo = blobMetadata.getLeaseInfo(callingPackage, callingUid);
        }
        return leaseInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void verifyCallingPackage(int callingUid, String callingPackage) {
        if (this.mPackageManagerInternal.getPackageUid(callingPackage, 0, UserHandle.getUserId(callingUid)) != callingUid) {
            throw new SecurityException("Specified calling package [" + callingPackage + "] does not match the calling uid " + callingUid);
        }
    }

    class SessionStateChangeListener {
        SessionStateChangeListener() {
        }

        public void onStateChanged(BlobStoreSession session) {
            BlobStoreManagerService.this.mHandler.post(PooledLambda.obtainRunnable(new BiConsumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$SessionStateChangeListener$v8Yp400C4eJ-FDyajr3wyX2G2zQ
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((BlobStoreManagerService) obj).onStateChangedInternal((BlobStoreSession) obj2);
                }
            }, BlobStoreManagerService.this, session).recycleOnUse());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:48:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:52:0x01cf A[Catch: all -> 0x01f5, TryCatch #2 {, blocks: (B:50:0x01b5, B:52:0x01cf, B:53:0x01e5), top: B:71:0x01b5 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x01cf, please report this as an issue */
    public void onStateChangedInternal(final BlobStoreSession session) {
        BlobMetadata blob;
        int state = session.getState();
        if (state == 2) {
            synchronized (this.mBlobsLock) {
                deleteSessionLocked(session);
                getUserSessionsLocked(UserHandle.getUserId(session.getOwnerUid())).remove(session.getSessionId());
                if (BlobStoreConfig.LOGV) {
                    Slog.v(BlobStoreConfig.TAG, "Session is invalid; deleted " + session);
                }
            }
        } else if (state == 3) {
            this.mBackgroundHandler.post(new Runnable() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$Fcg_31mLLd_1djDPJSdIyLHQXJY
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStateChangedInternal$10$BlobStoreManagerService(session);
                }
            });
        } else if (state == 4) {
            synchronized (this.mBlobsLock) {
                int committedBlobsCount = getCommittedBlobsCountLocked(session.getOwnerUid(), session.getOwnerPackageName());
                if (committedBlobsCount >= BlobStoreConfig.getMaxCommittedBlobs()) {
                    Slog.d(BlobStoreConfig.TAG, "Failed to commit: too many committed blobs. count: " + committedBlobsCount + "; blob: " + session);
                    session.sendCommitCallbackResult(1);
                    deleteSessionLocked(session);
                    getUserSessionsLocked(UserHandle.getUserId(session.getOwnerUid())).remove(session.getSessionId());
                    FrameworkStatsLog.write(298, session.getOwnerUid(), session.getSessionId(), session.getSize(), 4);
                } else {
                    int userId = UserHandle.getUserId(session.getOwnerUid());
                    ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(userId);
                    BlobMetadata blob2 = userBlobs.get(session.getBlobHandle());
                    if (blob2 != null) {
                        blob = blob2;
                    } else {
                        BlobMetadata blob3 = new BlobMetadata(this.mContext, session.getSessionId(), session.getBlobHandle(), userId);
                        addBlobForUserLocked(blob3, userBlobs);
                        blob = blob3;
                    }
                    BlobMetadata.Committer existingCommitter = blob.getExistingCommitter(session.getOwnerPackageName(), session.getOwnerUid());
                    long existingCommitTimeMs = existingCommitter == null ? 0L : existingCommitter.getCommitTimeMs();
                    BlobMetadata.Committer newCommitter = new BlobMetadata.Committer(session.getOwnerPackageName(), session.getOwnerUid(), session.getBlobAccessMode(), BlobStoreConfig.getAdjustedCommitTimeMs(existingCommitTimeMs, System.currentTimeMillis()));
                    blob.addOrReplaceCommitter(newCommitter);
                    try {
                        writeBlobsInfoLocked();
                        FrameworkStatsLog.write(298, session.getOwnerUid(), blob.getBlobId(), blob.getSize(), 1);
                        session.sendCommitCallbackResult(0);
                    } catch (Exception e) {
                        if (existingCommitter == null) {
                            blob.removeCommitter(newCommitter);
                        } else {
                            blob.addOrReplaceCommitter(existingCommitter);
                        }
                        Slog.d(BlobStoreConfig.TAG, "Error committing the blob: " + session, e);
                        FrameworkStatsLog.write(298, session.getOwnerUid(), session.getSessionId(), blob.getSize(), 2);
                        session.sendCommitCallbackResult(1);
                        if (session.getSessionId() == blob.getBlobId()) {
                            deleteBlobLocked(blob);
                            userBlobs.remove(blob.getBlobHandle());
                        }
                    }
                    if (session.getSessionId() != blob.getBlobId()) {
                        deleteSessionLocked(session);
                    }
                    getUserSessionsLocked(UserHandle.getUserId(session.getOwnerUid())).remove(session.getSessionId());
                    if (BlobStoreConfig.LOGV) {
                        Slog.v(BlobStoreConfig.TAG, "Successfully committed session " + session);
                    }
                }
            }
        } else if (state == 5) {
            synchronized (this.mBlobsLock) {
                deleteSessionLocked(session);
                getUserSessionsLocked(UserHandle.getUserId(session.getOwnerUid())).remove(session.getSessionId());
                if (BlobStoreConfig.LOGV) {
                    Slog.v(BlobStoreConfig.TAG, "Session is invalid; deleted " + session);
                }
            }
        } else {
            Slog.wtf(BlobStoreConfig.TAG, "Invalid session state: " + BlobStoreSession.stateToString(session.getState()));
        }
        synchronized (this.mBlobsLock) {
            try {
                writeBlobSessionsLocked();
            } catch (Exception e2) {
            }
        }
    }

    public /* synthetic */ void lambda$onStateChangedInternal$10$BlobStoreManagerService(BlobStoreSession session) {
        session.computeDigest();
        this.mHandler.post(PooledLambda.obtainRunnable(new Consumer() { // from class: com.android.server.blob.-$$Lambda$DjzaYeVYvBfdcKdI4aXi7MQOjzc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((BlobStoreSession) obj).verifyBlobData();
            }
        }, session).recycleOnUse());
    }

    private void writeBlobSessionsLocked() throws Exception {
        AtomicFile sessionsIndexFile = prepareSessionsIndexFile();
        if (sessionsIndexFile == null) {
            Slog.wtf(BlobStoreConfig.TAG, "Error creating sessions index file");
            return;
        }
        FileOutputStream fos = null;
        try {
            fos = sessionsIndexFile.startWrite(SystemClock.uptimeMillis());
            XmlSerializer out = new FastXmlSerializer();
            out.setOutput(fos, StandardCharsets.UTF_8.name());
            out.startDocument(null, true);
            out.startTag(null, "ss");
            XmlUtils.writeIntAttribute(out, "v", 5);
            int userCount = this.mSessions.size();
            for (int i = 0; i < userCount; i++) {
                LongSparseArray<BlobStoreSession> userSessions = this.mSessions.valueAt(i);
                int sessionsCount = userSessions.size();
                for (int j = 0; j < sessionsCount; j++) {
                    out.startTag(null, "s");
                    userSessions.valueAt(j).writeToXml(out);
                    out.endTag(null, "s");
                }
            }
            out.endTag(null, "ss");
            out.endDocument();
            sessionsIndexFile.finishWrite(fos);
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Finished persisting sessions data");
            }
        } catch (Exception e) {
            sessionsIndexFile.failWrite(fos);
            Slog.wtf(BlobStoreConfig.TAG, "Error writing sessions data", e);
            throw e;
        }
    }

    private void readBlobSessionsLocked(SparseArray<SparseArray<String>> allPackages) {
        BlobStoreSession session;
        if (!BlobStoreConfig.getBlobStoreRootDir().exists()) {
            return;
        }
        AtomicFile sessionsIndexFile = prepareSessionsIndexFile();
        if (sessionsIndexFile == null) {
            Slog.wtf(BlobStoreConfig.TAG, "Error creating sessions index file");
            return;
        }
        if (!sessionsIndexFile.exists()) {
            Slog.w(BlobStoreConfig.TAG, "Sessions index file not available: " + sessionsIndexFile.getBaseFile());
            return;
        }
        this.mSessions.clear();
        try {
            FileInputStream fis = sessionsIndexFile.openRead();
            try {
                XmlPullParser in = Xml.newPullParser();
                in.setInput(fis, StandardCharsets.UTF_8.name());
                XmlUtils.beginDocument(in, "ss");
                int version = XmlUtils.readIntAttribute(in, "v");
                while (true) {
                    XmlUtils.nextElement(in);
                    if (in.getEventType() == 1) {
                        break;
                    }
                    if ("s".equals(in.getName()) && (session = BlobStoreSession.createFromXml(in, version, this.mContext, this.mSessionStateChangeListener)) != null) {
                        SparseArray<String> userPackages = allPackages.get(UserHandle.getUserId(session.getOwnerUid()));
                        if (userPackages != null && session.getOwnerPackageName().equals(userPackages.get(session.getOwnerUid()))) {
                            addSessionForUserLocked(session, UserHandle.getUserId(session.getOwnerUid()));
                        } else {
                            session.getSessionFile().delete();
                        }
                        this.mCurrentMaxSessionId = Math.max(this.mCurrentMaxSessionId, session.getSessionId());
                    }
                    Slog.wtf(BlobStoreConfig.TAG, "Error reading sessions data", e);
                }
                if (BlobStoreConfig.LOGV) {
                    Slog.v(BlobStoreConfig.TAG, "Finished reading sessions data");
                }
                if (fis != null) {
                    fis.close();
                }
            } catch (Throwable th) {
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            Slog.wtf(BlobStoreConfig.TAG, "Error reading sessions data", e);
        }
    }

    private void writeBlobsInfoLocked() throws Exception {
        AtomicFile blobsIndexFile = prepareBlobsIndexFile();
        if (blobsIndexFile == null) {
            Slog.wtf(BlobStoreConfig.TAG, "Error creating blobs index file");
            return;
        }
        FileOutputStream fos = null;
        try {
            fos = blobsIndexFile.startWrite(SystemClock.uptimeMillis());
            XmlSerializer out = new FastXmlSerializer();
            out.setOutput(fos, StandardCharsets.UTF_8.name());
            out.startDocument(null, true);
            out.startTag(null, "bs");
            XmlUtils.writeIntAttribute(out, "v", 5);
            int userCount = this.mBlobsMap.size();
            for (int i = 0; i < userCount; i++) {
                ArrayMap<BlobHandle, BlobMetadata> userBlobs = this.mBlobsMap.valueAt(i);
                int blobsCount = userBlobs.size();
                for (int j = 0; j < blobsCount; j++) {
                    out.startTag(null, "b");
                    userBlobs.valueAt(j).writeToXml(out);
                    out.endTag(null, "b");
                }
            }
            out.endTag(null, "bs");
            out.endDocument();
            blobsIndexFile.finishWrite(fos);
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Finished persisting blobs data");
            }
        } catch (Exception e) {
            blobsIndexFile.failWrite(fos);
            Slog.wtf(BlobStoreConfig.TAG, "Error writing blobs data", e);
            throw e;
        }
    }

    private void readBlobsInfoLocked(SparseArray<SparseArray<String>> allPackages) {
        if (!BlobStoreConfig.getBlobStoreRootDir().exists()) {
            return;
        }
        AtomicFile blobsIndexFile = prepareBlobsIndexFile();
        if (blobsIndexFile == null) {
            Slog.wtf(BlobStoreConfig.TAG, "Error creating blobs index file");
            return;
        }
        if (!blobsIndexFile.exists()) {
            Slog.w(BlobStoreConfig.TAG, "Blobs index file not available: " + blobsIndexFile.getBaseFile());
            return;
        }
        this.mBlobsMap.clear();
        try {
            FileInputStream fis = blobsIndexFile.openRead();
            try {
                XmlPullParser in = Xml.newPullParser();
                in.setInput(fis, StandardCharsets.UTF_8.name());
                XmlUtils.beginDocument(in, "bs");
                int version = XmlUtils.readIntAttribute(in, "v");
                while (true) {
                    XmlUtils.nextElement(in);
                    if (in.getEventType() == 1) {
                        break;
                    }
                    if ("b".equals(in.getName())) {
                        BlobMetadata blobMetadata = BlobMetadata.createFromXml(in, version, this.mContext);
                        SparseArray<String> userPackages = allPackages.get(blobMetadata.getUserId());
                        if (userPackages == null) {
                            blobMetadata.getBlobFile().delete();
                        } else {
                            addBlobForUserLocked(blobMetadata, blobMetadata.getUserId());
                            blobMetadata.removeCommittersFromUnknownPkgs(userPackages);
                            blobMetadata.removeLeaseesFromUnknownPkgs(userPackages);
                        }
                        this.mCurrentMaxSessionId = Math.max(this.mCurrentMaxSessionId, blobMetadata.getBlobId());
                    }
                    Slog.wtf(BlobStoreConfig.TAG, "Error reading blobs data", e);
                }
                if (BlobStoreConfig.LOGV) {
                    Slog.v(BlobStoreConfig.TAG, "Finished reading blobs data");
                }
                if (fis != null) {
                    fis.close();
                }
            } catch (Throwable th) {
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            Slog.wtf(BlobStoreConfig.TAG, "Error reading blobs data", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeBlobsInfo() {
        synchronized (this.mBlobsLock) {
            try {
                writeBlobsInfoLocked();
            } catch (Exception e) {
            }
        }
    }

    private void writeBlobsInfoAsync() {
        if (!this.mHandler.hasCallbacks(this.mSaveBlobsInfoRunnable)) {
            this.mHandler.post(this.mSaveBlobsInfoRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeBlobSessions() {
        synchronized (this.mBlobsLock) {
            try {
                writeBlobSessionsLocked();
            } catch (Exception e) {
            }
        }
    }

    private void writeBlobSessionsAsync() {
        if (!this.mHandler.hasCallbacks(this.mSaveSessionsRunnable)) {
            this.mHandler.post(this.mSaveSessionsRunnable);
        }
    }

    private int getPackageUid(String packageName, int userId) {
        int uid = this.mPackageManagerInternal.getPackageUid(packageName, 794624, userId);
        return uid;
    }

    private SparseArray<SparseArray<String>> getAllPackages() {
        SparseArray<SparseArray<String>> allPackages = new SparseArray<>();
        int[] allUsers = ((UserManagerInternal) LocalServices.getService(UserManagerInternal.class)).getUserIds();
        for (int userId : allUsers) {
            SparseArray<String> userPackages = new SparseArray<>();
            allPackages.put(userId, userPackages);
            List<ApplicationInfo> applicationInfos = this.mPackageManagerInternal.getInstalledApplications(794624, userId, Process.myUid());
            int count = applicationInfos.size();
            for (int i = 0; i < count; i++) {
                ApplicationInfo applicationInfo = applicationInfos.get(i);
                userPackages.put(applicationInfo.uid, applicationInfo.packageName);
            }
        }
        return allPackages;
    }

    AtomicFile prepareSessionsIndexFile() {
        File file = BlobStoreConfig.prepareSessionIndexFile();
        if (file == null) {
            return null;
        }
        return new AtomicFile(file, "session_index");
    }

    AtomicFile prepareBlobsIndexFile() {
        File file = BlobStoreConfig.prepareBlobsIndexFile();
        if (file == null) {
            return null;
        }
        return new AtomicFile(file, "blobs_index");
    }

    void handlePackageRemoved(final String packageName, final int uid) {
        synchronized (this.mBlobsLock) {
            LongSparseArray<BlobStoreSession> userSessions = getUserSessionsLocked(UserHandle.getUserId(uid));
            userSessions.removeIf(new LongObjPredicate() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$2ZHpH5ZDRRSHuy_N3z9hPQwEx90
                public final boolean test(long j, Object obj) {
                    return this.f$0.lambda$handlePackageRemoved$11$BlobStoreManagerService(uid, packageName, j, (BlobStoreSession) obj);
                }
            });
            writeBlobSessionsAsync();
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(UserHandle.getUserId(uid));
            userBlobs.entrySet().removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$TWF0Bwo734bxw9tNMpkLhvdMMSU
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$handlePackageRemoved$12$BlobStoreManagerService(packageName, uid, (Map.Entry) obj);
                }
            });
            writeBlobsInfoAsync();
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Removed blobs data associated with pkg=" + packageName + ", uid=" + uid);
            }
        }
    }

    public /* synthetic */ boolean lambda$handlePackageRemoved$11$BlobStoreManagerService(int uid, String packageName, long sessionId, BlobStoreSession blobStoreSession) {
        if (blobStoreSession.getOwnerUid() == uid && blobStoreSession.getOwnerPackageName().equals(packageName)) {
            deleteSessionLocked(blobStoreSession);
            return true;
        }
        return false;
    }

    public /* synthetic */ boolean lambda$handlePackageRemoved$12$BlobStoreManagerService(String packageName, int uid, Map.Entry entry) {
        BlobMetadata blobMetadata = (BlobMetadata) entry.getValue();
        boolean isACommitter = blobMetadata.isACommitter(packageName, uid);
        if (isACommitter) {
            blobMetadata.removeCommitter(packageName, uid);
        }
        blobMetadata.removeLeasee(packageName, uid);
        if (blobMetadata.shouldBeDeleted(isACommitter)) {
            deleteBlobLocked(blobMetadata);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleUserRemoved(int userId) {
        synchronized (this.mBlobsLock) {
            LongSparseArray<BlobStoreSession> userSessions = (LongSparseArray) this.mSessions.removeReturnOld(userId);
            if (userSessions != null) {
                int count = userSessions.size();
                for (int i = 0; i < count; i++) {
                    BlobStoreSession session = userSessions.valueAt(i);
                    deleteSessionLocked(session);
                }
            }
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = (ArrayMap) this.mBlobsMap.removeReturnOld(userId);
            if (userBlobs != null) {
                int count2 = userBlobs.size();
                for (int i2 = 0; i2 < count2; i2++) {
                    BlobMetadata blobMetadata = userBlobs.valueAt(i2);
                    deleteBlobLocked(blobMetadata);
                }
            }
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Removed blobs data in user " + userId);
            }
        }
    }

    void handleIdleMaintenanceLocked() {
        final ArrayList<Long> deletedBlobIds = new ArrayList<>();
        ArrayList<File> filesToDelete = new ArrayList<>();
        File blobsDir = BlobStoreConfig.getBlobsDir();
        if (blobsDir.exists()) {
            for (File file : blobsDir.listFiles()) {
                try {
                    long id = Long.parseLong(file.getName());
                    if (this.mActiveBlobIds.indexOf(Long.valueOf(id)) < 0) {
                        filesToDelete.add(file);
                        deletedBlobIds.add(Long.valueOf(id));
                    }
                } catch (NumberFormatException e) {
                    Slog.wtf(BlobStoreConfig.TAG, "Error parsing the file name: " + file, e);
                    filesToDelete.add(file);
                }
            }
            int count = filesToDelete.size();
            for (int i = 0; i < count; i++) {
                filesToDelete.get(i).delete();
            }
        }
        int userCount = this.mBlobsMap.size();
        for (int i2 = 0; i2 < userCount; i2++) {
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = this.mBlobsMap.valueAt(i2);
            userBlobs.entrySet().removeIf(new Predicate() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$18b1f2qn0MZ0gTodRtOLK4DIxak
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return this.f$0.lambda$handleIdleMaintenanceLocked$13$BlobStoreManagerService(deletedBlobIds, (Map.Entry) obj);
                }
            });
        }
        writeBlobsInfoAsync();
        int userCount2 = this.mSessions.size();
        for (int i3 = 0; i3 < userCount2; i3++) {
            LongSparseArray<BlobStoreSession> userSessions = this.mSessions.valueAt(i3);
            userSessions.removeIf(new LongObjPredicate() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$fjs0udzhS9kvgrvbBIWUr85tCdc
                public final boolean test(long j, Object obj) {
                    return this.f$0.lambda$handleIdleMaintenanceLocked$14$BlobStoreManagerService(deletedBlobIds, j, (BlobStoreSession) obj);
                }
            });
        }
        Slog.d(BlobStoreConfig.TAG, "Completed idle maintenance; deleted " + Arrays.toString(deletedBlobIds.toArray()));
        writeBlobSessionsAsync();
    }

    public /* synthetic */ boolean lambda$handleIdleMaintenanceLocked$13$BlobStoreManagerService(ArrayList deletedBlobIds, Map.Entry entry) {
        BlobMetadata blobMetadata = (BlobMetadata) entry.getValue();
        blobMetadata.removeExpiredLeases();
        if (blobMetadata.shouldBeDeleted(true)) {
            deleteBlobLocked(blobMetadata);
            deletedBlobIds.add(Long.valueOf(blobMetadata.getBlobId()));
            return true;
        }
        return false;
    }

    public /* synthetic */ boolean lambda$handleIdleMaintenanceLocked$14$BlobStoreManagerService(ArrayList deletedBlobIds, long sessionId, BlobStoreSession blobStoreSession) {
        boolean shouldRemove = false;
        if (blobStoreSession.isExpired()) {
            shouldRemove = true;
        }
        if (blobStoreSession.getBlobHandle().isExpired()) {
            shouldRemove = true;
        }
        if (shouldRemove) {
            deleteSessionLocked(blobStoreSession);
            deletedBlobIds.add(Long.valueOf(blobStoreSession.getSessionId()));
        }
        return shouldRemove;
    }

    private void deleteSessionLocked(BlobStoreSession blobStoreSession) {
        blobStoreSession.destroy();
        this.mActiveBlobIds.remove(Long.valueOf(blobStoreSession.getSessionId()));
    }

    private void deleteBlobLocked(BlobMetadata blobMetadata) {
        blobMetadata.destroy();
        this.mActiveBlobIds.remove(Long.valueOf(blobMetadata.getBlobId()));
    }

    void runClearAllSessions(int userId) {
        synchronized (this.mBlobsLock) {
            int userCount = this.mSessions.size();
            for (int i = 0; i < userCount; i++) {
                int sessionUserId = this.mSessions.keyAt(i);
                if (userId == -1 || userId == sessionUserId) {
                    LongSparseArray<BlobStoreSession> userSessions = this.mSessions.valueAt(i);
                    int sessionsCount = userSessions.size();
                    for (int j = 0; j < sessionsCount; j++) {
                        this.mActiveBlobIds.remove(Long.valueOf(userSessions.valueAt(j).getSessionId()));
                    }
                }
            }
            if (userId == -1) {
                this.mSessions.clear();
            } else {
                this.mSessions.remove(userId);
            }
            writeBlobSessionsAsync();
        }
    }

    void runClearAllBlobs(int userId) {
        synchronized (this.mBlobsLock) {
            int userCount = this.mBlobsMap.size();
            for (int i = 0; i < userCount; i++) {
                int blobUserId = this.mBlobsMap.keyAt(i);
                if (userId == -1 || userId == blobUserId) {
                    ArrayMap<BlobHandle, BlobMetadata> userBlobs = this.mBlobsMap.valueAt(i);
                    int blobsCount = userBlobs.size();
                    for (int j = 0; j < blobsCount; j++) {
                        this.mActiveBlobIds.remove(Long.valueOf(userBlobs.valueAt(j).getBlobId()));
                    }
                }
            }
            if (userId == -1) {
                this.mBlobsMap.clear();
            } else {
                this.mBlobsMap.remove(userId);
            }
            writeBlobsInfoAsync();
        }
    }

    void deleteBlob(BlobHandle blobHandle, int userId) {
        synchronized (this.mBlobsLock) {
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(userId);
            BlobMetadata blobMetadata = userBlobs.get(blobHandle);
            if (blobMetadata == null) {
                return;
            }
            deleteBlobLocked(blobMetadata);
            userBlobs.remove(blobHandle);
            writeBlobsInfoAsync();
        }
    }

    void runIdleMaintenance() {
        synchronized (this.mBlobsLock) {
            handleIdleMaintenanceLocked();
        }
    }

    boolean isBlobAvailable(long blobId, int userId) {
        synchronized (this.mBlobsLock) {
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(userId);
            for (BlobMetadata blobMetadata : userBlobs.values()) {
                if (blobMetadata.getBlobId() == blobId) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpSessionsLocked(IndentingPrintWriter fout, DumpArgs dumpArgs) {
        int userCount = this.mSessions.size();
        for (int i = 0; i < userCount; i++) {
            int userId = this.mSessions.keyAt(i);
            if (dumpArgs.shouldDumpUser(userId)) {
                LongSparseArray<BlobStoreSession> userSessions = this.mSessions.valueAt(i);
                fout.println("List of sessions in user #" + userId + " (" + userSessions.size() + "):");
                fout.increaseIndent();
                int sessionsCount = userSessions.size();
                for (int j = 0; j < sessionsCount; j++) {
                    long sessionId = userSessions.keyAt(j);
                    BlobStoreSession session = userSessions.valueAt(j);
                    if (dumpArgs.shouldDumpSession(session.getOwnerPackageName(), session.getOwnerUid(), session.getSessionId())) {
                        fout.println("Session #" + sessionId);
                        fout.increaseIndent();
                        session.dump(fout, dumpArgs);
                        fout.decreaseIndent();
                    }
                }
                fout.decreaseIndent();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpBlobsLocked(IndentingPrintWriter fout, DumpArgs dumpArgs) {
        int userCount = this.mBlobsMap.size();
        for (int i = 0; i < userCount; i++) {
            int userId = this.mBlobsMap.keyAt(i);
            if (dumpArgs.shouldDumpUser(userId)) {
                ArrayMap<BlobHandle, BlobMetadata> userBlobs = this.mBlobsMap.valueAt(i);
                fout.println("List of blobs in user #" + userId + " (" + userBlobs.size() + "):");
                fout.increaseIndent();
                int blobsCount = userBlobs.size();
                for (int j = 0; j < blobsCount; j++) {
                    BlobMetadata blobMetadata = userBlobs.valueAt(j);
                    if (dumpArgs.shouldDumpBlob(blobMetadata.getBlobId())) {
                        fout.println("Blob #" + blobMetadata.getBlobId());
                        fout.increaseIndent();
                        blobMetadata.dump(fout, dumpArgs);
                        fout.decreaseIndent();
                    }
                }
                fout.decreaseIndent();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class BlobStorageStatsAugmenter implements StorageStatsManagerInternal.StorageStatsAugmenter {
        private BlobStorageStatsAugmenter() {
        }

        @Override // com.android.server.usage.StorageStatsManagerInternal.StorageStatsAugmenter
        public void augmentStatsForPackage(PackageStats stats, final String packageName, int userId, final boolean callerHasStatsPermission) {
            final AtomicLong blobsDataSize = new AtomicLong(0L);
            BlobStoreManagerService.this.forEachSessionInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$GhVw0a697xZVb2EnlVEH3ay1XIs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BlobStoreManagerService.BlobStorageStatsAugmenter.lambda$augmentStatsForPackage$0(packageName, blobsDataSize, (BlobStoreSession) obj);
                }
            }, userId);
            BlobStoreManagerService.this.forEachBlobInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$fM2V16zpx9kvd0SPO_6PGqda1dE
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BlobStoreManagerService.BlobStorageStatsAugmenter.lambda$augmentStatsForPackage$1(packageName, callerHasStatsPermission, blobsDataSize, (BlobMetadata) obj);
                }
            }, userId);
            stats.dataSize += blobsDataSize.get();
        }

        static /* synthetic */ void lambda$augmentStatsForPackage$0(String packageName, AtomicLong blobsDataSize, BlobStoreSession session) {
            if (session.getOwnerPackageName().equals(packageName)) {
                blobsDataSize.getAndAdd(session.getSize());
            }
        }

        static /* synthetic */ void lambda$augmentStatsForPackage$1(String packageName, boolean callerHasStatsPermission, AtomicLong blobsDataSize, BlobMetadata blobMetadata) {
            if (blobMetadata.isALeasee(packageName)) {
                if (!blobMetadata.hasOtherLeasees(packageName) || !callerHasStatsPermission) {
                    blobsDataSize.getAndAdd(blobMetadata.getSize());
                }
            }
        }

        @Override // com.android.server.usage.StorageStatsManagerInternal.StorageStatsAugmenter
        public void augmentStatsForUid(PackageStats stats, final int uid, final boolean callerHasStatsPermission) {
            int userId = UserHandle.getUserId(uid);
            final AtomicLong blobsDataSize = new AtomicLong(0L);
            BlobStoreManagerService.this.forEachSessionInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$6I1rElEek_dg0VKSQnT1Yv3L_Jc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BlobStoreManagerService.BlobStorageStatsAugmenter.lambda$augmentStatsForUid$2(uid, blobsDataSize, (BlobStoreSession) obj);
                }
            }, userId);
            BlobStoreManagerService.this.forEachBlobInUser(new Consumer() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$BlobStorageStatsAugmenter$0zcnKAvYvqcqFWqqTcwfqNcNkq8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    BlobStoreManagerService.BlobStorageStatsAugmenter.lambda$augmentStatsForUid$3(uid, callerHasStatsPermission, blobsDataSize, (BlobMetadata) obj);
                }
            }, userId);
            stats.dataSize += blobsDataSize.get();
        }

        static /* synthetic */ void lambda$augmentStatsForUid$2(int uid, AtomicLong blobsDataSize, BlobStoreSession session) {
            if (session.getOwnerUid() == uid) {
                blobsDataSize.getAndAdd(session.getSize());
            }
        }

        static /* synthetic */ void lambda$augmentStatsForUid$3(int uid, boolean callerHasStatsPermission, AtomicLong blobsDataSize, BlobMetadata blobMetadata) {
            if (blobMetadata.isALeasee(uid)) {
                if (!blobMetadata.hasOtherLeasees(uid) || !callerHasStatsPermission) {
                    blobsDataSize.getAndAdd(blobMetadata.getSize());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forEachSessionInUser(Consumer<BlobStoreSession> consumer, int userId) {
        synchronized (this.mBlobsLock) {
            LongSparseArray<BlobStoreSession> userSessions = getUserSessionsLocked(userId);
            int count = userSessions.size();
            for (int i = 0; i < count; i++) {
                BlobStoreSession session = userSessions.valueAt(i);
                consumer.accept(session);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void forEachBlobInUser(Consumer<BlobMetadata> consumer, int userId) {
        synchronized (this.mBlobsLock) {
            ArrayMap<BlobHandle, BlobMetadata> userBlobs = getUserBlobsLocked(userId);
            int count = userBlobs.size();
            for (int i = 0; i < count; i++) {
                BlobMetadata blobMetadata = userBlobs.valueAt(i);
                consumer.accept(blobMetadata);
            }
        }
    }

    private class PackageChangedReceiver extends BroadcastReceiver {
        private PackageChangedReceiver() {
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0043  */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            byte b;
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Received " + intent);
            }
            String action = intent.getAction();
            int iHashCode = action.hashCode();
            if (iHashCode != 267468725) {
                if (iHashCode == 1580442797 && action.equals("android.intent.action.PACKAGE_FULLY_REMOVED")) {
                    b = 0;
                } else {
                    b = -1;
                }
            } else if (action.equals("android.intent.action.PACKAGE_DATA_CLEARED")) {
                b = 1;
            } else {
                b = -1;
            }
            if (b == 0 || b == 1) {
                String packageName = intent.getData().getSchemeSpecificPart();
                if (packageName == null) {
                    Slog.wtf(BlobStoreConfig.TAG, "Package name is missing in the intent: " + intent);
                    return;
                }
                int uid = intent.getIntExtra("android.intent.extra.UID", -1);
                if (uid == -1) {
                    Slog.wtf(BlobStoreConfig.TAG, "uid is missing in the intent: " + intent);
                    return;
                }
                BlobStoreManagerService.this.handlePackageRemoved(packageName, uid);
                return;
            }
            Slog.wtf(BlobStoreConfig.TAG, "Received unknown intent: " + intent);
        }
    }

    private class UserActionReceiver extends BroadcastReceiver {
        private UserActionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BlobStoreConfig.LOGV) {
                Slog.v(BlobStoreConfig.TAG, "Received: " + intent);
            }
            String action = intent.getAction();
            byte b = -1;
            if (action.hashCode() == -2061058799 && action.equals("android.intent.action.USER_REMOVED")) {
                b = 0;
            }
            if (b == 0) {
                int userId = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                if (userId != -10000) {
                    BlobStoreManagerService.this.handleUserRemoved(userId);
                    return;
                }
                Slog.wtf(BlobStoreConfig.TAG, "userId is missing in the intent: " + intent);
                return;
            }
            Slog.wtf(BlobStoreConfig.TAG, "Received unknown intent: " + intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class Stub extends IBlobStoreManager.Stub {
        private Stub() {
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
        public long createSession(BlobHandle blobHandle, String packageName) throws ParcelableException {
            Objects.requireNonNull(blobHandle, "blobHandle must not be null");
            blobHandle.assertIsValid();
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            if (!Process.isIsolated(callingUid) && !BlobStoreManagerService.this.mPackageManagerInternal.isInstantApp(packageName, UserHandle.getUserId(callingUid))) {
                try {
                    return BlobStoreManagerService.this.createSessionInternal(blobHandle, callingUid, packageName);
                } catch (LimitExceededException e) {
                    throw new ParcelableException(e);
                }
            }
            throw new SecurityException("Caller not allowed to create session; callingUid=" + callingUid + ", callingPackage=" + packageName);
        }

        public IBlobStoreSession openSession(long sessionId, String packageName) {
            Preconditions.checkArgumentPositive(sessionId, "sessionId must be positive: " + sessionId);
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            return BlobStoreManagerService.this.openSessionInternal(sessionId, callingUid, packageName);
        }

        public void abandonSession(long sessionId, String packageName) {
            Preconditions.checkArgumentPositive(sessionId, "sessionId must be positive: " + sessionId);
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            BlobStoreManagerService.this.abandonSessionInternal(sessionId, callingUid, packageName);
        }

        public ParcelFileDescriptor openBlob(BlobHandle blobHandle, String packageName) {
            Objects.requireNonNull(blobHandle, "blobHandle must not be null");
            blobHandle.assertIsValid();
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            if (!Process.isIsolated(callingUid) && !BlobStoreManagerService.this.mPackageManagerInternal.isInstantApp(packageName, UserHandle.getUserId(callingUid))) {
                try {
                    return BlobStoreManagerService.this.openBlobInternal(blobHandle, callingUid, packageName);
                } catch (IOException e) {
                    throw ExceptionUtils.wrap(e);
                }
            }
            throw new SecurityException("Caller not allowed to open blob; callingUid=" + callingUid + ", callingPackage=" + packageName);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
        public void acquireLease(BlobHandle blobHandle, int descriptionResId, CharSequence description, long leaseExpiryTimeMillis, String packageName) throws ParcelableException {
            Objects.requireNonNull(blobHandle, "blobHandle must not be null");
            blobHandle.assertIsValid();
            Preconditions.checkArgument(ResourceId.isValid(descriptionResId) || description != null, "Description must be valid; descriptionId=" + descriptionResId + ", description=" + ((Object) description));
            Preconditions.checkArgumentNonnegative(leaseExpiryTimeMillis, "leaseExpiryTimeMillis must not be negative");
            Objects.requireNonNull(packageName, "packageName must not be null");
            CharSequence description2 = BlobStoreConfig.getTruncatedLeaseDescription(description);
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            if (!Process.isIsolated(callingUid) && !BlobStoreManagerService.this.mPackageManagerInternal.isInstantApp(packageName, UserHandle.getUserId(callingUid))) {
                try {
                    BlobStoreManagerService.this.acquireLeaseInternal(blobHandle, descriptionResId, description2, leaseExpiryTimeMillis, callingUid, packageName);
                    return;
                } catch (Resources.NotFoundException e) {
                    throw new IllegalArgumentException(e);
                } catch (LimitExceededException e2) {
                    throw new ParcelableException(e2);
                }
            }
            throw new SecurityException("Caller not allowed to open blob; callingUid=" + callingUid + ", callingPackage=" + packageName);
        }

        public void releaseLease(BlobHandle blobHandle, String packageName) {
            Objects.requireNonNull(blobHandle, "blobHandle must not be null");
            blobHandle.assertIsValid();
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            if (!Process.isIsolated(callingUid) && !BlobStoreManagerService.this.mPackageManagerInternal.isInstantApp(packageName, UserHandle.getUserId(callingUid))) {
                BlobStoreManagerService.this.releaseLeaseInternal(blobHandle, callingUid, packageName);
                return;
            }
            throw new SecurityException("Caller not allowed to open blob; callingUid=" + callingUid + ", callingPackage=" + packageName);
        }

        public long getRemainingLeaseQuotaBytes(String packageName) {
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            return BlobStoreManagerService.this.getRemainingLeaseQuotaBytesInternal(callingUid, packageName);
        }

        public void waitForIdle(final RemoteCallback remoteCallback) {
            Objects.requireNonNull(remoteCallback, "remoteCallback must not be null");
            BlobStoreManagerService.this.mContext.enforceCallingOrSelfPermission("android.permission.DUMP", "Caller is not allowed to call this; caller=" + Binder.getCallingUid());
            BlobStoreManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$Stub$JZxuUmbjRd3Yb5IYUT6J1m14zis
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$waitForIdle$1$BlobStoreManagerService$Stub(remoteCallback);
                }
            });
        }

        public /* synthetic */ void lambda$waitForIdle$1$BlobStoreManagerService$Stub(final RemoteCallback remoteCallback) {
            BlobStoreManagerService.this.mBackgroundHandler.post(new Runnable() { // from class: com.android.server.blob.-$$Lambda$BlobStoreManagerService$Stub$mVXWAa695LfE4TlN6SGB9gG_po0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$waitForIdle$0$BlobStoreManagerService$Stub(remoteCallback);
                }
            });
        }

        public /* synthetic */ void lambda$waitForIdle$0$BlobStoreManagerService$Stub(final RemoteCallback remoteCallback) {
            Handler handler = BlobStoreManagerService.this.mHandler;
            Objects.requireNonNull(remoteCallback);
            handler.post(PooledLambda.obtainRunnable(new Consumer() { // from class: com.android.server.blob.-$$Lambda$ZsFzoG2loyqNOR2cNbo-thrNK5c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    remoteCallback.sendResult((Bundle) obj);
                }
            }, (Object) null).recycleOnUse());
        }

        public List<BlobInfo> queryBlobsForUser(int userId) {
            if (Binder.getCallingUid() != 1000) {
                throw new SecurityException("Only system uid is allowed to call queryBlobsForUser()");
            }
            int resolvedUserId = userId == -2 ? ActivityManager.getCurrentUser() : userId;
            ActivityManagerInternal amInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
            amInternal.ensureNotSpecialUser(resolvedUserId);
            return BlobStoreManagerService.this.queryBlobsForUserInternal(resolvedUserId);
        }

        public void deleteBlob(long blobId) {
            int callingUid = Binder.getCallingUid();
            if (callingUid == 1000) {
                BlobStoreManagerService.this.deleteBlobInternal(blobId, callingUid);
                return;
            }
            throw new SecurityException("Only system uid is allowed to call deleteBlob()");
        }

        public List<BlobHandle> getLeasedBlobs(String packageName) {
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            return BlobStoreManagerService.this.getLeasedBlobsInternal(callingUid, packageName);
        }

        public LeaseInfo getLeaseInfo(BlobHandle blobHandle, String packageName) {
            Objects.requireNonNull(blobHandle, "blobHandle must not be null");
            blobHandle.assertIsValid();
            Objects.requireNonNull(packageName, "packageName must not be null");
            int callingUid = Binder.getCallingUid();
            BlobStoreManagerService.this.verifyCallingPackage(callingUid, packageName);
            if (!Process.isIsolated(callingUid) && !BlobStoreManagerService.this.mPackageManagerInternal.isInstantApp(packageName, UserHandle.getUserId(callingUid))) {
                return BlobStoreManagerService.this.getLeaseInfoInternal(blobHandle, callingUid, packageName);
            }
            throw new SecurityException("Caller not allowed to open blob; callingUid=" + callingUid + ", callingPackage=" + packageName);
        }

        public void dump(FileDescriptor fd, PrintWriter writer, String[] args) {
            if (DumpUtils.checkDumpAndUsageStatsPermission(BlobStoreManagerService.this.mContext, BlobStoreConfig.TAG, writer)) {
                DumpArgs dumpArgs = DumpArgs.parse(args);
                IndentingPrintWriter fout = new IndentingPrintWriter(writer, "    ");
                if (!dumpArgs.shouldDumpHelp()) {
                    synchronized (BlobStoreManagerService.this.mBlobsLock) {
                        if (dumpArgs.shouldDumpAllSections()) {
                            fout.println("mCurrentMaxSessionId: " + BlobStoreManagerService.this.mCurrentMaxSessionId);
                            fout.println();
                        }
                        if (dumpArgs.shouldDumpSessions()) {
                            BlobStoreManagerService.this.dumpSessionsLocked(fout, dumpArgs);
                            fout.println();
                        }
                        if (dumpArgs.shouldDumpBlobs()) {
                            BlobStoreManagerService.this.dumpBlobsLocked(fout, dumpArgs);
                            fout.println();
                        }
                    }
                    if (dumpArgs.shouldDumpConfig()) {
                        fout.println("BlobStore config:");
                        fout.increaseIndent();
                        BlobStoreConfig.dump(fout, BlobStoreManagerService.this.mContext);
                        fout.decreaseIndent();
                        fout.println();
                        return;
                    }
                    return;
                }
                writer.println("dumpsys blob_store [options]:");
                fout.increaseIndent();
                dumpArgs.dumpArgsUsage(fout);
                fout.decreaseIndent();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int handleShellCommand(ParcelFileDescriptor in, ParcelFileDescriptor out, ParcelFileDescriptor err, String[] args) {
            return new BlobStoreManagerShellCommand(BlobStoreManagerService.this).exec(this, in.getFileDescriptor(), out.getFileDescriptor(), err.getFileDescriptor(), args);
        }
    }

    static final class DumpArgs {
        private static final int FLAG_DUMP_BLOBS = 2;
        private static final int FLAG_DUMP_CONFIG = 4;
        private static final int FLAG_DUMP_SESSIONS = 1;
        private boolean mDumpAll;
        private boolean mDumpHelp;
        private boolean mDumpUnredacted;
        private int mSelectedSectionFlags;
        private final ArrayList<String> mDumpPackages = new ArrayList<>();
        private final ArrayList<Integer> mDumpUids = new ArrayList<>();
        private final ArrayList<Integer> mDumpUserIds = new ArrayList<>();
        private final ArrayList<Long> mDumpBlobIds = new ArrayList<>();

        public boolean shouldDumpSession(String packageName, int uid, long blobId) {
            if (!CollectionUtils.isEmpty(this.mDumpPackages) && this.mDumpPackages.indexOf(packageName) < 0) {
                return false;
            }
            if (CollectionUtils.isEmpty(this.mDumpUids) || this.mDumpUids.indexOf(Integer.valueOf(uid)) >= 0) {
                return CollectionUtils.isEmpty(this.mDumpBlobIds) || this.mDumpBlobIds.indexOf(Long.valueOf(blobId)) >= 0;
            }
            return false;
        }

        public boolean shouldDumpAllSections() {
            return this.mDumpAll || this.mSelectedSectionFlags == 0;
        }

        public void allowDumpSessions() {
            this.mSelectedSectionFlags |= 1;
        }

        public boolean shouldDumpSessions() {
            return shouldDumpAllSections() || (this.mSelectedSectionFlags & 1) != 0;
        }

        public void allowDumpBlobs() {
            this.mSelectedSectionFlags |= 2;
        }

        public boolean shouldDumpBlobs() {
            return shouldDumpAllSections() || (this.mSelectedSectionFlags & 2) != 0;
        }

        public void allowDumpConfig() {
            this.mSelectedSectionFlags |= 4;
        }

        public boolean shouldDumpConfig() {
            return shouldDumpAllSections() || (this.mSelectedSectionFlags & 4) != 0;
        }

        public boolean shouldDumpBlob(long blobId) {
            return CollectionUtils.isEmpty(this.mDumpBlobIds) || this.mDumpBlobIds.indexOf(Long.valueOf(blobId)) >= 0;
        }

        public boolean shouldDumpFull() {
            return this.mDumpUnredacted;
        }

        public boolean shouldDumpUser(int userId) {
            return CollectionUtils.isEmpty(this.mDumpUserIds) || this.mDumpUserIds.indexOf(Integer.valueOf(userId)) >= 0;
        }

        public boolean shouldDumpHelp() {
            return this.mDumpHelp;
        }

        private DumpArgs() {
        }

        public static DumpArgs parse(String[] args) {
            DumpArgs dumpArgs = new DumpArgs();
            if (args == null) {
                return dumpArgs;
            }
            int i = 0;
            while (i < args.length) {
                String opt = args[i];
                if ("--all".equals(opt) || "-a".equals(opt)) {
                    dumpArgs.mDumpAll = true;
                } else if ("--unredacted".equals(opt) || "-u".equals(opt)) {
                    int callingUid = Binder.getCallingUid();
                    if (callingUid == 2000 || callingUid == 0) {
                        dumpArgs.mDumpUnredacted = true;
                    }
                } else if ("--sessions".equals(opt)) {
                    dumpArgs.allowDumpSessions();
                } else if ("--blobs".equals(opt)) {
                    dumpArgs.allowDumpBlobs();
                } else if ("--config".equals(opt)) {
                    dumpArgs.allowDumpConfig();
                } else if ("--package".equals(opt) || "-p".equals(opt)) {
                    i++;
                    dumpArgs.mDumpPackages.add(getStringArgRequired(args, i, "packageName"));
                } else if ("--uid".equals(opt)) {
                    i++;
                    dumpArgs.mDumpUids.add(Integer.valueOf(getIntArgRequired(args, i, WatchlistLoggingHandler.WatchlistEventKeys.UID)));
                } else if ("--user".equals(opt)) {
                    i++;
                    dumpArgs.mDumpUserIds.add(Integer.valueOf(getIntArgRequired(args, i, "userId")));
                } else if ("--blob".equals(opt) || "-b".equals(opt)) {
                    i++;
                    dumpArgs.mDumpBlobIds.add(Long.valueOf(getLongArgRequired(args, i, "blobId")));
                } else if ("--help".equals(opt) || "-h".equals(opt)) {
                    dumpArgs.mDumpHelp = true;
                } else {
                    dumpArgs.mDumpBlobIds.add(Long.valueOf(getLongArgRequired(args, i, "blobId")));
                }
                i++;
            }
            return dumpArgs;
        }

        private static String getStringArgRequired(String[] args, int index, String argName) {
            if (index >= args.length) {
                throw new IllegalArgumentException("Missing " + argName);
            }
            return args[index];
        }

        private static int getIntArgRequired(String[] args, int index, String argName) {
            if (index >= args.length) {
                throw new IllegalArgumentException("Missing " + argName);
            }
            try {
                int value = Integer.parseInt(args[index]);
                return value;
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Invalid " + argName + ": " + args[index]);
            }
        }

        private static long getLongArgRequired(String[] args, int index, String argName) {
            if (index >= args.length) {
                throw new IllegalArgumentException("Missing " + argName);
            }
            try {
                long value = Long.parseLong(args[index]);
                return value;
            } catch (NumberFormatException e) {
                throw new IllegalArgumentException("Invalid " + argName + ": " + args[index]);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dumpArgsUsage(IndentingPrintWriter pw) {
            pw.println("--help | -h");
            printWithIndent(pw, "Dump this help text");
            pw.println("--sessions");
            printWithIndent(pw, "Dump only the sessions info");
            pw.println("--blobs");
            printWithIndent(pw, "Dump only the committed blobs info");
            pw.println("--config");
            printWithIndent(pw, "Dump only the config values");
            pw.println("--package | -p [package-name]");
            printWithIndent(pw, "Dump blobs info associated with the given package");
            pw.println("--uid | -u [uid]");
            printWithIndent(pw, "Dump blobs info associated with the given uid");
            pw.println("--user [user-id]");
            printWithIndent(pw, "Dump blobs info in the given user");
            pw.println("--blob | -b [session-id | blob-id]");
            printWithIndent(pw, "Dump blob info corresponding to the given ID");
            pw.println("--full | -f");
            printWithIndent(pw, "Dump full unredacted blobs data");
        }

        private void printWithIndent(IndentingPrintWriter pw, String str) {
            pw.increaseIndent();
            pw.println(str);
            pw.decreaseIndent();
        }
    }

    private void registerBlobStorePuller() {
        this.mStatsManager.setPullAtomCallback(10081, (StatsManager.PullAtomMetadata) null, BackgroundThread.getExecutor(), this.mStatsCallbackImpl);
    }

    private class StatsPullAtomCallbackImpl implements StatsManager.StatsPullAtomCallback {
        private StatsPullAtomCallbackImpl() {
        }

        public int onPullAtom(int atomTag, List<StatsEvent> data) {
            if (atomTag == 10081) {
                return BlobStoreManagerService.this.pullBlobData(atomTag, data);
            }
            throw new UnsupportedOperationException("Unknown tagId=" + atomTag);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int pullBlobData(int atomTag, List<StatsEvent> data) {
        synchronized (this.mBlobsLock) {
            int userCount = this.mBlobsMap.size();
            for (int i = 0; i < userCount; i++) {
                ArrayMap<BlobHandle, BlobMetadata> userBlobs = this.mBlobsMap.valueAt(i);
                int blobsCount = userBlobs.size();
                for (int j = 0; j < blobsCount; j++) {
                    BlobMetadata blob = userBlobs.valueAt(j);
                    data.add(blob.dumpAsStatsEvent(atomTag));
                }
            }
        }
        return 0;
    }

    private class LocalService extends BlobStoreManagerInternal {
        private LocalService() {
        }

        @Override // com.android.server.blob.BlobStoreManagerInternal
        public void onIdleMaintenance() {
            BlobStoreManagerService.this.runIdleMaintenance();
        }
    }

    static class Injector {
        Injector() {
        }

        public Handler initializeMessageHandler() {
            return BlobStoreManagerService.initializeMessageHandler();
        }

        public Handler getBackgroundHandler() {
            return BackgroundThread.getHandler();
        }
    }
}
