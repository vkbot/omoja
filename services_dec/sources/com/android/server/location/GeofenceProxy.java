package com.android.server.location;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.hardware.location.GeofenceHardwareService;
import android.hardware.location.IGeofenceHardware;
import android.location.IGeofenceProvider;
import android.location.IGpsGeofenceHardware;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import com.android.server.FgThread;
import com.android.server.ServiceWatcher;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class GeofenceProxy {
    private static final String SERVICE_ACTION = "com.android.location.service.GeofenceProvider";
    private static final String TAG = "GeofenceProxy";
    private volatile IGeofenceHardware mGeofenceHardware;
    private final IGpsGeofenceHardware mGpsGeofenceHardware;
    private final ServiceWatcher mServiceWatcher;

    public static GeofenceProxy createAndBind(Context context, IGpsGeofenceHardware gpsGeofence) {
        GeofenceProxy proxy = new GeofenceProxy(context, gpsGeofence);
        if (proxy.register(context)) {
            return proxy;
        }
        return null;
    }

    private GeofenceProxy(Context context, IGpsGeofenceHardware gpsGeofence) {
        Objects.requireNonNull(gpsGeofence);
        this.mGpsGeofenceHardware = gpsGeofence;
        this.mServiceWatcher = new ServiceWatcher(context, FgThread.getHandler(), SERVICE_ACTION, new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$GeofenceProxy$hIfaTtsg4NqVfDRkaCxUg6rx90I
            @Override // com.android.server.ServiceWatcher.BinderRunner
            public final void run(IBinder iBinder) throws RemoteException {
                this.f$0.updateGeofenceHardware(iBinder);
            }
        }, null, R.bool.config_cecPowerStateChangeOnActiveSourceLostNone_default, R.string.config_healthConnectMigratorPackageName);
        this.mGeofenceHardware = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateGeofenceHardware(IBinder binder) throws RemoteException {
        IGeofenceProvider.Stub.asInterface(binder).setGeofenceHardware(this.mGeofenceHardware);
    }

    private boolean register(Context context) {
        if (this.mServiceWatcher.register()) {
            context.bindServiceAsUser(new Intent(context, (Class<?>) GeofenceHardwareService.class), new GeofenceProxyServiceConnection(), 1, UserHandle.SYSTEM);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class GeofenceProxyServiceConnection implements ServiceConnection {
        private GeofenceProxyServiceConnection() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            IGeofenceHardware geofenceHardware = IGeofenceHardware.Stub.asInterface(service);
            try {
                geofenceHardware.setGpsGeofenceHardware(GeofenceProxy.this.mGpsGeofenceHardware);
                GeofenceProxy.this.mGeofenceHardware = geofenceHardware;
                ServiceWatcher serviceWatcher = GeofenceProxy.this.mServiceWatcher;
                final GeofenceProxy geofenceProxy = GeofenceProxy.this;
                serviceWatcher.runOnBinder(new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$zlbg9IPCIuzTl4MNd_aO2VH84CU
                    @Override // com.android.server.ServiceWatcher.BinderRunner
                    public final void run(IBinder iBinder) throws RemoteException {
                        geofenceProxy.updateGeofenceHardware(iBinder);
                    }
                });
            } catch (RemoteException e) {
                Log.w(GeofenceProxy.TAG, "unable to initialize geofence hardware", e);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            GeofenceProxy.this.mGeofenceHardware = null;
            ServiceWatcher serviceWatcher = GeofenceProxy.this.mServiceWatcher;
            final GeofenceProxy geofenceProxy = GeofenceProxy.this;
            serviceWatcher.runOnBinder(new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$GeofenceProxy$GeofenceProxyServiceConnection$yPO-K2AUteHenF5MXfJoSnZURWI
                @Override // com.android.server.ServiceWatcher.BinderRunner
                public final void run(IBinder iBinder) throws RemoteException {
                    geofenceProxy.updateGeofenceHardware(iBinder);
                }
            });
        }
    }
}
