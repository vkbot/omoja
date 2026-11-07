package android.os;

import android.os.incremental.IncrementalFileSystemControlParcel;
import java.io.FileDescriptor;

/* JADX INFO: loaded from: classes.dex */
public interface IVold extends IInterface {
    public static final int ENCRYPTION_FLAG_NO_UI = 4;
    public static final int ENCRYPTION_STATE_ERROR_CORRUPT = -4;
    public static final int ENCRYPTION_STATE_ERROR_INCOMPLETE = -2;
    public static final int ENCRYPTION_STATE_ERROR_INCONSISTENT = -3;
    public static final int ENCRYPTION_STATE_ERROR_UNKNOWN = -1;
    public static final int ENCRYPTION_STATE_NONE = 1;
    public static final int ENCRYPTION_STATE_OK = 0;
    public static final int FSTRIM_FLAG_DEEP_TRIM = 1;
    public static final int MOUNT_FLAG_PRIMARY = 1;
    public static final int MOUNT_FLAG_VISIBLE = 2;
    public static final int PARTITION_TYPE_MIXED = 2;
    public static final int PARTITION_TYPE_PRIVATE = 1;
    public static final int PARTITION_TYPE_PUBLIC = 0;
    public static final int PASSWORD_TYPE_DEFAULT = 1;
    public static final int PASSWORD_TYPE_PASSWORD = 0;
    public static final int PASSWORD_TYPE_PATTERN = 2;
    public static final int PASSWORD_TYPE_PIN = 3;
    public static final int REMOUNT_MODE_ANDROID_WRITABLE = 8;
    public static final int REMOUNT_MODE_DEFAULT = 1;
    public static final int REMOUNT_MODE_FULL = 6;
    public static final int REMOUNT_MODE_INSTALLER = 5;
    public static final int REMOUNT_MODE_LEGACY = 4;
    public static final int REMOUNT_MODE_NONE = 0;
    public static final int REMOUNT_MODE_PASS_THROUGH = 7;
    public static final int REMOUNT_MODE_READ = 2;
    public static final int REMOUNT_MODE_WRITE = 3;
    public static final int STORAGE_FLAG_CE = 2;
    public static final int STORAGE_FLAG_DE = 1;
    public static final int VOLUME_STATE_BAD_REMOVAL = 8;
    public static final int VOLUME_STATE_CHECKING = 1;
    public static final int VOLUME_STATE_EJECTING = 5;
    public static final int VOLUME_STATE_FORMATTING = 4;
    public static final int VOLUME_STATE_MOUNTED = 2;
    public static final int VOLUME_STATE_MOUNTED_READ_ONLY = 3;
    public static final int VOLUME_STATE_REMOVED = 7;
    public static final int VOLUME_STATE_UNMOUNTABLE = 6;
    public static final int VOLUME_STATE_UNMOUNTED = 0;
    public static final int VOLUME_TYPE_ASEC = 3;
    public static final int VOLUME_TYPE_EMULATED = 2;
    public static final int VOLUME_TYPE_OBB = 4;
    public static final int VOLUME_TYPE_PRIVATE = 1;
    public static final int VOLUME_TYPE_PUBLIC = 0;
    public static final int VOLUME_TYPE_STUB = 5;

    void abortChanges(String str, boolean z) throws RemoteException;

    void abortFuse() throws RemoteException;

    void abortIdleMaint(IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void addAppIds(String[] strArr, int[] iArr) throws RemoteException;

    void addSandboxIds(int[] iArr, String[] strArr) throws RemoteException;

    void addUserKeyAuth(int i, int i2, String str, String str2) throws RemoteException;

    void benchmark(String str, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void bindMount(String str, String str2) throws RemoteException;

    void checkEncryption(String str) throws RemoteException;

    void clearUserKeyAuth(int i, int i2, String str, String str2) throws RemoteException;

    void commitChanges() throws RemoteException;

    String createObb(String str, String str2, int i) throws RemoteException;

    String createStubVolume(String str, String str2, String str3, String str4, String str5, int i) throws RemoteException;

    void createUserKey(int i, int i2, boolean z) throws RemoteException;

    void destroyObb(String str) throws RemoteException;

    void destroySandboxForApp(String str, String str2, int i) throws RemoteException;

    void destroyStubVolume(String str) throws RemoteException;

    void destroyUserKey(int i) throws RemoteException;

    void destroyUserStorage(String str, int i, int i2) throws RemoteException;

    void encryptFstab(String str, String str2) throws RemoteException;

    void fbeEnable() throws RemoteException;

    void fdeChangePassword(int i, String str) throws RemoteException;

    void fdeCheckPassword(String str) throws RemoteException;

    void fdeClearPassword() throws RemoteException;

    int fdeComplete() throws RemoteException;

    void fdeEnable(int i, String str, int i2) throws RemoteException;

    String fdeGetField(String str) throws RemoteException;

    String fdeGetPassword() throws RemoteException;

    int fdeGetPasswordType() throws RemoteException;

    void fdeRestart() throws RemoteException;

    void fdeSetField(String str, String str2) throws RemoteException;

    void fdeVerifyPassword(String str) throws RemoteException;

    void fixateNewestUserKeyAuth(int i) throws RemoteException;

    void fixupAppDir(String str, int i) throws RemoteException;

    void forgetPartition(String str, String str2) throws RemoteException;

    void format(String str, String str2) throws RemoteException;

    void fstrim(int i, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    boolean incFsEnabled() throws RemoteException;

    void initUser0() throws RemoteException;

    boolean isCheckpointing() throws RemoteException;

    boolean isConvertibleToFbe() throws RemoteException;

    void lockUserKey(int i) throws RemoteException;

    void markBootAttempt() throws RemoteException;

    void monitor() throws RemoteException;

    void mount(String str, int i, int i2, IVoldMountCallback iVoldMountCallback) throws RemoteException;

    FileDescriptor mountAppFuse(int i, int i2) throws RemoteException;

    void mountDefaultEncrypted() throws RemoteException;

    void mountFstab(String str, String str2) throws RemoteException;

    IncrementalFileSystemControlParcel mountIncFs(String str, String str2, int i) throws RemoteException;

    void moveStorage(String str, String str2, IVoldTaskListener iVoldTaskListener) throws RemoteException;

    boolean needsCheckpoint() throws RemoteException;

    boolean needsRollback() throws RemoteException;

    void onSecureKeyguardStateChanged(boolean z) throws RemoteException;

    void onUserAdded(int i, int i2) throws RemoteException;

    void onUserRemoved(int i) throws RemoteException;

    void onUserStarted(int i) throws RemoteException;

    void onUserStopped(int i) throws RemoteException;

    FileDescriptor openAppFuseFile(int i, int i2, int i3, int i4) throws RemoteException;

    void partition(String str, int i, int i2) throws RemoteException;

    void prepareCheckpoint() throws RemoteException;

    void prepareSandboxForApp(String str, int i, String str2, int i2) throws RemoteException;

    void prepareUserStorage(String str, int i, int i2, int i3) throws RemoteException;

    void remountAppStorageDirs(int i, int i2, String[] strArr) throws RemoteException;

    void remountUid(int i, int i2) throws RemoteException;

    void reset() throws RemoteException;

    void resetCheckpoint() throws RemoteException;

    void restoreCheckpoint(String str) throws RemoteException;

    void restoreCheckpointPart(String str, int i) throws RemoteException;

    void runIdleMaint(IVoldTaskListener iVoldTaskListener) throws RemoteException;

    void setIncFsMountOptions(IncrementalFileSystemControlParcel incrementalFileSystemControlParcel, boolean z) throws RemoteException;

    void setListener(IVoldListener iVoldListener) throws RemoteException;

    void setupAppDir(String str, int i) throws RemoteException;

    void shutdown() throws RemoteException;

    void startCheckpoint(int i) throws RemoteException;

    boolean supportsBlockCheckpoint() throws RemoteException;

    boolean supportsCheckpoint() throws RemoteException;

    boolean supportsFileCheckpoint() throws RemoteException;

    void unlockUserKey(int i, int i2, String str, String str2) throws RemoteException;

    void unmount(String str) throws RemoteException;

    void unmountAppFuse(int i, int i2) throws RemoteException;

    void unmountIncFs(String str) throws RemoteException;

    public static class Default implements IVold {
        @Override // android.os.IVold
        public void setListener(IVoldListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void abortFuse() throws RemoteException {
        }

        @Override // android.os.IVold
        public void monitor() throws RemoteException {
        }

        @Override // android.os.IVold
        public void reset() throws RemoteException {
        }

        @Override // android.os.IVold
        public void shutdown() throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserAdded(int userId, int userSerial) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserRemoved(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserStarted(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onUserStopped(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void addAppIds(String[] packageNames, int[] appIds) throws RemoteException {
        }

        @Override // android.os.IVold
        public void addSandboxIds(int[] appIds, String[] sandboxIds) throws RemoteException {
        }

        @Override // android.os.IVold
        public void onSecureKeyguardStateChanged(boolean isShowing) throws RemoteException {
        }

        @Override // android.os.IVold
        public void partition(String diskId, int partitionType, int ratio) throws RemoteException {
        }

        @Override // android.os.IVold
        public void forgetPartition(String partGuid, String fsUuid) throws RemoteException {
        }

        @Override // android.os.IVold
        public void mount(String volId, int mountFlags, int mountUserId, IVoldMountCallback callback) throws RemoteException {
        }

        @Override // android.os.IVold
        public void unmount(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void format(String volId, String fsType) throws RemoteException {
        }

        @Override // android.os.IVold
        public void benchmark(String volId, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void checkEncryption(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void moveStorage(String fromVolId, String toVolId, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void remountUid(int uid, int remountMode) throws RemoteException {
        }

        @Override // android.os.IVold
        public void remountAppStorageDirs(int uid, int pid, String[] packageNames) throws RemoteException {
        }

        @Override // android.os.IVold
        public void setupAppDir(String path, int appUid) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fixupAppDir(String path, int appUid) throws RemoteException {
        }

        @Override // android.os.IVold
        public String createObb(String sourcePath, String sourceKey, int ownerGid) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void destroyObb(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fstrim(int fstrimFlags, IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void runIdleMaint(IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public void abortIdleMaint(IVoldTaskListener listener) throws RemoteException {
        }

        @Override // android.os.IVold
        public FileDescriptor mountAppFuse(int uid, int mountId) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void unmountAppFuse(int uid, int mountId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fdeCheckPassword(String password) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fdeRestart() throws RemoteException {
        }

        @Override // android.os.IVold
        public int fdeComplete() throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public void fdeEnable(int passwordType, String password, int encryptionFlags) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fdeChangePassword(int passwordType, String password) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fdeVerifyPassword(String password) throws RemoteException {
        }

        @Override // android.os.IVold
        public String fdeGetField(String key) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void fdeSetField(String key, String value) throws RemoteException {
        }

        @Override // android.os.IVold
        public int fdeGetPasswordType() throws RemoteException {
            return 0;
        }

        @Override // android.os.IVold
        public String fdeGetPassword() throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void fdeClearPassword() throws RemoteException {
        }

        @Override // android.os.IVold
        public void fbeEnable() throws RemoteException {
        }

        @Override // android.os.IVold
        public void mountDefaultEncrypted() throws RemoteException {
        }

        @Override // android.os.IVold
        public void initUser0() throws RemoteException {
        }

        @Override // android.os.IVold
        public boolean isConvertibleToFbe() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public void mountFstab(String blkDevice, String mountPoint) throws RemoteException {
        }

        @Override // android.os.IVold
        public void encryptFstab(String blkDevice, String mountPoint) throws RemoteException {
        }

        @Override // android.os.IVold
        public void createUserKey(int userId, int userSerial, boolean ephemeral) throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroyUserKey(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void addUserKeyAuth(int userId, int userSerial, String token, String secret) throws RemoteException {
        }

        @Override // android.os.IVold
        public void clearUserKeyAuth(int userId, int userSerial, String token, String secret) throws RemoteException {
        }

        @Override // android.os.IVold
        public void fixateNewestUserKeyAuth(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void unlockUserKey(int userId, int userSerial, String token, String secret) throws RemoteException {
        }

        @Override // android.os.IVold
        public void lockUserKey(int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void prepareUserStorage(String uuid, int userId, int userSerial, int storageFlags) throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroyUserStorage(String uuid, int userId, int storageFlags) throws RemoteException {
        }

        @Override // android.os.IVold
        public void prepareSandboxForApp(String packageName, int appId, String sandboxId, int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void destroySandboxForApp(String packageName, String sandboxId, int userId) throws RemoteException {
        }

        @Override // android.os.IVold
        public void startCheckpoint(int retry) throws RemoteException {
        }

        @Override // android.os.IVold
        public boolean needsCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean needsRollback() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean isCheckpointing() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public void abortChanges(String device, boolean retry) throws RemoteException {
        }

        @Override // android.os.IVold
        public void commitChanges() throws RemoteException {
        }

        @Override // android.os.IVold
        public void prepareCheckpoint() throws RemoteException {
        }

        @Override // android.os.IVold
        public void restoreCheckpoint(String device) throws RemoteException {
        }

        @Override // android.os.IVold
        public void restoreCheckpointPart(String device, int count) throws RemoteException {
        }

        @Override // android.os.IVold
        public void markBootAttempt() throws RemoteException {
        }

        @Override // android.os.IVold
        public boolean supportsCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean supportsBlockCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public boolean supportsFileCheckpoint() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public void resetCheckpoint() throws RemoteException {
        }

        @Override // android.os.IVold
        public String createStubVolume(String sourcePath, String mountPath, String fsType, String fsUuid, String fsLabel, int flags) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void destroyStubVolume(String volId) throws RemoteException {
        }

        @Override // android.os.IVold
        public FileDescriptor openAppFuseFile(int uid, int mountId, int fileId, int flags) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public boolean incFsEnabled() throws RemoteException {
            return false;
        }

        @Override // android.os.IVold
        public IncrementalFileSystemControlParcel mountIncFs(String backingPath, String targetDir, int flags) throws RemoteException {
            return null;
        }

        @Override // android.os.IVold
        public void unmountIncFs(String dir) throws RemoteException {
        }

        @Override // android.os.IVold
        public void setIncFsMountOptions(IncrementalFileSystemControlParcel control, boolean enableReadLogs) throws RemoteException {
        }

        @Override // android.os.IVold
        public void bindMount(String sourceDir, String targetDir) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IVold {
        private static final String DESCRIPTOR = "android.os.IVold";
        static final int TRANSACTION_abortChanges = 64;
        static final int TRANSACTION_abortFuse = 2;
        static final int TRANSACTION_abortIdleMaint = 29;
        static final int TRANSACTION_addAppIds = 10;
        static final int TRANSACTION_addSandboxIds = 11;
        static final int TRANSACTION_addUserKeyAuth = 51;
        static final int TRANSACTION_benchmark = 18;
        static final int TRANSACTION_bindMount = 81;
        static final int TRANSACTION_checkEncryption = 19;
        static final int TRANSACTION_clearUserKeyAuth = 52;
        static final int TRANSACTION_commitChanges = 65;
        static final int TRANSACTION_createObb = 25;
        static final int TRANSACTION_createStubVolume = 74;
        static final int TRANSACTION_createUserKey = 49;
        static final int TRANSACTION_destroyObb = 26;
        static final int TRANSACTION_destroySandboxForApp = 59;
        static final int TRANSACTION_destroyStubVolume = 75;
        static final int TRANSACTION_destroyUserKey = 50;
        static final int TRANSACTION_destroyUserStorage = 57;
        static final int TRANSACTION_encryptFstab = 48;
        static final int TRANSACTION_fbeEnable = 43;
        static final int TRANSACTION_fdeChangePassword = 36;
        static final int TRANSACTION_fdeCheckPassword = 32;
        static final int TRANSACTION_fdeClearPassword = 42;
        static final int TRANSACTION_fdeComplete = 34;
        static final int TRANSACTION_fdeEnable = 35;
        static final int TRANSACTION_fdeGetField = 38;
        static final int TRANSACTION_fdeGetPassword = 41;
        static final int TRANSACTION_fdeGetPasswordType = 40;
        static final int TRANSACTION_fdeRestart = 33;
        static final int TRANSACTION_fdeSetField = 39;
        static final int TRANSACTION_fdeVerifyPassword = 37;
        static final int TRANSACTION_fixateNewestUserKeyAuth = 53;
        static final int TRANSACTION_fixupAppDir = 24;
        static final int TRANSACTION_forgetPartition = 14;
        static final int TRANSACTION_format = 17;
        static final int TRANSACTION_fstrim = 27;
        static final int TRANSACTION_incFsEnabled = 77;
        static final int TRANSACTION_initUser0 = 45;
        static final int TRANSACTION_isCheckpointing = 63;
        static final int TRANSACTION_isConvertibleToFbe = 46;
        static final int TRANSACTION_lockUserKey = 55;
        static final int TRANSACTION_markBootAttempt = 69;
        static final int TRANSACTION_monitor = 3;
        static final int TRANSACTION_mount = 15;
        static final int TRANSACTION_mountAppFuse = 30;
        static final int TRANSACTION_mountDefaultEncrypted = 44;
        static final int TRANSACTION_mountFstab = 47;
        static final int TRANSACTION_mountIncFs = 78;
        static final int TRANSACTION_moveStorage = 20;
        static final int TRANSACTION_needsCheckpoint = 61;
        static final int TRANSACTION_needsRollback = 62;
        static final int TRANSACTION_onSecureKeyguardStateChanged = 12;
        static final int TRANSACTION_onUserAdded = 6;
        static final int TRANSACTION_onUserRemoved = 7;
        static final int TRANSACTION_onUserStarted = 8;
        static final int TRANSACTION_onUserStopped = 9;
        static final int TRANSACTION_openAppFuseFile = 76;
        static final int TRANSACTION_partition = 13;
        static final int TRANSACTION_prepareCheckpoint = 66;
        static final int TRANSACTION_prepareSandboxForApp = 58;
        static final int TRANSACTION_prepareUserStorage = 56;
        static final int TRANSACTION_remountAppStorageDirs = 22;
        static final int TRANSACTION_remountUid = 21;
        static final int TRANSACTION_reset = 4;
        static final int TRANSACTION_resetCheckpoint = 73;
        static final int TRANSACTION_restoreCheckpoint = 67;
        static final int TRANSACTION_restoreCheckpointPart = 68;
        static final int TRANSACTION_runIdleMaint = 28;
        static final int TRANSACTION_setIncFsMountOptions = 80;
        static final int TRANSACTION_setListener = 1;
        static final int TRANSACTION_setupAppDir = 23;
        static final int TRANSACTION_shutdown = 5;
        static final int TRANSACTION_startCheckpoint = 60;
        static final int TRANSACTION_supportsBlockCheckpoint = 71;
        static final int TRANSACTION_supportsCheckpoint = 70;
        static final int TRANSACTION_supportsFileCheckpoint = 72;
        static final int TRANSACTION_unlockUserKey = 54;
        static final int TRANSACTION_unmount = 16;
        static final int TRANSACTION_unmountAppFuse = 31;
        static final int TRANSACTION_unmountIncFs = 79;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVold asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IVold)) {
                return (IVold) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            IncrementalFileSystemControlParcel incrementalFileSystemControlParcel;
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    setListener(IVoldListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    abortFuse();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    monitor();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    reset();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    shutdown();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUserAdded(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUserRemoved(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUserStarted(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUserStopped(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    addAppIds(parcel.createStringArray(), parcel.createIntArray());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    addSandboxIds(parcel.createIntArray(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSecureKeyguardStateChanged(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    partition(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    forgetPartition(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    mount(parcel.readString(), parcel.readInt(), parcel.readInt(), IVoldMountCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unmount(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    format(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    benchmark(parcel.readString(), IVoldTaskListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    checkEncryption(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    moveStorage(parcel.readString(), parcel.readString(), IVoldTaskListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    remountUid(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    remountAppStorageDirs(parcel.readInt(), parcel.readInt(), parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    setupAppDir(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    fixupAppDir(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strCreateObb = createObb(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strCreateObb);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyObb(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    fstrim(parcel.readInt(), IVoldTaskListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_runIdleMaint /* 28 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    runIdleMaint(IVoldTaskListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    abortIdleMaint(IVoldTaskListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    FileDescriptor fileDescriptorMountAppFuse = mountAppFuse(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeRawFileDescriptor(fileDescriptorMountAppFuse);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    unmountAppFuse(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeCheckPassword(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeRestart();
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFdeComplete = fdeComplete();
                    parcel2.writeNoException();
                    parcel2.writeInt(iFdeComplete);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeEnable(parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeChangePassword(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeVerifyPassword(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strFdeGetField = fdeGetField(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strFdeGetField);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeSetField(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iFdeGetPasswordType = fdeGetPasswordType();
                    parcel2.writeNoException();
                    parcel2.writeInt(iFdeGetPasswordType);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strFdeGetPassword = fdeGetPassword();
                    parcel2.writeNoException();
                    parcel2.writeString(strFdeGetPassword);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    fdeClearPassword();
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    fbeEnable();
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    mountDefaultEncrypted();
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    initUser0();
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsConvertibleToFbe = isConvertibleToFbe();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsConvertibleToFbe ? 1 : 0);
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    mountFstab(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    encryptFstab(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    createUserKey(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyUserKey(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    addUserKeyAuth(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    clearUserKeyAuth(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    fixateNewestUserKeyAuth(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    unlockUserKey(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    lockUserKey(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareUserStorage(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_destroyUserStorage /* 57 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyUserStorage(parcel.readString(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareSandboxForApp(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case TRANSACTION_destroySandboxForApp /* 59 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroySandboxForApp(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    startCheckpoint(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNeedsCheckpoint = needsCheckpoint();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNeedsCheckpoint ? 1 : 0);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNeedsRollback = needsRollback();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNeedsRollback ? 1 : 0);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCheckpointing = isCheckpointing();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCheckpointing ? 1 : 0);
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    abortChanges(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    commitChanges();
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareCheckpoint();
                    parcel2.writeNoException();
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreCheckpoint(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreCheckpointPart(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    markBootAttempt();
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupportsCheckpoint = supportsCheckpoint();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupportsCheckpoint ? 1 : 0);
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupportsBlockCheckpoint = supportsBlockCheckpoint();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupportsBlockCheckpoint ? 1 : 0);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSupportsFileCheckpoint = supportsFileCheckpoint();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSupportsFileCheckpoint ? 1 : 0);
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetCheckpoint();
                    parcel2.writeNoException();
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strCreateStubVolume = createStubVolume(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strCreateStubVolume);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    destroyStubVolume(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    FileDescriptor fileDescriptorOpenAppFuseFile = openAppFuseFile(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeRawFileDescriptor(fileDescriptorOpenAppFuseFile);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIncFsEnabled = incFsEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIncFsEnabled ? 1 : 0);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    IncrementalFileSystemControlParcel incrementalFileSystemControlParcelMountIncFs = mountIncFs(parcel.readString(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    if (incrementalFileSystemControlParcelMountIncFs != null) {
                        parcel2.writeInt(1);
                        incrementalFileSystemControlParcelMountIncFs.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    unmountIncFs(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        incrementalFileSystemControlParcel = (IncrementalFileSystemControlParcel) IncrementalFileSystemControlParcel.CREATOR.createFromParcel(parcel);
                    } else {
                        incrementalFileSystemControlParcel = null;
                    }
                    setIncFsMountOptions(incrementalFileSystemControlParcel, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    bindMount(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IVold {
            public static IVold sDefaultImpl;
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

            @Override // android.os.IVold
            public void setListener(IVoldListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setListener(listener);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void abortFuse() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().abortFuse();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void monitor() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().monitor();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void reset() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().reset();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void shutdown() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().shutdown();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserAdded(int userId, int userSerial) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    boolean _status = this.mRemote.transact(6, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUserAdded(userId, userSerial);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserRemoved(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(7, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUserRemoved(userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserStarted(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUserStarted(userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onUserStopped(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onUserStopped(userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void addAppIds(String[] packageNames, int[] appIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStringArray(packageNames);
                    _data.writeIntArray(appIds);
                    boolean _status = this.mRemote.transact(10, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addAppIds(packageNames, appIds);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void addSandboxIds(int[] appIds, String[] sandboxIds) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(appIds);
                    _data.writeStringArray(sandboxIds);
                    boolean _status = this.mRemote.transact(11, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addSandboxIds(appIds, sandboxIds);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void onSecureKeyguardStateChanged(boolean isShowing) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(isShowing ? 1 : 0);
                    boolean _status = this.mRemote.transact(12, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSecureKeyguardStateChanged(isShowing);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void partition(String diskId, int partitionType, int ratio) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(diskId);
                    _data.writeInt(partitionType);
                    _data.writeInt(ratio);
                    boolean _status = this.mRemote.transact(13, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().partition(diskId, partitionType, ratio);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void forgetPartition(String partGuid, String fsUuid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(partGuid);
                    _data.writeString(fsUuid);
                    boolean _status = this.mRemote.transact(14, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().forgetPartition(partGuid, fsUuid);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void mount(String volId, int mountFlags, int mountUserId, IVoldMountCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeInt(mountFlags);
                    _data.writeInt(mountUserId);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    boolean _status = this.mRemote.transact(15, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().mount(volId, mountFlags, mountUserId, callback);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmount(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    boolean _status = this.mRemote.transact(16, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unmount(volId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void format(String volId, String fsType) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeString(fsType);
                    boolean _status = this.mRemote.transact(17, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().format(volId, fsType);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void benchmark(String volId, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(18, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().benchmark(volId, listener);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void checkEncryption(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    boolean _status = this.mRemote.transact(19, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().checkEncryption(volId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void moveStorage(String fromVolId, String toVolId, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(fromVolId);
                    _data.writeString(toVolId);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(20, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().moveStorage(fromVolId, toVolId, listener);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void remountUid(int uid, int remountMode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(remountMode);
                    boolean _status = this.mRemote.transact(21, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().remountUid(uid, remountMode);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void remountAppStorageDirs(int uid, int pid, String[] packageNames) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(pid);
                    _data.writeStringArray(packageNames);
                    boolean _status = this.mRemote.transact(22, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().remountAppStorageDirs(uid, pid, packageNames);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void setupAppDir(String path, int appUid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(appUid);
                    boolean _status = this.mRemote.transact(23, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setupAppDir(path, appUid);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fixupAppDir(String path, int appUid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(path);
                    _data.writeInt(appUid);
                    boolean _status = this.mRemote.transact(24, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fixupAppDir(path, appUid);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String createObb(String sourcePath, String sourceKey, int ownerGid) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sourcePath);
                    _data.writeString(sourceKey);
                    _data.writeInt(ownerGid);
                    boolean _status = this.mRemote.transact(25, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createObb(sourcePath, sourceKey, ownerGid);
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyObb(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    boolean _status = this.mRemote.transact(26, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyObb(volId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fstrim(int fstrimFlags, IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(fstrimFlags);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(27, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fstrim(fstrimFlags, listener);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void runIdleMaint(IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_runIdleMaint, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().runIdleMaint(listener);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void abortIdleMaint(IVoldTaskListener listener) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    boolean _status = this.mRemote.transact(29, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().abortIdleMaint(listener);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public FileDescriptor mountAppFuse(int uid, int mountId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(mountId);
                    boolean _status = this.mRemote.transact(30, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().mountAppFuse(uid, mountId);
                    }
                    _reply.readException();
                    FileDescriptor _result = _reply.readRawFileDescriptor();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmountAppFuse(int uid, int mountId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(mountId);
                    boolean _status = this.mRemote.transact(31, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unmountAppFuse(uid, mountId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeCheckPassword(String password) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(password);
                    boolean _status = this.mRemote.transact(32, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeCheckPassword(password);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeRestart() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(33, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeRestart();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int fdeComplete() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(34, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().fdeComplete();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeEnable(int passwordType, String password, int encryptionFlags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(passwordType);
                    _data.writeString(password);
                    _data.writeInt(encryptionFlags);
                    boolean _status = this.mRemote.transact(35, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeEnable(passwordType, password, encryptionFlags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeChangePassword(int passwordType, String password) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(passwordType);
                    _data.writeString(password);
                    boolean _status = this.mRemote.transact(36, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeChangePassword(passwordType, password);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeVerifyPassword(String password) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(password);
                    boolean _status = this.mRemote.transact(37, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeVerifyPassword(password);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String fdeGetField(String key) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(key);
                    boolean _status = this.mRemote.transact(38, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().fdeGetField(key);
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeSetField(String key, String value) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(key);
                    _data.writeString(value);
                    boolean _status = this.mRemote.transact(39, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeSetField(key, value);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public int fdeGetPasswordType() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(40, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().fdeGetPasswordType();
                    }
                    _reply.readException();
                    int _result = _reply.readInt();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String fdeGetPassword() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(41, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().fdeGetPassword();
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fdeClearPassword() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(42, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fdeClearPassword();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fbeEnable() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(43, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fbeEnable();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void mountDefaultEncrypted() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(44, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().mountDefaultEncrypted();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void initUser0() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(45, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().initUser0();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean isConvertibleToFbe() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(46, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isConvertibleToFbe();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void mountFstab(String blkDevice, String mountPoint) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(blkDevice);
                    _data.writeString(mountPoint);
                    boolean _status = this.mRemote.transact(47, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().mountFstab(blkDevice, mountPoint);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void encryptFstab(String blkDevice, String mountPoint) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(blkDevice);
                    _data.writeString(mountPoint);
                    boolean _status = this.mRemote.transact(48, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().encryptFstab(blkDevice, mountPoint);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void createUserKey(int userId, int userSerial, boolean ephemeral) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeInt(ephemeral ? 1 : 0);
                    boolean _status = this.mRemote.transact(49, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().createUserKey(userId, userSerial, ephemeral);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyUserKey(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(50, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyUserKey(userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void addUserKeyAuth(int userId, int userSerial, String token, String secret) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(token);
                    _data.writeString(secret);
                    boolean _status = this.mRemote.transact(51, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().addUserKeyAuth(userId, userSerial, token, secret);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void clearUserKeyAuth(int userId, int userSerial, String token, String secret) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(token);
                    _data.writeString(secret);
                    boolean _status = this.mRemote.transact(52, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().clearUserKeyAuth(userId, userSerial, token, secret);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void fixateNewestUserKeyAuth(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(53, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().fixateNewestUserKeyAuth(userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unlockUserKey(int userId, int userSerial, String token, String secret) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeString(token);
                    _data.writeString(secret);
                    boolean _status = this.mRemote.transact(54, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unlockUserKey(userId, userSerial, token, secret);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void lockUserKey(int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(55, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().lockUserKey(userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void prepareUserStorage(String uuid, int userId, int userSerial, int storageFlags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(userSerial);
                    _data.writeInt(storageFlags);
                    boolean _status = this.mRemote.transact(56, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().prepareUserStorage(uuid, userId, userSerial, storageFlags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroyUserStorage(String uuid, int userId, int storageFlags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(uuid);
                    _data.writeInt(userId);
                    _data.writeInt(storageFlags);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_destroyUserStorage, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyUserStorage(uuid, userId, storageFlags);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void prepareSandboxForApp(String packageName, int appId, String sandboxId, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeInt(appId);
                    _data.writeString(sandboxId);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(58, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().prepareSandboxForApp(packageName, appId, sandboxId, userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void destroySandboxForApp(String packageName, String sandboxId, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(packageName);
                    _data.writeString(sandboxId);
                    _data.writeInt(userId);
                    boolean _status = this.mRemote.transact(Stub.TRANSACTION_destroySandboxForApp, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroySandboxForApp(packageName, sandboxId, userId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void startCheckpoint(int retry) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(retry);
                    boolean _status = this.mRemote.transact(60, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().startCheckpoint(retry);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean needsCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(61, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().needsCheckpoint();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean needsRollback() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(62, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().needsRollback();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean isCheckpointing() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(63, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isCheckpointing();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void abortChanges(String device, boolean retry) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    _data.writeInt(retry ? 1 : 0);
                    boolean _status = this.mRemote.transact(64, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().abortChanges(device, retry);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void commitChanges() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(65, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().commitChanges();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void prepareCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(66, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().prepareCheckpoint();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void restoreCheckpoint(String device) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    boolean _status = this.mRemote.transact(67, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().restoreCheckpoint(device);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void restoreCheckpointPart(String device, int count) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(device);
                    _data.writeInt(count);
                    boolean _status = this.mRemote.transact(68, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().restoreCheckpointPart(device, count);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void markBootAttempt() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(69, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().markBootAttempt();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean supportsCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(70, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().supportsCheckpoint();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean supportsBlockCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(71, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().supportsBlockCheckpoint();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean supportsFileCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(72, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().supportsFileCheckpoint();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void resetCheckpoint() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(73, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().resetCheckpoint();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public String createStubVolume(String sourcePath, String mountPath, String fsType, String fsUuid, String fsLabel, int flags) throws Throwable {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        _data.writeString(sourcePath);
                        try {
                            _data.writeString(mountPath);
                            try {
                                _data.writeString(fsType);
                                try {
                                    _data.writeString(fsUuid);
                                    try {
                                        _data.writeString(fsLabel);
                                        try {
                                            _data.writeInt(flags);
                                            boolean _status = this.mRemote.transact(74, _data, _reply, 0);
                                            if (!_status && Stub.getDefaultImpl() != null) {
                                                String strCreateStubVolume = Stub.getDefaultImpl().createStubVolume(sourcePath, mountPath, fsType, fsUuid, fsLabel, flags);
                                                _reply.recycle();
                                                _data.recycle();
                                                return strCreateStubVolume;
                                            }
                                            _reply.readException();
                                            String _result = _reply.readString();
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
                        _reply.recycle();
                        _data.recycle();
                        throw th;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }

            @Override // android.os.IVold
            public void destroyStubVolume(String volId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(volId);
                    boolean _status = this.mRemote.transact(75, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().destroyStubVolume(volId);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public FileDescriptor openAppFuseFile(int uid, int mountId, int fileId, int flags) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(uid);
                    _data.writeInt(mountId);
                    _data.writeInt(fileId);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(76, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openAppFuseFile(uid, mountId, fileId, flags);
                    }
                    _reply.readException();
                    FileDescriptor _result = _reply.readRawFileDescriptor();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public boolean incFsEnabled() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(77, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().incFsEnabled();
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public IncrementalFileSystemControlParcel mountIncFs(String backingPath, String targetDir, int flags) throws RemoteException {
                IncrementalFileSystemControlParcel _result;
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(backingPath);
                    _data.writeString(targetDir);
                    _data.writeInt(flags);
                    boolean _status = this.mRemote.transact(78, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().mountIncFs(backingPath, targetDir, flags);
                    }
                    _reply.readException();
                    if (_reply.readInt() != 0) {
                        _result = (IncrementalFileSystemControlParcel) IncrementalFileSystemControlParcel.CREATOR.createFromParcel(_reply);
                    } else {
                        _result = null;
                    }
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void unmountIncFs(String dir) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(dir);
                    boolean _status = this.mRemote.transact(79, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unmountIncFs(dir);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void setIncFsMountOptions(IncrementalFileSystemControlParcel control, boolean enableReadLogs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i = 1;
                    if (control != null) {
                        _data.writeInt(1);
                        control.writeToParcel(_data, 0);
                    } else {
                        _data.writeInt(0);
                    }
                    if (!enableReadLogs) {
                        i = 0;
                    }
                    _data.writeInt(i);
                    boolean _status = this.mRemote.transact(80, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setIncFsMountOptions(control, enableReadLogs);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.os.IVold
            public void bindMount(String sourceDir, String targetDir) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(sourceDir);
                    _data.writeString(targetDir);
                    boolean _status = this.mRemote.transact(81, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().bindMount(sourceDir, targetDir);
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IVold impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IVold getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
