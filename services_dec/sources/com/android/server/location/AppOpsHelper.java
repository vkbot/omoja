package com.android.server.location;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.util.Log;
import com.android.internal.util.Preconditions;
import com.android.internal.util.function.pooled.PooledLambda;
import com.android.server.FgThread;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes.dex */
public class AppOpsHelper {
    private AppOpsManager mAppOps;
    private final Context mContext;
    private final CopyOnWriteArrayList<LocationAppOpListener> mListeners = new CopyOnWriteArrayList<>();

    public interface LocationAppOpListener {
        void onAppOpsChanged(String str);
    }

    public AppOpsHelper(Context context) {
        this.mContext = context;
    }

    public synchronized void onSystemReady() {
        if (this.mAppOps != null) {
            return;
        }
        AppOpsManager appOpsManager = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        Objects.requireNonNull(appOpsManager);
        AppOpsManager appOpsManager2 = appOpsManager;
        this.mAppOps = appOpsManager2;
        appOpsManager2.startWatchingMode(0, (String) null, 1, (AppOpsManager.OnOpChangedListener) new AnonymousClass1());
    }

    /* JADX INFO: renamed from: com.android.server.location.AppOpsHelper$1, reason: invalid class name */
    class AnonymousClass1 extends AppOpsManager.OnOpChangedInternalListener {
        AnonymousClass1() {
        }

        public void onOpChanged(int op, String packageName) {
            FgThread.getHandler().sendMessage(PooledLambda.obtainMessage(new BiConsumer() { // from class: com.android.server.location.-$$Lambda$AppOpsHelper$1$fPZXj7CVL4Hu3p8NHzaQ4UsXWMw
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ((AppOpsHelper) obj).onAppOpChanged((String) obj2);
                }
            }, AppOpsHelper.this, packageName));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAppOpChanged(String packageName) {
        if (LocationManagerService.D) {
            Log.v(LocationManagerService.TAG, "location appop changed for " + packageName);
        }
        for (LocationAppOpListener listener : this.mListeners) {
            listener.onAppOpsChanged(packageName);
        }
    }

    public void addListener(LocationAppOpListener listener) {
        this.mListeners.add(listener);
    }

    public void removeListener(LocationAppOpListener listener) {
        this.mListeners.remove(listener);
    }

    public boolean checkLocationAccess(CallerIdentity callerIdentity) {
        synchronized (this) {
            Preconditions.checkState(this.mAppOps != null);
        }
        if (callerIdentity.permissionLevel == 0) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            if (this.mContext.checkPermission(CallerIdentity.asPermission(callerIdentity.permissionLevel), callerIdentity.pid, callerIdentity.uid) != 0) {
                return false;
            }
            return this.mAppOps.checkOpNoThrow(CallerIdentity.asAppOp(callerIdentity.permissionLevel), callerIdentity.uid, callerIdentity.packageName) == 0;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    public boolean noteLocationAccess(CallerIdentity callerIdentity) {
        if (callerIdentity.permissionLevel == 0) {
            return false;
        }
        long identity = Binder.clearCallingIdentity();
        try {
            if (this.mContext.checkPermission(CallerIdentity.asPermission(callerIdentity.permissionLevel), callerIdentity.pid, callerIdentity.uid) != 0) {
                Binder.restoreCallingIdentity(identity);
                return false;
            }
            Binder.restoreCallingIdentity(identity);
            return noteOpNoThrow(CallerIdentity.asAppOp(callerIdentity.permissionLevel), callerIdentity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(identity);
            throw th;
        }
    }

    public boolean startLocationMonitoring(CallerIdentity identity) {
        return startLocationMonitoring(41, identity);
    }

    public void stopLocationMonitoring(CallerIdentity identity) {
        stopLocationMonitoring(41, identity);
    }

    public boolean startHighPowerLocationMonitoring(CallerIdentity identity) {
        return startLocationMonitoring(42, identity);
    }

    public void stopHighPowerLocationMonitoring(CallerIdentity identity) {
        stopLocationMonitoring(42, identity);
    }

    public boolean noteMockLocationAccess(CallerIdentity callerIdentity) {
        synchronized (this) {
            Preconditions.checkState(this.mAppOps != null);
        }
        long identity = Binder.clearCallingIdentity();
        try {
            return this.mAppOps.noteOp(58, callerIdentity.uid, callerIdentity.packageName, callerIdentity.featureId, callerIdentity.listenerId) == 0;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private boolean startLocationMonitoring(int appOp, CallerIdentity callerIdentity) {
        synchronized (this) {
            Preconditions.checkState(this.mAppOps != null);
        }
        long identity = Binder.clearCallingIdentity();
        try {
            return this.mAppOps.startOpNoThrow(appOp, callerIdentity.uid, callerIdentity.packageName, false, callerIdentity.featureId, callerIdentity.listenerId) == 0;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private void stopLocationMonitoring(int appOp, CallerIdentity callerIdentity) {
        synchronized (this) {
            Preconditions.checkState(this.mAppOps != null);
        }
        long identity = Binder.clearCallingIdentity();
        try {
            this.mAppOps.finishOp(appOp, callerIdentity.uid, callerIdentity.packageName, callerIdentity.featureId);
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }

    private boolean noteOpNoThrow(int appOp, CallerIdentity callerIdentity) {
        synchronized (this) {
            Preconditions.checkState(this.mAppOps != null);
        }
        long identity = Binder.clearCallingIdentity();
        try {
            return this.mAppOps.noteOpNoThrow(appOp, callerIdentity.uid, callerIdentity.packageName, callerIdentity.featureId, callerIdentity.listenerId) == 0;
        } finally {
            Binder.restoreCallingIdentity(identity);
        }
    }
}
