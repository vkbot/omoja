package com.android.server.location;

import android.R;
import android.content.Context;
import android.hardware.location.ActivityRecognitionHardware;
import android.hardware.location.IActivityRecognitionHardwareClient;
import android.hardware.location.IActivityRecognitionHardwareWatcher;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.android.server.FgThread;
import com.android.server.ServiceWatcher;

/* JADX INFO: loaded from: classes.dex */
public class HardwareActivityRecognitionProxy {
    private static final String SERVICE_ACTION = "com.android.location.service.ActivityRecognitionProvider";
    private static final String TAG = "ARProxy";
    private final ActivityRecognitionHardware mInstance;
    private final boolean mIsSupported;
    private final ServiceWatcher mServiceWatcher;

    public static HardwareActivityRecognitionProxy createAndRegister(Context context) {
        HardwareActivityRecognitionProxy arProxy = new HardwareActivityRecognitionProxy(context);
        if (arProxy.register()) {
            return arProxy;
        }
        return null;
    }

    private HardwareActivityRecognitionProxy(Context context) {
        boolean zIsSupported = ActivityRecognitionHardware.isSupported();
        this.mIsSupported = zIsSupported;
        if (zIsSupported) {
            this.mInstance = ActivityRecognitionHardware.getInstance(context);
        } else {
            this.mInstance = null;
        }
        this.mServiceWatcher = new ServiceWatcher(context, FgThread.getHandler(), SERVICE_ACTION, new ServiceWatcher.BinderRunner() { // from class: com.android.server.location.-$$Lambda$HardwareActivityRecognitionProxy$Z7jbekKm-LTVAz47zPN0h1VYfjo
            @Override // com.android.server.ServiceWatcher.BinderRunner
            public final void run(IBinder iBinder) throws RemoteException {
                this.f$0.onBind(iBinder);
            }
        }, null, R.bool.config_cecHdmiCecVersion_userConfigurable, R.string.config_defaultDndAccessPackages);
    }

    private boolean register() {
        return this.mServiceWatcher.register();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onBind(IBinder binder) throws RemoteException {
        String descriptor = binder.getInterfaceDescriptor();
        if (IActivityRecognitionHardwareWatcher.class.getCanonicalName().equals(descriptor)) {
            IActivityRecognitionHardwareWatcher watcher = IActivityRecognitionHardwareWatcher.Stub.asInterface(binder);
            ActivityRecognitionHardware activityRecognitionHardware = this.mInstance;
            if (activityRecognitionHardware != null) {
                watcher.onInstanceChanged(activityRecognitionHardware);
                return;
            }
            return;
        }
        if (IActivityRecognitionHardwareClient.class.getCanonicalName().equals(descriptor)) {
            IActivityRecognitionHardwareClient client = IActivityRecognitionHardwareClient.Stub.asInterface(binder);
            client.onAvailabilityChanged(this.mIsSupported, this.mInstance);
        } else {
            Log.e(TAG, "Unknown descriptor: " + descriptor);
        }
    }
}
