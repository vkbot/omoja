package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import com.android.launcher3.icons.cache.CachingLogic;

/* JADX INFO: loaded from: classes.dex */
public interface ComponentWithLabel {
    ComponentName getComponent();

    CharSequence getLabel(PackageManager pm);

    UserHandle getUser();

    public static class ComponentCachingLogic<T extends ComponentWithLabel> implements CachingLogic<T> {
        private final boolean mAddToMemCache;
        private final PackageManager mPackageManager;

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public boolean addToMemCache() {
            return this.mAddToMemCache;
        }

        public ComponentCachingLogic(Context context, boolean addToMemCache) {
            this.mPackageManager = context.getPackageManager();
            this.mAddToMemCache = addToMemCache;
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public ComponentName getComponent(T object) {
            return object.getComponent();
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public UserHandle getUser(T object) {
            return object.getUser();
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public CharSequence getLabel(T object) {
            return object.getLabel(this.mPackageManager);
        }

        @Override // com.android.launcher3.icons.cache.CachingLogic
        public BitmapInfo loadIcon(Context context, T object) {
            return BitmapInfo.LOW_RES_INFO;
        }
    }
}
