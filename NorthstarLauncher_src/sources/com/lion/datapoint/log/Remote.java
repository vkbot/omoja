package com.lion.datapoint.log;

import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Remote {
    private static final String TAG = "Remote";

    public interface RemoteFunction<V> {
        V call() throws RemoteException;
    }

    public interface RemoteVoidFunction {
        void call() throws RemoteException;
    }

    public static <V> V exec(RemoteFunction<V> remoteFunction) {
        try {
            return remoteFunction.call();
        } catch (RemoteException e) {
            throw new IllegalArgumentException("Failed to execute remote call" + e);
        }
    }

    public static void tryExec(RemoteVoidFunction remoteVoidFunction) {
        try {
            remoteVoidFunction.call();
        } catch (RemoteException e) {
            Log.e(TAG, "e: " + e.toString());
        }
    }
}
