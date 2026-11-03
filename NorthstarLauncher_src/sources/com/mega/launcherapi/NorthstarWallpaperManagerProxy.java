package com.mega.launcherapi;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.mega.launcherapi.bean.LauncherWallpaper;
import com.mega.launcherapi.exception.BitmapSizeException;
import com.mega.launcherapi.exception.InitializedException;
import com.mega.launcherapi.utils.WallpaperUtils;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class NorthstarWallpaperManagerProxy {
    private static final boolean DEBUG = true;
    private static final String SERVICE_ACTION = "com.mega.launcher.wallpaper.BIND_WALLPAPER";
    private static final String SERVICE_PACKAGE = "com.android.launcher3";
    public static final String TAG = "NorthstarWallpaperManagerProxy";
    private static final String VERSION = "v0.8.0";
    private static volatile NorthstarWallpaperManagerProxy sInstance;
    private INorthstarWallpaperManager mIRemoteService;
    private String mPackageName;
    private ServiceBindCallback mServiceBindCallback;
    private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.mega.launcherapi.NorthstarWallpaperManagerProxy.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            NorthstarWallpaperManagerProxy.this.mIRemoteService = INorthstarWallpaperManager.Stub.asInterface(iBinder);
            if (NorthstarWallpaperManagerProxy.this.mServiceBindCallback != null) {
                NorthstarWallpaperManagerProxy.this.mServiceBindCallback.onServiceConnected(componentName, iBinder);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            NorthstarWallpaperManagerProxy.this.mIRemoteService = null;
            if (NorthstarWallpaperManagerProxy.this.mServiceBindCallback != null) {
                NorthstarWallpaperManagerProxy.this.mServiceBindCallback.onServiceDisconnected(componentName);
            }
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            super.onBindingDied(componentName);
            if (NorthstarWallpaperManagerProxy.this.mServiceBindCallback != null) {
                NorthstarWallpaperManagerProxy.this.mServiceBindCallback.onBindingDied(componentName);
            }
            NorthstarWallpaperManagerProxy.this.mIRemoteService = null;
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            super.onNullBinding(componentName);
            if (NorthstarWallpaperManagerProxy.this.mServiceBindCallback != null) {
                NorthstarWallpaperManagerProxy.this.mServiceBindCallback.onNullBinding(componentName);
            }
            NorthstarWallpaperManagerProxy.this.mIRemoteService = null;
        }
    };

    private NorthstarWallpaperManagerProxy() {
    }

    public static NorthstarWallpaperManagerProxy getInstance() {
        if (sInstance == null) {
            synchronized (NorthstarWallpaperManagerProxy.class) {
                if (sInstance == null) {
                    sInstance = new NorthstarWallpaperManagerProxy();
                }
            }
        }
        return sInstance;
    }

    @Deprecated
    public void initialized(Context context) {
        initialized(context, null, null);
    }

    public void initialized(Context context, String str) {
        initialized(context, str, null);
    }

    @Deprecated
    public void initialized(Context context, ServiceBindCallback serviceBindCallback) {
        initialized(context, null, serviceBindCallback);
    }

    public void initialized(Context context, String str, ServiceBindCallback serviceBindCallback) {
        Log.d(TAG, "initialized v0.8.0, context=" + context + ", serviceBindCallback=" + serviceBindCallback + ", mIRemoteService=" + this.mIRemoteService);
        Intent intent = new Intent(SERVICE_ACTION);
        intent.setPackage("com.android.launcher3");
        if (TextUtils.isEmpty(str)) {
            str = context.getPackageName();
        }
        this.mPackageName = str;
        context.bindService(intent, this.mServiceConnection, 1);
        this.mServiceBindCallback = serviceBindCallback;
    }

    @Deprecated
    public void setWallpaper(Bitmap bitmap) throws RemoteException, BitmapSizeException, InitializedException {
        setWallpaper(null, bitmap);
    }

    public void setWallpaper(String str, Bitmap bitmap) throws RemoteException, BitmapSizeException, InitializedException {
        if (this.mIRemoteService == null) {
            throw new InitializedException();
        }
        Bitmap bitmapClipBitmapCenterCrop = WallpaperUtils.clipBitmapCenterCrop(bitmap, 2560, 1440);
        Log.d(TAG, "setWallpaper: id=" + str + " wallpaper=" + bitmap + "_" + bitmap.getWidth() + "_" + bitmap.getHeight() + " cropped=" + bitmapClipBitmapCenterCrop + "_" + bitmapClipBitmapCenterCrop.getWidth() + "_" + bitmapClipBitmapCenterCrop.getHeight());
        this.mIRemoteService.setSingleWallpaper(str, bitmapClipBitmapCenterCrop, this.mPackageName);
    }

    public void deleteLauncherWallpaper(String str) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        iNorthstarWallpaperManager.deleteLauncherWallpapers(Collections.singletonList(str), this.mPackageName);
    }

    public void deleteLauncherWallpapers(List<String> list) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        iNorthstarWallpaperManager.deleteLauncherWallpapers(list, this.mPackageName);
    }

    public void cancelLauncherWallpaper(String str) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        iNorthstarWallpaperManager.cancelLauncherWallpapers(Collections.singletonList(str), this.mPackageName);
    }

    @Deprecated
    public void cancelLauncherWallpapers(List<String> list) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        iNorthstarWallpaperManager.deleteLauncherWallpapers(list, this.mPackageName);
    }

    public void showLauncherWallpaper(String str) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        iNorthstarWallpaperManager.showLauncherWallpapers(Collections.singletonList(str), this.mPackageName);
    }

    @Deprecated
    public void showLauncherWallpapers(List<String> list) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        iNorthstarWallpaperManager.showLauncherWallpapers(list, this.mPackageName);
    }

    @Deprecated
    public void setLauncherWallpaper(Bitmap bitmap, Bitmap bitmap2) throws RemoteException, BitmapSizeException, InitializedException {
        setLauncherWallpaper(null, bitmap, bitmap2);
    }

    public void setLauncherWallpaper(String str, Bitmap bitmap, Bitmap bitmap2) throws RemoteException, BitmapSizeException, InitializedException {
        if (this.mIRemoteService == null) {
            throw new InitializedException();
        }
        setLauncherWallpapers(Collections.singletonList(str), Collections.singletonList(bitmap), Collections.singletonList(bitmap2));
    }

    @Deprecated
    public void setLauncherWallpapers(List<Bitmap> list, List<Bitmap> list2) throws RemoteException, BitmapSizeException, InitializedException {
        setLauncherWallpapers(null, list, list2);
    }

    public void setLauncherWallpapers(List<String> list, List<Bitmap> list2, List<Bitmap> list3) throws RemoteException, BitmapSizeException, InitializedException {
        if (this.mIRemoteService == null) {
            throw new InitializedException();
        }
        int size = list2.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else {
                list2.set(size, WallpaperUtils.clipBitmapCenterCrop(list2.get(size), 2560, 1440));
            }
        }
        for (int size2 = list3.size() - 1; size2 >= 0; size2--) {
            list3.set(size2, WallpaperUtils.clipBitmapCenterCrop(list3.get(size2), 2560, 1440));
        }
        Log.d(TAG, "setLauncherWallpapers: ids=" + list + ", dayWallpapers=" + list2 + ", nightWallpapers=" + list3 + ", mPackageName=" + this.mPackageName);
        this.mIRemoteService.setLauncherWallpapers(list, list2, list3, this.mPackageName);
    }

    public void deinitialized(Context context) {
        Log.d(TAG, "deinitialized v0.8.0, context=" + context);
        try {
            context.unbindService(this.mServiceConnection);
            this.mServiceBindCallback = null;
            this.mIRemoteService = null;
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    public void registerWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback) throws InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        try {
            iNorthstarWallpaperManager.registerWallpaperManagerCallback(iWallpaperManagerCallback, this.mPackageName);
        } catch (RemoteException e) {
            e.printStackTrace();
            throw new InitializedException();
        }
    }

    public void unregisterWallpaperManagerCallback(IWallpaperManagerCallback iWallpaperManagerCallback) throws InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        try {
            iNorthstarWallpaperManager.unregisterWallpaperManagerCallback(iWallpaperManagerCallback);
        } catch (RemoteException e) {
            e.printStackTrace();
            throw new InitializedException();
        }
    }

    @Deprecated
    public void resetLauncherSystemWallpaper(String str) throws InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        try {
            iNorthstarWallpaperManager.resetLauncherSystemWallpaper(str, this.mPackageName);
        } catch (RemoteException e) {
            e.printStackTrace();
            throw new InitializedException();
        }
    }

    public boolean changeLauncherWallpaper(String str) throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        try {
            return iNorthstarWallpaperManager.changeLauncherWallpaper(str);
        } catch (RemoteException e) {
            e.printStackTrace();
            throw new InitializedException();
        }
    }

    public LauncherWallpaper getCurrentLauncherWallpaper() throws RemoteException, InitializedException {
        INorthstarWallpaperManager iNorthstarWallpaperManager = this.mIRemoteService;
        if (iNorthstarWallpaperManager == null) {
            throw new InitializedException();
        }
        return iNorthstarWallpaperManager.getCurrentWallpaper();
    }
}
