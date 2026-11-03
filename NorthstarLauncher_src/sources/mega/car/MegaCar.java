package mega.car;

import android.app.Activity;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.mega.nexus.os.MegaServiceManager;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import mega.car.config.KeyInput;
import mega.car.hardware.property.CarPropertyManager;
import mega.car.input.CarInputManager;
import mega.car.utils.LogUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class MegaCar {
    private static final long CAR_SERVICE_BINDER_POLLING_INTERVAL_MS = 50;
    private static final long CAR_SERVICE_BINDER_POLLING_MAX_RETRY = 100;
    public static final String CAR_SERVICE_BINDER_SERVICE_NAME = "com.mega.car.CarService";
    private static final long CAR_SERVICE_BIND_MAX_RETRY = 20;
    private static final long CAR_SERVICE_BIND_RETRY_INTERVAL_MS = 500;
    private static final String CAR_SERVICE_CLASS = "com.mega.car.MegaCarService";
    public static final String CAR_SERVICE_PACKAGE = "com.mega.car";
    public static final long CAR_WAIT_TIMEOUT_DO_NOT_WAIT = 0;
    public static final long CAR_WAIT_TIMEOUT_WAIT_FOREVER = -1;
    public static final String PROPERTY_SERVICE = "property";
    private static final int STATE_CONNECTED = 2;
    private static final int STATE_CONNECTING = 1;
    private static final int STATE_DISCONNECTED = 0;
    private static final String TAG_CAR = "MegaCar";
    private int mConnectionRetryCount;
    private int mConnectionState;
    private final Exception mConstructionStack;
    private final Context mContext;
    private final Handler mEventHandler;
    private final Handler mMainThreadEventHandler;
    private ICar mService;
    private boolean mServiceBound;
    private final CarServiceLifecycleListener mStatusChangeCallback;
    private final Object mLock = new Object();
    private final Runnable mConnectionRetryRunnable = new Runnable() { // from class: mega.car.MegaCar.1
        @Override // java.lang.Runnable
        public void run() {
            MegaCar.this.startCarService();
        }
    };
    private final Runnable mConnectionRetryFailedRunnable = new Runnable() { // from class: mega.car.MegaCar.2
        @Override // java.lang.Runnable
        public void run() {
            MegaCar.this.mServiceConnectionListener.onServiceDisconnected(new ComponentName(MegaCar.CAR_SERVICE_PACKAGE, MegaCar.CAR_SERVICE_CLASS));
        }
    };
    private final ServiceConnection mServiceConnectionListener = new ServiceConnection() { // from class: mega.car.MegaCar.3
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (MegaCar.this.mLock) {
                ICar iCarAsInterface = ICar.Stub.asInterface(iBinder);
                if (iCarAsInterface != null) {
                    if (MegaCar.this.mService == null || !MegaCar.this.mService.asBinder().equals(iCarAsInterface.asBinder())) {
                        MegaCar.this.mConnectionState = 2;
                        MegaCar.this.mService = iCarAsInterface;
                        if (MegaCar.this.mStatusChangeCallback != null) {
                            MegaCar.this.mStatusChangeCallback.onLifecycleChanged(MegaCar.this, true);
                            return;
                        }
                        return;
                    }
                    return;
                }
                LogUtil.wtf(MegaCar.TAG_CAR, "null binder service");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (MegaCar.this.mLock) {
                if (MegaCar.this.mConnectionState == 0) {
                    return;
                }
                MegaCar.this.handleCarDisconnectLocked();
                if (MegaCar.this.mStatusChangeCallback != null) {
                    MegaCar.this.mStatusChangeCallback.onLifecycleChanged(MegaCar.this, false);
                } else {
                    MegaCar.this.finishClient();
                }
            }
        }
    };
    private final HashMap<String, CarManagerBase> mServiceMap = new HashMap<>();

    public interface CarServiceLifecycleListener {
        void onLifecycleChanged(MegaCar megaCar, boolean z);
    }

    @Target({ElementType.TYPE_USE})
    @Retention(RetentionPolicy.SOURCE)
    public @interface StateTypeEnum {
    }

    public Context getContext() {
        return this.mContext;
    }

    public Handler getEventHandler() {
        return this.mEventHandler;
    }

    public Handler getMainThreadEventHandler() {
        return this.mMainThreadEventHandler;
    }

    public ICar getService() {
        return this.mService;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c1  */
    public static MegaCar createCar(Context context, Handler handler, long j, CarServiceLifecycleListener carServiceLifecycleListener) {
        long j2;
        long j3;
        assertNonNullContext(context);
        long j4 = CAR_SERVICE_BINDER_POLLING_INTERVAL_MS;
        if (j > 0) {
            j2 = j / CAR_SERVICE_BINDER_POLLING_INTERVAL_MS;
            if (j2 == 0) {
                j2 = 1;
            }
        } else {
            j2 = 0;
        }
        boolean z = false;
        boolean z2 = Looper.myLooper() == Looper.getMainLooper();
        MegaCar megaCar = null;
        int i = 0;
        while (true) {
            IBinder service = MegaServiceManager.getService(CAR_SERVICE_BINDER_SERVICE_NAME);
            if (megaCar == null) {
                megaCar = new MegaCar(context, ICar.Stub.asInterface(service), carServiceLifecycleListener, handler);
            }
            if (service != null) {
                if (!z) {
                    megaCar.dispatchCarReadyToMainThread(z2);
                    megaCar.startCarService();
                    return megaCar;
                }
                synchronized (megaCar.mLock) {
                    LogUtil.w(TAG_CAR, "waited for car_service (ms):" + (((long) i) * j4));
                    if (megaCar.mService != null) {
                        return megaCar;
                    }
                    megaCar.mService = ICar.Stub.asInterface(service);
                    megaCar.mConnectionState = 2;
                    megaCar.dispatchCarReadyToMainThread(z2);
                    return megaCar;
                }
            }
            if (!z) {
                megaCar.startCarService();
                z = true;
            }
            i++;
            if (j < 0) {
                long j5 = i;
                if (j5 >= CAR_SERVICE_BINDER_POLLING_MAX_RETRY) {
                    j3 = 0;
                    if (j5 % CAR_SERVICE_BINDER_POLLING_MAX_RETRY == 0) {
                        LogUtil.w(TAG_CAR, "car_service not ready, waited for car service (ms):" + (j5 * CAR_SERVICE_BINDER_POLLING_INTERVAL_MS));
                    }
                } else {
                    j3 = 0;
                }
                if (j >= 0 && i > j2) {
                    if (j > 0) {
                        LogUtil.w(TAG_CAR, "car_service not ready, waited for car service (ms):" + j);
                    }
                    return megaCar;
                }
            } else {
                j3 = 0;
                if (j >= 0) {
                    if (j > 0) {
                        LogUtil.w(TAG_CAR, "car_service not ready, waited for car service (ms):" + j);
                    }
                    return megaCar;
                }
            }
            j4 = CAR_SERVICE_BINDER_POLLING_INTERVAL_MS;
            try {
                Thread.sleep(CAR_SERVICE_BINDER_POLLING_INTERVAL_MS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                LogUtil.w(TAG_CAR, "interrupted", e);
                return megaCar;
            }
        }
    }

    private static void assertNonNullContext(Context context) {
        Objects.requireNonNull(context);
        if ((context instanceof ContextWrapper) && ((ContextWrapper) context).getBaseContext() == null) {
            throw new NullPointerException("ContextWrapper with null base passed as Context, forgot to set base Context?");
        }
    }

    private void dispatchCarReadyToMainThread(boolean z) {
        CarServiceLifecycleListener carServiceLifecycleListener = this.mStatusChangeCallback;
        if (carServiceLifecycleListener == null) {
            return;
        }
        if (z) {
            carServiceLifecycleListener.onLifecycleChanged(this, true);
        } else {
            this.mMainThreadEventHandler.post(new Runnable() { // from class: mega.car.MegaCar$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1793lambda$dispatchCarReadyToMainThread$0$megacarMegaCar();
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$dispatchCarReadyToMainThread$0$mega-car-MegaCar, reason: not valid java name */
    /* synthetic */ void m1793lambda$dispatchCarReadyToMainThread$0$megacarMegaCar() {
        this.mStatusChangeCallback.onLifecycleChanged(this, true);
    }

    private MegaCar(Context context, ICar iCar, CarServiceLifecycleListener carServiceLifecycleListener, Handler handler) {
        this.mContext = context;
        Handler handlerDetermineEventHandler = determineEventHandler(handler);
        this.mEventHandler = handlerDetermineEventHandler;
        this.mMainThreadEventHandler = determineMainThreadEventHandler(handlerDetermineEventHandler);
        this.mService = iCar;
        if (iCar != null) {
            this.mConnectionState = 2;
        } else {
            this.mConnectionState = 0;
        }
        this.mStatusChangeCallback = carServiceLifecycleListener;
        if (carServiceLifecycleListener == null) {
            this.mConstructionStack = new RuntimeException();
        } else {
            this.mConstructionStack = null;
        }
    }

    private static Handler determineMainThreadEventHandler(Handler handler) {
        Looper mainLooper = Looper.getMainLooper();
        return handler.getLooper() == mainLooper ? handler : new Handler(mainLooper);
    }

    private Handler determineEventHandler(Handler handler) {
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        LogUtil.w(TAG_CAR, "Handles events in main thread !");
        return handler2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCarDisconnectLocked() {
        if (this.mConnectionState == 0) {
            return;
        }
        this.mEventHandler.removeCallbacks(this.mConnectionRetryRunnable);
        this.mMainThreadEventHandler.removeCallbacks(this.mConnectionRetryFailedRunnable);
        this.mConnectionRetryCount = 0;
        tearDownCarManagersLocked();
        this.mService = null;
        this.mConnectionState = 0;
    }

    public synchronized void disconnect() {
        synchronized (this.mLock) {
            LogUtil.d(TAG_CAR, "app call disconnect.");
            handleCarDisconnectLocked();
            if (this.mServiceBound) {
                this.mContext.unbindService(this.mServiceConnectionListener);
                this.mServiceBound = false;
            }
        }
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mService != null;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.mLock) {
            z = true;
            if (this.mConnectionState != 1) {
                z = false;
            }
        }
        return z;
    }

    public <T extends CarManagerBase> T getCarManager(String str) {
        synchronized (this.mLock) {
            if (this.mService == null) {
                LogUtil.w(TAG_CAR, "getCarManager not working while car service not ready");
                return null;
            }
            T t = (T) this.mServiceMap.get(str);
            if (t == null) {
                try {
                    IBinder carService = this.mService.getCarService(str);
                    if (carService == null) {
                        LogUtil.w(TAG_CAR, "getCarManager could not get binder for service:" + str);
                        return null;
                    }
                    t = (T) createCarManagerLocked(str, carService);
                    if (t == null) {
                        LogUtil.w(TAG_CAR, "getCarManager could not create manager for service:" + str);
                        return null;
                    }
                    this.mServiceMap.put(str, t);
                } catch (RemoteException e) {
                    handleRemoteExceptionFromCarService(e);
                }
            }
            return t;
        }
    }

    public <T> T handleRemoteExceptionFromCarService(RemoteException remoteException, T t) {
        handleRemoteExceptionFromCarService(remoteException);
        return t;
    }

    void handleRemoteExceptionFromCarService(RemoteException remoteException) {
        if (remoteException instanceof TransactionTooLargeException) {
            LogUtil.w(TAG_CAR, "Car service with TransactionTooLargeException", remoteException);
        } else {
            LogUtil.w(TAG_CAR, "Car service has crashed", remoteException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishClient() {
        Context context = this.mContext;
        if (context == null) {
            throw new IllegalStateException("Car service has crashed, null Context");
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            if (activity.isFinishing()) {
                return;
            }
            LogUtil.w(TAG_CAR, "Car service crashed, client not handling it, finish Activity, created from " + this.mConstructionStack);
            activity.finish();
            return;
        }
        if (context instanceof Service) {
            Service service = (Service) context;
            killClient(service.getPackageName() + "," + service.getClass().getSimpleName());
        } else {
            killClient(null);
        }
    }

    private void killClient(String str) {
        LogUtil.w(TAG_CAR, "**Car service has crashed. Client(" + str + ") is not handling it. Client should use Car.createCar(..., CarServiceLifecycleListener, ...) to handle it properly. Check printed callstack to check where other version of Car.createCar() was called. Killing the client process**", this.mConstructionStack);
        Process.killProcess(Process.myPid());
    }

    private CarManagerBase createCarManagerLocked(String str, IBinder iBinder) {
        str.hashCode();
        if (str.equals(KeyInput.SERVICE_NAME)) {
            return new CarInputManager(this, iBinder);
        }
        return new CarPropertyManager(this, iBinder);
    }

    @Deprecated
    public static String propIdToName(int i) {
        return MegaCarProperty.getInstance().getNameById(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCarService() {
        Intent intent = new Intent();
        intent.setPackage(CAR_SERVICE_PACKAGE);
        intent.setComponent(new ComponentName(CAR_SERVICE_PACKAGE, CAR_SERVICE_CLASS));
        boolean zBindService = this.mContext.bindService(intent, this.mServiceConnectionListener, 1);
        synchronized (this.mLock) {
            try {
                if (!zBindService) {
                    String str = TAG_CAR;
                    LogUtil.w(str, "bind CarService failed, try again delayed");
                    int i = this.mConnectionRetryCount + 1;
                    this.mConnectionRetryCount = i;
                    if (i > CAR_SERVICE_BIND_MAX_RETRY) {
                        LogUtil.w(str, "cannot bind to car service after max retry");
                        this.mMainThreadEventHandler.post(this.mConnectionRetryFailedRunnable);
                    } else {
                        this.mEventHandler.postDelayed(this.mConnectionRetryRunnable, CAR_SERVICE_BIND_RETRY_INTERVAL_MS);
                    }
                } else {
                    this.mEventHandler.removeCallbacks(this.mConnectionRetryRunnable);
                    this.mMainThreadEventHandler.removeCallbacks(this.mConnectionRetryFailedRunnable);
                    this.mConnectionRetryCount = 0;
                    this.mServiceBound = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void tearDownCarManagersLocked() {
        Iterator<CarManagerBase> it = this.mServiceMap.values().iterator();
        while (it.hasNext()) {
            it.next().onCarDisconnected();
        }
        this.mServiceMap.clear();
    }
}
