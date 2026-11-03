package com.android.launcher3.model;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.provider.Settings;
import androidx.lifecycle.Observer;
import com.android.launcher3.Workspace;
import com.android.launcher3.activity.model.Utils;
import com.android.launcher3.util.LinkManagerKt;
import mega.log.MLog;

/* JADX INFO: loaded from: classes.dex */
public class RedHotModel {
    private static final String TAG = "RedHotModel";
    private final ContentObserver mContentResolver;
    private final Context mContext;
    private final Observer<Boolean> mLinkObserver;
    private Workspace mWorkspace;

    /* JADX INFO: renamed from: lambda$new$0$com-android-launcher3-model-RedHotModel, reason: not valid java name */
    /* synthetic */ void m122lambda$new$0$comandroidlauncher3modelRedHotModel(Boolean bool) {
        notifyCustomIconUpdate();
    }

    public RedHotModel(Context context, Workspace workspace) {
        Observer<Boolean> observer = new Observer() { // from class: com.android.launcher3.model.RedHotModel$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f$0.m122lambda$new$0$comandroidlauncher3modelRedHotModel((Boolean) obj);
            }
        };
        this.mLinkObserver = observer;
        this.mContentResolver = new ContentObserver(null) { // from class: com.android.launcher3.model.RedHotModel.1
            @Override // android.database.ContentObserver
            public void onChange(boolean selfChange) {
                super.onChange(selfChange);
                if (selfChange) {
                    return;
                }
                RedHotModel.this.notifyRedHotUpdate();
            }
        };
        this.mContext = context;
        this.mWorkspace = workspace;
        registerUpgradeUri();
        LinkManagerKt.getLinkManager(context).getCarPlayState().observeForever(observer);
        LinkManagerKt.getLinkManager(context).getAndroidAutoState().observeForever(observer);
    }

    public void release() {
        this.mContext.getContentResolver().unregisterContentObserver(this.mContentResolver);
        LinkManagerKt.getLinkManager(this.mContext).getCarPlayState().removeObserver(this.mLinkObserver);
        LinkManagerKt.getLinkManager(this.mContext).getAndroidAutoState().removeObserver(this.mLinkObserver);
    }

    private void registerUpgradeUri() {
        Uri uriFor = Settings.Global.getUriFor(Utils.UPGRADE_URI);
        Uri uriFor2 = Settings.System.getUriFor(Utils.BT_PHONE_NUM_URI);
        Uri uriFor3 = Settings.System.getUriFor(Utils.CALENDAR_SCHEDULE_URI);
        this.mContext.getContentResolver().registerContentObserver(uriFor, true, this.mContentResolver);
        this.mContext.getContentResolver().registerContentObserver(uriFor2, true, this.mContentResolver);
        this.mContext.getContentResolver().registerContentObserver(uriFor3, true, this.mContentResolver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRedHotUpdate() {
        MLog.d("notifyRedHotUpdate");
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            workspace.post(new Runnable() { // from class: com.android.launcher3.model.RedHotModel$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m124xa8405359();
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$notifyRedHotUpdate$1$com-android-launcher3-model-RedHotModel, reason: not valid java name */
    /* synthetic */ void m124xa8405359() {
        this.mWorkspace.updateNotificationDots(null);
    }

    private void notifyCustomIconUpdate() {
        MLog.i("notifyCustomIconUpdate");
        Workspace workspace = this.mWorkspace;
        if (workspace != null) {
            workspace.post(new Runnable() { // from class: com.android.launcher3.model.RedHotModel$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m123x3c614e8();
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$notifyCustomIconUpdate$2$com-android-launcher3-model-RedHotModel, reason: not valid java name */
    /* synthetic */ void m123x3c614e8() {
        this.mWorkspace.updateCustomIcon();
    }
}
