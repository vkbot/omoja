package com.android.server.backup.restore;

import android.app.IBackupAgent;
import android.app.backup.IBackupManagerMonitor;
import android.app.backup.IFullBackupRestoreObserver;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.Signature;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import com.android.server.LocalServices;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupManagerService;
import com.android.server.backup.BackupRestoreTask;
import com.android.server.backup.FileMetadata;
import com.android.server.backup.KeyValueAdbRestoreEngine;
import com.android.server.backup.UserBackupManagerService;
import com.android.server.backup.fullbackup.FullBackupObbConnection;
import com.android.server.backup.utils.BytesReadListener;
import com.android.server.backup.utils.FullBackupRestoreObserverUtils;
import com.android.server.backup.utils.RestoreUtils;
import com.android.server.backup.utils.TarBackupReader;
import com.android.server.wm.ActivityTaskManagerService;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class FullRestoreEngine extends RestoreEngine {
    private IBackupAgent mAgent;
    private String mAgentPackage;
    private final BackupAgentTimeoutParameters mAgentTimeoutParameters;
    final boolean mAllowApks;
    private long mAppVersion;
    private final UserBackupManagerService mBackupManagerService;
    final int mEphemeralOpToken;
    private final boolean mIsAdbRestore;
    final IBackupManagerMonitor mMonitor;
    private final BackupRestoreTask mMonitorTask;
    private IFullBackupRestoreObserver mObserver;
    final PackageInfo mOnlyPackage;
    private boolean mPipesClosed;
    private ApplicationInfo mTargetApp;
    private final int mUserId;
    private final RestoreDeleteObserver mDeleteObserver = new RestoreDeleteObserver();
    private FullBackupObbConnection mObbConnection = null;
    private final HashMap<String, RestorePolicy> mPackagePolicies = new HashMap<>();
    private final HashMap<String, String> mPackageInstallers = new HashMap<>();
    private final HashMap<String, Signature[]> mManifestSignatures = new HashMap<>();
    private final HashSet<String> mClearedPackages = new HashSet<>();
    private ParcelFileDescriptor[] mPipes = null;
    private final Object mPipesLock = new Object();
    private byte[] mWidgetData = null;
    final byte[] mBuffer = new byte[32768];

    public FullRestoreEngine(UserBackupManagerService backupManagerService, BackupRestoreTask monitorTask, IFullBackupRestoreObserver observer, IBackupManagerMonitor monitor, PackageInfo onlyPackage, boolean allowApks, int ephemeralOpToken, boolean isAdbRestore) {
        this.mBackupManagerService = backupManagerService;
        this.mEphemeralOpToken = ephemeralOpToken;
        this.mMonitorTask = monitorTask;
        this.mObserver = observer;
        this.mMonitor = monitor;
        this.mOnlyPackage = onlyPackage;
        this.mAllowApks = allowApks;
        BackupAgentTimeoutParameters agentTimeoutParameters = backupManagerService.getAgentTimeoutParameters();
        Objects.requireNonNull(agentTimeoutParameters, "Timeout parameters cannot be null");
        this.mAgentTimeoutParameters = agentTimeoutParameters;
        this.mIsAdbRestore = isAdbRestore;
        this.mUserId = backupManagerService.getUserId();
    }

    public IBackupAgent getAgent() {
        return this.mAgent;
    }

    public byte[] getWidgetData() {
        return this.mWidgetData;
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0280  */
    /* JADX WARN: Code duplicated, block: B:108:0x028d A[Catch: IOException -> 0x0553, TRY_ENTER, TRY_LEAVE, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0296 A[Catch: IOException -> 0x051c, TRY_ENTER, TRY_LEAVE, TryCatch #27 {IOException -> 0x051c, blocks: (B:105:0x0281, B:201:0x04b6, B:110:0x0296), top: B:267:0x0281 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0347  */
    /* JADX WARN: Code duplicated, block: B:139:0x0357 A[Catch: RemoteException -> 0x03a4, IOException -> 0x03a9, TRY_ENTER, TRY_LEAVE, TryCatch #26 {RemoteException -> 0x03a4, IOException -> 0x03a9, blocks: (B:122:0x02f0, B:139:0x0357, B:147:0x03bb), top: B:274:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:145:0x03ae A[Catch: RemoteException -> 0x0427, IOException -> 0x042b, TRY_ENTER, TRY_LEAVE, TryCatch #25 {RemoteException -> 0x0427, IOException -> 0x042b, blocks: (B:137:0x034f, B:145:0x03ae, B:149:0x03e7), top: B:276:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:147:0x03bb A[Catch: RemoteException -> 0x03a4, IOException -> 0x03a9, TRY_ENTER, TRY_LEAVE, TryCatch #26 {RemoteException -> 0x03a4, IOException -> 0x03a9, blocks: (B:122:0x02f0, B:139:0x0357, B:147:0x03bb), top: B:274:0x02b9 }] */
    /* JADX WARN: Code duplicated, block: B:149:0x03e7 A[Catch: RemoteException -> 0x0427, IOException -> 0x042b, TRY_ENTER, TRY_LEAVE, TryCatch #25 {RemoteException -> 0x0427, IOException -> 0x042b, blocks: (B:137:0x034f, B:145:0x03ae, B:149:0x03e7), top: B:276:0x034f }] */
    /* JADX WARN: Code duplicated, block: B:177:0x045f A[Catch: IOException -> 0x0514, TRY_LEAVE, TryCatch #16 {IOException -> 0x0514, blocks: (B:177:0x045f, B:199:0x04b2, B:175:0x0455), top: B:262:0x0455 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x0477 A[Catch: IOException -> 0x0443, TRY_ENTER, TryCatch #10 {IOException -> 0x0443, blocks: (B:181:0x0477, B:183:0x047d, B:185:0x0480, B:196:0x0497, B:184:0x047f, B:169:0x043a, B:192:0x0490), top: B:253:0x043a, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:183:0x047d A[Catch: IOException -> 0x0443, TryCatch #10 {IOException -> 0x0443, blocks: (B:181:0x0477, B:183:0x047d, B:185:0x0480, B:196:0x0497, B:184:0x047f, B:169:0x043a, B:192:0x0490), top: B:253:0x043a, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:184:0x047f A[Catch: IOException -> 0x0443, TryCatch #10 {IOException -> 0x0443, blocks: (B:181:0x0477, B:183:0x047d, B:185:0x0480, B:196:0x0497, B:184:0x047f, B:169:0x043a, B:192:0x0490), top: B:253:0x043a, inners: #15 }] */
    /* JADX WARN: Code duplicated, block: B:189:0x048a  */
    /* JADX WARN: Code duplicated, block: B:191:0x048f  */
    /* JADX WARN: Code duplicated, block: B:204:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:206:0x04cb A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:208:0x0507 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:210:0x0510  */
    /* JADX WARN: Code duplicated, block: B:215:0x0520  */
    /* JADX WARN: Code duplicated, block: B:217:0x0528 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:220:0x0538 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:222:0x053e A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:223:0x0540 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:228:0x054e A[LOOP:1: B:218:0x0532->B:228:0x054e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:240:0x058b  */
    /* JADX WARN: Code duplicated, block: B:242:0x0594  */
    /* JADX WARN: Code duplicated, block: B:243:0x059c  */
    /* JADX WARN: Code duplicated, block: B:245:0x059f A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:248:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:269:0x02bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:287:0x04b2 A[EDGE_INSN: B:287:0x04b2->B:199:0x04b2 BREAK  A[LOOP:0: B:179:0x0471->B:198:0x04b0], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x04b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x0561 A[EDGE_INSN: B:291:0x0561->B:234:0x0561 BREAK  A[LOOP:1: B:218:0x0532->B:228:0x054e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ff A[Catch: IOException -> 0x011d, TRY_ENTER, TRY_LEAVE, TryCatch #26 {IOException -> 0x011d, blocks: (B:30:0x00c1, B:37:0x00ff, B:52:0x0140, B:53:0x0152, B:55:0x015a), top: B:266:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0122  */
    /* JADX WARN: Code duplicated, block: B:49:0x0139  */
    /* JADX WARN: Code duplicated, block: B:51:0x013e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0140 A[Catch: IOException -> 0x011d, TRY_ENTER, TryCatch #26 {IOException -> 0x011d, blocks: (B:30:0x00c1, B:37:0x00ff, B:52:0x0140, B:53:0x0152, B:55:0x015a), top: B:266:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x0152 A[Catch: IOException -> 0x011d, TryCatch #26 {IOException -> 0x011d, blocks: (B:30:0x00c1, B:37:0x00ff, B:52:0x0140, B:53:0x0152, B:55:0x015a), top: B:266:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x015a A[Catch: IOException -> 0x011d, TRY_LEAVE, TryCatch #26 {IOException -> 0x011d, blocks: (B:30:0x00c1, B:37:0x00ff, B:52:0x0140, B:53:0x0152, B:55:0x015a), top: B:266:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0164  */
    /* JADX WARN: Code duplicated, block: B:58:0x0168 A[Catch: IOException -> 0x0557, TRY_ENTER, TryCatch #13 {IOException -> 0x0557, blocks: (B:35:0x00f5, B:46:0x0123, B:58:0x0168, B:60:0x0170), top: B:257:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0170 A[Catch: IOException -> 0x0557, TRY_LEAVE, TryCatch #13 {IOException -> 0x0557, blocks: (B:35:0x00f5, B:46:0x0123, B:58:0x0168, B:60:0x0170), top: B:257:0x00f5 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x01a2 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x01a5 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x01b3 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:76:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f7 A[Catch: NameNotFoundException | IOException -> 0x0231, TryCatch #9 {NameNotFoundException | IOException -> 0x0231, blocks: (B:81:0x01e0, B:83:0x01f7, B:87:0x0211, B:86:0x0207, B:88:0x0216, B:92:0x0228), top: B:251:0x01e0 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0207 A[Catch: NameNotFoundException | IOException -> 0x0231, TryCatch #9 {NameNotFoundException | IOException -> 0x0231, blocks: (B:81:0x01e0, B:83:0x01f7, B:87:0x0211, B:86:0x0207, B:88:0x0216, B:92:0x0228), top: B:251:0x01e0 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0225  */
    /* JADX WARN: Code duplicated, block: B:97:0x0236 A[Catch: IOException -> 0x0553, TryCatch #14 {IOException -> 0x0553, blocks: (B:70:0x01c4, B:72:0x01ca, B:79:0x01dc, B:95:0x0232, B:97:0x0236, B:99:0x0257, B:101:0x025f, B:108:0x028d, B:203:0x04bd, B:206:0x04cb, B:208:0x0507, B:217:0x0528, B:220:0x0538, B:222:0x053e, B:224:0x0541, B:223:0x0540, B:62:0x019a, B:64:0x01a2, B:66:0x01a7, B:65:0x01a5, B:68:0x01b3), top: B:259:0x0137 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:139:0x0357, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:97:0x0236, please report this as an issue */
    public boolean restoreOneFile(InputStream instream, boolean mustKillAgent, byte[] buffer, PackageInfo onlyPackage, boolean allowApks, int token, IBackupManagerMonitor monitor) throws Exception {
        FileMetadata info;
        boolean z;
        FileMetadata info2;
        String pkg;
        boolean okay;
        int i;
        boolean okay2;
        long bytesToConsume;
        int toRead;
        long nRead;
        long toCopy;
        long timeout;
        long toCopy2;
        TarBackupReader tarBackupReader;
        boolean agentSuccess;
        FileOutputStream pipe;
        boolean pipeOkay;
        long toCopy3;
        int length;
        int nRead2;
        boolean agentSuccess2;
        boolean okay3;
        boolean isSuccessfullyInstalled;
        RestorePolicy restorePolicy;
        if (!isRunning()) {
            Slog.w(BackupManagerService.TAG, "Restore engine used after halting");
            return false;
        }
        BytesReadListener bytesReadListener = new BytesReadListener() { // from class: com.android.server.backup.restore.-$$Lambda$FullRestoreEngine$4tWYktC0BIhLX9UJcbVLlqtWGqU
            @Override // com.android.server.backup.utils.BytesReadListener
            public final void onBytesRead(long j) {
                FullRestoreEngine.lambda$restoreOneFile$0(j);
            }
        };
        IBackupManagerMonitor monitor2 = monitor;
        TarBackupReader tarBackupReader2 = new TarBackupReader(instream, bytesReadListener, monitor2);
        try {
            FileMetadata info3 = tarBackupReader2.readTarHeaders();
            if (info3 != null) {
                String pkg2 = info3.packageName;
                if (pkg2.equals(this.mAgentPackage)) {
                    try {
                        if (info3.path.equals(UserBackupManagerService.BACKUP_MANIFEST_FILENAME)) {
                            try {
                                Signature[] signatures = tarBackupReader2.readAppManifestAndReturnSignatures(info3);
                                this.mAppVersion = info3.version;
                                PackageManagerInternal pmi = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                                RestorePolicy restorePolicy2 = tarBackupReader2.chooseRestorePolicy(this.mBackupManagerService.getPackageManager(), allowApks, info3, signatures, pmi, this.mUserId);
                                this.mManifestSignatures.put(info3.packageName, signatures);
                                this.mPackagePolicies.put(pkg2, restorePolicy2);
                                this.mPackageInstallers.put(pkg2, info3.installerPackageName);
                                tarBackupReader2.skipTarPadding(info3.size);
                                this.mObserver = FullBackupRestoreObserverUtils.sendOnRestorePackage(this.mObserver, pkg2);
                                info2 = info3;
                            } catch (IOException e) {
                                e = e;
                                Slog.w(BackupManagerService.TAG, "io exception on restore socket read: " + e.getMessage());
                                setResult(-3);
                                info = null;
                            }
                        } else {
                            pkg = pkg2;
                            try {
                                if (info3.path.equals(UserBackupManagerService.BACKUP_METADATA_FILENAME)) {
                                    tarBackupReader2.readMetadata(info3);
                                    this.mWidgetData = tarBackupReader2.getWidgetData();
                                    IBackupManagerMonitor monitor3 = tarBackupReader2.getMonitor();
                                    try {
                                        tarBackupReader2.skipTarPadding(info3.size);
                                        info2 = info3;
                                    } catch (IOException e2) {
                                        e = e2;
                                        monitor2 = monitor3;
                                        Slog.w(BackupManagerService.TAG, "io exception on restore socket read: " + e.getMessage());
                                        setResult(-3);
                                        info = null;
                                    }
                                } else {
                                    okay = true;
                                    RestorePolicy policy = this.mPackagePolicies.get(pkg);
                                    i = AnonymousClass1.$SwitchMap$com$android$server$backup$restore$RestorePolicy[policy.ordinal()];
                                    try {
                                        if (i != 1) {
                                            okay = false;
                                        } else if (i != 2) {
                                            if (i != 3) {
                                                Slog.e(BackupManagerService.TAG, "Invalid policy from manifest");
                                                okay = false;
                                                this.mPackagePolicies.put(pkg, RestorePolicy.IGNORE);
                                            } else if (info3.domain.equals(ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD)) {
                                                Slog.d(BackupManagerService.TAG, "apk present but ACCEPT");
                                                okay = false;
                                            }
                                        } else {
                                            if (info3.domain.equals(ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD)) {
                                                Slog.d(BackupManagerService.TAG, "APK file; installing");
                                                String installerPackageName = this.mPackageInstallers.get(pkg);
                                                isSuccessfullyInstalled = RestoreUtils.installApk(instream, this.mBackupManagerService.getContext(), this.mDeleteObserver, this.mManifestSignatures, this.mPackagePolicies, info3, installerPackageName, bytesReadListener, this.mUserId);
                                                HashMap<String, RestorePolicy> map = this.mPackagePolicies;
                                                if (isSuccessfullyInstalled) {
                                                    restorePolicy = RestorePolicy.ACCEPT;
                                                } else {
                                                    restorePolicy = RestorePolicy.IGNORE;
                                                }
                                                map.put(pkg, restorePolicy);
                                                tarBackupReader2.skipTarPadding(info3.size);
                                                return true;
                                            }
                                            this.mPackagePolicies.put(pkg, RestorePolicy.IGNORE);
                                            okay = false;
                                        }
                                        if (isRestorableFile(info2) || !isCanonicalFilePath(info2.path)) {
                                            okay2 = false;
                                        } else {
                                            okay2 = okay;
                                        }
                                        if (okay2 && this.mAgent == null) {
                                            try {
                                                this.mTargetApp = this.mBackupManagerService.getPackageManager().getApplicationInfoAsUser(pkg, 0, this.mUserId);
                                                if (!this.mClearedPackages.contains(pkg)) {
                                                    boolean forceClear = shouldForceClearAppDataOnFullRestore(this.mTargetApp.packageName);
                                                    if (this.mTargetApp.backupAgentName != null || forceClear) {
                                                        Slog.d(BackupManagerService.TAG, "Clearing app data preparatory to full restore");
                                                        this.mBackupManagerService.clearApplicationDataBeforeRestore(pkg);
                                                    }
                                                    this.mClearedPackages.add(pkg);
                                                }
                                                setUpPipes();
                                                this.mAgent = this.mBackupManagerService.bindToAgentSynchronous(this.mTargetApp, "k".equals(info2.domain) ? 0 : 3);
                                                this.mAgentPackage = pkg;
                                            } catch (PackageManager.NameNotFoundException | IOException e3) {
                                            }
                                            if (this.mAgent == null) {
                                                Slog.e(BackupManagerService.TAG, "Unable to create agent for " + pkg);
                                                okay2 = false;
                                                tearDownPipes();
                                                this.mPackagePolicies.put(pkg, RestorePolicy.IGNORE);
                                            }
                                        }
                                        if (okay2 && !pkg.equals(this.mAgentPackage)) {
                                            Slog.e(BackupManagerService.TAG, "Restoring data for " + pkg + " but agent is for " + this.mAgentPackage);
                                            okay2 = false;
                                        }
                                        if (okay2) {
                                            try {
                                                toCopy = info2.size;
                                                boolean isSharedStorage = pkg.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE);
                                                timeout = isSharedStorage ? this.mAgentTimeoutParameters.getSharedBackupAgentTimeoutMillis() : this.mAgentTimeoutParameters.getRestoreAgentTimeoutMillis();
                                                try {
                                                    this.mBackupManagerService.prepareOperationTimeout(token, timeout, this.mMonitorTask, 1);
                                                    try {
                                                        if ("obb".equals(info2.domain)) {
                                                            try {
                                                                Slog.d(BackupManagerService.TAG, "Restoring OBB file for " + pkg + " : " + info2.path);
                                                                agentSuccess2 = true;
                                                                okay3 = okay2;
                                                                try {
                                                                    toCopy2 = toCopy;
                                                                    try {
                                                                        tarBackupReader = tarBackupReader2;
                                                                        this.mObbConnection.restoreObbFile(pkg, this.mPipes[0], info2.size, info2.type, info2.path, info2.mode, info2.mtime, token, this.mBackupManagerService.getBackupManagerBinder());
                                                                        okay2 = okay3;
                                                                        agentSuccess = agentSuccess2;
                                                                    } catch (RemoteException e4) {
                                                                        tarBackupReader = tarBackupReader2;
                                                                        pkg = pkg;
                                                                        try {
                                                                            Slog.e(BackupManagerService.TAG, "Agent crashed during full restore");
                                                                            agentSuccess = false;
                                                                            okay2 = false;
                                                                        } catch (IOException e5) {
                                                                            e = e5;
                                                                            monitor2 = monitor;
                                                                            Slog.w(BackupManagerService.TAG, "io exception on restore socket read: " + e.getMessage());
                                                                            setResult(-3);
                                                                            info = null;
                                                                        }
                                                                    } catch (IOException e6) {
                                                                        tarBackupReader = tarBackupReader2;
                                                                        pkg = pkg;
                                                                        try {
                                                                            Slog.d(BackupManagerService.TAG, "Couldn't establish restore");
                                                                            agentSuccess = false;
                                                                            okay2 = false;
                                                                        } catch (IOException e7) {
                                                                            e = e7;
                                                                            monitor2 = monitor;
                                                                            Slog.w(BackupManagerService.TAG, "io exception on restore socket read: " + e.getMessage());
                                                                            setResult(-3);
                                                                            info = null;
                                                                        }
                                                                    }
                                                                } catch (RemoteException e8) {
                                                                    toCopy2 = toCopy;
                                                                    tarBackupReader = tarBackupReader2;
                                                                    pkg = pkg;
                                                                } catch (IOException e9) {
                                                                    toCopy2 = toCopy;
                                                                    tarBackupReader = tarBackupReader2;
                                                                    pkg = pkg;
                                                                }
                                                            } catch (RemoteException e10) {
                                                                toCopy2 = toCopy;
                                                                tarBackupReader = tarBackupReader2;
                                                                pkg = pkg;
                                                            } catch (IOException e11) {
                                                                toCopy2 = toCopy;
                                                                tarBackupReader = tarBackupReader2;
                                                                pkg = pkg;
                                                            }
                                                            if (okay2) {
                                                                pipe = new FileOutputStream(this.mPipes[1].getFileDescriptor());
                                                                pipeOkay = true;
                                                                toCopy3 = toCopy2;
                                                                while (toCopy3 > 0) {
                                                                    if (toCopy3 > buffer.length) {
                                                                        length = buffer.length;
                                                                    } else {
                                                                        length = (int) toCopy3;
                                                                    }
                                                                    int toRead2 = length;
                                                                    nRead2 = instream.read(buffer, 0, toRead2);
                                                                    if (nRead2 <= 0) {
                                                                        break;
                                                                    }
                                                                    toCopy3 -= (long) nRead2;
                                                                    if (pipeOkay) {
                                                                        try {
                                                                            pipe.write(buffer, 0, nRead2);
                                                                        } catch (IOException e12) {
                                                                            Slog.e(BackupManagerService.TAG, "Failed to write to restore pipe: " + e12.getMessage());
                                                                            pipeOkay = false;
                                                                        }
                                                                    }
                                                                }
                                                                tarBackupReader.skipTarPadding(info2.size);
                                                                agentSuccess = this.mBackupManagerService.waitUntilOperationComplete(token);
                                                            }
                                                            if (!agentSuccess) {
                                                                StringBuilder sb = new StringBuilder();
                                                                sb.append("Agent failure restoring ");
                                                                String pkg3 = pkg;
                                                                sb.append(pkg3);
                                                                sb.append("; ending restore");
                                                                Slog.w(BackupManagerService.TAG, sb.toString());
                                                                this.mBackupManagerService.getBackupHandler().removeMessages(18);
                                                                tearDownPipes();
                                                                tearDownAgent(this.mTargetApp, false);
                                                                this.mAgent = null;
                                                                this.mPackagePolicies.put(pkg3, RestorePolicy.IGNORE);
                                                                if (onlyPackage != null) {
                                                                    setResult(-2);
                                                                    setRunning(false);
                                                                    return false;
                                                                }
                                                            }
                                                        } else {
                                                            agentSuccess2 = true;
                                                            okay3 = okay2;
                                                            toCopy2 = toCopy;
                                                            tarBackupReader = tarBackupReader2;
                                                            try {
                                                                if ("k".equals(info2.domain)) {
                                                                    Slog.d(BackupManagerService.TAG, "Restoring key-value file for " + pkg + " : " + info2.path);
                                                                    info2.version = this.mAppVersion;
                                                                    KeyValueAdbRestoreEngine restoreEngine = new KeyValueAdbRestoreEngine(this.mBackupManagerService, this.mBackupManagerService.getDataDir(), info3, this.mPipes[0], this.mAgent, token);
                                                                    new Thread(restoreEngine, "restore-key-value-runner").start();
                                                                } else {
                                                                    if (this.mTargetApp.processName.equals("system")) {
                                                                        Slog.d(BackupManagerService.TAG, "system process agent - spinning a thread");
                                                                        RestoreFileRunnable runner = new RestoreFileRunnable(this.mBackupManagerService, this.mAgent, info3, this.mPipes[0], token);
                                                                        new Thread(runner, "restore-sys-runner").start();
                                                                    } else {
                                                                        try {
                                                                            pkg = pkg;
                                                                            try {
                                                                                this.mAgent.doRestoreFile(this.mPipes[0], info2.size, info2.type, info2.domain, info2.path, info2.mode, info2.mtime, token, this.mBackupManagerService.getBackupManagerBinder());
                                                                            } catch (RemoteException e13) {
                                                                                Slog.e(BackupManagerService.TAG, "Agent crashed during full restore");
                                                                                agentSuccess = false;
                                                                                okay2 = false;
                                                                            } catch (IOException e14) {
                                                                                Slog.d(BackupManagerService.TAG, "Couldn't establish restore");
                                                                                agentSuccess = false;
                                                                                okay2 = false;
                                                                            }
                                                                        } catch (RemoteException e15) {
                                                                            pkg = pkg;
                                                                        } catch (IOException e16) {
                                                                            pkg = pkg;
                                                                        }
                                                                    }
                                                                    okay2 = okay3;
                                                                    agentSuccess = agentSuccess2;
                                                                    if (okay2) {
                                                                        pipe = new FileOutputStream(this.mPipes[1].getFileDescriptor());
                                                                        pipeOkay = true;
                                                                        toCopy3 = toCopy2;
                                                                        while (toCopy3 > 0) {
                                                                            if (toCopy3 > buffer.length) {
                                                                                length = buffer.length;
                                                                            } else {
                                                                                length = (int) toCopy3;
                                                                            }
                                                                            int toRead3 = length;
                                                                            nRead2 = instream.read(buffer, 0, toRead3);
                                                                            if (nRead2 <= 0) {
                                                                                break;
                                                                                break;
                                                                            }
                                                                            toCopy3 -= (long) nRead2;
                                                                            if (pipeOkay) {
                                                                                pipe.write(buffer, 0, nRead2);
                                                                            }
                                                                        }
                                                                        tarBackupReader.skipTarPadding(info2.size);
                                                                        agentSuccess = this.mBackupManagerService.waitUntilOperationComplete(token);
                                                                    }
                                                                    if (!agentSuccess) {
                                                                        StringBuilder sb2 = new StringBuilder();
                                                                        sb2.append("Agent failure restoring ");
                                                                        String pkg4 = pkg;
                                                                        sb2.append(pkg4);
                                                                        sb2.append("; ending restore");
                                                                        Slog.w(BackupManagerService.TAG, sb2.toString());
                                                                        this.mBackupManagerService.getBackupHandler().removeMessages(18);
                                                                        tearDownPipes();
                                                                        tearDownAgent(this.mTargetApp, false);
                                                                        this.mAgent = null;
                                                                        this.mPackagePolicies.put(pkg4, RestorePolicy.IGNORE);
                                                                        if (onlyPackage != null) {
                                                                            setResult(-2);
                                                                            setRunning(false);
                                                                            return false;
                                                                        }
                                                                    }
                                                                }
                                                                okay2 = okay3;
                                                                agentSuccess = agentSuccess2;
                                                            } catch (RemoteException e17) {
                                                                pkg = pkg;
                                                            } catch (IOException e18) {
                                                                pkg = pkg;
                                                            }
                                                            if (okay2) {
                                                                pipe = new FileOutputStream(this.mPipes[1].getFileDescriptor());
                                                                pipeOkay = true;
                                                                toCopy3 = toCopy2;
                                                                while (toCopy3 > 0) {
                                                                    if (toCopy3 > buffer.length) {
                                                                        length = buffer.length;
                                                                    } else {
                                                                        length = (int) toCopy3;
                                                                    }
                                                                    int toRead4 = length;
                                                                    nRead2 = instream.read(buffer, 0, toRead4);
                                                                    if (nRead2 <= 0) {
                                                                        break;
                                                                        break;
                                                                    }
                                                                    toCopy3 -= (long) nRead2;
                                                                    if (pipeOkay) {
                                                                        pipe.write(buffer, 0, nRead2);
                                                                    }
                                                                }
                                                                tarBackupReader.skipTarPadding(info2.size);
                                                                agentSuccess = this.mBackupManagerService.waitUntilOperationComplete(token);
                                                            }
                                                            if (!agentSuccess) {
                                                                StringBuilder sb3 = new StringBuilder();
                                                                sb3.append("Agent failure restoring ");
                                                                String pkg5 = pkg;
                                                                sb3.append(pkg5);
                                                                sb3.append("; ending restore");
                                                                Slog.w(BackupManagerService.TAG, sb3.toString());
                                                                this.mBackupManagerService.getBackupHandler().removeMessages(18);
                                                                tearDownPipes();
                                                                tearDownAgent(this.mTargetApp, false);
                                                                this.mAgent = null;
                                                                this.mPackagePolicies.put(pkg5, RestorePolicy.IGNORE);
                                                                if (onlyPackage != null) {
                                                                    setResult(-2);
                                                                    setRunning(false);
                                                                    return false;
                                                                }
                                                            }
                                                        }
                                                    } catch (RemoteException e19) {
                                                        pkg = pkg;
                                                    } catch (IOException e20) {
                                                        pkg = pkg;
                                                    }
                                                } catch (RemoteException e21) {
                                                    toCopy2 = toCopy;
                                                    tarBackupReader = tarBackupReader2;
                                                    pkg = pkg;
                                                } catch (IOException e22) {
                                                    toCopy2 = toCopy;
                                                    tarBackupReader = tarBackupReader2;
                                                    pkg = pkg;
                                                }
                                            } catch (IOException e23) {
                                                e = e23;
                                                monitor2 = monitor;
                                            }
                                        }
                                        if (!okay2) {
                                            bytesToConsume = (info2.size + 511) & (-512);
                                            while (bytesToConsume > 0) {
                                                if (bytesToConsume > buffer.length) {
                                                    toRead = buffer.length;
                                                } else {
                                                    toRead = (int) bytesToConsume;
                                                }
                                                nRead = instream.read(buffer, 0, toRead);
                                                if (nRead <= 0) {
                                                    break;
                                                }
                                                bytesToConsume -= nRead;
                                            }
                                        }
                                    } catch (IOException e24) {
                                        e = e24;
                                    }
                                }
                            } catch (IOException e25) {
                                e = e25;
                                monitor2 = monitor;
                            }
                            Slog.w(BackupManagerService.TAG, "io exception on restore socket read: " + e.getMessage());
                            setResult(-3);
                            info = null;
                        }
                        info = info2;
                    } catch (IOException e26) {
                        e = e26;
                    }
                } else {
                    if (onlyPackage != null) {
                        try {
                            if (!pkg2.equals(onlyPackage.packageName)) {
                                Slog.w(BackupManagerService.TAG, "Expected data for " + onlyPackage + " but saw " + pkg2);
                                setResult(-3);
                                setRunning(false);
                                return false;
                            }
                        } catch (IOException e27) {
                            e = e27;
                        }
                    }
                    if (!this.mPackagePolicies.containsKey(pkg2)) {
                        this.mPackagePolicies.put(pkg2, RestorePolicy.IGNORE);
                    }
                    if (this.mAgent != null) {
                        Slog.d(BackupManagerService.TAG, "Saw new package; finalizing old one");
                        tearDownPipes();
                        tearDownAgent(this.mTargetApp, this.mIsAdbRestore);
                        this.mTargetApp = null;
                        this.mAgentPackage = null;
                    }
                    if (info3.path.equals(UserBackupManagerService.BACKUP_MANIFEST_FILENAME)) {
                        Signature[] signatures2 = tarBackupReader2.readAppManifestAndReturnSignatures(info3);
                        this.mAppVersion = info3.version;
                        PackageManagerInternal pmi2 = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
                        RestorePolicy restorePolicy3 = tarBackupReader2.chooseRestorePolicy(this.mBackupManagerService.getPackageManager(), allowApks, info3, signatures2, pmi2, this.mUserId);
                        this.mManifestSignatures.put(info3.packageName, signatures2);
                        this.mPackagePolicies.put(pkg2, restorePolicy3);
                        this.mPackageInstallers.put(pkg2, info3.installerPackageName);
                        tarBackupReader2.skipTarPadding(info3.size);
                        this.mObserver = FullBackupRestoreObserverUtils.sendOnRestorePackage(this.mObserver, pkg2);
                        info2 = info3;
                    } else {
                        pkg = pkg2;
                        if (info3.path.equals(UserBackupManagerService.BACKUP_METADATA_FILENAME)) {
                            tarBackupReader2.readMetadata(info3);
                            this.mWidgetData = tarBackupReader2.getWidgetData();
                            IBackupManagerMonitor monitor4 = tarBackupReader2.getMonitor();
                            tarBackupReader2.skipTarPadding(info3.size);
                            info2 = info3;
                        } else {
                            okay = true;
                            RestorePolicy policy2 = this.mPackagePolicies.get(pkg);
                            i = AnonymousClass1.$SwitchMap$com$android$server$backup$restore$RestorePolicy[policy2.ordinal()];
                            if (i != 1) {
                                okay = false;
                            } else if (i != 2) {
                                if (i != 3) {
                                    Slog.e(BackupManagerService.TAG, "Invalid policy from manifest");
                                    okay = false;
                                    this.mPackagePolicies.put(pkg, RestorePolicy.IGNORE);
                                } else if (info3.domain.equals(ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD)) {
                                    Slog.d(BackupManagerService.TAG, "apk present but ACCEPT");
                                    okay = false;
                                }
                            } else {
                                if (info3.domain.equals(ActivityTaskManagerService.DUMP_ACTIVITIES_SHORT_CMD)) {
                                    Slog.d(BackupManagerService.TAG, "APK file; installing");
                                    String installerPackageName2 = this.mPackageInstallers.get(pkg);
                                    isSuccessfullyInstalled = RestoreUtils.installApk(instream, this.mBackupManagerService.getContext(), this.mDeleteObserver, this.mManifestSignatures, this.mPackagePolicies, info3, installerPackageName2, bytesReadListener, this.mUserId);
                                    HashMap<String, RestorePolicy> map2 = this.mPackagePolicies;
                                    if (isSuccessfullyInstalled) {
                                        restorePolicy = RestorePolicy.ACCEPT;
                                    } else {
                                        restorePolicy = RestorePolicy.IGNORE;
                                    }
                                    map2.put(pkg, restorePolicy);
                                    tarBackupReader2.skipTarPadding(info3.size);
                                    return true;
                                }
                                this.mPackagePolicies.put(pkg, RestorePolicy.IGNORE);
                                okay = false;
                            }
                            if (isRestorableFile(info2)) {
                                okay2 = false;
                            } else {
                                okay2 = false;
                            }
                            if (okay2) {
                                this.mTargetApp = this.mBackupManagerService.getPackageManager().getApplicationInfoAsUser(pkg, 0, this.mUserId);
                                if (!this.mClearedPackages.contains(pkg)) {
                                    boolean forceClear2 = shouldForceClearAppDataOnFullRestore(this.mTargetApp.packageName);
                                    if (this.mTargetApp.backupAgentName != null) {
                                        Slog.d(BackupManagerService.TAG, "Clearing app data preparatory to full restore");
                                        this.mBackupManagerService.clearApplicationDataBeforeRestore(pkg);
                                    } else {
                                        Slog.d(BackupManagerService.TAG, "Clearing app data preparatory to full restore");
                                        this.mBackupManagerService.clearApplicationDataBeforeRestore(pkg);
                                    }
                                    this.mClearedPackages.add(pkg);
                                }
                                setUpPipes();
                                this.mAgent = this.mBackupManagerService.bindToAgentSynchronous(this.mTargetApp, "k".equals(info2.domain) ? 0 : 3);
                                this.mAgentPackage = pkg;
                                if (this.mAgent == null) {
                                    Slog.e(BackupManagerService.TAG, "Unable to create agent for " + pkg);
                                    okay2 = false;
                                    tearDownPipes();
                                    this.mPackagePolicies.put(pkg, RestorePolicy.IGNORE);
                                }
                            }
                            if (okay2) {
                                Slog.e(BackupManagerService.TAG, "Restoring data for " + pkg + " but agent is for " + this.mAgentPackage);
                                okay2 = false;
                            }
                            if (okay2) {
                                toCopy = info2.size;
                                boolean isSharedStorage2 = pkg.equals(UserBackupManagerService.SHARED_BACKUP_AGENT_PACKAGE);
                                if (isSharedStorage2) {
                                }
                                this.mBackupManagerService.prepareOperationTimeout(token, timeout, this.mMonitorTask, 1);
                                if ("obb".equals(info2.domain)) {
                                    Slog.d(BackupManagerService.TAG, "Restoring OBB file for " + pkg + " : " + info2.path);
                                    agentSuccess2 = true;
                                    okay3 = okay2;
                                    toCopy2 = toCopy;
                                    tarBackupReader = tarBackupReader2;
                                    this.mObbConnection.restoreObbFile(pkg, this.mPipes[0], info2.size, info2.type, info2.path, info2.mode, info2.mtime, token, this.mBackupManagerService.getBackupManagerBinder());
                                    okay2 = okay3;
                                    agentSuccess = agentSuccess2;
                                    if (okay2) {
                                        pipe = new FileOutputStream(this.mPipes[1].getFileDescriptor());
                                        pipeOkay = true;
                                        toCopy3 = toCopy2;
                                        while (toCopy3 > 0) {
                                            if (toCopy3 > buffer.length) {
                                                length = buffer.length;
                                            } else {
                                                length = (int) toCopy3;
                                            }
                                            int toRead5 = length;
                                            nRead2 = instream.read(buffer, 0, toRead5);
                                            if (nRead2 <= 0) {
                                                break;
                                                break;
                                            }
                                            toCopy3 -= (long) nRead2;
                                            if (pipeOkay) {
                                                pipe.write(buffer, 0, nRead2);
                                            }
                                        }
                                        tarBackupReader.skipTarPadding(info2.size);
                                        agentSuccess = this.mBackupManagerService.waitUntilOperationComplete(token);
                                    }
                                    if (!agentSuccess) {
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("Agent failure restoring ");
                                        String pkg6 = pkg;
                                        sb4.append(pkg6);
                                        sb4.append("; ending restore");
                                        Slog.w(BackupManagerService.TAG, sb4.toString());
                                        this.mBackupManagerService.getBackupHandler().removeMessages(18);
                                        tearDownPipes();
                                        tearDownAgent(this.mTargetApp, false);
                                        this.mAgent = null;
                                        this.mPackagePolicies.put(pkg6, RestorePolicy.IGNORE);
                                        if (onlyPackage != null) {
                                            setResult(-2);
                                            setRunning(false);
                                            return false;
                                        }
                                    }
                                } else {
                                    agentSuccess2 = true;
                                    okay3 = okay2;
                                    toCopy2 = toCopy;
                                    tarBackupReader = tarBackupReader2;
                                    if ("k".equals(info2.domain)) {
                                        Slog.d(BackupManagerService.TAG, "Restoring key-value file for " + pkg + " : " + info2.path);
                                        info2.version = this.mAppVersion;
                                        KeyValueAdbRestoreEngine restoreEngine2 = new KeyValueAdbRestoreEngine(this.mBackupManagerService, this.mBackupManagerService.getDataDir(), info3, this.mPipes[0], this.mAgent, token);
                                        new Thread(restoreEngine2, "restore-key-value-runner").start();
                                    } else {
                                        if (this.mTargetApp.processName.equals("system")) {
                                            Slog.d(BackupManagerService.TAG, "system process agent - spinning a thread");
                                            RestoreFileRunnable runner2 = new RestoreFileRunnable(this.mBackupManagerService, this.mAgent, info3, this.mPipes[0], token);
                                            new Thread(runner2, "restore-sys-runner").start();
                                        } else {
                                            pkg = pkg;
                                            this.mAgent.doRestoreFile(this.mPipes[0], info2.size, info2.type, info2.domain, info2.path, info2.mode, info2.mtime, token, this.mBackupManagerService.getBackupManagerBinder());
                                        }
                                        okay2 = okay3;
                                        agentSuccess = agentSuccess2;
                                        if (okay2) {
                                            pipe = new FileOutputStream(this.mPipes[1].getFileDescriptor());
                                            pipeOkay = true;
                                            toCopy3 = toCopy2;
                                            while (toCopy3 > 0) {
                                                if (toCopy3 > buffer.length) {
                                                    length = buffer.length;
                                                } else {
                                                    length = (int) toCopy3;
                                                }
                                                int toRead6 = length;
                                                nRead2 = instream.read(buffer, 0, toRead6);
                                                if (nRead2 <= 0) {
                                                    break;
                                                    break;
                                                }
                                                toCopy3 -= (long) nRead2;
                                                if (pipeOkay) {
                                                    pipe.write(buffer, 0, nRead2);
                                                }
                                            }
                                            tarBackupReader.skipTarPadding(info2.size);
                                            agentSuccess = this.mBackupManagerService.waitUntilOperationComplete(token);
                                        }
                                        if (!agentSuccess) {
                                            StringBuilder sb5 = new StringBuilder();
                                            sb5.append("Agent failure restoring ");
                                            String pkg7 = pkg;
                                            sb5.append(pkg7);
                                            sb5.append("; ending restore");
                                            Slog.w(BackupManagerService.TAG, sb5.toString());
                                            this.mBackupManagerService.getBackupHandler().removeMessages(18);
                                            tearDownPipes();
                                            tearDownAgent(this.mTargetApp, false);
                                            this.mAgent = null;
                                            this.mPackagePolicies.put(pkg7, RestorePolicy.IGNORE);
                                            if (onlyPackage != null) {
                                                setResult(-2);
                                                setRunning(false);
                                                return false;
                                            }
                                        }
                                    }
                                    okay2 = okay3;
                                    agentSuccess = agentSuccess2;
                                    if (okay2) {
                                        pipe = new FileOutputStream(this.mPipes[1].getFileDescriptor());
                                        pipeOkay = true;
                                        toCopy3 = toCopy2;
                                        while (toCopy3 > 0) {
                                            if (toCopy3 > buffer.length) {
                                                length = buffer.length;
                                            } else {
                                                length = (int) toCopy3;
                                            }
                                            int toRead7 = length;
                                            nRead2 = instream.read(buffer, 0, toRead7);
                                            if (nRead2 <= 0) {
                                                break;
                                                break;
                                            }
                                            toCopy3 -= (long) nRead2;
                                            if (pipeOkay) {
                                                pipe.write(buffer, 0, nRead2);
                                            }
                                        }
                                        tarBackupReader.skipTarPadding(info2.size);
                                        agentSuccess = this.mBackupManagerService.waitUntilOperationComplete(token);
                                    }
                                    if (!agentSuccess) {
                                        StringBuilder sb6 = new StringBuilder();
                                        sb6.append("Agent failure restoring ");
                                        String pkg8 = pkg;
                                        sb6.append(pkg8);
                                        sb6.append("; ending restore");
                                        Slog.w(BackupManagerService.TAG, sb6.toString());
                                        this.mBackupManagerService.getBackupHandler().removeMessages(18);
                                        tearDownPipes();
                                        tearDownAgent(this.mTargetApp, false);
                                        this.mAgent = null;
                                        this.mPackagePolicies.put(pkg8, RestorePolicy.IGNORE);
                                        if (onlyPackage != null) {
                                            setResult(-2);
                                            setRunning(false);
                                            return false;
                                        }
                                    }
                                }
                            }
                            if (!okay2) {
                                bytesToConsume = (info2.size + 511) & (-512);
                                while (bytesToConsume > 0) {
                                    if (bytesToConsume > buffer.length) {
                                        toRead = buffer.length;
                                    } else {
                                        toRead = (int) bytesToConsume;
                                    }
                                    nRead = instream.read(buffer, 0, toRead);
                                    if (nRead <= 0) {
                                        break;
                                        break;
                                    }
                                    bytesToConsume -= nRead;
                                }
                            }
                        }
                        Slog.w(BackupManagerService.TAG, "io exception on restore socket read: " + e.getMessage());
                        setResult(-3);
                        info = null;
                    }
                    info = info2;
                }
                if (info == null) {
                    tearDownPipes();
                    z = false;
                    setRunning(false);
                    if (mustKillAgent) {
                        tearDownAgent(this.mTargetApp, this.mIsAdbRestore);
                    }
                } else {
                    z = false;
                }
                if (info != null) {
                    return true;
                }
                return z;
            }
            info2 = info3;
            info = info2;
        } catch (IOException e28) {
            e = e28;
            monitor2 = monitor;
        }
        if (info == null) {
            tearDownPipes();
            z = false;
            setRunning(false);
            if (mustKillAgent) {
                tearDownAgent(this.mTargetApp, this.mIsAdbRestore);
            }
        } else {
            z = false;
        }
        if (info != null) {
            return true;
        }
        return z;
    }

    static /* synthetic */ void lambda$restoreOneFile$0(long bytesRead) {
    }

    /* JADX INFO: renamed from: com.android.server.backup.restore.FullRestoreEngine$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$server$backup$restore$RestorePolicy;

        static {
            int[] iArr = new int[RestorePolicy.values().length];
            $SwitchMap$com$android$server$backup$restore$RestorePolicy = iArr;
            try {
                iArr[RestorePolicy.IGNORE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$RestorePolicy[RestorePolicy.ACCEPT_IF_APK.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$android$server$backup$restore$RestorePolicy[RestorePolicy.ACCEPT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    private void setUpPipes() throws IOException {
        synchronized (this.mPipesLock) {
            this.mPipes = ParcelFileDescriptor.createPipe();
            this.mPipesClosed = false;
        }
    }

    private void tearDownPipes() {
        synchronized (this.mPipesLock) {
            if (!this.mPipesClosed && this.mPipes != null) {
                try {
                    this.mPipes[0].close();
                    this.mPipes[1].close();
                    this.mPipesClosed = true;
                } catch (IOException e) {
                    Slog.w(BackupManagerService.TAG, "Couldn't close agent pipes", e);
                }
            }
        }
    }

    private void tearDownAgent(ApplicationInfo app, boolean doRestoreFinished) {
        if (this.mAgent != null) {
            if (doRestoreFinished) {
                try {
                    int token = this.mBackupManagerService.generateRandomIntegerToken();
                    long fullBackupAgentTimeoutMillis = this.mAgentTimeoutParameters.getFullBackupAgentTimeoutMillis();
                    AdbRestoreFinishedLatch latch = new AdbRestoreFinishedLatch(this.mBackupManagerService, token);
                    this.mBackupManagerService.prepareOperationTimeout(token, fullBackupAgentTimeoutMillis, latch, 1);
                    if (this.mTargetApp.processName.equals("system")) {
                        Runnable runner = new AdbRestoreFinishedRunnable(this.mAgent, token, this.mBackupManagerService);
                        new Thread(runner, "restore-sys-finished-runner").start();
                    } else {
                        this.mAgent.doRestoreFinished(token, this.mBackupManagerService.getBackupManagerBinder());
                    }
                    latch.await();
                } catch (RemoteException e) {
                    Slog.d(BackupManagerService.TAG, "Lost app trying to shut down");
                }
            }
            this.mBackupManagerService.tearDownAgentAndKill(app);
            this.mAgent = null;
        }
    }

    void handleTimeout() {
        tearDownPipes();
        setResult(-2);
        setRunning(false);
    }

    private static boolean isRestorableFile(FileMetadata info) {
        if ("c".equals(info.domain)) {
            return false;
        }
        return (ActivityTaskManagerService.DUMP_RECENTS_SHORT_CMD.equals(info.domain) && info.path.startsWith("no_backup/")) ? false : true;
    }

    private static boolean isCanonicalFilePath(String path) {
        if (path.contains("..") || path.contains("//")) {
            return false;
        }
        return true;
    }

    private boolean shouldForceClearAppDataOnFullRestore(String packageName) {
        String packageListString = Settings.Secure.getStringForUser(this.mBackupManagerService.getContext().getContentResolver(), "packages_to_clear_data_before_full_restore", this.mUserId);
        if (TextUtils.isEmpty(packageListString)) {
            return false;
        }
        List<String> packages = Arrays.asList(packageListString.split(";"));
        return packages.contains(packageName);
    }

    void sendOnRestorePackage(String name) {
        IFullBackupRestoreObserver iFullBackupRestoreObserver = this.mObserver;
        if (iFullBackupRestoreObserver != null) {
            try {
                iFullBackupRestoreObserver.onRestorePackage(name);
            } catch (RemoteException e) {
                Slog.w(BackupManagerService.TAG, "full restore observer went away: restorePackage");
                this.mObserver = null;
            }
        }
    }
}
