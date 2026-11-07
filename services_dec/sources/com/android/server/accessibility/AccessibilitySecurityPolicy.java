package com.android.server.accessibility;

import android.app.AppOpsManager;
import android.appwidget.AppWidgetManagerInternal;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.UserInfo;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArraySet;
import android.util.Slog;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.util.ArrayUtils;
import com.android.server.LocalServices;
import com.android.server.wm.ActivityTaskManagerInternal;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilitySecurityPolicy {
    private static final int KEEP_SOURCE_EVENT_TYPES = 4438463;
    private static final String LOG_TAG = "AccessibilitySecurityPolicy";
    private static final int OWN_PROCESS_ID = Process.myPid();
    private final AccessibilityUserManager mAccessibilityUserManager;
    private AccessibilityWindowManager mAccessibilityWindowManager;
    private final AppOpsManager mAppOpsManager;
    private AppWidgetManagerInternal mAppWidgetService;
    private final ActivityTaskManagerInternal mAtmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
    private final Context mContext;
    private final PackageManager mPackageManager;
    private final UserManager mUserManager;

    public interface AccessibilityUserManager {
        int getCurrentUserIdLocked();
    }

    public AccessibilitySecurityPolicy(Context context, AccessibilityUserManager a11yUserManager) {
        this.mContext = context;
        this.mAccessibilityUserManager = a11yUserManager;
        this.mPackageManager = context.getPackageManager();
        this.mUserManager = (UserManager) this.mContext.getSystemService("user");
        this.mAppOpsManager = (AppOpsManager) context.getSystemService("appops");
    }

    public void setAccessibilityWindowManager(AccessibilityWindowManager awm) {
        this.mAccessibilityWindowManager = awm;
    }

    public void setAppWidgetManager(AppWidgetManagerInternal appWidgetManager) {
        this.mAppWidgetService = appWidgetManager;
    }

    public boolean canDispatchAccessibilityEventLocked(int userId, AccessibilityEvent event) {
        int eventType = event.getEventType();
        switch (eventType) {
            case 32:
            case 64:
            case 128:
            case 256:
            case 512:
            case 1024:
            case 16384:
            case 262144:
            case 524288:
            case 1048576:
            case 2097152:
            case 4194304:
            case 16777216:
                return true;
            default:
                return isRetrievalAllowingWindowLocked(userId, event.getWindowId());
        }
    }

    public String resolveValidReportedPackageLocked(CharSequence packageName, int appId, int userId, int pid) {
        if (packageName == null) {
            return null;
        }
        if (appId == 1000) {
            return packageName.toString();
        }
        String packageNameStr = packageName.toString();
        int resolvedUid = UserHandle.getUid(userId, appId);
        if (isValidPackageForUid(packageNameStr, resolvedUid)) {
            return packageName.toString();
        }
        AppWidgetManagerInternal appWidgetManagerInternal = this.mAppWidgetService;
        if (appWidgetManagerInternal != null && ArrayUtils.contains(appWidgetManagerInternal.getHostedWidgetPackages(resolvedUid), packageNameStr)) {
            return packageName.toString();
        }
        if (this.mContext.checkPermission("android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY", pid, resolvedUid) == 0) {
            return packageName.toString();
        }
        String[] packageNames = this.mPackageManager.getPackagesForUid(resolvedUid);
        if (ArrayUtils.isEmpty(packageNames)) {
            return null;
        }
        return packageNames[0];
    }

    public String[] computeValidReportedPackages(String targetPackage, int targetUid) {
        ArraySet<String> widgetPackages;
        if (UserHandle.getAppId(targetUid) == 1000) {
            return EmptyArray.STRING;
        }
        String[] uidPackages = {targetPackage};
        AppWidgetManagerInternal appWidgetManagerInternal = this.mAppWidgetService;
        if (appWidgetManagerInternal != null && (widgetPackages = appWidgetManagerInternal.getHostedWidgetPackages(targetUid)) != null && !widgetPackages.isEmpty()) {
            String[] validPackages = new String[uidPackages.length + widgetPackages.size()];
            System.arraycopy(uidPackages, 0, validPackages, 0, uidPackages.length);
            int widgetPackageCount = widgetPackages.size();
            for (int i = 0; i < widgetPackageCount; i++) {
                validPackages[uidPackages.length + i] = widgetPackages.valueAt(i);
            }
            return validPackages;
        }
        return uidPackages;
    }

    public void updateEventSourceLocked(AccessibilityEvent event) {
        if ((event.getEventType() & KEEP_SOURCE_EVENT_TYPES) == 0) {
            event.setSource(null);
        }
    }

    public boolean canGetAccessibilityNodeInfoLocked(int userId, AbstractAccessibilityServiceConnection service, int windowId) {
        return canRetrieveWindowContentLocked(service) && isRetrievalAllowingWindowLocked(userId, windowId);
    }

    public boolean canRetrieveWindowsLocked(AbstractAccessibilityServiceConnection service) {
        return canRetrieveWindowContentLocked(service) && service.mRetrieveInteractiveWindows;
    }

    public boolean canRetrieveWindowContentLocked(AbstractAccessibilityServiceConnection service) {
        return (service.getCapabilities() & 1) != 0;
    }

    public boolean canControlMagnification(AbstractAccessibilityServiceConnection service) {
        return (service.getCapabilities() & 16) != 0;
    }

    public boolean canPerformGestures(AccessibilityServiceConnection service) {
        return (service.getCapabilities() & 32) != 0;
    }

    public boolean canCaptureFingerprintGestures(AccessibilityServiceConnection service) {
        return (service.getCapabilities() & 64) != 0;
    }

    public boolean canTakeScreenshotLocked(AbstractAccessibilityServiceConnection service) {
        return (service.getCapabilities() & 128) != 0;
    }

    public int resolveProfileParentLocked(int userId) {
        if (userId != this.mAccessibilityUserManager.getCurrentUserIdLocked()) {
            long identity = Binder.clearCallingIdentity();
            try {
                UserInfo parent = this.mUserManager.getProfileParent(userId);
                if (parent != null) {
                    return parent.getUserHandle().getIdentifier();
                }
            } finally {
                Binder.restoreCallingIdentity(identity);
            }
        }
        return userId;
    }

    public int resolveCallingUserIdEnforcingPermissionsLocked(int userId) {
        int callingUid = Binder.getCallingUid();
        int currentUserId = this.mAccessibilityUserManager.getCurrentUserIdLocked();
        if (callingUid == 0 || callingUid == 1000 || callingUid == 2000) {
            if (userId == -2 || userId == -3) {
                return currentUserId;
            }
            return resolveProfileParentLocked(userId);
        }
        int callingUserId = UserHandle.getUserId(callingUid);
        if (callingUserId == userId) {
            return resolveProfileParentLocked(userId);
        }
        int callingUserParentId = resolveProfileParentLocked(callingUserId);
        if (callingUserParentId == currentUserId && (userId == -2 || userId == -3)) {
            return currentUserId;
        }
        if (!hasPermission("android.permission.INTERACT_ACROSS_USERS") && !hasPermission("android.permission.INTERACT_ACROSS_USERS_FULL")) {
            throw new SecurityException("Call from user " + callingUserId + " as user " + userId + " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed.");
        }
        if (userId == -2 || userId == -3) {
            return currentUserId;
        }
        return resolveProfileParentLocked(userId);
    }

    public boolean isCallerInteractingAcrossUsers(int userId) {
        int callingUid = Binder.getCallingUid();
        return Binder.getCallingPid() == Process.myPid() || callingUid == 2000 || userId == -2 || userId == -3;
    }

    private boolean isValidPackageForUid(String packageName, int uid) {
        long token = Binder.clearCallingIdentity();
        try {
            return uid == this.mPackageManager.getPackageUidAsUser(packageName, UserHandle.getUserId(uid));
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    private boolean isRetrievalAllowingWindowLocked(int userId, int windowId) {
        if (Binder.getCallingUid() == 1000) {
            return true;
        }
        if (Binder.getCallingUid() != 2000 || isShellAllowedToRetrieveWindowLocked(userId, windowId)) {
            return this.mAccessibilityWindowManager.resolveParentWindowIdLocked(windowId) == this.mAccessibilityWindowManager.getActiveWindowId(userId) || this.mAccessibilityWindowManager.findA11yWindowInfoByIdLocked(windowId) != null;
        }
        return false;
    }

    private boolean isShellAllowedToRetrieveWindowLocked(int userId, int windowId) {
        long token = Binder.clearCallingIdentity();
        try {
            IBinder windowToken = this.mAccessibilityWindowManager.getWindowTokenForUserAndWindowIdLocked(userId, windowId);
            if (windowToken == null) {
                return false;
            }
            int windowOwnerUserId = this.mAccessibilityWindowManager.getWindowOwnerUserId(windowToken);
            if (windowOwnerUserId == -10000) {
                return false;
            }
            return !this.mUserManager.hasUserRestriction("no_debugging_features", UserHandle.of(windowOwnerUserId));
        } finally {
            Binder.restoreCallingIdentity(token);
        }
    }

    public void enforceCallingPermission(String permission, String function) {
        if (OWN_PROCESS_ID != Binder.getCallingPid() && !hasPermission(permission)) {
            throw new SecurityException("You do not have " + permission + " required to call " + function + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
        }
    }

    public boolean hasPermission(String permission) {
        return this.mContext.checkCallingPermission(permission) == 0;
    }

    public boolean canRegisterService(ServiceInfo serviceInfo) {
        if (!"android.permission.BIND_ACCESSIBILITY_SERVICE".equals(serviceInfo.permission)) {
            Slog.w(LOG_TAG, "Skipping accessibility service " + new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString() + ": it does not require the permission android.permission.BIND_ACCESSIBILITY_SERVICE");
            return false;
        }
        int servicePackageUid = serviceInfo.applicationInfo.uid;
        if (this.mAppOpsManager.noteOpNoThrow("android:bind_accessibility_service", servicePackageUid, serviceInfo.packageName) != 0) {
            Slog.w(LOG_TAG, "Skipping accessibility service " + new ComponentName(serviceInfo.packageName, serviceInfo.name).flattenToShortString() + ": disallowed by AppOps");
            return false;
        }
        return true;
    }

    public boolean checkAccessibilityAccess(AbstractAccessibilityServiceConnection service) {
        String packageName = service.getComponentName().getPackageName();
        ResolveInfo resolveInfo = service.getServiceInfo().getResolveInfo();
        if (resolveInfo == null) {
            return true;
        }
        int uid = resolveInfo.serviceInfo.applicationInfo.uid;
        long identityToken = Binder.clearCallingIdentity();
        try {
            if (OWN_PROCESS_ID == Binder.getCallingPid()) {
                return this.mAppOpsManager.noteOpNoThrow("android:access_accessibility", uid, packageName) == 0;
            }
            return this.mAppOpsManager.noteOp("android:access_accessibility", uid, packageName) == 0;
        } finally {
            Binder.restoreCallingIdentity(identityToken);
        }
    }

    public void enforceCallingOrSelfPermission(String permission) {
        if (this.mContext.checkCallingOrSelfPermission(permission) != 0) {
            throw new SecurityException("Caller does not hold permission " + permission);
        }
    }

    public void enforceCallerIsRecentsOrHasPermission(String permission, String func) {
        this.mAtmInternal.enforceCallerIsRecentsOrHasPermission(permission, func);
    }
}
