package com.mega.nexus.app;

import android.app.ActivityManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.SurfaceControl;

/* JADX INFO: loaded from: classes2.dex */
public interface IRunningTaskChangeListener extends IInterface {

    public static class Default implements IRunningTaskChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.nexus.app.IRunningTaskChangeListener
        public void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IRunningTaskChangeListener
        public void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }

        @Override // com.mega.nexus.app.IRunningTaskChangeListener
        public void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
        }
    }

    void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) throws RemoteException;

    void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    public static abstract class Stub extends Binder implements IRunningTaskChangeListener {
        private static final String DESCRIPTOR = "com.mega.nexus.app.IRunningTaskChangeListener";
        static final int TRANSACTION_onTaskAppeared = 1;
        static final int TRANSACTION_onTaskInfoChanged = 3;
        static final int TRANSACTION_onTaskVanished = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRunningTaskChangeListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IRunningTaskChangeListener)) {
                return (IRunningTaskChangeListener) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onTaskAppeared(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (SurfaceControl) SurfaceControl.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onTaskVanished(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                onTaskInfoChanged(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements IRunningTaskChangeListener {
            public static IRunningTaskChangeListener sDefaultImpl;
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // com.mega.nexus.app.IRunningTaskChangeListener
            public void onTaskAppeared(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (surfaceControl != null) {
                        parcelObtain.writeInt(1);
                        surfaceControl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskAppeared(runningTaskInfo, surfaceControl);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IRunningTaskChangeListener
            public void onTaskVanished(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskVanished(runningTaskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.nexus.app.IRunningTaskChangeListener
            public void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskInfoChanged(runningTaskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IRunningTaskChangeListener iRunningTaskChangeListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iRunningTaskChangeListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iRunningTaskChangeListener;
            return true;
        }

        public static IRunningTaskChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
