package com.android.server.pm;

import android.content.pm.UserInfo;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.proto.ProtoOutputStream;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.pm.permission.PermissionsState;
import com.android.server.pm.pkg.PackageStateUnserialized;
import com.android.server.slice.SliceClientPermissions;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class PackageSetting extends PackageSettingBase {
    int appId;
    Map<String, ArraySet<String>> mimeGroups;
    public AndroidPackage pkg;
    private PackageStateUnserialized pkgState;
    SharedUserSetting sharedUser;
    private int sharedUserId;

    public PackageSetting(String name, String realName, File codePath, File resourcePath, String legacyNativeLibraryPathString, String primaryCpuAbiString, String secondaryCpuAbiString, String cpuAbiOverrideString, long pVersionCode, int pkgFlags, int privateFlags, int sharedUserId, String[] usesStaticLibraries, long[] usesStaticLibrariesVersions, Map<String, ArraySet<String>> mimeGroups) {
        super(name, realName, codePath, resourcePath, legacyNativeLibraryPathString, primaryCpuAbiString, secondaryCpuAbiString, cpuAbiOverrideString, pVersionCode, pkgFlags, privateFlags, usesStaticLibraries, usesStaticLibrariesVersions);
        this.pkgState = new PackageStateUnserialized();
        this.sharedUserId = sharedUserId;
        copyMimeGroups(mimeGroups);
    }

    PackageSetting(PackageSetting orig) {
        super(orig, orig.realName);
        this.pkgState = new PackageStateUnserialized();
        doCopy(orig);
    }

    PackageSetting(PackageSetting orig, String realPkgName) {
        super(orig, realPkgName);
        this.pkgState = new PackageStateUnserialized();
        doCopy(orig);
    }

    public int getSharedUserId() {
        SharedUserSetting sharedUserSetting = this.sharedUser;
        if (sharedUserSetting != null) {
            return sharedUserSetting.userId;
        }
        return this.sharedUserId;
    }

    public SharedUserSetting getSharedUser() {
        return this.sharedUser;
    }

    public String toString() {
        return "PackageSetting{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.name + SliceClientPermissions.SliceAuthority.DELIMITER + this.appId + "}";
    }

    public void copyFrom(PackageSetting orig) {
        super.copyFrom((PackageSettingBase) orig);
        doCopy(orig);
    }

    private void doCopy(PackageSetting orig) {
        this.appId = orig.appId;
        this.pkg = orig.pkg;
        this.sharedUser = orig.sharedUser;
        this.sharedUserId = orig.sharedUserId;
        copyMimeGroups(orig.mimeGroups);
    }

    private void copyMimeGroups(Map<String, ArraySet<String>> newMimeGroups) {
        if (newMimeGroups == null) {
            this.mimeGroups = null;
            return;
        }
        this.mimeGroups = new ArrayMap(newMimeGroups.size());
        for (String mimeGroup : newMimeGroups.keySet()) {
            ArraySet<String> mimeTypes = newMimeGroups.get(mimeGroup);
            if (mimeTypes != null) {
                this.mimeGroups.put(mimeGroup, new ArraySet<>((ArraySet) mimeTypes));
            } else {
                this.mimeGroups.put(mimeGroup, new ArraySet<>());
            }
        }
    }

    void updateMimeGroups(Set<String> newMimeGroupNames) {
        if (newMimeGroupNames == null) {
            this.mimeGroups = null;
            return;
        }
        if (this.mimeGroups == null) {
            this.mimeGroups = Collections.emptyMap();
        }
        ArrayMap<String, ArraySet<String>> updatedMimeGroups = new ArrayMap<>(newMimeGroupNames.size());
        for (String mimeGroup : newMimeGroupNames) {
            if (this.mimeGroups.containsKey(mimeGroup)) {
                updatedMimeGroups.put(mimeGroup, this.mimeGroups.get(mimeGroup));
            } else {
                updatedMimeGroups.put(mimeGroup, new ArraySet<>());
            }
        }
        this.mimeGroups = updatedMimeGroups;
    }

    @Override // com.android.server.pm.SettingBase
    public PermissionsState getPermissionsState() {
        SharedUserSetting sharedUserSetting = this.sharedUser;
        if (sharedUserSetting != null) {
            return sharedUserSetting.getPermissionsState();
        }
        return super.getPermissionsState();
    }

    public int getAppId() {
        return this.appId;
    }

    public void setInstallPermissionsFixed(boolean fixed) {
        this.installPermissionsFixed = fixed;
    }

    public boolean areInstallPermissionsFixed() {
        return this.installPermissionsFixed;
    }

    public boolean isPrivileged() {
        return (this.pkgPrivateFlags & 8) != 0;
    }

    public boolean isOem() {
        return (this.pkgPrivateFlags & 131072) != 0;
    }

    public boolean isVendor() {
        return (this.pkgPrivateFlags & 262144) != 0;
    }

    public boolean isProduct() {
        return (this.pkgPrivateFlags & 524288) != 0;
    }

    public boolean isSystemExt() {
        return (this.pkgPrivateFlags & 2097152) != 0;
    }

    public boolean isOdm() {
        return (this.pkgPrivateFlags & 1073741824) != 0;
    }

    public boolean isSystem() {
        return (this.pkgFlags & 1) != 0;
    }

    @Override // com.android.server.pm.PackageSettingBase
    public boolean isSharedUser() {
        return this.sharedUser != null;
    }

    public boolean isMatch(int flags) {
        if ((1048576 & flags) != 0) {
            return isSystem();
        }
        return true;
    }

    public boolean setMimeGroup(String mimeGroup, List<String> mimeTypes) {
        for (String mimeType : mimeTypes) {
            if (mimeType.length() > 255) {
                throw new IllegalArgumentException("MIME type length exceeds 255 characters");
            }
        }
        ArraySet<String> oldMimeTypes = getMimeGroupInternal(mimeGroup);
        if (oldMimeTypes == null) {
            throw new IllegalArgumentException("Unknown MIME group " + mimeGroup + " for package " + this.name);
        }
        if (mimeTypes.size() > 500) {
            throw new IllegalStateException("Max limit on MIME types for MIME group " + mimeGroup + " exceeded for package " + this.name);
        }
        ArraySet<String> newMimeTypes = new ArraySet<>(mimeTypes);
        boolean hasChanges = !newMimeTypes.equals(oldMimeTypes);
        this.mimeGroups.put(mimeGroup, newMimeTypes);
        return hasChanges;
    }

    public List<String> getMimeGroup(String mimeGroup) {
        ArraySet<String> mimeTypes = getMimeGroupInternal(mimeGroup);
        if (mimeTypes == null) {
            throw new IllegalArgumentException("Unknown MIME group " + mimeGroup + " for package " + this.name);
        }
        return new ArrayList(mimeTypes);
    }

    private ArraySet<String> getMimeGroupInternal(String mimeGroup) {
        Map<String, ArraySet<String>> map = this.mimeGroups;
        if (map != null) {
            return map.get(mimeGroup);
        }
        return null;
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId, List<UserInfo> users) {
        long packageToken = proto.start(fieldId);
        proto.write(1138166333441L, this.realName != null ? this.realName : this.name);
        proto.write(1120986464258L, this.appId);
        proto.write(1120986464259L, this.versionCode);
        proto.write(1112396529669L, this.firstInstallTime);
        proto.write(1112396529670L, this.lastUpdateTime);
        proto.write(1138166333447L, this.installSource.installerPackageName);
        AndroidPackage androidPackage = this.pkg;
        if (androidPackage != null) {
            proto.write(1138166333444L, androidPackage.getVersionName());
            long splitToken = proto.start(2246267895816L);
            proto.write(1138166333441L, "base");
            proto.write(1120986464258L, this.pkg.getBaseRevisionCode());
            proto.end(splitToken);
            if (this.pkg.getSplitNames() != null) {
                for (int i = 0; i < this.pkg.getSplitNames().length; i++) {
                    long splitToken2 = proto.start(2246267895816L);
                    proto.write(1138166333441L, this.pkg.getSplitNames()[i]);
                    proto.write(1120986464258L, this.pkg.getSplitRevisionCodes()[i]);
                    proto.end(splitToken2);
                }
            }
            long sourceToken = proto.start(1146756268042L);
            proto.write(1138166333441L, this.installSource.initiatingPackageName);
            proto.write(1138166333442L, this.installSource.originatingPackageName);
            proto.end(sourceToken);
        }
        writeUsersInfoToProto(proto, 2246267895817L);
        proto.end(packageToken);
    }

    public void updateFrom(PackageSetting other) {
        super.updateFrom((PackageSettingBase) other);
        this.appId = other.appId;
        this.pkg = other.pkg;
        this.sharedUserId = other.sharedUserId;
        this.sharedUser = other.sharedUser;
        Map<String, ArraySet<String>> map = other.mimeGroups;
        Set<String> mimeGroupNames = map != null ? map.keySet() : null;
        updateMimeGroups(mimeGroupNames);
        getPkgState().updateFrom(other.getPkgState());
    }

    public PackageStateUnserialized getPkgState() {
        return this.pkgState;
    }
}
