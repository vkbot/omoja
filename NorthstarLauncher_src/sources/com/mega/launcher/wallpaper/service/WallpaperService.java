package com.mega.launcher.wallpaper.service;

import android.app.Service;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.launcher3.LauncherSettings;
import com.mega.launcher.wallpaper.WallpaperRepository;
import com.mega.launcher.wallpaper.bean.WallpaperInfo;
import com.mega.launcherapi.INorthstarWallpaperManager;
import com.mega.launcherapi.IWallpaperManagerCallback;
import com.mega.launcherapi.WallpaperConstant;
import com.mega.launcherapi.bean.LauncherWallpaper;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: WallpaperService.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u0014\u001a\u00020\tJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/mega/launcher/wallpaper/service/WallpaperService;", "Landroid/app/Service;", "()V", "binderService", "Lcom/mega/launcherapi/INorthstarWallpaperManager$Stub;", "wallpaperCallbackList", "Landroid/os/RemoteCallbackList;", "Lcom/mega/launcherapi/IWallpaperManagerCallback;", "notifyWallpaperChanged", "", "wallpaperInfo", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "notifyWallpaperDeleteResult", "resultCode", "", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "", "notifyWallpaperSetResult", "result", "", "notifyWallpapersChanged", "onBind", "Landroid/os/IBinder;", LauncherSettings.Favorites.INTENT, "Landroid/content/Intent;", "Companion", "WallpaperManager", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WallpaperService extends Service {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "WallpaperService";
    private final INorthstarWallpaperManager.Stub binderService = new WallpaperManager();
    private final RemoteCallbackList<IWallpaperManagerCallback> wallpaperCallbackList = new RemoteCallbackList<>();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        MLog.d(TAG, "onBind: " + intent);
        return this.binderService;
    }

    public final void notifyWallpaperChanged(final WallpaperInfo wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        WallpaperServiceKt.broadcast(this.wallpaperCallbackList, new Function1<IWallpaperManagerCallback, Unit>() { // from class: com.mega.launcher.wallpaper.service.WallpaperService.notifyWallpaperChanged.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException {
                invoke2(iWallpaperManagerCallback);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(IWallpaperManagerCallback it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onCurrentTopWallpaperChanged(WallpaperService.INSTANCE.generateLauncherWallpaper(wallpaperInfo));
            }
        });
    }

    public final void notifyWallpaperSetResult(final boolean result, final WallpaperInfo wallpaperInfo) {
        Intrinsics.checkNotNullParameter(wallpaperInfo, "wallpaperInfo");
        WallpaperServiceKt.broadcast(this.wallpaperCallbackList, new Function1<IWallpaperManagerCallback, Unit>() { // from class: com.mega.launcher.wallpaper.service.WallpaperService.notifyWallpaperSetResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException {
                invoke2(iWallpaperManagerCallback);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(IWallpaperManagerCallback it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onWallpaperSetResult(result, wallpaperInfo.getWallpaper().getName());
            }
        });
    }

    public final void notifyWallpaperDeleteResult(final int resultCode, final String wallpaperId) {
        WallpaperServiceKt.broadcast(this.wallpaperCallbackList, new Function1<IWallpaperManagerCallback, Unit>() { // from class: com.mega.launcher.wallpaper.service.WallpaperService.notifyWallpaperDeleteResult.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException {
                invoke2(iWallpaperManagerCallback);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(IWallpaperManagerCallback it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onWallpaperDeleteResult(resultCode, wallpaperId);
            }
        });
    }

    public final void notifyWallpapersChanged() {
        WallpaperServiceKt.broadcast(this.wallpaperCallbackList, new Function1<IWallpaperManagerCallback, Unit>() { // from class: com.mega.launcher.wallpaper.service.WallpaperService.notifyWallpapersChanged.1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(IWallpaperManagerCallback iWallpaperManagerCallback) throws RemoteException {
                invoke2(iWallpaperManagerCallback);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(IWallpaperManagerCallback it) throws RemoteException {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onWallpapersChanged();
            }
        });
    }

    /* JADX INFO: compiled from: WallpaperService.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J \u0010\f\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0016J,\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\b\u001a\u00020\u0007H\u0016J@\u0010\u001a\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00062\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0016J$\u0010\u001d\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u001e\u0010\u001f\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010 \u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006!"}, d2 = {"Lcom/mega/launcher/wallpaper/service/WallpaperService$WallpaperManager;", "Lcom/mega/launcherapi/INorthstarWallpaperManager$Stub;", "(Lcom/mega/launcher/wallpaper/service/WallpaperService;)V", "cancelLauncherWallpapers", "", "ids", "", "", "fromPackage", "changeLauncherWallpaper", "", WallpaperConstant.WALLPAPER_COLUMN_ORIGINAL_ID, "deleteLauncherWallpapers", "getCurrentWallpaper", "Lcom/mega/launcherapi/bean/LauncherWallpaper;", "registerWallpaperManagerCallback", "callBack", "Lcom/mega/launcherapi/IWallpaperManagerCallback;", "packageName", "resetLauncherSystemWallpaper", "wallpaperName", "setLauncherWallpaper", WallpaperConstant.WALLPAPER_COLUMN_ID, "dayWallpaper", "Landroid/graphics/Bitmap;", "nightWallpaper", "setLauncherWallpapers", "dayWallpapers", "nightWallpapers", "setSingleWallpaper", "wallpaper", "showLauncherWallpapers", "unregisterWallpaperManagerCallback", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class WallpaperManager extends INorthstarWallpaperManager.Stub {
        public WallpaperManager() {
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void setSingleWallpaper(String id, Bitmap wallpaper, String fromPackage) throws RemoteException {
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            if (wallpaper == null) {
                throw new RemoteException("wallpaper is null");
            }
            MLog.d(WallpaperService.TAG, "setSingleWallpaper: id=" + id + " wallpaper=" + wallpaper.getWidth() + '*' + wallpaper.getHeight() + " package=" + fromPackage);
            WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).addSingleWallpaper(id, wallpaper, fromPackage);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void setLauncherWallpaper(String id, Bitmap dayWallpaper, Bitmap nightWallpaper, String fromPackage) throws RemoteException {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            if (dayWallpaper == null || nightWallpaper == null) {
                throw new RemoteException("wallpaper is null");
            }
            MLog.d(WallpaperService.TAG, "setLauncherWallpaper: id=" + id + " dayWallpaper=" + dayWallpaper.getWidth() + '*' + dayWallpaper.getHeight() + " package=" + fromPackage);
            setLauncherWallpapers(CollectionsKt.listOf(id), CollectionsKt.listOf(dayWallpaper), CollectionsKt.listOf(nightWallpaper), fromPackage);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void setLauncherWallpapers(List<String> ids, List<Bitmap> dayWallpapers, List<Bitmap> nightWallpapers, String fromPackage) throws RemoteException {
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            if (ids == null || dayWallpapers == null || nightWallpapers == null) {
                throw new RemoteException("wallpaper is null");
            }
            if (ids.size() != dayWallpapers.size()) {
                throw new RemoteException("ids size is not equal dayWallpapers size");
            }
            if (dayWallpapers.size() != nightWallpapers.size()) {
                throw new RemoteException("dayWallpapers size is not equal nightWallpapers size");
            }
            String nameForUid = WallpaperService.this.getPackageManager().getNameForUid(INorthstarWallpaperManager.Stub.getCallingUid());
            MLog.d(WallpaperService.TAG, "setLauncherWallpapers: ids=" + ids + " package=" + fromPackage + " calling=" + nameForUid);
            WallpaperRepository companion = WallpaperRepository.INSTANCE.getInstance(WallpaperService.this);
            Intrinsics.checkNotNull(nameForUid);
            companion.addLauncherWallpapers(ids, dayWallpapers, nightWallpapers, nameForUid);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void deleteLauncherWallpapers(List<String> ids, String fromPackage) throws RemoteException {
            Intrinsics.checkNotNullParameter(ids, "ids");
            MLog.d(WallpaperService.TAG, "deleteLauncherWallpapers: ids=" + ids + " package=" + fromPackage);
            if (ids.isEmpty()) {
                return;
            }
            WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).deleteLauncherWallpapers(ids);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void registerWallpaperManagerCallback(IWallpaperManagerCallback callBack, String packageName) {
            Intrinsics.checkNotNullParameter(callBack, "callBack");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            MLog.d(WallpaperService.TAG, "registerWallpaperManagerCallback: " + callBack + " packageName=" + packageName);
            WallpaperService.this.wallpaperCallbackList.register(callBack);
            WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).setWallpaperService(WallpaperService.this);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void unregisterWallpaperManagerCallback(IWallpaperManagerCallback callBack) {
            Intrinsics.checkNotNullParameter(callBack, "callBack");
            MLog.d(WallpaperService.TAG, "unregisterWallpaperManagerCallback: " + callBack);
            WallpaperService.this.wallpaperCallbackList.unregister(callBack);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void resetLauncherSystemWallpaper(String wallpaperName, String fromPackage) {
            Intrinsics.checkNotNullParameter(wallpaperName, "wallpaperName");
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            MLog.d(WallpaperService.TAG, "resetLauncherSystemWallpaper: wallpaperName=" + wallpaperName + " fromPackage=" + fromPackage);
            WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).resetLauncherSystemWallpaper(wallpaperName);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public LauncherWallpaper getCurrentWallpaper() {
            WallpaperRepository companion = WallpaperRepository.INSTANCE.getInstance(WallpaperService.this);
            WallpaperInfo wallpaperInfo = companion.getCurrentWallpaper();
            if (wallpaperInfo == null) {
                wallpaperInfo = companion.getStaticWallpapers().get(0);
            }
            Companion companion2 = WallpaperService.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(wallpaperInfo, "wallpaperInfo");
            return companion2.generateLauncherWallpaper(wallpaperInfo);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public boolean changeLauncherWallpaper(String wallpaperId) throws RemoteException {
            Intrinsics.checkNotNullParameter(wallpaperId, "wallpaperId");
            if (TextUtils.isEmpty(wallpaperId)) {
                throw new RemoteException("wallpaperId is null");
            }
            return WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).changeLauncherWallpaper(wallpaperId);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void cancelLauncherWallpapers(List<String> ids, String fromPackage) throws RemoteException {
            Intrinsics.checkNotNullParameter(ids, "ids");
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            MLog.d(WallpaperService.TAG, "cancelLauncherWallpapers: ids=" + ids + " package=" + fromPackage);
            WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).updateLauncherWallpapers(ids, true);
        }

        @Override // com.mega.launcherapi.INorthstarWallpaperManager
        public void showLauncherWallpapers(List<String> ids, String fromPackage) throws RemoteException {
            Intrinsics.checkNotNullParameter(ids, "ids");
            Intrinsics.checkNotNullParameter(fromPackage, "fromPackage");
            MLog.d(WallpaperService.TAG, "showLauncherWallpapers: ids=" + ids + ", package=" + fromPackage);
            WallpaperRepository.INSTANCE.getInstance(WallpaperService.this).updateLauncherWallpapers(ids, false);
        }
    }

    /* JADX INFO: compiled from: WallpaperService.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/mega/launcher/wallpaper/service/WallpaperService$Companion;", "", "()V", "TAG", "", "generateLauncherWallpaper", "Lcom/mega/launcherapi/bean/LauncherWallpaper;", "currentWallpaper", "Lcom/mega/launcher/wallpaper/bean/WallpaperInfo;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final LauncherWallpaper generateLauncherWallpaper(WallpaperInfo currentWallpaper) {
            return new LauncherWallpaper(currentWallpaper.getWallpaper().getId(), currentWallpaper.getWallpaper().getWallpaperId(), currentWallpaper.getWallpaper().getName(), currentWallpaper.getWallpaper().getFrom());
        }
    }
}
