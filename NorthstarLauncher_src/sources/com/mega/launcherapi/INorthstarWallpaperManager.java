package com.mega.launcherapi;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.mega.launcherapi.bean.LauncherWallpaper;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface INorthstarWallpaperManager extends IInterface {

    public static class Default implements INorthstarWallpaperManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void cancelLauncherWallpapers(List<String> list, String str) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public boolean changeLauncherWallpaper(String str) throws RemoteException {
            return false;
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void deleteLauncherWallpapers(List<String> list, String str) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public LauncherWallpaper getCurrentWallpaper() throws RemoteException {
            return null;
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void registerWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback, String str) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void resetLauncherSystemWallpaper(String str, String str2) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void setLauncherWallpaper(String str, Bitmap bitmap, Bitmap bitmap2, String str2) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void setLauncherWallpapers(List<String> list, List<Bitmap> list2, List<Bitmap> list3, String str) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void setSingleWallpaper(String str, Bitmap bitmap, String str2) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void showLauncherWallpapers(List<String> list, String str) throws RemoteException {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void unregisterWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException {
        }
    }

    void cancelLauncherWallpapers(List<String> list, String str) throws RemoteException;

    boolean changeLauncherWallpaper(String str) throws RemoteException;

    void deleteLauncherWallpapers(List<String> list, String str) throws RemoteException;

    LauncherWallpaper getCurrentWallpaper() throws RemoteException;

    void registerWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback, String str) throws RemoteException;

    void resetLauncherSystemWallpaper(String str, String str2) throws RemoteException;

    void setLauncherWallpaper(String str, Bitmap bitmap, Bitmap bitmap2, String str2) throws RemoteException;

    void setLauncherWallpapers(List<String> list, List<Bitmap> list2, List<Bitmap> list3, String str) throws RemoteException;

    void setSingleWallpaper(String str, Bitmap bitmap, String str2) throws RemoteException;

    void showLauncherWallpapers(List<String> list, String str) throws RemoteException;

    void unregisterWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException;

    public static abstract class Stub extends Binder implements INorthstarWallpaperManager {
        private static final String DESCRIPTOR = "com.mega.launcherapi.INorthstarWallpaperManager";
        static final int TRANSACTION_cancelLauncherWallpapers = 10;
        static final int TRANSACTION_changeLauncherWallpaper = 9;
        static final int TRANSACTION_deleteLauncherWallpapers = 4;
        static final int TRANSACTION_getCurrentWallpaper = 8;
        static final int TRANSACTION_registerWallpaperManagerCallback = 5;
        static final int TRANSACTION_resetLauncherSystemWallpaper = 7;
        static final int TRANSACTION_setLauncherWallpaper = 2;
        static final int TRANSACTION_setLauncherWallpapers = 3;
        static final int TRANSACTION_setSingleWallpaper = 1;
        static final int TRANSACTION_showLauncherWallpapers = 11;
        static final int TRANSACTION_unregisterWallpaperManagerCallback = 6;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static INorthstarWallpaperManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof INorthstarWallpaperManager)) {
                return (INorthstarWallpaperManager) iInterfaceQueryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSingleWallpaper(parcel.readString(), parcel.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLauncherWallpaper(parcel.readString(), parcel.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bitmap) Bitmap.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLauncherWallpapers(parcel.createStringArrayList(), parcel.createTypedArrayList(Bitmap.CREATOR), parcel.createTypedArrayList(Bitmap.CREATOR), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteLauncherWallpapers(parcel.createStringArrayList(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerWallpaperManagerCallback(IWallpaperManagerCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterWallpaperManagerCallback(IWallpaperManagerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetLauncherSystemWallpaper(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    LauncherWallpaper currentWallpaper = getCurrentWallpaper();
                    parcel2.writeNoException();
                    if (currentWallpaper != null) {
                        parcel2.writeInt(1);
                        currentWallpaper.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zChangeLauncherWallpaper = changeLauncherWallpaper(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zChangeLauncherWallpaper ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelLauncherWallpapers(parcel.createStringArrayList(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    showLauncherWallpapers(parcel.createStringArrayList(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements INorthstarWallpaperManager {
            public static INorthstarWallpaperManager sDefaultImpl;
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

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void setSingleWallpaper(String str, Bitmap bitmap, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bitmap != null) {
                        parcelObtain.writeInt(1);
                        bitmap.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setSingleWallpaper(str, bitmap, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void setLauncherWallpaper(String str, Bitmap bitmap, Bitmap bitmap2, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (bitmap != null) {
                        parcelObtain.writeInt(1);
                        bitmap.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bitmap2 != null) {
                        parcelObtain.writeInt(1);
                        bitmap2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setLauncherWallpaper(str, bitmap, bitmap2, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void setLauncherWallpapers(List<String> list, List<Bitmap> list2, List<Bitmap> list3, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeTypedList(list2);
                    parcelObtain.writeTypedList(list3);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setLauncherWallpapers(list, list2, list3, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void deleteLauncherWallpapers(List<String> list, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().deleteLauncherWallpapers(list, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void registerWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWallpaperManagerCallback != null ? iWallpaperManagerCallback.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerWallpaperManagerCallback(iWallpaperManagerCallback, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void unregisterWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWallpaperManagerCallback != null ? iWallpaperManagerCallback.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterWallpaperManagerCallback(iWallpaperManagerCallback);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void resetLauncherSystemWallpaper(String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().resetLauncherSystemWallpaper(str, str2);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public LauncherWallpaper getCurrentWallpaper() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentWallpaper();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? LauncherWallpaper.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public boolean changeLauncherWallpaper(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().changeLauncherWallpaper(str);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void cancelLauncherWallpapers(List<String> list, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().cancelLauncherWallpapers(list, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.mega.launcherapi.INorthstarWallpaperManager
            public void showLauncherWallpapers(List<String> list, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().showLauncherWallpapers(list, str);
                    } else {
                        parcelObtain2.readException();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(INorthstarWallpaperManager iNorthstarWallpaperManager) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iNorthstarWallpaperManager == null) {
                return false;
            }
            Proxy.sDefaultImpl = iNorthstarWallpaperManager;
            return true;
        }

        public static INorthstarWallpaperManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
