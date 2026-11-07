package com.android.server.pm;

import android.R;
import android.app.BroadcastOptions;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.ComponentName;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.DataLoaderManager;
import android.content.pm.DataLoaderParams;
import android.content.pm.DataLoaderParamsParcel;
import android.content.pm.FileSystemControlParcel;
import android.content.pm.IDataLoader;
import android.content.pm.IDataLoaderStatusListener;
import android.content.pm.IPackageInstallObserver2;
import android.content.pm.IPackageInstallerSession;
import android.content.pm.IPackageInstallerSessionFileSystemConnector;
import android.content.pm.InstallationFile;
import android.content.pm.InstallationFileParcel;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackageParser;
import android.content.pm.dex.DexMetadataHelper;
import android.content.pm.parsing.ApkLiteParseUtils;
import android.content.pm.parsing.result.ParseResult;
import android.content.pm.parsing.result.ParseTypeImpl;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.audio.common.V2_0.AudioChannelMask;
import android.hardware.audio.common.V2_0.AudioFormat;
import android.hardware.biometrics.fingerprint.V2_1.RequestStatus;
import android.os.Binder;
import android.os.Bundle;
import android.os.FileBridge;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.ParcelableException;
import android.os.RemoteException;
import android.os.RevocableFileDescriptor;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.incremental.IStorageHealthListener;
import android.os.incremental.IncrementalFileStorages;
import android.os.incremental.IncrementalManager;
import android.os.incremental.StorageHealthCheckParams;
import android.system.ErrnoException;
import android.system.Int64Ref;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.EventLog;
import android.util.ExceptionUtils;
import android.util.MathUtils;
import android.util.Slog;
import android.util.SparseIntArray;
import android.util.apk.ApkSignatureVerifier;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.os.SomeArgs;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.IndentingPrintWriter;
import com.android.internal.util.XmlUtils;
import com.android.server.LocalServices;
import com.android.server.pm.dex.DexManager;
import com.android.server.pm.parsing.pkg.AndroidPackage;
import com.android.server.security.VerityUtils;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import libcore.io.IoUtils;
import libcore.util.EmptyArray;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class PackageInstallerSession extends IPackageInstallerSession.Stub {
    private static final String ATTR_ABI_OVERRIDE = "abiOverride";

    @Deprecated
    private static final String ATTR_APP_ICON = "appIcon";
    private static final String ATTR_APP_LABEL = "appLabel";
    private static final String ATTR_APP_PACKAGE_NAME = "appPackageName";
    private static final String ATTR_COMMITTED = "committed";
    private static final String ATTR_CREATED_MILLIS = "createdMillis";
    private static final String ATTR_DATALOADER_ARGUMENTS = "dataLoaderArguments";
    private static final String ATTR_DATALOADER_CLASS_NAME = "dataLoaderClassName";
    private static final String ATTR_DATALOADER_PACKAGE_NAME = "dataLoaderPackageName";
    private static final String ATTR_DATALOADER_TYPE = "dataLoaderType";
    private static final String ATTR_DESTROYED = "destroyed";
    private static final String ATTR_INITIATING_PACKAGE_NAME = "installInitiatingPackageName";
    private static final String ATTR_INSTALLER_PACKAGE_NAME = "installerPackageName";
    private static final String ATTR_INSTALLER_UID = "installerUid";
    private static final String ATTR_INSTALL_FLAGS = "installFlags";
    private static final String ATTR_INSTALL_LOCATION = "installLocation";
    private static final String ATTR_INSTALL_REASON = "installRason";
    private static final String ATTR_IS_APPLIED = "isApplied";
    private static final String ATTR_IS_DATALOADER = "isDataLoader";
    private static final String ATTR_IS_FAILED = "isFailed";
    private static final String ATTR_IS_READY = "isReady";
    private static final String ATTR_LENGTH_BYTES = "lengthBytes";
    private static final String ATTR_LOCATION = "location";
    private static final String ATTR_METADATA = "metadata";
    private static final String ATTR_MODE = "mode";
    private static final String ATTR_MULTI_PACKAGE = "multiPackage";
    private static final String ATTR_NAME = "name";
    private static final String ATTR_ORIGINATING_PACKAGE_NAME = "installOriginatingPackageName";
    private static final String ATTR_ORIGINATING_UID = "originatingUid";
    private static final String ATTR_ORIGINATING_URI = "originatingUri";
    private static final String ATTR_PARENT_SESSION_ID = "parentSessionId";
    private static final String ATTR_PREPARED = "prepared";
    private static final String ATTR_REFERRER_URI = "referrerUri";
    private static final String ATTR_SEALED = "sealed";
    private static final String ATTR_SESSION_ID = "sessionId";
    private static final String ATTR_SESSION_STAGE_CID = "sessionStageCid";
    private static final String ATTR_SESSION_STAGE_DIR = "sessionStageDir";
    private static final String ATTR_SIGNATURE = "signature";
    private static final String ATTR_SIZE_BYTES = "sizeBytes";
    private static final String ATTR_STAGED_SESSION = "stagedSession";
    private static final String ATTR_STAGED_SESSION_ERROR_CODE = "errorCode";
    private static final String ATTR_STAGED_SESSION_ERROR_MESSAGE = "errorMessage";
    private static final String ATTR_UPDATED_MILLIS = "updatedMillis";
    private static final String ATTR_USER_ID = "userId";
    private static final String ATTR_VOLUME_UUID = "volumeUuid";
    private static final int INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS = 2000;
    private static final int INCREMENTAL_STORAGE_UNHEALTHY_MONITORING_MS = 60000;
    private static final int INCREMENTAL_STORAGE_UNHEALTHY_TIMEOUT_MS = 7000;
    private static final boolean LOGD = true;
    private static final int MSG_INSTALL = 2;
    private static final int MSG_ON_PACKAGE_INSTALLED = 3;
    private static final int MSG_SESSION_VERIFICATION_FAILURE = 4;
    private static final int MSG_STREAM_VALIDATE_AND_COMMIT = 1;
    private static final String PROPERTY_NAME_INHERIT_NATIVE = "pi.inherit_native_on_dont_kill";
    private static final String REMOVE_MARKER_EXTENSION = ".removed";
    private static final String SYSTEM_DATA_LOADER_PACKAGE = "android";
    private static final String TAG = "PackageInstallerSession";
    private static final String TAG_AUTO_REVOKE_PERMISSIONS_MODE = "auto-revoke-permissions-mode";
    static final String TAG_CHILD_SESSION = "childSession";
    private static final String TAG_GRANTED_RUNTIME_PERMISSION = "granted-runtime-permission";
    static final String TAG_SESSION = "session";
    static final String TAG_SESSION_FILE = "sessionFile";
    private static final String TAG_WHITELISTED_RESTRICTED_PERMISSION = "whitelisted-restricted-permission";
    final long createdMillis;
    private final PackageInstallerService.InternalCallback mCallback;
    private boolean mCommitted;
    private final Context mContext;
    private boolean mDestroyed;
    private String mFinalMessage;
    private int mFinalStatus;
    private final Handler mHandler;
    private IncrementalFileStorages mIncrementalFileStorages;
    private File mInheritedFilesBase;
    private InstallSource mInstallSource;
    private int mInstallerUid;
    private final String mOriginalInstallerPackageName;
    private final int mOriginalInstallerUid;
    private String mPackageName;
    private int mParentSessionId;
    private final PackageManagerService mPm;
    private boolean mPrepared;
    private IntentSender mRemoteStatusReceiver;
    private File mResolvedBaseFile;
    private final PackageSessionProvider mSessionProvider;
    private boolean mShouldBeSealed;
    private PackageParser.SigningDetails mSigningDetails;
    private boolean mStagedSessionApplied;
    private int mStagedSessionErrorCode;
    private String mStagedSessionErrorMessage;
    private boolean mStagedSessionFailed;
    private boolean mStagedSessionReady;
    private final StagingManager mStagingManager;
    private boolean mVerityFound;
    private long mVersionCode;
    final PackageInstaller.SessionParams params;
    final int sessionId;
    final String stageCid;
    final File stageDir;
    private long updatedMillis;
    final int userId;
    private static final int[] EMPTY_CHILD_SESSION_ARRAY = EmptyArray.INT;
    private static final InstallationFile[] EMPTY_INSTALLATION_FILE_ARRAY = new InstallationFile[0];
    private static final FileFilter sAddedApkFilter = new FileFilter() { // from class: com.android.server.pm.PackageInstallerSession.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return (file.isDirectory() || file.getName().endsWith(PackageInstallerSession.REMOVE_MARKER_EXTENSION) || DexMetadataHelper.isDexMetadataFile(file) || VerityUtils.isFsveritySignatureFile(file)) ? false : true;
        }
    };
    private static final FileFilter sAddedFilter = new FileFilter() { // from class: com.android.server.pm.PackageInstallerSession.2
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return (file.isDirectory() || file.getName().endsWith(PackageInstallerSession.REMOVE_MARKER_EXTENSION)) ? false : true;
        }
    };
    private static final FileFilter sRemovedFilter = new FileFilter() { // from class: com.android.server.pm.PackageInstallerSession.3
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.isDirectory() && file.getName().endsWith(PackageInstallerSession.REMOVE_MARKER_EXTENSION);
        }
    };
    private final AtomicInteger mActiveCount = new AtomicInteger();
    private final Object mLock = new Object();
    private float mClientProgress = 0.0f;
    private float mInternalProgress = 0.0f;
    private float mProgress = 0.0f;
    private float mReportedProgress = -1.0f;
    private boolean mSealed = false;
    private boolean mRelinquished = false;
    private boolean mPermissionsManuallyAccepted = false;
    private final ArrayList<RevocableFileDescriptor> mFds = new ArrayList<>();
    private final ArrayList<FileBridge> mBridges = new ArrayList<>();
    private SparseIntArray mChildSessionIds = new SparseIntArray();
    private ArraySet<FileEntry> mFiles = new ArraySet<>();
    private final List<File> mResolvedStagedFiles = new ArrayList();
    private final List<File> mResolvedInheritedFiles = new ArrayList();
    private final List<String> mResolvedInstructionSets = new ArrayList();
    private final List<String> mResolvedNativeLibPaths = new ArrayList();
    private boolean mDataLoaderFinished = false;
    private final Handler.Callback mHandlerCallback = new Handler.Callback() { // from class: com.android.server.pm.PackageInstallerSession.4
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) throws PackageManagerException {
            int i = msg.what;
            if (i == 1) {
                PackageInstallerSession.this.handleStreamValidateAndCommit();
            } else if (i == 2) {
                PackageInstallerSession.this.handleInstall();
            } else if (i == 3) {
                SomeArgs args = (SomeArgs) msg.obj;
                String packageName = (String) args.arg1;
                String message = (String) args.arg2;
                Bundle extras = (Bundle) args.arg3;
                IntentSender statusReceiver = (IntentSender) args.arg4;
                int returnCode = args.argi1;
                args.recycle();
                PackageInstallerSession.sendOnPackageInstalled(PackageInstallerSession.this.mContext, statusReceiver, PackageInstallerSession.this.sessionId, PackageInstallerSession.this.isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked(), PackageInstallerSession.this.userId, packageName, returnCode, message, extras);
            } else if (i == 4) {
                int error = msg.arg1;
                String detailMessage = (String) msg.obj;
                PackageInstallerSession.this.onSessionVerificationFailure(error, detailMessage);
            }
            return true;
        }
    };

    static class FileEntry {
        private final InstallationFile mFile;
        private final int mIndex;

        FileEntry(int index, InstallationFile file) {
            this.mIndex = index;
            this.mFile = file;
        }

        int getIndex() {
            return this.mIndex;
        }

        InstallationFile getFile() {
            return this.mFile;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof FileEntry)) {
                return false;
            }
            FileEntry rhs = (FileEntry) obj;
            return this.mFile.getLocation() == rhs.mFile.getLocation() && TextUtils.equals(this.mFile.getName(), rhs.mFile.getName());
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.mFile.getLocation()), this.mFile.getName());
        }
    }

    private boolean isDataLoaderInstallation() {
        return this.params.dataLoaderParams != null;
    }

    private boolean isStreamingInstallation() {
        return isDataLoaderInstallation() && this.params.dataLoaderParams.getType() == 1;
    }

    private boolean isIncrementalInstallation() {
        return isDataLoaderInstallation() && this.params.dataLoaderParams.getType() == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked() {
        DevicePolicyManagerInternal dpmi;
        return this.userId == UserHandle.getUserId(this.mInstallerUid) && (dpmi = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class)) != null && dpmi.canSilentlyInstallPackage(this.mInstallSource.installerPackageName, this.mInstallerUid);
    }

    private boolean needToAskForPermissionsLocked() {
        if (this.mPermissionsManuallyAccepted) {
            return false;
        }
        boolean isInstallPermissionGranted = this.mPm.checkUidPermission("android.permission.INSTALL_PACKAGES", this.mInstallerUid) == 0;
        boolean isSelfUpdatePermissionGranted = this.mPm.checkUidPermission("android.permission.INSTALL_SELF_UPDATES", this.mInstallerUid) == 0;
        boolean isUpdatePermissionGranted = this.mPm.checkUidPermission("android.permission.INSTALL_PACKAGE_UPDATES", this.mInstallerUid) == 0;
        int targetPackageUid = this.mPm.getPackageUid(this.mPackageName, 0, this.userId);
        boolean isPermissionGranted = isInstallPermissionGranted || (isUpdatePermissionGranted && targetPackageUid != -1) || (isSelfUpdatePermissionGranted && targetPackageUid == this.mInstallerUid);
        boolean isInstallerRoot = this.mInstallerUid == 0;
        boolean isInstallerSystem = this.mInstallerUid == 1000;
        boolean forcePermissionPrompt = (this.params.installFlags & 1024) != 0;
        return forcePermissionPrompt || !(isPermissionGranted || isInstallerRoot || isInstallerSystem || isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked());
    }

    public PackageInstallerSession(PackageInstallerService.InternalCallback callback, Context context, PackageManagerService pm, PackageSessionProvider sessionProvider, Looper looper, StagingManager stagingManager, int sessionId, int userId, int installerUid, InstallSource installSource, PackageInstaller.SessionParams params, long createdMillis, File stageDir, String stageCid, InstallationFile[] files, boolean prepared, boolean committed, boolean destroyed, boolean sealed, int[] childSessionIds, int parentSessionId, boolean isReady, boolean isFailed, boolean isApplied, int stagedSessionErrorCode, String stagedSessionErrorMessage) {
        int[] iArr = childSessionIds;
        this.mPrepared = false;
        this.mShouldBeSealed = false;
        this.mCommitted = false;
        this.mDestroyed = false;
        this.mStagedSessionErrorCode = 0;
        this.mCallback = callback;
        this.mContext = context;
        this.mPm = pm;
        this.mSessionProvider = sessionProvider;
        this.mHandler = new Handler(looper, this.mHandlerCallback);
        this.mStagingManager = stagingManager;
        this.sessionId = sessionId;
        this.userId = userId;
        this.mOriginalInstallerUid = installerUid;
        this.mInstallerUid = installerUid;
        Objects.requireNonNull(installSource);
        InstallSource installSource2 = installSource;
        this.mInstallSource = installSource2;
        this.mOriginalInstallerPackageName = installSource2.installerPackageName;
        this.params = params;
        this.createdMillis = createdMillis;
        this.updatedMillis = createdMillis;
        this.stageDir = stageDir;
        this.stageCid = stageCid;
        this.mShouldBeSealed = sealed;
        if (iArr != null) {
            int i = 0;
            for (int length = iArr.length; i < length; length = length) {
                int childSessionId = iArr[i];
                this.mChildSessionIds.put(childSessionId, 0);
                i++;
                iArr = childSessionIds;
            }
        }
        this.mParentSessionId = parentSessionId;
        if (files != null) {
            int i2 = 0;
            int size = files.length;
            while (i2 < size) {
                InstallationFile file = files[i2];
                int size2 = size;
                if (this.mFiles.add(new FileEntry(i2, file))) {
                    i2++;
                    size = size2;
                } else {
                    throw new IllegalArgumentException("Trying to add a duplicate installation file");
                }
            }
        }
        if (!params.isMultiPackage) {
            if ((stageDir == null) == (stageCid == null)) {
                throw new IllegalArgumentException("Exactly one of stageDir or stageCid stage must be set");
            }
        }
        this.mPrepared = prepared;
        this.mCommitted = committed;
        this.mDestroyed = destroyed;
        this.mStagedSessionReady = isReady;
        this.mStagedSessionFailed = isFailed;
        this.mStagedSessionApplied = isApplied;
        this.mStagedSessionErrorCode = stagedSessionErrorCode;
        this.mStagedSessionErrorMessage = stagedSessionErrorMessage != null ? stagedSessionErrorMessage : "";
        if (isDataLoaderInstallation()) {
            if (isApexInstallation()) {
                throw new IllegalArgumentException("DataLoader installation of APEX modules is not allowed.");
            }
            if (this.params.dataLoaderParams.getComponentName().getPackageName() == "android") {
                assertShellOrSystemCalling("System data loaders");
            }
        }
        if (isIncrementalInstallation()) {
            if (!IncrementalManager.isAllowed()) {
                throw new IllegalArgumentException("Incremental installation not allowed.");
            }
            if (!isIncrementalInstallationAllowed(this.mPackageName)) {
                throw new IllegalArgumentException("Incremental installation of this package is not allowed.");
            }
        }
    }

    private boolean shouldScrubData(int callingUid) {
        return callingUid >= 10000 && getInstallerUid() != callingUid;
    }

    public PackageInstaller.SessionInfo generateInfoForCaller(boolean includeIcon, int callingUid) {
        return generateInfoInternal(includeIcon, shouldScrubData(callingUid));
    }

    public PackageInstaller.SessionInfo generateInfoScrubbed(boolean includeIcon) {
        return generateInfoInternal(includeIcon, true);
    }

    private PackageInstaller.SessionInfo generateInfoInternal(boolean includeIcon, boolean scrubData) {
        PackageInstaller.SessionInfo info = new PackageInstaller.SessionInfo();
        synchronized (this.mLock) {
            info.sessionId = this.sessionId;
            info.userId = this.userId;
            info.installerPackageName = this.mInstallSource.installerPackageName;
            info.resolvedBaseCodePath = this.mResolvedBaseFile != null ? this.mResolvedBaseFile.getAbsolutePath() : null;
            info.progress = this.mProgress;
            info.sealed = this.mSealed;
            info.isCommitted = this.mCommitted;
            info.active = this.mActiveCount.get() > 0;
            info.mode = this.params.mode;
            info.installReason = this.params.installReason;
            info.sizeBytes = this.params.sizeBytes;
            info.appPackageName = this.params.appPackageName;
            if (includeIcon) {
                info.appIcon = this.params.appIcon;
            }
            info.appLabel = this.params.appLabel;
            info.installLocation = this.params.installLocation;
            if (!scrubData) {
                info.originatingUri = this.params.originatingUri;
            }
            info.originatingUid = this.params.originatingUid;
            if (!scrubData) {
                info.referrerUri = this.params.referrerUri;
            }
            info.grantedRuntimePermissions = this.params.grantedRuntimePermissions;
            info.whitelistedRestrictedPermissions = this.params.whitelistedRestrictedPermissions;
            info.autoRevokePermissionsMode = this.params.autoRevokePermissionsMode;
            info.installFlags = this.params.installFlags;
            info.isMultiPackage = this.params.isMultiPackage;
            info.isStaged = this.params.isStaged;
            info.rollbackDataPolicy = this.params.rollbackDataPolicy;
            info.parentSessionId = this.mParentSessionId;
            info.childSessionIds = this.mChildSessionIds.copyKeys();
            if (info.childSessionIds == null) {
                info.childSessionIds = EMPTY_CHILD_SESSION_ARRAY;
            }
            info.isStagedSessionApplied = this.mStagedSessionApplied;
            info.isStagedSessionReady = this.mStagedSessionReady;
            info.isStagedSessionFailed = this.mStagedSessionFailed;
            info.setStagedSessionErrorCode(this.mStagedSessionErrorCode, this.mStagedSessionErrorMessage);
            info.createdMillis = this.createdMillis;
            info.updatedMillis = this.updatedMillis;
        }
        return info;
    }

    public boolean isPrepared() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mPrepared;
        }
        return z;
    }

    public boolean isSealed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mSealed;
        }
        return z;
    }

    boolean isCommitted() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mCommitted;
        }
        return z;
    }

    boolean isDestroyed() {
        boolean z;
        synchronized (this.mLock) {
            z = this.mDestroyed;
        }
        return z;
    }

    public boolean isStagedAndInTerminalState() {
        boolean z;
        synchronized (this.mLock) {
            z = this.params.isStaged && (this.mStagedSessionApplied || this.mStagedSessionFailed);
        }
        return z;
    }

    private void assertPreparedAndNotSealedLocked(String cookie) {
        assertPreparedAndNotCommittedOrDestroyedLocked(cookie);
        if (this.mSealed) {
            throw new SecurityException(cookie + " not allowed after sealing");
        }
    }

    private void assertPreparedAndNotCommittedOrDestroyedLocked(String cookie) {
        assertPreparedAndNotDestroyedLocked(cookie);
        if (this.mCommitted) {
            throw new SecurityException(cookie + " not allowed after commit");
        }
    }

    private void assertPreparedAndNotDestroyedLocked(String cookie) {
        if (!this.mPrepared) {
            throw new IllegalStateException(cookie + " before prepared");
        }
        if (this.mDestroyed) {
            throw new SecurityException(cookie + " not allowed after destruction");
        }
    }

    private void setClientProgressLocked(float progress) {
        boolean forcePublish = this.mClientProgress == 0.0f;
        this.mClientProgress = progress;
        computeProgressLocked(forcePublish);
    }

    public void setClientProgress(float progress) {
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            setClientProgressLocked(progress);
        }
    }

    public void addClientProgress(float progress) {
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            setClientProgressLocked(this.mClientProgress + progress);
        }
    }

    private void computeProgressLocked(boolean forcePublish) {
        float fConstrain = MathUtils.constrain(this.mClientProgress * 0.8f, 0.0f, 0.8f) + MathUtils.constrain(this.mInternalProgress * 0.2f, 0.0f, 0.2f);
        this.mProgress = fConstrain;
        if (forcePublish || Math.abs(fConstrain - this.mReportedProgress) >= 0.01d) {
            float f = this.mProgress;
            this.mReportedProgress = f;
            this.mCallback.onSessionProgressChanged(this, f);
        }
    }

    public String[] getNames() {
        String[] namesLocked;
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotCommittedOrDestroyedLocked("getNames");
            namesLocked = getNamesLocked();
        }
        return namesLocked;
    }

    private String[] getNamesLocked() {
        if (!isDataLoaderInstallation()) {
            String[] result = this.stageDir.list();
            if (result == null) {
                return EmptyArray.STRING;
            }
            return result;
        }
        InstallationFile[] files = getInstallationFilesLocked();
        String[] result2 = new String[files.length];
        int size = files.length;
        for (int i = 0; i < size; i++) {
            result2[i] = files[i].getName();
        }
        return result2;
    }

    private InstallationFile[] getInstallationFilesLocked() {
        InstallationFile[] result = new InstallationFile[this.mFiles.size()];
        for (FileEntry fileEntry : this.mFiles) {
            result[fileEntry.getIndex()] = fileEntry.getFile();
        }
        return result;
    }

    private static ArrayList<File> filterFiles(File parent, String[] names, FileFilter filter) {
        ArrayList<File> result = new ArrayList<>(names.length);
        for (String name : names) {
            File file = new File(parent, name);
            if (filter.accept(file)) {
                result.add(file);
            }
        }
        return result;
    }

    private List<File> getAddedApksLocked() {
        String[] names = getNamesLocked();
        return filterFiles(this.stageDir, names, sAddedApkFilter);
    }

    private List<File> getRemovedFilesLocked() {
        String[] names = getNamesLocked();
        return filterFiles(this.stageDir, names, sRemovedFilter);
    }

    public void removeSplit(String splitName) {
        if (isDataLoaderInstallation()) {
            throw new IllegalStateException("Cannot remove splits in a data loader installation session.");
        }
        if (TextUtils.isEmpty(this.params.appPackageName)) {
            throw new IllegalStateException("Must specify package name to remove a split");
        }
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotCommittedOrDestroyedLocked("removeSplit");
            try {
                createRemoveSplitMarkerLocked(splitName);
            } catch (IOException e) {
                throw ExceptionUtils.wrap(e);
            }
        }
    }

    private static String getRemoveMarkerName(String name) {
        String markerName = name + REMOVE_MARKER_EXTENSION;
        if (!FileUtils.isValidExtFilename(markerName)) {
            throw new IllegalArgumentException("Invalid marker: " + markerName);
        }
        return markerName;
    }

    private void createRemoveSplitMarkerLocked(String splitName) throws IOException {
        try {
            File target = new File(this.stageDir, getRemoveMarkerName(splitName));
            target.createNewFile();
            Os.chmod(target.getAbsolutePath(), 0);
        } catch (ErrnoException e) {
            throw e.rethrowAsIOException();
        }
    }

    private void assertShellOrSystemCalling(String operation) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != 1000 && callingUid != INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS) {
            throw new SecurityException(operation + " only supported from shell or system");
        }
    }

    private void assertCanWrite(boolean reverseMode) {
        if (isDataLoaderInstallation()) {
            throw new IllegalStateException("Cannot write regular files in a data loader installation session.");
        }
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotSealedLocked("assertCanWrite");
        }
        if (reverseMode) {
            assertShellOrSystemCalling("Reverse mode");
        }
    }

    public ParcelFileDescriptor openWrite(String name, long offsetBytes, long lengthBytes) {
        assertCanWrite(false);
        try {
            return doWriteInternal(name, offsetBytes, lengthBytes, null);
        } catch (IOException e) {
            throw ExceptionUtils.wrap(e);
        }
    }

    public void write(String name, long offsetBytes, long lengthBytes, ParcelFileDescriptor fd) {
        assertCanWrite(fd != null);
        try {
            doWriteInternal(name, offsetBytes, lengthBytes, fd);
        } catch (IOException e) {
            throw ExceptionUtils.wrap(e);
        }
    }

    private ParcelFileDescriptor openTargetInternal(String path, int flags, int mode) throws IOException, ErrnoException {
        FileDescriptor fd = Os.open(path, flags, mode);
        return new ParcelFileDescriptor(fd);
    }

    private ParcelFileDescriptor createRevocableFdInternal(RevocableFileDescriptor fd, ParcelFileDescriptor pfd) throws IOException {
        int releasedFdInt = pfd.detachFd();
        FileDescriptor releasedFd = new FileDescriptor();
        releasedFd.setInt$(releasedFdInt);
        fd.init(this.mContext, releasedFd);
        return fd.getRevocableFileDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ce, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.ParcelFileDescriptor doWriteInternal(java.lang.String r22, long r23, long r25, android.os.ParcelFileDescriptor r27) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PackageInstallerSession.doWriteInternal(java.lang.String, long, long, android.os.ParcelFileDescriptor):android.os.ParcelFileDescriptor");
    }

    public /* synthetic */ void lambda$doWriteInternal$0$PackageInstallerSession(Int64Ref last, long progress) {
        if (this.params.sizeBytes > 0) {
            long delta = progress - last.value;
            last.value = progress;
            synchronized (this.mLock) {
                setClientProgressLocked(this.mClientProgress + (delta / this.params.sizeBytes));
            }
        }
    }

    public ParcelFileDescriptor openRead(String name) {
        ParcelFileDescriptor parcelFileDescriptorOpenReadInternalLocked;
        if (isDataLoaderInstallation()) {
            throw new IllegalStateException("Cannot read regular files in a data loader installation session.");
        }
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotCommittedOrDestroyedLocked("openRead");
            try {
                parcelFileDescriptorOpenReadInternalLocked = openReadInternalLocked(name);
            } catch (IOException e) {
                throw ExceptionUtils.wrap(e);
            }
        }
        return parcelFileDescriptorOpenReadInternalLocked;
    }

    private ParcelFileDescriptor openReadInternalLocked(String name) throws IOException {
        try {
            if (!FileUtils.isValidExtFilename(name)) {
                throw new IllegalArgumentException("Invalid name: " + name);
            }
            File target = new File(this.stageDir, name);
            FileDescriptor targetFd = Os.open(target.getAbsolutePath(), OsConstants.O_RDONLY, 0);
            return new ParcelFileDescriptor(targetFd);
        } catch (ErrnoException e) {
            throw e.rethrowAsIOException();
        }
    }

    private void assertCallerIsOwnerOrRootLocked() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != this.mInstallerUid) {
            throw new SecurityException("Session does not belong to uid " + callingUid);
        }
    }

    private void assertCallerIsOwnerOrRootOrSystemLocked() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 0 && callingUid != this.mInstallerUid && callingUid != 1000) {
            throw new SecurityException("Session does not belong to uid " + callingUid);
        }
    }

    private void assertNoWriteFileTransfersOpenLocked() {
        for (RevocableFileDescriptor fd : this.mFds) {
            if (!fd.isRevoked()) {
                throw new SecurityException("Files still open");
            }
        }
        for (FileBridge bridge : this.mBridges) {
            if (!bridge.isClosed()) {
                throw new SecurityException("Files still open");
            }
        }
    }

    public void commit(IntentSender statusReceiver, boolean forTransfer) {
        if (hasParentSessionId()) {
            throw new IllegalStateException("Session " + this.sessionId + " is a child of multi-package session " + this.mParentSessionId + " and may not be committed directly.");
        }
        if (!markAsSealed(statusReceiver, forTransfer)) {
            return;
        }
        if (isMultiPackage()) {
            SparseIntArray remainingSessions = this.mChildSessionIds.clone();
            IntentSender childIntentSender = new ChildStatusIntentReceiver(remainingSessions, statusReceiver).getIntentSender();
            boolean sealFailed = false;
            for (int i = this.mChildSessionIds.size() - 1; i >= 0; i--) {
                int childSessionId = this.mChildSessionIds.keyAt(i);
                if (!this.mSessionProvider.getSession(childSessionId).markAsSealed(childIntentSender, forTransfer)) {
                    sealFailed = true;
                }
            }
            if (sealFailed) {
                return;
            }
        }
        dispatchStreamValidateAndCommit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchStreamValidateAndCommit() {
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStreamValidateAndCommit() throws PackageManagerException {
        PackageManagerException unrecoverableFailure = null;
        boolean allSessionsReady = false;
        try {
            allSessionsReady = streamValidateAndCommit();
        } catch (PackageManagerException e) {
            unrecoverableFailure = e;
        }
        if (isMultiPackage()) {
            int childCount = this.mChildSessionIds.size();
            ArrayList<PackageInstallerSession> nonFailingSessions = new ArrayList<>(childCount);
            for (int i = childCount - 1; i >= 0; i--) {
                int childSessionId = this.mChildSessionIds.keyAt(i);
                try {
                    PackageInstallerSession session = this.mSessionProvider.getSession(childSessionId);
                    allSessionsReady &= session.streamValidateAndCommit();
                    nonFailingSessions.add(session);
                } catch (PackageManagerException e2) {
                    allSessionsReady = false;
                    if (unrecoverableFailure == null) {
                        unrecoverableFailure = e2;
                    }
                }
            }
            if (unrecoverableFailure != null) {
                onSessionVerificationFailure(unrecoverableFailure);
                for (int i2 = nonFailingSessions.size() - 1; i2 >= 0; i2--) {
                    nonFailingSessions.get(i2).onSessionVerificationFailure(unrecoverableFailure);
                }
            }
        }
        if (!allSessionsReady) {
            return;
        }
        this.mHandler.obtainMessage(2).sendToTarget();
    }

    private final class FileSystemConnector extends IPackageInstallerSessionFileSystemConnector.Stub {
        final Set<String> mAddedFiles = new ArraySet();

        FileSystemConnector(List<InstallationFileParcel> addedFiles) {
            for (InstallationFileParcel file : addedFiles) {
                this.mAddedFiles.add(file.name);
            }
        }

        public void writeData(String name, long offsetBytes, long lengthBytes, ParcelFileDescriptor incomingFd) throws Throwable {
            if (incomingFd == null) {
                throw new IllegalArgumentException("incomingFd can't be null");
            }
            if (this.mAddedFiles.contains(name)) {
                try {
                    PackageInstallerSession.this.doWriteInternal(name, offsetBytes, lengthBytes, incomingFd);
                    return;
                } catch (IOException e) {
                    throw ExceptionUtils.wrap(e);
                }
            }
            throw new SecurityException("File name is not in the list of added files.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class ChildStatusIntentReceiver {
        private final SparseIntArray mChildSessionsRemaining;
        private final IIntentSender.Stub mLocalSender;
        private final IntentSender mStatusReceiver;

        private ChildStatusIntentReceiver(SparseIntArray remainingSessions, IntentSender statusReceiver) {
            this.mLocalSender = new IIntentSender.Stub() { // from class: com.android.server.pm.PackageInstallerSession.ChildStatusIntentReceiver.1
                public void send(int code, Intent intent, String resolvedType, IBinder whitelistToken, IIntentReceiver finishedReceiver, String requiredPermission, Bundle options) {
                    ChildStatusIntentReceiver.this.statusUpdate(intent);
                }
            };
            this.mChildSessionsRemaining = remainingSessions;
            this.mStatusReceiver = statusReceiver;
        }

        public IntentSender getIntentSender() {
            return new IntentSender(this.mLocalSender);
        }

        public void statusUpdate(final Intent intent) {
            PackageInstallerSession.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.-$$Lambda$PackageInstallerSession$ChildStatusIntentReceiver$CIWymiEKCzNknV3an6tFtcz5-Mc
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(intent);
                }
            });
        }

        public /* synthetic */ void lambda$statusUpdate$0$PackageInstallerSession$ChildStatusIntentReceiver(Intent intent) {
            boolean destroyed;
            if (this.mChildSessionsRemaining.size() != 0) {
                synchronized (PackageInstallerSession.this.mLock) {
                    destroyed = PackageInstallerSession.this.mDestroyed;
                }
                if (destroyed) {
                    return;
                }
                int sessionId = intent.getIntExtra("android.content.pm.extra.SESSION_ID", 0);
                int status = intent.getIntExtra("android.content.pm.extra.STATUS", 1);
                int sessionIndex = this.mChildSessionsRemaining.indexOfKey(sessionId);
                if (status == 0) {
                    this.mChildSessionsRemaining.removeAt(sessionIndex);
                    if (this.mChildSessionsRemaining.size() == 0) {
                        try {
                            intent.putExtra("android.content.pm.extra.SESSION_ID", PackageInstallerSession.this.sessionId);
                            BroadcastOptions options = BroadcastOptions.makeBasic();
                            options.setPendingIntentBackgroundActivityLaunchAllowed(false);
                            this.mStatusReceiver.sendIntent(PackageInstallerSession.this.mContext, 0, intent, null, null, null, options.toBundle());
                            return;
                        } catch (IntentSender.SendIntentException e) {
                            return;
                        }
                    }
                    return;
                }
                if (-1 == status) {
                    try {
                        BroadcastOptions options2 = BroadcastOptions.makeBasic();
                        options2.setPendingIntentBackgroundActivityLaunchAllowed(false);
                        this.mStatusReceiver.sendIntent(PackageInstallerSession.this.mContext, 0, intent, null, null, null, options2.toBundle());
                        return;
                    } catch (IntentSender.SendIntentException e2) {
                        return;
                    }
                }
                intent.putExtra("android.content.pm.extra.SESSION_ID", PackageInstallerSession.this.sessionId);
                this.mChildSessionsRemaining.clear();
                try {
                    BroadcastOptions options3 = BroadcastOptions.makeBasic();
                    options3.setPendingIntentBackgroundActivityLaunchAllowed(false);
                    this.mStatusReceiver.sendIntent(PackageInstallerSession.this.mContext, 0, intent, null, null, null, options3.toBundle());
                } catch (IntentSender.SendIntentException e3) {
                }
            }
        }
    }

    private class StreamingException extends Exception {
        StreamingException(Throwable cause) {
            super(cause);
        }
    }

    private static boolean isSecureFrpInstallAllowed(Context context, int callingUid) {
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        String[] systemInstaller = pmi.getKnownPackageNames(2, 0);
        AndroidPackage callingInstaller = pmi.getPackage(callingUid);
        return (callingInstaller == null || !ArrayUtils.contains(systemInstaller, callingInstaller.getPackageName())) && context.checkCallingOrSelfPermission("android.permission.INSTALL_PACKAGES") == 0;
    }

    private static boolean isIncrementalInstallationAllowed(String packageName) {
        PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        PackageSetting existingPkgSetting = pmi.getPackageSetting(packageName);
        if (existingPkgSetting == null || existingPkgSetting.pkg == null) {
            return true;
        }
        return (existingPkgSetting.pkg.isSystem() || existingPkgSetting.getPkgState().isUpdatedSystemApp()) ? false : true;
    }

    private boolean markAsSealed(IntentSender statusReceiver, boolean forTransfer) {
        Objects.requireNonNull(statusReceiver);
        List<PackageInstallerSession> childSessions = getChildSessionsNotLocked();
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotDestroyedLocked("commit");
            assertNoWriteFileTransfersOpenLocked();
            boolean isSecureFrpEnabled = android.provider.Settings.Secure.getInt(this.mContext.getContentResolver(), "secure_frp_mode", 0) == 1;
            if (isSecureFrpEnabled && !isSecureFrpInstallAllowed(this.mContext, Binder.getCallingUid())) {
                throw new SecurityException("Can't install packages while in secure FRP");
            }
            if (forTransfer) {
                this.mContext.enforceCallingOrSelfPermission("android.permission.INSTALL_PACKAGES", null);
                if (this.mInstallerUid == this.mOriginalInstallerUid) {
                    throw new IllegalArgumentException("Session has not been transferred");
                }
            } else if (this.mInstallerUid != this.mOriginalInstallerUid) {
                throw new IllegalArgumentException("Session has been transferred");
            }
            this.mRemoteStatusReceiver = statusReceiver;
            if (this.mSealed) {
                return true;
            }
            try {
                sealLocked(childSessions);
                this.mCallback.onSessionSealedBlocking(this);
                return true;
            } catch (PackageManagerException e) {
                return false;
            }
        }
    }

    private boolean streamValidateAndCommit() throws PackageManagerException {
        synchronized (this.mLock) {
            if (this.mCommitted) {
                return true;
            }
            if (!streamAndValidateLocked()) {
                return false;
            }
            this.mClientProgress = 1.0f;
            computeProgressLocked(true);
            this.mActiveCount.incrementAndGet();
            this.mCommitted = true;
            return true;
        }
    }

    private List<PackageInstallerSession> getChildSessionsNotLocked() {
        if (Thread.holdsLock(this.mLock)) {
            Slog.wtf(TAG, "Calling thread " + Thread.currentThread().getName() + " is holding mLock", new Throwable());
        }
        List<PackageInstallerSession> childSessions = null;
        if (isMultiPackage()) {
            int[] childSessionIds = getChildSessionIds();
            childSessions = new ArrayList<>(childSessionIds.length);
            for (int childSessionId : childSessionIds) {
                childSessions.add(this.mSessionProvider.getSession(childSessionId));
            }
        }
        return childSessions;
    }

    private void assertMultiPackageConsistencyLocked(List<PackageInstallerSession> childSessions) throws PackageManagerException {
        for (PackageInstallerSession childSession : childSessions) {
            if (childSession != null) {
                assertConsistencyWithLocked(childSession);
            }
        }
    }

    private void assertConsistencyWithLocked(PackageInstallerSession other) throws PackageManagerException {
        if (this.params.isStaged != other.params.isStaged) {
            throw new PackageManagerException(-120, "Multipackage Inconsistency: session " + other.sessionId + " and session " + this.sessionId + " have inconsistent staged settings");
        }
        if (this.params.getEnableRollback() != other.params.getEnableRollback()) {
            throw new PackageManagerException(-120, "Multipackage Inconsistency: session " + other.sessionId + " and session " + this.sessionId + " have inconsistent rollback settings");
        }
    }

    private void sealLocked(List<PackageInstallerSession> childSessions) throws PackageManagerException {
        try {
            assertNoWriteFileTransfersOpenLocked();
            assertPreparedAndNotDestroyedLocked("sealing of session");
            this.mSealed = true;
            if (childSessions != null) {
                assertMultiPackageConsistencyLocked(childSessions);
            }
        } catch (PackageManagerException e) {
            throw onSessionVerificationFailure(e);
        } catch (Throwable e2) {
            throw onSessionVerificationFailure(new PackageManagerException(e2));
        }
    }

    private boolean streamAndValidateLocked() throws PackageManagerException {
        try {
            if (!this.params.isMultiPackage) {
                if (!prepareDataLoaderLocked()) {
                    return false;
                }
                if (isApexInstallation()) {
                    validateApexInstallLocked();
                } else {
                    validateApkInstallLocked();
                }
            }
            if (this.params.isStaged) {
                this.mStagingManager.checkNonOverlappingWithStagedSessions(this);
                return true;
            }
            return true;
        } catch (PackageManagerException e) {
            throw onSessionVerificationFailure(e);
        } catch (Throwable e2) {
            throw onSessionVerificationFailure(new PackageManagerException(e2));
        }
    }

    private PackageManagerException onSessionVerificationFailure(PackageManagerException e) {
        onSessionVerificationFailure(e.error, ExceptionUtils.getCompleteMessage(e));
        return e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSessionVerificationFailure(int error, String detailMessage) {
        destroyInternal();
        dispatchSessionFinished(error, detailMessage, null);
        if (isStaged() && this.stageDir != null) {
            cleanStageDir();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStorageUnhealthy() {
        if (TextUtils.isEmpty(this.mPackageName)) {
            return;
        }
        final PackageManagerService packageManagerService = this.mPm;
        final String packageName = this.mPackageName;
        this.mHandler.post(new Runnable() { // from class: com.android.server.pm.-$$Lambda$PackageInstallerSession$UpuMRb5wmirrOQyE79KreHPfilQ
            @Override // java.lang.Runnable
            public final void run() {
                PackageInstallerSession.lambda$onStorageUnhealthy$1(packageManagerService, packageName);
            }
        });
    }

    static /* synthetic */ void lambda$onStorageUnhealthy$1(PackageManagerService packageManagerService, String packageName) {
        if (packageManagerService.deletePackageX(packageName, -1L, 0, 2) != 1) {
            Slog.e(TAG, "Failed to uninstall package with failed dataloader: " + packageName);
        }
    }

    void onAfterSessionRead() {
        synchronized (this.mLock) {
            if (this.mShouldBeSealed && !isStagedAndInTerminalState()) {
                List<PackageInstallerSession> childSessions = getChildSessionsNotLocked();
                synchronized (this.mLock) {
                    try {
                        sealLocked(childSessions);
                        if (isApexInstallation()) {
                            validateApexInstallLocked();
                        }
                    } catch (PackageManagerException e) {
                        Slog.e(TAG, "Package not valid", e);
                    }
                }
            }
        }
    }

    public void markUpdated() {
        synchronized (this.mLock) {
            this.updatedMillis = System.currentTimeMillis();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: android.os.ParcelableException */
    public void transfer(String packageName) throws ParcelableException {
        Objects.requireNonNull(packageName);
        ApplicationInfo newOwnerAppInfo = this.mPm.getApplicationInfo(packageName, 0, this.userId);
        if (newOwnerAppInfo == null) {
            throw new ParcelableException(new PackageManager.NameNotFoundException(packageName));
        }
        if (this.mPm.checkUidPermission("android.permission.INSTALL_PACKAGES", newOwnerAppInfo.uid) != 0) {
            throw new SecurityException("Destination package " + packageName + " does not have the android.permission.INSTALL_PACKAGES permission");
        }
        if (!this.params.areHiddenOptionsSet()) {
            throw new SecurityException("Can only transfer sessions that use public options");
        }
        List<PackageInstallerSession> childSessions = getChildSessionsNotLocked();
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotSealedLocked("transfer");
            try {
                sealLocked(childSessions);
                this.mInstallerUid = newOwnerAppInfo.uid;
                this.mInstallSource = InstallSource.create(packageName, null, packageName);
            } catch (PackageManagerException e) {
                throw new IllegalArgumentException("Package is not valid", e);
            }
        }
        this.mCallback.onSessionSealedBlocking(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInstall() {
        if (isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked()) {
            DevicePolicyEventLogger.createEvent(112).setAdmin(this.mInstallSource.installerPackageName).write();
        }
        if (this.params.isStaged) {
            this.mStagingManager.commitSession(this);
            destroyInternal();
            dispatchSessionFinished(1, "Session staged", null);
            return;
        }
        if (isApexInstallation()) {
            destroyInternal();
            dispatchSessionFinished(RequestStatus.SYS_ETIMEDOUT, "APEX packages can only be installed using staged sessions.", null);
            return;
        }
        List<PackageInstallerSession> childSessions = getChildSessionsNotLocked();
        try {
            synchronized (this.mLock) {
                installNonStagedLocked(childSessions);
            }
        } catch (PackageManagerException e) {
            String completeMsg = ExceptionUtils.getCompleteMessage(e);
            Slog.e(TAG, "Commit of session " + this.sessionId + " failed: " + completeMsg);
            destroyInternal();
            dispatchSessionFinished(e.error, completeMsg, null);
        }
    }

    private void installNonStagedLocked(List<PackageInstallerSession> childSessions) throws PackageManagerException {
        PackageManagerService.ActiveInstallSession installingSession = makeSessionActiveLocked();
        if (installingSession == null) {
            return;
        }
        if (isMultiPackage()) {
            List<PackageManagerService.ActiveInstallSession> installingChildSessions = new ArrayList<>(childSessions.size());
            boolean success = true;
            PackageManagerException failure = null;
            for (int i = 0; i < childSessions.size(); i++) {
                PackageInstallerSession session = childSessions.get(i);
                try {
                    PackageManagerService.ActiveInstallSession installingChildSession = session.makeSessionActiveLocked();
                    if (installingChildSession != null) {
                        installingChildSessions.add(installingChildSession);
                    }
                } catch (PackageManagerException e) {
                    failure = e;
                    success = false;
                }
            }
            if (!success) {
                sendOnPackageInstalled(this.mContext, this.mRemoteStatusReceiver, this.sessionId, isInstallerDeviceOwnerOrAffiliatedProfileOwnerLocked(), this.userId, null, failure.error, failure.getLocalizedMessage(), null);
                return;
            } else {
                this.mPm.installStage(installingChildSessions);
                return;
            }
        }
        this.mPm.installStage(installingSession);
    }

    private PackageManagerService.ActiveInstallSession makeSessionActiveLocked() throws PackageManagerException {
        IPackageInstallObserver2.Stub stub;
        UserHandle user;
        if (this.mRelinquished) {
            throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Session relinquished");
        }
        if (this.mDestroyed) {
            throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Session destroyed");
        }
        if (!this.mSealed) {
            throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Session not sealed");
        }
        if (isApexInstallation()) {
            stub = null;
        } else {
            if (!this.params.isMultiPackage) {
                Objects.requireNonNull(this.mPackageName);
                Objects.requireNonNull(this.mSigningDetails);
                Objects.requireNonNull(this.mResolvedBaseFile);
                if (needToAskForPermissionsLocked()) {
                    Intent intent = new Intent("android.content.pm.action.CONFIRM_INSTALL");
                    intent.setPackage(this.mPm.getPackageInstallerPackageName());
                    intent.putExtra("android.content.pm.extra.SESSION_ID", this.sessionId);
                    sendOnUserActionRequired(this.mContext, this.mRemoteStatusReceiver, this.sessionId, intent);
                    closeInternal(false);
                    return null;
                }
                if (this.params.mode == 2) {
                    try {
                        List<File> fromFiles = this.mResolvedInheritedFiles;
                        File toDir = this.stageDir;
                        Slog.d(TAG, "Inherited files: " + this.mResolvedInheritedFiles);
                        if (!this.mResolvedInheritedFiles.isEmpty() && this.mInheritedFilesBase == null) {
                            throw new IllegalStateException("mInheritedFilesBase == null");
                        }
                        if (isLinkPossible(fromFiles, toDir)) {
                            if (!this.mResolvedInstructionSets.isEmpty()) {
                                File oatDir = new File(toDir, "oat");
                                createOatDirs(this.mResolvedInstructionSets, oatDir);
                            }
                            if (!this.mResolvedNativeLibPaths.isEmpty()) {
                                for (String libPath : this.mResolvedNativeLibPaths) {
                                    int splitIndex = libPath.lastIndexOf(47);
                                    if (splitIndex < 0 || splitIndex >= libPath.length() - 1) {
                                        Slog.e(TAG, "Skipping native library creation for linking due to invalid path: " + libPath);
                                    } else {
                                        String libDirPath = libPath.substring(1, splitIndex);
                                        File libDir = new File(toDir, libDirPath);
                                        if (!libDir.exists()) {
                                            NativeLibraryHelper.createNativeLibrarySubdir(libDir);
                                        }
                                        String archDirPath = libPath.substring(splitIndex + 1);
                                        NativeLibraryHelper.createNativeLibrarySubdir(new File(libDir, archDirPath));
                                    }
                                }
                            }
                            linkFiles(fromFiles, toDir, this.mInheritedFilesBase);
                        } else {
                            copyFiles(fromFiles, toDir);
                        }
                    } catch (IOException e) {
                        throw new PackageManagerException(-4, "Failed to inherit existing install", e);
                    }
                }
                this.mInternalProgress = 0.5f;
                computeProgressLocked(true);
                extractNativeLibraries(this.stageDir, this.params.abiOverride, mayInheritNativeLibs());
            }
            stub = new IPackageInstallObserver2.Stub() { // from class: com.android.server.pm.PackageInstallerSession.5
                public void onUserActionRequired(Intent intent2) {
                    throw new IllegalStateException();
                }

                public void onPackageInstalled(String basePackageName, int returnCode, String msg, Bundle extras) {
                    PackageInstallerSession.this.destroyInternal();
                    PackageInstallerSession.this.dispatchSessionFinished(returnCode, msg, extras);
                }
            };
        }
        if ((this.params.installFlags & 64) != 0) {
            user = UserHandle.ALL;
        } else {
            user = new UserHandle(this.userId);
        }
        this.mRelinquished = true;
        return new PackageManagerService.ActiveInstallSession(this.mPackageName, this.stageDir, stub, this.sessionId, this.params, this.mInstallerUid, this.mInstallSource, user, this.mSigningDetails);
    }

    private static void maybeRenameFile(File from, File to) throws PackageManagerException {
        if (!from.equals(to) && !from.renameTo(to)) {
            throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Could not rename file " + from + " to " + to);
        }
    }

    private void logDataLoaderInstallationSession(int returnCode) {
        String packageNameToLog = (this.params.installFlags & 32) == 0 ? this.mPackageName : "";
        long currentTimestamp = System.currentTimeMillis();
        FrameworkStatsLog.write(AudioChannelMask.OUT_SURROUND, isIncrementalInstallation(), packageNameToLog, currentTimestamp - this.createdMillis, returnCode, getApksSize());
    }

    private long getApksSize() {
        File apkDirOrPath;
        PackageSetting ps = this.mPm.getPackageSetting(this.mPackageName);
        if (ps == null || (apkDirOrPath = ps.codePath) == null) {
            return 0L;
        }
        if (apkDirOrPath.isFile() && apkDirOrPath.getName().toLowerCase().endsWith(".apk")) {
            return apkDirOrPath.length();
        }
        if (!apkDirOrPath.isDirectory()) {
            return 0L;
        }
        File[] files = apkDirOrPath.listFiles();
        long apksSize = 0;
        for (int i = 0; i < files.length; i++) {
            if (files[i].getName().toLowerCase().endsWith(".apk")) {
                apksSize += files[i].length();
            }
        }
        return apksSize;
    }

    private boolean mayInheritNativeLibs() {
        return SystemProperties.getBoolean(PROPERTY_NAME_INHERIT_NATIVE, true) && this.params.mode == 2 && (this.params.installFlags & 1) != 0;
    }

    private boolean isApexInstallation() {
        return (this.params.installFlags & 131072) != 0;
    }

    private void validateApexInstallLocked() throws PackageManagerException {
        String targetName;
        List<File> addedFiles = getAddedApksLocked();
        if (addedFiles.isEmpty()) {
            throw new PackageManagerException(-2, String.format("Session: %d. No packages staged in %s", Integer.valueOf(this.sessionId), this.stageDir.getAbsolutePath()));
        }
        if (ArrayUtils.size(addedFiles) > 1) {
            throw new PackageManagerException(-2, "Too many files for apex install");
        }
        File addedFile = addedFiles.get(0);
        String sourceName = addedFile.getName();
        if (sourceName.endsWith(".apex")) {
            targetName = sourceName;
        } else {
            targetName = sourceName + ".apex";
        }
        if (!FileUtils.isValidExtFilename(targetName)) {
            throw new PackageManagerException(-2, "Invalid filename: " + targetName);
        }
        File targetFile = new File(this.stageDir, targetName);
        resolveAndStageFile(addedFile, targetFile);
        this.mResolvedBaseFile = targetFile;
        this.mPackageName = null;
        try {
            PackageParser.ApkLite apk = PackageParser.parseApkLite(targetFile, 32);
            if (this.mPackageName == null) {
                this.mPackageName = apk.packageName;
                this.mVersionCode = apk.getLongVersionCode();
            }
        } catch (PackageParser.PackageParserException e) {
            throw PackageManagerException.from(e);
        }
    }

    private void validateApkInstallLocked() throws PackageManagerException {
        File[] libDirs;
        List<String> libDirsToInherit;
        List<File> libFilesToInherit;
        File[] fileArr;
        File packageInstallDir;
        List<String> libDirsToInherit2;
        List<File> libFilesToInherit2;
        File[] archSubdirs;
        File oatDir;
        PackageParser.ApkLite existingBase;
        boolean z;
        this.mPackageName = null;
        this.mVersionCode = -1L;
        this.mSigningDetails = PackageParser.SigningDetails.UNKNOWN;
        this.mResolvedBaseFile = null;
        this.mResolvedStagedFiles.clear();
        this.mResolvedInheritedFiles.clear();
        PackageInfo pkgInfo = this.mPm.getPackageInfo(this.params.appPackageName, AudioFormat.AAC_ERLC, this.userId);
        if (this.params.mode != 2 || (pkgInfo != null && pkgInfo.applicationInfo != null)) {
            this.mVerityFound = PackageManagerServiceUtils.isApkVerityEnabled() && this.params.mode == 2 && VerityUtils.hasFsverity(pkgInfo.applicationInfo.getBaseCodePath());
            List<File> removedFiles = getRemovedFilesLocked();
            List<String> removeSplitList = new ArrayList<>();
            if (!removedFiles.isEmpty()) {
                for (File removedFile : removedFiles) {
                    String fileName = removedFile.getName();
                    removeSplitList.add(fileName.substring(0, fileName.length() - REMOVE_MARKER_EXTENSION.length()));
                }
            }
            List<File> addedFiles = getAddedApksLocked();
            if (addedFiles.isEmpty() && removeSplitList.size() == 0) {
                throw new PackageManagerException(-2, String.format("Session: %d. No packages staged in %s", Integer.valueOf(this.sessionId), this.stageDir.getAbsolutePath()));
            }
            ArraySet<String> stagedSplits = new ArraySet<>();
            ParseTypeImpl input = ParseTypeImpl.forDefaultParsing();
            PackageParser.ApkLite baseApk = null;
            for (File addedFile : addedFiles) {
                ParseResult<PackageParser.ApkLite> result = ApkLiteParseUtils.parseApkLite(input.reset(), addedFile, 32);
                if (result.isError()) {
                    throw new PackageManagerException(result.getErrorCode(), result.getErrorMessage(), result.getException());
                }
                PackageParser.ApkLite apk = (PackageParser.ApkLite) result.getResult();
                if (!stagedSplits.add(apk.splitName)) {
                    throw new PackageManagerException(-2, "Split " + apk.splitName + " was defined multiple times");
                }
                if (this.mPackageName == null) {
                    this.mPackageName = apk.packageName;
                    this.mVersionCode = apk.getLongVersionCode();
                }
                if (this.mSigningDetails == PackageParser.SigningDetails.UNKNOWN) {
                    this.mSigningDetails = apk.signingDetails;
                }
                assertApkConsistentLocked(String.valueOf(addedFile), apk);
                String targetName = apk.splitName == null ? "base.apk" : "split_" + apk.splitName + ".apk";
                if (!FileUtils.isValidExtFilename(targetName)) {
                    throw new PackageManagerException(-2, "Invalid filename: " + targetName);
                }
                File targetFile = new File(this.stageDir, targetName);
                resolveAndStageFile(addedFile, targetFile);
                if (apk.splitName == null) {
                    this.mResolvedBaseFile = targetFile;
                    baseApk = apk;
                }
                File dexMetadataFile = DexMetadataHelper.findDexMetadataForFile(addedFile);
                if (dexMetadataFile != null) {
                    if (!FileUtils.isValidExtFilename(dexMetadataFile.getName())) {
                        throw new PackageManagerException(-2, "Invalid filename: " + dexMetadataFile);
                    }
                    File targetDexMetadataFile = new File(this.stageDir, DexMetadataHelper.buildDexMetadataPathForApk(targetName));
                    resolveAndStageFile(dexMetadataFile, targetDexMetadataFile);
                }
                removeSplitList = removeSplitList;
                removedFiles = removedFiles;
            }
            List<String> removeSplitList2 = removeSplitList;
            if (removeSplitList2.size() > 0) {
                if (pkgInfo == null) {
                    throw new PackageManagerException(-2, "Missing existing base package for " + this.mPackageName);
                }
                for (String splitName : removeSplitList2) {
                    if (!ArrayUtils.contains(pkgInfo.splitNames, splitName)) {
                        throw new PackageManagerException(-2, "Split not found: " + splitName);
                    }
                }
                if (this.mPackageName == null) {
                    this.mPackageName = pkgInfo.packageName;
                    this.mVersionCode = pkgInfo.getLongVersionCode();
                }
                if (this.mSigningDetails == PackageParser.SigningDetails.UNKNOWN) {
                    try {
                        this.mSigningDetails = ApkSignatureVerifier.unsafeGetCertsWithoutVerification(pkgInfo.applicationInfo.sourceDir, 1);
                    } catch (PackageParser.PackageParserException e) {
                        throw new PackageManagerException(-2, "Couldn't obtain signatures from base APK");
                    }
                }
            }
            if (this.mInstallerUid != this.mOriginalInstallerUid && (TextUtils.isEmpty(this.mPackageName) || !this.mPackageName.equals(this.mOriginalInstallerPackageName))) {
                throw new PackageManagerException(-23, "Can only transfer sessions that update the original installer");
            }
            if (this.params.mode == 1) {
                if (!stagedSplits.contains(null)) {
                    throw new PackageManagerException(-2, "Full install must include a base package");
                }
            } else {
                ApplicationInfo appInfo = pkgInfo.applicationInfo;
                ParseResult<PackageParser.PackageLite> pkgLiteResult = ApkLiteParseUtils.parsePackageLite(input.reset(), new File(appInfo.getCodePath()), 0);
                if (pkgLiteResult.isError()) {
                    throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, pkgLiteResult.getErrorMessage(), pkgLiteResult.getException());
                }
                PackageParser.PackageLite existing = (PackageParser.PackageLite) pkgLiteResult.getResult();
                ParseResult<PackageParser.ApkLite> apkLiteResult = ApkLiteParseUtils.parseApkLite(input.reset(), new File(appInfo.getBaseCodePath()), 32);
                if (apkLiteResult.isError()) {
                    throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, apkLiteResult.getErrorMessage(), apkLiteResult.getException());
                }
                PackageParser.ApkLite existingBase2 = (PackageParser.ApkLite) apkLiteResult.getResult();
                assertApkConsistentLocked("Existing base", existingBase2);
                if (this.mResolvedBaseFile != null) {
                    if ((this.params.installFlags & 4096) != 0) {
                        EventLog.writeEvent(1397638484, "219044664");
                        this.params.setDontKillApp(false);
                    }
                } else {
                    File file = new File(appInfo.getBaseCodePath());
                    this.mResolvedBaseFile = file;
                    resolveInheritedFile(file);
                    File baseDexMetadataFile = DexMetadataHelper.findDexMetadataForFile(this.mResolvedBaseFile);
                    if (baseDexMetadataFile != null) {
                        resolveInheritedFile(baseDexMetadataFile);
                    }
                    baseApk = existingBase2;
                }
                if (!ArrayUtils.isEmpty(existing.splitNames)) {
                    int i = 0;
                    while (i < existing.splitNames.length) {
                        String splitName2 = existing.splitNames[i];
                        PackageInfo pkgInfo2 = pkgInfo;
                        File splitFile = new File(existing.splitCodePaths[i]);
                        boolean splitRemoved = removeSplitList2.contains(splitName2);
                        if (stagedSplits.contains(splitName2) || splitRemoved) {
                            existingBase = existingBase2;
                        } else {
                            resolveInheritedFile(splitFile);
                            existingBase = existingBase2;
                            File splitDexMetadataFile = DexMetadataHelper.findDexMetadataForFile(splitFile);
                            if (splitDexMetadataFile != null) {
                                resolveInheritedFile(splitDexMetadataFile);
                            }
                        }
                        i++;
                        pkgInfo = pkgInfo2;
                        existingBase2 = existingBase;
                    }
                }
                File packageInstallDir2 = new File(appInfo.getBaseCodePath()).getParentFile();
                this.mInheritedFilesBase = packageInstallDir2;
                File oatDir2 = new File(packageInstallDir2, "oat");
                if (oatDir2.exists() && (archSubdirs = oatDir2.listFiles()) != null && archSubdirs.length > 0) {
                    String[] instructionSets = InstructionSets.getAllDexCodeInstructionSets();
                    int length = archSubdirs.length;
                    int i2 = 0;
                    while (i2 < length) {
                        File archSubDir = archSubdirs[i2];
                        File[] archSubdirs2 = archSubdirs;
                        if (!ArrayUtils.contains(instructionSets, archSubDir.getName())) {
                            oatDir = oatDir2;
                        } else {
                            File[] files = archSubDir.listFiles();
                            if (files != null) {
                                oatDir = oatDir2;
                                if (files.length != 0) {
                                    this.mResolvedInstructionSets.add(archSubDir.getName());
                                    this.mResolvedInheritedFiles.addAll(Arrays.asList(files));
                                }
                            } else {
                                oatDir = oatDir2;
                            }
                        }
                        i2++;
                        archSubdirs = archSubdirs2;
                        oatDir2 = oatDir;
                        existing = existing;
                    }
                }
                if (mayInheritNativeLibs() && removeSplitList2.isEmpty()) {
                    File[] libDirs2 = {new File(packageInstallDir2, "lib"), new File(packageInstallDir2, "lib64")};
                    int length2 = libDirs2.length;
                    int i3 = 0;
                    while (i3 < length2) {
                        File libDir = libDirs2[i3];
                        if (!libDir.exists()) {
                            packageInstallDir2 = packageInstallDir2;
                            libDirs = libDirs2;
                        } else if (libDir.isDirectory()) {
                            List<String> libDirsToInherit3 = new ArrayList<>();
                            List<File> libFilesToInherit3 = new ArrayList<>();
                            File[] fileArrListFiles = libDir.listFiles();
                            int i4 = 0;
                            for (int length3 = fileArrListFiles.length; i4 < length3; length3 = length3) {
                                libDirs = libDirs2;
                                File archSubDir2 = fileArrListFiles[i4];
                                if (!archSubDir2.isDirectory()) {
                                    fileArr = fileArrListFiles;
                                    packageInstallDir = packageInstallDir2;
                                    libDirsToInherit2 = libDirsToInherit3;
                                    libFilesToInherit2 = libFilesToInherit3;
                                } else {
                                    try {
                                        String relLibPath = getRelativePath(archSubDir2, packageInstallDir2);
                                        fileArr = fileArrListFiles;
                                        File[] files2 = archSubDir2.listFiles();
                                        if (files2 != null) {
                                            packageInstallDir = packageInstallDir2;
                                            if (files2.length == 0) {
                                                libDirsToInherit2 = libDirsToInherit3;
                                                libFilesToInherit2 = libFilesToInherit3;
                                            } else {
                                                libDirsToInherit2 = libDirsToInherit3;
                                                libDirsToInherit2.add(relLibPath);
                                                libFilesToInherit2 = libFilesToInherit3;
                                                libFilesToInherit2.addAll(Arrays.asList(files2));
                                            }
                                        } else {
                                            packageInstallDir = packageInstallDir2;
                                            libDirsToInherit2 = libDirsToInherit3;
                                            libFilesToInherit2 = libFilesToInherit3;
                                        }
                                    } catch (IOException e2) {
                                        libDirsToInherit = libDirsToInherit3;
                                        libFilesToInherit = libFilesToInherit3;
                                        Slog.e(TAG, "Skipping linking of native library directory!", e2);
                                        libDirsToInherit.clear();
                                        libFilesToInherit.clear();
                                    }
                                }
                                i4++;
                                libDirsToInherit3 = libDirsToInherit2;
                                libFilesToInherit3 = libFilesToInherit2;
                                libDirs2 = libDirs;
                                fileArrListFiles = fileArr;
                                packageInstallDir2 = packageInstallDir;
                            }
                            libDirs = libDirs2;
                            libDirsToInherit = libDirsToInherit3;
                            libFilesToInherit = libFilesToInherit3;
                            for (String subDir : libDirsToInherit) {
                                if (!this.mResolvedNativeLibPaths.contains(subDir)) {
                                    this.mResolvedNativeLibPaths.add(subDir);
                                }
                            }
                            this.mResolvedInheritedFiles.addAll(libFilesToInherit);
                        } else {
                            packageInstallDir2 = packageInstallDir2;
                            libDirs = libDirs2;
                        }
                        i3++;
                        removeSplitList2 = removeSplitList2;
                        libDirs2 = libDirs;
                        packageInstallDir2 = packageInstallDir2;
                    }
                }
            }
            if (baseApk.useEmbeddedDex) {
                for (File file2 : this.mResolvedStagedFiles) {
                    if (file2.getName().endsWith(".apk") && !DexManager.auditUncompressedDexInApk(file2.getPath())) {
                        throw new PackageManagerException(-2, "Some dex are not uncompressed and aligned correctly for " + this.mPackageName);
                    }
                }
            }
            if (baseApk.isSplitRequired) {
                z = true;
                if (stagedSplits.size() <= 1) {
                    throw new PackageManagerException(-28, "Missing split for " + this.mPackageName);
                }
            } else {
                z = true;
            }
            boolean isInstallerShell = this.mInstallerUid == INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS ? z : false;
            if (isInstallerShell && isIncrementalInstallation() && this.mIncrementalFileStorages != null && !baseApk.debuggable && !baseApk.profilableByShell) {
                this.mIncrementalFileStorages.disableReadLogs();
                return;
            }
            return;
        }
        throw new PackageManagerException(-2, "Missing existing base package");
    }

    private void resolveAndStageFile(File origFile, File targetFile) throws PackageManagerException {
        this.mResolvedStagedFiles.add(targetFile);
        maybeRenameFile(origFile, targetFile);
        File originalSignature = new File(VerityUtils.getFsveritySignatureFilePath(origFile.getPath()));
        if (originalSignature.exists()) {
            if (!this.mVerityFound) {
                this.mVerityFound = true;
                if (this.mResolvedStagedFiles.size() > 1) {
                    throw new PackageManagerException(-118, "Some file is missing fs-verity signature");
                }
            }
            File stagedSignature = new File(VerityUtils.getFsveritySignatureFilePath(targetFile.getPath()));
            maybeRenameFile(originalSignature, stagedSignature);
            this.mResolvedStagedFiles.add(stagedSignature);
            return;
        }
        if (!this.mVerityFound) {
            return;
        }
        throw new PackageManagerException(-118, "Missing corresponding fs-verity signature to " + origFile);
    }

    private void resolveInheritedFile(File origFile) {
        this.mResolvedInheritedFiles.add(origFile);
        File fsveritySignatureFile = new File(VerityUtils.getFsveritySignatureFilePath(origFile.getPath()));
        if (fsveritySignatureFile.exists()) {
            this.mResolvedInheritedFiles.add(fsveritySignatureFile);
        }
    }

    private void assertApkConsistentLocked(String tag, PackageParser.ApkLite apk) throws PackageManagerException {
        if (!this.mPackageName.equals(apk.packageName)) {
            throw new PackageManagerException(-2, tag + " package " + apk.packageName + " inconsistent with " + this.mPackageName);
        }
        if (this.params.appPackageName != null && !this.params.appPackageName.equals(apk.packageName)) {
            throw new PackageManagerException(-2, tag + " specified package " + this.params.appPackageName + " inconsistent with " + apk.packageName);
        }
        if (this.mVersionCode != apk.getLongVersionCode()) {
            throw new PackageManagerException(-2, tag + " version code " + apk.versionCode + " inconsistent with " + this.mVersionCode);
        }
        if (!this.mSigningDetails.signaturesMatchExactly(apk.signingDetails)) {
            throw new PackageManagerException(-2, tag + " signatures are inconsistent");
        }
    }

    private boolean isLinkPossible(List<File> fromFiles, File toDir) {
        try {
            StructStat toStat = Os.stat(toDir.getAbsolutePath());
            for (File fromFile : fromFiles) {
                StructStat fromStat = Os.stat(fromFile.getAbsolutePath());
                if (fromStat.st_dev != toStat.st_dev) {
                    return false;
                }
            }
            return true;
        } catch (ErrnoException e) {
            Slog.w(TAG, "Failed to detect if linking possible: " + e);
            return false;
        }
    }

    public int getInstallerUid() {
        int i;
        synchronized (this.mLock) {
            i = this.mInstallerUid;
        }
        return i;
    }

    String getPackageName() {
        String str;
        synchronized (this.mLock) {
            str = this.mPackageName;
        }
        return str;
    }

    public long getUpdatedMillis() {
        long j;
        synchronized (this.mLock) {
            j = this.updatedMillis;
        }
        return j;
    }

    String getInstallerPackageName() {
        return getInstallSource().installerPackageName;
    }

    InstallSource getInstallSource() {
        InstallSource installSource;
        synchronized (this.mLock) {
            installSource = this.mInstallSource;
        }
        return installSource;
    }

    private static String getRelativePath(File file, File base) throws IOException {
        String pathStr = file.getAbsolutePath();
        String baseStr = base.getAbsolutePath();
        if (pathStr.contains("/.")) {
            throw new IOException("Invalid path (was relative) : " + pathStr);
        }
        if (pathStr.startsWith(baseStr)) {
            return pathStr.substring(baseStr.length());
        }
        throw new IOException("File: " + pathStr + " outside base: " + baseStr);
    }

    private void createOatDirs(List<String> instructionSets, File fromDir) throws PackageManagerException {
        for (String instructionSet : instructionSets) {
            try {
                this.mPm.mInstaller.createOatDir(fromDir.getAbsolutePath(), instructionSet);
            } catch (Installer.InstallerException e) {
                throw PackageManagerException.from(e);
            }
        }
    }

    private void linkFiles(List<File> fromFiles, File toDir, File fromDir) throws IOException {
        for (File fromFile : fromFiles) {
            String relativePath = getRelativePath(fromFile, fromDir);
            try {
                this.mPm.mInstaller.linkFile(relativePath, fromDir.getAbsolutePath(), toDir.getAbsolutePath());
            } catch (Installer.InstallerException e) {
                throw new IOException("failed linkOrCreateDir(" + relativePath + ", " + fromDir + ", " + toDir + ")", e);
            }
        }
        Slog.d(TAG, "Linked " + fromFiles.size() + " files into " + toDir);
    }

    private static void copyFiles(List<File> fromFiles, File toDir) throws IOException {
        for (File file : toDir.listFiles()) {
            if (file.getName().endsWith(".tmp")) {
                file.delete();
            }
        }
        for (File fromFile : fromFiles) {
            File tmpFile = File.createTempFile("inherit", ".tmp", toDir);
            Slog.d(TAG, "Copying " + fromFile + " to " + tmpFile);
            if (!FileUtils.copyFile(fromFile, tmpFile)) {
                throw new IOException("Failed to copy " + fromFile + " to " + tmpFile);
            }
            try {
                Os.chmod(tmpFile.getAbsolutePath(), 420);
                File toFile = new File(toDir, fromFile.getName());
                Slog.d(TAG, "Renaming " + tmpFile + " to " + toFile);
                if (!tmpFile.renameTo(toFile)) {
                    throw new IOException("Failed to rename " + tmpFile + " to " + toFile);
                }
            } catch (ErrnoException e) {
                throw new IOException("Failed to chmod " + tmpFile);
            }
        }
        Slog.d(TAG, "Copied " + fromFiles.size() + " files into " + toDir);
    }

    private void extractNativeLibraries(File packageDir, String abiOverride, boolean inherit) throws PackageManagerException {
        File libDir = new File(packageDir, "lib");
        if (!inherit) {
            NativeLibraryHelper.removeNativeBinariesFromDirLI(libDir, true);
        }
        NativeLibraryHelper.Handle handle = null;
        try {
            try {
                handle = NativeLibraryHelper.Handle.create(packageDir);
                int res = NativeLibraryHelper.copyNativeBinariesWithOverride(handle, libDir, abiOverride, isIncrementalInstallation());
                if (res != 1) {
                    throw new PackageManagerException(res, "Failed to extract native libraries, res=" + res);
                }
                IoUtils.closeQuietly(handle);
            } catch (IOException e) {
                throw new PackageManagerException(RequestStatus.SYS_ETIMEDOUT, "Failed to extract native libraries", e);
            }
        } catch (Throwable th) {
            IoUtils.closeQuietly(handle);
            throw th;
        }
    }

    void setPermissionsResult(boolean accepted) {
        if (!this.mSealed) {
            throw new SecurityException("Must be sealed to accept permissions");
        }
        if (accepted) {
            synchronized (this.mLock) {
                this.mPermissionsManuallyAccepted = true;
                this.mHandler.obtainMessage(2).sendToTarget();
            }
            return;
        }
        destroyInternal();
        dispatchSessionFinished(-115, "User rejected permissions", null);
    }

    void addChildSessionIdInternal(int sessionId) {
        this.mChildSessionIds.put(sessionId, 0);
    }

    public void open() throws IOException {
        boolean wasPrepared;
        if (this.mActiveCount.getAndIncrement() == 0) {
            this.mCallback.onSessionActiveChanged(this, true);
        }
        synchronized (this.mLock) {
            wasPrepared = this.mPrepared;
            if (!this.mPrepared) {
                if (this.stageDir != null) {
                    PackageInstallerService.prepareStageDir(this.stageDir);
                } else if (!this.params.isMultiPackage) {
                    throw new IllegalArgumentException("stageDir must be set");
                }
                this.mPrepared = true;
            }
        }
        if (!wasPrepared) {
            this.mCallback.onSessionPrepared(this);
        }
    }

    public void close() {
        closeInternal(true);
    }

    private void closeInternal(boolean checkCaller) {
        int activeCount;
        synchronized (this.mLock) {
            if (checkCaller) {
                assertCallerIsOwnerOrRootLocked();
                activeCount = this.mActiveCount.decrementAndGet();
            } else {
                activeCount = this.mActiveCount.decrementAndGet();
            }
            throw th;
        }
        if (activeCount == 0) {
            this.mCallback.onSessionActiveChanged(this, false);
        }
    }

    public void abandon() {
        if (hasParentSessionId()) {
            throw new IllegalStateException("Session " + this.sessionId + " is a child of multi-package session " + this.mParentSessionId + " and may not be abandoned directly.");
        }
        List<PackageInstallerSession> childSessions = getChildSessionsNotLocked();
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootOrSystemLocked();
            if (isStagedAndInTerminalState()) {
                return;
            }
            if (this.mCommitted && this.params.isStaged) {
                this.mDestroyed = true;
                if (!this.mStagingManager.abortCommittedSessionLocked(this)) {
                    this.mCallback.onStagedSessionChanged(this);
                    return;
                }
                cleanStageDir(childSessions);
            }
            if (this.mRelinquished) {
                Slog.d(TAG, "Ignoring abandon after commit relinquished control");
            } else {
                destroyInternal();
                dispatchSessionFinished(-115, "Session was abandoned", null);
            }
        }
    }

    public boolean isMultiPackage() {
        return this.params.isMultiPackage;
    }

    public boolean isStaged() {
        return this.params.isStaged;
    }

    public int getInstallFlags() {
        return this.params.installFlags;
    }

    public DataLoaderParamsParcel getDataLoaderParams() {
        this.mContext.enforceCallingOrSelfPermission("com.android.permission.USE_INSTALLER_V2", null);
        if (this.params.dataLoaderParams != null) {
            return this.params.dataLoaderParams.getData();
        }
        return null;
    }

    public void addFile(int location, String name, long lengthBytes, byte[] metadata, byte[] signature) {
        this.mContext.enforceCallingOrSelfPermission("com.android.permission.USE_INSTALLER_V2", null);
        if (!isDataLoaderInstallation()) {
            throw new IllegalStateException("Cannot add files to non-data loader installation session.");
        }
        if (isStreamingInstallation() && location != 0) {
            throw new IllegalArgumentException("Non-incremental installation only supports /data/app placement: " + name);
        }
        if (metadata == null) {
            throw new IllegalArgumentException("DataLoader installation requires valid metadata: " + name);
        }
        if (!FileUtils.isValidExtFilename(name)) {
            throw new IllegalArgumentException("Invalid name: " + name);
        }
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotSealedLocked("addFile");
            if (!this.mFiles.add(new FileEntry(this.mFiles.size(), new InstallationFile(location, name, lengthBytes, metadata, signature)))) {
                throw new IllegalArgumentException("File already added: " + name);
            }
        }
    }

    public void removeFile(int location, String name) {
        this.mContext.enforceCallingOrSelfPermission("com.android.permission.USE_INSTALLER_V2", null);
        if (!isDataLoaderInstallation()) {
            throw new IllegalStateException("Cannot add files to non-data loader installation session.");
        }
        if (TextUtils.isEmpty(this.params.appPackageName)) {
            throw new IllegalStateException("Must specify package name to remove a split");
        }
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotSealedLocked("removeFile");
            if (!this.mFiles.add(new FileEntry(this.mFiles.size(), new InstallationFile(location, getRemoveMarkerName(name), -1L, (byte[]) null, (byte[]) null)))) {
                throw new IllegalArgumentException("File already removed: " + name);
            }
        }
    }

    private boolean prepareDataLoaderLocked() throws PackageManagerException {
        if (!isDataLoaderInstallation() || this.mDataLoaderFinished) {
            return true;
        }
        IncrementalFileStorages incrementalFileStorages = this.mIncrementalFileStorages;
        if (incrementalFileStorages != null) {
            try {
                incrementalFileStorages.startLoading();
                return false;
            } catch (IOException e) {
                throw new PackageManagerException(-20, e.getMessage(), e.getCause());
            }
        }
        final List<InstallationFileParcel> addedFiles = new ArrayList<>();
        final List<String> removedFiles = new ArrayList<>();
        InstallationFile[] files = getInstallationFilesLocked();
        for (InstallationFile file : files) {
            if (!sAddedFilter.accept(new File(this.stageDir, file.getName()))) {
                if (sRemovedFilter.accept(new File(this.stageDir, file.getName()))) {
                    String name = file.getName().substring(0, file.getName().length() - REMOVE_MARKER_EXTENSION.length());
                    removedFiles.add(name);
                }
            } else {
                addedFiles.add(file.getData());
            }
        }
        final DataLoaderManager dataLoaderManager = (DataLoaderManager) this.mContext.getSystemService(DataLoaderManager.class);
        if (dataLoaderManager == null) {
            throw new PackageManagerException(-20, "Failed to find data loader manager service");
        }
        final DataLoaderParams params = this.params.dataLoaderParams;
        final boolean manualStartAndDestroy = !isIncrementalInstallation();
        IDataLoaderStatusListener.Stub stub = new IDataLoaderStatusListener.Stub() { // from class: com.android.server.pm.PackageInstallerSession.6
            public void onStatusChanged(int dataLoaderId, int status) {
                if (status != 0 && status != 4) {
                    if (PackageInstallerSession.this.mDestroyed || PackageInstallerSession.this.mDataLoaderFinished) {
                        if (status == 8) {
                            PackageInstallerSession.this.onStorageUnhealthy();
                            return;
                        }
                        return;
                    }
                    try {
                        IDataLoader dataLoader = dataLoaderManager.getDataLoader(dataLoaderId);
                        if (dataLoader == null) {
                            PackageInstallerSession.this.mDataLoaderFinished = true;
                            PackageInstallerSession.this.dispatchSessionVerificationFailure(-20, "Failure to obtain data loader");
                        }
                        switch (status) {
                            case 1:
                                if (manualStartAndDestroy) {
                                    FileSystemControlParcel control = new FileSystemControlParcel();
                                    control.callback = PackageInstallerSession.this.new FileSystemConnector(addedFiles);
                                    dataLoader.create(dataLoaderId, params.getData(), control, this);
                                }
                                break;
                            case 2:
                                if (manualStartAndDestroy) {
                                    dataLoader.start(dataLoaderId);
                                }
                                break;
                            case 3:
                                dataLoader.prepareImage(dataLoaderId, (InstallationFileParcel[]) addedFiles.toArray(new InstallationFileParcel[addedFiles.size()]), (String[]) removedFiles.toArray(new String[removedFiles.size()]));
                                break;
                            case 4:
                            default:
                                break;
                            case 5:
                                PackageInstallerSession.this.mDataLoaderFinished = true;
                                if (PackageInstallerSession.this.hasParentSessionId()) {
                                    PackageInstallerSession.this.mSessionProvider.getSession(PackageInstallerSession.this.mParentSessionId).dispatchStreamValidateAndCommit();
                                } else {
                                    PackageInstallerSession.this.dispatchStreamValidateAndCommit();
                                }
                                if (manualStartAndDestroy) {
                                    dataLoader.destroy(dataLoaderId);
                                }
                                break;
                            case 6:
                                PackageInstallerSession.this.mDataLoaderFinished = true;
                                PackageInstallerSession.this.dispatchSessionVerificationFailure(-20, "Failed to prepare image.");
                                if (manualStartAndDestroy) {
                                    dataLoader.destroy(dataLoaderId);
                                }
                                break;
                            case 7:
                                PackageInstallerSession.this.sendPendingStreaming("DataLoader unavailable");
                                break;
                            case 8:
                                PackageInstallerSession.this.mDataLoaderFinished = true;
                                PackageInstallerSession.this.dispatchSessionVerificationFailure(-20, "DataLoader reported unrecoverable failure.");
                                break;
                        }
                    } catch (RemoteException e2) {
                        PackageInstallerSession.this.sendPendingStreaming(e2.getMessage());
                    }
                }
            }
        };
        if (!manualStartAndDestroy) {
            StorageHealthCheckParams healthCheckParams = new StorageHealthCheckParams();
            healthCheckParams.blockedTimeoutMs = INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS;
            healthCheckParams.unhealthyTimeoutMs = INCREMENTAL_STORAGE_UNHEALTHY_TIMEOUT_MS;
            healthCheckParams.unhealthyMonitoringMs = INCREMENTAL_STORAGE_UNHEALTHY_MONITORING_MS;
            final boolean systemDataLoader = params.getComponentName().getPackageName() == "android";
            try {
                try {
                    this.mIncrementalFileStorages = IncrementalFileStorages.initialize(this.mContext, this.stageDir, params, stub, healthCheckParams, new IStorageHealthListener.Stub() { // from class: com.android.server.pm.PackageInstallerSession.7
                        public void onHealthStatus(int storageId, int status) {
                            if (PackageInstallerSession.this.mDestroyed || PackageInstallerSession.this.mDataLoaderFinished) {
                                if (status == 3) {
                                    PackageInstallerSession.this.onStorageUnhealthy();
                                    return;
                                }
                                return;
                            }
                            if (status == 1 || status == 2) {
                                if (systemDataLoader) {
                                    return;
                                }
                            } else if (status != 3) {
                                return;
                            }
                            PackageInstallerSession.this.mDataLoaderFinished = true;
                            PackageInstallerSession.this.dispatchSessionVerificationFailure(-20, "Image is missing pages required for installation.");
                        }
                    }, addedFiles);
                    return false;
                } catch (IOException e2) {
                    e = e2;
                    throw new PackageManagerException(-20, e.getMessage(), e.getCause());
                }
            } catch (IOException e3) {
                e = e3;
            }
        } else {
            if (dataLoaderManager.bindToDataLoader(this.sessionId, params.getData(), stub)) {
                return false;
            }
            throw new PackageManagerException(-20, "Failed to initialize data loader");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSessionVerificationFailure(int error, String detailMessage) {
        this.mHandler.obtainMessage(4, error, -1, detailMessage).sendToTarget();
    }

    public int[] getChildSessionIds() {
        int[] childSessionIds = this.mChildSessionIds.copyKeys();
        if (childSessionIds != null) {
            return childSessionIds;
        }
        return EMPTY_CHILD_SESSION_ARRAY;
    }

    public void addChildSessionId(int childSessionId) {
        PackageInstallerSession childSession = this.mSessionProvider.getSession(childSessionId);
        if (childSession == null || ((childSession.hasParentSessionId() && childSession.mParentSessionId != this.sessionId) || childSession.mCommitted || childSession.mDestroyed)) {
            throw new IllegalStateException("Unable to add child session " + childSessionId + " as it does not exist or is in an invalid state.");
        }
        synchronized (this.mLock) {
            assertCallerIsOwnerOrRootLocked();
            assertPreparedAndNotSealedLocked("addChildSessionId");
            int indexOfSession = this.mChildSessionIds.indexOfKey(childSessionId);
            if (indexOfSession >= 0) {
                return;
            }
            childSession.setParentSessionId(this.sessionId);
            addChildSessionIdInternal(childSessionId);
        }
    }

    public void removeChildSessionId(int sessionId) {
        PackageInstallerSession session = this.mSessionProvider.getSession(sessionId);
        synchronized (this.mLock) {
            int indexOfSession = this.mChildSessionIds.indexOfKey(sessionId);
            if (session != null) {
                session.setParentSessionId(-1);
            }
            if (indexOfSession < 0) {
                return;
            }
            this.mChildSessionIds.removeAt(indexOfSession);
        }
    }

    void setParentSessionId(int parentSessionId) {
        synchronized (this.mLock) {
            if (parentSessionId != -1) {
                if (this.mParentSessionId != -1) {
                    throw new IllegalStateException("The parent of " + this.sessionId + " is alreadyset to " + this.mParentSessionId);
                }
            }
            this.mParentSessionId = parentSessionId;
        }
    }

    boolean hasParentSessionId() {
        return this.mParentSessionId != -1;
    }

    public int getParentSessionId() {
        return this.mParentSessionId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchSessionFinished(int returnCode, String msg, Bundle extras) {
        IntentSender statusReceiver;
        String packageName;
        synchronized (this.mLock) {
            this.mFinalStatus = returnCode;
            this.mFinalMessage = msg;
            statusReceiver = this.mRemoteStatusReceiver;
            packageName = this.mPackageName;
        }
        if (statusReceiver != null) {
            SomeArgs args = SomeArgs.obtain();
            args.arg1 = packageName;
            args.arg2 = msg;
            args.arg3 = extras;
            args.arg4 = statusReceiver;
            args.argi1 = returnCode;
            this.mHandler.obtainMessage(3, args).sendToTarget();
        }
        boolean success = returnCode == 1;
        boolean isNewInstall = extras == null || !extras.getBoolean("android.intent.extra.REPLACING");
        if (success && isNewInstall && this.mPm.mInstallerService.okToSendBroadcasts() && (this.params.installFlags & 8388608) == 0) {
            this.mPm.sendSessionCommitBroadcast(generateInfoScrubbed(true), this.userId);
        }
        this.mCallback.onSessionFinished(this, success);
        if (isDataLoaderInstallation()) {
            logDataLoaderInstallationSession(returnCode);
        }
    }

    void setStagedSessionReady() {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                return;
            }
            this.mStagedSessionReady = true;
            this.mStagedSessionApplied = false;
            this.mStagedSessionFailed = false;
            this.mStagedSessionErrorCode = 0;
            this.mStagedSessionErrorMessage = "";
            this.mCallback.onStagedSessionChanged(this);
        }
    }

    void setStagedSessionFailed(int errorCode, String errorMessage) {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                return;
            }
            this.mStagedSessionReady = false;
            this.mStagedSessionApplied = false;
            this.mStagedSessionFailed = true;
            this.mStagedSessionErrorCode = errorCode;
            this.mStagedSessionErrorMessage = errorMessage;
            Slog.d(TAG, "Marking session " + this.sessionId + " as failed: " + errorMessage);
            cleanStageDirNotLocked();
            this.mCallback.onStagedSessionChanged(this);
        }
    }

    void setStagedSessionApplied() {
        synchronized (this.mLock) {
            if (this.mDestroyed) {
                return;
            }
            this.mStagedSessionReady = false;
            this.mStagedSessionApplied = true;
            this.mStagedSessionFailed = false;
            this.mStagedSessionErrorCode = 0;
            this.mStagedSessionErrorMessage = "";
            Slog.d(TAG, "Marking session " + this.sessionId + " as applied");
            cleanStageDirNotLocked();
            this.mCallback.onStagedSessionChanged(this);
        }
    }

    boolean isStagedSessionReady() {
        return this.mStagedSessionReady;
    }

    boolean isStagedSessionApplied() {
        return this.mStagedSessionApplied;
    }

    boolean isStagedSessionFailed() {
        return this.mStagedSessionFailed;
    }

    int getStagedSessionErrorCode() {
        return this.mStagedSessionErrorCode;
    }

    String getStagedSessionErrorMessage() {
        return this.mStagedSessionErrorMessage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyInternal() {
        synchronized (this.mLock) {
            this.mSealed = true;
            if (!this.params.isStaged || isStagedAndInTerminalState()) {
                this.mDestroyed = true;
            }
            for (RevocableFileDescriptor fd : this.mFds) {
                fd.revoke();
            }
            for (FileBridge bridge : this.mBridges) {
                bridge.forceClose();
            }
        }
        IncrementalFileStorages incrementalFileStorages = this.mIncrementalFileStorages;
        if (incrementalFileStorages != null) {
            incrementalFileStorages.cleanUp();
            this.mIncrementalFileStorages = null;
        }
        if (this.stageDir != null && !this.params.isStaged) {
            try {
                this.mPm.mInstaller.rmPackageDir(this.stageDir.getAbsolutePath());
            } catch (Installer.InstallerException e) {
            }
        }
    }

    private void cleanStageDirNotLocked() {
        if (Thread.holdsLock(this.mLock)) {
            Slog.wtf(TAG, "Calling thread " + Thread.currentThread().getName() + " is holding mLock", new Throwable());
        }
        cleanStageDir(getChildSessionsNotLocked());
    }

    private void cleanStageDir(List<PackageInstallerSession> childSessions) {
        if (childSessions != null) {
            for (PackageInstallerSession childSession : childSessions) {
                if (childSession != null) {
                    childSession.cleanStageDir();
                }
            }
            return;
        }
        cleanStageDir();
    }

    private void cleanStageDir() {
        IncrementalFileStorages incrementalFileStorages = this.mIncrementalFileStorages;
        if (incrementalFileStorages != null) {
            incrementalFileStorages.cleanUp();
            this.mIncrementalFileStorages = null;
        }
        try {
            this.mPm.mInstaller.rmPackageDir(this.stageDir.getAbsolutePath());
        } catch (Installer.InstallerException e) {
        }
    }

    void dump(IndentingPrintWriter pw) {
        synchronized (this.mLock) {
            dumpLocked(pw);
        }
    }

    private void dumpLocked(IndentingPrintWriter pw) {
        pw.println("Session " + this.sessionId + ":");
        pw.increaseIndent();
        pw.printPair(ATTR_USER_ID, Integer.valueOf(this.userId));
        pw.printPair("mOriginalInstallerUid", Integer.valueOf(this.mOriginalInstallerUid));
        pw.printPair("mOriginalInstallerPackageName", this.mOriginalInstallerPackageName);
        pw.printPair(ATTR_INSTALLER_PACKAGE_NAME, this.mInstallSource.installerPackageName);
        pw.printPair(ATTR_INITIATING_PACKAGE_NAME, this.mInstallSource.initiatingPackageName);
        pw.printPair(ATTR_ORIGINATING_PACKAGE_NAME, this.mInstallSource.originatingPackageName);
        pw.printPair("mInstallerUid", Integer.valueOf(this.mInstallerUid));
        pw.printPair(ATTR_CREATED_MILLIS, Long.valueOf(this.createdMillis));
        pw.printPair(ATTR_UPDATED_MILLIS, Long.valueOf(this.updatedMillis));
        pw.printPair("stageDir", this.stageDir);
        pw.printPair("stageCid", this.stageCid);
        pw.println();
        this.params.dump(pw);
        pw.printPair("mClientProgress", Float.valueOf(this.mClientProgress));
        pw.printPair("mProgress", Float.valueOf(this.mProgress));
        pw.printPair("mCommitted", Boolean.valueOf(this.mCommitted));
        pw.printPair("mSealed", Boolean.valueOf(this.mSealed));
        pw.printPair("mPermissionsManuallyAccepted", Boolean.valueOf(this.mPermissionsManuallyAccepted));
        pw.printPair("mRelinquished", Boolean.valueOf(this.mRelinquished));
        pw.printPair("mDestroyed", Boolean.valueOf(this.mDestroyed));
        pw.printPair("mFds", Integer.valueOf(this.mFds.size()));
        pw.printPair("mBridges", Integer.valueOf(this.mBridges.size()));
        pw.printPair("mFinalStatus", Integer.valueOf(this.mFinalStatus));
        pw.printPair("mFinalMessage", this.mFinalMessage);
        pw.printPair("params.isMultiPackage", Boolean.valueOf(this.params.isMultiPackage));
        pw.printPair("params.isStaged", Boolean.valueOf(this.params.isStaged));
        pw.printPair("mParentSessionId", Integer.valueOf(this.mParentSessionId));
        pw.printPair("mChildSessionIds", this.mChildSessionIds);
        pw.printPair("mStagedSessionApplied", Boolean.valueOf(this.mStagedSessionApplied));
        pw.printPair("mStagedSessionFailed", Boolean.valueOf(this.mStagedSessionFailed));
        pw.printPair("mStagedSessionReady", Boolean.valueOf(this.mStagedSessionReady));
        pw.printPair("mStagedSessionErrorCode", Integer.valueOf(this.mStagedSessionErrorCode));
        pw.printPair("mStagedSessionErrorMessage", this.mStagedSessionErrorMessage);
        pw.println();
        pw.decreaseIndent();
    }

    private static void sendOnUserActionRequired(Context context, IntentSender target, int sessionId, Intent intent) {
        Intent fillIn = new Intent();
        fillIn.putExtra("android.content.pm.extra.SESSION_ID", sessionId);
        fillIn.putExtra("android.content.pm.extra.STATUS", -1);
        fillIn.putExtra("android.intent.extra.INTENT", intent);
        try {
            BroadcastOptions options = BroadcastOptions.makeBasic();
            options.setPendingIntentBackgroundActivityLaunchAllowed(false);
            target.sendIntent(context, 0, fillIn, null, null, null, options.toBundle());
        } catch (IntentSender.SendIntentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendOnPackageInstalled(Context context, IntentSender target, int sessionId, boolean showNotification, int userId, String basePackageName, int returnCode, String msg, Bundle extras) {
        if (1 == returnCode && showNotification) {
            boolean update = extras != null && extras.getBoolean("android.intent.extra.REPLACING");
            Notification notification = PackageInstallerService.buildSuccessNotification(context, context.getResources().getString(update ? R.string.language_picker_section_all : R.string.language_picker_regions_section_suggested), basePackageName, userId);
            if (notification != null) {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                notificationManager.notify(basePackageName, 21, notification);
            }
        }
        Intent fillIn = new Intent();
        fillIn.putExtra("android.content.pm.extra.PACKAGE_NAME", basePackageName);
        fillIn.putExtra("android.content.pm.extra.SESSION_ID", sessionId);
        fillIn.putExtra("android.content.pm.extra.STATUS", PackageManager.installStatusToPublicStatus(returnCode));
        fillIn.putExtra("android.content.pm.extra.STATUS_MESSAGE", PackageManager.installStatusToString(returnCode, msg));
        fillIn.putExtra("android.content.pm.extra.LEGACY_STATUS", returnCode);
        if (extras != null) {
            String existing = extras.getString("android.content.pm.extra.FAILURE_EXISTING_PACKAGE");
            if (!TextUtils.isEmpty(existing)) {
                fillIn.putExtra("android.content.pm.extra.OTHER_PACKAGE_NAME", existing);
            }
        }
        try {
            BroadcastOptions options = BroadcastOptions.makeBasic();
            options.setPendingIntentBackgroundActivityLaunchAllowed(false);
            target.sendIntent(context, 0, fillIn, null, null, null, options.toBundle());
        } catch (IntentSender.SendIntentException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPendingStreaming(String cause) {
        IntentSender statusReceiver;
        synchronized (this.mLock) {
            statusReceiver = this.mRemoteStatusReceiver;
        }
        if (statusReceiver == null) {
            Slog.e(TAG, "Missing receiver for pending streaming status.");
            return;
        }
        Intent intent = new Intent();
        intent.putExtra("android.content.pm.extra.SESSION_ID", this.sessionId);
        intent.putExtra("android.content.pm.extra.STATUS", -2);
        if (!TextUtils.isEmpty(cause)) {
            intent.putExtra("android.content.pm.extra.STATUS_MESSAGE", "Staging Image Not Ready [" + cause + "]");
        } else {
            intent.putExtra("android.content.pm.extra.STATUS_MESSAGE", "Staging Image Not Ready");
        }
        try {
            BroadcastOptions options = BroadcastOptions.makeBasic();
            options.setPendingIntentBackgroundActivityLaunchAllowed(false);
            statusReceiver.sendIntent(this.mContext, 0, intent, null, null, null, options.toBundle());
        } catch (IntentSender.SendIntentException e) {
        }
    }

    private static void writeGrantedRuntimePermissionsLocked(XmlSerializer out, String[] grantedRuntimePermissions) throws IOException {
        if (grantedRuntimePermissions != null) {
            for (String permission : grantedRuntimePermissions) {
                out.startTag(null, TAG_GRANTED_RUNTIME_PERMISSION);
                XmlUtils.writeStringAttribute(out, "name", permission);
                out.endTag(null, TAG_GRANTED_RUNTIME_PERMISSION);
            }
        }
    }

    private static void writeWhitelistedRestrictedPermissionsLocked(XmlSerializer out, List<String> whitelistedRestrictedPermissions) throws IOException {
        if (whitelistedRestrictedPermissions != null) {
            int permissionCount = whitelistedRestrictedPermissions.size();
            for (int i = 0; i < permissionCount; i++) {
                out.startTag(null, TAG_WHITELISTED_RESTRICTED_PERMISSION);
                XmlUtils.writeStringAttribute(out, "name", whitelistedRestrictedPermissions.get(i));
                out.endTag(null, TAG_WHITELISTED_RESTRICTED_PERMISSION);
            }
        }
    }

    private static void writeAutoRevokePermissionsMode(XmlSerializer out, int mode) throws IOException {
        out.startTag(null, TAG_AUTO_REVOKE_PERMISSIONS_MODE);
        XmlUtils.writeIntAttribute(out, ATTR_MODE, mode);
        out.endTag(null, TAG_AUTO_REVOKE_PERMISSIONS_MODE);
    }

    private static File buildAppIconFile(int sessionId, File sessionsDir) {
        return new File(sessionsDir, "app_icon." + sessionId + ".png");
    }

    void write(XmlSerializer out, File sessionsDir) throws IOException {
        synchronized (this.mLock) {
            if (!this.mDestroyed || this.params.isStaged) {
                out.startTag(null, TAG_SESSION);
                XmlUtils.writeIntAttribute(out, ATTR_SESSION_ID, this.sessionId);
                XmlUtils.writeIntAttribute(out, ATTR_USER_ID, this.userId);
                XmlUtils.writeStringAttribute(out, ATTR_INSTALLER_PACKAGE_NAME, this.mInstallSource.installerPackageName);
                XmlUtils.writeIntAttribute(out, ATTR_INSTALLER_UID, this.mInstallerUid);
                XmlUtils.writeStringAttribute(out, ATTR_INITIATING_PACKAGE_NAME, this.mInstallSource.initiatingPackageName);
                XmlUtils.writeStringAttribute(out, ATTR_ORIGINATING_PACKAGE_NAME, this.mInstallSource.originatingPackageName);
                XmlUtils.writeLongAttribute(out, ATTR_CREATED_MILLIS, this.createdMillis);
                XmlUtils.writeLongAttribute(out, ATTR_UPDATED_MILLIS, this.updatedMillis);
                if (this.stageDir != null) {
                    XmlUtils.writeStringAttribute(out, ATTR_SESSION_STAGE_DIR, this.stageDir.getAbsolutePath());
                }
                if (this.stageCid != null) {
                    XmlUtils.writeStringAttribute(out, ATTR_SESSION_STAGE_CID, this.stageCid);
                }
                XmlUtils.writeBooleanAttribute(out, ATTR_PREPARED, isPrepared());
                XmlUtils.writeBooleanAttribute(out, ATTR_COMMITTED, isCommitted());
                XmlUtils.writeBooleanAttribute(out, ATTR_DESTROYED, isDestroyed());
                XmlUtils.writeBooleanAttribute(out, ATTR_SEALED, isSealed());
                XmlUtils.writeBooleanAttribute(out, ATTR_MULTI_PACKAGE, this.params.isMultiPackage);
                XmlUtils.writeBooleanAttribute(out, ATTR_STAGED_SESSION, this.params.isStaged);
                XmlUtils.writeBooleanAttribute(out, ATTR_IS_READY, this.mStagedSessionReady);
                XmlUtils.writeBooleanAttribute(out, ATTR_IS_FAILED, this.mStagedSessionFailed);
                XmlUtils.writeBooleanAttribute(out, ATTR_IS_APPLIED, this.mStagedSessionApplied);
                XmlUtils.writeIntAttribute(out, ATTR_STAGED_SESSION_ERROR_CODE, this.mStagedSessionErrorCode);
                XmlUtils.writeStringAttribute(out, ATTR_STAGED_SESSION_ERROR_MESSAGE, this.mStagedSessionErrorMessage);
                XmlUtils.writeIntAttribute(out, ATTR_PARENT_SESSION_ID, this.mParentSessionId);
                XmlUtils.writeIntAttribute(out, ATTR_MODE, this.params.mode);
                XmlUtils.writeIntAttribute(out, ATTR_INSTALL_FLAGS, this.params.installFlags);
                XmlUtils.writeIntAttribute(out, ATTR_INSTALL_LOCATION, this.params.installLocation);
                XmlUtils.writeLongAttribute(out, ATTR_SIZE_BYTES, this.params.sizeBytes);
                XmlUtils.writeStringAttribute(out, ATTR_APP_PACKAGE_NAME, this.params.appPackageName);
                XmlUtils.writeStringAttribute(out, ATTR_APP_LABEL, this.params.appLabel);
                XmlUtils.writeUriAttribute(out, ATTR_ORIGINATING_URI, this.params.originatingUri);
                XmlUtils.writeIntAttribute(out, ATTR_ORIGINATING_UID, this.params.originatingUid);
                XmlUtils.writeUriAttribute(out, ATTR_REFERRER_URI, this.params.referrerUri);
                XmlUtils.writeStringAttribute(out, ATTR_ABI_OVERRIDE, this.params.abiOverride);
                XmlUtils.writeStringAttribute(out, ATTR_VOLUME_UUID, this.params.volumeUuid);
                XmlUtils.writeIntAttribute(out, ATTR_INSTALL_REASON, this.params.installReason);
                boolean isDataLoader = this.params.dataLoaderParams != null;
                XmlUtils.writeBooleanAttribute(out, ATTR_IS_DATALOADER, isDataLoader);
                if (isDataLoader) {
                    XmlUtils.writeIntAttribute(out, ATTR_DATALOADER_TYPE, this.params.dataLoaderParams.getType());
                    XmlUtils.writeStringAttribute(out, ATTR_DATALOADER_PACKAGE_NAME, this.params.dataLoaderParams.getComponentName().getPackageName());
                    XmlUtils.writeStringAttribute(out, ATTR_DATALOADER_CLASS_NAME, this.params.dataLoaderParams.getComponentName().getClassName());
                    XmlUtils.writeStringAttribute(out, ATTR_DATALOADER_ARGUMENTS, this.params.dataLoaderParams.getArguments());
                }
                writeGrantedRuntimePermissionsLocked(out, this.params.grantedRuntimePermissions);
                writeWhitelistedRestrictedPermissionsLocked(out, this.params.whitelistedRestrictedPermissions);
                writeAutoRevokePermissionsMode(out, this.params.autoRevokePermissionsMode);
                File appIconFile = buildAppIconFile(this.sessionId, sessionsDir);
                if (this.params.appIcon == null && appIconFile.exists()) {
                    appIconFile.delete();
                } else if (this.params.appIcon != null && appIconFile.lastModified() != this.params.appIconLastModified) {
                    Slog.w(TAG, "Writing changed icon " + appIconFile);
                    FileOutputStream os = null;
                    try {
                        try {
                            os = new FileOutputStream(appIconFile);
                            this.params.appIcon.compress(Bitmap.CompressFormat.PNG, 90, os);
                        } catch (IOException e) {
                            Slog.w(TAG, "Failed to write icon " + appIconFile + ": " + e.getMessage());
                        }
                        IoUtils.closeQuietly(os);
                        this.params.appIconLastModified = appIconFile.lastModified();
                    } catch (Throwable th) {
                        IoUtils.closeQuietly(os);
                        throw th;
                    }
                }
                int[] childSessionIds = getChildSessionIds();
                for (int childSessionId : childSessionIds) {
                    out.startTag(null, TAG_CHILD_SESSION);
                    XmlUtils.writeIntAttribute(out, ATTR_SESSION_ID, childSessionId);
                    out.endTag(null, TAG_CHILD_SESSION);
                }
                getInstallationFilesLocked();
                for (InstallationFile file : getInstallationFilesLocked()) {
                    out.startTag(null, TAG_SESSION_FILE);
                    XmlUtils.writeIntAttribute(out, ATTR_LOCATION, file.getLocation());
                    XmlUtils.writeStringAttribute(out, "name", file.getName());
                    XmlUtils.writeLongAttribute(out, ATTR_LENGTH_BYTES, file.getLengthBytes());
                    XmlUtils.writeByteArrayAttribute(out, ATTR_METADATA, file.getMetadata());
                    XmlUtils.writeByteArrayAttribute(out, ATTR_SIGNATURE, file.getSignature());
                    out.endTag(null, TAG_SESSION_FILE);
                }
                out.endTag(null, TAG_SESSION);
            }
        }
    }

    private static boolean isStagedSessionStateValid(boolean isReady, boolean isApplied, boolean isFailed) {
        return ((isReady || isApplied || isFailed) && (!isReady || isApplied || isFailed) && ((isReady || !isApplied || isFailed) && (isReady || isApplied || !isFailed))) ? false : true;
    }

    public static PackageInstallerSession readFromXml(XmlPullParser in, PackageInstallerService.InternalCallback callback, Context context, PackageManagerService pm, Looper installerThread, StagingManager stagingManager, File sessionsDir, PackageSessionProvider sessionProvider) throws XmlPullParserException, IOException {
        boolean isApplied;
        int sessionId;
        int sessionId2;
        int[] childSessionIdsArray;
        InstallationFile[] fileArray;
        boolean isFailed;
        boolean isReady;
        List<String> whitelistedRestrictedPermissions;
        List<Integer> childSessionIds;
        List<InstallationFile> files;
        String str = ATTR_SESSION_ID;
        int sessionId3 = XmlUtils.readIntAttribute(in, ATTR_SESSION_ID);
        int userId = XmlUtils.readIntAttribute(in, ATTR_USER_ID);
        String installerPackageName = XmlUtils.readStringAttribute(in, ATTR_INSTALLER_PACKAGE_NAME);
        int installerUid = XmlUtils.readIntAttribute(in, ATTR_INSTALLER_UID, pm.getPackageUid(installerPackageName, 8192, userId));
        String installInitiatingPackageName = XmlUtils.readStringAttribute(in, ATTR_INITIATING_PACKAGE_NAME);
        String installOriginatingPackageName = XmlUtils.readStringAttribute(in, ATTR_ORIGINATING_PACKAGE_NAME);
        long createdMillis = XmlUtils.readLongAttribute(in, ATTR_CREATED_MILLIS);
        XmlUtils.readLongAttribute(in, ATTR_UPDATED_MILLIS);
        String stageDirRaw = XmlUtils.readStringAttribute(in, ATTR_SESSION_STAGE_DIR);
        File stageDir = stageDirRaw != null ? new File(stageDirRaw) : null;
        String stageCid = XmlUtils.readStringAttribute(in, ATTR_SESSION_STAGE_CID);
        boolean prepared = XmlUtils.readBooleanAttribute(in, ATTR_PREPARED, true);
        boolean committed = XmlUtils.readBooleanAttribute(in, ATTR_COMMITTED);
        boolean destroyed = XmlUtils.readBooleanAttribute(in, ATTR_DESTROYED);
        boolean sealed = XmlUtils.readBooleanAttribute(in, ATTR_SEALED);
        int parentSessionId = XmlUtils.readIntAttribute(in, ATTR_PARENT_SESSION_ID, -1);
        PackageInstaller.SessionParams params = new PackageInstaller.SessionParams(-1);
        params.isMultiPackage = XmlUtils.readBooleanAttribute(in, ATTR_MULTI_PACKAGE, false);
        params.isStaged = XmlUtils.readBooleanAttribute(in, ATTR_STAGED_SESSION, false);
        String str2 = ATTR_MODE;
        params.mode = XmlUtils.readIntAttribute(in, ATTR_MODE);
        params.installFlags = XmlUtils.readIntAttribute(in, ATTR_INSTALL_FLAGS);
        params.installLocation = XmlUtils.readIntAttribute(in, ATTR_INSTALL_LOCATION);
        params.sizeBytes = XmlUtils.readLongAttribute(in, ATTR_SIZE_BYTES);
        params.appPackageName = XmlUtils.readStringAttribute(in, ATTR_APP_PACKAGE_NAME);
        params.appIcon = XmlUtils.readBitmapAttribute(in, ATTR_APP_ICON);
        params.appLabel = XmlUtils.readStringAttribute(in, ATTR_APP_LABEL);
        params.originatingUri = XmlUtils.readUriAttribute(in, ATTR_ORIGINATING_URI);
        params.originatingUid = XmlUtils.readIntAttribute(in, ATTR_ORIGINATING_UID, -1);
        params.referrerUri = XmlUtils.readUriAttribute(in, ATTR_REFERRER_URI);
        params.abiOverride = XmlUtils.readStringAttribute(in, ATTR_ABI_OVERRIDE);
        params.volumeUuid = XmlUtils.readStringAttribute(in, ATTR_VOLUME_UUID);
        params.installReason = XmlUtils.readIntAttribute(in, ATTR_INSTALL_REASON);
        if (XmlUtils.readBooleanAttribute(in, ATTR_IS_DATALOADER)) {
            params.dataLoaderParams = new DataLoaderParams(XmlUtils.readIntAttribute(in, ATTR_DATALOADER_TYPE), new ComponentName(XmlUtils.readStringAttribute(in, ATTR_DATALOADER_PACKAGE_NAME), XmlUtils.readStringAttribute(in, ATTR_DATALOADER_CLASS_NAME)), XmlUtils.readStringAttribute(in, ATTR_DATALOADER_ARGUMENTS));
        }
        File appIconFile = buildAppIconFile(sessionId3, sessionsDir);
        if (appIconFile.exists()) {
            params.appIcon = BitmapFactory.decodeFile(appIconFile.getAbsolutePath());
            params.appIconLastModified = appIconFile.lastModified();
        }
        boolean isReady2 = XmlUtils.readBooleanAttribute(in, ATTR_IS_READY);
        boolean isFailed2 = XmlUtils.readBooleanAttribute(in, ATTR_IS_FAILED);
        boolean isApplied2 = XmlUtils.readBooleanAttribute(in, ATTR_IS_APPLIED);
        int stagedSessionErrorCode = XmlUtils.readIntAttribute(in, ATTR_STAGED_SESSION_ERROR_CODE, 0);
        String stagedSessionErrorMessage = XmlUtils.readStringAttribute(in, ATTR_STAGED_SESSION_ERROR_MESSAGE);
        if (!isStagedSessionStateValid(isReady2, isApplied2, isFailed2)) {
            throw new IllegalArgumentException("Can't restore staged session with invalid state.");
        }
        List<String> grantedRuntimePermissions = new ArrayList<>();
        List<String> whitelistedRestrictedPermissions2 = new ArrayList<>();
        List<Integer> childSessionIds2 = new ArrayList<>();
        List<InstallationFile> files2 = new ArrayList<>();
        int outerDepth = in.getDepth();
        int autoRevokePermissionsMode = 3;
        while (true) {
            int type = in.next();
            isApplied = isApplied2;
            if (type == 1) {
                sessionId = sessionId3;
                sessionId2 = type;
                break;
            }
            sessionId = sessionId3;
            sessionId2 = type;
            if (sessionId2 == 3 && in.getDepth() <= outerDepth) {
                break;
            }
            if (sessionId2 == 3) {
                str = str;
                isFailed = isFailed2;
                isReady = isReady2;
                whitelistedRestrictedPermissions = whitelistedRestrictedPermissions2;
                childSessionIds = childSessionIds2;
                files = files2;
            } else if (sessionId2 == 4) {
                str = str;
                isFailed = isFailed2;
                isReady = isReady2;
                whitelistedRestrictedPermissions = whitelistedRestrictedPermissions2;
                childSessionIds = childSessionIds2;
                files = files2;
            } else {
                if (TAG_GRANTED_RUNTIME_PERMISSION.equals(in.getName())) {
                    grantedRuntimePermissions.add(XmlUtils.readStringAttribute(in, "name"));
                }
                isFailed = isFailed2;
                if (!TAG_WHITELISTED_RESTRICTED_PERMISSION.equals(in.getName())) {
                    whitelistedRestrictedPermissions = whitelistedRestrictedPermissions2;
                } else {
                    whitelistedRestrictedPermissions = whitelistedRestrictedPermissions2;
                    whitelistedRestrictedPermissions.add(XmlUtils.readStringAttribute(in, "name"));
                }
                isReady = isReady2;
                if (TAG_AUTO_REVOKE_PERMISSIONS_MODE.equals(in.getName())) {
                    autoRevokePermissionsMode = XmlUtils.readIntAttribute(in, str2);
                }
                if (TAG_CHILD_SESSION.equals(in.getName())) {
                    Integer numValueOf = Integer.valueOf(XmlUtils.readIntAttribute(in, str, -1));
                    childSessionIds = childSessionIds2;
                    childSessionIds.add(numValueOf);
                } else {
                    childSessionIds = childSessionIds2;
                }
                if (TAG_SESSION_FILE.equals(in.getName())) {
                    files = files2;
                    files.add(new InstallationFile(XmlUtils.readIntAttribute(in, ATTR_LOCATION, 0), XmlUtils.readStringAttribute(in, "name"), XmlUtils.readLongAttribute(in, ATTR_LENGTH_BYTES, -1L), XmlUtils.readByteArrayAttribute(in, ATTR_METADATA), XmlUtils.readByteArrayAttribute(in, ATTR_SIGNATURE)));
                } else {
                    files = files2;
                }
            }
            childSessionIds2 = childSessionIds;
            files2 = files;
            whitelistedRestrictedPermissions2 = whitelistedRestrictedPermissions;
            str = str;
            sessionId3 = sessionId;
            isApplied2 = isApplied;
            isFailed2 = isFailed;
            isReady2 = isReady;
            str2 = str2;
        }
        if (grantedRuntimePermissions.size() > 0) {
            params.grantedRuntimePermissions = (String[]) grantedRuntimePermissions.toArray(EmptyArray.STRING);
        }
        if (whitelistedRestrictedPermissions2.size() > 0) {
            params.whitelistedRestrictedPermissions = whitelistedRestrictedPermissions2;
        }
        params.autoRevokePermissionsMode = autoRevokePermissionsMode;
        if (childSessionIds2.size() > 0) {
            int[] childSessionIdsArray2 = new int[childSessionIds2.size()];
            int size = childSessionIds2.size();
            for (int i = 0; i < size; i++) {
                childSessionIdsArray2[i] = childSessionIds2.get(i).intValue();
            }
            childSessionIdsArray = childSessionIdsArray2;
        } else {
            int[] childSessionIdsArray3 = EMPTY_CHILD_SESSION_ARRAY;
            childSessionIdsArray = childSessionIdsArray3;
        }
        if (files2.isEmpty()) {
            fileArray = null;
        } else {
            InstallationFile[] fileArray2 = (InstallationFile[]) files2.toArray(EMPTY_INSTALLATION_FILE_ARRAY);
            fileArray = fileArray2;
        }
        InstallSource installSource = InstallSource.create(installInitiatingPackageName, installOriginatingPackageName, installerPackageName);
        return new PackageInstallerSession(callback, context, pm, sessionProvider, installerThread, stagingManager, sessionId, userId, installerUid, installSource, params, createdMillis, stageDir, stageCid, fileArray, prepared, committed, destroyed, sealed, childSessionIdsArray, parentSessionId, isReady2, isFailed2, isApplied, stagedSessionErrorCode, stagedSessionErrorMessage);
    }
}
