package com.lion.datapoint.log;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.lion.datapoint.BuildConfig;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseConnectManager<T extends IInterface> {
    private static final String THREAD_NAME = "bindServiceThread";
    private final Handler mChildThread;
    private final Handler mMainThread;
    private T mProxy;
    private IServiceConnectListener mServiceListener;
    private final String TAG = getClass().getSimpleName();
    private final LinkedBlockingQueue<Runnable> mTaskQueue = new LinkedBlockingQueue<>();
    private final Runnable mBindServiceTask = new Runnable() { // from class: com.lion.datapoint.log.BaseConnectManager$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.bindService();
        }
    };
    private final IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: com.lion.datapoint.log.BaseConnectManager.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            Log.i(BaseConnectManager.this.TAG, "binderDied");
            if (BaseConnectManager.this.mServiceListener != null) {
                BaseConnectManager.this.mServiceListener.onBinderDied();
            }
            if (BaseConnectManager.this.mProxy != null) {
                BaseConnectManager.this.mProxy.asBinder().unlinkToDeath(BaseConnectManager.this.mDeathRecipient, 0);
                BaseConnectManager.this.mProxy = null;
            }
            BaseConnectManager.this.attemptToRebindService();
        }
    };
    private final ServiceConnection mServiceConnection = new AnonymousClass2();
    private final Application mApplication = SdkAppGlobal.getApplication();

    protected abstract T asInterface(IBinder iBinder);

    public Handler getMainHandler() {
        return this.mMainThread;
    }

    protected T getProxy() {
        return this.mProxy;
    }

    protected abstract long getRetryBindTimeMill();

    protected abstract String getServiceAction();

    protected abstract String getServicePkgName();

    protected LinkedBlockingQueue<Runnable> getTaskQueue() {
        return this.mTaskQueue;
    }

    /* JADX INFO: renamed from: com.lion.datapoint.log.BaseConnectManager$2, reason: invalid class name */
    class AnonymousClass2 implements ServiceConnection {
        AnonymousClass2() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
            Log.i(BaseConnectManager.this.TAG, "onServiceConnected");
            BaseConnectManager baseConnectManager = BaseConnectManager.this;
            baseConnectManager.mProxy = baseConnectManager.asInterface(iBinder);
            Remote.tryExec(new Remote.RemoteVoidFunction() { // from class: com.lion.datapoint.log.BaseConnectManager$2$$ExternalSyntheticLambda0
                @Override // com.lion.datapoint.log.Remote.RemoteVoidFunction
                public final void call() throws RemoteException {
                    this.f$0.m223xe21b85af(iBinder);
                }
            });
            if (BaseConnectManager.this.mServiceListener != null) {
                BaseConnectManager.this.mServiceListener.onServiceConnected();
            }
            BaseConnectManager.this.handleTask();
            BaseConnectManager.this.mChildThread.removeCallbacks(BaseConnectManager.this.mBindServiceTask);
        }

        /* JADX INFO: renamed from: lambda$onServiceConnected$0$com-lion-datapoint-log-BaseConnectManager$2, reason: not valid java name */
        /* synthetic */ void m223xe21b85af(IBinder iBinder) throws RemoteException {
            iBinder.linkToDeath(BaseConnectManager.this.mDeathRecipient, 0);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(BaseConnectManager.this.TAG, "onServiceDisconnected");
            BaseConnectManager.this.mProxy = null;
            if (BaseConnectManager.this.mServiceListener != null) {
                BaseConnectManager.this.mServiceListener.onServiceDisconnected();
            }
        }
    }

    protected BaseConnectManager() {
        HandlerThread handlerThread = new HandlerThread(THREAD_NAME, 6);
        handlerThread.start();
        this.mChildThread = new Handler(handlerThread.getLooper());
        this.mMainThread = new Handler(Looper.getMainLooper());
        bindService();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindService() {
        if (this.mProxy == null) {
            Log.i(this.TAG, "bindService start");
            Intent intent = new Intent(getServiceAction());
            String packageName = getPackageName();
            if (!packageName.isEmpty()) {
                intent.setPackage(packageName);
                boolean zBindService = this.mApplication.bindService(intent, this.mServiceConnection, 1);
                Log.i(this.TAG, "bindService result: " + zBindService);
                if (!zBindService) {
                    attemptToRebindService();
                    return;
                } else {
                    Log.i(this.TAG, "bindService not need");
                    return;
                }
            }
            Log.e(this.TAG, "datapoint is not installed");
        }
    }

    private String getPackageName() {
        if (isAppInstalled(BuildConfig.LIBRARY_PACKAGE_NAME)) {
            Log.i(this.TAG, "com.lion.");
            return BuildConfig.LIBRARY_PACKAGE_NAME;
        }
        if (!isAppInstalled("com.lion.outside.datapoint")) {
            return "";
        }
        Log.i(this.TAG, "com.lion.outside.");
        return "com.lion.outside.datapoint";
    }

    private boolean isAppInstalled(String str) {
        try {
            this.mApplication.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            Log.i(this.TAG, "exception: " + e.getMessage());
            return false;
        }
    }

    protected void attemptToRebindService() {
        Log.i(this.TAG, "attemptToRebindService");
        this.mChildThread.postDelayed(this.mBindServiceTask, getRetryBindTimeMill());
    }

    protected void handleTask() {
        while (true) {
            Runnable runnablePoll = this.mTaskQueue.poll();
            if (runnablePoll == null) {
                return;
            }
            Log.i(this.TAG, "handleTask poll task from task queue");
            this.mChildThread.post(runnablePoll);
        }
    }

    public void init() {
        bindService();
    }

    public boolean isServiceConnected() {
        return isServiceConnected(false);
    }

    public boolean isServiceConnected(boolean z) {
        Log.i(this.TAG, "isServiceConnected tryConnect: " + z);
        if (this.mProxy == null && z) {
            attemptToRebindService();
        }
        return this.mProxy != null;
    }

    public void release() {
        Log.i(this.TAG, "release");
        if (isServiceConnected()) {
            this.mProxy.asBinder().unlinkToDeath(this.mDeathRecipient, 0);
            this.mProxy = null;
            this.mApplication.unbindService(this.mServiceConnection);
        }
    }

    public void setStateListener(IServiceConnectListener iServiceConnectListener) {
        Log.i(this.TAG, "setStateListener");
        this.mServiceListener = iServiceConnectListener;
    }

    public void removeStateListener() {
        Log.i(this.TAG, "removeStateListener");
        this.mServiceListener = null;
    }
}
