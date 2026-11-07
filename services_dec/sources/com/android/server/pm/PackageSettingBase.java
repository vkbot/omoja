package com.android.server.pm;

import android.content.ComponentName;
import android.content.pm.IntentFilterVerificationInfo;
import android.content.pm.PackageParser;
import android.content.pm.PackageUserState;
import android.content.pm.Signature;
import android.content.pm.SuspendDialogInfo;
import android.os.PersistableBundle;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes.dex */
public abstract class PackageSettingBase extends SettingBase {
    int categoryHint;
    File codePath;
    String codePathString;
    String cpuAbiOverrideString;
    long firstInstallTime;
    boolean forceQueryableOverride;
    boolean installPermissionsFixed;
    InstallSource installSource;
    PackageKeySetData keySetData;
    long lastUpdateTime;

    @Deprecated
    String legacyNativeLibraryPathString;
    Set<String> mOldCodePaths;
    private final SparseArray<PackageUserState> mUserState;
    public final String name;
    public String primaryCpuAbiString;
    final String realName;
    File resourcePath;
    String resourcePathString;
    public String secondaryCpuAbiString;
    PackageSignatures signatures;
    long timeStamp;
    boolean uidError;
    boolean updateAvailable;
    String[] usesStaticLibraries;
    long[] usesStaticLibrariesVersions;
    IntentFilterVerificationInfo verificationInfo;
    long versionCode;
    String volumeUuid;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    static final PackageUserState DEFAULT_USER_STATE = new PackageUserState();

    PackageSettingBase(String name, String realName, File codePath, File resourcePath, String legacyNativeLibraryPathString, String primaryCpuAbiString, String secondaryCpuAbiString, String cpuAbiOverrideString, long pVersionCode, int pkgFlags, int pkgPrivateFlags, String[] usesStaticLibraries, long[] usesStaticLibrariesVersions) {
        super(pkgFlags, pkgPrivateFlags);
        this.keySetData = new PackageKeySetData();
        this.mUserState = new SparseArray<>();
        this.categoryHint = -1;
        this.name = name;
        this.realName = realName;
        this.usesStaticLibraries = usesStaticLibraries;
        this.usesStaticLibrariesVersions = usesStaticLibrariesVersions;
        this.codePath = codePath;
        this.codePathString = codePath.toString();
        this.resourcePath = resourcePath;
        this.resourcePathString = resourcePath.toString();
        this.legacyNativeLibraryPathString = legacyNativeLibraryPathString;
        this.primaryCpuAbiString = primaryCpuAbiString;
        this.secondaryCpuAbiString = secondaryCpuAbiString;
        this.cpuAbiOverrideString = cpuAbiOverrideString;
        this.versionCode = pVersionCode;
        this.signatures = new PackageSignatures();
        this.installSource = InstallSource.EMPTY;
    }

    PackageSettingBase(PackageSettingBase base, String realName) {
        super(base);
        this.keySetData = new PackageKeySetData();
        this.mUserState = new SparseArray<>();
        this.categoryHint = -1;
        this.name = base.name;
        this.realName = realName;
        doCopy(base);
    }

    public void setInstallerPackageName(String packageName) {
        this.installSource = this.installSource.setInstallerPackage(packageName);
    }

    public void setInstallSource(InstallSource installSource) {
        Objects.requireNonNull(installSource);
        this.installSource = installSource;
    }

    void removeInstallerPackage(String packageName) {
        this.installSource = this.installSource.removeInstallerPackage(packageName);
    }

    public void setIsOrphaned(boolean isOrphaned) {
        this.installSource = this.installSource.setIsOrphaned(isOrphaned);
    }

    public void setVolumeUuid(String volumeUuid) {
        this.volumeUuid = volumeUuid;
    }

    public String getVolumeUuid() {
        return this.volumeUuid;
    }

    public void setTimeStamp(long newStamp) {
        this.timeStamp = newStamp;
    }

    public void setUpdateAvailable(boolean updateAvailable) {
        this.updateAvailable = updateAvailable;
    }

    public boolean isUpdateAvailable() {
        return this.updateAvailable;
    }

    public boolean isSharedUser() {
        return false;
    }

    public Signature[] getSignatures() {
        return this.signatures.mSigningDetails.signatures;
    }

    public PackageParser.SigningDetails getSigningDetails() {
        return this.signatures.mSigningDetails;
    }

    public void copyFrom(PackageSettingBase orig) {
        super.copyFrom((SettingBase) orig);
        doCopy(orig);
    }

    private void doCopy(PackageSettingBase orig) {
        String[] strArr;
        this.codePath = orig.codePath;
        this.codePathString = orig.codePathString;
        this.cpuAbiOverrideString = orig.cpuAbiOverrideString;
        this.firstInstallTime = orig.firstInstallTime;
        this.installPermissionsFixed = orig.installPermissionsFixed;
        this.installSource = orig.installSource;
        this.keySetData = orig.keySetData;
        this.lastUpdateTime = orig.lastUpdateTime;
        this.legacyNativeLibraryPathString = orig.legacyNativeLibraryPathString;
        this.primaryCpuAbiString = orig.primaryCpuAbiString;
        this.resourcePath = orig.resourcePath;
        this.resourcePathString = orig.resourcePathString;
        this.secondaryCpuAbiString = orig.secondaryCpuAbiString;
        this.signatures = orig.signatures;
        this.timeStamp = orig.timeStamp;
        this.uidError = orig.uidError;
        this.mUserState.clear();
        for (int i = 0; i < orig.mUserState.size(); i++) {
            this.mUserState.put(orig.mUserState.keyAt(i), orig.mUserState.valueAt(i));
        }
        this.verificationInfo = orig.verificationInfo;
        this.versionCode = orig.versionCode;
        this.volumeUuid = orig.volumeUuid;
        this.categoryHint = orig.categoryHint;
        String[] strArr2 = orig.usesStaticLibraries;
        if (strArr2 != null) {
            strArr = (String[]) Arrays.copyOf(strArr2, strArr2.length);
        } else {
            strArr = null;
        }
        this.usesStaticLibraries = strArr;
        long[] jArr = orig.usesStaticLibrariesVersions;
        this.usesStaticLibrariesVersions = jArr != null ? Arrays.copyOf(jArr, jArr.length) : null;
        this.updateAvailable = orig.updateAvailable;
        this.forceQueryableOverride = orig.forceQueryableOverride;
    }

    PackageUserState modifyUserState(int userId) {
        PackageUserState state = this.mUserState.get(userId);
        if (state == null) {
            PackageUserState state2 = new PackageUserState();
            this.mUserState.put(userId, state2);
            return state2;
        }
        return state;
    }

    public PackageUserState readUserState(int userId) {
        PackageUserState state = this.mUserState.get(userId);
        if (state == null) {
            return DEFAULT_USER_STATE;
        }
        state.categoryHint = this.categoryHint;
        return state;
    }

    void setEnabled(int state, int userId, String callingPackage) {
        PackageUserState st = modifyUserState(userId);
        st.enabled = state;
        st.lastDisableAppCaller = callingPackage;
    }

    int getEnabled(int userId) {
        return readUserState(userId).enabled;
    }

    String getLastDisabledAppCaller(int userId) {
        return readUserState(userId).lastDisableAppCaller;
    }

    void setInstalled(boolean inst, int userId) {
        modifyUserState(userId).installed = inst;
    }

    boolean getInstalled(int userId) {
        return readUserState(userId).installed;
    }

    int getInstallReason(int userId) {
        return readUserState(userId).installReason;
    }

    void setInstallReason(int installReason, int userId) {
        modifyUserState(userId).installReason = installReason;
    }

    int getUninstallReason(int userId) {
        return readUserState(userId).uninstallReason;
    }

    void setUninstallReason(int uninstallReason, int userId) {
        modifyUserState(userId).uninstallReason = uninstallReason;
    }

    void setOverlayPaths(List<String> overlayPaths, int userId) {
        modifyUserState(userId).setOverlayPaths(overlayPaths == null ? null : (String[]) overlayPaths.toArray(new String[overlayPaths.size()]));
    }

    String[] getOverlayPaths(int userId) {
        return readUserState(userId).getOverlayPaths();
    }

    void setOverlayPathsForLibrary(String libName, List<String> overlayPaths, int userId) {
        modifyUserState(userId).setSharedLibraryOverlayPaths(libName, overlayPaths == null ? null : (String[]) overlayPaths.toArray(new String[0]));
    }

    Map<String, String[]> getOverlayPathsForLibrary(int userId) {
        return readUserState(userId).getSharedLibraryOverlayPaths();
    }

    SparseArray<PackageUserState> getUserState() {
        return this.mUserState;
    }

    boolean isAnyInstalled(int[] users) {
        for (int user : users) {
            if (readUserState(user).installed) {
                return true;
            }
        }
        return false;
    }

    int[] queryInstalledUsers(int[] users, boolean installed) {
        int num = 0;
        for (int i : users) {
            if (getInstalled(i) == installed) {
                num++;
            }
        }
        int[] res = new int[num];
        int num2 = 0;
        for (int user : users) {
            if (getInstalled(user) == installed) {
                res[num2] = user;
                num2++;
            }
        }
        return res;
    }

    long getCeDataInode(int userId) {
        return readUserState(userId).ceDataInode;
    }

    void setCeDataInode(long ceDataInode, int userId) {
        modifyUserState(userId).ceDataInode = ceDataInode;
    }

    boolean getStopped(int userId) {
        return readUserState(userId).stopped;
    }

    void setStopped(boolean stop, int userId) {
        modifyUserState(userId).stopped = stop;
    }

    boolean getNotLaunched(int userId) {
        return readUserState(userId).notLaunched;
    }

    void setNotLaunched(boolean stop, int userId) {
        modifyUserState(userId).notLaunched = stop;
    }

    boolean getHidden(int userId) {
        return readUserState(userId).hidden;
    }

    void setHidden(boolean hidden, int userId) {
        modifyUserState(userId).hidden = hidden;
    }

    int getDistractionFlags(int userId) {
        return readUserState(userId).distractionFlags;
    }

    void setDistractionFlags(int distractionFlags, int userId) {
        modifyUserState(userId).distractionFlags = distractionFlags;
    }

    boolean getSuspended(int userId) {
        return readUserState(userId).suspended;
    }

    boolean isSuspendedBy(String suspendingPackage, int userId) {
        PackageUserState state = readUserState(userId);
        return state.suspendParams != null && state.suspendParams.containsKey(suspendingPackage);
    }

    void addOrUpdateSuspension(String suspendingPackage, SuspendDialogInfo dialogInfo, PersistableBundle appExtras, PersistableBundle launcherExtras, int userId) {
        PackageUserState existingUserState = modifyUserState(userId);
        PackageUserState.SuspendParams newSuspendParams = PackageUserState.SuspendParams.getInstanceOrNull(dialogInfo, appExtras, launcherExtras);
        if (existingUserState.suspendParams == null) {
            existingUserState.suspendParams = new ArrayMap();
        }
        existingUserState.suspendParams.put(suspendingPackage, newSuspendParams);
        existingUserState.suspended = true;
    }

    void removeSuspension(String suspendingPackage, int userId) {
        PackageUserState existingUserState = modifyUserState(userId);
        if (existingUserState.suspendParams != null) {
            existingUserState.suspendParams.remove(suspendingPackage);
            if (existingUserState.suspendParams.size() == 0) {
                existingUserState.suspendParams = null;
            }
        }
        existingUserState.suspended = existingUserState.suspendParams != null;
    }

    void removeSuspension(Predicate<String> suspendingPackagePredicate, int userId) {
        PackageUserState existingUserState = modifyUserState(userId);
        if (existingUserState.suspendParams != null) {
            for (int i = existingUserState.suspendParams.size() - 1; i >= 0; i--) {
                String suspendingPackage = (String) existingUserState.suspendParams.keyAt(i);
                if (suspendingPackagePredicate.test(suspendingPackage)) {
                    existingUserState.suspendParams.removeAt(i);
                }
            }
            if (existingUserState.suspendParams.size() == 0) {
                existingUserState.suspendParams = null;
            }
        }
        existingUserState.suspended = existingUserState.suspendParams != null;
    }

    public boolean getInstantApp(int userId) {
        return readUserState(userId).instantApp;
    }

    void setInstantApp(boolean instantApp, int userId) {
        modifyUserState(userId).instantApp = instantApp;
    }

    boolean getVirtulalPreload(int userId) {
        return readUserState(userId).virtualPreload;
    }

    void setVirtualPreload(boolean virtualPreload, int userId) {
        modifyUserState(userId).virtualPreload = virtualPreload;
    }

    void setUserState(int userId, long ceDataInode, int enabled, boolean installed, boolean stopped, boolean notLaunched, boolean hidden, int distractionFlags, boolean suspended, ArrayMap<String, PackageUserState.SuspendParams> suspendParams, boolean instantApp, boolean virtualPreload, String lastDisableAppCaller, ArraySet<String> enabledComponents, ArraySet<String> disabledComponents, int domainVerifState, int linkGeneration, int installReason, int uninstallReason, String harmfulAppWarning) {
        PackageUserState state = modifyUserState(userId);
        state.ceDataInode = ceDataInode;
        state.enabled = enabled;
        state.installed = installed;
        state.stopped = stopped;
        state.notLaunched = notLaunched;
        state.hidden = hidden;
        state.distractionFlags = distractionFlags;
        state.suspended = suspended;
        state.suspendParams = suspendParams;
        state.lastDisableAppCaller = lastDisableAppCaller;
        state.enabledComponents = enabledComponents;
        state.disabledComponents = disabledComponents;
        state.domainVerificationStatus = domainVerifState;
        state.appLinkGeneration = linkGeneration;
        state.installReason = installReason;
        state.uninstallReason = uninstallReason;
        state.instantApp = instantApp;
        state.virtualPreload = virtualPreload;
        state.harmfulAppWarning = harmfulAppWarning;
    }

    void setUserState(int userId, PackageUserState otherState) {
        setUserState(userId, otherState.ceDataInode, otherState.enabled, otherState.installed, otherState.stopped, otherState.notLaunched, otherState.hidden, otherState.distractionFlags, otherState.suspended, otherState.suspendParams, otherState.instantApp, otherState.virtualPreload, otherState.lastDisableAppCaller, otherState.enabledComponents, otherState.disabledComponents, otherState.domainVerificationStatus, otherState.appLinkGeneration, otherState.installReason, otherState.uninstallReason, otherState.harmfulAppWarning);
    }

    ArraySet<String> getEnabledComponents(int userId) {
        return readUserState(userId).enabledComponents;
    }

    ArraySet<String> getDisabledComponents(int userId) {
        return readUserState(userId).disabledComponents;
    }

    void setEnabledComponents(ArraySet<String> components, int userId) {
        modifyUserState(userId).enabledComponents = components;
    }

    void setDisabledComponents(ArraySet<String> components, int userId) {
        modifyUserState(userId).disabledComponents = components;
    }

    void setEnabledComponentsCopy(ArraySet<String> components, int userId) {
        modifyUserState(userId).enabledComponents = components != null ? new ArraySet((ArraySet) components) : null;
    }

    void setDisabledComponentsCopy(ArraySet<String> components, int userId) {
        modifyUserState(userId).disabledComponents = components != null ? new ArraySet((ArraySet) components) : null;
    }

    PackageUserState modifyUserStateComponents(int userId, boolean disabled, boolean enabled) {
        PackageUserState state = modifyUserState(userId);
        if (disabled && state.disabledComponents == null) {
            state.disabledComponents = new ArraySet(1);
        }
        if (enabled && state.enabledComponents == null) {
            state.enabledComponents = new ArraySet(1);
        }
        return state;
    }

    void addDisabledComponent(String componentClassName, int userId) {
        modifyUserStateComponents(userId, true, false).disabledComponents.add(componentClassName);
    }

    void addEnabledComponent(String componentClassName, int userId) {
        modifyUserStateComponents(userId, false, true).enabledComponents.add(componentClassName);
    }

    boolean enableComponentLPw(String componentClassName, int userId) {
        boolean changed = false;
        PackageUserState state = modifyUserStateComponents(userId, false, true);
        if (state.disabledComponents != null) {
            changed = state.disabledComponents.remove(componentClassName);
        }
        return changed | state.enabledComponents.add(componentClassName);
    }

    boolean disableComponentLPw(String componentClassName, int userId) {
        PackageUserState state = modifyUserStateComponents(userId, true, false);
        boolean changed = state.enabledComponents != null ? state.enabledComponents.remove(componentClassName) : false;
        return changed | state.disabledComponents.add(componentClassName);
    }

    boolean restoreComponentLPw(String componentClassName, int userId) {
        PackageUserState state = modifyUserStateComponents(userId, true, true);
        boolean changed = state.disabledComponents != null ? state.disabledComponents.remove(componentClassName) : false;
        return changed | (state.enabledComponents != null ? state.enabledComponents.remove(componentClassName) : false);
    }

    int getCurrentEnabledStateLPr(String componentName, int userId) {
        PackageUserState state = readUserState(userId);
        if (state.enabledComponents != null && state.enabledComponents.contains(componentName)) {
            return 1;
        }
        if (state.disabledComponents != null && state.disabledComponents.contains(componentName)) {
            return 2;
        }
        return 0;
    }

    void removeUser(int userId) {
        this.mUserState.delete(userId);
    }

    public int[] getNotInstalledUserIds() {
        int count = 0;
        int userStateCount = this.mUserState.size();
        for (int i = 0; i < userStateCount; i++) {
            if (!this.mUserState.valueAt(i).installed) {
                count++;
            }
        }
        if (count == 0) {
            return EMPTY_INT_ARRAY;
        }
        int[] excludedUserIds = new int[count];
        int idx = 0;
        for (int i2 = 0; i2 < userStateCount; i2++) {
            if (!this.mUserState.valueAt(i2).installed) {
                excludedUserIds[idx] = this.mUserState.keyAt(i2);
                idx++;
            }
        }
        return excludedUserIds;
    }

    IntentFilterVerificationInfo getIntentFilterVerificationInfo() {
        return this.verificationInfo;
    }

    void setIntentFilterVerificationInfo(IntentFilterVerificationInfo info) {
        this.verificationInfo = info;
    }

    long getDomainVerificationStatusForUser(int userId) {
        PackageUserState state = readUserState(userId);
        long result = state.appLinkGeneration;
        return result | (((long) state.domainVerificationStatus) << 32);
    }

    void setDomainVerificationStatusForUser(int status, int generation, int userId) {
        PackageUserState state = modifyUserState(userId);
        state.domainVerificationStatus = status;
        if (status == 2) {
            state.appLinkGeneration = generation;
        }
    }

    void clearDomainVerificationStatusForUser(int userId) {
        modifyUserState(userId).domainVerificationStatus = 0;
    }

    protected void writeUsersInfoToProto(ProtoOutputStream proto, long fieldId) {
        int installType;
        int count = this.mUserState.size();
        for (int i = 0; i < count; i++) {
            long userToken = proto.start(fieldId);
            int userId = this.mUserState.keyAt(i);
            PackageUserState state = this.mUserState.valueAt(i);
            proto.write(1120986464257L, userId);
            if (state.instantApp) {
                installType = 2;
            } else if (state.installed) {
                installType = 1;
            } else {
                installType = 0;
            }
            proto.write(1159641169922L, installType);
            proto.write(1133871366147L, state.hidden);
            proto.write(1120986464266L, state.distractionFlags);
            proto.write(1133871366148L, state.suspended);
            if (state.suspended) {
                for (int j = 0; j < state.suspendParams.size(); j++) {
                    proto.write(2237677961225L, (String) state.suspendParams.keyAt(j));
                }
            }
            proto.write(1133871366149L, state.stopped);
            proto.write(1133871366150L, !state.notLaunched);
            proto.write(1159641169927L, state.enabled);
            proto.write(1138166333448L, state.lastDisableAppCaller);
            proto.end(userToken);
        }
    }

    void setHarmfulAppWarning(int userId, String harmfulAppWarning) {
        PackageUserState userState = modifyUserState(userId);
        userState.harmfulAppWarning = harmfulAppWarning;
    }

    String getHarmfulAppWarning(int userId) {
        PackageUserState userState = readUserState(userId);
        return userState.harmfulAppWarning;
    }

    public boolean overrideNonLocalizedLabelAndIcon(ComponentName component, String label, Integer icon, int userId) {
        return modifyUserState(userId).overrideLabelAndIcon(component, label, icon);
    }

    public void resetOverrideComponentLabelIcon(int userId) {
        modifyUserState(userId).resetOverrideComponentLabelIcon();
    }

    protected PackageSettingBase updateFrom(PackageSettingBase other) {
        super.copyFrom((SettingBase) other);
        this.codePath = other.codePath;
        this.codePathString = other.codePathString;
        this.resourcePath = other.resourcePath;
        this.resourcePathString = other.resourcePathString;
        this.usesStaticLibraries = other.usesStaticLibraries;
        this.usesStaticLibrariesVersions = other.usesStaticLibrariesVersions;
        this.legacyNativeLibraryPathString = other.legacyNativeLibraryPathString;
        this.primaryCpuAbiString = other.primaryCpuAbiString;
        this.secondaryCpuAbiString = other.secondaryCpuAbiString;
        this.cpuAbiOverrideString = other.cpuAbiOverrideString;
        this.timeStamp = other.timeStamp;
        this.firstInstallTime = other.firstInstallTime;
        this.lastUpdateTime = other.lastUpdateTime;
        this.versionCode = other.versionCode;
        this.uidError = other.uidError;
        this.signatures = other.signatures;
        this.installPermissionsFixed = other.installPermissionsFixed;
        this.keySetData = other.keySetData;
        this.installSource = other.installSource;
        this.volumeUuid = other.volumeUuid;
        this.categoryHint = other.categoryHint;
        this.updateAvailable = other.updateAvailable;
        this.verificationInfo = other.verificationInfo;
        this.forceQueryableOverride = other.forceQueryableOverride;
        Set<String> set = this.mOldCodePaths;
        if (set != null) {
            if (other.mOldCodePaths != null) {
                set.clear();
                this.mOldCodePaths.addAll(other.mOldCodePaths);
            } else {
                this.mOldCodePaths = null;
            }
        }
        this.mUserState.clear();
        for (int i = 0; i < other.mUserState.size(); i++) {
            this.mUserState.put(other.mUserState.keyAt(i), other.mUserState.valueAt(i));
        }
        return this;
    }
}
