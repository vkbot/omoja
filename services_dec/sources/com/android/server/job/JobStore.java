package com.android.server.job;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Environment;
import android.os.Handler;
import android.os.PersistableBundle;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.format.DateUtils;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.BitUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.server.IoThread;
import com.android.server.content.SyncJobService;
import com.android.server.job.controllers.JobStatus;
import com.android.server.net.watchlist.WatchlistLoggingHandler;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.Settings;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class JobStore {
    private static final int JOBS_FILE_VERSION = 0;
    private static final long JOB_PERSIST_DELAY = 2000;
    private static final String TAG = "JobStore";
    private static final String XML_TAG_EXTRAS = "extras";
    private static final String XML_TAG_ONEOFF = "one-off";
    private static final String XML_TAG_PARAMS_CONSTRAINTS = "constraints";
    private static final String XML_TAG_PERIODIC = "periodic";
    private static JobStore sSingleton;
    final Context mContext;
    final JobSet mJobSet;
    private final AtomicFile mJobsFile;
    final Object mLock;
    private boolean mRtcGood;
    private boolean mWriteInProgress;
    private boolean mWriteScheduled;
    private final long mXmlTimestamp;
    private static final boolean DEBUG = JobSchedulerService.DEBUG;
    private static final Object sSingletonLock = new Object();
    private final Handler mIoHandler = IoThread.getHandler();
    private JobSchedulerInternal.JobStorePersistStats mPersistInfo = new JobSchedulerInternal.JobStorePersistStats();
    private final Runnable mWriteRunnable = new AnonymousClass1();
    final Object mWriteScheduleLock = new Object();

    static JobStore initAndGet(JobSchedulerService jobManagerService) {
        JobStore jobStore;
        synchronized (sSingletonLock) {
            if (sSingleton == null) {
                sSingleton = new JobStore(jobManagerService.getContext(), jobManagerService.getLock(), Environment.getDataDirectory());
            }
            jobStore = sSingleton;
        }
        return jobStore;
    }

    public static JobStore initAndGetForTesting(Context context, File dataDir) {
        JobStore jobStoreUnderTest = new JobStore(context, new Object(), dataDir);
        jobStoreUnderTest.clear();
        return jobStoreUnderTest;
    }

    private JobStore(Context context, Object lock, File dataDir) {
        this.mLock = lock;
        this.mContext = context;
        File systemDir = new File(dataDir, "system");
        File jobDir = new File(systemDir, "job");
        jobDir.mkdirs();
        this.mJobsFile = new AtomicFile(new File(jobDir, "jobs.xml"), "jobs");
        this.mJobSet = new JobSet();
        this.mXmlTimestamp = this.mJobsFile.getLastModifiedTime();
        boolean z = JobSchedulerService.sSystemClock.millis() > this.mXmlTimestamp;
        this.mRtcGood = z;
        readJobMapFromDisk(this.mJobSet, z);
    }

    public boolean jobTimesInflatedValid() {
        return this.mRtcGood;
    }

    public boolean clockNowValidToInflate(long now) {
        return now >= this.mXmlTimestamp;
    }

    public void getRtcCorrectedJobsLocked(final ArrayList<JobStatus> toAdd, final ArrayList<JobStatus> toRemove) {
        final long elapsedNow = JobSchedulerService.sElapsedRealtimeClock.millis();
        forEachJob(new Consumer() { // from class: com.android.server.job.-$$Lambda$JobStore$apkqpwp0Wau6LvC-MCNG2GidMkM
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                JobStore.lambda$getRtcCorrectedJobsLocked$0(elapsedNow, toAdd, toRemove, (JobStatus) obj);
            }
        });
    }

    static /* synthetic */ void lambda$getRtcCorrectedJobsLocked$0(long elapsedNow, ArrayList toAdd, ArrayList toRemove, JobStatus job) {
        Pair<Long, Long> utcTimes = job.getPersistedUtcTimes();
        if (utcTimes != null) {
            Pair<Long, Long> elapsedRuntimes = convertRtcBoundsToElapsed(utcTimes, elapsedNow);
            JobStatus newJob = new JobStatus(job, ((Long) elapsedRuntimes.first).longValue(), ((Long) elapsedRuntimes.second).longValue(), 0, job.getLastSuccessfulRunTime(), job.getLastFailedRunTime());
            newJob.prepareLocked();
            toAdd.add(newJob);
            toRemove.add(job);
        }
    }

    public boolean add(JobStatus jobStatus) {
        boolean replaced = this.mJobSet.remove(jobStatus);
        this.mJobSet.add(jobStatus);
        if (jobStatus.isPersisted()) {
            maybeWriteStatusToDiskAsync();
        }
        if (DEBUG) {
            Slog.d(TAG, "Added job status to store: " + jobStatus);
        }
        return replaced;
    }

    boolean containsJob(JobStatus jobStatus) {
        return this.mJobSet.contains(jobStatus);
    }

    public int size() {
        return this.mJobSet.size();
    }

    public JobSchedulerInternal.JobStorePersistStats getPersistStats() {
        return this.mPersistInfo;
    }

    public int countJobsForUid(int uid) {
        return this.mJobSet.countJobsForUid(uid);
    }

    public boolean remove(JobStatus jobStatus, boolean removeFromPersisted) {
        boolean removed = this.mJobSet.remove(jobStatus);
        if (!removed) {
            if (DEBUG) {
                Slog.d(TAG, "Couldn't remove job: didn't exist: " + jobStatus);
                return false;
            }
            return false;
        }
        if (removeFromPersisted && jobStatus.isPersisted()) {
            maybeWriteStatusToDiskAsync();
        }
        return removed;
    }

    public void removeJobsOfNonUsers(int[] whitelist) {
        this.mJobSet.removeJobsOfNonUsers(whitelist);
    }

    public void clear() {
        this.mJobSet.clear();
        maybeWriteStatusToDiskAsync();
    }

    public List<JobStatus> getJobsByUser(int userHandle) {
        return this.mJobSet.getJobsByUser(userHandle);
    }

    public List<JobStatus> getJobsByUid(int uid) {
        return this.mJobSet.getJobsByUid(uid);
    }

    public JobStatus getJobByUidAndJobId(int uid, int jobId) {
        return this.mJobSet.get(uid, jobId);
    }

    public void forEachJob(Consumer<JobStatus> functor) {
        this.mJobSet.forEachJob((Predicate<JobStatus>) null, functor);
    }

    public void forEachJob(Predicate<JobStatus> filterPredicate, Consumer<JobStatus> functor) {
        this.mJobSet.forEachJob(filterPredicate, functor);
    }

    public void forEachJob(int uid, Consumer<JobStatus> functor) {
        this.mJobSet.forEachJob(uid, functor);
    }

    public void forEachJobForSourceUid(int sourceUid, Consumer<JobStatus> functor) {
        this.mJobSet.forEachJobForSourceUid(sourceUid, functor);
    }

    private void maybeWriteStatusToDiskAsync() {
        synchronized (this.mWriteScheduleLock) {
            if (!this.mWriteScheduled) {
                if (DEBUG) {
                    Slog.v(TAG, "Scheduling persist of jobs to disk.");
                }
                this.mIoHandler.postDelayed(this.mWriteRunnable, JOB_PERSIST_DELAY);
                this.mWriteInProgress = true;
                this.mWriteScheduled = true;
            }
        }
    }

    public void readJobMapFromDisk(JobSet jobSet, boolean rtcGood) {
        new ReadJobMapFromDiskRunnable(jobSet, rtcGood).run();
    }

    public void writeStatusToDiskForTesting() {
        synchronized (this.mWriteScheduleLock) {
            if (this.mWriteScheduled) {
                throw new IllegalStateException("An asynchronous write is already scheduled.");
            }
            this.mWriteInProgress = true;
            this.mWriteScheduled = true;
            this.mWriteRunnable.run();
        }
    }

    public boolean waitForWriteToCompleteForTesting(long maxWaitMillis) {
        long start = SystemClock.uptimeMillis();
        long end = start + maxWaitMillis;
        synchronized (this.mWriteScheduleLock) {
            while (this.mWriteInProgress) {
                long now = SystemClock.uptimeMillis();
                if (now >= end) {
                    return false;
                }
                try {
                    this.mWriteScheduleLock.wait((now - start) + maxWaitMillis);
                } catch (InterruptedException e) {
                }
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.android.server.job.JobStore$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            long startElapsed = JobSchedulerService.sElapsedRealtimeClock.millis();
            final List<JobStatus> storeCopy = new ArrayList<>();
            synchronized (JobStore.this.mWriteScheduleLock) {
                JobStore.this.mWriteScheduled = false;
            }
            synchronized (JobStore.this.mLock) {
                JobStore.this.mJobSet.forEachJob((Predicate<JobStatus>) null, new Consumer() { // from class: com.android.server.job.-$$Lambda$JobStore$1$Wgepg1oHZp0-Q01q1baIVZKWujU
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        JobStore.AnonymousClass1.lambda$run$0(storeCopy, (JobStatus) obj);
                    }
                });
            }
            writeJobsMapImpl(storeCopy);
            if (JobStore.DEBUG) {
                Slog.v(JobStore.TAG, "Finished writing, took " + (JobSchedulerService.sElapsedRealtimeClock.millis() - startElapsed) + "ms");
            }
            synchronized (JobStore.this.mWriteScheduleLock) {
                JobStore.this.mWriteInProgress = false;
                JobStore.this.mWriteScheduleLock.notifyAll();
            }
        }

        static /* synthetic */ void lambda$run$0(List storeCopy, JobStatus job) {
            if (job.isPersisted()) {
                storeCopy.add(new JobStatus(job));
            }
        }

        private void writeJobsMapImpl(List<JobStatus> jobList) throws Throwable {
            int numJobs = 0;
            int numSystemJobs = 0;
            int numSyncJobs = 0;
            try {
                try {
                    long startTime = SystemClock.uptimeMillis();
                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                    XmlSerializer fastXmlSerializer = new FastXmlSerializer();
                    fastXmlSerializer.setOutput(baos, StandardCharsets.UTF_8.name());
                    fastXmlSerializer.startDocument(null, true);
                    fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                    fastXmlSerializer.startTag(null, "job-info");
                    fastXmlSerializer.attribute(null, "version", Integer.toString(0));
                    for (int i = 0; i < jobList.size(); i++) {
                        try {
                            JobStatus jobStatus = jobList.get(i);
                            if (JobStore.DEBUG) {
                                Slog.d(JobStore.TAG, "Saving job " + jobStatus.getJobId());
                            }
                            fastXmlSerializer.startTag(null, "job");
                            addAttributesToJobTag(fastXmlSerializer, jobStatus);
                            writeConstraintsToXml(fastXmlSerializer, jobStatus);
                            writeExecutionCriteriaToXml(fastXmlSerializer, jobStatus);
                            writeBundleToXml(jobStatus.getJob().getExtras(), fastXmlSerializer);
                            fastXmlSerializer.endTag(null, "job");
                            numJobs++;
                            if (jobStatus.getUid() == 1000) {
                                numSystemJobs++;
                                if (JobStore.isSyncJob(jobStatus)) {
                                    numSyncJobs++;
                                }
                            }
                        } catch (IOException e) {
                            e = e;
                            if (JobStore.DEBUG) {
                                Slog.v(JobStore.TAG, "Error writing out job data.", e);
                            }
                            JobStore.this.mPersistInfo.countAllJobsSaved = numJobs;
                            JobStore.this.mPersistInfo.countSystemServerJobsSaved = numSystemJobs;
                            JobStore.this.mPersistInfo.countSystemSyncManagerJobsSaved = numSyncJobs;
                        } catch (XmlPullParserException e2) {
                            e = e2;
                            if (JobStore.DEBUG) {
                                Slog.d(JobStore.TAG, "Error persisting bundle.", e);
                            }
                            JobStore.this.mPersistInfo.countAllJobsSaved = numJobs;
                            JobStore.this.mPersistInfo.countSystemServerJobsSaved = numSystemJobs;
                            JobStore.this.mPersistInfo.countSystemSyncManagerJobsSaved = numSyncJobs;
                        }
                    }
                    fastXmlSerializer.endTag(null, "job-info");
                    fastXmlSerializer.endDocument();
                    FileOutputStream fos = JobStore.this.mJobsFile.startWrite(startTime);
                    fos.write(baos.toByteArray());
                    JobStore.this.mJobsFile.finishWrite(fos);
                } catch (Throwable th) {
                    th = th;
                    JobStore.this.mPersistInfo.countAllJobsSaved = numJobs;
                    JobStore.this.mPersistInfo.countSystemServerJobsSaved = numSystemJobs;
                    JobStore.this.mPersistInfo.countSystemSyncManagerJobsSaved = numSyncJobs;
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
            } catch (XmlPullParserException e4) {
                e = e4;
            } catch (Throwable th2) {
                th = th2;
                JobStore.this.mPersistInfo.countAllJobsSaved = numJobs;
                JobStore.this.mPersistInfo.countSystemServerJobsSaved = numSystemJobs;
                JobStore.this.mPersistInfo.countSystemSyncManagerJobsSaved = numSyncJobs;
                throw th;
            }
            JobStore.this.mPersistInfo.countAllJobsSaved = numJobs;
            JobStore.this.mPersistInfo.countSystemServerJobsSaved = numSystemJobs;
            JobStore.this.mPersistInfo.countSystemSyncManagerJobsSaved = numSyncJobs;
        }

        private void addAttributesToJobTag(XmlSerializer out, JobStatus jobStatus) throws IOException {
            out.attribute(null, "jobid", Integer.toString(jobStatus.getJobId()));
            out.attribute(null, Settings.ATTR_PACKAGE, jobStatus.getServiceComponent().getPackageName());
            out.attribute(null, "class", jobStatus.getServiceComponent().getClassName());
            if (jobStatus.getSourcePackageName() != null) {
                out.attribute(null, "sourcePackageName", jobStatus.getSourcePackageName());
            }
            if (jobStatus.getSourceTag() != null) {
                out.attribute(null, "sourceTag", jobStatus.getSourceTag());
            }
            out.attribute(null, "sourceUserId", String.valueOf(jobStatus.getSourceUserId()));
            out.attribute(null, WatchlistLoggingHandler.WatchlistEventKeys.UID, Integer.toString(jobStatus.getUid()));
            out.attribute(null, "priority", String.valueOf(jobStatus.getPriority()));
            out.attribute(null, "flags", String.valueOf(jobStatus.getFlags()));
            if (jobStatus.getInternalFlags() != 0) {
                out.attribute(null, "internalFlags", String.valueOf(jobStatus.getInternalFlags()));
            }
            out.attribute(null, "lastSuccessfulRunTime", String.valueOf(jobStatus.getLastSuccessfulRunTime()));
            out.attribute(null, "lastFailedRunTime", String.valueOf(jobStatus.getLastFailedRunTime()));
        }

        private void writeBundleToXml(PersistableBundle extras, XmlSerializer out) throws XmlPullParserException, IOException {
            out.startTag(null, JobStore.XML_TAG_EXTRAS);
            PersistableBundle extrasCopy = deepCopyBundle(extras, 10);
            extrasCopy.saveToXml(out);
            out.endTag(null, JobStore.XML_TAG_EXTRAS);
        }

        private PersistableBundle deepCopyBundle(PersistableBundle bundle, int maxDepth) {
            if (maxDepth <= 0) {
                return null;
            }
            PersistableBundle copy = (PersistableBundle) bundle.clone();
            Set<String> keySet = bundle.keySet();
            for (String key : keySet) {
                Object o = copy.get(key);
                if (o instanceof PersistableBundle) {
                    PersistableBundle bCopy = deepCopyBundle((PersistableBundle) o, maxDepth - 1);
                    copy.putPersistableBundle(key, bCopy);
                }
            }
            return copy;
        }

        private void writeConstraintsToXml(XmlSerializer out, JobStatus jobStatus) throws IOException {
            out.startTag(null, JobStore.XML_TAG_PARAMS_CONSTRAINTS);
            if (jobStatus.hasConnectivityConstraint()) {
                NetworkRequest network = jobStatus.getJob().getRequiredNetwork();
                out.attribute(null, "net-capabilities", Long.toString(BitUtils.packBits(network.networkCapabilities.getCapabilities())));
                out.attribute(null, "net-unwanted-capabilities", Long.toString(BitUtils.packBits(network.networkCapabilities.getUnwantedCapabilities())));
                out.attribute(null, "net-transport-types", Long.toString(BitUtils.packBits(network.networkCapabilities.getTransportTypes())));
            }
            if (jobStatus.hasIdleConstraint()) {
                out.attribute(null, "idle", Boolean.toString(true));
            }
            if (jobStatus.hasChargingConstraint()) {
                out.attribute(null, "charging", Boolean.toString(true));
            }
            if (jobStatus.hasBatteryNotLowConstraint()) {
                out.attribute(null, "battery-not-low", Boolean.toString(true));
            }
            if (jobStatus.hasStorageNotLowConstraint()) {
                out.attribute(null, "storage-not-low", Boolean.toString(true));
            }
            out.endTag(null, JobStore.XML_TAG_PARAMS_CONSTRAINTS);
        }

        private void writeExecutionCriteriaToXml(XmlSerializer out, JobStatus jobStatus) throws IOException {
            long delayWallclock;
            long deadlineWallclock;
            JobInfo job = jobStatus.getJob();
            if (jobStatus.getJob().isPeriodic()) {
                out.startTag(null, JobStore.XML_TAG_PERIODIC);
                out.attribute(null, "period", Long.toString(job.getIntervalMillis()));
                out.attribute(null, "flex", Long.toString(job.getFlexMillis()));
            } else {
                out.startTag(null, JobStore.XML_TAG_ONEOFF);
            }
            Pair<Long, Long> utcJobTimes = jobStatus.getPersistedUtcTimes();
            if (JobStore.DEBUG && utcJobTimes != null) {
                Slog.i(JobStore.TAG, "storing original UTC timestamps for " + jobStatus);
            }
            long nowRTC = JobSchedulerService.sSystemClock.millis();
            long nowElapsed = JobSchedulerService.sElapsedRealtimeClock.millis();
            if (jobStatus.hasDeadlineConstraint()) {
                if (utcJobTimes == null) {
                    deadlineWallclock = (jobStatus.getLatestRunTimeElapsed() - nowElapsed) + nowRTC;
                } else {
                    deadlineWallclock = ((Long) utcJobTimes.second).longValue();
                }
                out.attribute(null, "deadline", Long.toString(deadlineWallclock));
            }
            if (jobStatus.hasTimingDelayConstraint()) {
                if (utcJobTimes == null) {
                    delayWallclock = (jobStatus.getEarliestRunTime() - nowElapsed) + nowRTC;
                } else {
                    delayWallclock = ((Long) utcJobTimes.first).longValue();
                }
                out.attribute(null, "delay", Long.toString(delayWallclock));
            }
            if (jobStatus.getJob().getInitialBackoffMillis() != 30000 || jobStatus.getJob().getBackoffPolicy() != 1) {
                out.attribute(null, "backoff-policy", Integer.toString(job.getBackoffPolicy()));
                out.attribute(null, "initial-backoff", Long.toString(job.getInitialBackoffMillis()));
            }
            if (job.isPeriodic()) {
                out.endTag(null, JobStore.XML_TAG_PERIODIC);
            } else {
                out.endTag(null, JobStore.XML_TAG_ONEOFF);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Pair<Long, Long> convertRtcBoundsToElapsed(Pair<Long, Long> rtcTimes, long nowElapsed) {
        long earliest;
        long nowWallclock = JobSchedulerService.sSystemClock.millis();
        if (((Long) rtcTimes.first).longValue() > 0) {
            earliest = Math.max(((Long) rtcTimes.first).longValue() - nowWallclock, 0L) + nowElapsed;
        } else {
            earliest = 0;
        }
        long jLongValue = ((Long) rtcTimes.second).longValue();
        long jMax = JobStatus.NO_LATEST_RUNTIME;
        if (jLongValue < JobStatus.NO_LATEST_RUNTIME) {
            jMax = nowElapsed + Math.max(((Long) rtcTimes.second).longValue() - nowWallclock, 0L);
        }
        long latest = jMax;
        return Pair.create(Long.valueOf(earliest), Long.valueOf(latest));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSyncJob(JobStatus status) {
        return SyncJobService.class.getName().equals(status.getServiceComponent().getClassName());
    }

    private final class ReadJobMapFromDiskRunnable implements Runnable {
        private final JobSet jobSet;
        private final boolean rtcGood;

        ReadJobMapFromDiskRunnable(JobSet jobSet, boolean rtcIsGood) {
            this.jobSet = jobSet;
            this.rtcGood = rtcIsGood;
        }

        @Override // java.lang.Runnable
        public void run() {
            int numJobs = 0;
            int numSystemJobs = 0;
            int numSyncJobs = 0;
            try {
                try {
                    try {
                        FileInputStream fis = JobStore.this.mJobsFile.openRead();
                        synchronized (JobStore.this.mLock) {
                            List<JobStatus> jobs = readJobMapImpl(fis, this.rtcGood);
                            if (jobs != null) {
                                long now = JobSchedulerService.sElapsedRealtimeClock.millis();
                                for (int i = 0; i < jobs.size(); i++) {
                                    JobStatus js = jobs.get(i);
                                    js.prepareLocked();
                                    js.enqueueTime = now;
                                    this.jobSet.add(js);
                                    numJobs++;
                                    if (js.getUid() == 1000) {
                                        numSystemJobs++;
                                        if (JobStore.isSyncJob(js)) {
                                            numSyncJobs++;
                                        }
                                    }
                                }
                            }
                        }
                        fis.close();
                        if (JobStore.this.mPersistInfo.countAllJobsLoaded < 0) {
                            JobStore.this.mPersistInfo.countAllJobsLoaded = numJobs;
                            JobStore.this.mPersistInfo.countSystemServerJobsLoaded = numSystemJobs;
                            JobStore.this.mPersistInfo.countSystemSyncManagerJobsLoaded = numSyncJobs;
                        }
                    } catch (IOException | XmlPullParserException e) {
                        Slog.wtf(JobStore.TAG, "Error jobstore xml.", e);
                        if (JobStore.this.mPersistInfo.countAllJobsLoaded < 0) {
                        }
                    }
                } catch (FileNotFoundException e2) {
                    if (JobStore.DEBUG) {
                        Slog.d(JobStore.TAG, "Could not find jobs file, probably there was nothing to load.");
                    }
                    if (JobStore.this.mPersistInfo.countAllJobsLoaded < 0) {
                    }
                } catch (Exception e3) {
                    Slog.wtf(JobStore.TAG, "Unexpected exception", e3);
                    if (JobStore.this.mPersistInfo.countAllJobsLoaded < 0) {
                    }
                }
                Slog.i(JobStore.TAG, "Read " + numJobs + " jobs");
            } catch (Throwable th) {
                if (JobStore.this.mPersistInfo.countAllJobsLoaded < 0) {
                    JobStore.this.mPersistInfo.countAllJobsLoaded = 0;
                    JobStore.this.mPersistInfo.countSystemServerJobsLoaded = 0;
                    JobStore.this.mPersistInfo.countSystemSyncManagerJobsLoaded = 0;
                }
                throw th;
            }
        }

        private List<JobStatus> readJobMapImpl(FileInputStream fis, boolean rtcIsGood) throws XmlPullParserException, IOException {
            XmlPullParser parser = Xml.newPullParser();
            parser.setInput(fis, StandardCharsets.UTF_8.name());
            int eventType = parser.getEventType();
            while (eventType != 2 && eventType != 1) {
                eventType = parser.next();
                Slog.d(JobStore.TAG, "Start tag: " + parser.getName());
            }
            if (eventType == 1) {
                if (JobStore.DEBUG) {
                    Slog.d(JobStore.TAG, "No persisted jobs.");
                }
                return null;
            }
            String tagName = parser.getName();
            if (!"job-info".equals(tagName)) {
                return null;
            }
            List<JobStatus> jobs = new ArrayList<>();
            try {
                int version = Integer.parseInt(parser.getAttributeValue(null, "version"));
                if (version != 0) {
                    Slog.d(JobStore.TAG, "Invalid version number, aborting jobs file read.");
                    return null;
                }
                int eventType2 = parser.next();
                do {
                    if (eventType2 == 2) {
                        String tagName2 = parser.getName();
                        if ("job".equals(tagName2)) {
                            JobStatus persistedJob = restoreJobFromXml(rtcIsGood, parser);
                            if (persistedJob != null) {
                                if (JobStore.DEBUG) {
                                    Slog.d(JobStore.TAG, "Read out " + persistedJob);
                                }
                                jobs.add(persistedJob);
                            } else {
                                Slog.d(JobStore.TAG, "Error reading job from file.");
                            }
                        }
                    }
                    eventType2 = parser.next();
                } while (eventType2 != 1);
                return jobs;
            } catch (NumberFormatException e) {
                Slog.e(JobStore.TAG, "Invalid version number, aborting jobs file read.");
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r40v5 */
        /* JADX WARN: Type inference failed for: r43v0, types: [org.xmlpull.v1.XmlPullParser] */
        /* JADX WARN: Type inference failed for: r5v19 */
        /* JADX WARN: Type inference failed for: r5v23 */
        /* JADX WARN: Type inference failed for: r5v8, types: [com.android.server.job.controllers.JobStatus, java.lang.String] */
        private JobStatus restoreJobFromXml(boolean z, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
            int next;
            int next2;
            long jLongValue;
            Pair pair;
            int next3;
            ReadJobMapFromDiskRunnable readJobMapFromDiskRunnable = this;
            JobStatus jobStatus = null;
            try {
                JobInfo.Builder builderBuildBuilderFromXml = readJobMapFromDiskRunnable.buildBuilderFromXml(xmlPullParser);
                boolean z2 = true;
                builderBuildBuilderFromXml.setPersisted(true);
                int i = Integer.parseInt(xmlPullParser.getAttributeValue(null, WatchlistLoggingHandler.WatchlistEventKeys.UID));
                String attributeValue = xmlPullParser.getAttributeValue(null, "priority");
                if (attributeValue != null) {
                    builderBuildBuilderFromXml.setPriority(Integer.parseInt(attributeValue));
                }
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "flags");
                if (attributeValue2 != null) {
                    builderBuildBuilderFromXml.setFlags(Integer.parseInt(attributeValue2));
                }
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "internalFlags");
                int i2 = attributeValue3 != null ? Integer.parseInt(attributeValue3) : 0;
                String attributeValue4 = xmlPullParser.getAttributeValue(null, "sourceUserId");
                int i3 = attributeValue4 == null ? -1 : Integer.parseInt(attributeValue4);
                String attributeValue5 = xmlPullParser.getAttributeValue(null, "lastSuccessfulRunTime");
                long j = attributeValue5 == null ? 0L : Long.parseLong(attributeValue5);
                String attributeValue6 = xmlPullParser.getAttributeValue(null, "lastFailedRunTime");
                long j2 = attributeValue6 == null ? 0L : Long.parseLong(attributeValue6);
                String attributeValue7 = xmlPullParser.getAttributeValue(null, "sourcePackageName");
                String attributeValue8 = xmlPullParser.getAttributeValue(null, "sourceTag");
                while (true) {
                    next = xmlPullParser.next();
                    if (next != 4) {
                        break;
                    }
                    jobStatus = null;
                }
                int i4 = 2;
                if (next == 2 && JobStore.XML_TAG_PARAMS_CONSTRAINTS.equals(xmlPullParser.getName())) {
                    try {
                        readJobMapFromDiskRunnable.buildConstraintsFromXml(builderBuildBuilderFromXml, xmlPullParser);
                        xmlPullParser.next();
                        ?? r5 = jobStatus;
                        while (true) {
                            next2 = xmlPullParser.next();
                            if (next2 != 4) {
                                break;
                            }
                            i4 = i4;
                            z2 = z2;
                            r5 = r5;
                            readJobMapFromDiskRunnable = readJobMapFromDiskRunnable;
                        }
                        if (next2 != i4) {
                            return r5;
                        }
                        try {
                            Pair<Long, Long> pairBuildRtcExecutionTimesFromXml = readJobMapFromDiskRunnable.buildRtcExecutionTimesFromXml(xmlPullParser);
                            long jMillis = JobSchedulerService.sElapsedRealtimeClock.millis();
                            Pair pairConvertRtcBoundsToElapsed = JobStore.convertRtcBoundsToElapsed(pairBuildRtcExecutionTimesFromXml, jMillis);
                            if (JobStore.XML_TAG_PERIODIC.equals(xmlPullParser.getName())) {
                                try {
                                    long j3 = Long.parseLong(xmlPullParser.getAttributeValue(r5, "period"));
                                    String attributeValue9 = xmlPullParser.getAttributeValue(r5, "flex");
                                    if (attributeValue9 == null) {
                                        jLongValue = j3;
                                    } else {
                                        try {
                                            jLongValue = Long.valueOf(attributeValue9).longValue();
                                        } catch (NumberFormatException e) {
                                            Slog.d(JobStore.TAG, "Error reading periodic execution criteria, skipping.");
                                            return null;
                                        }
                                    }
                                    long j4 = jLongValue;
                                    try {
                                        builderBuildBuilderFromXml.setPeriodic(j3, j4);
                                        if (((Long) pairConvertRtcBoundsToElapsed.second).longValue() > jMillis + j3 + j4) {
                                            long j5 = jMillis + j4 + j3;
                                            long j6 = j5 - j4;
                                            Slog.w(JobStore.TAG, String.format("Periodic job for uid='%d' persisted run-time is too big [%s, %s]. Clamping to [%s,%s]", Integer.valueOf(i), DateUtils.formatElapsedTime(((Long) pairConvertRtcBoundsToElapsed.first).longValue() / 1000), DateUtils.formatElapsedTime(((Long) pairConvertRtcBoundsToElapsed.second).longValue() / 1000), DateUtils.formatElapsedTime(j6 / 1000), DateUtils.formatElapsedTime(j5 / 1000)));
                                            pairConvertRtcBoundsToElapsed = Pair.create(Long.valueOf(j6), Long.valueOf(j5));
                                        }
                                        pair = pairConvertRtcBoundsToElapsed;
                                    } catch (NumberFormatException e2) {
                                        Slog.d(JobStore.TAG, "Error reading periodic execution criteria, skipping.");
                                        return null;
                                    }
                                } catch (NumberFormatException e3) {
                                }
                            } else {
                                if (!JobStore.XML_TAG_ONEOFF.equals(xmlPullParser.getName())) {
                                    if (JobStore.DEBUG) {
                                        Slog.d(JobStore.TAG, "Invalid parameter tag, skipping - " + xmlPullParser.getName());
                                        return null;
                                    }
                                    return null;
                                }
                                try {
                                    if (((Long) pairConvertRtcBoundsToElapsed.first).longValue() != 0) {
                                        try {
                                            builderBuildBuilderFromXml.setMinimumLatency(((Long) pairConvertRtcBoundsToElapsed.first).longValue() - jMillis);
                                        } catch (NumberFormatException e4) {
                                            Slog.d(JobStore.TAG, "Error reading job execution criteria, skipping.");
                                            return null;
                                        }
                                    }
                                    if (((Long) pairConvertRtcBoundsToElapsed.second).longValue() != JobStatus.NO_LATEST_RUNTIME) {
                                        builderBuildBuilderFromXml.setOverrideDeadline(((Long) pairConvertRtcBoundsToElapsed.second).longValue() - jMillis);
                                    }
                                    pair = pairConvertRtcBoundsToElapsed;
                                } catch (NumberFormatException e5) {
                                }
                            }
                            maybeBuildBackoffPolicyFromXml(builderBuildBuilderFromXml, xmlPullParser);
                            xmlPullParser.nextTag();
                            do {
                                next3 = xmlPullParser.next();
                            } while (next3 == 4);
                            if (next3 != 2 || !JobStore.XML_TAG_EXTRAS.equals(xmlPullParser.getName())) {
                                if (JobStore.DEBUG) {
                                    Slog.d(JobStore.TAG, "Error reading extras, skipping.");
                                    return null;
                                }
                                return null;
                            }
                            try {
                                PersistableBundle persistableBundleRestoreFromXml = PersistableBundle.restoreFromXml(xmlPullParser);
                                builderBuildBuilderFromXml.setExtras(persistableBundleRestoreFromXml);
                                xmlPullParser.nextTag();
                                try {
                                    builderBuildBuilderFromXml.build();
                                    if (PackageManagerService.PLATFORM_PACKAGE_NAME.equals(attributeValue7) && persistableBundleRestoreFromXml != null && persistableBundleRestoreFromXml.getBoolean("SyncManagerJob", false)) {
                                        attributeValue7 = persistableBundleRestoreFromXml.getString("owningPackage", attributeValue7);
                                        if (JobStore.DEBUG) {
                                            Slog.i(JobStore.TAG, "Fixing up sync job source package name from 'android' to '" + attributeValue7 + "'");
                                        }
                                    }
                                    return new JobStatus(builderBuildBuilderFromXml.build(), i, attributeValue7, i3, JobSchedulerService.standbyBucketForPackage(attributeValue7, i3, jMillis), attributeValue8, ((Long) pair.first).longValue(), ((Long) pair.second).longValue(), j, j2, z ? null : pairBuildRtcExecutionTimesFromXml, i2);
                                } catch (Exception e6) {
                                    Slog.w(JobStore.TAG, "Unable to build job from XML, ignoring: " + builderBuildBuilderFromXml.summarize());
                                    return null;
                                }
                            } catch (IllegalArgumentException e7) {
                                Slog.e(JobStore.TAG, "Persisted extras contained invalid data", e7);
                                return null;
                            }
                        } catch (NumberFormatException e8) {
                            if (JobStore.DEBUG) {
                                Slog.d(JobStore.TAG, "Error parsing execution time parameters, skipping.");
                                return null;
                            }
                            return null;
                        }
                    } catch (IOException e9) {
                        JobStatus jobStatus2 = jobStatus;
                        Slog.d(JobStore.TAG, "Error I/O Exception.", e9);
                        return jobStatus2;
                    } catch (NumberFormatException e10) {
                        JobStatus jobStatus3 = jobStatus;
                        Slog.d(JobStore.TAG, "Error reading constraints, skipping.");
                        return jobStatus3;
                    } catch (IllegalArgumentException e11) {
                        JobStatus jobStatus4 = jobStatus;
                        Slog.e(JobStore.TAG, "Constraints contained invalid data", e11);
                        return jobStatus4;
                    } catch (XmlPullParserException e12) {
                        JobStatus jobStatus5 = jobStatus;
                        Slog.d(JobStore.TAG, "Error Parser Exception.", e12);
                        return jobStatus5;
                    }
                }
                return jobStatus;
            } catch (NumberFormatException e13) {
                Slog.e(JobStore.TAG, "Error parsing job's required fields, skipping");
                return null;
            }
        }

        private JobInfo.Builder buildBuilderFromXml(XmlPullParser parser) throws NumberFormatException {
            int jobId = Integer.parseInt(parser.getAttributeValue(null, "jobid"));
            String packageName = parser.getAttributeValue(null, Settings.ATTR_PACKAGE);
            String className = parser.getAttributeValue(null, "class");
            ComponentName cname = new ComponentName(packageName, className);
            return new JobInfo.Builder(jobId, cname);
        }

        private void buildConstraintsFromXml(JobInfo.Builder jobBuilder, XmlPullParser parser) throws XmlPullParserException, IOException {
            long unwantedCapabilities;
            String netCapabilities = parser.getAttributeValue(null, "net-capabilities");
            String netUnwantedCapabilities = parser.getAttributeValue(null, "net-unwanted-capabilities");
            String netTransportTypes = parser.getAttributeValue(null, "net-transport-types");
            if (netCapabilities == null || netTransportTypes == null) {
                String val = parser.getAttributeValue(null, "connectivity");
                if (val != null) {
                    jobBuilder.setRequiredNetworkType(1);
                }
                String val2 = parser.getAttributeValue(null, "metered");
                if (val2 != null) {
                    jobBuilder.setRequiredNetworkType(4);
                }
                String val3 = parser.getAttributeValue(null, "unmetered");
                if (val3 != null) {
                    jobBuilder.setRequiredNetworkType(2);
                }
                String val4 = parser.getAttributeValue(null, "not-roaming");
                if (val4 != null) {
                    jobBuilder.setRequiredNetworkType(3);
                }
            } else {
                NetworkRequest request = new NetworkRequest.Builder().build();
                if (netUnwantedCapabilities != null) {
                    unwantedCapabilities = Long.parseLong(netUnwantedCapabilities);
                } else {
                    unwantedCapabilities = BitUtils.packBits(request.networkCapabilities.getUnwantedCapabilities());
                }
                request.networkCapabilities.setCapabilities(BitUtils.unpackBits(Long.parseLong(netCapabilities)), BitUtils.unpackBits(unwantedCapabilities));
                request.networkCapabilities.setTransportTypes(BitUtils.unpackBits(Long.parseLong(netTransportTypes)));
                jobBuilder.setRequiredNetwork(request);
            }
            String val5 = parser.getAttributeValue(null, "idle");
            if (val5 != null) {
                jobBuilder.setRequiresDeviceIdle(true);
            }
            String val6 = parser.getAttributeValue(null, "charging");
            if (val6 != null) {
                jobBuilder.setRequiresCharging(true);
            }
            String val7 = parser.getAttributeValue(null, "battery-not-low");
            if (val7 != null) {
                jobBuilder.setRequiresBatteryNotLow(true);
            }
            String val8 = parser.getAttributeValue(null, "storage-not-low");
            if (val8 != null) {
                jobBuilder.setRequiresStorageNotLow(true);
            }
        }

        private void maybeBuildBackoffPolicyFromXml(JobInfo.Builder jobBuilder, XmlPullParser parser) {
            String val = parser.getAttributeValue(null, "initial-backoff");
            if (val != null) {
                long initialBackoff = Long.parseLong(val);
                int backoffPolicy = Integer.parseInt(parser.getAttributeValue(null, "backoff-policy"));
                jobBuilder.setBackoffCriteria(initialBackoff, backoffPolicy);
            }
        }

        private Pair<Long, Long> buildRtcExecutionTimesFromXml(XmlPullParser parser) throws NumberFormatException {
            long earliestRunTimeRtc;
            long latestRunTimeRtc;
            String val = parser.getAttributeValue(null, "delay");
            if (val != null) {
                earliestRunTimeRtc = Long.parseLong(val);
            } else {
                earliestRunTimeRtc = 0;
            }
            String val2 = parser.getAttributeValue(null, "deadline");
            if (val2 != null) {
                latestRunTimeRtc = Long.parseLong(val2);
            } else {
                latestRunTimeRtc = JobStatus.NO_LATEST_RUNTIME;
            }
            return Pair.create(Long.valueOf(earliestRunTimeRtc), Long.valueOf(latestRunTimeRtc));
        }
    }

    public static final class JobSet {
        final SparseArray<ArraySet<JobStatus>> mJobs = new SparseArray<>();
        final SparseArray<ArraySet<JobStatus>> mJobsPerSourceUid = new SparseArray<>();

        public List<JobStatus> getJobsByUid(int uid) {
            ArrayList<JobStatus> matchingJobs = new ArrayList<>();
            ArraySet<JobStatus> jobs = this.mJobs.get(uid);
            if (jobs != null) {
                matchingJobs.addAll(jobs);
            }
            return matchingJobs;
        }

        public List<JobStatus> getJobsByUser(int userId) {
            ArraySet<JobStatus> jobs;
            ArrayList<JobStatus> result = new ArrayList<>();
            for (int i = this.mJobsPerSourceUid.size() - 1; i >= 0; i--) {
                if (UserHandle.getUserId(this.mJobsPerSourceUid.keyAt(i)) == userId && (jobs = this.mJobsPerSourceUid.valueAt(i)) != null) {
                    result.addAll(jobs);
                }
            }
            return result;
        }

        public boolean add(JobStatus job) {
            int uid = job.getUid();
            int sourceUid = job.getSourceUid();
            ArraySet<JobStatus> jobs = this.mJobs.get(uid);
            if (jobs == null) {
                jobs = new ArraySet<>();
                this.mJobs.put(uid, jobs);
            }
            ArraySet<JobStatus> jobsForSourceUid = this.mJobsPerSourceUid.get(sourceUid);
            if (jobsForSourceUid == null) {
                jobsForSourceUid = new ArraySet<>();
                this.mJobsPerSourceUid.put(sourceUid, jobsForSourceUid);
            }
            boolean added = jobs.add(job);
            boolean addedInSource = jobsForSourceUid.add(job);
            if (added != addedInSource) {
                Slog.wtf(JobStore.TAG, "mJobs and mJobsPerSourceUid mismatch; caller= " + added + " source= " + addedInSource);
            }
            return added || addedInSource;
        }

        public boolean remove(JobStatus job) {
            int uid = job.getUid();
            ArraySet<JobStatus> jobs = this.mJobs.get(uid);
            int sourceUid = job.getSourceUid();
            ArraySet<JobStatus> jobsForSourceUid = this.mJobsPerSourceUid.get(sourceUid);
            boolean didRemove = jobs != null && jobs.remove(job);
            boolean sourceRemove = jobsForSourceUid != null && jobsForSourceUid.remove(job);
            if (didRemove != sourceRemove) {
                Slog.wtf(JobStore.TAG, "Job presence mismatch; caller=" + didRemove + " source=" + sourceRemove);
            }
            if (!didRemove && !sourceRemove) {
                return false;
            }
            if (jobs != null && jobs.size() == 0) {
                this.mJobs.remove(uid);
            }
            if (jobsForSourceUid != null && jobsForSourceUid.size() == 0) {
                this.mJobsPerSourceUid.remove(sourceUid);
            }
            return true;
        }

        public void removeJobsOfNonUsers(final int[] whitelist) {
            Predicate<JobStatus> noSourceUser = new Predicate() { // from class: com.android.server.job.-$$Lambda$JobStore$JobSet$D9839QVHHu4X-hnxouyIMkP5NWA
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return JobStore.JobSet.lambda$removeJobsOfNonUsers$0(whitelist, (JobStatus) obj);
                }
            };
            Predicate<JobStatus> noCallingUser = new Predicate() { // from class: com.android.server.job.-$$Lambda$JobStore$JobSet$id1Y3Yh8Y9sEb-njlNCUNay6U9k
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return JobStore.JobSet.lambda$removeJobsOfNonUsers$1(whitelist, (JobStatus) obj);
                }
            };
            removeAll(noSourceUser.or(noCallingUser));
        }

        static /* synthetic */ boolean lambda$removeJobsOfNonUsers$0(int[] whitelist, JobStatus job) {
            return !ArrayUtils.contains(whitelist, job.getSourceUserId());
        }

        static /* synthetic */ boolean lambda$removeJobsOfNonUsers$1(int[] whitelist, JobStatus job) {
            return !ArrayUtils.contains(whitelist, job.getUserId());
        }

        private void removeAll(Predicate<JobStatus> predicate) {
            for (int jobSetIndex = this.mJobs.size() - 1; jobSetIndex >= 0; jobSetIndex--) {
                ArraySet<JobStatus> jobs = this.mJobs.valueAt(jobSetIndex);
                jobs.removeIf(predicate);
                if (jobs.size() == 0) {
                    this.mJobs.removeAt(jobSetIndex);
                }
            }
            for (int jobSetIndex2 = this.mJobsPerSourceUid.size() - 1; jobSetIndex2 >= 0; jobSetIndex2--) {
                ArraySet<JobStatus> jobs2 = this.mJobsPerSourceUid.valueAt(jobSetIndex2);
                jobs2.removeIf(predicate);
                if (jobs2.size() == 0) {
                    this.mJobsPerSourceUid.removeAt(jobSetIndex2);
                }
            }
        }

        public boolean contains(JobStatus job) {
            int uid = job.getUid();
            ArraySet<JobStatus> jobs = this.mJobs.get(uid);
            return jobs != null && jobs.contains(job);
        }

        public JobStatus get(int uid, int jobId) {
            ArraySet<JobStatus> jobs = this.mJobs.get(uid);
            if (jobs != null) {
                for (int i = jobs.size() - 1; i >= 0; i--) {
                    JobStatus job = jobs.valueAt(i);
                    if (job.getJobId() == jobId) {
                        return job;
                    }
                }
                return null;
            }
            return null;
        }

        public List<JobStatus> getAllJobs() {
            ArrayList<JobStatus> allJobs = new ArrayList<>(size());
            for (int i = this.mJobs.size() - 1; i >= 0; i--) {
                ArraySet<JobStatus> jobs = this.mJobs.valueAt(i);
                if (jobs != null) {
                    for (int j = jobs.size() - 1; j >= 0; j--) {
                        allJobs.add(jobs.valueAt(j));
                    }
                }
            }
            return allJobs;
        }

        public void clear() {
            this.mJobs.clear();
            this.mJobsPerSourceUid.clear();
        }

        public int size() {
            int total = 0;
            for (int i = this.mJobs.size() - 1; i >= 0; i--) {
                total += this.mJobs.valueAt(i).size();
            }
            return total;
        }

        public int countJobsForUid(int uid) {
            int total = 0;
            ArraySet<JobStatus> jobs = this.mJobs.get(uid);
            if (jobs != null) {
                for (int i = jobs.size() - 1; i >= 0; i--) {
                    JobStatus job = jobs.valueAt(i);
                    if (job.getUid() == job.getSourceUid()) {
                        total++;
                    }
                }
            }
            return total;
        }

        public void forEachJob(Predicate<JobStatus> filterPredicate, Consumer<JobStatus> functor) {
            for (int uidIndex = this.mJobs.size() - 1; uidIndex >= 0; uidIndex--) {
                ArraySet<JobStatus> jobs = this.mJobs.valueAt(uidIndex);
                if (jobs != null) {
                    for (int i = jobs.size() - 1; i >= 0; i--) {
                        JobStatus jobStatus = jobs.valueAt(i);
                        if (filterPredicate == null || filterPredicate.test(jobStatus)) {
                            functor.accept(jobStatus);
                        }
                    }
                }
            }
        }

        public void forEachJob(int callingUid, Consumer<JobStatus> functor) {
            ArraySet<JobStatus> jobs = this.mJobs.get(callingUid);
            if (jobs != null) {
                for (int i = jobs.size() - 1; i >= 0; i--) {
                    functor.accept(jobs.valueAt(i));
                }
            }
        }

        public void forEachJobForSourceUid(int sourceUid, Consumer<JobStatus> functor) {
            ArraySet<JobStatus> jobs = this.mJobsPerSourceUid.get(sourceUid);
            if (jobs != null) {
                for (int i = jobs.size() - 1; i >= 0; i--) {
                    functor.accept(jobs.valueAt(i));
                }
            }
        }
    }
}
