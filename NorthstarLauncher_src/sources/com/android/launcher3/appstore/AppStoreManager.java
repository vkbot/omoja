package com.android.launcher3.appstore;

import android.content.Context;
import com.android.launcher3.activity.model.DownloadAppInfo;
import com.android.launcher3.util.FlavorUtils;
import com.android.launcher3.util.SingletonHolder;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppStoreManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000 \u00142\u00020\u0001:\u0002\u0014\u0015B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nJ\b\u0010\u000e\u001a\u00020\fH&J\b\u0010\u000f\u001a\u00020\fH&J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0004J\u000e\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\nR\u0014\u0010\u0005\u001a\u00020\u0003X\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/android/launcher3/appstore/AppStoreManager;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "appContext", "getAppContext", "()Landroid/content/Context;", "listeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/android/launcher3/appstore/AppStoreManager$OnAppInfoChangeListener;", "addListener", "", "listener", "destroy", "init", "notifyListeners", "appInfo", "Lcom/android/launcher3/activity/model/DownloadAppInfo;", "removeListener", "Companion", "OnAppInfoChangeListener", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class AppStoreManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Context appContext;
    private final CopyOnWriteArrayList<OnAppInfoChangeListener> listeners;

    /* JADX INFO: compiled from: AppStoreManager.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/android/launcher3/appstore/AppStoreManager$OnAppInfoChangeListener;", "", "onAppInfoChanged", "", "appInfo", "Lcom/android/launcher3/activity/model/DownloadAppInfo;", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public interface OnAppInfoChangeListener {
        void onAppInfoChanged(DownloadAppInfo appInfo);
    }

    public abstract void destroy();

    protected final Context getAppContext() {
        return this.appContext;
    }

    public abstract void init();

    protected AppStoreManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.appContext = applicationContext;
        this.listeners = new CopyOnWriteArrayList<>();
    }

    public final void addListener(OnAppInfoChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.add(listener);
    }

    public final void removeListener(OnAppInfoChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listeners.remove(listener);
    }

    protected final void notifyListeners(DownloadAppInfo appInfo) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Iterator<T> it = this.listeners.iterator();
        while (it.hasNext()) {
            ((OnAppInfoChangeListener) it.next()).onAppInfoChanged(appInfo);
        }
    }

    /* JADX INFO: compiled from: AppStoreManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/android/launcher3/appstore/AppStoreManager$Companion;", "Lcom/android/launcher3/util/SingletonHolder;", "Lcom/android/launcher3/appstore/AppStoreManager;", "Landroid/content/Context;", "()V", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion extends SingletonHolder<AppStoreManager, Context> {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
            super(new Function1<Context, AppStoreManager>() { // from class: com.android.launcher3.appstore.AppStoreManager.Companion.1
                @Override // kotlin.jvm.functions.Function1
                public final AppStoreManager invoke(Context context) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    if (FlavorUtils.isT28() || FlavorUtils.isT1GC()) {
                        return new AppStoreManagerImpl(context);
                    }
                    return new AppStoreManagerDummy(context);
                }
            });
        }
    }
}
