package mega.car;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CarManagerBase {
    protected final MegaCar mCar;

    protected abstract void onCarDisconnected();

    public CarManagerBase(MegaCar megaCar) {
        this.mCar = megaCar;
    }

    protected Context getContext() {
        return this.mCar.getContext();
    }

    protected Handler getEventHandler() {
        return this.mCar.getEventHandler();
    }

    protected Handler getMainThreadEventHandler() {
        return this.mCar.getMainThreadEventHandler();
    }

    protected <T> T handleRemoteExceptionFromCarService(RemoteException remoteException, T t) {
        return (T) this.mCar.handleRemoteExceptionFromCarService(remoteException, t);
    }

    protected void handleRemoteExceptionFromCarService(RemoteException remoteException) {
        this.mCar.handleRemoteExceptionFromCarService(remoteException);
    }
}
