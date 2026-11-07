package com.android.server.location;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.ArraySet;
import android.util.Log;
import com.android.internal.location.ILocationProvider;
import com.android.internal.location.ILocationProviderManager;
import com.android.internal.location.ProviderProperties;
import com.android.internal.location.ProviderRequest;
import com.android.internal.util.ConcurrentUtils;
import com.android.server.FgThread;
import com.android.server.ServiceWatcher;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class LocationProviderProxy extends AbstractLocationProvider {
    private static final int MAX_ADDITIONAL_PACKAGES = 2;
    private static final String TAG = "LocationProviderProxy";
    private boolean mBound;
    private final Context mContext;
    private final Object mLock;
    private final ILocationProviderManager.Stub mManager;
    private volatile ProviderRequest mRequest;
    private final ServiceWatcher mServiceWatcher;

    public static LocationProviderProxy createAndRegister(Context context, String action, int enableOverlayResId, int nonOverlayPackageResId) {
        LocationProviderProxy proxy = new LocationProviderProxy(context, action, enableOverlayResId, nonOverlayPackageResId);
        if (proxy.register()) {
            return proxy;
        }
        return null;
    }

    private LocationProviderProxy(Context context, String action, int enableOverlayResId, int nonOverlayPackageResId) {
        super(ConcurrentUtils.DIRECT_EXECUTOR, (Set<String>) Collections.emptySet());
        this.mManager = new ILocationProviderManager.Stub() { // from class: com.android.server.location.LocationProviderProxy.1
            public void onSetAdditionalProviderPackages(List<String> packageNames) {
                int maxCount = Math.min(2, packageNames.size());
                ArraySet<String> allPackages = new ArraySet<>(maxCount + 1);
                for (String packageName : packageNames) {
                    if (packageNames.size() < maxCount) {
                        try {
                            LocationProviderProxy.this.mContext.getPackageManager().getPackageInfo(packageName, 1048576);
                            allPackages.add(packageName);
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.w(LocationProviderProxy.TAG, LocationProviderProxy.this.mServiceWatcher + " specified unknown additional provider package: " + packageName);
                        }
                    } else {
                        return;
                    }
                }
                synchronized (LocationProviderProxy.this.mLock) {
                    if (LocationProviderProxy.this.mBound) {
                        ComponentName service = LocationProviderProxy.this.mServiceWatcher.getBoundService().component;
                        if (service != null) {
                            allPackages.add(service.getPackageName());
                        }
                        LocationProviderProxy.this.setPackageNames(allPackages);
                    }
                }
            }

            public void onSetAllowed(boolean allowed) {
                synchronized (LocationProviderProxy.this.mLock) {
                    if (LocationProviderProxy.this.mBound) {
                        LocationProviderProxy.this.setAllowed(allowed);
                    }
                }
            }

            public void onSetProperties(ProviderProperties properties) {
                synchronized (LocationProviderProxy.this.mLock) {
                    if (LocationProviderProxy.this.mBound) {
                        LocationProviderProxy.this.setProperties(properties);
                    }
                }
            }

            public void onReportLocation(Location location) {
                LocationProviderProxy.this.reportLocation(location);
            }
        };
        this.mLock = new Object();
        this.mContext = context;
        this.mServiceWatcher = new ServiceWatcher(context, FgThread.getHandler(), action, new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$LocationProviderProxy$3wGALcuMWaMkkBRL1d0LQ_QqoCk
            @Override // com.android.server.ServiceWatcher.BinderRunner
            public final void run(IBinder iBinder) throws RemoteException {
                this.f$0.onBind(iBinder);
            }
        }, new Runnable() { // from class: com.android.server.location.-$$Lambda$LocationProviderProxy$26d2FFhpYis1Ws92o2khDXr7LzU
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onUnbind();
            }
        }, enableOverlayResId, nonOverlayPackageResId);
        this.mBound = false;
        this.mRequest = ProviderRequest.EMPTY_REQUEST;
    }

    private boolean register() {
        return this.mServiceWatcher.register();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBind(IBinder binder) throws RemoteException {
        ILocationProvider provider = ILocationProvider.Stub.asInterface(binder);
        synchronized (this.mLock) {
            this.mBound = true;
            provider.setLocationProviderManager(this.mManager);
            ProviderRequest request = this.mRequest;
            if (!request.equals(ProviderRequest.EMPTY_REQUEST)) {
                provider.setRequest(request, request.workSource);
            }
            ComponentName service = this.mServiceWatcher.getBoundService().component;
            if (service != null) {
                setPackageNames(Collections.singleton(service.getPackageName()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUnbind() {
        synchronized (this.mLock) {
            this.mBound = false;
            setState(AbstractLocationProvider.State.EMPTY_STATE);
        }
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void onSetRequest(final ProviderRequest request) {
        this.mRequest = request;
        this.mServiceWatcher.runOnBinder(new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$LocationProviderProxy$Uez3oEpu2OhUykPUhHZnDv6UWJI
            @Override // com.android.server.ServiceWatcher.BinderRunner
            public final void run(IBinder iBinder) throws RemoteException {
                LocationProviderProxy.lambda$onSetRequest$0(request, iBinder);
            }
        });
    }

    static /* synthetic */ void lambda$onSetRequest$0(ProviderRequest request, IBinder binder) throws RemoteException {
        ILocationProvider service = ILocationProvider.Stub.asInterface(binder);
        service.setRequest(request, request.workSource);
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void onExtraCommand(int uid, int pid, final String command, final Bundle extras) {
        this.mServiceWatcher.runOnBinder(new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$LocationProviderProxy$yxlgGzrAmph8SqKppGMl5iNhd-0
            @Override // com.android.server.ServiceWatcher.BinderRunner
            public final void run(IBinder iBinder) throws RemoteException {
                LocationProviderProxy.lambda$onExtraCommand$1(command, extras, iBinder);
            }
        });
    }

    static /* synthetic */ void lambda$onExtraCommand$1(String command, Bundle extras, IBinder binder) throws RemoteException {
        ILocationProvider service = ILocationProvider.Stub.asInterface(binder);
        service.sendExtraCommand(command, extras);
    }

    @Override // com.android.server.location.AbstractLocationProvider
    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        this.mServiceWatcher.dump(fd, pw, args);
    }
}
