package com.android.server.pm;

import android.R;
import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.BroadcastOptions;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PackageDeleteObserver;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManagerInternal;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageInstaller;
import android.content.pm.IPackageInstallerCallback;
import android.content.pm.IPackageInstallerSession;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.ParceledListSlice;
import android.content.pm.VersionedPackage;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.SELinux;
import android.os.storage.StorageManager;
import android.system.ErrnoException;
import android.system.Os;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.ExceptionUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.Xml;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.ImageUtils;
import com.android.internal.util.IndentingPrintWriter;
import com.android.server.IoThread;
import com.android.server.LocalServices;
import com.android.server.SystemConfig;
import com.android.server.pm.parsing.PackageParser2;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.function.IntPredicate;
import java.util.function.Supplier;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class PackageInstallerService extends IPackageInstaller.Stub implements PackageSessionProvider {
    private static final int ADB_DEV_MODE = 36;
    private static final boolean LOGD = false;
    private static final long MAX_ACTIVE_SESSIONS_NO_PERMISSION = 50;
    private static final long MAX_ACTIVE_SESSIONS_WITH_PERMISSION = 1024;
    private static final long MAX_AGE_MILLIS = 259200000;
    private static final long MAX_HISTORICAL_SESSIONS = 1048576;
    private static final long MAX_SESSION_AGE_ON_LOW_STORAGE_MILLIS = 28800000;
    private static final long MAX_TIME_SINCE_UPDATE_MILLIS = 604800000;
    private static final String TAG = "PackageInstaller";
    private static final String TAG_SESSIONS = "sessions";
    private static final FilenameFilter sStageFilter = new FilenameFilter() { // from class: com.android.server.pm.PackageInstallerService.1
        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String name) {
            return PackageInstallerService.isStageName(name);
        }
    };
    private final ApexManager mApexManager;
    private AppOpsManager mAppOps;
    private final Callbacks mCallbacks;
    private final Context mContext;
    private final Handler mInstallHandler;
    private final HandlerThread mInstallThread;
    private final PackageManagerService mPm;
    private final File mSessionsDir;
    private final AtomicFile mSessionsFile;
    private final StagingManager mStagingManager;
    private volatile boolean mOkToSendBroadcasts = false;
    private volatile boolean mBypassNextStagedInstallerCheck = false;
    private final InternalCallback mInternalCallback = new InternalCallback();
    private final Random mRandom = new SecureRandom();
    private final SparseBooleanArray mAllocatedSessions = new SparseBooleanArray();
    private final SparseArray<PackageInstallerSession> mSessions = new SparseArray<>();
    private final List<String> mHistoricalSessions = new ArrayList();
    private final SparseIntArray mHistoricalSessionsByInstaller = new SparseIntArray();
    private final SparseBooleanArray mLegacySessions = new SparseBooleanArray();
    private final PermissionManagerServiceInternal mPermissionManager = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);

    public PackageInstallerService(Context context, PackageManagerService pm, Supplier<PackageParser2> apexParserSupplier) {
        this.mContext = context;
        this.mPm = pm;
        HandlerThread handlerThread = new HandlerThread(TAG);
        this.mInstallThread = handlerThread;
        handlerThread.start();
        this.mInstallHandler = new Handler(this.mInstallThread.getLooper());
        this.mCallbacks = new Callbacks(this.mInstallThread.getLooper());
        this.mSessionsFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), "install_sessions.xml"), "package-session");
        File file = new File(Environment.getDataSystemDirectory(), "install_sessions");
        this.mSessionsDir = file;
        file.mkdirs();
        this.mApexManager = ApexManager.getInstance();
        this.mStagingManager = new StagingManager(this, context, apexParserSupplier);
    }

    boolean okToSendBroadcasts() {
        return this.mOkToSendBroadcasts;
    }

    public void systemReady() {
        this.mAppOps = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        this.mStagingManager.systemReady();
        synchronized (this.mSessions) {
            readSessionsLocked();
            reconcileStagesLocked(StorageManager.UUID_PRIVATE_INTERNAL);
            ArraySet<File> unclaimedIcons = newArraySet(this.mSessionsDir.listFiles());
            for (int i = 0; i < this.mSessions.size(); i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                unclaimedIcons.remove(buildAppIconFile(session.sessionId));
            }
            for (File icon : unclaimedIcons) {
                Slog.w(TAG, "Deleting orphan icon " + icon);
                icon.delete();
            }
            writeSessionsLocked();
        }
    }

    void restoreAndApplyStagedSessionIfNeeded() {
        List<PackageInstallerSession> stagedSessionsToRestore = new ArrayList<>();
        synchronized (this.mSessions) {
            for (int i = 0; i < this.mSessions.size(); i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                if (session.isStaged()) {
                    stagedSessionsToRestore.add(session);
                }
            }
        }
        boolean isDeviceUpgrading = this.mPm.isDeviceUpgrading();
        for (PackageInstallerSession session2 : stagedSessionsToRestore) {
            if (!session2.isStagedAndInTerminalState() && session2.hasParentSessionId() && getSession(session2.getParentSessionId()) == null) {
                session2.setStagedSessionFailed(2, "An orphan staged session " + session2.sessionId + " is found, parent " + session2.getParentSessionId() + " is missing");
            }
            this.mStagingManager.restoreSession(session2, isDeviceUpgrading);
        }
        this.mOkToSendBroadcasts = true;
    }

    private void reconcileStagesLocked(String volumeUuid) {
        ArraySet<File> unclaimedStages = getStagingDirsOnVolume(volumeUuid);
        for (int i = 0; i < this.mSessions.size(); i++) {
            PackageInstallerSession session = this.mSessions.valueAt(i);
            unclaimedStages.remove(session.stageDir);
        }
        removeStagingDirs(unclaimedStages);
    }

    private ArraySet<File> getStagingDirsOnVolume(String volumeUuid) {
        File stagingDir = getTmpSessionDir(volumeUuid);
        ArraySet<File> stagingDirs = newArraySet(stagingDir.listFiles(sStageFilter));
        File stagedSessionStagingDir = Environment.getDataStagingDirectory(volumeUuid);
        stagingDirs.addAll(newArraySet(stagedSessionStagingDir.listFiles()));
        return stagingDirs;
    }

    private void removeStagingDirs(ArraySet<File> stagingDirsToRemove) {
        for (File stage : stagingDirsToRemove) {
            Slog.w(TAG, "Deleting orphan stage " + stage);
            synchronized (this.mPm.mInstallLock) {
                this.mPm.removeCodePathLI(stage);
            }
        }
    }

    public void freeStageDirs(String volumeUuid) {
        ArraySet<File> unclaimedStagingDirsOnVolume = getStagingDirsOnVolume(volumeUuid);
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.mSessions) {
            for (int i = 0; i < this.mSessions.size(); i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                if (unclaimedStagingDirsOnVolume.contains(session.stageDir)) {
                    long age = currentTimeMillis - session.createdMillis;
                    if (age >= MAX_SESSION_AGE_ON_LOW_STORAGE_MILLIS) {
                        PackageInstallerSession root = !session.hasParentSessionId() ? session : this.mSessions.get(session.getParentSessionId());
                        if (root == null) {
                            Slog.e(TAG, "freeStageDirs: found an orphaned session: " + session.sessionId + " parent=" + session.getParentSessionId());
                        } else if (!root.isDestroyed()) {
                            root.abandon();
                        }
                    } else {
                        unclaimedStagingDirsOnVolume.remove(session.stageDir);
                    }
                }
            }
        }
        removeStagingDirs(unclaimedStagingDirsOnVolume);
    }

    public void onPrivateVolumeMounted(String volumeUuid) {
        synchronized (this.mSessions) {
            reconcileStagesLocked(volumeUuid);
        }
    }

    public static boolean isStageName(String name) {
        boolean isFile = name.startsWith("vmdl") && name.endsWith(".tmp");
        boolean isContainer = name.startsWith("smdl") && name.endsWith(".tmp");
        boolean isLegacyContainer = name.startsWith("smdl2tmp");
        return isFile || isContainer || isLegacyContainer;
    }

    @Deprecated
    public File allocateStageDirLegacy(String volumeUuid, boolean isEphemeral) throws IOException {
        File sessionStageDir;
        synchronized (this.mSessions) {
            try {
                try {
                    int sessionId = allocateSessionIdLocked();
                    this.mLegacySessions.put(sessionId, true);
                    sessionStageDir = buildTmpSessionDir(sessionId, volumeUuid);
                    prepareStageDir(sessionStageDir);
                } catch (IllegalStateException e) {
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return sessionStageDir;
    }

    @Deprecated
    public String allocateExternalStageCidLegacy() {
        String str;
        synchronized (this.mSessions) {
            int sessionId = allocateSessionIdLocked();
            this.mLegacySessions.put(sessionId, true);
            str = "smdl" + sessionId + ".tmp";
        }
        return str;
    }

    private void readSessionsLocked() {
        boolean valid;
        this.mSessions.clear();
        FileInputStream fis = null;
        try {
            try {
                try {
                    fis = this.mSessionsFile.openRead();
                    XmlPullParser in = Xml.newPullParser();
                    in.setInput(fis, StandardCharsets.UTF_8.name());
                    while (true) {
                        int type = in.next();
                        if (type == 1) {
                            break;
                        }
                        if (type == 2) {
                            String tag = in.getName();
                            if ("session".equals(tag)) {
                                try {
                                    PackageInstallerSession session = PackageInstallerSession.readFromXml(in, this.mInternalCallback, this.mContext, this.mPm, this.mInstallThread.getLooper(), this.mStagingManager, this.mSessionsDir, this);
                                    long age = System.currentTimeMillis() - session.createdMillis;
                                    long timeSinceUpdate = System.currentTimeMillis() - session.getUpdatedMillis();
                                    if (session.isStaged()) {
                                        if (timeSinceUpdate >= 604800000 && session.isStagedAndInTerminalState()) {
                                            valid = false;
                                        } else {
                                            valid = true;
                                        }
                                    } else if (age >= MAX_AGE_MILLIS) {
                                        Slog.w(TAG, "Abandoning old session created at " + session.createdMillis);
                                        valid = false;
                                    } else {
                                        boolean valid2 = isExtraSessionForStagedInstall(session);
                                        if (valid2) {
                                            valid = false;
                                        } else {
                                            valid = true;
                                        }
                                    }
                                    if (valid) {
                                        this.mSessions.put(session.sessionId, session);
                                    } else {
                                        addHistoricalSessionLocked(session);
                                    }
                                    this.mAllocatedSessions.put(session.sessionId, true);
                                } catch (Exception e) {
                                    Slog.e(TAG, "Could not read session", e);
                                }
                            }
                        }
                    }
                } catch (FileNotFoundException e2) {
                }
            } catch (IOException | XmlPullParserException e3) {
                Slog.wtf(TAG, "Failed reading install sessions", e3);
            }
            IoUtils.closeQuietly(fis);
            for (int i = 0; i < this.mSessions.size(); i++) {
                this.mSessions.valueAt(i).onAfterSessionRead();
            }
        } catch (Throwable th) {
            IoUtils.closeQuietly(fis);
            throw th;
        }
    }

    private boolean isExtraSessionForStagedInstall(PackageInstallerSession session) {
        return ((session.params.installFlags & 8388608) == 0 && (session.params.installFlags & 524288) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addHistoricalSessionLocked(PackageInstallerSession session) {
        CharArrayWriter writer = new CharArrayWriter();
        IndentingPrintWriter pw = new IndentingPrintWriter(writer, "    ");
        session.dump(pw);
        this.mHistoricalSessions.add(writer.toString());
        int installerUid = session.getInstallerUid();
        SparseIntArray sparseIntArray = this.mHistoricalSessionsByInstaller;
        sparseIntArray.put(installerUid, sparseIntArray.get(installerUid) + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSessionsLocked() {
        FileOutputStream fos = null;
        try {
            fos = this.mSessionsFile.startWrite();
            XmlSerializer out = new FastXmlSerializer();
            out.setOutput(fos, StandardCharsets.UTF_8.name());
            out.startDocument(null, true);
            out.startTag(null, TAG_SESSIONS);
            int size = this.mSessions.size();
            for (int i = 0; i < size; i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                session.write(out, this.mSessionsDir);
            }
            out.endTag(null, TAG_SESSIONS);
            out.endDocument();
            this.mSessionsFile.finishWrite(fos);
        } catch (IOException e) {
            if (fos != null) {
                this.mSessionsFile.failWrite(fos);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File buildAppIconFile(int sessionId) {
        return new File(this.mSessionsDir, "app_icon." + sessionId + ".png");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeSessionsAsync() {
        IoThread.getHandler().post(new Runnable() { // from class: com.android.server.pm.PackageInstallerService.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (PackageInstallerService.this.mSessions) {
                    PackageInstallerService.this.writeSessionsLocked();
                }
            }
        });
    }

    public int createSession(PackageInstaller.SessionParams params, String installerPackageName, int userId) {
        try {
            return createSessionInternal(params, installerPackageName, userId);
        } catch (IOException e) {
            throw ExceptionUtils.wrap(e);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0331 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int createSessionInternal(android.content.pm.PackageInstaller.SessionParams r40, java.lang.String r41, int r42) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PackageInstallerService.createSessionInternal(android.content.pm.PackageInstaller$SessionParams, java.lang.String, int):int");
    }

    private boolean isCalledBySystemOrShell(int callingUid) {
        return callingUid == 1000 || callingUid == 0 || callingUid == 2000;
    }

    private boolean isStagedInstallerAllowed(String installerName) {
        return SystemConfig.getInstance().getWhitelistedStagedInstallers().contains(installerName);
    }

    public void updateSessionAppIcon(int sessionId, Bitmap appIcon) {
        synchronized (this.mSessions) {
            PackageInstallerSession session = this.mSessions.get(sessionId);
            if (session == null || !isCallingUidOwner(session)) {
                throw new SecurityException("Caller has no access to session " + sessionId);
            }
            if (appIcon != null) {
                ActivityManager am = (ActivityManager) this.mContext.getSystemService("activity");
                int iconSize = am.getLauncherLargeIconSize();
                if (appIcon.getWidth() > iconSize * 2 || appIcon.getHeight() > iconSize * 2) {
                    appIcon = Bitmap.createScaledBitmap(appIcon, iconSize, iconSize, true);
                }
            }
            session.params.appIcon = appIcon;
            session.params.appIconLastModified = -1L;
            this.mInternalCallback.onSessionBadgingChanged(session);
        }
    }

    public void updateSessionAppLabel(int sessionId, String appLabel) {
        synchronized (this.mSessions) {
            PackageInstallerSession session = this.mSessions.get(sessionId);
            if (session == null || !isCallingUidOwner(session)) {
                throw new SecurityException("Caller has no access to session " + sessionId);
            }
            session.params.appLabel = appLabel;
            this.mInternalCallback.onSessionBadgingChanged(session);
        }
    }

    public void abandonSession(int sessionId) {
        synchronized (this.mSessions) {
            PackageInstallerSession session = this.mSessions.get(sessionId);
            if (session == null || !isCallingUidOwner(session)) {
                throw new SecurityException("Caller has no access to session " + sessionId);
            }
            session.abandon();
        }
    }

    public IPackageInstallerSession openSession(int sessionId) {
        try {
            return openSessionInternal(sessionId);
        } catch (IOException e) {
            throw ExceptionUtils.wrap(e);
        }
    }

    private IPackageInstallerSession openSessionInternal(int sessionId) throws IOException {
        PackageInstallerSession session;
        synchronized (this.mSessions) {
            session = this.mSessions.get(sessionId);
            if (session == null || !isCallingUidOwner(session)) {
                throw new SecurityException("Caller has no access to session " + sessionId);
            }
            session.open();
        }
        return session;
    }

    private int allocateSessionIdLocked() {
        int n = 0;
        while (true) {
            int sessionId = this.mRandom.nextInt(2147483646) + 1;
            if (!this.mAllocatedSessions.get(sessionId, false)) {
                this.mAllocatedSessions.put(sessionId, true);
                return sessionId;
            }
            int n2 = n + 1;
            if (n >= 32) {
                throw new IllegalStateException("Failed to allocate session ID");
            }
            n = n2;
        }
    }

    private File getTmpSessionDir(String volumeUuid) {
        return Environment.getDataAppDirectory(volumeUuid);
    }

    private File buildTmpSessionDir(int sessionId, String volumeUuid) {
        File sessionStagingDir = getTmpSessionDir(volumeUuid);
        return new File(sessionStagingDir, "vmdl" + sessionId + ".tmp");
    }

    private File buildSessionDir(int sessionId, PackageInstaller.SessionParams params) {
        if (params.isStaged) {
            File sessionStagingDir = Environment.getDataStagingDirectory(params.volumeUuid);
            return new File(sessionStagingDir, "session_" + sessionId);
        }
        return buildTmpSessionDir(sessionId, params.volumeUuid);
    }

    static void prepareStageDir(File stageDir) throws IOException {
        if (stageDir.exists()) {
            throw new IOException("Session dir already exists: " + stageDir);
        }
        try {
            Os.mkdir(stageDir.getAbsolutePath(), 509);
            Os.chmod(stageDir.getAbsolutePath(), 509);
            if (!SELinux.restorecon(stageDir)) {
                throw new IOException("Failed to restorecon session dir: " + stageDir);
            }
        } catch (ErrnoException e) {
            throw new IOException("Failed to prepare session dir: " + stageDir, e);
        }
    }

    private String buildExternalStageCid(int sessionId) {
        return "smdl" + sessionId + ".tmp";
    }

    public PackageInstaller.SessionInfo getSessionInfo(int sessionId) {
        PackageInstaller.SessionInfo sessionInfoGenerateInfoForCaller;
        synchronized (this.mSessions) {
            PackageInstallerSession session = this.mSessions.get(sessionId);
            if (session != null && (!session.isStaged() || !session.isDestroyed())) {
                sessionInfoGenerateInfoForCaller = session.generateInfoForCaller(true, Binder.getCallingUid());
            } else {
                sessionInfoGenerateInfoForCaller = null;
            }
        }
        return sessionInfoGenerateInfoForCaller;
    }

    public ParceledListSlice<PackageInstaller.SessionInfo> getStagedSessions() {
        List<PackageInstaller.SessionInfo> result = new ArrayList<>();
        synchronized (this.mSessions) {
            for (int i = 0; i < this.mSessions.size(); i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                if (session.isStaged() && !session.isDestroyed()) {
                    result.add(session.generateInfoForCaller(false, Binder.getCallingUid()));
                }
            }
        }
        return new ParceledListSlice<>(result);
    }

    public ParceledListSlice<PackageInstaller.SessionInfo> getAllSessions(int userId) {
        int callingUid = Binder.getCallingUid();
        this.mPermissionManager.enforceCrossUserPermission(callingUid, userId, true, false, "getAllSessions");
        List<PackageInstaller.SessionInfo> result = new ArrayList<>();
        synchronized (this.mSessions) {
            for (int i = 0; i < this.mSessions.size(); i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                if (session.userId == userId && !session.hasParentSessionId() && (!session.isStaged() || !session.isDestroyed())) {
                    result.add(session.generateInfoForCaller(false, callingUid));
                }
            }
        }
        return new ParceledListSlice<>(result);
    }

    public ParceledListSlice<PackageInstaller.SessionInfo> getMySessions(String installerPackageName, int userId) {
        this.mPermissionManager.enforceCrossUserPermission(Binder.getCallingUid(), userId, true, false, "getMySessions");
        this.mAppOps.checkPackage(Binder.getCallingUid(), installerPackageName);
        List<PackageInstaller.SessionInfo> result = new ArrayList<>();
        synchronized (this.mSessions) {
            for (int i = 0; i < this.mSessions.size(); i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                PackageInstaller.SessionInfo info = session.generateInfoForCaller(false, 1000);
                if (Objects.equals(info.getInstallerPackageName(), installerPackageName) && session.userId == userId && !session.hasParentSessionId()) {
                    result.add(info);
                }
            }
        }
        return new ParceledListSlice<>(result);
    }

    public void uninstall(VersionedPackage versionedPackage, String callerPackageName, int flags, IntentSender statusReceiver, int userId) throws Throwable {
        int callingUid = Binder.getCallingUid();
        this.mPermissionManager.enforceCrossUserPermission(callingUid, userId, true, true, "uninstall");
        if (callingUid != 2000 && callingUid != 0) {
            this.mAppOps.checkPackage(callingUid, callerPackageName);
        }
        DevicePolicyManagerInternal dpmi = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        boolean canSilentlyInstallPackage = dpmi != null && dpmi.canSilentlyInstallPackage(callerPackageName, callingUid);
        PackageDeleteObserverAdapter adapter = new PackageDeleteObserverAdapter(this.mContext, statusReceiver, versionedPackage.getPackageName(), canSilentlyInstallPackage, userId);
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DELETE_PACKAGES") == 0) {
            this.mPm.deletePackageVersioned(versionedPackage, adapter.getBinder(), userId, flags);
            return;
        }
        if (!canSilentlyInstallPackage) {
            ApplicationInfo appInfo = this.mPm.getApplicationInfo(callerPackageName, 0, userId);
            if (appInfo.targetSdkVersion >= 28) {
                this.mContext.enforceCallingOrSelfPermission("android.permission.REQUEST_DELETE_PACKAGES", null);
            }
            Intent intent = new Intent("android.intent.action.UNINSTALL_PACKAGE");
            intent.setData(Uri.fromParts(Settings.ATTR_PACKAGE, versionedPackage.getPackageName(), null));
            intent.putExtra("android.content.pm.extra.CALLBACK", adapter.getBinder().asBinder());
            adapter.onUserActionRequired(intent);
            return;
        }
        long ident = Binder.clearCallingIdentity();
        try {
            this.mPm.deletePackageVersioned(versionedPackage, adapter.getBinder(), userId, flags);
            Binder.restoreCallingIdentity(ident);
            DevicePolicyEventLogger.createEvent(113).setAdmin(callerPackageName).write();
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(ident);
            throw th;
        }
    }

    public void uninstallExistingPackage(VersionedPackage versionedPackage, String callerPackageName, IntentSender statusReceiver, int userId) throws Throwable {
        int callingUid = Binder.getCallingUid();
        this.mContext.enforceCallingOrSelfPermission("android.permission.DELETE_PACKAGES", null);
        this.mPermissionManager.enforceCrossUserPermission(callingUid, userId, true, true, "uninstall");
        if (callingUid != 2000 && callingUid != 0) {
            this.mAppOps.checkPackage(callingUid, callerPackageName);
        }
        PackageDeleteObserverAdapter adapter = new PackageDeleteObserverAdapter(this.mContext, statusReceiver, versionedPackage.getPackageName(), false, userId);
        this.mPm.deleteExistingPackageAsUser(versionedPackage, adapter.getBinder(), userId);
    }

    public void installExistingPackage(String packageName, int installFlags, int installReason, IntentSender statusReceiver, int userId, List<String> whiteListedPermissions) throws Throwable {
        this.mPm.installExistingPackageAsUser(packageName, userId, installFlags, installReason, whiteListedPermissions, statusReceiver);
    }

    public void setPermissionsResult(int sessionId, boolean accepted) {
        this.mContext.enforceCallingOrSelfPermission("android.permission.INSTALL_PACKAGES", TAG);
        synchronized (this.mSessions) {
            PackageInstallerSession session = this.mSessions.get(sessionId);
            if (session != null) {
                session.setPermissionsResult(accepted);
            }
        }
    }

    public void registerCallback(IPackageInstallerCallback callback, final int userId) {
        this.mPermissionManager.enforceCrossUserPermission(Binder.getCallingUid(), userId, true, false, "registerCallback");
        registerCallback(callback, new IntPredicate() { // from class: com.android.server.pm.-$$Lambda$PackageInstallerService$vra5ZkE3juVvcgDBu5xv0wVzno8
            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return PackageInstallerService.lambda$registerCallback$0(userId, i);
            }
        });
    }

    static /* synthetic */ boolean lambda$registerCallback$0(int userId, int eventUserId) {
        return userId == eventUserId;
    }

    public void registerCallback(IPackageInstallerCallback callback, IntPredicate userCheck) {
        this.mCallbacks.register(callback, userCheck);
    }

    public void unregisterCallback(IPackageInstallerCallback callback) {
        this.mCallbacks.unregister(callback);
    }

    @Override // com.android.server.pm.PackageSessionProvider
    public PackageInstallerSession getSession(int sessionId) {
        PackageInstallerSession packageInstallerSession;
        synchronized (this.mSessions) {
            packageInstallerSession = this.mSessions.get(sessionId);
        }
        return packageInstallerSession;
    }

    public void bypassNextStagedInstallerCheck(boolean value) {
        if (!isCalledBySystemOrShell(Binder.getCallingUid())) {
            throw new SecurityException("Caller not allowed to bypass staged installer check");
        }
        this.mBypassNextStagedInstallerCheck = value;
    }

    private static int getSessionCount(SparseArray<PackageInstallerSession> sessions, int installerUid) {
        int count = 0;
        int size = sessions.size();
        for (int i = 0; i < size; i++) {
            PackageInstallerSession session = sessions.valueAt(i);
            if (session.getInstallerUid() == installerUid) {
                count++;
            }
        }
        return count;
    }

    private boolean isCallingUidOwner(PackageInstallerSession session) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 0) {
            return true;
        }
        return session != null && callingUid == session.getInstallerUid();
    }

    static class PackageDeleteObserverAdapter extends PackageDeleteObserver {
        private final Context mContext;
        private final Notification mNotification;
        private final String mPackageName;
        private final IntentSender mTarget;

        public PackageDeleteObserverAdapter(Context context, IntentSender target, String packageName, boolean showNotification, int userId) {
            this.mContext = context;
            this.mTarget = target;
            this.mPackageName = packageName;
            if (showNotification) {
                this.mNotification = PackageInstallerService.buildSuccessNotification(context, context.getResources().getString(R.string.kg_wrong_pin), packageName, userId);
            } else {
                this.mNotification = null;
            }
        }

        public void onUserActionRequired(Intent intent) {
            if (this.mTarget == null) {
                return;
            }
            Intent fillIn = new Intent();
            fillIn.putExtra("android.content.pm.extra.PACKAGE_NAME", this.mPackageName);
            fillIn.putExtra("android.content.pm.extra.STATUS", -1);
            fillIn.putExtra("android.intent.extra.INTENT", intent);
            try {
                BroadcastOptions options = BroadcastOptions.makeBasic();
                options.setPendingIntentBackgroundActivityLaunchAllowed(false);
                this.mTarget.sendIntent(this.mContext, 0, fillIn, null, null, null, options.toBundle());
            } catch (IntentSender.SendIntentException e) {
            }
        }

        public void onPackageDeleted(String basePackageName, int returnCode, String msg) {
            if (1 == returnCode && this.mNotification != null) {
                NotificationManager notificationManager = (NotificationManager) this.mContext.getSystemService("notification");
                notificationManager.notify(basePackageName, 21, this.mNotification);
            }
            if (this.mTarget == null) {
                return;
            }
            Intent fillIn = new Intent();
            fillIn.putExtra("android.content.pm.extra.PACKAGE_NAME", this.mPackageName);
            fillIn.putExtra("android.content.pm.extra.STATUS", PackageManager.deleteStatusToPublicStatus(returnCode));
            fillIn.putExtra("android.content.pm.extra.STATUS_MESSAGE", PackageManager.deleteStatusToString(returnCode, msg));
            fillIn.putExtra("android.content.pm.extra.LEGACY_STATUS", returnCode);
            try {
                BroadcastOptions options = BroadcastOptions.makeBasic();
                options.setPendingIntentBackgroundActivityLaunchAllowed(false);
                this.mTarget.sendIntent(this.mContext, 0, fillIn, null, null, null, options.toBundle());
            } catch (IntentSender.SendIntentException e) {
            }
        }
    }

    static Notification buildSuccessNotification(Context context, String contentText, String basePackageName, int userId) {
        PackageInfo packageInfo = null;
        try {
            packageInfo = AppGlobals.getPackageManager().getPackageInfo(basePackageName, 67108864, userId);
        } catch (RemoteException e) {
        }
        if (packageInfo == null || packageInfo.applicationInfo == null) {
            Slog.w(TAG, "Notification not built for package: " + basePackageName);
            return null;
        }
        PackageManager pm = context.getPackageManager();
        Bitmap packageIcon = ImageUtils.buildScaledBitmap(packageInfo.applicationInfo.loadIcon(pm), context.getResources().getDimensionPixelSize(R.dimen.notification_large_icon_width), context.getResources().getDimensionPixelSize(R.dimen.notification_large_icon_height));
        CharSequence packageLabel = packageInfo.applicationInfo.loadLabel(pm);
        return new Notification.Builder(context, SystemNotificationChannels.DEVICE_ADMIN).setSmallIcon(R.drawable.ft_avd_toarrow).setColor(context.getResources().getColor(R.color.system_notification_accent_color)).setContentTitle(packageLabel).setContentText(contentText).setStyle(new Notification.BigTextStyle().bigText(contentText)).setLargeIcon(packageIcon).build();
    }

    public static <E> ArraySet<E> newArraySet(E... elements) {
        ArraySet<E> set = new ArraySet<>();
        if (elements != null) {
            set.ensureCapacity(elements.length);
            Collections.addAll(set, elements);
        }
        return set;
    }

    private static class Callbacks extends Handler {
        private static final int MSG_SESSION_ACTIVE_CHANGED = 3;
        private static final int MSG_SESSION_BADGING_CHANGED = 2;
        private static final int MSG_SESSION_CREATED = 1;
        private static final int MSG_SESSION_FINISHED = 5;
        private static final int MSG_SESSION_PROGRESS_CHANGED = 4;
        private final RemoteCallbackList<IPackageInstallerCallback> mCallbacks;

        public Callbacks(Looper looper) {
            super(looper);
            this.mCallbacks = new RemoteCallbackList<>();
        }

        public void register(IPackageInstallerCallback callback, IntPredicate userCheck) {
            this.mCallbacks.register(callback, userCheck);
        }

        public void unregister(IPackageInstallerCallback callback) {
            this.mCallbacks.unregister(callback);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int userId = msg.arg2;
            int n = this.mCallbacks.beginBroadcast();
            for (int i = 0; i < n; i++) {
                IPackageInstallerCallback callback = (IPackageInstallerCallback) this.mCallbacks.getBroadcastItem(i);
                IntPredicate userCheck = (IntPredicate) this.mCallbacks.getBroadcastCookie(i);
                if (userCheck.test(userId)) {
                    try {
                        invokeCallback(callback, msg);
                    } catch (RemoteException e) {
                    }
                }
            }
            this.mCallbacks.finishBroadcast();
        }

        private void invokeCallback(IPackageInstallerCallback callback, Message msg) throws RemoteException {
            int sessionId = msg.arg1;
            int i = msg.what;
            if (i == 1) {
                callback.onSessionCreated(sessionId);
                return;
            }
            if (i == 2) {
                callback.onSessionBadgingChanged(sessionId);
                return;
            }
            if (i == 3) {
                callback.onSessionActiveChanged(sessionId, ((Boolean) msg.obj).booleanValue());
            } else if (i == 4) {
                callback.onSessionProgressChanged(sessionId, ((Float) msg.obj).floatValue());
            } else if (i == 5) {
                callback.onSessionFinished(sessionId, ((Boolean) msg.obj).booleanValue());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifySessionCreated(int sessionId, int userId) {
            obtainMessage(1, sessionId, userId).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifySessionBadgingChanged(int sessionId, int userId) {
            obtainMessage(2, sessionId, userId).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifySessionActiveChanged(int sessionId, int userId, boolean active) {
            obtainMessage(3, sessionId, userId, Boolean.valueOf(active)).sendToTarget();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void notifySessionProgressChanged(int sessionId, int userId, float progress) {
            obtainMessage(4, sessionId, userId, Float.valueOf(progress)).sendToTarget();
        }

        public void notifySessionFinished(int sessionId, int userId, boolean success) {
            obtainMessage(5, sessionId, userId, Boolean.valueOf(success)).sendToTarget();
        }
    }

    void dump(IndentingPrintWriter pw) {
        synchronized (this.mSessions) {
            pw.println("Active install sessions:");
            pw.increaseIndent();
            List<PackageInstallerSession> finalizedSessions = new ArrayList<>();
            int N = this.mSessions.size();
            for (int i = 0; i < N; i++) {
                PackageInstallerSession session = this.mSessions.valueAt(i);
                if (session.isStagedAndInTerminalState()) {
                    finalizedSessions.add(session);
                } else {
                    session.dump(pw);
                    pw.println();
                }
            }
            pw.println();
            pw.decreaseIndent();
            pw.println("Finalized install sessions:");
            pw.increaseIndent();
            int N2 = finalizedSessions.size();
            for (int i2 = 0; i2 < N2; i2++) {
                finalizedSessions.get(i2).dump(pw);
                pw.println();
            }
            pw.println();
            pw.decreaseIndent();
            pw.println("Historical install sessions:");
            pw.increaseIndent();
            int N3 = this.mHistoricalSessions.size();
            for (int i3 = 0; i3 < N3; i3++) {
                pw.print(this.mHistoricalSessions.get(i3));
                pw.println();
            }
            pw.println();
            pw.decreaseIndent();
            pw.println("Legacy install sessions:");
            pw.increaseIndent();
            pw.println(this.mLegacySessions.toString());
            pw.decreaseIndent();
        }
    }

    class InternalCallback {
        InternalCallback() {
        }

        public void onSessionBadgingChanged(PackageInstallerSession session) {
            if ((session.params.installFlags & 8388608) == 0) {
                PackageInstallerService.this.mCallbacks.notifySessionBadgingChanged(session.sessionId, session.userId);
            }
            PackageInstallerService.this.writeSessionsAsync();
        }

        public void onSessionActiveChanged(PackageInstallerSession session, boolean active) {
            if ((session.params.installFlags & 8388608) == 0) {
                PackageInstallerService.this.mCallbacks.notifySessionActiveChanged(session.sessionId, session.userId, active);
            }
        }

        public void onSessionProgressChanged(PackageInstallerSession session, float progress) {
            if ((session.params.installFlags & 8388608) == 0) {
                PackageInstallerService.this.mCallbacks.notifySessionProgressChanged(session.sessionId, session.userId, progress);
            }
        }

        public void onStagedSessionChanged(PackageInstallerSession session) {
            session.markUpdated();
            PackageInstallerService.this.writeSessionsAsync();
            if (PackageInstallerService.this.mOkToSendBroadcasts && !session.isDestroyed()) {
                PackageInstallerService.this.mPm.sendSessionUpdatedBroadcast(session.generateInfoForCaller(false, 1000), session.userId);
            }
        }

        public void onSessionFinished(final PackageInstallerSession session, final boolean success) {
            if ((session.params.installFlags & 8388608) == 0) {
                PackageInstallerService.this.mCallbacks.notifySessionFinished(session.sessionId, session.userId, success);
            }
            PackageInstallerService.this.mInstallHandler.post(new Runnable() { // from class: com.android.server.pm.PackageInstallerService.InternalCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    if (session.isStaged() && !success) {
                        PackageInstallerService.this.mStagingManager.abortSession(session);
                    }
                    synchronized (PackageInstallerService.this.mSessions) {
                        if (!session.isStaged() || !success) {
                            PackageInstallerService.this.mSessions.remove(session.sessionId);
                        }
                        PackageInstallerService.this.addHistoricalSessionLocked(session);
                        File appIconFile = PackageInstallerService.this.buildAppIconFile(session.sessionId);
                        if (appIconFile.exists()) {
                            appIconFile.delete();
                        }
                        PackageInstallerService.this.writeSessionsLocked();
                    }
                }
            });
        }

        public void onSessionPrepared(PackageInstallerSession session) {
            PackageInstallerService.this.writeSessionsAsync();
        }

        public void onSessionSealedBlocking(PackageInstallerSession session) {
            synchronized (PackageInstallerService.this.mSessions) {
                PackageInstallerService.this.writeSessionsLocked();
            }
        }
    }
}
