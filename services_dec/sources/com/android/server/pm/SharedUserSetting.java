package com.android.server.pm;

import android.content.pm.parsing.component.ParsedProcess;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.slice.SliceClientPermissions;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public final class SharedUserSetting extends SettingBase {
    final String name;
    final ArraySet<PackageSetting> packages;
    ArrayMap<String, ParsedProcess> processes;
    int seInfoTargetSdkVersion;
    final PackageSignatures signatures;
    Boolean signaturesChanged;
    int uidFlags;
    int uidPrivateFlags;
    int userId;

    SharedUserSetting(String _name, int _pkgFlags, int _pkgPrivateFlags) {
        super(_pkgFlags, _pkgPrivateFlags);
        this.packages = new ArraySet<>();
        this.signatures = new PackageSignatures();
        this.uidFlags = _pkgFlags;
        this.uidPrivateFlags = _pkgPrivateFlags;
        this.name = _name;
        this.seInfoTargetSdkVersion = 10000;
    }

    public String toString() {
        return "SharedUserSetting{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.name + SliceClientPermissions.SliceAuthority.DELIMITER + this.userId + "}";
    }

    public void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long token = proto.start(fieldId);
        proto.write(1120986464257L, this.userId);
        proto.write(1138166333442L, this.name);
        proto.end(token);
    }

    void addProcesses(Map<String, ParsedProcess> newProcs) {
        if (newProcs != null) {
            int numProcs = newProcs.size();
            if (this.processes == null) {
                this.processes = new ArrayMap<>(numProcs);
            }
            for (String key : newProcs.keySet()) {
                ParsedProcess newProc = newProcs.get(key);
                ParsedProcess proc = this.processes.get(newProc.getName());
                if (proc == null) {
                    this.processes.put(newProc.getName(), new ParsedProcess(newProc));
                } else {
                    proc.addStateFrom(newProc);
                }
            }
        }
    }

    boolean removePackage(PackageSetting packageSetting) {
        if (!this.packages.remove(packageSetting)) {
            return false;
        }
        if ((this.pkgFlags & packageSetting.pkgFlags) != 0) {
            int aggregatedFlags = this.uidFlags;
            for (PackageSetting ps : this.packages) {
                aggregatedFlags |= ps.pkgFlags;
            }
            setFlags(aggregatedFlags);
        }
        int aggregatedFlags2 = this.pkgPrivateFlags;
        if ((aggregatedFlags2 & packageSetting.pkgPrivateFlags) != 0) {
            int aggregatedPrivateFlags = this.uidPrivateFlags;
            for (PackageSetting ps2 : this.packages) {
                aggregatedPrivateFlags |= ps2.pkgPrivateFlags;
            }
            setPrivateFlags(aggregatedPrivateFlags);
        }
        updateProcesses();
        return true;
    }

    void addPackage(PackageSetting packageSetting) {
        if (this.packages.size() == 0 && packageSetting.pkg != null) {
            this.seInfoTargetSdkVersion = packageSetting.pkg.getTargetSdkVersion();
        }
        if (this.packages.add(packageSetting)) {
            setFlags(this.pkgFlags | packageSetting.pkgFlags);
            setPrivateFlags(this.pkgPrivateFlags | packageSetting.pkgPrivateFlags);
        }
        if (packageSetting.pkg != null) {
            addProcesses(packageSetting.pkg.getProcesses());
        }
    }

    public List<AndroidPackage> getPackages() {
        ArraySet<PackageSetting> arraySet = this.packages;
        if (arraySet == null || arraySet.size() == 0) {
            return null;
        }
        ArrayList<AndroidPackage> pkgList = new ArrayList<>(this.packages.size());
        for (PackageSetting ps : this.packages) {
            if (ps != null && ps.pkg != null) {
                pkgList.add(ps.pkg);
            }
        }
        return pkgList;
    }

    public boolean isPrivileged() {
        return (this.pkgPrivateFlags & 8) != 0;
    }

    public void fixSeInfoLocked() {
        ArraySet<PackageSetting> arraySet = this.packages;
        if (arraySet == null || arraySet.size() == 0) {
            return;
        }
        for (PackageSetting ps : this.packages) {
            if (ps != null && ps.pkg != null && ps.pkg.getTargetSdkVersion() < this.seInfoTargetSdkVersion) {
                this.seInfoTargetSdkVersion = ps.pkg.getTargetSdkVersion();
            }
        }
        for (PackageSetting ps2 : this.packages) {
            if (ps2 != null && ps2.pkg != null) {
                boolean isPrivileged = isPrivileged() | ps2.pkg.isPrivileged();
                ps2.getPkgState().setOverrideSeInfo(SELinuxMMAC.getSeInfo(ps2.pkg, isPrivileged, this.seInfoTargetSdkVersion));
            }
        }
    }

    public void updateProcesses() {
        this.processes = null;
        for (int i = this.packages.size() - 1; i >= 0; i--) {
            AndroidPackage androidPackage = this.packages.valueAt(i).pkg;
            if (androidPackage != null) {
                addProcesses(androidPackage.getProcesses());
            }
        }
    }

    public int[] getNotInstalledUserIds() {
        int[] excludedUserIds = null;
        for (PackageSetting ps : this.packages) {
            int[] userIds = ps.getNotInstalledUserIds();
            if (excludedUserIds == null) {
                excludedUserIds = userIds;
            } else {
                int[] excludedUserIds2 = excludedUserIds;
                for (int userId : excludedUserIds) {
                    if (!ArrayUtils.contains(userIds, userId)) {
                        excludedUserIds2 = ArrayUtils.removeInt(excludedUserIds2, userId);
                    }
                }
                excludedUserIds = excludedUserIds2;
            }
        }
        return excludedUserIds == null ? EmptyArray.INT : excludedUserIds;
    }

    public SharedUserSetting updateFrom(SharedUserSetting sharedUser) {
        copyFrom(sharedUser);
        this.userId = sharedUser.userId;
        this.uidFlags = sharedUser.uidFlags;
        this.uidPrivateFlags = sharedUser.uidPrivateFlags;
        this.seInfoTargetSdkVersion = sharedUser.seInfoTargetSdkVersion;
        this.packages.clear();
        this.packages.addAll((ArraySet<? extends PackageSetting>) sharedUser.packages);
        this.signaturesChanged = sharedUser.signaturesChanged;
        ArrayMap<String, ParsedProcess> arrayMap = sharedUser.processes;
        if (arrayMap != null) {
            int numProcs = arrayMap.size();
            this.processes = new ArrayMap<>(numProcs);
            for (int i = 0; i < numProcs; i++) {
                ParsedProcess proc = new ParsedProcess(sharedUser.processes.valueAt(i));
                this.processes.put(proc.getName(), proc);
            }
        } else {
            this.processes = null;
        }
        return this;
    }
}
