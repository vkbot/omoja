package com.android.server.backup.remote;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
@FunctionalInterface
public interface RemoteCallable<T> {
    void call(T t) throws RemoteException;
}
