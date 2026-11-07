package com.android.server.om;

import android.content.om.OverlayInfo;
import android.content.om.OverlayableInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.SystemProperties;
import android.util.Slog;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class IdmapManager {
    private static final boolean VENDOR_IS_Q_OR_LATER;
    private final IdmapDaemon mIdmapDaemon;
    private final OverlayableInfoCallback mOverlayableCallback;

    static {
        boolean isQOrLater;
        String value = SystemProperties.get("ro.vndk.version", "29");
        try {
            isQOrLater = Integer.parseInt(value) >= 29;
        } catch (NumberFormatException e) {
            isQOrLater = true;
        }
        VENDOR_IS_Q_OR_LATER = isQOrLater;
    }

    IdmapManager(IdmapDaemon idmapDaemon, OverlayableInfoCallback verifyCallback) {
        this.mOverlayableCallback = verifyCallback;
        this.mIdmapDaemon = idmapDaemon;
    }

    boolean createIdmap(PackageInfo targetPackage, PackageInfo overlayPackage, int userId) {
        String targetPath = targetPackage.applicationInfo.getBaseCodePath();
        String overlayPath = overlayPackage.applicationInfo.getBaseCodePath();
        try {
            int policies = calculateFulfilledPolicies(targetPackage, overlayPackage, userId);
            boolean enforce = enforceOverlayable(overlayPackage);
            if (this.mIdmapDaemon.verifyIdmap(targetPath, overlayPath, policies, enforce, userId)) {
                return false;
            }
            try {
                return this.mIdmapDaemon.createIdmap(targetPath, overlayPath, policies, enforce, userId) != null;
            } catch (Exception e) {
                e = e;
            }
        } catch (Exception e2) {
            e = e2;
        }
        Slog.w("OverlayManager", "failed to generate idmap for " + targetPath + " and " + overlayPath + ": " + e.getMessage());
        return false;
    }

    boolean removeIdmap(OverlayInfo oi, int userId) {
        try {
            return this.mIdmapDaemon.removeIdmap(oi.baseCodePath, userId);
        } catch (Exception e) {
            Slog.w("OverlayManager", "failed to remove idmap for " + oi.baseCodePath + ": " + e.getMessage());
            return false;
        }
    }

    boolean idmapExists(OverlayInfo oi) {
        return this.mIdmapDaemon.idmapExists(oi.baseCodePath, oi.userId);
    }

    boolean idmapExists(PackageInfo overlayPackage, int userId) {
        return this.mIdmapDaemon.idmapExists(overlayPackage.applicationInfo.getBaseCodePath(), userId);
    }

    private boolean enforceOverlayable(PackageInfo overlayPackage) {
        ApplicationInfo ai = overlayPackage.applicationInfo;
        if (ai.targetSdkVersion >= 29) {
            return true;
        }
        if (ai.isVendor()) {
            return VENDOR_IS_Q_OR_LATER;
        }
        return (ai.isSystemApp() || ai.isSignedWithPlatformKey()) ? false : true;
    }

    private int calculateFulfilledPolicies(PackageInfo targetPackage, PackageInfo overlayPackage, int userId) {
        ApplicationInfo ai = overlayPackage.applicationInfo;
        int fulfilledPolicies = 1;
        if (this.mOverlayableCallback.signaturesMatching(targetPackage.packageName, overlayPackage.packageName, userId)) {
            fulfilledPolicies = 1 | 16;
        }
        if (matchesActorSignature(targetPackage, overlayPackage, userId)) {
            fulfilledPolicies |= 128;
        }
        if (ai.isVendor()) {
            return fulfilledPolicies | 4;
        }
        if (ai.isProduct()) {
            return fulfilledPolicies | 8;
        }
        if (ai.isOdm()) {
            return fulfilledPolicies | 32;
        }
        if (ai.isOem()) {
            return fulfilledPolicies | 64;
        }
        if (ai.isSystemApp() || ai.isSystemExt()) {
            return fulfilledPolicies | 2;
        }
        return fulfilledPolicies;
    }

    private boolean matchesActorSignature(PackageInfo targetPackage, PackageInfo overlayPackage, int userId) {
        String targetOverlayableName = overlayPackage.targetOverlayableName;
        if (targetOverlayableName != null) {
            try {
                OverlayableInfo overlayableInfo = this.mOverlayableCallback.getOverlayableForTarget(targetPackage.packageName, targetOverlayableName, userId);
                if (overlayableInfo != null && overlayableInfo.actor != null) {
                    String actorPackageName = (String) OverlayActorEnforcer.getPackageNameForActor(overlayableInfo.actor, this.mOverlayableCallback.getNamedActors()).first;
                    if (this.mOverlayableCallback.signaturesMatching(actorPackageName, overlayPackage.packageName, userId)) {
                        return true;
                    }
                    return false;
                }
                return false;
            } catch (IOException e) {
                return false;
            }
        }
        return false;
    }
}
