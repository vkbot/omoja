package com.android.server.pm.parsing.pkg;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageParser;
import android.content.pm.parsing.ParsingPackage;
import android.content.pm.parsing.ParsingPackageImpl;
import android.content.pm.parsing.component.ParsedActivity;
import android.content.pm.parsing.component.ParsedInstrumentation;
import android.content.pm.parsing.component.ParsedPermission;
import android.content.pm.parsing.component.ParsedPermissionGroup;
import android.content.pm.parsing.component.ParsedProvider;
import android.content.pm.parsing.component.ParsedService;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import com.android.internal.util.CollectionUtils;
import com.android.server.pm.PackageSetting;
import com.android.server.pm.parsing.PackageInfoUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class PackageImpl extends ParsingPackageImpl implements ParsedPackage, AndroidPackage {
    public static final Parcelable.Creator<PackageImpl> CREATOR = new Parcelable.Creator<PackageImpl>() { // from class: com.android.server.pm.parsing.pkg.PackageImpl.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageImpl createFromParcel(Parcel source) {
            return new PackageImpl(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PackageImpl[] newArray(int size) {
            return new PackageImpl[size];
        }
    };
    private boolean coreApp;
    private boolean factoryTest;
    private final String manifestPackageName;
    protected String nativeLibraryDir;
    protected String nativeLibraryRootDir;
    private boolean nativeLibraryRootRequiresIsa;
    private boolean odm;
    private boolean oem;
    protected String primaryCpuAbi;
    private boolean privileged;
    private boolean product;
    protected String seInfo;
    protected String seInfoUser;
    protected String secondaryCpuAbi;
    protected String secondaryNativeLibraryDir;
    private boolean signedWithPlatformKey;
    private boolean stub;
    private boolean system;
    private boolean systemExt;
    private int uid;
    private boolean vendor;

    public static PackageImpl forParsing(String packageName, String baseCodePath, String codePath, TypedArray manifestArray, boolean isCoreApp) {
        return new PackageImpl(packageName, baseCodePath, codePath, manifestArray, isCoreApp);
    }

    public static AndroidPackage buildFakeForDeletion(String packageName, String volumeUuid) {
        return ((ParsedPackage) forTesting(packageName).setVolumeUuid(volumeUuid).hideAsParsed()).hideAsFinal();
    }

    public static ParsingPackage forTesting(String packageName) {
        return forTesting(packageName, "");
    }

    public static ParsingPackage forTesting(String packageName, String baseCodePath) {
        return new PackageImpl(packageName, baseCodePath, baseCodePath, null, false);
    }

    public PackageImpl(String packageName, String baseCodePath, String codePath, TypedArray manifestArray, boolean isCoreApp) {
        super(packageName, baseCodePath, codePath, manifestArray);
        this.uid = -1;
        this.manifestPackageName = this.packageName;
        this.coreApp = isCoreApp;
    }

    /* JADX INFO: renamed from: hideAsParsed, reason: merged with bridge method [inline-methods] */
    public ParsedPackage m47hideAsParsed() {
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public AndroidPackage hideAsFinal() {
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo, com.android.server.pm.parsing.pkg.PkgPackageInfo
    public long getLongVersionCode() {
        return PackageInfo.composeLongVersionCode(this.versionCodeMajor, this.versionCode);
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl removePermission(int index) {
        this.permissions.remove(index);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl addUsesOptionalLibrary(int index, String libraryName) {
        this.usesOptionalLibraries = CollectionUtils.add(this.usesOptionalLibraries, index, TextUtils.safeIntern(libraryName));
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl addUsesLibrary(int index, String libraryName) {
        this.usesLibraries = CollectionUtils.add(this.usesLibraries, index, TextUtils.safeIntern(libraryName));
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl removeUsesLibrary(String libraryName) {
        this.usesLibraries = CollectionUtils.remove(this.usesLibraries, libraryName);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: removeUsesOptionalLibrary, reason: merged with bridge method [inline-methods] */
    public PackageImpl m48removeUsesOptionalLibrary(String libraryName) {
        super.removeUsesOptionalLibrary(libraryName);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: setSigningDetails, reason: merged with bridge method [inline-methods] */
    public PackageImpl m54setSigningDetails(PackageParser.SigningDetails value) {
        super.setSigningDetails(value);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: setRestrictUpdateHash, reason: merged with bridge method [inline-methods] */
    public PackageImpl m53setRestrictUpdateHash(byte... value) {
        super.setRestrictUpdateHash(value);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: setRealPackage, reason: merged with bridge method [inline-methods] */
    public PackageImpl m52setRealPackage(String realPackage) {
        super.setRealPackage(realPackage);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: setPersistent, reason: merged with bridge method [inline-methods] */
    public PackageImpl m51setPersistent(boolean value) {
        super.setPersistent(value);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: setDefaultToDeviceProtectedStorage, reason: merged with bridge method [inline-methods] */
    public PackageImpl m49setDefaultToDeviceProtectedStorage(boolean value) {
        super.setDefaultToDeviceProtectedStorage(value);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    /* JADX INFO: renamed from: setDirectBootAware, reason: merged with bridge method [inline-methods] */
    public PackageImpl m50setDirectBootAware(boolean value) {
        super.setDirectBootAware(value);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl clearProtectedBroadcasts() {
        this.protectedBroadcasts.clear();
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl clearOriginalPackages() {
        this.originalPackages.clear();
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl clearAdoptPermissions() {
        this.adoptPermissions.clear();
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setCodePath(String value) {
        this.codePath = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setPackageName(String packageName) {
        this.packageName = TextUtils.safeIntern(packageName);
        int permissionsSize = this.permissions.size();
        for (int index = 0; index < permissionsSize; index++) {
            ((ParsedPermission) this.permissions.get(index)).setPackageName(this.packageName);
        }
        int permissionGroupsSize = this.permissionGroups.size();
        for (int index2 = 0; index2 < permissionGroupsSize; index2++) {
            ((ParsedPermissionGroup) this.permissionGroups.get(index2)).setPackageName(this.packageName);
        }
        int activitiesSize = this.activities.size();
        for (int index3 = 0; index3 < activitiesSize; index3++) {
            ((ParsedActivity) this.activities.get(index3)).setPackageName(this.packageName);
        }
        int receiversSize = this.receivers.size();
        for (int index4 = 0; index4 < receiversSize; index4++) {
            ((ParsedActivity) this.receivers.get(index4)).setPackageName(this.packageName);
        }
        int providersSize = this.providers.size();
        for (int index5 = 0; index5 < providersSize; index5++) {
            ((ParsedProvider) this.providers.get(index5)).setPackageName(this.packageName);
        }
        int servicesSize = this.services.size();
        for (int index6 = 0; index6 < servicesSize; index6++) {
            ((ParsedService) this.services.get(index6)).setPackageName(this.packageName);
        }
        int instrumentationsSize = this.instrumentations.size();
        for (int index7 = 0; index7 < instrumentationsSize; index7++) {
            ((ParsedInstrumentation) this.instrumentations.get(index7)).setPackageName(this.packageName);
        }
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setAllComponentsDirectBootAware(boolean allComponentsDirectBootAware) {
        int activitiesSize = this.activities.size();
        for (int index = 0; index < activitiesSize; index++) {
            ((ParsedActivity) this.activities.get(index)).setDirectBootAware(allComponentsDirectBootAware);
        }
        int receiversSize = this.receivers.size();
        for (int index2 = 0; index2 < receiversSize; index2++) {
            ((ParsedActivity) this.receivers.get(index2)).setDirectBootAware(allComponentsDirectBootAware);
        }
        int providersSize = this.providers.size();
        for (int index3 = 0; index3 < providersSize; index3++) {
            ((ParsedProvider) this.providers.get(index3)).setDirectBootAware(allComponentsDirectBootAware);
        }
        int servicesSize = this.services.size();
        for (int index4 = 0; index4 < servicesSize; index4++) {
            ((ParsedService) this.services.get(index4)).setDirectBootAware(allComponentsDirectBootAware);
        }
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setBaseCodePath(String baseCodePath) {
        this.baseCodePath = TextUtils.safeIntern(baseCodePath);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setNativeLibraryDir(String nativeLibraryDir) {
        this.nativeLibraryDir = TextUtils.safeIntern(nativeLibraryDir);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setNativeLibraryRootDir(String nativeLibraryRootDir) {
        this.nativeLibraryRootDir = TextUtils.safeIntern(nativeLibraryRootDir);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setPrimaryCpuAbi(String primaryCpuAbi) {
        this.primaryCpuAbi = TextUtils.safeIntern(primaryCpuAbi);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSecondaryCpuAbi(String secondaryCpuAbi) {
        this.secondaryCpuAbi = TextUtils.safeIntern(secondaryCpuAbi);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSecondaryNativeLibraryDir(String secondaryNativeLibraryDir) {
        this.secondaryNativeLibraryDir = TextUtils.safeIntern(secondaryNativeLibraryDir);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSeInfo(String seInfo) {
        this.seInfo = TextUtils.safeIntern(seInfo);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSeInfoUser(String seInfoUser) {
        this.seInfoUser = TextUtils.safeIntern(seInfoUser);
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSplitCodePaths(String[] splitCodePaths) {
        this.splitCodePaths = splitCodePaths;
        if (splitCodePaths != null) {
            int size = splitCodePaths.length;
            for (int index = 0; index < size; index++) {
                this.splitCodePaths[index] = TextUtils.safeIntern(this.splitCodePaths[index]);
            }
        }
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl capPermissionPriorities() {
        int size = this.permissionGroups.size();
        for (int index = size - 1; index >= 0; index--) {
            ((ParsedPermissionGroup) this.permissionGroups.get(index)).setPriority(0);
        }
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl markNotActivitiesAsNotExportedIfSingleUser() {
        int receiversSize = this.receivers.size();
        for (int index = 0; index < receiversSize; index++) {
            ParsedActivity receiver = (ParsedActivity) this.receivers.get(index);
            if ((1073741824 & receiver.getFlags()) != 0) {
                receiver.setExported(false);
            }
        }
        int servicesSize = this.services.size();
        for (int index2 = 0; index2 < servicesSize; index2++) {
            ParsedService service = (ParsedService) this.services.get(index2);
            if ((service.getFlags() & 1073741824) != 0) {
                service.setExported(false);
            }
        }
        int providersSize = this.providers.size();
        for (int index3 = 0; index3 < providersSize; index3++) {
            ParsedProvider provider = (ParsedProvider) this.providers.get(index3);
            if ((provider.getFlags() & 1073741824) != 0) {
                provider.setExported(false);
            }
        }
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.AndroidPackage
    public UUID getStorageUuid() {
        return StorageManager.convert(this.volumeUuid);
    }

    @Override // com.android.server.pm.parsing.pkg.AndroidPackage
    @Deprecated
    public String toAppInfoToString() {
        return "ApplicationInfo{" + Integer.toHexString(System.identityHashCode(this)) + " " + getPackageName() + "}";
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public ParsedPackage setCoreApp(boolean coreApp) {
        this.coreApp = coreApp;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public ParsedPackage setVersionCode(int versionCode) {
        this.versionCode = versionCode;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public ParsedPackage setVersionCodeMajor(int versionCodeMajor) {
        this.versionCodeMajor = versionCodeMajor;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.AndroidPackage
    public ApplicationInfo toAppInfoWithoutState() {
        ApplicationInfo appInfo = super.toAppInfoWithoutStateWithoutFlags();
        appInfo.flags = PackageInfoUtils.appInfoFlags(this, (PackageSetting) null);
        appInfo.privateFlags = PackageInfoUtils.appInfoPrivateFlags(this, (PackageSetting) null);
        appInfo.nativeLibraryDir = this.nativeLibraryDir;
        appInfo.nativeLibraryRootDir = this.nativeLibraryRootDir;
        appInfo.nativeLibraryRootRequiresIsa = this.nativeLibraryRootRequiresIsa;
        appInfo.primaryCpuAbi = this.primaryCpuAbi;
        appInfo.secondaryCpuAbi = this.secondaryCpuAbi;
        appInfo.secondaryNativeLibraryDir = this.secondaryNativeLibraryDir;
        appInfo.seInfo = this.seInfo;
        appInfo.seInfoUser = this.seInfoUser;
        appInfo.uid = this.uid;
        return appInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        sForInternedString.parcel(this.manifestPackageName, dest, flags);
        dest.writeBoolean(this.stub);
        dest.writeString(this.nativeLibraryDir);
        dest.writeString(this.nativeLibraryRootDir);
        dest.writeBoolean(this.nativeLibraryRootRequiresIsa);
        sForInternedString.parcel(this.primaryCpuAbi, dest, flags);
        sForInternedString.parcel(this.secondaryCpuAbi, dest, flags);
        dest.writeString(this.secondaryNativeLibraryDir);
        dest.writeString(this.seInfo);
        dest.writeString(this.seInfoUser);
        dest.writeInt(this.uid);
        dest.writeBoolean(this.coreApp);
        dest.writeBoolean(this.system);
        dest.writeBoolean(this.factoryTest);
        dest.writeBoolean(this.systemExt);
        dest.writeBoolean(this.privileged);
        dest.writeBoolean(this.oem);
        dest.writeBoolean(this.vendor);
        dest.writeBoolean(this.product);
        dest.writeBoolean(this.odm);
        dest.writeBoolean(this.signedWithPlatformKey);
    }

    public PackageImpl(Parcel in) {
        super(in);
        this.uid = -1;
        this.manifestPackageName = sForInternedString.unparcel(in);
        this.stub = in.readBoolean();
        this.nativeLibraryDir = in.readString();
        this.nativeLibraryRootDir = in.readString();
        this.nativeLibraryRootRequiresIsa = in.readBoolean();
        this.primaryCpuAbi = sForInternedString.unparcel(in);
        this.secondaryCpuAbi = sForInternedString.unparcel(in);
        this.secondaryNativeLibraryDir = in.readString();
        this.seInfo = in.readString();
        this.seInfoUser = in.readString();
        this.uid = in.readInt();
        this.coreApp = in.readBoolean();
        this.system = in.readBoolean();
        this.factoryTest = in.readBoolean();
        this.systemExt = in.readBoolean();
        this.privileged = in.readBoolean();
        this.oem = in.readBoolean();
        this.vendor = in.readBoolean();
        this.product = in.readBoolean();
        this.odm = in.readBoolean();
        this.signedWithPlatformKey = in.readBoolean();
    }

    @Override // com.android.server.pm.parsing.pkg.AndroidPackage
    public String getManifestPackageName() {
        return this.manifestPackageName;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgPackageInfo
    public boolean isStub() {
        return this.stub;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getNativeLibraryDir() {
        return this.nativeLibraryDir;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getNativeLibraryRootDir() {
        return this.nativeLibraryRootDir;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isNativeLibraryRootRequiresIsa() {
        return this.nativeLibraryRootRequiresIsa;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getPrimaryCpuAbi() {
        return this.primaryCpuAbi;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getSecondaryCpuAbi() {
        return this.secondaryCpuAbi;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getSecondaryNativeLibraryDir() {
        return this.secondaryNativeLibraryDir;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getSeInfo() {
        return this.seInfo;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public String getSeInfoUser() {
        return this.seInfoUser;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgPackageInfo
    public boolean isCoreApp() {
        return this.coreApp;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isSystem() {
        return this.system;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isFactoryTest() {
        return this.factoryTest;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isSystemExt() {
        return this.systemExt;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isPrivileged() {
        return this.privileged;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isOem() {
        return this.oem;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isVendor() {
        return this.vendor;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isProduct() {
        return this.product;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isOdm() {
        return this.odm;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public boolean isSignedWithPlatformKey() {
        return this.signedWithPlatformKey;
    }

    @Override // com.android.server.pm.parsing.pkg.PkgAppInfo
    public int getUid() {
        return this.uid;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setStub(boolean value) {
        this.stub = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setNativeLibraryRootRequiresIsa(boolean value) {
        this.nativeLibraryRootRequiresIsa = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSystem(boolean value) {
        this.system = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setFactoryTest(boolean value) {
        this.factoryTest = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSystemExt(boolean value) {
        this.systemExt = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setPrivileged(boolean value) {
        this.privileged = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setOem(boolean value) {
        this.oem = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setVendor(boolean value) {
        this.vendor = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setProduct(boolean value) {
        this.product = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setOdm(boolean value) {
        this.odm = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setSignedWithPlatformKey(boolean value) {
        this.signedWithPlatformKey = value;
        return this;
    }

    @Override // com.android.server.pm.parsing.pkg.ParsedPackage
    public PackageImpl setUid(int value) {
        this.uid = value;
        return this;
    }

    @Deprecated
    private void __metadata() {
    }
}
