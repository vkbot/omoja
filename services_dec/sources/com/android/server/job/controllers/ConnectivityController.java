package com.android.server.job.controllers;

import android.hardware.audio.common.V2_0.AudioFormat;
import android.net.ConnectivityManager;
import android.net.INetworkPolicyListener;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkPolicyManager;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.DataUnit;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.LocalServices;
import com.android.server.job.JobSchedulerService;
import com.android.server.net.NetworkPolicyManagerInternal;
import java.util.Objects;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectivityController extends RestrictingController implements ConnectivityManager.OnNetworkActiveListener {
    private static final boolean DEBUG;
    private static final int MSG_DATA_SAVER_TOGGLED = 0;
    private static final int MSG_REEVALUATE_JOBS = 2;
    private static final int MSG_UID_RULES_CHANGES = 1;
    private static final String TAG = "JobScheduler.Connectivity";
    private final ArrayMap<Network, NetworkCapabilities> mAvailableNetworks;
    private final ConnectivityManager mConnManager;
    private final Handler mHandler;
    private final INetworkPolicyListener mNetPolicyListener;
    private final NetworkPolicyManager mNetPolicyManager;
    private final NetworkPolicyManagerInternal mNetPolicyManagerInternal;
    private final ConnectivityManager.NetworkCallback mNetworkCallback;
    private final SparseArray<ArraySet<JobStatus>> mRequestedWhitelistJobs;
    private final SparseArray<ArraySet<JobStatus>> mTrackedJobs;

    static {
        DEBUG = JobSchedulerService.DEBUG || Log.isLoggable(TAG, 3);
    }

    public ConnectivityController(JobSchedulerService service) {
        super(service);
        this.mTrackedJobs = new SparseArray<>();
        this.mRequestedWhitelistJobs = new SparseArray<>();
        this.mAvailableNetworks = new ArrayMap<>();
        this.mNetworkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.android.server.job.controllers.ConnectivityController.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                if (ConnectivityController.DEBUG) {
                    Slog.v(ConnectivityController.TAG, "onAvailable: " + network);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities capabilities) {
                if (ConnectivityController.DEBUG) {
                    Slog.v(ConnectivityController.TAG, "onCapabilitiesChanged: " + network);
                }
                synchronized (ConnectivityController.this.mLock) {
                    ConnectivityController.this.mAvailableNetworks.put(network, capabilities);
                }
                ConnectivityController.this.updateTrackedJobs(-1, network);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                if (ConnectivityController.DEBUG) {
                    Slog.v(ConnectivityController.TAG, "onLost: " + network);
                }
                synchronized (ConnectivityController.this.mLock) {
                    ConnectivityController.this.mAvailableNetworks.remove(network);
                }
                ConnectivityController.this.updateTrackedJobs(-1, network);
            }
        };
        this.mNetPolicyListener = new NetworkPolicyManager.Listener() { // from class: com.android.server.job.controllers.ConnectivityController.2
            public void onRestrictBackgroundChanged(boolean restrictBackground) {
                if (ConnectivityController.DEBUG) {
                    Slog.v(ConnectivityController.TAG, "onRestrictBackgroundChanged: " + restrictBackground);
                }
                ConnectivityController.this.mHandler.obtainMessage(0).sendToTarget();
            }

            public void onUidRulesChanged(int uid, int uidRules) {
                if (ConnectivityController.DEBUG) {
                    Slog.v(ConnectivityController.TAG, "onUidRulesChanged: " + uid);
                }
                ConnectivityController.this.mHandler.obtainMessage(1, uid, 0).sendToTarget();
            }
        };
        this.mHandler = new CcHandler(this.mContext.getMainLooper());
        this.mConnManager = (ConnectivityManager) this.mContext.getSystemService(ConnectivityManager.class);
        this.mNetPolicyManager = (NetworkPolicyManager) this.mContext.getSystemService(NetworkPolicyManager.class);
        this.mNetPolicyManagerInternal = (NetworkPolicyManagerInternal) LocalServices.getService(NetworkPolicyManagerInternal.class);
        NetworkRequest request = new NetworkRequest.Builder().clearCapabilities().build();
        this.mConnManager.registerNetworkCallback(request, this.mNetworkCallback);
        this.mNetPolicyManager.registerListener(this.mNetPolicyListener);
    }

    @Override // com.android.server.job.controllers.StateController
    public void maybeStartTrackingJobLocked(JobStatus jobStatus, JobStatus lastJob) {
        if (jobStatus.hasConnectivityConstraint()) {
            updateConstraintsSatisfied(jobStatus);
            ArraySet<JobStatus> jobs = this.mTrackedJobs.get(jobStatus.getSourceUid());
            if (jobs == null) {
                jobs = new ArraySet<>();
                this.mTrackedJobs.put(jobStatus.getSourceUid(), jobs);
            }
            jobs.add(jobStatus);
            jobStatus.setTrackingController(2);
        }
    }

    @Override // com.android.server.job.controllers.StateController
    public void maybeStopTrackingJobLocked(JobStatus jobStatus, JobStatus incomingJob, boolean forUpdate) {
        if (jobStatus.clearTrackingController(2)) {
            ArraySet<JobStatus> jobs = this.mTrackedJobs.get(jobStatus.getSourceUid());
            if (jobs != null) {
                jobs.remove(jobStatus);
            }
            maybeRevokeStandbyExceptionLocked(jobStatus);
        }
    }

    @Override // com.android.server.job.controllers.RestrictingController
    public void startTrackingRestrictedJobLocked(JobStatus jobStatus) {
        if (jobStatus.hasConnectivityConstraint()) {
            updateConstraintsSatisfied(jobStatus);
        }
    }

    @Override // com.android.server.job.controllers.RestrictingController
    public void stopTrackingRestrictedJobLocked(JobStatus jobStatus) {
        if (jobStatus.hasConnectivityConstraint()) {
            updateConstraintsSatisfied(jobStatus);
        }
    }

    public boolean isNetworkAvailable(JobStatus job) {
        synchronized (this.mLock) {
            for (int i = 0; i < this.mAvailableNetworks.size(); i++) {
                Network network = this.mAvailableNetworks.keyAt(i);
                NetworkCapabilities capabilities = this.mAvailableNetworks.valueAt(i);
                boolean satisfied = isSatisfied(job, network, capabilities, this.mConstants);
                if (DEBUG) {
                    Slog.v(TAG, "isNetworkAvailable(" + job + ") with network " + network + " and capabilities " + capabilities + ". Satisfied=" + satisfied);
                }
                if (satisfied) {
                    return true;
                }
            }
            return false;
        }
    }

    void requestStandbyExceptionLocked(JobStatus job) {
        int uid = job.getSourceUid();
        boolean isExceptionRequested = isStandbyExceptionRequestedLocked(uid);
        ArraySet<JobStatus> jobs = this.mRequestedWhitelistJobs.get(uid);
        if (jobs == null) {
            jobs = new ArraySet<>();
            this.mRequestedWhitelistJobs.put(uid, jobs);
        }
        if (!jobs.add(job) || isExceptionRequested) {
            if (DEBUG) {
                Slog.i(TAG, "requestStandbyExceptionLocked found exception already requested.");
            }
        } else {
            if (DEBUG) {
                Slog.i(TAG, "Requesting standby exception for UID: " + uid);
            }
            this.mNetPolicyManagerInternal.setAppIdleWhitelist(uid, true);
        }
    }

    boolean isStandbyExceptionRequestedLocked(int uid) {
        ArraySet<JobStatus> arraySet = this.mRequestedWhitelistJobs.get(uid);
        return arraySet != null && arraySet.size() > 0;
    }

    boolean wouldBeReadyWithConnectivityLocked(JobStatus jobStatus) {
        boolean networkAvailable = isNetworkAvailable(jobStatus);
        if (DEBUG) {
            Slog.v(TAG, "wouldBeReadyWithConnectivityLocked: " + jobStatus.toShortString() + " networkAvailable=" + networkAvailable);
        }
        return networkAvailable && wouldBeReadyWithConstraintLocked(jobStatus, AudioFormat.EVRC);
    }

    @Override // com.android.server.job.controllers.StateController
    public void evaluateStateLocked(JobStatus jobStatus) {
        if (!jobStatus.hasConnectivityConstraint()) {
            return;
        }
        if (wouldBeReadyWithConnectivityLocked(jobStatus)) {
            if (DEBUG) {
                Slog.i(TAG, "evaluateStateLocked finds job " + jobStatus + " would be ready.");
            }
            requestStandbyExceptionLocked(jobStatus);
            return;
        }
        if (DEBUG) {
            Slog.i(TAG, "evaluateStateLocked finds job " + jobStatus + " would not be ready.");
        }
        maybeRevokeStandbyExceptionLocked(jobStatus);
    }

    @Override // com.android.server.job.controllers.StateController
    public void reevaluateStateLocked(int uid) {
        ArraySet<JobStatus> jobs = this.mTrackedJobs.get(uid);
        if (jobs == null) {
            return;
        }
        for (int i = jobs.size() - 1; i >= 0; i--) {
            evaluateStateLocked(jobs.valueAt(i));
        }
    }

    void maybeRevokeStandbyExceptionLocked(JobStatus job) {
        int uid = job.getSourceUid();
        if (!isStandbyExceptionRequestedLocked(uid)) {
            return;
        }
        ArraySet<JobStatus> jobs = this.mRequestedWhitelistJobs.get(uid);
        if (jobs == null) {
            Slog.wtf(TAG, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested.");
            return;
        }
        if (!jobs.remove(job) || jobs.size() > 0) {
            if (DEBUG) {
                Slog.i(TAG, "maybeRevokeStandbyExceptionLocked not revoking because there are still " + jobs.size() + " jobs left.");
                return;
            }
            return;
        }
        revokeStandbyExceptionLocked(uid);
    }

    private void revokeStandbyExceptionLocked(int uid) {
        if (DEBUG) {
            Slog.i(TAG, "Revoking standby exception for UID: " + uid);
        }
        this.mNetPolicyManagerInternal.setAppIdleWhitelist(uid, false);
        this.mRequestedWhitelistJobs.remove(uid);
    }

    @Override // com.android.server.job.controllers.StateController
    public void onAppRemovedLocked(String pkgName, int uid) {
        this.mTrackedJobs.delete(uid);
    }

    private boolean isInsane(JobStatus jobStatus, Network network, NetworkCapabilities capabilities, JobSchedulerService.Constants constants) {
        String str;
        long maxJobExecutionTimeMs = this.mService.getMaxJobExecutionTimeMs(jobStatus);
        long downloadBytes = jobStatus.getEstimatedNetworkDownloadBytes();
        if (downloadBytes == -1) {
            str = "ms to run; that's insane!";
        } else {
            long bandwidth = capabilities.getLinkDownstreamBandwidthKbps();
            if (bandwidth == 0) {
                str = "ms to run; that's insane!";
            } else {
                long estimatedMillis = (downloadBytes * 1000) / (DataUnit.KIBIBYTES.toBytes(bandwidth) / 8);
                if (estimatedMillis <= maxJobExecutionTimeMs) {
                    str = "ms to run; that's insane!";
                } else {
                    Slog.w(TAG, "Estimated " + downloadBytes + " download bytes over " + bandwidth + " kbps network would take " + estimatedMillis + "ms and job has " + maxJobExecutionTimeMs + "ms to run; that's insane!");
                    return true;
                }
            }
        }
        long uploadBytes = jobStatus.getEstimatedNetworkUploadBytes();
        if (uploadBytes != -1) {
            long bandwidth2 = capabilities.getLinkUpstreamBandwidthKbps();
            if (bandwidth2 != 0) {
                long downloadBytes2 = (1000 * uploadBytes) / (DataUnit.KIBIBYTES.toBytes(bandwidth2) / 8);
                if (downloadBytes2 > maxJobExecutionTimeMs) {
                    Slog.w(TAG, "Estimated " + uploadBytes + " upload bytes over " + bandwidth2 + " kbps network would take " + downloadBytes2 + "ms and job has " + maxJobExecutionTimeMs + str);
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    private static boolean isCongestionDelayed(JobStatus jobStatus, Network network, NetworkCapabilities capabilities, JobSchedulerService.Constants constants) {
        return !capabilities.hasCapability(20) && jobStatus.getFractionRunTime() < constants.CONN_CONGESTION_DELAY_FRAC;
    }

    private static boolean isStrictSatisfied(JobStatus jobStatus, Network network, NetworkCapabilities capabilities, JobSchedulerService.Constants constants) {
        NetworkCapabilities required;
        if (jobStatus.getEffectiveStandbyBucket() == 5 && !jobStatus.isConstraintSatisfied(16777216)) {
            required = new NetworkCapabilities(jobStatus.getJob().getRequiredNetwork().networkCapabilities).addCapability(11);
        } else {
            required = jobStatus.getJob().getRequiredNetwork().networkCapabilities;
        }
        return required.satisfiedByNetworkCapabilities(capabilities);
    }

    private static boolean isRelaxedSatisfied(JobStatus jobStatus, Network network, NetworkCapabilities capabilities, JobSchedulerService.Constants constants) {
        if (!jobStatus.getJob().isPrefetch() || jobStatus.getStandbyBucket() == 5) {
            return false;
        }
        NetworkCapabilities relaxed = new NetworkCapabilities(jobStatus.getJob().getRequiredNetwork().networkCapabilities).removeCapability(11);
        return relaxed.satisfiedByNetworkCapabilities(capabilities) && jobStatus.getFractionRunTime() > constants.CONN_PREFETCH_RELAX_FRAC;
    }

    boolean isSatisfied(JobStatus jobStatus, Network network, NetworkCapabilities capabilities, JobSchedulerService.Constants constants) {
        if (network == null || capabilities == null || isInsane(jobStatus, network, capabilities, constants) || isCongestionDelayed(jobStatus, network, capabilities, constants)) {
            return false;
        }
        return isStrictSatisfied(jobStatus, network, capabilities, constants) || isRelaxedSatisfied(jobStatus, network, capabilities, constants);
    }

    private NetworkCapabilities getNetworkCapabilities(Network network) {
        if (network == null) {
            return null;
        }
        synchronized (this.mLock) {
            if (this.mAvailableNetworks.get(network) != null) {
                return this.mAvailableNetworks.get(network);
            }
            NetworkCapabilities capabilities = this.mConnManager.getNetworkCapabilities(network);
            this.mAvailableNetworks.put(network, capabilities);
            return capabilities;
        }
    }

    private boolean updateConstraintsSatisfied(JobStatus jobStatus) {
        Network network = this.mConnManager.getActiveNetworkForUid(jobStatus.getSourceUid());
        NetworkCapabilities capabilities = getNetworkCapabilities(network);
        return updateConstraintsSatisfied(jobStatus, network, capabilities);
    }

    private boolean updateConstraintsSatisfied(JobStatus jobStatus, Network network, NetworkCapabilities capabilities) {
        boolean ignoreBlocked = (jobStatus.getFlags() & 1) != 0;
        NetworkInfo info = this.mConnManager.getNetworkInfoForUid(network, jobStatus.getSourceUid(), ignoreBlocked);
        boolean connected = info != null && info.isConnected();
        boolean satisfied = isSatisfied(jobStatus, network, capabilities, this.mConstants);
        boolean changed = jobStatus.setConnectivityConstraintSatisfied(connected && satisfied);
        jobStatus.network = network;
        if (DEBUG) {
            StringBuilder sb = new StringBuilder();
            sb.append("Connectivity ");
            sb.append(changed ? "CHANGED" : "unchanged");
            sb.append(" for ");
            sb.append(jobStatus);
            sb.append(": connected=");
            sb.append(connected);
            sb.append(" satisfied=");
            sb.append(satisfied);
            Slog.i(TAG, sb.toString());
        }
        return changed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTrackedJobs(int filterUid, Network filterNetwork) {
        synchronized (this.mLock) {
            boolean changed = false;
            try {
                if (filterUid == -1) {
                    for (int i = this.mTrackedJobs.size() - 1; i >= 0; i--) {
                        changed |= updateTrackedJobsLocked(this.mTrackedJobs.valueAt(i), filterNetwork);
                    }
                } else {
                    changed = updateTrackedJobsLocked(this.mTrackedJobs.get(filterUid), filterNetwork);
                }
                if (changed) {
                    this.mStateChangedListener.onControllerStateChanged();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean updateTrackedJobsLocked(ArraySet<JobStatus> jobs, Network filterNetwork) {
        boolean networkMatch = false;
        if (jobs == null || jobs.size() == 0) {
            return false;
        }
        Network network = this.mConnManager.getActiveNetworkForUid(jobs.valueAt(0).getSourceUid());
        NetworkCapabilities capabilities = getNetworkCapabilities(network);
        if (filterNetwork == null || Objects.equals(filterNetwork, network)) {
            networkMatch = true;
        }
        boolean changed = false;
        for (int i = jobs.size() - 1; i >= 0; i--) {
            JobStatus js = jobs.valueAt(i);
            if (networkMatch || !Objects.equals(js.network, network)) {
                changed |= updateConstraintsSatisfied(js, network, capabilities);
            }
        }
        return changed;
    }

    @Override // android.net.ConnectivityManager.OnNetworkActiveListener
    public void onNetworkActive() {
        synchronized (this.mLock) {
            for (int i = this.mTrackedJobs.size() - 1; i >= 0; i--) {
                ArraySet<JobStatus> jobs = this.mTrackedJobs.valueAt(i);
                for (int j = jobs.size() - 1; j >= 0; j--) {
                    JobStatus js = jobs.valueAt(j);
                    if (js.isReady()) {
                        if (DEBUG) {
                            Slog.d(TAG, "Running " + js + " due to network activity.");
                        }
                        this.mStateChangedListener.onRunJobNow(js);
                    }
                }
            }
        }
    }

    private class CcHandler extends Handler {
        CcHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            synchronized (ConnectivityController.this.mLock) {
                int i = msg.what;
                if (i == 0) {
                    ConnectivityController.this.updateTrackedJobs(-1, null);
                } else if (i == 1) {
                    ConnectivityController.this.updateTrackedJobs(msg.arg1, null);
                } else if (i == 2) {
                    ConnectivityController.this.updateTrackedJobs(-1, null);
                }
            }
        }
    }

    @Override // com.android.server.job.controllers.StateController
    public void dumpControllerStateLocked(IndentingPrintWriter pw, Predicate<JobStatus> predicate) {
        if (this.mRequestedWhitelistJobs.size() > 0) {
            pw.print("Requested standby exceptions:");
            for (int i = 0; i < this.mRequestedWhitelistJobs.size(); i++) {
                pw.print(" ");
                pw.print(this.mRequestedWhitelistJobs.keyAt(i));
                pw.print(" (");
                pw.print(this.mRequestedWhitelistJobs.valueAt(i).size());
                pw.print(" jobs)");
            }
            pw.println();
        }
        if (this.mAvailableNetworks.size() > 0) {
            pw.println("Available networks:");
            pw.increaseIndent();
            for (int i2 = 0; i2 < this.mAvailableNetworks.size(); i2++) {
                pw.print(this.mAvailableNetworks.keyAt(i2));
                pw.print(": ");
                pw.println(this.mAvailableNetworks.valueAt(i2));
            }
            pw.decreaseIndent();
        } else {
            pw.println("No available networks");
        }
        for (int i3 = 0; i3 < this.mTrackedJobs.size(); i3++) {
            ArraySet<JobStatus> jobs = this.mTrackedJobs.valueAt(i3);
            for (int j = 0; j < jobs.size(); j++) {
                JobStatus js = jobs.valueAt(j);
                if (predicate.test(js)) {
                    pw.print("#");
                    js.printUniqueId(pw);
                    pw.print(" from ");
                    UserHandle.formatUid(pw, js.getSourceUid());
                    pw.print(": ");
                    pw.print(js.getJob().getRequiredNetwork());
                    pw.println();
                }
            }
        }
    }

    @Override // com.android.server.job.controllers.StateController
    public void dumpControllerStateLocked(ProtoOutputStream proto, long fieldId, Predicate<JobStatus> predicate) {
        long j;
        long token = proto.start(fieldId);
        long j2 = 1146756268035L;
        long mToken = proto.start(1146756268035L);
        for (int i = 0; i < this.mRequestedWhitelistJobs.size(); i++) {
            proto.write(2220498092035L, this.mRequestedWhitelistJobs.keyAt(i));
        }
        for (int i2 = 0; i2 < this.mAvailableNetworks.size(); i2++) {
            Network network = this.mAvailableNetworks.keyAt(i2);
            if (network != null) {
                network.dumpDebug(proto, 2246267895812L);
            }
        }
        for (int i3 = 0; i3 < this.mTrackedJobs.size(); i3++) {
            ArraySet<JobStatus> jobs = this.mTrackedJobs.valueAt(i3);
            int j3 = 0;
            while (j3 < jobs.size()) {
                JobStatus js = jobs.valueAt(j3);
                if (!predicate.test(js)) {
                    j = j2;
                } else {
                    long jsToken = proto.start(2246267895810L);
                    js.writeToShortProto(proto, 1146756268033L);
                    proto.write(1120986464258L, js.getSourceUid());
                    NetworkRequest rn = js.getJob().getRequiredNetwork();
                    if (rn != null) {
                        j = 1146756268035L;
                        rn.dumpDebug(proto, 1146756268035L);
                    } else {
                        j = 1146756268035L;
                    }
                    proto.end(jsToken);
                }
                j3++;
                j2 = j;
            }
        }
        proto.end(mToken);
        proto.end(token);
    }
}
