package com.android.server.pm.dex;

import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.os.FileUtils;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.EventLog;
import android.util.PackageUtils;
import android.util.Slog;
import android.util.SparseArray;
import com.android.server.pm.Installer;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes.dex */
public class DynamicCodeLogger {
    private static final String DCL_DEX_SUBTAG = "dcl";
    private static final String DCL_NATIVE_SUBTAG = "dcln";
    private static final int SNET_TAG = 1397638484;
    private static final String TAG = "DynamicCodeLogger";
    private final Installer mInstaller;
    private final PackageDynamicCodeLoading mPackageDynamicCodeLoading;
    private final IPackageManager mPackageManager;

    DynamicCodeLogger(IPackageManager pms, Installer installer) {
        this(pms, installer, new PackageDynamicCodeLoading());
    }

    DynamicCodeLogger(IPackageManager pms, Installer installer, PackageDynamicCodeLoading packageDynamicCodeLoading) {
        this.mPackageManager = pms;
        this.mPackageDynamicCodeLoading = packageDynamicCodeLoading;
        this.mInstaller = installer;
    }

    public Set<String> getAllPackagesWithDynamicCodeLoading() {
        return this.mPackageDynamicCodeLoading.getAllPackagesWithDynamicCodeLoading();
    }

    public void logDynamicCodeLoading(String packageName) {
        ApplicationInfo appInfo;
        ApplicationInfo appInfo2;
        boolean needWrite;
        int storageFlags;
        PackageDynamicCodeLoading.PackageDynamicCode info;
        SparseArray<ApplicationInfo> appInfoByUser;
        Iterator<Map.Entry<String, PackageDynamicCodeLoading.DynamicCodeFile>> it;
        ApplicationInfo appInfo3;
        String str;
        int i;
        byte[] hash;
        String str2;
        String message;
        PackageDynamicCodeLoading.PackageDynamicCode info2 = getPackageDynamicCodeInfo(packageName);
        if (info2 == null) {
            return;
        }
        SparseArray<ApplicationInfo> appInfoByUser2 = new SparseArray<>();
        Iterator<Map.Entry<String, PackageDynamicCodeLoading.DynamicCodeFile>> it2 = info2.mFileUsageMap.entrySet().iterator();
        boolean needWrite2 = false;
        while (needWrite) {
            Map.Entry<String, PackageDynamicCodeLoading.DynamicCodeFile> fileEntry = it2.next();
            String filePath = fileEntry.getKey();
            PackageDynamicCodeLoading.DynamicCodeFile fileInfo = fileEntry.getValue();
            int userId = fileInfo.mUserId;
            int index = appInfoByUser2.indexOfKey(userId);
            if (index >= 0) {
                appInfo2 = appInfoByUser2.get(userId);
                needWrite = needWrite2;
            } else {
                try {
                    PackageInfo ownerInfo = this.mPackageManager.getPackageInfo(packageName, 0, userId);
                    appInfo = ownerInfo == null ? null : ownerInfo.applicationInfo;
                } catch (RemoteException e) {
                    appInfo = null;
                }
                appInfoByUser2.put(userId, appInfo);
                if (appInfo != null) {
                    appInfo2 = appInfo;
                    needWrite = needWrite2;
                } else {
                    Slog.d(TAG, "Could not find package " + packageName + " for user " + userId);
                    appInfo2 = appInfo;
                    needWrite = needWrite2 | this.mPackageDynamicCodeLoading.removeUserPackage(packageName, userId);
                }
            }
            if (appInfo2 != null) {
                if (!fileIsUnder(filePath, appInfo2.credentialProtectedDataDir)) {
                    if (fileIsUnder(filePath, appInfo2.deviceProtectedDataDir)) {
                        storageFlags = 1;
                    } else {
                        Slog.e(TAG, "Could not infer CE/DE storage for path " + filePath);
                        needWrite2 = needWrite | this.mPackageDynamicCodeLoading.removeFile(packageName, filePath, userId);
                        info2 = info2;
                        appInfoByUser2 = appInfoByUser2;
                    }
                } else {
                    storageFlags = 2;
                }
                try {
                    Installer installer = this.mInstaller;
                    int i2 = appInfo2.uid;
                    String str3 = appInfo2.volumeUuid;
                    info = info2;
                    appInfo3 = appInfo2;
                    appInfoByUser = appInfoByUser2;
                    str = TAG;
                    it = it2;
                    i = 0;
                    try {
                        byte[] hash2 = installer.hashSecondaryDexFile(filePath, packageName, i2, str3, storageFlags);
                        hash = hash2;
                    } catch (Installer.InstallerException e2) {
                        e = e2;
                        Slog.e(str, "Got InstallerException when hashing file " + filePath + ": " + e.getMessage());
                        hash = null;
                    }
                } catch (Installer.InstallerException e3) {
                    e = e3;
                    info = info2;
                    appInfoByUser = appInfoByUser2;
                    it = it2;
                    appInfo3 = appInfo2;
                    str = TAG;
                    i = 0;
                }
                if (fileInfo.mFileType == 'D') {
                    str2 = DCL_DEX_SUBTAG;
                } else {
                    str2 = DCL_NATIVE_SUBTAG;
                }
                String subtag = str2;
                String fileName = new File(filePath).getName();
                String message2 = PackageUtils.computeSha256Digest(fileName.getBytes());
                if (hash != null && hash.length == 32) {
                    message = message2 + ' ' + HexEncoding.encodeToString(hash);
                } else {
                    Slog.d(str, "Got no hash for " + filePath);
                    needWrite |= this.mPackageDynamicCodeLoading.removeFile(packageName, filePath, userId);
                    message = message2;
                }
                for (String loadingPackageName : fileInfo.mLoadingPackages) {
                    int loadingUid = -1;
                    if (loadingPackageName.equals(packageName)) {
                        loadingUid = appInfo3.uid;
                    } else {
                        try {
                            loadingUid = this.mPackageManager.getPackageUid(loadingPackageName, i, userId);
                        } catch (RemoteException e4) {
                        }
                    }
                    if (loadingUid != -1) {
                        writeDclEvent(subtag, loadingUid, message);
                    }
                }
                needWrite2 = needWrite;
                it2 = it;
                info2 = info;
                appInfoByUser2 = appInfoByUser;
            } else {
                needWrite2 = needWrite;
            }
        }
        if (needWrite2) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    private boolean fileIsUnder(String filePath, String directoryPath) {
        if (directoryPath == null) {
            return false;
        }
        try {
            return FileUtils.contains(new File(directoryPath).getCanonicalPath(), new File(filePath).getCanonicalPath());
        } catch (IOException e) {
            return false;
        }
    }

    PackageDynamicCodeLoading.PackageDynamicCode getPackageDynamicCodeInfo(String packageName) {
        return this.mPackageDynamicCodeLoading.getPackageDynamicCodeInfo(packageName);
    }

    void writeDclEvent(String subtag, int uid, String message) {
        EventLog.writeEvent(SNET_TAG, subtag, Integer.valueOf(uid), message);
    }

    void recordDex(int loaderUserId, String dexPath, String owningPackageName, String loadingPackageName) {
        if (this.mPackageDynamicCodeLoading.record(owningPackageName, dexPath, 68, loaderUserId, loadingPackageName)) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    public void recordNative(int loadingUid, String path) {
        try {
            String[] packages = this.mPackageManager.getPackagesForUid(loadingUid);
            if (packages == null || packages.length == 0) {
                return;
            }
            String loadingPackageName = packages[0];
            int loadingUserId = UserHandle.getUserId(loadingUid);
            if (this.mPackageDynamicCodeLoading.record(loadingPackageName, path, 78, loadingUserId, loadingPackageName)) {
                this.mPackageDynamicCodeLoading.maybeWriteAsync();
            }
        } catch (RemoteException e) {
        }
    }

    void clear() {
        this.mPackageDynamicCodeLoading.clear();
    }

    void removePackage(String packageName) {
        if (this.mPackageDynamicCodeLoading.removePackage(packageName)) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    void removeUserPackage(String packageName, int userId) {
        if (this.mPackageDynamicCodeLoading.removeUserPackage(packageName, userId)) {
            this.mPackageDynamicCodeLoading.maybeWriteAsync();
        }
    }

    void readAndSync(Map<String, Set<Integer>> packageToUsersMap) {
        this.mPackageDynamicCodeLoading.read();
        this.mPackageDynamicCodeLoading.syncData(packageToUsersMap);
    }

    void writeNow() {
        this.mPackageDynamicCodeLoading.writeNow();
    }
}
