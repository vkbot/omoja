package android.os;

import android.os.storage.CrateMetadata;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface IInstalld extends IInterface {
    public static final int FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES = 131072;
    public static final int FLAG_CLEAR_CACHE_ONLY = 16;
    public static final int FLAG_CLEAR_CODE_CACHE_ONLY = 32;
    public static final int FLAG_FORCE = 8192;
    public static final int FLAG_FREE_CACHE_NOOP = 1024;
    public static final int FLAG_FREE_CACHE_V2 = 256;
    public static final int FLAG_FREE_CACHE_V2_DEFY_QUOTA = 512;
    public static final int FLAG_STORAGE_CE = 2;
    public static final int FLAG_STORAGE_DE = 1;
    public static final int FLAG_STORAGE_EXTERNAL = 4;
    public static final int FLAG_USE_QUOTA = 4096;

    void assertFsverityRootHashMatches(String str, byte[] bArr) throws RemoteException;

    void clearAppData(String str, String str2, int i, int i2, long j) throws RemoteException;

    void clearAppProfiles(String str, String str2) throws RemoteException;

    boolean compileLayouts(String str, String str2, String str3, int i) throws RemoteException;

    boolean copySystemProfile(String str, int i, String str2, String str3) throws RemoteException;

    long createAppData(String str, String str2, int i, int i2, int i3, String str3, int i4) throws RemoteException;

    long createAppDataBatched(String[] strArr, String[] strArr2, int i, int i2, int[] iArr, String[] strArr3, int[] iArr2) throws RemoteException;

    void createOatDir(String str, String str2) throws RemoteException;

    boolean createProfileSnapshot(int i, String str, String str2, String str3) throws RemoteException;

    void createUserData(String str, int i, int i2, int i3) throws RemoteException;

    void deleteOdex(String str, String str2, String str3) throws RemoteException;

    void destroyAppData(String str, String str2, int i, int i2, long j) throws RemoteException;

    void destroyAppDataSnapshot(String str, String str2, int i, long j, int i2, int i3) throws RemoteException;

    void destroyAppProfiles(String str) throws RemoteException;

    void destroyCeSnapshotsNotSpecified(String str, int i, int[] iArr) throws RemoteException;

    void destroyProfileSnapshot(String str, String str2) throws RemoteException;

    void destroyUserData(String str, int i, int i2) throws RemoteException;

    void dexopt(String str, int i, String str2, String str3, int i2, String str4, int i3, String str5, String str6, String str7, String str8, boolean z, int i4, String str9, String str10, String str11) throws RemoteException;

    boolean dumpProfiles(int i, String str, String str2, String str3) throws RemoteException;

    void fixupAppData(String str, int i) throws RemoteException;

    void freeCache(String str, long j, long j2, int i) throws RemoteException;

    CrateMetadata[] getAppCrates(String str, String[] strArr, int i) throws RemoteException;

    long[] getAppSize(String str, String[] strArr, int i, int i2, int i3, long[] jArr, String[] strArr2) throws RemoteException;

    long[] getExternalSize(String str, int i, int i2, int[] iArr) throws RemoteException;

    CrateMetadata[] getUserCrates(String str, int i) throws RemoteException;

    long[] getUserSize(String str, int i, int i2, int[] iArr) throws RemoteException;

    byte[] hashSecondaryDexFile(String str, String str2, int i, String str3, int i2) throws RemoteException;

    void installApkVerity(String str, FileDescriptor fileDescriptor, int i) throws RemoteException;

    void invalidateMounts() throws RemoteException;

    boolean isQuotaSupported(String str) throws RemoteException;

    void linkFile(String str, String str2, String str3) throws RemoteException;

    void linkNativeLibraryDirectory(String str, String str2, String str3, int i) throws RemoteException;

    boolean mergeProfiles(int i, String str, String str2) throws RemoteException;

    void migrateAppData(String str, String str2, int i, int i2) throws RemoteException;

    void migrateLegacyObbData() throws RemoteException;

    void moveAb(String str, String str2, String str3) throws RemoteException;

    void moveCompleteApp(String str, String str2, String str3, int i, String str4, int i2, String str5) throws RemoteException;

    void onPrivateVolumeRemoved(String str) throws RemoteException;

    boolean prepareAppProfile(String str, int i, int i2, String str2, String str3, String str4) throws RemoteException;

    boolean reconcileSecondaryDexFile(String str, String str2, int i, String[] strArr, String str3, int i2) throws RemoteException;

    void restoreAppDataSnapshot(String str, String str2, int i, String str3, int i2, int i3, int i4) throws RemoteException;

    void restoreconAppData(String str, String str2, int i, int i2, int i3, String str3) throws RemoteException;

    void rmPackageDir(String str) throws RemoteException;

    void rmdex(String str, String str2) throws RemoteException;

    void setAppQuota(String str, int i, int i2, long j) throws RemoteException;

    long snapshotAppData(String str, String str2, int i, int i2, int i3) throws RemoteException;

    void tryMountDataMirror(String str) throws RemoteException;

    public static class Default implements IInstalld {
        @Override // android.os.IInstalld
        public void createUserData(String uuid, int userId, int userSerial, int flags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void destroyUserData(String uuid, int userId, int flags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public long createAppData(String uuid, String packageName, int userId, int flags, int appId, String seInfo, int targetSdkVersion) throws RemoteException {
            return 0L;
        }

        @Override // android.os.IInstalld
        public long createAppDataBatched(String[] uuids, String[] packageNames, int userId, int flags, int[] appIds, String[] seInfos, int[] targetSdkVersions) throws RemoteException {
            return 0L;
        }

        @Override // android.os.IInstalld
        public void restoreconAppData(String uuid, String packageName, int userId, int flags, int appId, String seInfo) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void migrateAppData(String uuid, String packageName, int userId, int flags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void clearAppData(String uuid, String packageName, int userId, int flags, long ceDataInode) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void destroyAppData(String uuid, String packageName, int userId, int flags, long ceDataInode) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void fixupAppData(String uuid, int flags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public long[] getAppSize(String uuid, String[] packageNames, int userId, int flags, int appId, long[] ceDataInodes, String[] codePaths) throws RemoteException {
            return null;
        }

        @Override // android.os.IInstalld
        public long[] getUserSize(String uuid, int userId, int flags, int[] appIds) throws RemoteException {
            return null;
        }

        @Override // android.os.IInstalld
        public long[] getExternalSize(String uuid, int userId, int flags, int[] appIds) throws RemoteException {
            return null;
        }

        @Override // android.os.IInstalld
        public CrateMetadata[] getAppCrates(String uuid, String[] packageNames, int userId) throws RemoteException {
            return null;
        }

        @Override // android.os.IInstalld
        public CrateMetadata[] getUserCrates(String uuid, int userId) throws RemoteException {
            return null;
        }

        @Override // android.os.IInstalld
        public void setAppQuota(String uuid, int userId, int appId, long cacheQuota) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void moveCompleteApp(String fromUuid, String toUuid, String packageName, int appId, String seInfo, int targetSdkVersion, String fromCodePath) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void dexopt(String apkPath, int uid, String packageName, String instructionSet, int dexoptNeeded, String outputPath, int dexFlags, String compilerFilter, String uuid, String sharedLibraries, String seInfo, boolean downgrade, int targetSdkVersion, String profileName, String dexMetadataPath, String compilationReason) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public boolean compileLayouts(String apkPath, String packageName, String outDexFile, int uid) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public void rmdex(String codePath, String instructionSet) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public boolean mergeProfiles(int uid, String packageName, String profileName) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public boolean dumpProfiles(int uid, String packageName, String profileName, String codePath) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public boolean copySystemProfile(String systemProfile, int uid, String packageName, String profileName) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public void clearAppProfiles(String packageName, String profileName) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void destroyAppProfiles(String packageName) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public boolean createProfileSnapshot(int appId, String packageName, String profileName, String classpath) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public void destroyProfileSnapshot(String packageName, String profileName) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void rmPackageDir(String packageDir) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void freeCache(String uuid, long targetFreeBytes, long cacheReservedBytes, int flags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void linkNativeLibraryDirectory(String uuid, String packageName, String nativeLibPath32, int userId) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void createOatDir(String oatDir, String instructionSet) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void linkFile(String relativePath, String fromBase, String toBase) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void moveAb(String apkPath, String instructionSet, String outputPath) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void deleteOdex(String apkPath, String instructionSet, String outputPath) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void installApkVerity(String filePath, FileDescriptor verityInput, int contentSize) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void assertFsverityRootHashMatches(String filePath, byte[] expectedHash) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public boolean reconcileSecondaryDexFile(String dexPath, String pkgName, int uid, String[] isas, String volume_uuid, int storage_flag) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public byte[] hashSecondaryDexFile(String dexPath, String pkgName, int uid, String volumeUuid, int storageFlag) throws RemoteException {
            return null;
        }

        @Override // android.os.IInstalld
        public void invalidateMounts() throws RemoteException {
        }

        @Override // android.os.IInstalld
        public boolean isQuotaSupported(String uuid) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public boolean prepareAppProfile(String packageName, int userId, int appId, String profileName, String codePath, String dexMetadata) throws RemoteException {
            return false;
        }

        @Override // android.os.IInstalld
        public long snapshotAppData(String uuid, String packageName, int userId, int snapshotId, int storageFlags) throws RemoteException {
            return 0L;
        }

        @Override // android.os.IInstalld
        public void restoreAppDataSnapshot(String uuid, String packageName, int appId, String seInfo, int user, int snapshotId, int storageflags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void destroyAppDataSnapshot(String uuid, String packageName, int userId, long ceSnapshotInode, int snapshotId, int storageFlags) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void destroyCeSnapshotsNotSpecified(String uuid, int userId, int[] retainSnapshotIds) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void tryMountDataMirror(String volumeUuid) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void onPrivateVolumeRemoved(String volumeUuid) throws RemoteException {
        }

        @Override // android.os.IInstalld
        public void migrateLegacyObbData() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IInstalld {
        private static final String DESCRIPTOR = "android.os.IInstalld";
        static final int TRANSACTION_assertFsverityRootHashMatches = 35;
        static final int TRANSACTION_clearAppData = 7;
        static final int TRANSACTION_clearAppProfiles = 23;
        static final int TRANSACTION_compileLayouts = 18;
        static final int TRANSACTION_copySystemProfile = 22;
        static final int TRANSACTION_createAppData = 3;
        static final int TRANSACTION_createAppDataBatched = 4;
        static final int TRANSACTION_createOatDir = 30;
        static final int TRANSACTION_createProfileSnapshot = 25;
        static final int TRANSACTION_createUserData = 1;
        static final int TRANSACTION_deleteOdex = 33;
        static final int TRANSACTION_destroyAppData = 8;
        static final int TRANSACTION_destroyAppDataSnapshot = 43;
        static final int TRANSACTION_destroyAppProfiles = 24;
        static final int TRANSACTION_destroyCeSnapshotsNotSpecified = 44;
        static final int TRANSACTION_destroyProfileSnapshot = 26;
        static final int TRANSACTION_destroyUserData = 2;
        static final int TRANSACTION_dexopt = 17;
        static final int TRANSACTION_dumpProfiles = 21;
        static final int TRANSACTION_fixupAppData = 9;
        static final int TRANSACTION_freeCache = 28;
        static final int TRANSACTION_getAppCrates = 13;
        static final int TRANSACTION_getAppSize = 10;
        static final int TRANSACTION_getExternalSize = 12;
        static final int TRANSACTION_getUserCrates = 14;
        static final int TRANSACTION_getUserSize = 11;
        static final int TRANSACTION_hashSecondaryDexFile = 37;
        static final int TRANSACTION_installApkVerity = 34;
        static final int TRANSACTION_invalidateMounts = 38;
        static final int TRANSACTION_isQuotaSupported = 39;
        static final int TRANSACTION_linkFile = 31;
        static final int TRANSACTION_linkNativeLibraryDirectory = 29;
        static final int TRANSACTION_mergeProfiles = 20;
        static final int TRANSACTION_migrateAppData = 6;
        static final int TRANSACTION_migrateLegacyObbData = 47;
        static final int TRANSACTION_moveAb = 32;
        static final int TRANSACTION_moveCompleteApp = 16;
        static final int TRANSACTION_onPrivateVolumeRemoved = 46;
        static final int TRANSACTION_prepareAppProfile = 40;
        static final int TRANSACTION_reconcileSecondaryDexFile = 36;
        static final int TRANSACTION_restoreAppDataSnapshot = 42;
        static final int TRANSACTION_restoreconAppData = 5;
        static final int TRANSACTION_rmPackageDir = 27;
        static final int TRANSACTION_rmdex = 19;
        static final int TRANSACTION_setAppQuota = 15;
        static final int TRANSACTION_snapshotAppData = 41;
        static final int TRANSACTION_tryMountDataMirror = 45;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInstalld asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IInstalld)) {
                return (IInstalld) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    createUserData(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyUserData(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    long jCreateAppData = createAppData(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(jCreateAppData);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    long jCreateAppDataBatched = createAppDataBatched(parcel.createStringArray(), parcel.createStringArray(), parcel.readInt(), parcel.readInt(), parcel.createIntArray(), parcel.createStringArray(), parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeLong(jCreateAppDataBatched);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreconAppData(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    migrateAppData(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearAppData(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyAppData(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    fixupAppData(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    long[] appSize = getAppSize(parcel.readString(), parcel.createStringArray(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.createLongArray(), parcel.createStringArray());
                    parcel2.writeNoException();
                    parcel2.writeLongArray(appSize);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    long[] userSize = getUserSize(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeLongArray(userSize);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    long[] externalSize = getExternalSize(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.createIntArray());
                    parcel2.writeNoException();
                    parcel2.writeLongArray(externalSize);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    CrateMetadata[] appCrates = getAppCrates(parcel.readString(), parcel.createStringArray(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(appCrates, 1);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    CrateMetadata[] userCrates = getUserCrates(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedArray(userCrates, 1);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppQuota(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveCompleteApp(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    dexopt(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0, parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCompileLayouts = compileLayouts(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCompileLayouts ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    rmdex(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMergeProfiles = mergeProfiles(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zMergeProfiles ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDumpProfiles = dumpProfiles(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDumpProfiles ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCopySystemProfile = copySystemProfile(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCopySystemProfile ? 1 : 0);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearAppProfiles(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyAppProfiles(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCreateProfileSnapshot = createProfileSnapshot(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zCreateProfileSnapshot ? 1 : 0);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyProfileSnapshot(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    rmPackageDir(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_freeCache /* 28 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    freeCache(parcel.readString(), parcel.readLong(), parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    linkNativeLibraryDirectory(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    createOatDir(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    linkFile(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveAb(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteOdex(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    installApkVerity(parcel.readString(), parcel.readRawFileDescriptor(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    assertFsverityRootHashMatches(parcel.readString(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zReconcileSecondaryDexFile = reconcileSecondaryDexFile(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.createStringArray(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zReconcileSecondaryDexFile ? 1 : 0);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] bArrHashSecondaryDexFile = hashSecondaryDexFile(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeByteArray(bArrHashSecondaryDexFile);
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    invalidateMounts();
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsQuotaSupported = isQuotaSupported(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsQuotaSupported ? 1 : 0);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPrepareAppProfile = prepareAppProfile(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zPrepareAppProfile ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    long jSnapshotAppData = snapshotAppData(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(jSnapshotAppData);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreAppDataSnapshot(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyAppDataSnapshot(parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readLong(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyCeSnapshotsNotSpecified(parcel.readString(), parcel.readInt(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    tryMountDataMirror(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPrivateVolumeRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    migrateLegacyObbData();
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IInstalld {
            public static IInstalld sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.os.IInstalld
            public void createUserData(String uuid, int userId, int userSerial, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().createUserData(uuid, userId, userSerial, flags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void destroyUserData(String uuid, int userId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyUserData(uuid, userId, flags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public long createAppData(String uuid, String packageName, int userId, int flags, int appId, String seInfo, int targetSdkVersion) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeString(packageName);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeInt(flags);
                                    try {
                                        _data.writeInt(appId);
                                        _data.writeString(seInfo);
                                        _data.writeInt(targetSdkVersion);
                                        boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            long jCreateAppData = Stub.getDefaultImpl().createAppData(uuid, packageName, userId, flags, appId, seInfo, targetSdkVersion);
                                            _reply.recycle();
                                            _data.recycle();
                                            return jCreateAppData;
                                        }
                                        _reply.readException();
                                        long _result = _reply.readLong();
                                        _reply.recycle();
                                        _data.recycle();
                                        return _result;
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public long createAppDataBatched(String[] uuids, String[] packageNames, int userId, int flags, int[] appIds, String[] seInfos, int[] targetSdkVersions) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeStringArray(uuids);
                        try {
                            _data.writeStringArray(packageNames);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeInt(flags);
                                    try {
                                        _data.writeIntArray(appIds);
                                        _data.writeStringArray(seInfos);
                                        _data.writeIntArray(targetSdkVersions);
                                        boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            long jCreateAppDataBatched = Stub.getDefaultImpl().createAppDataBatched(uuids, packageNames, userId, flags, appIds, seInfos, targetSdkVersions);
                                            _reply.recycle();
                                            _data.recycle();
                                            return jCreateAppDataBatched;
                                        }
                                        _reply.readException();
                                        long _result = _reply.readLong();
                                        _reply.recycle();
                                        _data.recycle();
                                        return _result;
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public void restoreconAppData(String uuid, String packageName, int userId, int flags, int appId, String seInfo) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeString(packageName);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeInt(flags);
                                    try {
                                        _data.writeInt(appId);
                                        try {
                                            _data.writeString(seInfo);
                                            boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                                            if (!_status && Stub.getDefaultImpl() != null) {
                                                Stub.getDefaultImpl().restoreconAppData(uuid, packageName, userId, flags, appId, seInfo);
                                                _reply.recycle();
                                                _data.recycle();
                                            } else {
                                                _reply.readException();
                                                _reply.recycle();
                                                _data.recycle();
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            _reply.recycle();
                                            _data.recycle();
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }

            @Override // android.os.IInstalld
            public void migrateAppData(String uuid, String packageName, int userId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(6, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().migrateAppData(uuid, packageName, userId, flags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void clearAppData(String uuid, String packageName, int userId, int flags, long ceDataInode) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeString(packageName);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeInt(flags);
                                    try {
                                        _data.writeLong(ceDataInode);
                                        boolean _status = this.mRemote.transact(7, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            Stub.getDefaultImpl().clearAppData(uuid, packageName, userId, flags, ceDataInode);
                                            _reply.recycle();
                                            _data.recycle();
                                        } else {
                                            _reply.readException();
                                            _reply.recycle();
                                            _data.recycle();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public void destroyAppData(String uuid, String packageName, int userId, int flags, long ceDataInode) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeString(packageName);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeInt(flags);
                                    try {
                                        _data.writeLong(ceDataInode);
                                        boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            Stub.getDefaultImpl().destroyAppData(uuid, packageName, userId, flags, ceDataInode);
                                            _reply.recycle();
                                            _data.recycle();
                                        } else {
                                            _reply.readException();
                                            _reply.recycle();
                                            _data.recycle();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public void fixupAppData(String uuid, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fixupAppData(uuid, flags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public long[] getAppSize(String uuid, String[] packageNames, int userId, int flags, int appId, long[] ceDataInodes, String[] codePaths) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeStringArray(packageNames);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeInt(flags);
                                    try {
                                        _data.writeInt(appId);
                                        _data.writeLongArray(ceDataInodes);
                                        _data.writeStringArray(codePaths);
                                        boolean _status = this.mRemote.transact(10, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            long[] appSize = Stub.getDefaultImpl().getAppSize(uuid, packageNames, userId, flags, appId, ceDataInodes, codePaths);
                                            _reply.recycle();
                                            _data.recycle();
                                            return appSize;
                                        }
                                        _reply.readException();
                                        long[] _result = _reply.createLongArray();
                                        _reply.recycle();
                                        _data.recycle();
                                        return _result;
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public long[] getUserSize(String uuid, int userId, int flags, int[] appIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(flags);
                    _data.writeIntArray(appIds);
                    boolean _status = this.mRemote.transact(11, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUserSize(uuid, userId, flags, appIds);
                    }
                    _reply.readException();
                    long[] _result = _reply.createLongArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public long[] getExternalSize(String uuid, int userId, int flags, int[] appIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(flags);
                    _data.writeIntArray(appIds);
                    boolean _status = this.mRemote.transact(12, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getExternalSize(uuid, userId, flags, appIds);
                    }
                    _reply.readException();
                    long[] _result = _reply.createLongArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public CrateMetadata[] getAppCrates(String uuid, String[] packageNames, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeStringArray(packageNames);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(13, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAppCrates(uuid, packageNames, userId);
                    }
                    _reply.readException();
                    CrateMetadata[] _result = (CrateMetadata[]) _reply.createTypedArray(CrateMetadata.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public CrateMetadata[] getUserCrates(String uuid, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(14, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUserCrates(uuid, userId);
                    }
                    _reply.readException();
                    CrateMetadata[] _result = (CrateMetadata[]) _reply.createTypedArray(CrateMetadata.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void setAppQuota(String uuid, int userId, int appId, long cacheQuota) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(appId);
                    _data.writeLong(cacheQuota);
                    boolean _status = this.mRemote.transact(15, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setAppQuota(uuid, userId, appId, cacheQuota);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void moveCompleteApp(String fromUuid, String toUuid, String packageName, int appId, String seInfo, int targetSdkVersion, String fromCodePath) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(fromUuid);
                        try {
                            _data.writeString(toUuid);
                            try {
                                _data.writeString(packageName);
                                try {
                                    _data.writeInt(appId);
                                    try {
                                        _data.writeString(seInfo);
                                        _data.writeInt(targetSdkVersion);
                                        _data.writeString(fromCodePath);
                                        boolean _status = this.mRemote.transact(16, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            Stub.getDefaultImpl().moveCompleteApp(fromUuid, toUuid, packageName, appId, seInfo, targetSdkVersion, fromCodePath);
                                            _reply.recycle();
                                            _data.recycle();
                                        } else {
                                            _reply.readException();
                                            _reply.recycle();
                                            _data.recycle();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public void dexopt(String apkPath, int uid, String packageName, String instructionSet, int dexoptNeeded, String outputPath, int dexFlags, String compilerFilter, String uuid, String sharedLibraries, String seInfo, boolean downgrade, int targetSdkVersion, String profileName, String dexMetadataPath, String compilationReason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(apkPath);
                    _data.writeInt(uid);
                    _data.writeString(packageName);
                    _data.writeString(instructionSet);
                    _data.writeInt(dexoptNeeded);
                    _data.writeString(outputPath);
                    _data.writeInt(dexFlags);
                    _data.writeString(compilerFilter);
                    _data.writeString(uuid);
                    _data.writeString(sharedLibraries);
                    _data.writeString(seInfo);
                    _data.writeInt(downgrade ? 1 : 0);
                    _data.writeInt(targetSdkVersion);
                    _data.writeString(profileName);
                    _data.writeString(dexMetadataPath);
                    _data.writeString(compilationReason);
                    boolean _status = this.mRemote.transact(17, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().dexopt(apkPath, uid, packageName, instructionSet, dexoptNeeded, outputPath, dexFlags, compilerFilter, uuid, sharedLibraries, seInfo, downgrade, targetSdkVersion, profileName, dexMetadataPath, compilationReason);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean compileLayouts(String apkPath, String packageName, String outDexFile, int uid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(apkPath);
                    _data.writeString(packageName);
                    _data.writeString(outDexFile);
                    _data.writeInt(uid);
                    boolean _status = this.mRemote.transact(18, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().compileLayouts(apkPath, packageName, outDexFile, uid);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void rmdex(String codePath, String instructionSet) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(codePath);
                    _data.writeString(instructionSet);
                    boolean _status = this.mRemote.transact(19, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().rmdex(codePath, instructionSet);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean mergeProfiles(int uid, String packageName, String profileName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeString(packageName);
                    _data.writeString(profileName);
                    boolean _status = this.mRemote.transact(20, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().mergeProfiles(uid, packageName, profileName);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean dumpProfiles(int uid, String packageName, String profileName, String codePath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeString(packageName);
                    _data.writeString(profileName);
                    _data.writeString(codePath);
                    boolean _status = this.mRemote.transact(21, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().dumpProfiles(uid, packageName, profileName, codePath);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean copySystemProfile(String systemProfile, int uid, String packageName, String profileName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(systemProfile);
                    _data.writeInt(uid);
                    _data.writeString(packageName);
                    _data.writeString(profileName);
                    boolean _status = this.mRemote.transact(22, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().copySystemProfile(systemProfile, uid, packageName, profileName);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void clearAppProfiles(String packageName, String profileName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(profileName);
                    boolean _status = this.mRemote.transact(23, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().clearAppProfiles(packageName, profileName);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void destroyAppProfiles(String packageName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    boolean _status = this.mRemote.transact(24, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyAppProfiles(packageName);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean createProfileSnapshot(int appId, String packageName, String profileName, String classpath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(appId);
                    _data.writeString(packageName);
                    _data.writeString(profileName);
                    _data.writeString(classpath);
                    boolean _status = this.mRemote.transact(25, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createProfileSnapshot(appId, packageName, profileName, classpath);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void destroyProfileSnapshot(String packageName, String profileName) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(profileName);
                    boolean _status = this.mRemote.transact(26, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyProfileSnapshot(packageName, profileName);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void rmPackageDir(String packageDir) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageDir);
                    boolean _status = this.mRemote.transact(27, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().rmPackageDir(packageDir);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void freeCache(String uuid, long targetFreeBytes, long cacheReservedBytes, int flags) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeLong(targetFreeBytes);
                            try {
                                _data.writeLong(cacheReservedBytes);
                                try {
                                    _data.writeInt(flags);
                                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_freeCache, _data, _reply, 0);
                                    if (!_status && Stub.getDefaultImpl() != null) {
                                        Stub.getDefaultImpl().freeCache(uuid, targetFreeBytes, cacheReservedBytes, flags);
                                        _reply.recycle();
                                        _data.recycle();
                                    } else {
                                        _reply.readException();
                                        _reply.recycle();
                                        _data.recycle();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }

            @Override // android.os.IInstalld
            public void linkNativeLibraryDirectory(String uuid, String packageName, String nativeLibPath32, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeString(packageName);
                    _data.writeString(nativeLibPath32);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(29, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().linkNativeLibraryDirectory(uuid, packageName, nativeLibPath32, userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void createOatDir(String oatDir, String instructionSet) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(oatDir);
                    _data.writeString(instructionSet);
                    boolean _status = this.mRemote.transact(30, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().createOatDir(oatDir, instructionSet);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void linkFile(String relativePath, String fromBase, String toBase) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(relativePath);
                    _data.writeString(fromBase);
                    _data.writeString(toBase);
                    boolean _status = this.mRemote.transact(31, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().linkFile(relativePath, fromBase, toBase);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void moveAb(String apkPath, String instructionSet, String outputPath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(apkPath);
                    _data.writeString(instructionSet);
                    _data.writeString(outputPath);
                    boolean _status = this.mRemote.transact(32, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().moveAb(apkPath, instructionSet, outputPath);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void deleteOdex(String apkPath, String instructionSet, String outputPath) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(apkPath);
                    _data.writeString(instructionSet);
                    _data.writeString(outputPath);
                    boolean _status = this.mRemote.transact(33, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().deleteOdex(apkPath, instructionSet, outputPath);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void installApkVerity(String filePath, FileDescriptor verityInput, int contentSize) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(filePath);
                    _data.writeRawFileDescriptor(verityInput);
                    _data.writeInt(contentSize);
                    boolean _status = this.mRemote.transact(34, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().installApkVerity(filePath, verityInput, contentSize);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void assertFsverityRootHashMatches(String filePath, byte[] expectedHash) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(filePath);
                    _data.writeByteArray(expectedHash);
                    boolean _status = this.mRemote.transact(35, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().assertFsverityRootHashMatches(filePath, expectedHash);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean reconcileSecondaryDexFile(String dexPath, String pkgName, int uid, String[] isas, String volume_uuid, int storage_flag) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(dexPath);
                        try {
                            _data.writeString(pkgName);
                            try {
                                _data.writeInt(uid);
                                try {
                                    _data.writeStringArray(isas);
                                    try {
                                        _data.writeString(volume_uuid);
                                        try {
                                            _data.writeInt(storage_flag);
                                            boolean _status = this.mRemote.transact(36, _data, _reply, 0);
                                            if (!_status && Stub.getDefaultImpl() != null) {
                                                boolean zReconcileSecondaryDexFile = Stub.getDefaultImpl().reconcileSecondaryDexFile(dexPath, pkgName, uid, isas, volume_uuid, storage_flag);
                                                _reply.recycle();
                                                _data.recycle();
                                                return zReconcileSecondaryDexFile;
                                            }
                                            _reply.readException();
                                            boolean _status2 = _reply.readInt() != 0;
                                            _reply.recycle();
                                            _data.recycle();
                                            return _status2;
                                        } catch (Throwable th) {
                                            th = th;
                                            _reply.recycle();
                                            _data.recycle();
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }

            @Override // android.os.IInstalld
            public byte[] hashSecondaryDexFile(String dexPath, String pkgName, int uid, String volumeUuid, int storageFlag) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(dexPath);
                    _data.writeString(pkgName);
                    _data.writeInt(uid);
                    _data.writeString(volumeUuid);
                    _data.writeInt(storageFlag);
                    boolean _status = this.mRemote.transact(37, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().hashSecondaryDexFile(dexPath, pkgName, uid, volumeUuid, storageFlag);
                    }
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void invalidateMounts() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(38, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().invalidateMounts();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean isQuotaSupported(String uuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    boolean _status = this.mRemote.transact(39, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isQuotaSupported(uuid);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public boolean prepareAppProfile(String packageName, int userId, int appId, String profileName, String codePath, String dexMetadata) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(packageName);
                        try {
                            _data.writeInt(userId);
                            try {
                                _data.writeInt(appId);
                                try {
                                    _data.writeString(profileName);
                                    try {
                                        _data.writeString(codePath);
                                        try {
                                            _data.writeString(dexMetadata);
                                            boolean _status = this.mRemote.transact(40, _data, _reply, 0);
                                            if (!_status && Stub.getDefaultImpl() != null) {
                                                boolean zPrepareAppProfile = Stub.getDefaultImpl().prepareAppProfile(packageName, userId, appId, profileName, codePath, dexMetadata);
                                                _reply.recycle();
                                                _data.recycle();
                                                return zPrepareAppProfile;
                                            }
                                            _reply.readException();
                                            boolean _status2 = _reply.readInt() != 0;
                                            _reply.recycle();
                                            _data.recycle();
                                            return _status2;
                                        } catch (Throwable th) {
                                            th = th;
                                            _reply.recycle();
                                            _data.recycle();
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }

            @Override // android.os.IInstalld
            public long snapshotAppData(String uuid, String packageName, int userId, int snapshotId, int storageFlags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeString(packageName);
                    _data.writeInt(userId);
                    _data.writeInt(snapshotId);
                    _data.writeInt(storageFlags);
                    boolean _status = this.mRemote.transact(41, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().snapshotAppData(uuid, packageName, userId, snapshotId, storageFlags);
                    }
                    _reply.readException();
                    long _result = _reply.readLong();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void restoreAppDataSnapshot(String uuid, String packageName, int appId, String seInfo, int user, int snapshotId, int storageflags) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeString(packageName);
                            try {
                                _data.writeInt(appId);
                                try {
                                    _data.writeString(seInfo);
                                    try {
                                        _data.writeInt(user);
                                        _data.writeInt(snapshotId);
                                        _data.writeInt(storageflags);
                                        boolean _status = this.mRemote.transact(42, _data, _reply, 0);
                                        if (!_status && Stub.getDefaultImpl() != null) {
                                            Stub.getDefaultImpl().restoreAppDataSnapshot(uuid, packageName, appId, seInfo, user, snapshotId, storageflags);
                                            _reply.recycle();
                                            _data.recycle();
                                        } else {
                                            _reply.readException();
                                            _reply.recycle();
                                            _data.recycle();
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        _reply.recycle();
                                        _data.recycle();
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            }

            @Override // android.os.IInstalld
            public void destroyAppDataSnapshot(String uuid, String packageName, int userId, long ceSnapshotInode, int snapshotId, int storageFlags) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(uuid);
                        try {
                            _data.writeString(packageName);
                            try {
                                _data.writeInt(userId);
                                try {
                                    _data.writeLong(ceSnapshotInode);
                                    _data.writeInt(snapshotId);
                                    _data.writeInt(storageFlags);
                                    boolean _status = this.mRemote.transact(43, _data, _reply, 0);
                                    if (!_status && Stub.getDefaultImpl() != null) {
                                        Stub.getDefaultImpl().destroyAppDataSnapshot(uuid, packageName, userId, ceSnapshotInode, snapshotId, storageFlags);
                                        _reply.recycle();
                                        _data.recycle();
                                    } else {
                                        _reply.readException();
                                        _reply.recycle();
                                        _data.recycle();
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    _reply.recycle();
                                    _data.recycle();
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                _reply.recycle();
                                _data.recycle();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            _reply.recycle();
                            _data.recycle();
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }

            @Override // android.os.IInstalld
            public void destroyCeSnapshotsNotSpecified(String uuid, int userId, int[] retainSnapshotIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeIntArray(retainSnapshotIds);
                    boolean _status = this.mRemote.transact(44, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyCeSnapshotsNotSpecified(uuid, userId, retainSnapshotIds);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void tryMountDataMirror(String volumeUuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volumeUuid);
                    boolean _status = this.mRemote.transact(45, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().tryMountDataMirror(volumeUuid);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void onPrivateVolumeRemoved(String volumeUuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volumeUuid);
                    boolean _status = this.mRemote.transact(46, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onPrivateVolumeRemoved(volumeUuid);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IInstalld
            public void migrateLegacyObbData() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(47, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().migrateLegacyObbData();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IInstalld impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IInstalld getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
