package com.android.launcher3;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import androidx.lifecycle.CoroutineLiveDataKt;
import com.android.launcher3.activity.AppListActivity;
import com.android.launcher3.appstore.AppStoreManager;
import com.android.launcher3.util.ActivityLifecycleCallbacksAdapter;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LauncherTiming;
import com.android.launcher3.util.TaskStackController;
import com.android.launcher3.util.TaskStackControllerKt;
import com.mega.launcher.wallpaper.WallpaperRepository;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LauncherApplication.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0014J\u0010\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\u0007H\u0016J\b\u0010\u000f\u001a\u00020\u0007H\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/android/launcher3/LauncherApplication;", "Landroid/app/Application;", "()V", "appListActivity", "Ljava/lang/ref/WeakReference;", "Lcom/android/launcher3/activity/AppListActivity;", "attachBaseContext", "", "base", "Landroid/content/Context;", "getComponent", "Landroid/content/ComponentName;", "taskId", "", "onCreate", "onTerminate", "Companion", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LauncherApplication extends Application {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "LauncherApplication";
    private static LauncherApplication sInstance;
    private WeakReference<AppListActivity> appListActivity;

    @JvmStatic
    public static final LauncherApplication get() {
        return INSTANCE.get();
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        Intrinsics.checkNotNullParameter(base, "base");
        super.attachBaseContext(base);
        sInstance = this;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        LauncherTiming.note(TAG, "onCreate start");
        WallpaperRepository.INSTANCE.getInstance(this);
        registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacksAdapter() { // from class: com.android.launcher3.LauncherApplication.onCreate.1
            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                if (activity instanceof AppListActivity) {
                    LauncherApplication.this.appListActivity = new WeakReference(activity);
                }
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                Intrinsics.checkNotNullParameter(activity, "activity");
                if (activity instanceof AppListActivity) {
                    LauncherApplication.this.appListActivity = null;
                }
            }
        });
        Executors.MODEL_EXECUTOR.getHandler().postDelayed(new Runnable() { // from class: com.android.launcher3.LauncherApplication$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                LauncherApplication.onCreate$lambda$1(this.f$0);
            }
        }, CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        AppStoreManager.INSTANCE.getInstance(this).init();
        LauncherTiming.note(TAG, "onCreate end");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1(final LauncherApplication this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Executors.THREAD_POOL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.LauncherApplication$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                LauncherApplication.onCreate$lambda$1$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$1$lambda$0(LauncherApplication this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LauncherApplication launcherApplication = this$0;
        final LauncherBuriedController launcherBuriedController = new LauncherBuriedController(launcherApplication);
        TaskStackControllerKt.getTaskStackController(launcherApplication).setup();
        TaskStackControllerKt.getTaskStackController(launcherApplication).addOnTaskChangedListener(new TaskStackController.OnTaskChangeListener() { // from class: com.android.launcher3.LauncherApplication$onCreate$2$1$1
            @Override // com.android.launcher3.util.TaskStackController.OnTaskChangeListener
            public void onTaskEnter(ComponentName componentName) {
                Intrinsics.checkNotNullParameter(componentName, "componentName");
                launcherBuriedController.onActivityOpened(componentName);
            }

            @Override // com.android.launcher3.util.TaskStackController.OnTaskChangeListener
            public void onTaskExit(ComponentName componentName) {
                Intrinsics.checkNotNullParameter(componentName, "componentName");
                launcherBuriedController.onActivityClosed(componentName);
            }
        });
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        AppStoreManager.INSTANCE.getInstance(this).destroy();
    }

    public final ComponentName getComponent(int taskId) {
        return TaskStackControllerKt.getTaskStackController(this).getComponent(taskId);
    }

    /* JADX INFO: compiled from: LauncherApplication.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/android/launcher3/LauncherApplication$Companion;", "", "()V", "TAG", "", "sInstance", "Lcom/android/launcher3/LauncherApplication;", "get", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LauncherApplication get() {
            LauncherApplication launcherApplication = LauncherApplication.sInstance;
            Intrinsics.checkNotNull(launcherApplication);
            return launcherApplication;
        }
    }
}
