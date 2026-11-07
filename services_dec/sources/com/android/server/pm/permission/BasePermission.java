package com.android.server.pm.permission;

import android.content.pm.PackageManagerInternal;
import android.content.pm.PermissionInfo;
import android.content.pm.parsing.component.ParsedPermission;
import android.os.UserHandle;
import android.util.Slog;
import com.android.server.pm.DumpState;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.PackageSetting;
import com.android.server.pm.Settings;
import com.android.server.pm.parsing.PackageInfoUtils;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.voiceinteraction.DatabaseHelper;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public final class BasePermission {
    static final String TAG = "PackageManager";
    public static final int TYPE_BUILTIN = 1;
    public static final int TYPE_DYNAMIC = 2;
    public static final int TYPE_NORMAL = 0;
    private int[] gids;
    private boolean mPermissionDefinitionChanged;
    final String name;
    PermissionInfo pendingPermissionInfo;
    private boolean perUser;
    ParsedPermission perm;
    int protectionLevel = 2;
    String sourcePackageName;
    final int type;
    int uid;

    @Retention(RetentionPolicy.SOURCE)
    public @interface PermissionType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ProtectionLevel {
    }

    public BasePermission(String _name, String _sourcePackageName, int _type) {
        this.name = _name;
        this.sourcePackageName = _sourcePackageName;
        this.type = _type;
    }

    public String toString() {
        return "BasePermission{" + Integer.toHexString(System.identityHashCode(this)) + " " + this.name + "}";
    }

    public String getName() {
        return this.name;
    }

    public int getProtectionLevel() {
        return this.protectionLevel;
    }

    public String getSourcePackageName() {
        return this.sourcePackageName;
    }

    public boolean isPermissionDefinitionChanged() {
        return this.mPermissionDefinitionChanged;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGids(int[] gids, boolean perUser) {
        this.gids = gids;
        this.perUser = perUser;
    }

    public void setPermission(ParsedPermission perm) {
        this.perm = perm;
    }

    public void setPermissionDefinitionChanged(boolean shouldOverride) {
        this.mPermissionDefinitionChanged = shouldOverride;
    }

    public int[] computeGids(int userId) {
        if (this.perUser) {
            int[] userGids = new int[this.gids.length];
            int i = 0;
            while (true) {
                int[] iArr = this.gids;
                if (i < iArr.length) {
                    userGids[i] = UserHandle.getUid(userId, iArr[i]);
                    i++;
                } else {
                    return userGids;
                }
            }
        } else {
            return this.gids;
        }
    }

    public int calculateFootprint(BasePermission perm) {
        if (this.uid == perm.uid) {
            return perm.name.length() + perm.perm.calculateFootprint();
        }
        return 0;
    }

    public boolean isPermission(ParsedPermission perm) {
        ParsedPermission parsedPermission = this.perm;
        return parsedPermission != null && Objects.equals(parsedPermission.getPackageName(), perm.getPackageName()) && Objects.equals(this.perm.getName(), perm.getName());
    }

    public boolean isDynamic() {
        return this.type == 2;
    }

    public boolean isNormal() {
        return (this.protectionLevel & 15) == 0;
    }

    public boolean isRuntime() {
        return (this.protectionLevel & 15) == 1;
    }

    public boolean isRemoved() {
        ParsedPermission parsedPermission = this.perm;
        return (parsedPermission == null || (parsedPermission.getFlags() & 2) == 0) ? false : true;
    }

    public boolean isSoftRestricted() {
        ParsedPermission parsedPermission = this.perm;
        return (parsedPermission == null || (parsedPermission.getFlags() & 8) == 0) ? false : true;
    }

    public boolean isHardRestricted() {
        ParsedPermission parsedPermission = this.perm;
        return (parsedPermission == null || (parsedPermission.getFlags() & 4) == 0) ? false : true;
    }

    public boolean isHardOrSoftRestricted() {
        ParsedPermission parsedPermission = this.perm;
        return (parsedPermission == null || (parsedPermission.getFlags() & 12) == 0) ? false : true;
    }

    public boolean isImmutablyRestricted() {
        ParsedPermission parsedPermission = this.perm;
        return (parsedPermission == null || (parsedPermission.getFlags() & 16) == 0) ? false : true;
    }

    public boolean isSignature() {
        return (this.protectionLevel & 15) == 2;
    }

    public boolean isAppOp() {
        return (this.protectionLevel & 64) != 0;
    }

    public boolean isDevelopment() {
        return isSignature() && (this.protectionLevel & 32) != 0;
    }

    public boolean isInstaller() {
        return (this.protectionLevel & 256) != 0;
    }

    public boolean isInstant() {
        return (this.protectionLevel & 4096) != 0;
    }

    public boolean isOEM() {
        return (this.protectionLevel & 16384) != 0;
    }

    public boolean isPre23() {
        return (this.protectionLevel & 128) != 0;
    }

    public boolean isPreInstalled() {
        return (this.protectionLevel & 1024) != 0;
    }

    public boolean isPrivileged() {
        return (this.protectionLevel & 16) != 0;
    }

    public boolean isRuntimeOnly() {
        return (this.protectionLevel & 8192) != 0;
    }

    public boolean isSetup() {
        return (this.protectionLevel & 2048) != 0;
    }

    public boolean isVerifier() {
        return (this.protectionLevel & 512) != 0;
    }

    public boolean isVendorPrivileged() {
        return (this.protectionLevel & 32768) != 0;
    }

    public boolean isSystemTextClassifier() {
        return (this.protectionLevel & 65536) != 0;
    }

    public boolean isWellbeing() {
        return (this.protectionLevel & 131072) != 0;
    }

    public boolean isDocumenter() {
        return (this.protectionLevel & 262144) != 0;
    }

    public boolean isConfigurator() {
        return (this.protectionLevel & 524288) != 0;
    }

    public boolean isIncidentReportApprover() {
        return (this.protectionLevel & 1048576) != 0;
    }

    public boolean isAppPredictor() {
        return (this.protectionLevel & 2097152) != 0;
    }

    public boolean isCompanion() {
        return (this.protectionLevel & 8388608) != 0;
    }

    public boolean isRetailDemo() {
        return (this.protectionLevel & 16777216) != 0;
    }

    public void transfer(String origPackageName, String newPackageName) {
        if (!origPackageName.equals(this.sourcePackageName)) {
            return;
        }
        this.sourcePackageName = newPackageName;
        this.perm = null;
        PermissionInfo permissionInfo = this.pendingPermissionInfo;
        if (permissionInfo != null) {
            permissionInfo.packageName = newPackageName;
        }
        this.uid = 0;
        setGids(null, false);
    }

    public boolean addToTree(int protectionLevel, PermissionInfo info, BasePermission tree) {
        ParsedPermission parsedPermission;
        boolean changed = (this.protectionLevel == protectionLevel && (parsedPermission = this.perm) != null && this.uid == tree.uid && Objects.equals(parsedPermission.getPackageName(), tree.perm.getPackageName()) && comparePermissionInfos(this.perm, info)) ? false : true;
        this.protectionLevel = protectionLevel;
        new PermissionInfo(info).protectionLevel = protectionLevel;
        this.perm = new ParsedPermission(tree.perm);
        this.uid = tree.uid;
        return changed;
    }

    public void updateDynamicPermission(Collection<BasePermission> permissionTrees) {
        BasePermission tree;
        if (this.pendingPermissionInfo != null && (tree = findPermissionTree(permissionTrees, this.name)) != null && tree.perm != null) {
            ParsedPermission parsedPermission = tree.perm;
            this.perm = new ParsedPermission(parsedPermission, this.pendingPermissionInfo, parsedPermission.getPackageName(), this.name);
            this.uid = tree.uid;
        }
    }

    static BasePermission createOrUpdate(PackageManagerInternal packageManagerInternal, BasePermission bp, ParsedPermission p, AndroidPackage pkg, Collection<BasePermission> permissionTrees, boolean chatty) {
        boolean currentOwnerIsSystem;
        BasePermission bp2 = bp;
        packageManagerInternal.getPackageSetting(pkg.getPackageName());
        boolean ownerChanged = false;
        if (bp2 != null && !Objects.equals(bp2.sourcePackageName, p.getPackageName())) {
            ParsedPermission parsedPermission = bp2.perm;
            if (parsedPermission == null) {
                currentOwnerIsSystem = false;
            } else {
                AndroidPackage currentPackage = packageManagerInternal.getPackage(parsedPermission.getPackageName());
                if (currentPackage == null) {
                    currentOwnerIsSystem = false;
                } else {
                    boolean currentOwnerIsSystem2 = currentPackage.isSystem();
                    currentOwnerIsSystem = currentOwnerIsSystem2;
                }
            }
            if (pkg.isSystem()) {
                if (bp2.type == 1 && bp2.perm == null) {
                    p.setFlags(p.getFlags() | 1073741824);
                    bp2.perm = p;
                    bp2.uid = pkg.getUid();
                    bp2.sourcePackageName = p.getPackageName();
                } else if (!currentOwnerIsSystem) {
                    String msg = "New decl " + pkg + " of permission  " + p.getName() + " is system; overriding " + bp2.sourcePackageName;
                    PackageManagerService.reportSettingsProblem(5, msg);
                    ownerChanged = true;
                    bp2 = null;
                }
            }
        }
        if (bp2 == null) {
            bp2 = new BasePermission(p.getName(), p.getPackageName(), 0);
        }
        boolean wasNonRuntime = !bp2.isRuntime();
        StringBuilder r = null;
        if (bp2.perm == null) {
            String str = bp2.sourcePackageName;
            if (str == null || str.equals(p.getPackageName())) {
                BasePermission tree = findPermissionTree(permissionTrees, p.getName());
                if (tree == null || tree.sourcePackageName.equals(p.getPackageName())) {
                    p.setFlags(1073741824 | p.getFlags());
                    bp2.perm = p;
                    bp2.uid = pkg.getUid();
                    bp2.sourcePackageName = p.getPackageName();
                    if (chatty) {
                        if (0 == 0) {
                            r = new StringBuilder(256);
                        } else {
                            r.append(' ');
                        }
                        r.append(p.getName());
                    }
                } else {
                    Slog.w(TAG, "Permission " + p.getName() + " from package " + p.getPackageName() + " ignored: base tree " + tree.name + " is from package " + tree.sourcePackageName);
                }
            } else {
                Slog.w(TAG, "Permission " + p.getName() + " from package " + p.getPackageName() + " ignored: original from " + bp2.sourcePackageName);
            }
        } else if (chatty) {
            if (0 == 0) {
                r = new StringBuilder(256);
            } else {
                r.append(' ');
            }
            r.append("DUP:");
            r.append(p.getName());
        }
        ParsedPermission parsedPermission2 = bp2.perm;
        if (parsedPermission2 != null && Objects.equals(parsedPermission2.getPackageName(), p.getPackageName()) && Objects.equals(bp2.perm.getName(), p.getName())) {
            bp2.protectionLevel = p.getProtectionLevel();
        }
        if (bp2.isRuntime() && (ownerChanged || wasNonRuntime)) {
            bp2.mPermissionDefinitionChanged = true;
        }
        return bp2;
    }

    static BasePermission enforcePermissionTree(Collection<BasePermission> permissionTrees, String permName, int callingUid) {
        BasePermission bp;
        if (permName != null && (bp = findPermissionTree(permissionTrees, permName)) != null) {
            if (bp.uid == UserHandle.getAppId(callingUid)) {
                return bp;
            }
            throw new SecurityException("Calling uid " + callingUid + " is not allowed to add to permission tree " + bp.name + " owned by uid " + bp.uid);
        }
        throw new SecurityException("No permission tree found for " + permName);
    }

    public void enforceDeclaredUsedAndRuntimeOrDevelopment(AndroidPackage pkg, PackageSetting pkgSetting) {
        PermissionsState permsState = pkgSetting.getPermissionsState();
        int index = pkg.getRequestedPermissions().indexOf(this.name);
        if (!permsState.hasRequestedPermission(this.name) && index == -1) {
            throw new SecurityException("Package " + pkg.getPackageName() + " has not requested permission " + this.name);
        }
        if (!isRuntime() && !isDevelopment()) {
            throw new SecurityException("Permission " + this.name + " requested by " + pkg.getPackageName() + " is not a changeable permission type");
        }
    }

    private static BasePermission findPermissionTree(Collection<BasePermission> permissionTrees, String permName) {
        for (BasePermission bp : permissionTrees) {
            if (permName.startsWith(bp.name) && permName.length() > bp.name.length() && permName.charAt(bp.name.length()) == '.') {
                return bp;
            }
        }
        return null;
    }

    public PermissionInfo generatePermissionInfo(String groupName, int flags) {
        if (groupName == null) {
            ParsedPermission parsedPermission = this.perm;
            if (parsedPermission == null || parsedPermission.getGroup() == null) {
                return generatePermissionInfo(this.protectionLevel, flags);
            }
            return null;
        }
        ParsedPermission parsedPermission2 = this.perm;
        if (parsedPermission2 != null && groupName.equals(parsedPermission2.getGroup())) {
            return PackageInfoUtils.generatePermissionInfo(this.perm, flags);
        }
        return null;
    }

    public PermissionInfo generatePermissionInfo(int adjustedProtectionLevel, int flags) {
        if (this.perm != null) {
            boolean protectionLevelChanged = this.protectionLevel != adjustedProtectionLevel;
            PermissionInfo permissionInfo = PackageInfoUtils.generatePermissionInfo(this.perm, flags);
            if (protectionLevelChanged) {
                PermissionInfo permissionInfo2 = new PermissionInfo(permissionInfo);
                permissionInfo2.protectionLevel = adjustedProtectionLevel;
                return permissionInfo2;
            }
            return permissionInfo;
        }
        PermissionInfo permissionInfo3 = new PermissionInfo();
        permissionInfo3.name = this.name;
        permissionInfo3.packageName = this.sourcePackageName;
        permissionInfo3.nonLocalizedLabel = this.name;
        permissionInfo3.protectionLevel = this.protectionLevel;
        return permissionInfo3;
    }

    public static boolean readLPw(Map<String, BasePermission> out, XmlPullParser parser) {
        String tagName = parser.getName();
        if (!tagName.equals(Settings.TAG_ITEM)) {
            return false;
        }
        String name = parser.getAttributeValue(null, Settings.ATTR_NAME);
        String sourcePackage = parser.getAttributeValue(null, Settings.ATTR_PACKAGE);
        String ptype = parser.getAttributeValue(null, DatabaseHelper.SoundModelContract.KEY_TYPE);
        if (name == null || sourcePackage == null) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: permissions has no name at " + parser.getPositionDescription());
            return false;
        }
        boolean dynamic = "dynamic".equals(ptype);
        BasePermission bp = out.get(name);
        if (bp == null || bp.type != 1) {
            bp = new BasePermission(name.intern(), sourcePackage, dynamic ? 2 : 0);
        }
        int i = readInt(parser, null, "protection", 0);
        bp.protectionLevel = i;
        bp.protectionLevel = PermissionInfo.fixProtectionLevel(i);
        if (dynamic) {
            PermissionInfo pi = new PermissionInfo();
            pi.packageName = sourcePackage.intern();
            pi.name = name.intern();
            pi.icon = readInt(parser, null, "icon", 0);
            pi.nonLocalizedLabel = parser.getAttributeValue(null, "label");
            pi.protectionLevel = bp.protectionLevel;
            bp.pendingPermissionInfo = pi;
        }
        out.put(bp.name, bp);
        return true;
    }

    private static int readInt(XmlPullParser parser, String ns, String name, int defValue) {
        String v = parser.getAttributeValue(ns, name);
        if (v == null) {
            return defValue;
        }
        try {
            return Integer.parseInt(v);
        } catch (NumberFormatException e) {
            PackageManagerService.reportSettingsProblem(5, "Error in package manager settings: attribute " + name + " has bad integer value " + v + " at " + parser.getPositionDescription());
            return defValue;
        }
    }

    public void writeLPr(XmlSerializer serializer) throws IOException {
        CharSequence nonLocalizedLabel;
        if (this.sourcePackageName == null) {
            return;
        }
        serializer.startTag(null, Settings.TAG_ITEM);
        serializer.attribute(null, Settings.ATTR_NAME, this.name);
        serializer.attribute(null, Settings.ATTR_PACKAGE, this.sourcePackageName);
        int i = this.protectionLevel;
        if (i != 0) {
            serializer.attribute(null, "protection", Integer.toString(i));
        }
        if (this.type == 2 && (this.perm != null || this.pendingPermissionInfo != null)) {
            serializer.attribute(null, DatabaseHelper.SoundModelContract.KEY_TYPE, "dynamic");
            ParsedPermission parsedPermission = this.perm;
            int icon = parsedPermission != null ? parsedPermission.getIcon() : this.pendingPermissionInfo.icon;
            ParsedPermission parsedPermission2 = this.perm;
            if (parsedPermission2 != null) {
                nonLocalizedLabel = parsedPermission2.getNonLocalizedLabel();
            } else {
                nonLocalizedLabel = this.pendingPermissionInfo.nonLocalizedLabel;
            }
            if (icon != 0) {
                serializer.attribute(null, "icon", Integer.toString(icon));
            }
            if (nonLocalizedLabel != null) {
                serializer.attribute(null, "label", nonLocalizedLabel.toString());
            }
        }
        serializer.endTag(null, Settings.TAG_ITEM);
    }

    private static boolean compareStrings(CharSequence s1, CharSequence s2) {
        if (s1 == null) {
            return s2 == null;
        }
        if (s2 == null || s1.getClass() != s2.getClass()) {
            return false;
        }
        return s1.equals(s2);
    }

    private static boolean comparePermissionInfos(ParsedPermission pi1, PermissionInfo pi2) {
        return pi1.getIcon() == pi2.icon && pi1.getLogo() == pi2.logo && pi1.getProtectionLevel() == pi2.protectionLevel && compareStrings(pi1.getName(), pi2.name) && compareStrings(pi1.getNonLocalizedLabel(), pi2.nonLocalizedLabel) && compareStrings(pi1.getPackageName(), pi2.packageName);
    }

    public boolean dumpPermissionsLPr(PrintWriter pw, String packageName, Set<String> permissionNames, boolean readEnforced, boolean printedSomething, DumpState dumpState) {
        if (packageName != null && !packageName.equals(this.sourcePackageName)) {
            return false;
        }
        if (permissionNames != null && !permissionNames.contains(this.name)) {
            return false;
        }
        if (!printedSomething) {
            if (dumpState.onTitlePrinted()) {
                pw.println();
            }
            pw.println("Permissions:");
        }
        pw.print("  Permission [");
        pw.print(this.name);
        pw.print("] (");
        pw.print(Integer.toHexString(System.identityHashCode(this)));
        pw.println("):");
        pw.print("    sourcePackage=");
        pw.println(this.sourcePackageName);
        pw.print("    uid=");
        pw.print(this.uid);
        pw.print(" gids=");
        pw.print(Arrays.toString(computeGids(0)));
        pw.print(" type=");
        pw.print(this.type);
        pw.print(" prot=");
        pw.println(PermissionInfo.protectionToString(this.protectionLevel));
        if (this.perm != null) {
            pw.print("    perm=");
            pw.println(this.perm);
            if ((this.perm.getFlags() & 1073741824) == 0 || (this.perm.getFlags() & 2) != 0) {
                pw.print("    flags=0x");
                pw.println(Integer.toHexString(this.perm.getFlags()));
            }
        }
        if ("android.permission.READ_EXTERNAL_STORAGE".equals(this.name)) {
            pw.print("    enforced=");
            pw.println(readEnforced);
            return true;
        }
        return true;
    }
}
