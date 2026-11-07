package com.google.android.startop.iorap;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.util.ArraySet;
import android.util.Log;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemService;
import com.android.server.pm.BackgroundDexOptService;
import com.android.server.wm.ActivityMetricsLaunchObserver;
import com.android.server.wm.ActivityMetricsLaunchObserverRegistry;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class IorapForwardingService extends SystemService {
    private static volatile IorapForwardingService sSelfService;
    private final AppLaunchObserver mAppLaunchObserver;
    private final DexOptPackagesUpdated mDexOptPackagesUpdated;
    private final EventSequenceValidator mEventSequenceValidator;
    private final Handler mHandler;
    private IIorap mIorapRemote;
    private volatile IorapdJobService mJobService;
    private final Object mLock;
    private boolean mRegisteredListeners;
    public static final String TAG = "IorapForwardingService";
    public static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static boolean IS_ENABLED = SystemProperties.getBoolean("ro.iorapd.enable", true);
    private static boolean WTF_CRASH = SystemProperties.getBoolean("iorapd.forwarding_service.wtf_crash", false);
    public static final int JOB_ID_IORAPD = encodeEnglishAlphabetStringIntoInt("iorapd");
    public static final long JOB_INTERVAL_MS = TimeUnit.HOURS.toMillis(24);

    /* JADX INFO: Access modifiers changed from: private */
    interface RemoteRunnable {
        void run(IIorap iIorap) throws RemoteException;
    }

    public IorapForwardingService(Context context) {
        super(context);
        this.mLock = new Object();
        this.mHandler = new BinderConnectionHandler(IoThread.getHandler().getLooper());
        this.mAppLaunchObserver = new AppLaunchObserver();
        this.mEventSequenceValidator = new EventSequenceValidator();
        this.mDexOptPackagesUpdated = new DexOptPackagesUpdated();
        this.mRegisteredListeners = false;
        if (DEBUG) {
            Log.v(TAG, "IorapForwardingService (Context=" + context.toString() + ")");
        }
        if (sSelfService != null) {
            throw new AssertionError("only one service instance allowed");
        }
        sSelfService = this;
    }

    protected ActivityMetricsLaunchObserverRegistry provideLaunchObserverRegistry() {
        ActivityTaskManagerInternal amtInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        ActivityMetricsLaunchObserverRegistry launchObserverRegistry = amtInternal.getLaunchObserverRegistry();
        return launchObserverRegistry;
    }

    protected IIorap provideIorapRemote() {
        try {
            IIorap iorap = IIorap.Stub.asInterface(ServiceManager.getServiceOrThrow("iorapd"));
            try {
                iorap.asBinder().linkToDeath(provideDeathRecipient(), 0);
                return iorap;
            } catch (RemoteException e) {
                handleRemoteError(e);
                return null;
            }
        } catch (ServiceManager.ServiceNotFoundException e2) {
            handleRemoteError(e2);
            return null;
        }
    }

    protected IBinder.DeathRecipient provideDeathRecipient() {
        return new IBinder.DeathRecipient() { // from class: com.google.android.startop.iorap.IorapForwardingService.1
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                Log.w(IorapForwardingService.TAG, "iorapd has died");
                IorapForwardingService.this.retryConnectToRemoteAndConfigure(0);
                if (IorapForwardingService.this.mJobService != null) {
                    IorapForwardingService.this.mJobService.onIorapdDisconnected();
                }
            }
        };
    }

    protected boolean isIorapEnabled() {
        return IS_ENABLED;
    }

    @Override // com.android.server.SystemService
    public void onStart() {
        if (DEBUG) {
            Log.v(TAG, "onStart");
        }
        retryConnectToRemoteAndConfigure(0);
    }

    @Override // com.android.server.SystemService
    public void onBootPhase(int phase) {
        if (phase == 1000) {
            if (DEBUG) {
                Log.v(TAG, "onBootPhase(PHASE_BOOT_COMPLETED)");
            }
            if (isIorapEnabled()) {
                this.mJobService = new IorapdJobService(getContext());
            }
        }
    }

    private class BinderConnectionHandler extends Handler {
        public static final int MESSAGE_BINDER_CONNECT = 0;
        private int mAttempts;

        public BinderConnectionHandler(Looper looper) {
            super(looper);
            this.mAttempts = 0;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                if (!IorapForwardingService.this.retryConnectToRemoteAndConfigure(this.mAttempts)) {
                    this.mAttempts++;
                    return;
                } else {
                    this.mAttempts = 0;
                    return;
                }
            }
            throw new AssertionError("Unknown message: " + message.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean retryConnectToRemoteAndConfigure(int attempts) {
        if (DEBUG) {
            Log.v(TAG, "retryConnectToRemoteAndConfigure - attempt #" + attempts);
        }
        if (connectToRemoteAndConfigure()) {
            return true;
        }
        Log.w(TAG, "Failed to connect to iorapd, is it down? Delay for 1000");
        Handler handler = this.mHandler;
        handler.sendMessageDelayed(handler.obtainMessage(0), 1000L);
        return false;
    }

    private boolean connectToRemoteAndConfigure() {
        boolean zConnectToRemoteAndConfigureLocked;
        synchronized (this.mLock) {
            zConnectToRemoteAndConfigureLocked = connectToRemoteAndConfigureLocked();
        }
        return zConnectToRemoteAndConfigureLocked;
    }

    private boolean connectToRemoteAndConfigureLocked() {
        if (!isIorapEnabled()) {
            if (DEBUG) {
                Log.v(TAG, "connectToRemoteAndConfigure - iorapd is disabled, skip rest of work");
            }
            return true;
        }
        IIorap iIorapProvideIorapRemote = provideIorapRemote();
        this.mIorapRemote = iIorapProvideIorapRemote;
        if (iIorapProvideIorapRemote == null) {
            Log.e(TAG, "connectToRemoteAndConfigure - null iorap remote. check for Log.wtf?");
            return false;
        }
        invokeRemote(iIorapProvideIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$miQO-RJhHA7C1W4BujwCS9blXFc
            @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
            public final void run(IIorap iIorap) throws RemoteException {
                this.f$0.lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService(iIorap);
            }
        });
        registerInProcessListenersLocked();
        Log.i(TAG, "Connected to iorapd native service.");
        return true;
    }

    public /* synthetic */ void lambda$connectToRemoteAndConfigureLocked$0$IorapForwardingService(IIorap remote) throws RemoteException {
        remote.setTaskListener(new RemoteTaskListener());
    }

    private void registerInProcessListenersLocked() {
        if (this.mRegisteredListeners) {
            return;
        }
        ActivityMetricsLaunchObserverRegistry launchObserverRegistry = provideLaunchObserverRegistry();
        launchObserverRegistry.registerLaunchObserver(this.mAppLaunchObserver);
        launchObserverRegistry.registerLaunchObserver(this.mEventSequenceValidator);
        BackgroundDexOptService.addPackagesUpdatedListener(this.mDexOptPackagesUpdated);
        this.mRegisteredListeners = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class DexOptPackagesUpdated implements BackgroundDexOptService.PackagesUpdatedListener {
        private DexOptPackagesUpdated() {
        }

        @Override // com.android.server.pm.BackgroundDexOptService.PackagesUpdatedListener
        public void onPackagesUpdated(ArraySet<String> updatedPackages) {
            String[] updated = (String[]) updatedPackages.toArray(new String[0]);
            for (final String packageName : updated) {
                Log.d(IorapForwardingService.TAG, "onPackagesUpdated: " + packageName);
                IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$DexOptPackagesUpdated$eJF4cOohT5z_czUGnctmGzG6H9U
                    @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                    public final void run(IIorap iIorap) throws RemoteException {
                        iIorap.onDexOptEvent(RequestId.nextValueForSequence(), DexOptEvent.createPackageUpdate(packageName));
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class AppLaunchObserver implements ActivityMetricsLaunchObserver {
        private long mSequenceId;

        private AppLaunchObserver() {
            this.mSequenceId = -1L;
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onIntentStarted(final Intent intent, final long timestampNs) {
            this.mSequenceId++;
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("AppLaunchObserver#onIntentStarted(%d, %s, %d)", Long.valueOf(this.mSequenceId), intent, Long.valueOf(timestampNs)));
            }
            IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$AppLaunchObserver$6ikxM-3KospNGDidAY7yA-rECHw
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    this.f$0.lambda$onIntentStarted$0$IorapForwardingService$AppLaunchObserver(intent, timestampNs, iIorap);
                }
            });
        }

        public /* synthetic */ void lambda$onIntentStarted$0$IorapForwardingService$AppLaunchObserver(Intent intent, long timestampNs, IIorap remote) throws RemoteException {
            remote.onAppLaunchEvent(RequestId.nextValueForSequence(), new AppLaunchEvent.IntentStarted(this.mSequenceId, intent, timestampNs));
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onIntentFailed() {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("AppLaunchObserver#onIntentFailed(%d)", Long.valueOf(this.mSequenceId)));
            }
            IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$AppLaunchObserver$qed0q0aplGsIh0O7dSm6JWk8wZI
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    this.f$0.lambda$onIntentFailed$1$IorapForwardingService$AppLaunchObserver(iIorap);
                }
            });
        }

        public /* synthetic */ void lambda$onIntentFailed$1$IorapForwardingService$AppLaunchObserver(IIorap remote) throws RemoteException {
            remote.onAppLaunchEvent(RequestId.nextValueForSequence(), new AppLaunchEvent.IntentFailed(this.mSequenceId));
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onActivityLaunched(final byte[] activity, final int temperature) {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("AppLaunchObserver#onActivityLaunched(%d, %s, %d)", Long.valueOf(this.mSequenceId), activity, Integer.valueOf(temperature)));
            }
            IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$AppLaunchObserver$B9wq4q5y7qahY6TuLMO_s8nPIwY
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    this.f$0.lambda$onActivityLaunched$2$IorapForwardingService$AppLaunchObserver(activity, temperature, iIorap);
                }
            });
        }

        public /* synthetic */ void lambda$onActivityLaunched$2$IorapForwardingService$AppLaunchObserver(byte[] activity, int temperature, IIorap remote) throws RemoteException {
            remote.onAppLaunchEvent(RequestId.nextValueForSequence(), new AppLaunchEvent.ActivityLaunched(this.mSequenceId, activity, temperature));
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onActivityLaunchCancelled(final byte[] activity) {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("AppLaunchObserver#onActivityLaunchCancelled(%d, %s)", Long.valueOf(this.mSequenceId), activity));
            }
            IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$AppLaunchObserver$elqG7IabJdUOCjFWiPV8vgrXnVI
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    this.f$0.lambda$onActivityLaunchCancelled$3$IorapForwardingService$AppLaunchObserver(activity, iIorap);
                }
            });
        }

        public /* synthetic */ void lambda$onActivityLaunchCancelled$3$IorapForwardingService$AppLaunchObserver(byte[] activity, IIorap remote) throws RemoteException {
            remote.onAppLaunchEvent(RequestId.nextValueForSequence(), new AppLaunchEvent.ActivityLaunchCancelled(this.mSequenceId, activity));
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onActivityLaunchFinished(final byte[] activity, final long timestampNs) {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("AppLaunchObserver#onActivityLaunchFinished(%d, %s, %d)", Long.valueOf(this.mSequenceId), activity, Long.valueOf(timestampNs)));
            }
            IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$AppLaunchObserver$J1AHa-Qs75WQr3stjbN97THbudE
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    this.f$0.lambda$onActivityLaunchFinished$4$IorapForwardingService$AppLaunchObserver(activity, timestampNs, iIorap);
                }
            });
        }

        public /* synthetic */ void lambda$onActivityLaunchFinished$4$IorapForwardingService$AppLaunchObserver(byte[] activity, long timestampNs, IIorap remote) throws RemoteException {
            remote.onAppLaunchEvent(RequestId.nextValueForSequence(), new AppLaunchEvent.ActivityLaunchFinished(this.mSequenceId, activity, timestampNs));
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onReportFullyDrawn(final byte[] activity, final long timestampNs) {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("AppLaunchObserver#onReportFullyDrawn(%d, %s, %d)", Long.valueOf(this.mSequenceId), activity, Long.valueOf(timestampNs)));
            }
            IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$AppLaunchObserver$bprgjb2FWBxwWDJr-Q4ViVP0aJc
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    this.f$0.lambda$onReportFullyDrawn$5$IorapForwardingService$AppLaunchObserver(activity, timestampNs, iIorap);
                }
            });
        }

        public /* synthetic */ void lambda$onReportFullyDrawn$5$IorapForwardingService$AppLaunchObserver(byte[] activity, long timestampNs, IIorap remote) throws RemoteException {
            remote.onAppLaunchEvent(RequestId.nextValueForSequence(), new AppLaunchEvent.ReportFullyDrawn(this.mSequenceId, activity, timestampNs));
        }
    }

    public static class IorapdJobServiceProxy extends JobService {
        public IorapdJobServiceProxy() {
            getActualIorapdJobService().bindProxy(this);
        }

        private IorapdJobService getActualIorapdJobService() {
            return IorapForwardingService.sSelfService.mJobService;
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters params) {
            return getActualIorapdJobService().onStartJob(params);
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters params) {
            return getActualIorapdJobService().onStopJob(params);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class IorapdJobService extends JobService {
        private final ComponentName IORAPD_COMPONENT_NAME;
        private final JobInfo IORAPD_JOB_INFO;
        private volatile IorapdJobServiceProxy mProxy;
        private final Object mLock = new Object();
        private final HashMap<RequestId, JobParameters> mRunningJobs = new HashMap<>();

        public void bindProxy(IorapdJobServiceProxy proxy) {
            this.mProxy = proxy;
        }

        public IorapdJobService(Context context) {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, "IorapdJobService (Context=" + context.toString() + ")");
            }
            this.IORAPD_COMPONENT_NAME = new ComponentName(context, (Class<?>) IorapdJobServiceProxy.class);
            JobInfo.Builder builder = new JobInfo.Builder(IorapForwardingService.JOB_ID_IORAPD, this.IORAPD_COMPONENT_NAME);
            builder.setPeriodic(IorapForwardingService.JOB_INTERVAL_MS);
            builder.setPrefetch(true);
            builder.setRequiresCharging(true);
            builder.setRequiresDeviceIdle(true);
            builder.setRequiresStorageNotLow(true);
            this.IORAPD_JOB_INFO = builder.build();
            JobScheduler js = (JobScheduler) context.getSystemService(JobScheduler.class);
            js.schedule(this.IORAPD_JOB_INFO);
            Log.d(IorapForwardingService.TAG, "BgJob Scheduled (jobId=" + IorapForwardingService.JOB_ID_IORAPD + ", interval: " + IorapForwardingService.JOB_INTERVAL_MS + "ms)");
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(final JobParameters params) {
            final RequestId request;
            Log.d(IorapForwardingService.TAG, "Starting background job: " + params.toString());
            synchronized (this.mLock) {
                request = RequestId.nextValueForSequence();
                this.mRunningJobs.put(request, params);
            }
            if (!IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$IorapdJobService$LUEcmjVFTNORsDoHk5dk5OHflTU
                @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                public final void run(IIorap iIorap) throws RemoteException {
                    iIorap.onJobScheduledEvent(request, JobScheduledEvent.createIdleMaintenance(0, params));
                }
            })) {
                synchronized (this.mLock) {
                    this.mRunningJobs.remove(request);
                }
                return false;
            }
            return true;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(final JobParameters params) {
            Log.w(IorapForwardingService.TAG, "onStopJob(params=" + params.toString() + ")");
            boolean wasTracking = false;
            synchronized (this.mLock) {
                for (Map.Entry<RequestId, JobParameters> entry : this.mRunningJobs.entrySet()) {
                    if (entry.getValue().getJobId() == params.getJobId()) {
                        this.mRunningJobs.remove(entry.getKey());
                        wasTracking = true;
                    }
                }
            }
            if (wasTracking) {
                IorapForwardingService.invokeRemote(IorapForwardingService.this.mIorapRemote, new RemoteRunnable() { // from class: com.google.android.startop.iorap.-$$Lambda$IorapForwardingService$IorapdJobService$42YZ24cX_s4lPtOYWBr7EBOoX_A
                    @Override // com.google.android.startop.iorap.IorapForwardingService.RemoteRunnable
                    public final void run(IIorap iIorap) throws RemoteException {
                        iIorap.onJobScheduledEvent(RequestId.nextValueForSequence(), JobScheduledEvent.createIdleMaintenance(1, params));
                    }
                });
                return true;
            }
            Log.e(IorapForwardingService.TAG, "Untracked onStopJob request");
            return true;
        }

        public void onIorapdTaskCompleted(RequestId requestId) {
            JobParameters jobParameters;
            synchronized (this.mLock) {
                jobParameters = this.mRunningJobs.remove(requestId);
            }
            if (jobParameters == null) {
                return;
            }
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("IorapdJobService#onIorapdTaskCompleted(%s), found params=%s", requestId, jobParameters));
            }
            Log.d(IorapForwardingService.TAG, "Finished background job: " + jobParameters.toString());
            IorapdJobServiceProxy proxy = this.mProxy;
            if (proxy != null) {
                proxy.jobFinished(jobParameters, false);
            }
        }

        public void onIorapdDisconnected() {
            synchronized (this.mLock) {
                this.mRunningJobs.clear();
            }
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("IorapdJobService#onIorapdDisconnected", new Object[0]));
            }
        }
    }

    private class RemoteTaskListener extends ITaskListener.Stub {
        private RemoteTaskListener() {
        }

        @Override // com.google.android.startop.iorap.ITaskListener
        public void onProgress(RequestId requestId, TaskResult result) throws RemoteException {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("RemoteTaskListener#onProgress(%s, %s)", requestId, result));
            }
        }

        @Override // com.google.android.startop.iorap.ITaskListener
        public void onComplete(RequestId requestId, TaskResult result) throws RemoteException {
            if (IorapForwardingService.DEBUG) {
                Log.v(IorapForwardingService.TAG, String.format("RemoteTaskListener#onComplete(%s, %s)", requestId, result));
            }
            if (IorapForwardingService.this.mJobService != null) {
                IorapForwardingService.this.mJobService.onIorapdTaskCompleted(requestId);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean invokeRemote(IIorap iorap, RemoteRunnable r) {
        if (iorap == null) {
            Log.w(TAG, "IIorap went to null in this thread, drop invokeRemote.");
            return false;
        }
        try {
            r.run(iorap);
            return true;
        } catch (RemoteException e) {
            handleRemoteError(e);
            return false;
        }
    }

    private static void handleRemoteError(Throwable t) {
        if (WTF_CRASH) {
            throw new AssertionError("unexpected remote error", t);
        }
        Log.wtf(TAG, t);
    }

    private static int encodeEnglishAlphabetStringIntoInt(String name) {
        int value = 0;
        if (name.length() > 6) {
            throw new IllegalArgumentException("String too long. Cannot encode more than 6 chars: " + name);
        }
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            if (c >= 'a' && c <= 'z') {
                int cur_value = (65535 & c) - 97;
                if (cur_value >= 32) {
                    throw new AssertionError("wtf? i=" + i + ", name=" + name);
                }
                value = (value << 5) | cur_value;
            } else {
                throw new IllegalArgumentException("String has out-of-range [a-z] chars: " + name);
            }
        }
        return value;
    }
}
