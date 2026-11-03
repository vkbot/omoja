package com.android.launcher3.appstore;

import android.content.Context;
import com.android.launcher3.activity.model.DownloadAppInfo;
import com.lion.appversion.AppInfo;
import com.lion.appversion.AppVersionManager;
import com.lion.appversion.IAppUpdateCallBack;
import com.lion.appversion.listener.ServiceConnectListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import mega.log.MLog;

/* JADX INFO: compiled from: AppStoreManagerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0006\b\u0000\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\f\u0010\r\u001a\u00020\u000e*\u00020\u000fH\u0002R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/android/launcher3/appstore/AppStoreManagerImpl;", "Lcom/android/launcher3/appstore/AppStoreManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "appUpdateCallback", "com/android/launcher3/appstore/AppStoreManagerImpl$appUpdateCallback$1", "Lcom/android/launcher3/appstore/AppStoreManagerImpl$appUpdateCallback$1;", "connectListener", "Lcom/lion/appversion/listener/ServiceConnectListener;", "destroy", "", "init", "asDownloadInfo", "Lcom/android/launcher3/activity/model/DownloadAppInfo;", "Lcom/lion/appversion/AppInfo;", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppStoreManagerImpl extends AppStoreManager {
    private static final String TAG = "AppStoreManagerImpl";
    private final AppStoreManagerImpl$appUpdateCallback$1 appUpdateCallback;
    private final ServiceConnectListener connectListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.android.launcher3.appstore.AppStoreManagerImpl$appUpdateCallback$1] */
    public AppStoreManagerImpl(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.connectListener = new ServiceConnectListener() { // from class: com.android.launcher3.appstore.AppStoreManagerImpl$$ExternalSyntheticLambda0
            @Override // com.lion.appversion.listener.ServiceConnectListener
            public final void onRemoteConnectStatus(boolean z) {
                AppStoreManagerImpl.connectListener$lambda$0(z);
            }
        };
        this.appUpdateCallback = new IAppUpdateCallBack.Stub() { // from class: com.android.launcher3.appstore.AppStoreManagerImpl$appUpdateCallback$1
            @Override // com.lion.appversion.IAppUpdateCallBack
            public void callBackAppinfo(AppInfo appInfo) {
                Intrinsics.checkNotNullParameter(appInfo, "appInfo");
                DownloadAppInfo downloadAppInfoAsDownloadInfo = this.this$0.asDownloadInfo(appInfo);
                MLog.d("AppStoreManagerImpl", "callBackAppinfo: " + downloadAppInfoAsDownloadInfo);
                this.this$0.notifyListeners(downloadAppInfoAsDownloadInfo);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void connectListener$lambda$0(boolean z) {
        MLog.d(TAG, "onRemoteConnectStatus: " + z);
    }

    @Override // com.android.launcher3.appstore.AppStoreManager
    public void init() {
        MLog.d(TAG, "init: ");
        try {
            AppVersionManager.getInstance().init(getAppContext(), this.connectListener);
            AppVersionManager.getInstance().getAppInfo(this.appUpdateCallback);
        } catch (RuntimeException e) {
            MLog.e(TAG, "init: " + e.getMessage());
        }
    }

    @Override // com.android.launcher3.appstore.AppStoreManager
    public void destroy() {
        MLog.d(TAG, "destroy: ");
        try {
            AppVersionManager.getInstance().disconnectInfoService();
        } catch (RuntimeException e) {
            MLog.e(TAG, "destroy: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DownloadAppInfo asDownloadInfo(AppInfo appInfo) {
        String softwareId = appInfo.getSoftwareId();
        Intrinsics.checkNotNullExpressionValue(softwareId, "softwareId");
        String softwareName = appInfo.getSoftwareName();
        Intrinsics.checkNotNullExpressionValue(softwareName, "softwareName");
        String softwareIcon = appInfo.getSoftwareIcon();
        String packageName = appInfo.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        return new DownloadAppInfo(softwareId, softwareName, null, softwareIcon, packageName, appInfo.getProgress(), appInfo.getStatus());
    }
}
