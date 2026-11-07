package com.android.server;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import com.android.internal.content.PackageMonitor;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class ServiceWatcher implements ServiceConnection {
    private static final long BLOCKING_BINDER_TIMEOUT_MS = 30000;
    private static final String EXTRA_SERVICE_IS_MULTIUSER = "serviceIsMultiuser";
    private static final String EXTRA_SERVICE_VERSION = "serviceVersion";
    private volatile IBinder mBinder;
    private final Context mContext;
    private int mCurrentUserId;
    private final Handler mHandler = FgThread.getHandler();
    private final Intent mIntent;
    private final BinderRunner mOnBind;
    private final Runnable mOnUnbind;
    private volatile ServiceInfo mServiceInfo;
    private static final String TAG = "ServiceWatcher";
    private static final boolean D = Log.isLoggable(TAG, 3);

    public interface BinderRunner {
        void run(IBinder iBinder) throws RemoteException;
    }

    public interface BlockingBinderRunner<T> {
        T run(IBinder iBinder) throws RemoteException;
    }

    public static final class ServiceInfo implements Comparable<ServiceInfo> {
        public static final ServiceInfo NONE = new ServiceInfo(Integer.MIN_VALUE, null, -10000);
        public final ComponentName component;
        public final int userId;
        public final int version;

        ServiceInfo(ResolveInfo resolveInfo, int currentUserId) {
            boolean isMultiuser;
            Preconditions.checkArgument(resolveInfo.serviceInfo.getComponentName() != null);
            Bundle metadata = resolveInfo.serviceInfo.metaData;
            if (metadata != null) {
                this.version = metadata.getInt(ServiceWatcher.EXTRA_SERVICE_VERSION, Integer.MIN_VALUE);
                isMultiuser = metadata.getBoolean(ServiceWatcher.EXTRA_SERVICE_IS_MULTIUSER, false);
            } else {
                this.version = Integer.MIN_VALUE;
                isMultiuser = false;
            }
            this.component = resolveInfo.serviceInfo.getComponentName();
            this.userId = isMultiuser ? 0 : currentUserId;
        }

        private ServiceInfo(int version, ComponentName component, int userId) {
            Preconditions.checkArgument(component != null || version == Integer.MIN_VALUE);
            this.version = version;
            this.component = component;
            this.userId = userId;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (!(o instanceof ServiceInfo)) {
                return false;
            }
            ServiceInfo that = (ServiceInfo) o;
            return this.version == that.version && this.userId == that.userId && Objects.equals(this.component, that.component);
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.version), this.component, Integer.valueOf(this.userId));
        }

        @Override // java.lang.Comparable
        public int compareTo(ServiceInfo that) {
            int ret = Integer.compare(this.version, that.version);
            if (ret == 0) {
                if (this.component == null && that.component != null) {
                    return -1;
                }
                if (this.component != null && that.component == null) {
                    return 1;
                }
                if (this.userId != 0 && that.userId == 0) {
                    return -1;
                }
                if (this.userId == 0 && that.userId != 0) {
                    return 1;
                }
                return ret;
            }
            return ret;
        }

        public String toString() {
            if (this.component == null) {
                return "none";
            }
            return this.component.toShortString() + "@" + this.version + "[u" + this.userId + "]";
        }
    }

    public ServiceWatcher(Context context, Handler handler, String action, BinderRunner onBind, Runnable onUnbind, int enableOverlayResId, int nonOverlayPackageResId) {
        this.mContext = context;
        Objects.requireNonNull(action);
        this.mIntent = new Intent(action);
        Resources resources = context.getResources();
        boolean enableOverlay = resources.getBoolean(enableOverlayResId);
        if (!enableOverlay) {
            this.mIntent.setPackage(resources.getString(nonOverlayPackageResId));
        }
        this.mOnBind = onBind;
        this.mOnUnbind = onUnbind;
        this.mCurrentUserId = -10000;
        this.mServiceInfo = ServiceInfo.NONE;
        this.mBinder = null;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.server.ServiceWatcher$1] */
    public boolean register() {
        if (this.mContext.getPackageManager().queryIntentServicesAsUser(this.mIntent, 1835008, 0).isEmpty()) {
            return false;
        }
        new PackageMonitor() { // from class: com.android.server.ServiceWatcher.1
            public void onPackageUpdateFinished(String packageName, int uid) {
                ServiceWatcher.this.onPackageChanged(packageName);
            }

            public void onPackageAdded(String packageName, int uid) {
                ServiceWatcher.this.onPackageChanged(packageName);
            }

            public void onPackageRemoved(String packageName, int uid) {
                ServiceWatcher.this.onPackageChanged(packageName);
            }

            public boolean onPackageChanged(String packageName, int uid, String[] components) {
                ServiceWatcher.this.onPackageChanged(packageName);
                return super.onPackageChanged(packageName, uid, components);
            }
        }.register(this.mContext, UserHandle.ALL, true, this.mHandler);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.USER_SWITCHED");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        this.mContext.registerReceiverAsUser(new BroadcastReceiver() { // from class: com.android.server.ServiceWatcher.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                int userId;
                String action = intent.getAction();
                if (action == null || (userId = intent.getIntExtra("android.intent.extra.user_handle", -10000)) == -10000) {
                    return;
                }
                byte b = -1;
                int iHashCode = action.hashCode();
                if (iHashCode != 833559602) {
                    if (iHashCode == 959232034 && action.equals("android.intent.action.USER_SWITCHED")) {
                        b = 0;
                    }
                } else if (action.equals("android.intent.action.USER_UNLOCKED")) {
                    b = 1;
                }
                if (b == 0) {
                    ServiceWatcher.this.onUserSwitched(userId);
                } else if (b == 1) {
                    ServiceWatcher.this.onUserUnlocked(userId);
                }
            }
        }, UserHandle.ALL, intentFilter, null, this.mHandler);
        this.mCurrentUserId = ActivityManager.getCurrentUser();
        this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$register$0$ServiceWatcher();
            }
        });
        return true;
    }

    public /* synthetic */ void lambda$register$0$ServiceWatcher() {
        onBestServiceChanged(false);
    }

    public ServiceInfo getBoundService() {
        return this.mServiceInfo;
    }

    private void onBestServiceChanged(boolean forceRebind) {
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper());
        List<ResolveInfo> resolveInfos = this.mContext.getPackageManager().queryIntentServicesAsUser(this.mIntent, 269484160, this.mCurrentUserId);
        ServiceInfo bestServiceInfo = ServiceInfo.NONE;
        for (ResolveInfo resolveInfo : resolveInfos) {
            ServiceInfo serviceInfo = new ServiceInfo(resolveInfo, this.mCurrentUserId);
            if (serviceInfo.compareTo(bestServiceInfo) > 0) {
                bestServiceInfo = serviceInfo;
            }
        }
        if (forceRebind || !bestServiceInfo.equals(this.mServiceInfo)) {
            rebind(bestServiceInfo);
        }
    }

    private void rebind(ServiceInfo newServiceInfo) {
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper());
        if (!this.mServiceInfo.equals(ServiceInfo.NONE)) {
            if (D) {
                Log.i(TAG, "[" + this.mIntent.getAction() + "] unbinding from " + this.mServiceInfo);
            }
            this.mContext.unbindService(this);
            onServiceDisconnected(this.mServiceInfo.component);
            this.mServiceInfo = ServiceInfo.NONE;
        }
        this.mServiceInfo = newServiceInfo;
        if (this.mServiceInfo.equals(ServiceInfo.NONE)) {
            return;
        }
        Preconditions.checkState(this.mServiceInfo.component != null);
        if (D) {
            Log.i(TAG, getLogPrefix() + " binding to " + this.mServiceInfo);
        }
        Intent bindIntent = new Intent(this.mIntent).setComponent(this.mServiceInfo.component);
        this.mContext.bindServiceAsUser(bindIntent, this, 1073741829, this.mHandler, UserHandle.of(this.mServiceInfo.userId));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName component, IBinder binder) {
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper());
        Preconditions.checkState(this.mBinder == null);
        if (D) {
            Log.i(TAG, getLogPrefix() + " connected to " + component.toShortString());
        }
        this.mBinder = binder;
        BinderRunner binderRunner = this.mOnBind;
        if (binderRunner != null) {
            try {
                binderRunner.run(binder);
            } catch (RemoteException | RuntimeException e) {
                Log.e(TAG, getLogPrefix() + " exception running on " + this.mServiceInfo, e);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName component) {
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper());
        if (this.mBinder == null) {
            return;
        }
        if (D) {
            Log.i(TAG, getLogPrefix() + " disconnected from " + component.toShortString());
        }
        this.mBinder = null;
        Runnable runnable = this.mOnUnbind;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName component) {
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper());
        if (D) {
            Log.i(TAG, getLogPrefix() + " " + component.toShortString() + " died");
        }
        onBestServiceChanged(true);
    }

    void onUserSwitched(int userId) {
        this.mCurrentUserId = userId;
        onBestServiceChanged(false);
    }

    void onUserUnlocked(int userId) {
        if (userId == this.mCurrentUserId) {
            onBestServiceChanged(false);
        }
    }

    void onPackageChanged(String packageName) {
        String currentPackageName = this.mServiceInfo.component != null ? this.mServiceInfo.component.getPackageName() : null;
        onBestServiceChanged(packageName.equals(currentPackageName));
    }

    public final void runOnBinder(final BinderRunner runner) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$runOnBinder$1$ServiceWatcher(runner);
            }
        });
    }

    public /* synthetic */ void lambda$runOnBinder$1$ServiceWatcher(BinderRunner runner) {
        if (this.mBinder == null) {
            return;
        }
        try {
            runner.run(this.mBinder);
        } catch (RemoteException | RuntimeException e) {
            Log.e(TAG, getLogPrefix() + " exception running on " + this.mServiceInfo, e);
        }
    }

    @Deprecated
    public final <T> T runOnBinderBlocking(final BlockingBinderRunner<T> blockingBinderRunner, final T t) {
        try {
            return (T) runOnHandlerBlocking(new Callable() { // from class: com.android.server.-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f$0.lambda$runOnBinderBlocking$2$ServiceWatcher(t, blockingBinderRunner);
                }
            });
        } catch (InterruptedException | TimeoutException e) {
            return t;
        }
    }

    public /* synthetic */ Object lambda$runOnBinderBlocking$2$ServiceWatcher(Object defaultValue, BlockingBinderRunner runner) throws Exception {
        if (this.mBinder == null) {
            return defaultValue;
        }
        try {
            return runner.run(this.mBinder);
        } catch (RemoteException | RuntimeException e) {
            Log.e(TAG, getLogPrefix() + " exception running on " + this.mServiceInfo, e);
            return defaultValue;
        }
    }

    private <T> T runOnHandlerBlocking(Callable<T> c) throws InterruptedException, TimeoutException {
        if (Looper.myLooper() == this.mHandler.getLooper()) {
            try {
                return c.call();
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
        FutureTask<T> task = new FutureTask<>(c);
        this.mHandler.post(task);
        try {
            return task.get(30000L, TimeUnit.MILLISECONDS);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2);
        }
    }

    private String getLogPrefix() {
        return "[" + this.mIntent.getAction() + "]";
    }

    public String toString() {
        return this.mServiceInfo.toString();
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("service=" + this.mServiceInfo);
        StringBuilder sb = new StringBuilder();
        sb.append("connected=");
        sb.append(this.mBinder != null);
        pw.println(sb.toString());
    }
}
