package com.android.server.om;

import android.content.om.OverlayInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.content.om.OverlayConfig;
import com.android.internal.util.ArrayUtils;
import com.android.server.pm.PackageManagerService;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class OverlayManagerServiceImpl {
    private static final int FLAG_OVERLAY_IS_BEING_REPLACED = 2;

    @Deprecated
    private static final int FLAG_TARGET_IS_BEING_REPLACED = 1;
    private final String[] mDefaultOverlays;
    private final IdmapManager mIdmapManager;
    private final OverlayChangeListener mListener;
    private final OverlayConfig mOverlayConfig;
    private final PackageManagerHelper mPackageManager;
    private final OverlayManagerSettings mSettings;

    interface OverlayChangeListener {
        void onOverlaysChanged(String str, int i);
    }

    private boolean mustReinitializeOverlay(PackageInfo theTruth, OverlayInfo oldSettings) {
        boolean isMutable;
        if (oldSettings == null || !Objects.equals(theTruth.overlayTarget, oldSettings.targetPackageName) || !Objects.equals(theTruth.targetOverlayableName, oldSettings.targetOverlayableName) || (isMutable = isPackageConfiguredMutable(theTruth.packageName)) != oldSettings.isMutable) {
            return true;
        }
        if (!isMutable && isPackageConfiguredEnabled(theTruth.packageName) != oldSettings.isEnabled()) {
            return true;
        }
        return false;
    }

    OverlayManagerServiceImpl(PackageManagerHelper packageManager, IdmapManager idmapManager, OverlayManagerSettings settings, OverlayConfig overlayConfig, String[] defaultOverlays, OverlayChangeListener listener) {
        this.mPackageManager = packageManager;
        this.mIdmapManager = idmapManager;
        this.mSettings = settings;
        this.mOverlayConfig = overlayConfig;
        this.mDefaultOverlays = defaultOverlays;
        this.mListener = listener;
    }

    ArrayList<String> updateOverlaysForUser(int newUserId) {
        int i;
        String[] strArr;
        ArrayMap<String, OverlayInfo> storedOverlayInfos;
        String str;
        int i2;
        int overlayPackagesSize;
        List<PackageInfo> overlayPackages;
        ArrayMap<String, OverlayInfo> storedOverlayInfos2;
        int tmpSize;
        String str2;
        ArrayMap<String, List<OverlayInfo>> tmp;
        PackageInfo overlayPackage;
        String str3 = "' for user ";
        Set<String> packagesToUpdateAssets = new ArraySet<>();
        ArrayMap<String, List<OverlayInfo>> tmp2 = this.mSettings.getOverlaysForUser(newUserId);
        int tmpSize2 = tmp2.size();
        ArrayMap<String, OverlayInfo> storedOverlayInfos3 = new ArrayMap<>(tmpSize2);
        for (int i3 = 0; i3 < tmpSize2; i3++) {
            List<OverlayInfo> chunk = tmp2.valueAt(i3);
            int chunkSize = chunk.size();
            for (int j = 0; j < chunkSize; j++) {
                OverlayInfo oi = chunk.get(j);
                storedOverlayInfos3.put(oi.packageName, oi);
            }
        }
        List<PackageInfo> overlayPackages2 = this.mPackageManager.getOverlayPackages(newUserId);
        int overlayPackagesSize2 = overlayPackages2.size();
        int i4 = 0;
        while (i4 < overlayPackagesSize2) {
            PackageInfo overlayPackage2 = overlayPackages2.get(i4);
            OverlayInfo oi2 = storedOverlayInfos3.get(overlayPackage2.packageName);
            int priority = getPackageConfiguredPriority(overlayPackage2.packageName);
            if (mustReinitializeOverlay(overlayPackage2, oi2)) {
                if (oi2 != null) {
                    packagesToUpdateAssets.add(oi2.targetPackageName);
                }
                tmp = tmp2;
                str2 = str3;
                overlayPackage = overlayPackage2;
                overlayPackagesSize = overlayPackagesSize2;
                overlayPackages = overlayPackages2;
                storedOverlayInfos2 = storedOverlayInfos3;
                tmpSize = tmpSize2;
                this.mSettings.init(overlayPackage2.packageName, newUserId, overlayPackage2.overlayTarget, overlayPackage2.targetOverlayableName, overlayPackage2.applicationInfo.getBaseCodePath(), isPackageConfiguredMutable(overlayPackage2.packageName), isPackageConfiguredEnabled(overlayPackage2.packageName), priority, overlayPackage2.overlayCategory);
            } else {
                overlayPackagesSize = overlayPackagesSize2;
                overlayPackages = overlayPackages2;
                storedOverlayInfos2 = storedOverlayInfos3;
                tmpSize = tmpSize2;
                str2 = str3;
                tmp = tmp2;
                overlayPackage = overlayPackage2;
                if (priority != oi2.priority) {
                    this.mSettings.setPriority(overlayPackage.packageName, newUserId, priority);
                    packagesToUpdateAssets.add(oi2.targetPackageName);
                }
            }
            ArrayMap<String, OverlayInfo> storedOverlayInfos4 = storedOverlayInfos2;
            storedOverlayInfos4.remove(overlayPackage.packageName);
            i4++;
            storedOverlayInfos3 = storedOverlayInfos4;
            str3 = str2;
            tmp2 = tmp;
            tmpSize2 = tmpSize;
            overlayPackagesSize2 = overlayPackagesSize;
            overlayPackages2 = overlayPackages;
        }
        int overlayPackagesSize3 = overlayPackagesSize2;
        List<PackageInfo> overlayPackages3 = overlayPackages2;
        ArrayMap<String, OverlayInfo> storedOverlayInfos5 = storedOverlayInfos3;
        String str4 = str3;
        int storedOverlayInfosSize = storedOverlayInfos5.size();
        for (int i5 = 0; i5 < storedOverlayInfosSize; i5++) {
            OverlayInfo oi3 = storedOverlayInfos5.valueAt(i5);
            this.mSettings.remove(oi3.packageName, oi3.userId);
            removeIdmapIfPossible(oi3);
            packagesToUpdateAssets.add(oi3.targetPackageName);
        }
        int i6 = 0;
        while (true) {
            i = 0;
            int overlayPackagesSize4 = overlayPackagesSize3;
            if (i6 >= overlayPackagesSize4) {
                break;
            }
            List<PackageInfo> overlayPackages4 = overlayPackages3;
            PackageInfo overlayPackage3 = overlayPackages4.get(i6);
            try {
                updateState(overlayPackage3.overlayTarget, overlayPackage3.packageName, newUserId, 0);
            } catch (OverlayManagerSettings.BadKeyException e) {
                Slog.e("OverlayManager", "failed to update settings", e);
                this.mSettings.remove(overlayPackage3.packageName, newUserId);
            }
            packagesToUpdateAssets.add(overlayPackage3.overlayTarget);
            i6++;
            overlayPackagesSize3 = overlayPackagesSize4;
            overlayPackages3 = overlayPackages4;
        }
        Iterator<String> iter = packagesToUpdateAssets.iterator();
        while (iter.hasNext()) {
            String targetPackageName = iter.next();
            if (this.mPackageManager.getPackageInfo(targetPackageName, newUserId) == null) {
                iter.remove();
            }
        }
        ArraySet<String> enabledCategories = new ArraySet<>();
        ArrayMap<String, List<OverlayInfo>> userOverlays = this.mSettings.getOverlaysForUser(newUserId);
        int userOverlayTargetCount = userOverlays.size();
        int i7 = 0;
        while (i7 < userOverlayTargetCount) {
            List<OverlayInfo> overlayList = userOverlays.valueAt(i7);
            int overlayCount = overlayList != null ? overlayList.size() : i;
            int j2 = 0;
            while (j2 < overlayCount) {
                int storedOverlayInfosSize2 = storedOverlayInfosSize;
                OverlayInfo oi4 = overlayList.get(j2);
                if (oi4.isEnabled()) {
                    enabledCategories.add(oi4.category);
                }
                j2++;
                iter = iter;
                storedOverlayInfosSize = storedOverlayInfosSize2;
            }
            i7++;
            i = 0;
        }
        String[] strArr2 = this.mDefaultOverlays;
        int length = strArr2.length;
        int i8 = 0;
        while (i8 < length) {
            String defaultOverlay = strArr2[i8];
            try {
                OverlayInfo oi5 = this.mSettings.getOverlayInfo(defaultOverlay, newUserId);
                if (enabledCategories.contains(oi5.category)) {
                    strArr = strArr2;
                    storedOverlayInfos = storedOverlayInfos5;
                    str = str4;
                    i2 = length;
                } else {
                    StringBuilder sb = new StringBuilder();
                    strArr = strArr2;
                    try {
                        sb.append("Enabling default overlay '");
                        sb.append(defaultOverlay);
                        sb.append("' for target '");
                        sb.append(oi5.targetPackageName);
                        sb.append("' in category '");
                        sb.append(oi5.category);
                        str = str4;
                        try {
                            sb.append(str);
                            sb.append(newUserId);
                            Slog.w("OverlayManager", sb.toString());
                            i2 = length;
                            try {
                                storedOverlayInfos = storedOverlayInfos5;
                                try {
                                    this.mSettings.setEnabled(oi5.packageName, newUserId, true);
                                    try {
                                        if (updateState(oi5.targetPackageName, oi5.packageName, newUserId, 0)) {
                                            packagesToUpdateAssets.add(oi5.targetPackageName);
                                        }
                                    } catch (OverlayManagerSettings.BadKeyException e2) {
                                        e = e2;
                                        Slog.e("OverlayManager", "Failed to set default overlay '" + defaultOverlay + str + newUserId, e);
                                    }
                                } catch (OverlayManagerSettings.BadKeyException e3) {
                                    e = e3;
                                }
                            } catch (OverlayManagerSettings.BadKeyException e4) {
                                e = e4;
                                storedOverlayInfos = storedOverlayInfos5;
                                Slog.e("OverlayManager", "Failed to set default overlay '" + defaultOverlay + str + newUserId, e);
                                i8++;
                                length = i2;
                                storedOverlayInfos5 = storedOverlayInfos;
                                str4 = str;
                                strArr2 = strArr;
                            }
                        } catch (OverlayManagerSettings.BadKeyException e5) {
                            e = e5;
                            i2 = length;
                        }
                    } catch (OverlayManagerSettings.BadKeyException e6) {
                        e = e6;
                        storedOverlayInfos = storedOverlayInfos5;
                        str = str4;
                        i2 = length;
                        Slog.e("OverlayManager", "Failed to set default overlay '" + defaultOverlay + str + newUserId, e);
                        i8++;
                        length = i2;
                        storedOverlayInfos5 = storedOverlayInfos;
                        str4 = str;
                        strArr2 = strArr;
                    }
                }
            } catch (OverlayManagerSettings.BadKeyException e7) {
                e = e7;
                strArr = strArr2;
            }
            i8++;
            length = i2;
            storedOverlayInfos5 = storedOverlayInfos;
            str4 = str;
            strArr2 = strArr;
        }
        return new ArrayList<>(packagesToUpdateAssets);
    }

    void onUserRemoved(int userId) {
        this.mSettings.removeUser(userId);
    }

    void onTargetPackageAdded(String packageName, int userId) {
        updateAndRefreshOverlaysForTarget(packageName, userId, 0);
    }

    void onTargetPackageChanged(String packageName, int userId) {
        updateAndRefreshOverlaysForTarget(packageName, userId, 0);
    }

    void onTargetPackageReplacing(String packageName, int userId) {
        updateAndRefreshOverlaysForTarget(packageName, userId, 0);
    }

    void onTargetPackageReplaced(String packageName, int userId) {
        updateAndRefreshOverlaysForTarget(packageName, userId, 0);
    }

    void onTargetPackageRemoved(String packageName, int userId) {
        updateAndRefreshOverlaysForTarget(packageName, userId, 0);
    }

    private void updateAndRefreshOverlaysForTarget(String targetPackageName, int userId, int flags) {
        List<OverlayInfo> targetOverlays = this.mSettings.getOverlaysForTarget(targetPackageName, userId);
        boolean modified = false;
        for (OverlayInfo oi : targetOverlays) {
            PackageInfo overlayPackage = this.mPackageManager.getPackageInfo(oi.packageName, userId);
            if (overlayPackage == null) {
                modified |= this.mSettings.remove(oi.packageName, oi.userId);
                removeIdmapIfPossible(oi);
            } else {
                try {
                    modified |= updateState(targetPackageName, oi.packageName, userId, flags);
                } catch (OverlayManagerSettings.BadKeyException e) {
                    Slog.e("OverlayManager", "failed to update settings", e);
                    modified |= this.mSettings.remove(oi.packageName, userId);
                }
            }
        }
        if (!modified) {
            List<String> enabledOverlayPaths = new ArrayList<>(targetOverlays.size());
            for (OverlayInfo oi2 : this.mSettings.getOverlaysForTarget(PackageManagerService.PLATFORM_PACKAGE_NAME, userId)) {
                if (oi2.isEnabled()) {
                    enabledOverlayPaths.add(oi2.baseCodePath);
                }
            }
            for (OverlayInfo oi3 : targetOverlays) {
                if (oi3.isEnabled()) {
                    enabledOverlayPaths.add(oi3.baseCodePath);
                }
            }
            PackageInfo packageInfo = this.mPackageManager.getPackageInfo(targetPackageName, userId);
            ApplicationInfo appInfo = packageInfo == null ? null : packageInfo.applicationInfo;
            String[] resourceDirs = appInfo != null ? appInfo.resourceDirs : null;
            if (ArrayUtils.size(resourceDirs) != enabledOverlayPaths.size()) {
                modified = true;
            } else if (resourceDirs != null) {
                for (int index = 0; index < resourceDirs.length; index++) {
                    if (!resourceDirs[index].equals(enabledOverlayPaths.get(index))) {
                        modified = true;
                        break;
                    }
                }
            }
        }
        if (modified) {
            this.mListener.onOverlaysChanged(targetPackageName, userId);
        }
    }

    void onOverlayPackageAdded(String packageName, int userId) {
        PackageInfo overlayPackage = this.mPackageManager.getPackageInfo(packageName, userId);
        if (overlayPackage == null) {
            Slog.w("OverlayManager", "overlay package " + packageName + " was added, but couldn't be found");
            onOverlayPackageRemoved(packageName, userId);
            return;
        }
        this.mSettings.init(packageName, userId, overlayPackage.overlayTarget, overlayPackage.targetOverlayableName, overlayPackage.applicationInfo.getBaseCodePath(), isPackageConfiguredMutable(overlayPackage.packageName), isPackageConfiguredEnabled(overlayPackage.packageName), getPackageConfiguredPriority(overlayPackage.packageName), overlayPackage.overlayCategory);
        try {
            if (updateState(overlayPackage.overlayTarget, packageName, userId, 0)) {
                this.mListener.onOverlaysChanged(overlayPackage.overlayTarget, userId);
            }
        } catch (OverlayManagerSettings.BadKeyException e) {
            Slog.e("OverlayManager", "failed to update settings", e);
            this.mSettings.remove(packageName, userId);
        }
    }

    void onOverlayPackageChanged(String packageName, int userId) {
        try {
            OverlayInfo oi = this.mSettings.getOverlayInfo(packageName, userId);
            if (updateState(oi.targetPackageName, packageName, userId, 0)) {
                this.mListener.onOverlaysChanged(oi.targetPackageName, userId);
            }
        } catch (OverlayManagerSettings.BadKeyException e) {
            Slog.e("OverlayManager", "failed to update settings", e);
        }
    }

    void onOverlayPackageReplacing(String packageName, int userId) {
        try {
            OverlayInfo oi = this.mSettings.getOverlayInfo(packageName, userId);
            if (updateState(oi.targetPackageName, packageName, userId, 2)) {
                removeIdmapIfPossible(oi);
                this.mListener.onOverlaysChanged(oi.targetPackageName, userId);
            }
        } catch (OverlayManagerSettings.BadKeyException e) {
            Slog.e("OverlayManager", "failed to update settings", e);
        }
    }

    void onOverlayPackageReplaced(String packageName, int userId) {
        PackageInfo pkg = this.mPackageManager.getPackageInfo(packageName, userId);
        if (pkg == null) {
            Slog.w("OverlayManager", "overlay package " + packageName + " was replaced, but couldn't be found");
            onOverlayPackageRemoved(packageName, userId);
            return;
        }
        try {
            OverlayInfo oldOi = this.mSettings.getOverlayInfo(packageName, userId);
            if (mustReinitializeOverlay(pkg, oldOi)) {
                if (oldOi != null && !oldOi.targetPackageName.equals(pkg.overlayTarget)) {
                    this.mListener.onOverlaysChanged(pkg.overlayTarget, userId);
                }
                this.mSettings.init(packageName, userId, pkg.overlayTarget, pkg.targetOverlayableName, pkg.applicationInfo.getBaseCodePath(), isPackageConfiguredMutable(pkg.packageName), isPackageConfiguredEnabled(pkg.packageName), getPackageConfiguredPriority(pkg.packageName), pkg.overlayCategory);
            }
            if (updateState(pkg.overlayTarget, packageName, userId, 0)) {
                this.mListener.onOverlaysChanged(pkg.overlayTarget, userId);
            }
        } catch (OverlayManagerSettings.BadKeyException e) {
            Slog.e("OverlayManager", "failed to update settings", e);
        }
    }

    void onOverlayPackageRemoved(String packageName, int userId) {
        try {
            OverlayInfo overlayInfo = this.mSettings.getOverlayInfo(packageName, userId);
            if (this.mSettings.remove(packageName, userId)) {
                removeIdmapIfPossible(overlayInfo);
                this.mListener.onOverlaysChanged(overlayInfo.targetPackageName, userId);
            }
        } catch (OverlayManagerSettings.BadKeyException e) {
            Slog.e("OverlayManager", "failed to remove overlay", e);
        }
    }

    OverlayInfo getOverlayInfo(String packageName, int userId) {
        try {
            return this.mSettings.getOverlayInfo(packageName, userId);
        } catch (OverlayManagerSettings.BadKeyException e) {
            return null;
        }
    }

    List<OverlayInfo> getOverlayInfosForTarget(String targetPackageName, int userId) {
        return this.mSettings.getOverlaysForTarget(targetPackageName, userId);
    }

    Map<String, List<OverlayInfo>> getOverlaysForUser(int userId) {
        return this.mSettings.getOverlaysForUser(userId);
    }

    boolean setEnabled(String packageName, boolean enable, int userId) {
        PackageInfo overlayPackage = this.mPackageManager.getPackageInfo(packageName, userId);
        if (overlayPackage == null) {
            return false;
        }
        try {
            OverlayInfo oi = this.mSettings.getOverlayInfo(packageName, userId);
            if (!oi.isMutable) {
                return false;
            }
            boolean modified = this.mSettings.setEnabled(packageName, userId, enable);
            if (modified | updateState(oi.targetPackageName, oi.packageName, userId, 0)) {
                this.mListener.onOverlaysChanged(oi.targetPackageName, userId);
                return true;
            }
            return true;
        } catch (OverlayManagerSettings.BadKeyException e) {
            return false;
        }
    }

    boolean setEnabledExclusive(String packageName, boolean withinCategory, int userId) {
        PackageInfo overlayPackage = this.mPackageManager.getPackageInfo(packageName, userId);
        if (overlayPackage == null) {
            return false;
        }
        try {
            OverlayInfo oi = this.mSettings.getOverlayInfo(packageName, userId);
            String targetPackageName = oi.targetPackageName;
            List<OverlayInfo> allOverlays = getOverlayInfosForTarget(targetPackageName, userId);
            boolean modified = false;
            allOverlays.remove(oi);
            for (int i = 0; i < allOverlays.size(); i++) {
                OverlayInfo disabledInfo = allOverlays.get(i);
                String disabledOverlayPackageName = disabledInfo.packageName;
                PackageInfo disabledOverlayPackageInfo = this.mPackageManager.getPackageInfo(disabledOverlayPackageName, userId);
                if (disabledOverlayPackageInfo == null) {
                    modified |= this.mSettings.remove(disabledOverlayPackageName, userId);
                } else if (disabledInfo.isMutable && (!withinCategory || Objects.equals(disabledOverlayPackageInfo.overlayCategory, oi.category))) {
                    modified = modified | this.mSettings.setEnabled(disabledOverlayPackageName, userId, false) | updateState(targetPackageName, disabledOverlayPackageName, userId, 0);
                }
            }
            if (modified | this.mSettings.setEnabled(packageName, userId, true) | updateState(targetPackageName, packageName, userId, 0)) {
                this.mListener.onOverlaysChanged(targetPackageName, userId);
            }
            return true;
        } catch (OverlayManagerSettings.BadKeyException e) {
            return false;
        }
    }

    private boolean isPackageConfiguredMutable(String packageName) {
        return this.mOverlayConfig.isMutable(packageName);
    }

    private int getPackageConfiguredPriority(String packageName) {
        return this.mOverlayConfig.getPriority(packageName);
    }

    private boolean isPackageConfiguredEnabled(String packageName) {
        return this.mOverlayConfig.isEnabled(packageName);
    }

    boolean setPriority(String packageName, String newParentPackageName, int userId) {
        PackageInfo overlayPackage;
        if (!isPackageConfiguredMutable(packageName) || (overlayPackage = this.mPackageManager.getPackageInfo(packageName, userId)) == null) {
            return false;
        }
        if (this.mSettings.setPriority(packageName, newParentPackageName, userId)) {
            this.mListener.onOverlaysChanged(overlayPackage.overlayTarget, userId);
            return true;
        }
        return true;
    }

    boolean setHighestPriority(String packageName, int userId) {
        PackageInfo overlayPackage;
        if (!isPackageConfiguredMutable(packageName) || (overlayPackage = this.mPackageManager.getPackageInfo(packageName, userId)) == null) {
            return false;
        }
        if (this.mSettings.setHighestPriority(packageName, userId)) {
            this.mListener.onOverlaysChanged(overlayPackage.overlayTarget, userId);
            return true;
        }
        return true;
    }

    boolean setLowestPriority(String packageName, int userId) {
        PackageInfo overlayPackage;
        if (!isPackageConfiguredMutable(packageName) || (overlayPackage = this.mPackageManager.getPackageInfo(packageName, userId)) == null) {
            return false;
        }
        if (this.mSettings.setLowestPriority(packageName, userId)) {
            this.mListener.onOverlaysChanged(overlayPackage.overlayTarget, userId);
            return true;
        }
        return true;
    }

    void dump(PrintWriter pw, DumpState dumpState) {
        this.mSettings.dump(pw, dumpState);
        if (dumpState.getPackageName() == null) {
            pw.println("Default overlays: " + TextUtils.join(";", this.mDefaultOverlays));
        }
    }

    String[] getDefaultOverlayPackages() {
        return this.mDefaultOverlays;
    }

    void removeIdmapForOverlay(String packageName, int userId) {
        OverlayInfo oi = this.mSettings.getOverlayInfo(packageName, userId);
        removeIdmapIfPossible(oi);
    }

    List<String> getEnabledOverlayPackageNames(String targetPackageName, int userId) {
        List<OverlayInfo> overlays = this.mSettings.getOverlaysForTarget(targetPackageName, userId);
        List<String> paths = new ArrayList<>(overlays.size());
        int n = overlays.size();
        for (int i = 0; i < n; i++) {
            OverlayInfo oi = overlays.get(i);
            if (oi.isEnabled()) {
                paths.add(oi.packageName);
            }
        }
        return paths;
    }

    private boolean updateState(String targetPackageName, String overlayPackageName, int userId, int flags) throws OverlayManagerSettings.BadKeyException {
        PackageInfo targetPackage = this.mPackageManager.getPackageInfo(targetPackageName, userId);
        PackageInfo overlayPackage = this.mPackageManager.getPackageInfo(overlayPackageName, userId);
        boolean modified = false;
        if (targetPackage != null && overlayPackage != null && (!PackageManagerService.PLATFORM_PACKAGE_NAME.equals(targetPackageName) || isPackageConfiguredMutable(overlayPackageName))) {
            modified = false | this.mIdmapManager.createIdmap(targetPackage, overlayPackage, userId);
        }
        if (overlayPackage != null) {
            modified = modified | this.mSettings.setBaseCodePath(overlayPackageName, userId, overlayPackage.applicationInfo.getBaseCodePath()) | this.mSettings.setCategory(overlayPackageName, userId, overlayPackage.overlayCategory);
        }
        int currentState = this.mSettings.getState(overlayPackageName, userId);
        int newState = calculateNewState(targetPackage, overlayPackage, userId, flags);
        if (currentState != newState) {
            return modified | this.mSettings.setState(overlayPackageName, userId, newState);
        }
        return modified;
    }

    private int calculateNewState(PackageInfo targetPackage, PackageInfo overlayPackage, int userId, int flags) throws OverlayManagerSettings.BadKeyException {
        if ((flags & 1) != 0) {
            return 4;
        }
        if ((flags & 2) != 0) {
            return 5;
        }
        if (targetPackage == null) {
            return 0;
        }
        if (!this.mIdmapManager.idmapExists(overlayPackage, userId)) {
            return 1;
        }
        boolean enabled = this.mSettings.getEnabled(overlayPackage.packageName, userId);
        return enabled ? 3 : 2;
    }

    private void removeIdmapIfPossible(OverlayInfo oi) {
        if (!this.mIdmapManager.idmapExists(oi)) {
            return;
        }
        int[] userIds = this.mSettings.getUsers();
        for (int userId : userIds) {
            try {
                OverlayInfo tmp = this.mSettings.getOverlayInfo(oi.packageName, userId);
                if (tmp != null && tmp.isEnabled()) {
                    return;
                }
            } catch (OverlayManagerSettings.BadKeyException e) {
            }
        }
        this.mIdmapManager.removeIdmap(oi, oi.userId);
    }
}
