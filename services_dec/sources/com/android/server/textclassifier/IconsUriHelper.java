package com.android.server.textclassifier;

import android.net.Uri;
import android.util.ArrayMap;
import android.util.Log;
import com.android.server.pm.PackageManagerService;
import com.android.server.wm.ActivityTaskManagerInternal;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final class IconsUriHelper {
    public static final String AUTHORITY = "com.android.textclassifier.icons";
    private static final String TAG = "IconsUriHelper";
    private final Supplier<String> mIdSupplier;
    private final Map<String, String> mPackageIds = new ArrayMap();
    private static final Supplier<String> DEFAULT_ID_SUPPLIER = new Supplier() { // from class: com.android.server.textclassifier.-$$Lambda$IconsUriHelper$xs4gzwHiyi5M-NRelcf1JWo71zo
        @Override // java.util.function.Supplier
        public final Object get() {
            return UUID.randomUUID().toString();
        }
    };
    private static final IconsUriHelper sSingleton = new IconsUriHelper(null);

    private IconsUriHelper(Supplier<String> idSupplier) {
        this.mIdSupplier = idSupplier != null ? idSupplier : DEFAULT_ID_SUPPLIER;
        this.mPackageIds.put(PackageManagerService.PLATFORM_PACKAGE_NAME, PackageManagerService.PLATFORM_PACKAGE_NAME);
    }

    public static IconsUriHelper newInstanceForTesting(Supplier<String> idSupplier) {
        return new IconsUriHelper(idSupplier);
    }

    static IconsUriHelper getInstance() {
        return sSingleton;
    }

    public Uri getContentUri(String packageName, int resId) {
        Uri uriBuild;
        Objects.requireNonNull(packageName);
        synchronized (this.mPackageIds) {
            if (!this.mPackageIds.containsKey(packageName)) {
                this.mPackageIds.put(packageName, this.mIdSupplier.get());
            }
            uriBuild = new Uri.Builder().scheme(ActivityTaskManagerInternal.ASSIST_KEY_CONTENT).authority(AUTHORITY).path(this.mPackageIds.get(packageName)).appendPath(Integer.toString(resId)).build();
        }
        return uriBuild;
    }

    public ResourceInfo getResourceInfo(Uri uri) {
        if (!ActivityTaskManagerInternal.ASSIST_KEY_CONTENT.equals(uri.getScheme()) || !AUTHORITY.equals(uri.getAuthority())) {
            return null;
        }
        List<String> pathItems = uri.getPathSegments();
        try {
            synchronized (this.mPackageIds) {
                String packageId = pathItems.get(0);
                int resId = Integer.parseInt(pathItems.get(1));
                for (String packageName : this.mPackageIds.keySet()) {
                    if (packageId.equals(this.mPackageIds.get(packageName))) {
                        return new ResourceInfo(packageName, resId);
                    }
                }
                return null;
            }
        } catch (Exception e) {
            Log.v(TAG, "Could not get resource info. Reason: " + e.getMessage());
        }
    }

    public static final class ResourceInfo {
        public final int id;
        public final String packageName;

        private ResourceInfo(String packageName, int id) {
            Objects.requireNonNull(packageName);
            this.packageName = packageName;
            this.id = id;
        }
    }
}
