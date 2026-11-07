package com.android.server.pm.permission;

import android.content.pm.parsing.component.ParsedPermissionGroup;
import android.util.ArrayMap;
import android.util.ArraySet;
import com.android.internal.util.XmlUtils;
import com.android.server.pm.DumpState;
import com.android.server.pm.PackageManagerService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class PermissionSettings {
    private final Object mLock;
    final ArrayMap<String, BasePermission> mPermissions = new ArrayMap<>();
    final ArrayMap<String, BasePermission> mPermissionTrees = new ArrayMap<>();
    final ArrayMap<String, ParsedPermissionGroup> mPermissionGroups = new ArrayMap<>();
    final ArrayMap<String, ArraySet<String>> mAppOpPermissionPackages = new ArrayMap<>();

    PermissionSettings(Object lock) {
        this.mLock = lock;
    }

    public BasePermission getPermission(String permName) {
        BasePermission permissionLocked;
        synchronized (this.mLock) {
            permissionLocked = getPermissionLocked(permName);
        }
        return permissionLocked;
    }

    public void addAppOpPackage(String permName, String packageName) {
        ArraySet<String> pkgs = this.mAppOpPermissionPackages.get(permName);
        if (pkgs == null) {
            pkgs = new ArraySet<>();
            this.mAppOpPermissionPackages.put(permName, pkgs);
        }
        pkgs.add(packageName);
    }

    public void transferPermissions(String origPackageName, String newPackageName) {
        synchronized (this.mLock) {
            int i = 0;
            while (i < 2) {
                ArrayMap<String, BasePermission> permissions = i == 0 ? this.mPermissionTrees : this.mPermissions;
                for (BasePermission bp : permissions.values()) {
                    bp.transfer(origPackageName, newPackageName);
                }
                i++;
            }
        }
    }

    public boolean canPropagatePermissionToInstantApp(String permName) {
        boolean z;
        synchronized (this.mLock) {
            BasePermission bp = this.mPermissions.get(permName);
            z = bp != null && (bp.isRuntime() || bp.isDevelopment()) && bp.isInstant();
        }
        return z;
    }

    public void readPermissions(XmlPullParser parser) throws XmlPullParserException, IOException {
        synchronized (this.mLock) {
            readPermissions(this.mPermissions, parser);
        }
    }

    public void readPermissionTrees(XmlPullParser parser) throws XmlPullParserException, IOException {
        synchronized (this.mLock) {
            readPermissions(this.mPermissionTrees, parser);
        }
    }

    public void writePermissions(XmlSerializer serializer) throws IOException {
        synchronized (this.mLock) {
            for (BasePermission bp : this.mPermissions.values()) {
                bp.writeLPr(serializer);
            }
        }
    }

    public void writePermissionTrees(XmlSerializer serializer) throws IOException {
        synchronized (this.mLock) {
            for (BasePermission bp : this.mPermissionTrees.values()) {
                bp.writeLPr(serializer);
            }
        }
    }

    public static void readPermissions(ArrayMap<String, BasePermission> out, XmlPullParser parser) throws XmlPullParserException, IOException {
        int outerDepth = parser.getDepth();
        while (true) {
            int type = parser.next();
            if (type != 1) {
                if (type != 3 || parser.getDepth() > outerDepth) {
                    if (type != 3 && type != 4) {
                        if (!BasePermission.readLPw(out, parser)) {
                            PackageManagerService.reportSettingsProblem(5, "Unknown element reading permissions: " + parser.getName() + " at " + parser.getPositionDescription());
                        }
                        XmlUtils.skipCurrentTag(parser);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public void dumpPermissions(PrintWriter pw, String packageName, ArraySet<String> permissionNames, boolean externalStorageEnforced, DumpState dumpState) {
        synchronized (this.mLock) {
            boolean printedSomething = false;
            for (BasePermission bp : this.mPermissions.values()) {
                printedSomething = bp.dumpPermissionsLPr(pw, packageName, permissionNames, externalStorageEnforced, printedSomething, dumpState);
            }
            if (packageName == null && permissionNames == null) {
                for (int iperm = 0; iperm < this.mAppOpPermissionPackages.size(); iperm++) {
                    if (iperm == 0) {
                        if (dumpState.onTitlePrinted()) {
                            pw.println();
                        }
                        pw.println("AppOp Permissions:");
                    }
                    pw.print("  AppOp Permission ");
                    pw.print(this.mAppOpPermissionPackages.keyAt(iperm));
                    pw.println(":");
                    ArraySet<String> pkgs = this.mAppOpPermissionPackages.valueAt(iperm);
                    for (int ipkg = 0; ipkg < pkgs.size(); ipkg++) {
                        pw.print("    ");
                        pw.println(pkgs.valueAt(ipkg));
                    }
                }
            }
        }
    }

    BasePermission getPermissionLocked(String permName) {
        return this.mPermissions.get(permName);
    }

    BasePermission getPermissionTreeLocked(String permName) {
        return this.mPermissionTrees.get(permName);
    }

    void putPermissionLocked(String permName, BasePermission permission) {
        this.mPermissions.put(permName, permission);
    }

    void putPermissionTreeLocked(String permName, BasePermission permission) {
        this.mPermissionTrees.put(permName, permission);
    }

    void removePermissionLocked(String permName) {
        this.mPermissions.remove(permName);
    }

    void removePermissionTreeLocked(String permName) {
        this.mPermissionTrees.remove(permName);
    }

    Collection<BasePermission> getAllPermissionsLocked() {
        return this.mPermissions.values();
    }

    Collection<BasePermission> getAllPermissionTreesLocked() {
        return this.mPermissionTrees.values();
    }

    BasePermission enforcePermissionTree(String permName, int callingUid) {
        BasePermission basePermissionEnforcePermissionTree;
        synchronized (this.mLock) {
            basePermissionEnforcePermissionTree = BasePermission.enforcePermissionTree(this.mPermissionTrees.values(), permName, callingUid);
        }
        return basePermissionEnforcePermissionTree;
    }

    public boolean isPermissionRuntime(String permName) {
        boolean z;
        synchronized (this.mLock) {
            BasePermission bp = this.mPermissions.get(permName);
            z = bp != null && bp.isRuntime();
        }
        return z;
    }

    public boolean isPermissionInstant(String permName) {
        boolean z;
        synchronized (this.mLock) {
            BasePermission bp = this.mPermissions.get(permName);
            z = bp != null && bp.isInstant();
        }
        return z;
    }

    boolean isPermissionAppOp(String permName) {
        boolean z;
        synchronized (this.mLock) {
            BasePermission bp = this.mPermissions.get(permName);
            z = bp != null && bp.isAppOp();
        }
        return z;
    }
}
