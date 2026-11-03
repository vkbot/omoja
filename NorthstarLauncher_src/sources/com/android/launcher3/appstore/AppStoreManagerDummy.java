package com.android.launcher3.appstore;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppStoreManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/android/launcher3/appstore/AppStoreManagerDummy;", "Lcom/android/launcher3/appstore/AppStoreManager;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "destroy", "", "init", "NorthstarLauncher_northstarRelease"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AppStoreManagerDummy extends AppStoreManager {
    @Override // com.android.launcher3.appstore.AppStoreManager
    public void destroy() {
    }

    @Override // com.android.launcher3.appstore.AppStoreManager
    public void init() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppStoreManagerDummy(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
